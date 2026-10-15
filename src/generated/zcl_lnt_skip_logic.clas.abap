* TS: src/skip_logic.ts:6:1 SkipLogic
CLASS zcl_lnt_skip_logic DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA include_graph TYPE REF TO zcl_lnt_include_graph.
    DATA tobj TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS skip_0892 IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_generated_bopf_interface IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_ob_interface RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_generated_proxy_interface IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_ob_interface RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_generated_proxy_class IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_class RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_generated_function_group IMPORTING i_group TYPE REF TO zcl_lnt_function_group RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_generated_gateway_class IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_class RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_generated_persistent_class IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_class RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_skip_logic IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA t3 TYPE REF TO zcl_lnt_include_graph.
    CLEAR t3.
    me->include_graph = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `includeGraph`.
    DATA t4 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    CLEAR t4.
    me->tobj = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tobj`.
  ENDMETHOD.

  METHOD skip_0892.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zcl_lnt_iglobal_config.
    DATA t3 TYPE REF TO zcl_lnt_iglobal_config.
    DATA t4 TYPE REF TO zif_lnt_configuration.
    DATA(t5) = me->reg.
    t4 = t5->get_config( ).
    t3 = t4->get_global( ).
    t2 = t3.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t10) = t2.
    t9 = t10->zlnt_view_read_sr_b7f9c8e395fa( ).
    DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA(t13) = abap_true.
      DATA(t14) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t14->has = abap_true.
      t14->value = t13.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t15.
      t11 = t15.
    ENDIF.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = VALUE abap_bool( ).
    IF t9 IS BOUND.
      t16 = t9->has.
    ENDIF.
    IF t11 IS BOUND.
      t17 = t11->has.
    ENDIF.
    IF t16 = t17.
      IF t16 = abap_false.
        t8 = abap_true.
      ELSEIF t9->value = t11->value.
        t8 = abap_true.
      ENDIF.
    ENDIF.
    t7 = t8.
    IF t8 = abap_true.
      DATA t18 TYPE abap_bool.
      DATA(t19) = t1.
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_class ).
      t7 = t18.
    ENDIF.
    t6 = t7.
    IF t7 = abap_true.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE REF TO zcl_lnt_class.
      DATA(t22) = t1.
      DATA t23 TYPE REF TO object.
      t23 = t22.
      t21 ?= t23.
      t20 = me->is_generated_gateway_class( i_obj_1ed0 = t21 ).
      t6 = t20.
    ENDIF.
    IF t6 = abap_true.
      DATA(t24) = abap_true.
      result = t24.
      RETURN.
    ELSE.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t29) = t2.
      t28 = t29->zlnt_view_read_sr_ce2a50732551( ).
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA(t32) = abap_true.
        DATA(t33) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t33->has = abap_true.
        t33->value = t32.
        t30 = t33.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t34.
        t30 = t34.
      ENDIF.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      IF t28 IS BOUND.
        t35 = t28->has.
      ENDIF.
      IF t30 IS BOUND.
        t36 = t30->has.
      ENDIF.
      IF t35 = t36.
        IF t35 = abap_false.
          t27 = abap_true.
        ELSEIF t28->value = t30->value.
          t27 = abap_true.
        ENDIF.
      ENDIF.
      t26 = t27.
      IF t27 = abap_true.
        DATA t37 TYPE abap_bool.
        DATA(t38) = t1.
        t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_ob_program ).
        t26 = t37.
      ENDIF.
      t25 = t26.
      IF t26 = abap_true.
        DATA t39 TYPE abap_bool.
        DATA t40 TYPE abap_bool.
        DATA t41 TYPE REF TO zcl_lnt_ob_program.
        DATA t42 TYPE REF TO zcl_lnt_ob_program.
        DATA(t43) = t1.
        DATA t44 TYPE REF TO object.
        t44 = t43.
        t42 ?= t44.
        t41 = t42.
        DATA t45 TYPE abap_bool.
        DATA(t46) = t41.
        t46->parse_xml( ).
        DATA t47 TYPE abap_bool.
        DATA t48 TYPE REF TO zcl_lnt_shape_d77da4ed.
        DATA t49 TYPE REF TO zcl_lnt_shape_d77da4ed.
        DATA(t50) = t41.
        t49 = t50->parsed_xml.
        t48 = t49.
        t47 = t48->is_include.
        t45 = t47.
        t40 = t45.
        DATA(t51) = abap_true.
        t39 = xsdbool( t40 = t51 ).
        t25 = t39.
      ENDIF.
      IF t25 = abap_true.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = me->include_graph.
        IF t53 IS INITIAL.
          t52 = abap_true.
        ENDIF.
        IF t52 = abap_true.
          DATA t54 TYPE REF TO zcl_lnt_include_graph.
          CLEAR t54.
          DATA(t55) = abap_true.
          IF t55 = abap_true.
            DATA t56 TYPE REF TO zcl_lnt_include_graph.
            DATA(t57) = me->reg.
            DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t58.
            DATA t59 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t59.
            t56 = NEW zcl_lnt_include_graph( i_reg_f149 = t57 i_severity = t58 i_allow_unused = t59 ).
            t54 = t56.
          ELSE.
            DATA t60 TYPE REF TO zcl_lnt_include_graph.
            CLEAR t60.
            t54 = t60.
          ENDIF.
          me->include_graph = t54.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `includeGraph`.
        ENDIF.
        DATA t61 TYPE REF TO zcl_lnt_abap_file.
        DATA t62 TYPE REF TO zcl_lnt_abap_file.
        DATA t63 TYPE REF TO zcl_lnt_ob_program.
        DATA(t64) = t1.
        DATA t65 TYPE REF TO object.
        t65 = t64.
        t63 ?= t65.
        t62 = t63->get_main_abap_file( ).
        t61 = t62.
        DATA t66 TYPE abap_bool.
        DATA t67 TYPE abap_bool.
        DATA(t68) = t61.
        t67 = xsdbool( t68 IS BOUND ).
        t66 = t67.
        IF t67 = abap_true.
          DATA(t69) = VALUE abap_bool( ).
          DATA(t70) = VALUE i( ).
          DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_include_graph.
          DATA(t73) = me->include_graph.
          t72 = t73.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          DATA(t75) = abap_true.
          IF t75 = abap_true.
            DATA t76 TYPE string.
            DATA t77 TYPE REF TO zcl_lnt_abstract_file.
            DATA t78 TYPE REF TO zcl_lnt_abap_file.
            DATA(t79) = t61.
            t78 = t79.
            t77 = t78.
            DATA t80 TYPE string.
            DATA(t81) = t77.
            t80 = t81->filename.
            t76 = t80.
            DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t82->has = abap_true.
            t82->value = t76.
            t74 = t82.
          ELSE.
            DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t83.
            t74 = t83.
          ENDIF.
          t71 = t72->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t74 ).
          t71->load( ).
          t70 = lines( t71->items ).
          DATA(t84) = 0.
          t69 = xsdbool( t70 = t84 ).
          t66 = t69.
        ENDIF.
        IF t66 = abap_true.
          DATA(t85) = abap_true.
          result = t85.
          RETURN.
        ENDIF.
      ELSE.
        DATA(t86) = VALUE abap_bool( ).
        DATA(t87) = VALUE abap_bool( ).
        DATA(t88) = VALUE abap_bool( ).
        DATA t89 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t90) = t2.
        t89 = t90->zlnt_view_read_sr_d33d8b9cacb6( ).
        DATA t91 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t91.
        DATA(t92) = abap_true.
        IF t92 = abap_true.
          DATA(t93) = abap_true.
          DATA(t94) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t94->has = abap_true.
          t94->value = t93.
          t91 = t94.
        ELSE.
          DATA t95 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t95.
          t91 = t95.
        ENDIF.
        DATA(t96) = VALUE abap_bool( ).
        DATA(t97) = VALUE abap_bool( ).
        IF t89 IS BOUND.
          t96 = t89->has.
        ENDIF.
        IF t91 IS BOUND.
          t97 = t91->has.
        ENDIF.
        IF t96 = t97.
          IF t96 = abap_false.
            t88 = abap_true.
          ELSEIF t89->value = t91->value.
            t88 = abap_true.
          ENDIF.
        ENDIF.
        t87 = t88.
        IF t88 = abap_true.
          DATA t98 TYPE abap_bool.
          DATA(t99) = t1.
          t98 = xsdbool( t99 IS BOUND AND t99 IS INSTANCE OF zcl_lnt_class ).
          t87 = t98.
        ENDIF.
        t86 = t87.
        IF t87 = abap_true.
          DATA t100 TYPE abap_bool.
          DATA t101 TYPE REF TO zcl_lnt_class.
          DATA(t102) = t1.
          DATA t103 TYPE REF TO object.
          t103 = t102.
          t101 ?= t103.
          t100 = me->is_generated_persistent_class( i_obj_1ed0 = t101 ).
          t86 = t100.
        ENDIF.
        IF t86 = abap_true.
          DATA(t104) = abap_true.
          result = t104.
          RETURN.
        ELSE.
          DATA(t105) = VALUE abap_bool( ).
          DATA(t106) = VALUE abap_bool( ).
          DATA(t107) = VALUE abap_bool( ).
          DATA t108 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t109) = t2.
          t108 = t109->zlnt_view_read_sr_125104471a9e( ).
          DATA t110 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t110.
          DATA(t111) = abap_true.
          IF t111 = abap_true.
            DATA(t112) = abap_true.
            DATA(t113) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t113->has = abap_true.
            t113->value = t112.
            t110 = t113.
          ELSE.
            DATA t114 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t114.
            t110 = t114.
          ENDIF.
          DATA(t115) = VALUE abap_bool( ).
          DATA(t116) = VALUE abap_bool( ).
          IF t108 IS BOUND.
            t115 = t108->has.
          ENDIF.
          IF t110 IS BOUND.
            t116 = t110->has.
          ENDIF.
          IF t115 = t116.
            IF t115 = abap_false.
              t107 = abap_true.
            ELSEIF t108->value = t110->value.
              t107 = abap_true.
            ENDIF.
          ENDIF.
          t106 = t107.
          IF t107 = abap_true.
            DATA t117 TYPE abap_bool.
            DATA(t118) = t1.
            t117 = xsdbool( t118 IS BOUND AND t118 IS INSTANCE OF zcl_lnt_function_group ).
            t106 = t117.
          ENDIF.
          t105 = t106.
          IF t106 = abap_true.
            DATA t119 TYPE abap_bool.
            DATA t120 TYPE REF TO zcl_lnt_function_group.
            DATA(t121) = t1.
            DATA t122 TYPE REF TO object.
            t122 = t121.
            t120 ?= t122.
            t119 = me->is_generated_function_group( i_group = t120 ).
            t105 = t119.
          ENDIF.
          IF t105 = abap_true.
            DATA(t123) = abap_true.
            result = t123.
            RETURN.
          ELSE.
            DATA(t124) = VALUE abap_bool( ).
            DATA(t125) = VALUE abap_bool( ).
            DATA(t126) = VALUE abap_bool( ).
            DATA t127 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA(t128) = t2.
            t127 = t128->zlnt_view_read_sr_7fd47aff77b0( ).
            DATA t129 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t129.
            DATA(t130) = abap_true.
            IF t130 = abap_true.
              DATA(t131) = abap_true.
              DATA(t132) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t132->has = abap_true.
              t132->value = t131.
              t129 = t132.
            ELSE.
              DATA t133 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t133.
              t129 = t133.
            ENDIF.
            DATA(t134) = VALUE abap_bool( ).
            DATA(t135) = VALUE abap_bool( ).
            IF t127 IS BOUND.
              t134 = t127->has.
            ENDIF.
            IF t129 IS BOUND.
              t135 = t129->has.
            ENDIF.
            IF t134 = t135.
              IF t134 = abap_false.
                t126 = abap_true.
              ELSEIF t127->value = t129->value.
                t126 = abap_true.
              ENDIF.
            ENDIF.
            t125 = t126.
            IF t126 = abap_true.
              DATA t136 TYPE abap_bool.
              DATA(t137) = t1.
              t136 = xsdbool( t137 IS BOUND AND t137 IS INSTANCE OF zcl_lnt_class ).
              t125 = t136.
            ENDIF.
            t124 = t125.
            IF t125 = abap_true.
              DATA(t138) = VALUE abap_bool( ).
              DATA t139 TYPE REF TO zcl_lnt_class.
              DATA t140 TYPE REF TO zcl_lnt_class.
              DATA(t141) = t1.
              DATA t142 TYPE REF TO object.
              t142 = t141.
              t140 ?= t142.
              t139 = t140.
              DATA(t143) = VALUE abap_bool( ).
              DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t144.
              DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t145.
              DATA t146 TYPE REF TO zcl_lnt_abstract_object.
              DATA(t147) = t139.
              t146 = t147.
              DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t148.
              DATA t149 TYPE REF TO zif_lnt_file.
              DATA t150 TYPE REF TO zif_lnt_file.
              DATA(t151) = t146.
              t150 = t151->get_xml_file( ).
              t149 = t150.
              DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t152.
              DATA t153 TYPE abap_bool.
              DATA(t154) = t149.
              t153 = xsdbool( t154 IS BOUND ).
              IF t153 = abap_true.
                DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t155.
                DATA(t156) = abap_true.
                IF t156 = abap_true.
                  DATA t157 TYPE string.
                  DATA t158 TYPE REF TO zif_lnt_file.
                  DATA(t159) = t149.
                  t158 = t159.
                  t157 = t158->get_raw( ).
                  DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t160->has = abap_true.
                  t160->value = t157.
                  t155 = t160.
                ELSE.
                  DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t161.
                  t155 = t161.
                ENDIF.
                t152 = t155.
              ELSE.
                DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t162.
                t152 = t162.
              ENDIF.
              t148 = t152.
              t145 = t148.
              t144 = t145.
              DATA(t163) = VALUE abap_bool( ).
              DATA(t164) = VALUE abap_bool( ).
              DATA(t165) = VALUE abap_bool( ).
              DATA(t166) = t144.
              IF t166 IS BOUND.
                IF t166->has = abap_true.
                  t165 = xsdbool( strlen( t166->value ) > 0 ).
                ENDIF.
              ENDIF.
              t164 = xsdbool( t165 = abap_false ).
              IF t164 = abap_true.
                DATA(t167) = abap_false.
                t163 = t167.
              ELSE.
                DATA(t168) = VALUE abap_bool( ).
                DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t171 TYPE string.
                DATA t172 TYPE string.
                DATA(t173) = t144.
                t172 = t173->value.
                t171 = t172.
                DATA t174 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA(t175) = t171.
                DATA t176 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
                CLEAR t176.
                DATA(t177) = `<CLSPROXY>(.)<\/CLSPROXY>`.
                DATA(t178) = |<CLSPROXY>([^\n\r|.
                DATA t179 TYPE c LENGTH 1.
                CLEAR t179.
                t179 = cl_abap_conv_in_ce=>uccpi( 8232 ).
                CONCATENATE t178 t179 INTO t178 RESPECTING BLANKS.
                DATA t180 TYPE c LENGTH 1.
                CLEAR t180.
                t180 = cl_abap_conv_in_ce=>uccpi( 8233 ).
                CONCATENATE t178 t180 INTO t178 RESPECTING BLANKS.
                t178 = t178 && `])<\/CLSPROXY>`.
                DATA(t181) = ||.
                CREATE OBJECT t176 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t178 flags = t181.
                t176->source = t177.
                t174 = t176->match( t175 ).
                t170 = t174.
                t169 = t170.
                DATA(t182) = VALUE abap_bool( ).
                DATA t183 TYPE abap_bool.
                DATA(t184) = t169.
                t183 = xsdbool( t184 IS BOUND ).
                IF t183 = abap_true.
                  DATA(t185) = abap_true.
                  t182 = t185.
                ELSE.
                  DATA(t186) = abap_false.
                  t182 = t186.
                ENDIF.
                t168 = t182.
                t163 = t168.
              ENDIF.
              t143 = t163.
              t138 = t143.
              t124 = t138.
            ENDIF.
            IF t124 = abap_true.
              DATA(t187) = abap_true.
              result = t187.
              RETURN.
            ELSE.
              DATA(t188) = VALUE abap_bool( ).
              DATA(t189) = VALUE abap_bool( ).
              DATA(t190) = VALUE abap_bool( ).
              DATA t191 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA(t192) = t2.
              t191 = t192->zlnt_view_read_sr_dc41fb6d744a( ).
              DATA t193 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t193.
              DATA(t194) = abap_true.
              IF t194 = abap_true.
                DATA(t195) = abap_true.
                DATA(t196) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t196->has = abap_true.
                t196->value = t195.
                t193 = t196.
              ELSE.
                DATA t197 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t197.
                t193 = t197.
              ENDIF.
              DATA(t198) = VALUE abap_bool( ).
              DATA(t199) = VALUE abap_bool( ).
              IF t191 IS BOUND.
                t198 = t191->has.
              ENDIF.
              IF t193 IS BOUND.
                t199 = t193->has.
              ENDIF.
              IF t198 = t199.
                IF t198 = abap_false.
                  t190 = abap_true.
                ELSEIF t191->value = t193->value.
                  t190 = abap_true.
                ENDIF.
              ENDIF.
              t189 = t190.
              IF t190 = abap_true.
                DATA t200 TYPE abap_bool.
                DATA(t201) = t1.
                t200 = xsdbool( t201 IS BOUND AND t201 IS INSTANCE OF zcl_lnt_ob_interface ).
                t189 = t200.
              ENDIF.
              t188 = t189.
              IF t189 = abap_true.
                DATA(t202) = VALUE abap_bool( ).
                DATA t203 TYPE REF TO zcl_lnt_ob_interface.
                DATA t204 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t205) = t1.
                DATA t206 TYPE REF TO object.
                t206 = t205.
                t204 ?= t206.
                t203 = t204.
                DATA(t207) = VALUE abap_bool( ).
                DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t208.
                DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t209.
                DATA t210 TYPE REF TO zcl_lnt_abstract_object.
                DATA(t211) = t203.
                t210 = t211.
                DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t212.
                DATA t213 TYPE REF TO zif_lnt_file.
                DATA t214 TYPE REF TO zif_lnt_file.
                DATA(t215) = t210.
                t214 = t215->get_xml_file( ).
                t213 = t214.
                DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t216.
                DATA t217 TYPE abap_bool.
                DATA(t218) = t213.
                t217 = xsdbool( t218 IS BOUND ).
                IF t217 = abap_true.
                  DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t219.
                  DATA(t220) = abap_true.
                  IF t220 = abap_true.
                    DATA t221 TYPE string.
                    DATA t222 TYPE REF TO zif_lnt_file.
                    DATA(t223) = t213.
                    t222 = t223.
                    t221 = t222->get_raw( ).
                    DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t224->has = abap_true.
                    t224->value = t221.
                    t219 = t224.
                  ELSE.
                    DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t225.
                    t219 = t225.
                  ENDIF.
                  t216 = t219.
                ELSE.
                  DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t226.
                  t216 = t226.
                ENDIF.
                t212 = t216.
                t209 = t212.
                t208 = t209.
                DATA(t227) = VALUE abap_bool( ).
                DATA(t228) = VALUE abap_bool( ).
                DATA(t229) = VALUE abap_bool( ).
                DATA(t230) = t208.
                IF t230 IS BOUND.
                  IF t230->has = abap_true.
                    t229 = xsdbool( strlen( t230->value ) > 0 ).
                  ENDIF.
                ENDIF.
                t228 = xsdbool( t229 = abap_false ).
                IF t228 = abap_true.
                  DATA(t231) = abap_false.
                  t227 = t231.
                ELSE.
                  DATA(t232) = VALUE abap_bool( ).
                  DATA t233 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t234 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t235 TYPE string.
                  DATA t236 TYPE string.
                  DATA(t237) = t208.
                  t236 = t237->value.
                  t235 = t236.
                  DATA t238 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA(t239) = t235.
                  DATA t240 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
                  CLEAR t240.
                  DATA(t241) = `<CLSPROXY>(.)<\/CLSPROXY>`.
                  DATA(t242) = |<CLSPROXY>([^\n\r|.
                  DATA t243 TYPE c LENGTH 1.
                  CLEAR t243.
                  t243 = cl_abap_conv_in_ce=>uccpi( 8232 ).
                  CONCATENATE t242 t243 INTO t242 RESPECTING BLANKS.
                  DATA t244 TYPE c LENGTH 1.
                  CLEAR t244.
                  t244 = cl_abap_conv_in_ce=>uccpi( 8233 ).
                  CONCATENATE t242 t244 INTO t242 RESPECTING BLANKS.
                  t242 = t242 && `])<\/CLSPROXY>`.
                  DATA(t245) = ||.
                  CREATE OBJECT t240 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t242 flags = t245.
                  t240->source = t241.
                  t238 = t240->match( t239 ).
                  t234 = t238.
                  t233 = t234.
                  DATA(t246) = VALUE abap_bool( ).
                  DATA t247 TYPE abap_bool.
                  DATA(t248) = t233.
                  t247 = xsdbool( t248 IS BOUND ).
                  IF t247 = abap_true.
                    DATA(t249) = abap_true.
                    t246 = t249.
                  ELSE.
                    DATA(t250) = abap_false.
                    t246 = t250.
                  ENDIF.
                  t232 = t246.
                  t227 = t232.
                ENDIF.
                t207 = t227.
                t202 = t207.
                t188 = t202.
              ENDIF.
              IF t188 = abap_true.
                DATA(t251) = abap_true.
                result = t251.
                RETURN.
              ELSE.
                DATA(t252) = VALUE abap_bool( ).
                DATA(t253) = VALUE abap_bool( ).
                DATA(t254) = VALUE abap_bool( ).
                DATA t255 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA(t256) = t2.
                t255 = t256->zlnt_view_read_sr_ea2eb1e9b48c( ).
                DATA t257 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t257.
                DATA(t258) = abap_true.
                IF t258 = abap_true.
                  DATA(t259) = abap_true.
                  DATA(t260) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t260->has = abap_true.
                  t260->value = t259.
                  t257 = t260.
                ELSE.
                  DATA t261 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t261.
                  t257 = t261.
                ENDIF.
                DATA(t262) = VALUE abap_bool( ).
                DATA(t263) = VALUE abap_bool( ).
                IF t255 IS BOUND.
                  t262 = t255->has.
                ENDIF.
                IF t257 IS BOUND.
                  t263 = t257->has.
                ENDIF.
                IF t262 = t263.
                  IF t262 = abap_false.
                    t254 = abap_true.
                  ELSEIF t255->value = t257->value.
                    t254 = abap_true.
                  ENDIF.
                ENDIF.
                t253 = t254.
                IF t254 = abap_true.
                  DATA t264 TYPE abap_bool.
                  DATA(t265) = t1.
                  t264 = xsdbool( t265 IS BOUND AND t265 IS INSTANCE OF zcl_lnt_ob_interface ).
                  t253 = t264.
                ENDIF.
                t252 = t253.
                IF t253 = abap_true.
                  DATA t266 TYPE abap_bool.
                  DATA t267 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t268) = t1.
                  DATA t269 TYPE REF TO object.
                  t269 = t268.
                  t267 ?= t269.
                  t266 = me->is_generated_bopf_interface( i_obj_1ed0 = t267 ).
                  t252 = t266.
                ENDIF.
                IF t252 = abap_true.
                  DATA(t270) = abap_true.
                  result = t270.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t271) = abap_false.
    result = t271.

  ENDMETHOD.

  METHOD is_generated_bopf_interface.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_interface_definition.
    DATA t5 TYPE REF TO zif_lnt_interface_definition.
    DATA t6 TYPE REF TO zcl_lnt_ob_interface.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zif_lnt_interface_definition.
    DATA(t9) = t6.
    t8 = t9->def.
    t5 = t8.
    t4 = t5.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t4.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t13.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zif_lnt_interface_definition.
      DATA(t16) = t4.
      t15 = t16.
      t14 = t15->get_implementing( ).
      t10 = t14.
    ENDIF.
    t3 = t10.
    t2 = t3.
    DATA(t17) = VALUE abap_bool( ).
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = t2.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t18.
    IF t23 IS INITIAL.
      t22 = abap_true.
    ENDIF.
    t17 = t22.
    IF t17 = abap_true.
      DATA(t24) = abap_false.
      result = t24.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = t2.
    t25 = t26.
    DATA t27 TYPE REF TO zcl_lnt_iimplementing.
    CLEAR t27.
    DATA t28 TYPE REF TO object.
    CLEAR t28.
    DATA(t29) = VALUE i( ).
    DO.
      t25->load( ).
      IF t29 >= lines( t25->items ).
        EXIT.
      ENDIF.
      CLEAR t28.
      READ TABLE t25->items INDEX t29 + 1 INTO t28.
      t29 = t29 + 1.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      CLEAR t27.
      IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t30 ?= t28.
        DATA t31 TYPE REF TO object.
        t31 = t30->as_ref( ).
        t27 ?= t31.
      ELSE.
        t27 ?= t28.
      ENDIF.
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE string.
      DATA t34 TYPE string.
      DATA(t35) = t27.
      t34 = t35->name.
      DATA(t36) = strlen( t34 ).
      t33 = t34.
      IF t33 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t33 TO UPPER CASE.
      ELSE.
        t33 = zlnt_runtime_uppe_91169605024d=>full( t33 ).
      ENDIF.
      DATA(t37) = |/BOBF/IF_LIB_CONSTANTS|.
      t32 = xsdbool( t33 = t37 ).
      IF t32 = abap_true.
        DATA(t38) = abap_true.
        result = t38.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t39) = abap_false.
    result = t39.

  ENDMETHOD.

  METHOD is_generated_proxy_interface.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_file.
    DATA t8 TYPE REF TO zif_lnt_file.
    DATA(t9) = t4.
    t8 = t9->get_xml_file( ).
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE abap_bool.
    DATA(t12) = t7.
    t11 = xsdbool( t12 IS BOUND ).
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA t15 TYPE string.
        DATA t16 TYPE REF TO zif_lnt_file.
        DATA(t17) = t7.
        t16 = t17.
        t15 = t16->get_raw( ).
        DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t18->has = abap_true.
        t18->value = t15.
        t13 = t18.
      ELSE.
        DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t19.
        t13 = t19.
      ENDIF.
      t10 = t13.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t10 = t20.
    ENDIF.
    t6 = t10.
    t3 = t6.
    t2 = t3.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t2.
    IF t23 IS BOUND.
      IF t23->has = abap_true.
        t22 = xsdbool( strlen( t23->value ) > 0 ).
      ENDIF.
    ENDIF.
    t21 = xsdbool( t22 = abap_false ).
    IF t21 = abap_true.
      DATA(t24) = abap_false.
      result = t24.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t27 TYPE string.
    DATA t28 TYPE string.
    DATA(t29) = t2.
    t28 = t29->value.
    t27 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t31) = t27.
    DATA t32 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t32.
    DATA(t33) = `<CLSPROXY>(.)<\/CLSPROXY>`.
    DATA(t34) = |<CLSPROXY>([^\n\r|.
    DATA t35 TYPE c LENGTH 1.
    CLEAR t35.
    t35 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t34 t35 INTO t34 RESPECTING BLANKS.
    DATA t36 TYPE c LENGTH 1.
    CLEAR t36.
    t36 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t34 t36 INTO t34 RESPECTING BLANKS.
    t34 = t34 && `])<\/CLSPROXY>`.
    DATA(t37) = ||.
    CREATE OBJECT t32 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t34 flags = t37.
    t32->source = t33.
    t30 = t32->match( t31 ).
    t26 = t30.
    t25 = t26.
    DATA t38 TYPE abap_bool.
    DATA(t39) = t25.
    t38 = xsdbool( t39 IS BOUND ).
    IF t38 = abap_true.
      DATA(t40) = abap_true.
      result = t40.
      RETURN.
    ELSE.
      DATA(t41) = abap_false.
      result = t41.

    ENDIF.
  ENDMETHOD.

  METHOD is_generated_proxy_class.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_file.
    DATA t8 TYPE REF TO zif_lnt_file.
    DATA(t9) = t4.
    t8 = t9->get_xml_file( ).
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE abap_bool.
    DATA(t12) = t7.
    t11 = xsdbool( t12 IS BOUND ).
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA t15 TYPE string.
        DATA t16 TYPE REF TO zif_lnt_file.
        DATA(t17) = t7.
        t16 = t17.
        t15 = t16->get_raw( ).
        DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t18->has = abap_true.
        t18->value = t15.
        t13 = t18.
      ELSE.
        DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t19.
        t13 = t19.
      ENDIF.
      t10 = t13.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t10 = t20.
    ENDIF.
    t6 = t10.
    t3 = t6.
    t2 = t3.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t2.
    IF t23 IS BOUND.
      IF t23->has = abap_true.
        t22 = xsdbool( strlen( t23->value ) > 0 ).
      ENDIF.
    ENDIF.
    t21 = xsdbool( t22 = abap_false ).
    IF t21 = abap_true.
      DATA(t24) = abap_false.
      result = t24.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t27 TYPE string.
    DATA t28 TYPE string.
    DATA(t29) = t2.
    t28 = t29->value.
    t27 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t31) = t27.
    DATA t32 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t32.
    DATA(t33) = `<CLSPROXY>(.)<\/CLSPROXY>`.
    DATA(t34) = |<CLSPROXY>([^\n\r|.
    DATA t35 TYPE c LENGTH 1.
    CLEAR t35.
    t35 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t34 t35 INTO t34 RESPECTING BLANKS.
    DATA t36 TYPE c LENGTH 1.
    CLEAR t36.
    t36 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t34 t36 INTO t34 RESPECTING BLANKS.
    t34 = t34 && `])<\/CLSPROXY>`.
    DATA(t37) = ||.
    CREATE OBJECT t32 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t34 flags = t37.
    t32->source = t33.
    t30 = t32->match( t31 ).
    t26 = t30.
    t25 = t26.
    DATA t38 TYPE abap_bool.
    DATA(t39) = t25.
    t38 = xsdbool( t39 IS BOUND ).
    IF t38 = abap_true.
      DATA(t40) = abap_true.
      result = t40.
      RETURN.
    ELSE.
      DATA(t41) = abap_false.
      result = t41.

    ENDIF.
  ENDMETHOD.

  METHOD is_generated_function_group.
    DATA(t1) = i_group.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    CLEAR t3.
    DATA(t4) = me->tobj.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA t11 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        CLEAR t11.
        DATA t12 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        CLEAR t12.
        DATA(t13) = NEW zlnt_runtime_map__45a2315f90b8( ).
        t12 = t13.
        DATA(t14) = t12.
        t11 = t14.
        t9 = t11.
      ELSE.
        DATA t15 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        CLEAR t15.
        t9 = t15.
      ENDIF.
      me->tobj = t9.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tobj`.
      DATA t16 TYPE REF TO zif_lnt_generator_8f73cd1c.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_generator_8f73cd1c.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_generator_8f73cd1c.
      CLEAR t18.
      DATA(t19) = me->reg.
      DATA(t20) = |TOBJ|.
      t18 = t19->get_objects_by_type( i_type_9913 = t20 ).
      t17 = t18->iterate( ).
      t16 = t17.
      DO.
        DATA(t21) = abap_true.
        IF t21 = abap_false.
          EXIT.
        ENDIF.
        DATA t22 TYPE REF TO zcl_lnt_generator_17955b8b.
        CLEAR t22.
        DATA t23 TYPE REF TO zcl_lnt_generator_17955b8b.
        CLEAR t23.
        DATA(t24) = t16.
        t23 = t24->next( ).
        t22 = t23.
        DATA(t25) = VALUE abap_bool( ).
        DATA(t26) = t22.
        t25 = t26->done.
        IF t25 = abap_true.
          EXIT.
        ENDIF.
        DATA t27 TYPE REF TO zif_lnt_object.
        CLEAR t27.
        DATA t28 TYPE REF TO zif_lnt_object.
        CLEAR t28.
        DATA t29 TYPE REF TO zif_lnt_object.
        CLEAR t29.
        DATA(t30) = t22.
        t29 = t30->value.
        t28 = t29.
        t27 = t28.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        DATA(t34) = VALUE abap_bool( ).
        DATA(t35) = abap_false.
        t34 = t35.
        DATA t36 TYPE REF TO cx_root.
        CLEAR t36.
        TRY.
            DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t37.
            DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t38.
            DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t39.
            DATA t40 TYPE REF TO zcl_lnt_mntnn_and_trnspr_objct.
            CLEAR t40.
            DATA t41 TYPE REF TO zcl_lnt_mntnn_and_trnspr_objct.
            CLEAR t41.
            DATA(t42) = t27.
            t41 ?= t42.
            t40 = t41.
            DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t43.
            DATA t44 TYPE REF TO zcl_lnt_iparse_result.
            CLEAR t44.
            DATA(t45) = t40.
            t44 = t45->p_i_s_o_m_a_t_o_ts_mn_an_tr_ob( ).
            DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t46.
            DATA t47 TYPE REF TO zcl_lnt_shape_cda19f43.
            CLEAR t47.
            DATA t48 TYPE REF TO zcl_lnt_shape_cda19f43.
            CLEAR t48.
            DATA(t49) = t40.
            t48 = t49->parsed_xml.
            t47 = t48.
            DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t50.
            DATA(t51) = VALUE abap_bool( ).
            DATA(t52) = t47.
            IF t52 IS INITIAL.
              t51 = abap_true.
            ENDIF.
            IF t51 = abap_true.
              DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t53.
              t50 = t53.
            ELSE.
              DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t54.
              DATA t55 TYPE REF TO zcl_lnt_shape_cda19f43.
              CLEAR t55.
              DATA(t56) = t47.
              t55 = t56.
              t54 = t55->area.
              t50 = t54.
            ENDIF.
            t46 = t50.
            t43 = t46.
            t39 = t43.
            t38 = t39.
            DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t57.
            DATA(t58) = VALUE abap_bool( ).
            DATA(t59) = t38.
            IF t59 IS INITIAL.
              t58 = abap_true.
            ELSEIF t59->has = abap_false.
              t58 = abap_true.
            ENDIF.
            IF t58 = abap_true.
              DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t60.
              t57 = t60.
            ELSE.
              DATA(t61) = VALUE string( ).
              DATA(t62) = VALUE string( ).
              DATA(t63) = t38.
              t62 = t63->value.
              DATA(t64) = strlen( t62 ).
              t61 = t62.
              IF t61 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t61 TO UPPER CASE.
              ELSE.
                t61 = zlnt_runtime_uppe_91169605024d=>full( t61 ).
              ENDIF.
              DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t65->has = abap_true.
              t65->value = t61.
              t57 = t65.
            ENDIF.
            t37 = t57.
            t33 = t37.
            DATA(t66) = abap_true.
            t34 = t66.
          CATCH cx_root INTO t36.
            DATA(t67) = VALUE abap_bool( ).
            DATA(t68) = t34.
            t67 = xsdbool( t68 = abap_false ).
            IF t67 = abap_true.
              DATA(t69) = t16.
              t69->close( ).
            ENDIF.
            RAISE EXCEPTION t36.
        ENDTRY.
        DATA(t70) = VALUE abap_bool( ).
        DATA(t71) = t34.
        t70 = xsdbool( t71 = abap_false ).
        IF t70 = abap_true.
          DATA(t72) = t16.
          t72->close( ).
        ENDIF.
        DATA(t73) = t33.
        t32 = t73.
        t31 = t32.
        DATA(t74) = VALUE abap_bool( ).
        DATA(t75) = VALUE abap_bool( ).
        DATA(t76) = VALUE abap_bool( ).
        DATA(t77) = abap_false.
        t76 = t77.
        DATA t78 TYPE REF TO cx_root.
        CLEAR t78.
        TRY.
            DATA(t79) = VALUE abap_bool( ).
            DATA(t80) = t31.
            IF t80 IS BOUND.
              IF t80->has = abap_true.
                t79 = xsdbool( strlen( t80->value ) > 0 ).
              ENDIF.
            ENDIF.
            t75 = t79.
            DATA(t81) = abap_true.
            t76 = t81.
          CATCH cx_root INTO t78.
            DATA(t82) = VALUE abap_bool( ).
            DATA(t83) = t76.
            t82 = xsdbool( t83 = abap_false ).
            IF t82 = abap_true.
              DATA(t84) = t16.
              t84->close( ).
            ENDIF.
            RAISE EXCEPTION t78.
        ENDTRY.
        DATA(t85) = VALUE abap_bool( ).
        DATA(t86) = t76.
        t85 = xsdbool( t86 = abap_false ).
        IF t85 = abap_true.
          DATA(t87) = t16.
          t87->close( ).
        ENDIF.
        DATA(t88) = t75.
        t74 = t88.
        IF t74 = abap_true.
          DATA t89 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          CLEAR t89.
          DATA t90 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          CLEAR t90.
          DATA(t91) = VALUE abap_bool( ).
          DATA(t92) = abap_false.
          t91 = t92.
          DATA t93 TYPE REF TO cx_root.
          CLEAR t93.
          TRY.
              DATA t94 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
              CLEAR t94.
              DATA t95 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
              CLEAR t95.
              DATA(t96) = me->tobj.
              t95 = t96.
              DATA(t97) = VALUE string( ).
              DATA(t98) = t31.
              t97 = t98->value.
              DATA(t99) = abap_true.
              t94 = t95->set( p0 = t97 p1 = t99 ).
              t90 = t94.
              DATA(t100) = abap_true.
              t91 = t100.
            CATCH cx_root INTO t93.
              DATA(t101) = VALUE abap_bool( ).
              DATA(t102) = t91.
              t101 = xsdbool( t102 = abap_false ).
              IF t101 = abap_true.
                DATA(t103) = t16.
                t103->close( ).
              ENDIF.
              RAISE EXCEPTION t93.
          ENDTRY.
          DATA(t104) = VALUE abap_bool( ).
          DATA(t105) = t91.
          t104 = xsdbool( t105 = abap_false ).
          IF t104 = abap_true.
            DATA(t106) = t16.
            t106->close( ).
          ENDIF.
          DATA(t107) = t90.
          t89 = t107.
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t108) = VALUE abap_bool( ).
    DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    CLEAR t110.
    DATA(t111) = me->tobj.
    t110 = t111.
    DATA(t112) = VALUE string( ).
    DATA(t113) = VALUE string( ).
    DATA t114 TYPE REF TO zcl_lnt_abstract_object.
    CLEAR t114.
    DATA(t115) = t1.
    t114 = t115.
    DATA(t116) = VALUE string( ).
    DATA(t117) = t114.
    t116 = t117->name.
    t113 = t116.
    DATA(t118) = strlen( t113 ).
    t112 = t113.
    IF t112 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t112 TO UPPER CASE.
    ELSE.
      t112 = zlnt_runtime_uppe_91169605024d=>full( t112 ).
    ENDIF.
    t109 = t110->get( p0 = t112 ).
    t108 = t109->value.
    result = t108.

  ENDMETHOD.

  METHOD is_generated_gateway_class.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_class.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_abap_file.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    DATA(t13) = t6.
    t12 = t13->get_main_abap_file( ).
    t11 = t12.
    DATA t14 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    IF t15 = abap_true.
      DATA t17 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t17.
      t14 = t17.
    ELSE.
      DATA t18 TYPE REF TO zif_lnt_abap_file_information.
      DATA t19 TYPE REF TO zcl_lnt_abap_file.
      DATA t20 TYPE REF TO zcl_lnt_abap_file.
      DATA(t21) = t11.
      t20 = t21.
      t19 = t20.
      DATA t22 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t23) = t19.
      t22 = t23->info.
      t18 = t22.
      t14 = t18.
    ENDIF.
    t10 = t14.
    t9 = t10.
    DATA t24 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t9.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    IF t25 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t27.
      t24 = t27.
    ELSE.
      DATA t28 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t29 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t30) = t9.
      t29 = t30.
      DATA t31 TYPE string.
      DATA t32 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t33) = t6.
      t32 = t33.
      DATA t34 TYPE string.
      DATA(t35) = t32.
      t34 = t35->name.
      t31 = t34.
      t28 = t29->get_class_definition_by_name( i_name = t31 ).
      t24 = t28.
    ENDIF.
    t8 = t24.
    t5 = t8.
    t4 = t5.
    DATA t36 TYPE abap_bool.
    DATA(t37) = t4.
    t36 = xsdbool( t37 IS BOUND ).
    IF t36 = abap_true.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      DATA(t39) = abap_true.
      IF t39 = abap_true.
        DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t40.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t44 TYPE REF TO zcl_lnt_info_class_definition.
        DATA(t45) = t4.
        t44 = t45.
        t43 = t44->super_class_name.
        t42 = t43.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = t42.
        IF t48 IS INITIAL.
          t47 = abap_true.
        ELSEIF t48->has = abap_false.
          t47 = abap_true.
        ENDIF.
        IF t47 = abap_true.
          DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t49.
          t46 = t49.
        ELSE.
          DATA t50 TYPE string.
          DATA t51 TYPE string.
          DATA(t52) = t42.
          t51 = t52->value.
          DATA(t53) = strlen( t51 ).
          t50 = t51.
          IF t50 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t50 TO UPPER CASE.
          ELSE.
            t50 = zlnt_runtime_uppe_91169605024d=>full( t50 ).
          ENDIF.
          DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t54->has = abap_true.
          t54->value = t50.
          t46 = t54.
        ENDIF.
        t41 = t46.
        CLEAR t40.
        IF t41 IS BOUND AND t41->has = abap_true.
          CLEAR t40.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t40->sval = t41->value.
        ENDIF.
        t38 = t40.
      ELSE.
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t55.
        t38 = t55.
      ENDIF.
      t2 = t38.
    ENDIF.
    DATA t56 TYPE abap_bool.
    DATA t57 TYPE abap_bool.
    DATA t58 TYPE string.
    DATA t59 TYPE string.
    DATA t60 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t61) = t1.
    t60 = t61.
    DATA t62 TYPE string.
    DATA(t63) = t60.
    t62 = t63->name.
    t59 = t62.
    t58 = t59.
    DATA t64 TYPE abap_bool.
    DATA t65 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t65.
    DATA(t66) = |_MPC$|.
    DATA(t67) = |i|.
    CREATE OBJECT t65 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t66 flags = t67.
    DATA(t68) = t58.
    t64 = t65->match_test( p0 = t68 ).
    t57 = t64.
    t56 = t57.
    IF t57 = abap_true.
      DATA(t69) = VALUE abap_bool( ).
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      DATA(t71) = t2.
      CLEAR t70.
      IF t71 IS BOUND.
        t70 = t71.
      ENDIF.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      DATA(t73) = |/IWBEP/CL_MGW_PUSH_ABS_MODEL|.
      CLEAR t72.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t72->sval = t73.
      IF t70 IS NOT BOUND.
        t69 = xsdbool( t72 IS NOT BOUND ).
      ELSE.
        t69 = t70->strict_equals( t72 ).
      ENDIF.
      t56 = t69.
    ENDIF.
    IF t56 = abap_true.
      DATA(t74) = abap_true.
      result = t74.
      RETURN.
    ELSE.
      DATA t75 TYPE abap_bool.
      DATA t76 TYPE abap_bool.
      DATA t77 TYPE string.
      DATA t78 TYPE string.
      DATA t79 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t80) = t1.
      t79 = t80.
      DATA t81 TYPE string.
      DATA(t82) = t79.
      t81 = t82->name.
      t78 = t81.
      t77 = t78.
      DATA t83 TYPE abap_bool.
      DATA t84 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t84.
      DATA(t85) = |_DPC$|.
      DATA(t86) = |i|.
      CREATE OBJECT t84 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t85 flags = t86.
      DATA(t87) = t77.
      t83 = t84->match_test( p0 = t87 ).
      t76 = t83.
      t75 = t76.
      IF t76 = abap_true.
        DATA(t88) = VALUE abap_bool( ).
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        DATA(t90) = t2.
        CLEAR t89.
        IF t90 IS BOUND.
          t89 = t90.
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        DATA(t92) = |/IWBEP/CL_MGW_PUSH_ABS_DATA|.
        CLEAR t91.
        CREATE OBJECT t91.
        t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t91->sval = t92.
        IF t89 IS NOT BOUND.
          t88 = xsdbool( t91 IS NOT BOUND ).
        ELSE.
          t88 = t89->strict_equals( t91 ).
        ENDIF.
        t75 = t88.
      ENDIF.
      IF t75 = abap_true.
        DATA(t93) = abap_true.
        result = t93.
        RETURN.
      ELSE.
        DATA(t94) = VALUE abap_bool( ).
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        DATA(t96) = t2.
        CLEAR t95.
        IF t96 IS BOUND.
          t95 = t96.
        ENDIF.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        DATA(t98) = |CL_SADL_GTK_EXPOSURE_MPC|.
        CLEAR t97.
        CREATE OBJECT t97.
        t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t97->sval = t98.
        IF t95 IS NOT BOUND.
          t94 = xsdbool( t97 IS NOT BOUND ).
        ELSE.
          t94 = t95->strict_equals( t97 ).
        ENDIF.
        IF t94 = abap_true.
          DATA(t99) = abap_true.
          result = t99.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t100) = abap_false.
    result = t100.

  ENDMETHOD.

  METHOD is_generated_persistent_class.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_class.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA(t7) = t4.
    t7->parse_xml( ).
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA t10 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA(t11) = t4.
    t10 = t11->parsed_xml.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t12 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t17 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t18) = t9.
      t17 = t18.
      t16 = t17->category.
      t12 = t16.
    ENDIF.
    t8 = t12.
    t6 = t8.
    t3 = t6.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = |10|.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t21.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t19 = t23.
    ENDIF.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = VALUE abap_bool( ).
    IF t3 IS BOUND.
      t24 = t3->has.
    ENDIF.
    IF t19 IS BOUND.
      t25 = t19->has.
    ENDIF.
    IF t24 = t25.
      IF t24 = abap_false.
        t2 = abap_true.
      ELSEIF t3->value = t19->value.
        t2 = abap_true.
      ENDIF.
    ENDIF.
    IF t2 = abap_true.
      DATA(t26) = abap_true.
      result = t26.
      RETURN.
    ELSE.
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_class.
      DATA(t30) = t1.
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA(t32) = t29.
      t32->parse_xml( ).
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA t34 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA t35 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t36) = t29.
      t35 = t36->parsed_xml.
      t34 = t35.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = t34.
      IF t39 IS INITIAL.
        t38 = abap_true.
      ENDIF.
      IF t38 = abap_true.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        t37 = t40.
      ELSE.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t42 TYPE REF TO zcl_lnt_shape_e272b380.
        DATA(t43) = t34.
        t42 = t43.
        t41 = t42->category.
        t37 = t41.
      ENDIF.
      t33 = t37.
      t31 = t33.
      t28 = t31.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      DATA(t45) = abap_true.
      IF t45 = abap_true.
        DATA(t46) = |11|.
        DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t47->has = abap_true.
        t47->value = t46.
        t44 = t47.
      ELSE.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        t44 = t48.
      ENDIF.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = VALUE abap_bool( ).
      IF t28 IS BOUND.
        t49 = t28->has.
      ENDIF.
      IF t44 IS BOUND.
        t50 = t44->has.
      ENDIF.
      IF t49 = t50.
        IF t49 = abap_false.
          t27 = abap_true.
        ELSEIF t28->value = t44->value.
          t27 = abap_true.
        ENDIF.
      ENDIF.
      IF t27 = abap_true.
        DATA(t51) = abap_true.
        result = t51.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t52 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t52.
    DATA t53 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t53.
    DATA t54 TYPE REF TO zcl_lnt_class.
    DATA(t55) = t1.
    t54 = t55.
    DATA t56 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t58.
    DATA t59 TYPE REF TO zcl_lnt_abap_file.
    DATA t60 TYPE REF TO zcl_lnt_abap_file.
    DATA(t61) = t54.
    t60 = t61->get_main_abap_file( ).
    t59 = t60.
    DATA t62 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t62.
    DATA(t63) = VALUE abap_bool( ).
    DATA(t64) = t59.
    IF t64 IS INITIAL.
      t63 = abap_true.
    ENDIF.
    IF t63 = abap_true.
      DATA t65 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t65.
      t62 = t65.
    ELSE.
      DATA t66 TYPE REF TO zif_lnt_abap_file_information.
      DATA t67 TYPE REF TO zcl_lnt_abap_file.
      DATA t68 TYPE REF TO zcl_lnt_abap_file.
      DATA(t69) = t59.
      t68 = t69.
      t67 = t68.
      DATA t70 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t71) = t67.
      t70 = t71->info.
      t66 = t70.
      t62 = t66.
    ENDIF.
    t58 = t62.
    t57 = t58.
    DATA t72 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t72.
    DATA(t73) = VALUE abap_bool( ).
    DATA(t74) = t57.
    IF t74 IS INITIAL.
      t73 = abap_true.
    ENDIF.
    IF t73 = abap_true.
      DATA t75 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t75.
      t72 = t75.
    ELSE.
      DATA t76 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t77 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t78) = t57.
      t77 = t78.
      DATA t79 TYPE string.
      DATA t80 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t81) = t54.
      t80 = t81.
      DATA t82 TYPE string.
      DATA(t83) = t80.
      t82 = t83->name.
      t79 = t82.
      t76 = t77->get_class_definition_by_name( i_name = t79 ).
      t72 = t76.
    ENDIF.
    t56 = t72.
    t53 = t56.
    t52 = t53.
    DATA t84 TYPE abap_bool.
    DATA(t85) = t52.
    t84 = xsdbool( t85 IS BOUND ).
    IF t84 = abap_true.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t88 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t89) = t52.
      t88 = t89.
      t87 = t88->super_class_name.
      t86 = t87.
      DATA(t90) = VALUE abap_bool( ).
      DATA(t91) = t86.
      IF t91 IS BOUND.
        IF t91->has = abap_true.
          t90 = xsdbool( strlen( t91->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t90 = abap_true.
        DATA t92 TYPE REF TO zif_lnt_object.
        CLEAR t92.
        DATA t93 TYPE REF TO zif_lnt_object.
        CLEAR t93.
        DATA(t94) = me->reg.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        DATA(t96) = abap_true.
        IF t96 = abap_true.
          DATA(t97) = |CLAS|.
          DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t98->has = abap_true.
          t98->value = t97.
          t95 = t98.
        ELSE.
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t99.
          t95 = t99.
        ENDIF.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t100.
        DATA(t101) = abap_true.
        IF t101 = abap_true.
          DATA t102 TYPE string.
          DATA t103 TYPE string.
          DATA(t104) = t86.
          t103 = t104->value.
          DATA(t105) = strlen( t103 ).
          t102 = t103.
          IF t102 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t102 TO UPPER CASE.
          ELSE.
            t102 = zlnt_runtime_uppe_91169605024d=>full( t102 ).
          ENDIF.
          DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t106->has = abap_true.
          t106->value = t102.
          t100 = t106.
        ELSE.
          DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t107.
          t100 = t107.
        ENDIF.
        t93 = t94->get_object( i_type_9913 = t95 i_name = t100 ).
        t92 = t93.
        DATA t108 TYPE abap_bool.
        DATA t109 TYPE abap_bool.
        DATA(t110) = t92.
        t109 = xsdbool( t110 IS BOUND ).
        t108 = t109.
        IF t109 = abap_true.
          DATA(t111) = VALUE abap_bool( ).
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t112.
          DATA t113 TYPE REF TO zcl_lnt_class.
          DATA t114 TYPE REF TO zcl_lnt_class.
          DATA t115 TYPE REF TO zif_lnt_object.
          DATA(t116) = t92.
          t115 = t116.
          t114 ?= t115.
          t113 = t114.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          DATA(t118) = t113.
          t118->parse_xml( ).
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t119.
          DATA t120 TYPE REF TO zcl_lnt_shape_e272b380.
          DATA t121 TYPE REF TO zcl_lnt_shape_e272b380.
          DATA(t122) = t113.
          t121 = t122->parsed_xml.
          t120 = t121.
          DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t123.
          DATA(t124) = VALUE abap_bool( ).
          DATA(t125) = t120.
          IF t125 IS INITIAL.
            t124 = abap_true.
          ENDIF.
          IF t124 = abap_true.
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t126.
            t123 = t126.
          ELSE.
            DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t128 TYPE REF TO zcl_lnt_shape_e272b380.
            DATA(t129) = t120.
            t128 = t129.
            t127 = t128->category.
            t123 = t127.
          ENDIF.
          t119 = t123.
          t117 = t119.
          t112 = t117.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          DATA(t131) = abap_true.
          IF t131 = abap_true.
            DATA(t132) = |11|.
            DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t133->has = abap_true.
            t133->value = t132.
            t130 = t133.
          ELSE.
            DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t134.
            t130 = t134.
          ENDIF.
          DATA(t135) = VALUE abap_bool( ).
          DATA(t136) = VALUE abap_bool( ).
          IF t112 IS BOUND.
            t135 = t112->has.
          ENDIF.
          IF t130 IS BOUND.
            t136 = t130->has.
          ENDIF.
          IF t135 = t136.
            IF t135 = abap_false.
              t111 = abap_true.
            ELSEIF t112->value = t130->value.
              t111 = abap_true.
            ENDIF.
          ENDIF.
          t108 = t111.
        ENDIF.
        IF t108 = abap_true.
          DATA(t137) = abap_true.
          result = t137.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t138) = abap_false.
    result = t138.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1784_c5395b0abb53.
  ENDMETHOD.
ENDCLASS.
