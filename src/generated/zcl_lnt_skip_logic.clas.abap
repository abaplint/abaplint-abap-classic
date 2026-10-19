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
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    CLEAR me->include_graph.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `includeGraph`.
    CLEAR me->tobj.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tobj`.
  ENDMETHOD.

  METHOD skip_0892.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zcl_lnt_iglobal_config.
    DATA t3 TYPE REF TO zcl_lnt_iglobal_config.
    DATA t4 TYPE REF TO zif_lnt_configuration.
    t4 = me->reg->get_config( ).
    t3 = t4->get_global( ).
    t2 = t3.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t9 = t2->zlnt_view_read_sr_b7f9c8e395fa( ).
    DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t14) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t14->has = abap_true.
    t14->value = abap_true.
    t11 = t14.
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
      t18 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_class ).
      t7 = t18.
    ENDIF.
    t6 = t7.
    IF t7 = abap_true.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE REF TO zcl_lnt_class.
      DATA t23 TYPE REF TO object.
      t23 = t1.
      t21 ?= t23.
      t20 = me->is_generated_gateway_class( i_obj_1ed0 = t21 ).
      t6 = t20.
    ENDIF.
    IF t6 = abap_true.
      result = abap_true.
      RETURN.
    ELSE.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t28 = t2->zlnt_view_read_sr_ce2a50732551( ).
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t33) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t33->has = abap_true.
      t33->value = abap_true.
      t30 = t33.
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
        t37 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_program ).
        t26 = t37.
      ENDIF.
      t25 = t26.
      IF t26 = abap_true.
        DATA t39 TYPE abap_bool.
        DATA t40 TYPE abap_bool.
        DATA t41 TYPE REF TO zcl_lnt_ob_program.
        DATA t42 TYPE REF TO zcl_lnt_ob_program.
        DATA t44 TYPE REF TO object.
        t44 = t1.
        t42 ?= t44.
        t41 = t42.
        t41->parse_xml( ).
        DATA t47 TYPE abap_bool.
        DATA t48 TYPE REF TO zcl_lnt_shape_d77da4ed.
        DATA t49 TYPE REF TO zcl_lnt_shape_d77da4ed.
        t49 = t41->parsed_xml.
        t48 = t49.
        t47 = t48->is_include.
        t40 = t47.
        t39 = xsdbool( t40 = abap_true ).
        t25 = t39.
      ENDIF.
      IF t25 = abap_true.
        DATA(t52) = xsdbool( me->include_graph IS INITIAL ).
        IF t52 = abap_true.
          DATA t56 TYPE REF TO zcl_lnt_include_graph.
          DATA(t57) = me->reg.
          DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t59 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t56 = NEW zcl_lnt_include_graph( i_reg_f149 = t57 i_severity = t58 i_allow_unused = t59 ).
          me->include_graph = t56.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `includeGraph`.
        ENDIF.
        DATA t61 TYPE REF TO zcl_lnt_abap_file.
        DATA t62 TYPE REF TO zcl_lnt_abap_file.
        DATA t63 TYPE REF TO zcl_lnt_ob_program.
        DATA t65 TYPE REF TO object.
        t65 = t1.
        t63 ?= t65.
        t62 = t63->get_main_abap_file( ).
        t61 = t62.
        DATA t66 TYPE abap_bool.
        DATA t67 TYPE abap_bool.
        t67 = xsdbool( t61 IS BOUND ).
        t66 = t67.
        IF t67 = abap_true.
          DATA(t69) = VALUE abap_bool( ).
          DATA(t70) = VALUE i( ).
          DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t72 TYPE REF TO zcl_lnt_include_graph.
          t72 = me->include_graph.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t77 TYPE REF TO zcl_lnt_abstract_file.
          t77 = t61.
          DATA t80 TYPE string.
          t80 = t77->filename.
          DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t82->has = abap_true.
          t82->value = t80.
          t74 = t82.
          t71 = t72->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t74 ).
          t71->load( ).
          t70 = lines( t71->items ).
          DATA(t84) = 0.
          t69 = xsdbool( t70 = t84 ).
          t66 = t69.
        ENDIF.
        IF t66 = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
      ELSE.
        DATA(t86) = VALUE abap_bool( ).
        DATA(t87) = VALUE abap_bool( ).
        DATA(t88) = VALUE abap_bool( ).
        DATA t89 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t89 = t2->zlnt_view_read_sr_d33d8b9cacb6( ).
        DATA t91 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t94) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t94->has = abap_true.
        t94->value = abap_true.
        t91 = t94.
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
          t98 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_class ).
          t87 = t98.
        ENDIF.
        t86 = t87.
        IF t87 = abap_true.
          DATA t100 TYPE abap_bool.
          DATA t101 TYPE REF TO zcl_lnt_class.
          DATA t103 TYPE REF TO object.
          t103 = t1.
          t101 ?= t103.
          t100 = me->is_generated_persistent_class( i_obj_1ed0 = t101 ).
          t86 = t100.
        ENDIF.
        IF t86 = abap_true.
          result = abap_true.
          RETURN.
        ELSE.
          DATA(t105) = VALUE abap_bool( ).
          DATA(t106) = VALUE abap_bool( ).
          DATA(t107) = VALUE abap_bool( ).
          DATA t108 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t108 = t2->zlnt_view_read_sr_125104471a9e( ).
          DATA t110 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t113) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t113->has = abap_true.
          t113->value = abap_true.
          t110 = t113.
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
            t117 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_function_group ).
            t106 = t117.
          ENDIF.
          t105 = t106.
          IF t106 = abap_true.
            DATA t119 TYPE abap_bool.
            DATA t120 TYPE REF TO zcl_lnt_function_group.
            DATA t122 TYPE REF TO object.
            t122 = t1.
            t120 ?= t122.
            t119 = me->is_generated_function_group( i_group = t120 ).
            t105 = t119.
          ENDIF.
          IF t105 = abap_true.
            result = abap_true.
            RETURN.
          ELSE.
            DATA(t124) = VALUE abap_bool( ).
            DATA(t125) = VALUE abap_bool( ).
            DATA(t126) = VALUE abap_bool( ).
            DATA t127 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            t127 = t2->zlnt_view_read_sr_7fd47aff77b0( ).
            DATA t129 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA(t132) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t132->has = abap_true.
            t132->value = abap_true.
            t129 = t132.
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
              t136 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_class ).
              t125 = t136.
            ENDIF.
            t124 = t125.
            IF t125 = abap_true.
              DATA(t138) = VALUE abap_bool( ).
              DATA t140 TYPE REF TO zcl_lnt_class.
              DATA t142 TYPE REF TO object.
              t142 = t1.
              t140 ?= t142.
              DATA(t143) = VALUE abap_bool( ).
              DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t146 TYPE REF TO zcl_lnt_abstract_object.
              t146 = t140.
              DATA t149 TYPE REF TO zif_lnt_file.
              DATA t150 TYPE REF TO zif_lnt_file.
              t150 = t146->get_xml_file( ).
              t149 = t150.
              DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t153 TYPE abap_bool.
              t153 = xsdbool( t149 IS BOUND ).
              IF t153 = abap_true.
                DATA t157 TYPE string.
                DATA t158 TYPE REF TO zif_lnt_file.
                t158 = t149.
                t157 = t158->get_raw( ).
                DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t160->has = abap_true.
                t160->value = t157.
                t152 = t160.
              ELSE.
                CLEAR t152.
              ENDIF.
              t144 = t152.
              DATA(t163) = VALUE abap_bool( ).
              DATA(t164) = VALUE abap_bool( ).
              DATA(t165) = VALUE abap_bool( ).
              IF t144 IS BOUND.
                IF t144->has = abap_true.
                  t165 = xsdbool( strlen( t144->value ) > 0 ).
                ENDIF.
              ENDIF.
              t164 = xsdbool( t165 = abap_false ).
              IF t164 = abap_true.
                t163 = abap_false.
              ELSE.
                DATA(t168) = VALUE abap_bool( ).
                DATA t172 TYPE string.
                t172 = t144->value.
                DATA t174 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t176 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
                DATA(t177) = `<CLSPROXY>(.)<\/CLSPROXY>`.
                DATA(t178) = |<CLSPROXY>([^\n\r|.
                DATA t179 TYPE c LENGTH 1.
                t179 = cl_abap_conv_in_ce=>uccpi( 8232 ).
                CONCATENATE t178 t179 INTO t178 RESPECTING BLANKS.
                DATA t180 TYPE c LENGTH 1.
                t180 = cl_abap_conv_in_ce=>uccpi( 8233 ).
                CONCATENATE t178 t180 INTO t178 RESPECTING BLANKS.
                t178 = t178 && `])<\/CLSPROXY>`.
                DATA(t181) = ||.
                CREATE OBJECT t176 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t178 flags = t181.
                t176->source = t177.
                t174 = t176->match( t172 ).
                DATA(t182) = VALUE abap_bool( ).
                DATA t183 TYPE abap_bool.
                t183 = xsdbool( t174 IS BOUND ).
                IF t183 = abap_true.
                  t182 = abap_true.
                ELSE.
                  t182 = abap_false.
                ENDIF.
                t168 = t182.
                t163 = t168.
              ENDIF.
              t143 = t163.
              t138 = t143.
              t124 = t138.
            ENDIF.
            IF t124 = abap_true.
              result = abap_true.
              RETURN.
            ELSE.
              DATA(t188) = VALUE abap_bool( ).
              DATA(t189) = VALUE abap_bool( ).
              DATA(t190) = VALUE abap_bool( ).
              DATA t191 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              t191 = t2->zlnt_view_read_sr_dc41fb6d744a( ).
              DATA t193 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA(t196) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t196->has = abap_true.
              t196->value = abap_true.
              t193 = t196.
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
                t200 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_interface ).
                t189 = t200.
              ENDIF.
              t188 = t189.
              IF t189 = abap_true.
                DATA(t202) = VALUE abap_bool( ).
                DATA t204 TYPE REF TO zcl_lnt_ob_interface.
                DATA t206 TYPE REF TO object.
                t206 = t1.
                t204 ?= t206.
                DATA(t207) = VALUE abap_bool( ).
                DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t210 TYPE REF TO zcl_lnt_abstract_object.
                t210 = t204.
                DATA t213 TYPE REF TO zif_lnt_file.
                DATA t214 TYPE REF TO zif_lnt_file.
                t214 = t210->get_xml_file( ).
                t213 = t214.
                DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t217 TYPE abap_bool.
                t217 = xsdbool( t213 IS BOUND ).
                IF t217 = abap_true.
                  DATA t221 TYPE string.
                  DATA t222 TYPE REF TO zif_lnt_file.
                  t222 = t213.
                  t221 = t222->get_raw( ).
                  DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t224->has = abap_true.
                  t224->value = t221.
                  t216 = t224.
                ELSE.
                  CLEAR t216.
                ENDIF.
                t208 = t216.
                DATA(t227) = VALUE abap_bool( ).
                DATA(t228) = VALUE abap_bool( ).
                DATA(t229) = VALUE abap_bool( ).
                IF t208 IS BOUND.
                  IF t208->has = abap_true.
                    t229 = xsdbool( strlen( t208->value ) > 0 ).
                  ENDIF.
                ENDIF.
                t228 = xsdbool( t229 = abap_false ).
                IF t228 = abap_true.
                  t227 = abap_false.
                ELSE.
                  DATA(t232) = VALUE abap_bool( ).
                  DATA t236 TYPE string.
                  t236 = t208->value.
                  DATA t238 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t240 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
                  DATA(t241) = `<CLSPROXY>(.)<\/CLSPROXY>`.
                  DATA(t242) = |<CLSPROXY>([^\n\r|.
                  DATA t243 TYPE c LENGTH 1.
                  t243 = cl_abap_conv_in_ce=>uccpi( 8232 ).
                  CONCATENATE t242 t243 INTO t242 RESPECTING BLANKS.
                  DATA t244 TYPE c LENGTH 1.
                  t244 = cl_abap_conv_in_ce=>uccpi( 8233 ).
                  CONCATENATE t242 t244 INTO t242 RESPECTING BLANKS.
                  t242 = t242 && `])<\/CLSPROXY>`.
                  DATA(t245) = ||.
                  CREATE OBJECT t240 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t242 flags = t245.
                  t240->source = t241.
                  t238 = t240->match( t236 ).
                  DATA(t246) = VALUE abap_bool( ).
                  DATA t247 TYPE abap_bool.
                  t247 = xsdbool( t238 IS BOUND ).
                  IF t247 = abap_true.
                    t246 = abap_true.
                  ELSE.
                    t246 = abap_false.
                  ENDIF.
                  t232 = t246.
                  t227 = t232.
                ENDIF.
                t207 = t227.
                t202 = t207.
                t188 = t202.
              ENDIF.
              IF t188 = abap_true.
                result = abap_true.
                RETURN.
              ELSE.
                DATA(t252) = VALUE abap_bool( ).
                DATA(t253) = VALUE abap_bool( ).
                DATA(t254) = VALUE abap_bool( ).
                DATA t255 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                t255 = t2->zlnt_view_read_sr_ea2eb1e9b48c( ).
                DATA t257 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA(t260) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t260->has = abap_true.
                t260->value = abap_true.
                t257 = t260.
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
                  t264 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_interface ).
                  t253 = t264.
                ENDIF.
                t252 = t253.
                IF t253 = abap_true.
                  DATA t266 TYPE abap_bool.
                  DATA t267 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t269 TYPE REF TO object.
                  t269 = t1.
                  t267 ?= t269.
                  t266 = me->is_generated_bopf_interface( i_obj_1ed0 = t267 ).
                  t252 = t266.
                ENDIF.
                IF t252 = abap_true.
                  result = abap_true.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD is_generated_bopf_interface.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zif_lnt_interface_definition.
    DATA t8 TYPE REF TO zif_lnt_interface_definition.
    t8 = i_obj_1ed0->def.
    t4 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = xsdbool( t4 IS INITIAL ).
    IF t11 = abap_true.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zif_lnt_interface_definition.
      t15 = t4.
      t14 = t15->get_implementing( ).
      t10 = t14.
    ENDIF.
    t2 = t10.
    DATA(t17) = VALUE abap_bool( ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t17 = xsdbool( t2 IS INITIAL ).
    IF t17 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t25 = t2.
    DATA t27 TYPE REF TO zcl_lnt_iimplementing.
    DATA t28 TYPE REF TO object.
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
      t34 = t27->name.
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
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD is_generated_proxy_interface.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    t4 = i_obj_1ed0.
    DATA t7 TYPE REF TO zif_lnt_file.
    DATA t8 TYPE REF TO zif_lnt_file.
    t8 = t4->get_xml_file( ).
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE abap_bool.
    t11 = xsdbool( t7 IS BOUND ).
    IF t11 = abap_true.
      DATA t15 TYPE string.
      DATA t16 TYPE REF TO zif_lnt_file.
      t16 = t7.
      t15 = t16->get_raw( ).
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t15.
      t10 = t18.
    ELSE.
      CLEAR t10.
    ENDIF.
    t2 = t10.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = VALUE abap_bool( ).
    IF t2 IS BOUND.
      IF t2->has = abap_true.
        t22 = xsdbool( strlen( t2->value ) > 0 ).
      ENDIF.
    ENDIF.
    t21 = xsdbool( t22 = abap_false ).
    IF t21 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t28 TYPE string.
    t28 = t2->value.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t32 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t33) = `<CLSPROXY>(.)<\/CLSPROXY>`.
    DATA(t34) = |<CLSPROXY>([^\n\r|.
    DATA t35 TYPE c LENGTH 1.
    t35 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t34 t35 INTO t34 RESPECTING BLANKS.
    DATA t36 TYPE c LENGTH 1.
    t36 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t34 t36 INTO t34 RESPECTING BLANKS.
    t34 = t34 && `])<\/CLSPROXY>`.
    DATA(t37) = ||.
    CREATE OBJECT t32 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t34 flags = t37.
    t32->source = t33.
    t30 = t32->match( t28 ).
    DATA t38 TYPE abap_bool.
    t38 = xsdbool( t30 IS BOUND ).
    IF t38 = abap_true.
      result = abap_true.
      RETURN.
    ELSE.
      result = abap_false.

    ENDIF.
  ENDMETHOD.

  METHOD is_generated_proxy_class.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    t4 = i_obj_1ed0.
    DATA t7 TYPE REF TO zif_lnt_file.
    DATA t8 TYPE REF TO zif_lnt_file.
    t8 = t4->get_xml_file( ).
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE abap_bool.
    t11 = xsdbool( t7 IS BOUND ).
    IF t11 = abap_true.
      DATA t15 TYPE string.
      DATA t16 TYPE REF TO zif_lnt_file.
      t16 = t7.
      t15 = t16->get_raw( ).
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t15.
      t10 = t18.
    ELSE.
      CLEAR t10.
    ENDIF.
    t2 = t10.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = VALUE abap_bool( ).
    IF t2 IS BOUND.
      IF t2->has = abap_true.
        t22 = xsdbool( strlen( t2->value ) > 0 ).
      ENDIF.
    ENDIF.
    t21 = xsdbool( t22 = abap_false ).
    IF t21 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t28 TYPE string.
    t28 = t2->value.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t32 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t33) = `<CLSPROXY>(.)<\/CLSPROXY>`.
    DATA(t34) = |<CLSPROXY>([^\n\r|.
    DATA t35 TYPE c LENGTH 1.
    t35 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t34 t35 INTO t34 RESPECTING BLANKS.
    DATA t36 TYPE c LENGTH 1.
    t36 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t34 t36 INTO t34 RESPECTING BLANKS.
    t34 = t34 && `])<\/CLSPROXY>`.
    DATA(t37) = ||.
    CREATE OBJECT t32 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t34 flags = t37.
    t32->source = t33.
    t30 = t32->match( t28 ).
    DATA t38 TYPE abap_bool.
    t38 = xsdbool( t30 IS BOUND ).
    IF t38 = abap_true.
      result = abap_true.
      RETURN.
    ELSE.
      result = abap_false.

    ENDIF.
  ENDMETHOD.

  METHOD is_generated_function_group.
    DATA(t1) = i_group.
    DATA(t2) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2 = xsdbool( me->tobj IS INITIAL ).
    IF t2 = abap_true.
      me->tobj = NEW zlnt_runtime_map__45a2315f90b8( ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tobj`.
      DATA t16 TYPE REF TO zif_lnt_generator_8f73cd1c.
      DATA t17 TYPE REF TO zif_lnt_generator_8f73cd1c.
      DATA t18 TYPE REF TO zif_lnt_generator_8f73cd1c.
      DATA(t20) = |TOBJ|.
      t18 = me->reg->get_objects_by_type( i_type_9913 = t20 ).
      t17 = t18->iterate( ).
      t16 = t17.
      DO.
        DATA t22 TYPE REF TO zcl_lnt_generator_17955b8b.
        CLEAR t22.
        DATA t23 TYPE REF TO zcl_lnt_generator_17955b8b.
        CLEAR t23.
        t23 = t16->next( ).
        t22 = t23.
        DATA(t25) = VALUE abap_bool( ).
        t25 = t22->done.
        IF t25 = abap_true.
          EXIT.
        ENDIF.
        DATA t29 TYPE REF TO zif_lnt_object.
        CLEAR t29.
        t29 = t22->value.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        DATA(t34) = VALUE abap_bool( ).
        t34 = abap_false.
        DATA t36 TYPE REF TO cx_root.
        CLEAR t36.
        TRY.
            DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t38.
            DATA t40 TYPE REF TO zcl_lnt_mntnn_and_trnspr_objct.
            CLEAR t40.
            DATA t41 TYPE REF TO zcl_lnt_mntnn_and_trnspr_objct.
            CLEAR t41.
            t41 ?= t29.
            t40 = t41.
            DATA t44 TYPE REF TO zcl_lnt_iparse_result.
            CLEAR t44.
            t44 = t40->p_i_s_o_m_a_t_o_ts_mn_an_tr_ob( ).
            DATA t47 TYPE REF TO zcl_lnt_shape_cda19f43.
            CLEAR t47.
            DATA t48 TYPE REF TO zcl_lnt_shape_cda19f43.
            CLEAR t48.
            t48 = t40->parsed_xml.
            t47 = t48.
            DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t50.
            DATA(t51) = xsdbool( t47 IS INITIAL ).
            IF t51 = abap_true.
              CLEAR t50.
            ELSE.
              DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t54.
              DATA t55 TYPE REF TO zcl_lnt_shape_cda19f43.
              CLEAR t55.
              t55 = t47.
              t54 = t55->area.
              t50 = t54.
            ENDIF.
            t38 = t50.
            DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t57.
            DATA(t58) = VALUE abap_bool( ).
            IF t38 IS INITIAL.
              t58 = abap_true.
            ELSEIF t38->has = abap_false.
              t58 = abap_true.
            ENDIF.
            IF t58 = abap_true.
              CLEAR t57.
            ELSE.
              DATA(t61) = VALUE string( ).
              DATA(t62) = VALUE string( ).
              t62 = t38->value.
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
            t33 = t57.
            t34 = abap_true.
          CATCH cx_root INTO t36.
            DATA(t67) = VALUE abap_bool( ).
            t67 = xsdbool( t34 = abap_false ).
            IF t67 = abap_true.
              t16->close( ).
            ENDIF.
            RAISE EXCEPTION t36.
        ENDTRY.
        DATA(t70) = VALUE abap_bool( ).
        t70 = xsdbool( t34 = abap_false ).
        IF t70 = abap_true.
          t16->close( ).
        ENDIF.
        t31 = t33.
        DATA(t74) = VALUE abap_bool( ).
        DATA(t75) = VALUE abap_bool( ).
        DATA(t76) = VALUE abap_bool( ).
        t76 = abap_false.
        DATA t78 TYPE REF TO cx_root.
        CLEAR t78.
        TRY.
            DATA(t79) = VALUE abap_bool( ).
            IF t31 IS BOUND.
              IF t31->has = abap_true.
                t79 = xsdbool( strlen( t31->value ) > 0 ).
              ENDIF.
            ENDIF.
            t75 = t79.
            t76 = abap_true.
          CATCH cx_root INTO t78.
            DATA(t82) = VALUE abap_bool( ).
            t82 = xsdbool( t76 = abap_false ).
            IF t82 = abap_true.
              t16->close( ).
            ENDIF.
            RAISE EXCEPTION t78.
        ENDTRY.
        DATA(t85) = VALUE abap_bool( ).
        t85 = xsdbool( t76 = abap_false ).
        IF t85 = abap_true.
          t16->close( ).
        ENDIF.
        t74 = t75.
        IF t74 = abap_true.
          DATA t89 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          CLEAR t89.
          DATA t90 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          CLEAR t90.
          DATA(t91) = VALUE abap_bool( ).
          t91 = abap_false.
          DATA t93 TYPE REF TO cx_root.
          CLEAR t93.
          TRY.
              DATA t94 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
              CLEAR t94.
              DATA t95 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
              CLEAR t95.
              t95 = me->tobj.
              DATA(t97) = VALUE string( ).
              t97 = t31->value.
              t94 = t95->set( p0 = t97 p1 = abap_true ).
              t90 = t94.
              t91 = abap_true.
            CATCH cx_root INTO t93.
              DATA(t101) = VALUE abap_bool( ).
              t101 = xsdbool( t91 = abap_false ).
              IF t101 = abap_true.
                t16->close( ).
              ENDIF.
              RAISE EXCEPTION t93.
          ENDTRY.
          DATA(t104) = VALUE abap_bool( ).
          t104 = xsdbool( t91 = abap_false ).
          IF t104 = abap_true.
            t16->close( ).
          ENDIF.
          t89 = t90.
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t108) = VALUE abap_bool( ).
    DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t110 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    t110 = me->tobj.
    DATA(t112) = VALUE string( ).
    DATA(t113) = VALUE string( ).
    DATA t114 TYPE REF TO zcl_lnt_abstract_object.
    t114 = t1.
    DATA(t116) = VALUE string( ).
    t116 = t114->name.
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
    DATA t4 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t6 TYPE REF TO zcl_lnt_class.
    t6 = t1.
    DATA t9 TYPE REF TO zif_lnt_abap_file_information.
    DATA t11 TYPE REF TO zcl_lnt_abap_file.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    t12 = t6->get_main_abap_file( ).
    t11 = t12.
    DATA t14 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t15) = xsdbool( t11 IS INITIAL ).
    IF t15 = abap_true.
    ELSE.
      DATA t22 TYPE REF TO zif_lnt_abap_file_information.
      t22 = t11->info.
      t14 = t22.
    ENDIF.
    t9 = t14.
    DATA t24 TYPE REF TO zcl_lnt_info_class_definition.
    DATA(t25) = xsdbool( t9 IS INITIAL ).
    IF t25 = abap_true.
    ELSE.
      DATA t28 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t29 TYPE REF TO zif_lnt_abap_file_information.
      t29 = t9.
      DATA t31 TYPE string.
      DATA t32 TYPE REF TO zcl_lnt_abstract_object.
      t32 = t6.
      DATA t34 TYPE string.
      t34 = t32->name.
      t31 = t34.
      t28 = t29->get_class_definition_by_name( i_name = t31 ).
      t24 = t28.
    ENDIF.
    t4 = t24.
    DATA t36 TYPE abap_bool.
    t36 = xsdbool( t4 IS BOUND ).
    IF t36 = abap_true.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t44 TYPE REF TO zcl_lnt_info_class_definition.
      t44 = t4.
      t43 = t44->super_class_name.
      t42 = t43.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t47) = VALUE abap_bool( ).
      IF t42 IS INITIAL.
        t47 = abap_true.
      ELSEIF t42->has = abap_false.
        t47 = abap_true.
      ENDIF.
      IF t47 = abap_true.
      ELSE.
        DATA t50 TYPE string.
        DATA t51 TYPE string.
        t51 = t42->value.
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
      t2 = t40.
    ENDIF.
    DATA t56 TYPE abap_bool.
    DATA t57 TYPE abap_bool.
    DATA t60 TYPE REF TO zcl_lnt_abstract_object.
    t60 = t1.
    DATA t62 TYPE string.
    t62 = t60->name.
    DATA t64 TYPE abap_bool.
    DATA t65 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t66) = |_MPC$|.
    DATA(t67) = |i|.
    CREATE OBJECT t65 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t66 flags = t67.
    t64 = t65->match_test( p0 = t62 ).
    t57 = t64.
    t56 = t57.
    IF t57 = abap_true.
      DATA(t69) = VALUE abap_bool( ).
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t2 IS BOUND.
        t70 = t2.
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
      result = abap_true.
      RETURN.
    ELSE.
      DATA t75 TYPE abap_bool.
      DATA t76 TYPE abap_bool.
      DATA t79 TYPE REF TO zcl_lnt_abstract_object.
      t79 = t1.
      DATA t81 TYPE string.
      t81 = t79->name.
      DATA t83 TYPE abap_bool.
      DATA t84 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t85) = |_DPC$|.
      DATA(t86) = |i|.
      CREATE OBJECT t84 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t85 flags = t86.
      t83 = t84->match_test( p0 = t81 ).
      t76 = t83.
      t75 = t76.
      IF t76 = abap_true.
        DATA(t88) = VALUE abap_bool( ).
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t2 IS BOUND.
          t89 = t2.
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
        result = abap_true.
        RETURN.
      ELSE.
        DATA(t94) = VALUE abap_bool( ).
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t2 IS BOUND.
          t95 = t2.
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
          result = abap_true.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD is_generated_persistent_class.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zcl_lnt_class.
    t4 = t1.
    t4->parse_xml( ).
    DATA t9 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA t10 TYPE REF TO zcl_lnt_shape_e272b380.
    t10 = t4->parsed_xml.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t13) = xsdbool( t9 IS INITIAL ).
    IF t13 = abap_true.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t17 TYPE REF TO zcl_lnt_shape_e272b380.
      t17 = t9.
      t16 = t17->category.
      t12 = t16.
    ENDIF.
    t3 = t12.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t21) = |10|.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = t21.
    t19 = t22.
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
      result = abap_true.
      RETURN.
    ELSE.
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t29 TYPE REF TO zcl_lnt_class.
      t29 = t1.
      t29->parse_xml( ).
      DATA t34 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA t35 TYPE REF TO zcl_lnt_shape_e272b380.
      t35 = t29->parsed_xml.
      t34 = t35.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t38) = xsdbool( t34 IS INITIAL ).
      IF t38 = abap_true.
      ELSE.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t42 TYPE REF TO zcl_lnt_shape_e272b380.
        t42 = t34.
        t41 = t42->category.
        t37 = t41.
      ENDIF.
      t28 = t37.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t46) = |11|.
      DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t47->has = abap_true.
      t47->value = t46.
      t44 = t47.
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
        result = abap_true.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t52 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t54 TYPE REF TO zcl_lnt_class.
    t54 = t1.
    DATA t57 TYPE REF TO zif_lnt_abap_file_information.
    DATA t59 TYPE REF TO zcl_lnt_abap_file.
    DATA t60 TYPE REF TO zcl_lnt_abap_file.
    t60 = t54->get_main_abap_file( ).
    t59 = t60.
    DATA t62 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t63) = xsdbool( t59 IS INITIAL ).
    IF t63 = abap_true.
    ELSE.
      DATA t70 TYPE REF TO zif_lnt_abap_file_information.
      t70 = t59->info.
      t62 = t70.
    ENDIF.
    t57 = t62.
    DATA t72 TYPE REF TO zcl_lnt_info_class_definition.
    DATA(t73) = xsdbool( t57 IS INITIAL ).
    IF t73 = abap_true.
    ELSE.
      DATA t76 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t77 TYPE REF TO zif_lnt_abap_file_information.
      t77 = t57.
      DATA t79 TYPE string.
      DATA t80 TYPE REF TO zcl_lnt_abstract_object.
      t80 = t54.
      DATA t82 TYPE string.
      t82 = t80->name.
      t79 = t82.
      t76 = t77->get_class_definition_by_name( i_name = t79 ).
      t72 = t76.
    ENDIF.
    t52 = t72.
    DATA t84 TYPE abap_bool.
    t84 = xsdbool( t52 IS BOUND ).
    IF t84 = abap_true.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t88 TYPE REF TO zcl_lnt_info_class_definition.
      t88 = t52.
      t87 = t88->super_class_name.
      t86 = t87.
      DATA(t90) = VALUE abap_bool( ).
      IF t86 IS BOUND.
        IF t86->has = abap_true.
          t90 = xsdbool( strlen( t86->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t90 = abap_true.
        DATA t92 TYPE REF TO zif_lnt_object.
        DATA t93 TYPE REF TO zif_lnt_object.
        DATA(t94) = me->reg.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t97) = |CLAS|.
        DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t98->has = abap_true.
        t98->value = t97.
        t95 = t98.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t102 TYPE string.
        DATA t103 TYPE string.
        t103 = t86->value.
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
        t93 = t94->get_object( i_type_9913 = t95 i_name = t100 ).
        t92 = t93.
        DATA t108 TYPE abap_bool.
        DATA t109 TYPE abap_bool.
        t109 = xsdbool( t92 IS BOUND ).
        t108 = t109.
        IF t109 = abap_true.
          DATA(t111) = VALUE abap_bool( ).
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t113 TYPE REF TO zcl_lnt_class.
          DATA t114 TYPE REF TO zcl_lnt_class.
          DATA t115 TYPE REF TO zif_lnt_object.
          t115 = t92.
          t114 ?= t115.
          t113 = t114.
          t113->parse_xml( ).
          DATA t120 TYPE REF TO zcl_lnt_shape_e272b380.
          DATA t121 TYPE REF TO zcl_lnt_shape_e272b380.
          t121 = t113->parsed_xml.
          t120 = t121.
          DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t124) = xsdbool( t120 IS INITIAL ).
          IF t124 = abap_true.
          ELSE.
            DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t128 TYPE REF TO zcl_lnt_shape_e272b380.
            t128 = t120.
            t127 = t128->category.
            t123 = t127.
          ENDIF.
          t112 = t123.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t132) = |11|.
          DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t133->has = abap_true.
          t133->value = t132.
          t130 = t133.
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
          result = abap_true.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    result = abap_false.

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
