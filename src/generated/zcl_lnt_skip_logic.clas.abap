* TS: src/skip_logic.ts:6:1 SkipLogic
CLASS zcl_lnt_skip_logic DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_skip_logic IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_registry( t1 ).
    me->reg = t2.
    DATA t3 TYPE REF TO zcl_lnt_include_graph.
    CLEAR t3.
    me->include_graph = t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    CLEAR t4.
    me->tobj = t4.
  ENDMETHOD.

  METHOD skip_0892.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA t2 TYPE REF TO zcl_lnt_iglobal_config.
    DATA t3 TYPE REF TO zcl_lnt_iglobal_config.
    DATA t4 TYPE REF TO zif_lnt_configuration.
    DATA(t5) = CAST zif_lnt_registry( me->reg ).
    t4 = t5->get_config( ).
    t3 = t4->get_global( ).
    t2 = t3.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t10) = CAST zcl_lnt_iglobal_config( t2 ).
    t9 = t10->skip_generated_gateway_classes.
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
      DATA(t19) = CAST zif_lnt_object( t1 ).
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_class ).
      t7 = t18.
    ENDIF.
    t6 = t7.
    IF t7 = abap_true.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE REF TO zcl_lnt_class.
      DATA(t22) = CAST zif_lnt_object( t1 ).
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
      DATA(t29) = CAST zcl_lnt_iglobal_config( t2 ).
      t28 = t29->skip_includes_without_main.
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
        DATA(t38) = CAST zif_lnt_object( t1 ).
        t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_ob_program ).
        t26 = t37.
      ENDIF.
      t25 = t26.
      IF t26 = abap_true.
        DATA t39 TYPE abap_bool.
        DATA t40 TYPE abap_bool.
        DATA t41 TYPE REF TO zcl_lnt_ob_program.
        DATA t42 TYPE REF TO zcl_lnt_ob_program.
        DATA(t43) = CAST zif_lnt_object( t1 ).
        DATA t44 TYPE REF TO object.
        t44 = t43.
        t42 ?= t44.
        t41 = t42.
        DATA t45 TYPE abap_bool.
        DATA(t46) = CAST zcl_lnt_ob_program( t41 ).
        t46->parse_xml( ).
        DATA t47 TYPE abap_bool.
        DATA t48 TYPE REF TO zcl_lnt_shape_e86506f0.
        DATA t49 TYPE REF TO zcl_lnt_shape_e86506f0.
        DATA(t50) = CAST zcl_lnt_ob_program( t41 ).
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
        DATA(t53) = CAST zcl_lnt_include_graph( me->include_graph ).
        IF t53 IS INITIAL.
          t52 = abap_true.
        ENDIF.
        IF t52 = abap_true.
          DATA t54 TYPE REF TO zcl_lnt_include_graph.
          CLEAR t54.
          DATA(t55) = abap_true.
          IF t55 = abap_true.
            DATA t56 TYPE REF TO zcl_lnt_include_graph.
            DATA(t57) = CAST zif_lnt_registry( me->reg ).
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
        ENDIF.
        DATA t61 TYPE REF TO zcl_lnt_abap_file.
        DATA t62 TYPE REF TO zcl_lnt_abap_file.
        DATA t63 TYPE REF TO zcl_lnt_ob_program.
        DATA(t64) = CAST zif_lnt_object( t1 ).
        DATA t65 TYPE REF TO object.
        t65 = t64.
        t63 ?= t65.
        t62 = t63->get_main_abap_file( ).
        t61 = t62.
        DATA t66 TYPE abap_bool.
        DATA t67 TYPE abap_bool.
        DATA(t68) = CAST zcl_lnt_abap_file( t61 ).
        t67 = xsdbool( t68 IS BOUND ).
        t66 = t67.
        IF t67 = abap_true.
          DATA(t69) = VALUE abap_bool( ).
          DATA(t70) = VALUE i( ).
          DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_include_graph.
          DATA(t73) = CAST zcl_lnt_include_graph( me->include_graph ).
          t72 = t73.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          DATA(t75) = abap_true.
          IF t75 = abap_true.
            DATA t76 TYPE string.
            DATA t77 TYPE REF TO zcl_lnt_abstract_file.
            DATA t78 TYPE REF TO zcl_lnt_abap_file.
            DATA(t79) = CAST zcl_lnt_abap_file( t61 ).
            t78 = t79.
            t77 = t78.
            DATA t80 TYPE string.
            DATA(t81) = CAST zcl_lnt_abstract_file( t77 ).
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
        DATA(t90) = CAST zcl_lnt_iglobal_config( t2 ).
        t89 = t90->skp_gnrtd_prsstnt_clsss.
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
          DATA(t99) = CAST zif_lnt_object( t1 ).
          t98 = xsdbool( t99 IS BOUND AND t99 IS INSTANCE OF zcl_lnt_class ).
          t87 = t98.
        ENDIF.
        t86 = t87.
        IF t87 = abap_true.
          DATA t100 TYPE abap_bool.
          DATA t101 TYPE REF TO zcl_lnt_class.
          DATA(t102) = CAST zif_lnt_object( t1 ).
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
          DATA(t109) = CAST zcl_lnt_iglobal_config( t2 ).
          t108 = t109->skip_generated_function_groups.
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
            DATA(t118) = CAST zif_lnt_object( t1 ).
            t117 = xsdbool( t118 IS BOUND AND t118 IS INSTANCE OF zcl_lnt_function_group ).
            t106 = t117.
          ENDIF.
          t105 = t106.
          IF t106 = abap_true.
            DATA t119 TYPE abap_bool.
            DATA t120 TYPE REF TO zcl_lnt_function_group.
            DATA(t121) = CAST zif_lnt_object( t1 ).
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
            DATA(t128) = CAST zcl_lnt_iglobal_config( t2 ).
            t127 = t128->skip_generated_proxy_classes.
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
              DATA(t137) = CAST zif_lnt_object( t1 ).
              t136 = xsdbool( t137 IS BOUND AND t137 IS INSTANCE OF zcl_lnt_class ).
              t125 = t136.
            ENDIF.
            t124 = t125.
            IF t125 = abap_true.
              DATA t138 TYPE abap_bool.
              DATA t139 TYPE REF TO zcl_lnt_class.
              DATA(t140) = CAST zif_lnt_object( t1 ).
              DATA t141 TYPE REF TO object.
              t141 = t140.
              t139 ?= t141.
              t138 = me->is_generated_proxy_class( i_obj_1ed0 = t139 ).
              t124 = t138.
            ENDIF.
            IF t124 = abap_true.
              DATA(t142) = abap_true.
              result = t142.
              RETURN.
            ELSE.
              DATA(t143) = VALUE abap_bool( ).
              DATA(t144) = VALUE abap_bool( ).
              DATA(t145) = VALUE abap_bool( ).
              DATA t146 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA(t147) = CAST zcl_lnt_iglobal_config( t2 ).
              t146 = t147->skp_gnrtd_prxy_intrfcs.
              DATA t148 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t148.
              DATA(t149) = abap_true.
              IF t149 = abap_true.
                DATA(t150) = abap_true.
                DATA(t151) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t151->has = abap_true.
                t151->value = t150.
                t148 = t151.
              ELSE.
                DATA t152 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t152.
                t148 = t152.
              ENDIF.
              DATA(t153) = VALUE abap_bool( ).
              DATA(t154) = VALUE abap_bool( ).
              IF t146 IS BOUND.
                t153 = t146->has.
              ENDIF.
              IF t148 IS BOUND.
                t154 = t148->has.
              ENDIF.
              IF t153 = t154.
                IF t153 = abap_false.
                  t145 = abap_true.
                ELSEIF t146->value = t148->value.
                  t145 = abap_true.
                ENDIF.
              ENDIF.
              t144 = t145.
              IF t145 = abap_true.
                DATA t155 TYPE abap_bool.
                DATA(t156) = CAST zif_lnt_object( t1 ).
                t155 = xsdbool( t156 IS BOUND AND t156 IS INSTANCE OF zcl_lnt_ob_interface ).
                t144 = t155.
              ENDIF.
              t143 = t144.
              IF t144 = abap_true.
                DATA t157 TYPE abap_bool.
                DATA t158 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t159) = CAST zif_lnt_object( t1 ).
                DATA t160 TYPE REF TO object.
                t160 = t159.
                t158 ?= t160.
                t157 = me->is_generated_proxy_interface( i_obj_1ed0 = t158 ).
                t143 = t157.
              ENDIF.
              IF t143 = abap_true.
                DATA(t161) = abap_true.
                result = t161.
                RETURN.
              ELSE.
                DATA(t162) = VALUE abap_bool( ).
                DATA(t163) = VALUE abap_bool( ).
                DATA(t164) = VALUE abap_bool( ).
                DATA t165 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA(t166) = CAST zcl_lnt_iglobal_config( t2 ).
                t165 = t166->skip_generated_bopf_interfaces.
                DATA t167 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t167.
                DATA(t168) = abap_true.
                IF t168 = abap_true.
                  DATA(t169) = abap_true.
                  DATA(t170) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t170->has = abap_true.
                  t170->value = t169.
                  t167 = t170.
                ELSE.
                  DATA t171 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t171.
                  t167 = t171.
                ENDIF.
                DATA(t172) = VALUE abap_bool( ).
                DATA(t173) = VALUE abap_bool( ).
                IF t165 IS BOUND.
                  t172 = t165->has.
                ENDIF.
                IF t167 IS BOUND.
                  t173 = t167->has.
                ENDIF.
                IF t172 = t173.
                  IF t172 = abap_false.
                    t164 = abap_true.
                  ELSEIF t165->value = t167->value.
                    t164 = abap_true.
                  ENDIF.
                ENDIF.
                t163 = t164.
                IF t164 = abap_true.
                  DATA t174 TYPE abap_bool.
                  DATA(t175) = CAST zif_lnt_object( t1 ).
                  t174 = xsdbool( t175 IS BOUND AND t175 IS INSTANCE OF zcl_lnt_ob_interface ).
                  t163 = t174.
                ENDIF.
                t162 = t163.
                IF t163 = abap_true.
                  DATA t176 TYPE abap_bool.
                  DATA t177 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t178) = CAST zif_lnt_object( t1 ).
                  DATA t179 TYPE REF TO object.
                  t179 = t178.
                  t177 ?= t179.
                  t176 = me->is_generated_bopf_interface( i_obj_1ed0 = t177 ).
                  t162 = t176.
                ENDIF.
                IF t162 = abap_true.
                  DATA(t180) = abap_true.
                  result = t180.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t181) = abap_false.
    result = t181.

  ENDMETHOD.

  METHOD is_generated_bopf_interface.
    DATA(t1) = CAST zcl_lnt_ob_interface( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/skip_logic.ts:60|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD is_generated_proxy_interface.
    DATA(t1) = CAST zcl_lnt_ob_interface( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/skip_logic.ts:73|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD is_generated_proxy_class.
    DATA(t1) = CAST zcl_lnt_class( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/skip_logic.ts:86|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD is_generated_function_group.
    DATA(t1) = CAST zcl_lnt_function_group( i_group ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/skip_logic.ts:99|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD is_generated_gateway_class.
    DATA(t1) = CAST zcl_lnt_class( i_obj_1ed0 ).
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_class.
    DATA(t7) = CAST zcl_lnt_class( t1 ).
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_abap_file.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    DATA(t13) = CAST zcl_lnt_class( t6 ).
    t12 = t13->get_main_abap_file( ).
    t11 = t12.
    DATA t14 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = CAST zcl_lnt_abap_file( t11 ).
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
      DATA(t21) = CAST zcl_lnt_abap_file( t11 ).
      t20 = t21.
      t19 = t20.
      DATA t22 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t23) = CAST zcl_lnt_abap_file( t19 ).
      t22 = t23->info.
      t18 = t22.
      t14 = t18.
    ENDIF.
    t10 = t14.
    t9 = t10.
    DATA t24 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = CAST zif_lnt_abap_file_information( t9 ).
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
      DATA(t30) = CAST zif_lnt_abap_file_information( t9 ).
      t29 = t30.
      DATA t31 TYPE string.
      DATA t32 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t33) = CAST zcl_lnt_class( t6 ).
      t32 = t33.
      DATA t34 TYPE string.
      DATA(t35) = CAST zcl_lnt_abstract_object( t32 ).
      t34 = t35->name.
      t31 = t34.
      t28 = t29->get_class_definition_by_name( i_name = t31 ).
      t24 = t28.
    ENDIF.
    t8 = t24.
    t5 = t8.
    t4 = t5.
    DATA t36 TYPE abap_bool.
    DATA(t37) = CAST zcl_lnt_info_class_definition( t4 ).
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
        DATA(t45) = CAST zcl_lnt_info_class_definition( t4 ).
        t44 = t45.
        t43 = t44->super_class_name.
        t42 = t43.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = CAST zlnt_runtime_opti_4ba3bdccd169( t42 ).
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
          DATA(t52) = CAST zlnt_runtime_opti_4ba3bdccd169( t42 ).
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
        IF t41 IS BOUND AND t41->has = abap_true.
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
    DATA(t61) = CAST zcl_lnt_class( t1 ).
    t60 = t61.
    DATA t62 TYPE string.
    DATA(t63) = CAST zcl_lnt_abstract_object( t60 ).
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
      DATA(t71) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
      IF t71 IS BOUND.
        t70 = t71.
      ENDIF.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t73) = |/IWBEP/CL_MGW_PUSH_ABS_MODEL|.
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
      DATA(t80) = CAST zcl_lnt_class( t1 ).
      t79 = t80.
      DATA t81 TYPE string.
      DATA(t82) = CAST zcl_lnt_abstract_object( t79 ).
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
        DATA(t90) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
        IF t90 IS BOUND.
          t89 = t90.
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t92) = |/IWBEP/CL_MGW_PUSH_ABS_DATA|.
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
        DATA(t96) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
        IF t96 IS BOUND.
          t95 = t96.
        ENDIF.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t98) = |CL_SADL_GTK_EXPOSURE_MPC|.
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
    DATA(t1) = CAST zcl_lnt_class( i_obj_1ed0 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_class.
    DATA(t5) = CAST zcl_lnt_class( t1 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA(t7) = CAST zcl_lnt_class( t4 ).
    t7->parse_xml( ).
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA t10 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA(t11) = CAST zcl_lnt_class( t4 ).
    t10 = t11->parsed_xml.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = CAST zcl_lnt_shape_e272b380( t9 ).
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
      DATA(t18) = CAST zcl_lnt_shape_e272b380( t9 ).
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
      DATA(t30) = CAST zcl_lnt_class( t1 ).
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA(t32) = CAST zcl_lnt_class( t29 ).
      t32->parse_xml( ).
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA t34 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA t35 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t36) = CAST zcl_lnt_class( t29 ).
      t35 = t36->parsed_xml.
      t34 = t35.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = CAST zcl_lnt_shape_e272b380( t34 ).
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
        DATA(t43) = CAST zcl_lnt_shape_e272b380( t34 ).
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
    DATA(t55) = CAST zcl_lnt_class( t1 ).
    t54 = t55.
    DATA t56 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t58.
    DATA t59 TYPE REF TO zcl_lnt_abap_file.
    DATA t60 TYPE REF TO zcl_lnt_abap_file.
    DATA(t61) = CAST zcl_lnt_class( t54 ).
    t60 = t61->get_main_abap_file( ).
    t59 = t60.
    DATA t62 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t62.
    DATA(t63) = VALUE abap_bool( ).
    DATA(t64) = CAST zcl_lnt_abap_file( t59 ).
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
      DATA(t69) = CAST zcl_lnt_abap_file( t59 ).
      t68 = t69.
      t67 = t68.
      DATA t70 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t71) = CAST zcl_lnt_abap_file( t67 ).
      t70 = t71->info.
      t66 = t70.
      t62 = t66.
    ENDIF.
    t58 = t62.
    t57 = t58.
    DATA t72 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t72.
    DATA(t73) = VALUE abap_bool( ).
    DATA(t74) = CAST zif_lnt_abap_file_information( t57 ).
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
      DATA(t78) = CAST zif_lnt_abap_file_information( t57 ).
      t77 = t78.
      DATA t79 TYPE string.
      DATA t80 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t81) = CAST zcl_lnt_class( t54 ).
      t80 = t81.
      DATA t82 TYPE string.
      DATA(t83) = CAST zcl_lnt_abstract_object( t80 ).
      t82 = t83->name.
      t79 = t82.
      t76 = t77->get_class_definition_by_name( i_name = t79 ).
      t72 = t76.
    ENDIF.
    t56 = t72.
    t53 = t56.
    t52 = t53.
    DATA t84 TYPE abap_bool.
    DATA(t85) = CAST zcl_lnt_info_class_definition( t52 ).
    t84 = xsdbool( t85 IS BOUND ).
    IF t84 = abap_true.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t88 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t89) = CAST zcl_lnt_info_class_definition( t52 ).
      t88 = t89.
      t87 = t88->super_class_name.
      t86 = t87.
      DATA(t90) = VALUE abap_bool( ).
      DATA(t91) = CAST zlnt_runtime_opti_4ba3bdccd169( t86 ).
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
        DATA(t94) = CAST zif_lnt_registry( me->reg ).
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
          DATA(t104) = CAST zlnt_runtime_opti_4ba3bdccd169( t86 ).
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
        DATA(t110) = CAST zif_lnt_object( t92 ).
        t109 = xsdbool( t110 IS BOUND ).
        t108 = t109.
        IF t109 = abap_true.
          DATA(t111) = VALUE abap_bool( ).
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t112.
          DATA t113 TYPE REF TO zcl_lnt_class.
          DATA t114 TYPE REF TO zcl_lnt_class.
          DATA t115 TYPE REF TO zif_lnt_object.
          DATA(t116) = CAST zif_lnt_object( t92 ).
          t115 = t116.
          t114 ?= t115.
          t113 = t114.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          DATA(t118) = CAST zcl_lnt_class( t113 ).
          t118->parse_xml( ).
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t119.
          DATA t120 TYPE REF TO zcl_lnt_shape_e272b380.
          DATA t121 TYPE REF TO zcl_lnt_shape_e272b380.
          DATA(t122) = CAST zcl_lnt_class( t113 ).
          t121 = t122->parsed_xml.
          t120 = t121.
          DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t123.
          DATA(t124) = VALUE abap_bool( ).
          DATA(t125) = CAST zcl_lnt_shape_e272b380( t120 ).
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
            DATA(t129) = CAST zcl_lnt_shape_e272b380( t120 ).
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

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1685_3f02695e5fb0.
  ENDMETHOD.
ENDCLASS.
