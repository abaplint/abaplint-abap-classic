* TS: src/cds/cds_determine_types.ts:6:1 CDSDetermineTypes
CLASS zcl_lnt_cds_determine_types DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_parsed_data TYPE REF TO zcl_lnt_parsed_data_definition i_ddls_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_determine_types IMPLEMENTATION.
  METHOD parse_type.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_parsed_data.
    DATA(t3) = i_ddls_name.
    DATA t4 TYPE REF TO zcl_lnt_ddic.
    DATA t5 TYPE REF TO zcl_lnt_ddic.
    DATA(t6) = t1.
    t5 = NEW zcl_lnt_ddic( i_reg_f149 = t6 ).
    t4 = t5.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA(t12) = t2.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t11.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t16.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = t11.
      t17 = t18->fields_464c.
      t13 = t17.
    ENDIF.
    t10 = t13.
    t9 = t10.
    DATA t19 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t9.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE f.
      DATA t24 TYPE i.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t26) = t9.
      t25 = t26.
      t25->load( ).
      t24 = lines( t25->items ).
      t23 = t24.
      DATA(t27) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t27->has = abap_true.
      t27->value = t23.
      t19 = t27.
    ENDIF.
    t8 = t19.
    DATA t28 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t28.
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA(t30) = CONV f( 0 ).
      DATA(t31) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t31->has = abap_true.
      t31->value = t30.
      t28 = t31.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t32.
      t28 = t32.
    ENDIF.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = VALUE abap_bool( ).
    IF t8 IS BOUND.
      t33 = t8->has.
    ENDIF.
    IF t28 IS BOUND.
      t34 = t28->has.
    ENDIF.
    IF t33 = t34.
      IF t33 = abap_false.
        t7 = abap_true.
      ELSE.
        IF t8->number_special <> 0 OR t28->number_special <> 0.
          t7 = xsdbool( t8->number_special = t28->number_special AND t8->number_special <> 1 ).
        ELSE.
          t7 = xsdbool( t8->value = t28->value ).
        ENDIF.
      ENDIF.
    ENDIF.
    IF t7 = abap_true.
      DATA t35 TYPE REF TO zcl_lnt_void_type.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA(t37) = abap_true.
      IF t37 = abap_true.
        DATA(t38) = |DDLS:todo|.
        DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t39->has = abap_true.
        t39->value = t38.
        t36 = t39.
      ELSE.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        t36 = t40.
      ENDIF.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      t35 = zcl_lnt_void_type=>get_db65( i_voided = t36 i_qualified_name = t41 ).
      result = t35.
      RETURN.
    ELSE.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t43.
      t42 = t43.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t44.
      DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t45.
      DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t46.
      DATA t47 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t48) = t2.
      t47 = t48.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t49.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = t47.
      IF t51 IS INITIAL.
        t50 = abap_true.
      ENDIF.
      IF t50 = abap_true.
        DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t52.
        t49 = t52.
      ELSE.
        DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t54) = t47.
        t53 = t54->fields_464c.
        t49 = t53.
      ENDIF.
      t46 = t49.
      t45 = t46.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t55.
      DATA t56 TYPE abap_bool.
      DATA(t57) = t45.
      t56 = xsdbool( t57 IS BOUND ).
      IF t56 = abap_true.
        DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t59) = t45.
        t58 = t59.
        t55 = t58.
      ELSE.
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t60.
        t55 = t60.
      ENDIF.
      t44 = t55.
      DATA t61 TYPE REF TO zcl_lnt_shape_5383185c.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      DATA(t63) = VALUE i( ).
      DO.
        t44->load( ).
        IF t63 >= lines( t44->items ).
          EXIT.
        ENDIF.
        CLEAR t62.
        READ TABLE t44->items INDEX t63 + 1 INTO t62.
        t63 = t63 + 1.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        CLEAR t61.
        IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t64 ?= t62.
          DATA t65 TYPE REF TO object.
          t65 = t64->as_ref( ).
          t61 ?= t65.
        ELSE.
          t61 ?= t62.
        ENDIF.
        DATA t66 TYPE abap_bool.
        DATA t67 TYPE string.
        DATA(t68) = t61.
        t67 = t68->prefix.
        DATA(t69) = ||.
        t66 = xsdbool( t67 <> t69 ).
        IF t66 = abap_true.
          DATA(t70) = VALUE string( ).
          DATA t71 TYPE string.
          DATA t72 TYPE string.
          DATA(t73) = t61.
          t72 = t73->prefix.
          DATA(t74) = strlen( t72 ).
          t71 = t72.
          IF t71 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t71 TO UPPER CASE.
          ELSE.
            t71 = zlnt_runtime_uppe_91169605024d=>full( t71 ).
          ENDIF.
          t70 = t71.
          DATA t75 TYPE REF TO zcl_lnt_shape_35310764.
          CLEAR t75.
          DATA t76 TYPE REF TO zcl_lnt_shape_35310764.
          CLEAR t76.
          DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t79) = t2.
          t78 = t79->sources.
          t77 = t78.
          DATA t80 TYPE i.
          DATA t81 TYPE i.
          DATA(t82) = t77.
          t82->load( ).
          t81 = lines( t82->items ).
          t80 = t81.
          DATA t83 TYPE i.
          DATA(t84) = 0.
          t83 = t84.
          DATA t85 TYPE REF TO zcl_lnt_shape_35310764.
          DATA t86 TYPE REF TO zcl_lnt_shape_35310764.
          CLEAR t86.
          t85 = t86.
          DO.
            DATA t87 TYPE abap_bool.
            DATA(t88) = t83.
            DATA(t89) = t80.
            t87 = xsdbool( t88 < t89 ).
            IF t87 = abap_false.
              EXIT.
            ENDIF.
            DATA t90 TYPE REF TO zcl_lnt_shape_35310764.
            CLEAR t90.
            DATA t91 TYPE REF TO zcl_lnt_shape_35310764.
            CLEAR t91.
            DATA t92 TYPE REF TO zcl_lnt_shape_35310764.
            CLEAR t92.
            DATA(t93) = t77.
            DATA(t94) = t83.
            DATA t95 TYPE REF TO object.
            t95 = t93->get( p0 = t94 ).
            DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t96.
            CLEAR t92.
            IF t95 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t96 ?= t95.
              DATA t97 TYPE REF TO object.
              t97 = t96->as_ref( ).
              t92 ?= t97.
            ELSE.
              t92 ?= t95.
            ENDIF.
            t91 = t92.
            t90 = t91.
            DATA(t98) = VALUE abap_bool( ).
            DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t99.
            DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t102) = t90.
            t101 = t102->as.
            t100 = t101.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t103.
            DATA(t104) = VALUE abap_bool( ).
            DATA(t105) = t100.
            IF t105 IS INITIAL.
              t104 = abap_true.
            ELSEIF t105->has = abap_false.
              t104 = abap_true.
            ENDIF.
            IF t104 = abap_true.
              DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t106.
              t103 = t106.
            ELSE.
              DATA t107 TYPE string.
              DATA t108 TYPE string.
              DATA(t109) = t100.
              t108 = t109->value.
              DATA(t110) = strlen( t108 ).
              t107 = t108.
              IF t107 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t107 TO UPPER CASE.
              ELSE.
                t107 = zlnt_runtime_uppe_91169605024d=>full( t107 ).
              ENDIF.
              DATA(t111) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t111->has = abap_true.
              t111->value = t107.
              t103 = t111.
            ENDIF.
            t99 = t103.
            DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t112.
            DATA(t113) = abap_true.
            IF t113 = abap_true.
              DATA(t114) = t70.
              DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t115->has = abap_true.
              t115->value = t114.
              t112 = t115.
            ELSE.
              DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t116.
              t112 = t116.
            ENDIF.
            DATA(t117) = VALUE abap_bool( ).
            DATA(t118) = VALUE abap_bool( ).
            IF t99 IS BOUND.
              t117 = t99->has.
            ENDIF.
            IF t112 IS BOUND.
              t118 = t112->has.
            ENDIF.
            IF t117 = t118.
              IF t117 = abap_false.
                t98 = abap_true.
              ELSEIF t99->value = t112->value.
                t98 = abap_true.
              ENDIF.
            ENDIF.
            IF t98 = abap_true.
              DATA t119 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t119.
              DATA(t120) = abap_true.
              IF t120 = abap_true.
                DATA(t121) = t90.
                t119 = t121.
              ELSE.
                DATA t122 TYPE REF TO zcl_lnt_shape_35310764.
                CLEAR t122.
                t119 = t122.
              ENDIF.
              t85 = t119.
              EXIT.
            ENDIF.
            DATA t123 TYPE i.
            DATA(t124) = t83.
            DATA(t125) = 1.
            t123 = t124 + t125.
            t83 = t123.
          ENDDO.
          DATA(t126) = t85.
          t76 = t126.
          t75 = t76.
          DATA(t127) = VALUE abap_bool( ).
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t128.
          DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t129.
          DATA t130 TYPE REF TO zcl_lnt_shape_35310764.
          DATA(t131) = t75.
          t130 = t131.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          DATA(t133) = VALUE abap_bool( ).
          DATA(t134) = t130.
          IF t134 IS INITIAL.
            t133 = abap_true.
          ENDIF.
          IF t133 = abap_true.
            DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t135.
            t132 = t135.
          ELSE.
            DATA t136 TYPE string.
            DATA t137 TYPE REF TO zcl_lnt_shape_35310764.
            DATA(t138) = t130.
            t137 = t138.
            t136 = t137->name.
            DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t139->has = abap_true.
            t139->value = t136.
            t132 = t139.
          ENDIF.
          t129 = t132.
          t128 = t129.
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          t140 = t141.
          DATA(t142) = VALUE abap_bool( ).
          DATA(t143) = t128.
          IF t143 IS INITIAL.
            t142 = abap_true.
          ELSEIF t143->has = abap_false.
            t142 = abap_true.
          ENDIF.
          t127 = t142.
          IF t127 = abap_true.
            DATA t144 TYPE REF TO zcl_lnt_shape_35310764.
            CLEAR t144.
            DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t147) = t2.
            t146 = t147->sources.
            t145 = t146.
            DATA t148 TYPE i.
            DATA t149 TYPE i.
            DATA(t150) = t145.
            t150->load( ).
            t149 = lines( t150->items ).
            t148 = t149.
            DATA t151 TYPE i.
            DATA(t152) = 0.
            t151 = t152.
            DATA t153 TYPE REF TO zcl_lnt_shape_35310764.
            DATA t154 TYPE REF TO zcl_lnt_shape_35310764.
            CLEAR t154.
            t153 = t154.
            DO.
              DATA t155 TYPE abap_bool.
              DATA(t156) = t151.
              DATA(t157) = t148.
              t155 = xsdbool( t156 < t157 ).
              IF t155 = abap_false.
                EXIT.
              ENDIF.
              DATA t158 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t158.
              DATA t159 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t159.
              DATA t160 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t160.
              DATA(t161) = t145.
              DATA(t162) = t151.
              DATA t163 TYPE REF TO object.
              t163 = t161->get( p0 = t162 ).
              DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t164.
              CLEAR t160.
              IF t163 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t164 ?= t163.
                DATA t165 TYPE REF TO object.
                t165 = t164->as_ref( ).
                t160 ?= t165.
              ELSE.
                t160 ?= t163.
              ENDIF.
              t159 = t160.
              t158 = t159.
              DATA(t166) = VALUE abap_bool( ).
              DATA t167 TYPE string.
              DATA t168 TYPE string.
              DATA(t169) = t158.
              t168 = t169->name.
              DATA(t170) = strlen( t168 ).
              t167 = t168.
              IF t167 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t167 TO UPPER CASE.
              ELSE.
                t167 = zlnt_runtime_uppe_91169605024d=>full( t167 ).
              ENDIF.
              DATA(t171) = t70.
              t166 = xsdbool( t167 = t171 ).
              IF t166 = abap_true.
                DATA t172 TYPE REF TO zcl_lnt_shape_35310764.
                CLEAR t172.
                DATA(t173) = abap_true.
                IF t173 = abap_true.
                  DATA(t174) = t158.
                  t172 = t174.
                ELSE.
                  DATA t175 TYPE REF TO zcl_lnt_shape_35310764.
                  CLEAR t175.
                  t172 = t175.
                ENDIF.
                t153 = t172.
                EXIT.
              ENDIF.
              DATA t176 TYPE i.
              DATA(t177) = t151.
              DATA(t178) = 1.
              t176 = t177 + t178.
              t151 = t176.
            ENDDO.
            DATA(t179) = t153.
            t144 = t179.
            t75 = t144.
          ENDIF.
          DATA(t180) = VALUE abap_bool( ).
          DATA(t181) = VALUE abap_bool( ).
          DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t182.
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t183.
          DATA t184 TYPE REF TO zcl_lnt_shape_35310764.
          DATA(t185) = t75.
          t184 = t185.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t186.
          DATA(t187) = VALUE abap_bool( ).
          DATA(t188) = t184.
          IF t188 IS INITIAL.
            t187 = abap_true.
          ENDIF.
          IF t187 = abap_true.
            DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t189.
            t186 = t189.
          ELSE.
            DATA t190 TYPE string.
            DATA t191 TYPE REF TO zcl_lnt_shape_35310764.
            DATA(t192) = t184.
            t191 = t192.
            t190 = t191->name.
            DATA(t193) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t193->has = abap_true.
            t193->value = t190.
            t186 = t193.
          ENDIF.
          t183 = t186.
          t182 = t183.
          DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t195.
          t194 = t195.
          DATA(t196) = VALUE abap_bool( ).
          DATA(t197) = t182.
          IF t197 IS INITIAL.
            t196 = abap_true.
          ELSEIF t197->has = abap_false.
            t196 = abap_true.
          ENDIF.
          t181 = t196.
          t180 = t181.
          IF t181 = abap_true.
            DATA(t198) = VALUE abap_bool( ).
            DATA(t199) = VALUE abap_bool( ).
            DATA t200 TYPE REF TO zcl_lnt_shape_35310764.
            CLEAR t200.
            DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t203) = t2.
            t202 = t203->associations.
            t201 = t202.
            DATA t204 TYPE i.
            DATA t205 TYPE i.
            DATA(t206) = t201.
            t206->load( ).
            t205 = lines( t206->items ).
            t204 = t205.
            DATA t207 TYPE i.
            DATA(t208) = 0.
            t207 = t208.
            DATA t209 TYPE REF TO zcl_lnt_shape_35310764.
            DATA t210 TYPE REF TO zcl_lnt_shape_35310764.
            CLEAR t210.
            t209 = t210.
            DO.
              DATA t211 TYPE abap_bool.
              DATA(t212) = t207.
              DATA(t213) = t204.
              t211 = xsdbool( t212 < t213 ).
              IF t211 = abap_false.
                EXIT.
              ENDIF.
              DATA t214 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t214.
              DATA t215 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t215.
              DATA t216 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t216.
              DATA(t217) = t201.
              DATA(t218) = t207.
              DATA t219 TYPE REF TO object.
              t219 = t217->get( p0 = t218 ).
              DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t220.
              CLEAR t216.
              IF t219 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t220 ?= t219.
                DATA t221 TYPE REF TO object.
                t221 = t220->as_ref( ).
                t216 ?= t221.
              ELSE.
                t216 ?= t219.
              ENDIF.
              t215 = t216.
              t214 = t215.
              DATA(t222) = VALUE abap_bool( ).
              DATA t223 TYPE string.
              DATA t224 TYPE string.
              DATA(t225) = t214.
              t224 = t225->name.
              DATA(t226) = strlen( t224 ).
              t223 = t224.
              IF t223 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t223 TO UPPER CASE.
              ELSE.
                t223 = zlnt_runtime_uppe_91169605024d=>full( t223 ).
              ENDIF.
              DATA(t227) = t70.
              t222 = xsdbool( t223 = t227 ).
              IF t222 = abap_true.
                DATA t228 TYPE REF TO zcl_lnt_shape_35310764.
                CLEAR t228.
                DATA(t229) = abap_true.
                IF t229 = abap_true.
                  DATA(t230) = t214.
                  t228 = t230.
                ELSE.
                  DATA t231 TYPE REF TO zcl_lnt_shape_35310764.
                  CLEAR t231.
                  t228 = t231.
                ENDIF.
                t209 = t228.
                EXIT.
              ENDIF.
              DATA t232 TYPE i.
              DATA(t233) = t207.
              DATA(t234) = 1.
              t232 = t233 + t234.
              t207 = t232.
            ENDDO.
            DATA(t235) = t209.
            t200 = t235.
            t199 = xsdbool( t200 IS BOUND ).
            t198 = t199.
            IF t199 = abap_false.
              DATA(t236) = VALUE abap_bool( ).
              DATA t237 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t237.
              DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t240) = t2.
              t239 = t240->associations.
              t238 = t239.
              DATA t241 TYPE i.
              DATA t242 TYPE i.
              DATA(t243) = t238.
              t243->load( ).
              t242 = lines( t243->items ).
              t241 = t242.
              DATA t244 TYPE i.
              DATA(t245) = 0.
              t244 = t245.
              DATA t246 TYPE REF TO zcl_lnt_shape_35310764.
              DATA t247 TYPE REF TO zcl_lnt_shape_35310764.
              CLEAR t247.
              t246 = t247.
              DO.
                DATA t248 TYPE abap_bool.
                DATA(t249) = t244.
                DATA(t250) = t241.
                t248 = xsdbool( t249 < t250 ).
                IF t248 = abap_false.
                  EXIT.
                ENDIF.
                DATA t251 TYPE REF TO zcl_lnt_shape_35310764.
                CLEAR t251.
                DATA t252 TYPE REF TO zcl_lnt_shape_35310764.
                CLEAR t252.
                DATA t253 TYPE REF TO zcl_lnt_shape_35310764.
                CLEAR t253.
                DATA(t254) = t238.
                DATA(t255) = t244.
                DATA t256 TYPE REF TO object.
                t256 = t254->get( p0 = t255 ).
                DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t257.
                CLEAR t253.
                IF t256 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t257 ?= t256.
                  DATA t258 TYPE REF TO object.
                  t258 = t257->as_ref( ).
                  t253 ?= t258.
                ELSE.
                  t253 ?= t256.
                ENDIF.
                t252 = t253.
                t251 = t252.
                DATA(t259) = VALUE abap_bool( ).
                DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t260.
                DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t263) = t251.
                t262 = t263->as.
                t261 = t262.
                DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t264.
                DATA(t265) = VALUE abap_bool( ).
                DATA(t266) = t261.
                IF t266 IS INITIAL.
                  t265 = abap_true.
                ELSEIF t266->has = abap_false.
                  t265 = abap_true.
                ENDIF.
                IF t265 = abap_true.
                  DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t267.
                  t264 = t267.
                ELSE.
                  DATA t268 TYPE string.
                  DATA t269 TYPE string.
                  DATA(t270) = t261.
                  t269 = t270->value.
                  DATA(t271) = strlen( t269 ).
                  t268 = t269.
                  IF t268 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                    TRANSLATE t268 TO UPPER CASE.
                  ELSE.
                    t268 = zlnt_runtime_uppe_91169605024d=>full( t268 ).
                  ENDIF.
                  DATA(t272) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t272->has = abap_true.
                  t272->value = t268.
                  t264 = t272.
                ENDIF.
                t260 = t264.
                DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t273.
                DATA(t274) = abap_true.
                IF t274 = abap_true.
                  DATA(t275) = t70.
                  DATA(t276) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t276->has = abap_true.
                  t276->value = t275.
                  t273 = t276.
                ELSE.
                  DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t277.
                  t273 = t277.
                ENDIF.
                DATA(t278) = VALUE abap_bool( ).
                DATA(t279) = VALUE abap_bool( ).
                IF t260 IS BOUND.
                  t278 = t260->has.
                ENDIF.
                IF t273 IS BOUND.
                  t279 = t273->has.
                ENDIF.
                IF t278 = t279.
                  IF t278 = abap_false.
                    t259 = abap_true.
                  ELSEIF t260->value = t273->value.
                    t259 = abap_true.
                  ENDIF.
                ENDIF.
                IF t259 = abap_true.
                  DATA t280 TYPE REF TO zcl_lnt_shape_35310764.
                  CLEAR t280.
                  DATA(t281) = abap_true.
                  IF t281 = abap_true.
                    DATA(t282) = t251.
                    t280 = t282.
                  ELSE.
                    DATA t283 TYPE REF TO zcl_lnt_shape_35310764.
                    CLEAR t283.
                    t280 = t283.
                  ENDIF.
                  t246 = t280.
                  EXIT.
                ENDIF.
                DATA t284 TYPE i.
                DATA(t285) = t244.
                DATA(t286) = 1.
                t284 = t285 + t286.
                t244 = t284.
              ENDDO.
              DATA(t287) = t246.
              t237 = t287.
              t236 = xsdbool( t237 IS BOUND ).
              t198 = t236.
            ENDIF.
            t180 = t198.
          ENDIF.
          IF t180 = abap_true.
            DATA(t288) = t42.
            DATA t289 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t289.
            DATA t290 TYPE string.
            DATA t291 TYPE string.
            DATA(t292) = t61.
            t291 = t292->name.
            t290 = t291.
            DATA t293 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t293.
            DATA t294 TYPE REF TO zcl_lnt_void_type.
            CLEAR t294.
            DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t295.
            DATA(t296) = abap_true.
            IF t296 = abap_true.
              DATA(t297) = |DDLS:association|.
              DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t298->has = abap_true.
              t298->value = t297.
              t295 = t298.
            ELSE.
              DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t299.
              t295 = t299.
            ENDIF.
            DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t300.
            t294 = zcl_lnt_void_type=>get_db65( i_voided = t295 i_qualified_name = t300 ).
            t293 = t294.
            DATA t301 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t302 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t302.
            t301 = t302.
            DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t304.
            t303 = t304.
            t289 = NEW zcl_lnt_istructure_component( i_name = t290 i_type_9913 = t293 i_as_include = t301 i_suffix = t303 ).
            CREATE OBJECT t289->zlnt_view_ownkeys_b0e8086400eb.
            t289->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t305.
            IF t289->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t289->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t305 ).
            ENDIF.
            DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t306.
            IF t289->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t289->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t306 ).
            ENDIF.
            CREATE OBJECT t289->zlnt_json_ownkeys_70e5fd461788.
            t289->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t307) = |name|.
            DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t308.
            IF t289->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t289->zlnt_json_ownkeys_70e5fd461788->put( p0 = t307 p1 = t308 ).
            ENDIF.
            DATA(t309) = |type|.
            DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t310.
            IF t289->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t289->zlnt_json_ownkeys_70e5fd461788->put( p0 = t309 p1 = t310 ).
            ENDIF.
            t288->load( ).
            APPEND t289 TO t288->items.
            t288->save( ).
            CONTINUE.
          ENDIF.
          DATA(t311) = VALUE abap_bool( ).
          DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t312.
          DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t313.
          DATA t314 TYPE REF TO zcl_lnt_shape_35310764.
          DATA(t315) = t75.
          t314 = t315.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t316.
          DATA(t317) = VALUE abap_bool( ).
          DATA(t318) = t314.
          IF t318 IS INITIAL.
            t317 = abap_true.
          ENDIF.
          IF t317 = abap_true.
            DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t319.
            t316 = t319.
          ELSE.
            DATA t320 TYPE string.
            DATA t321 TYPE REF TO zcl_lnt_shape_35310764.
            DATA(t322) = t314.
            t321 = t322.
            t320 = t321->name.
            DATA(t323) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t323->has = abap_true.
            t323->value = t320.
            t316 = t323.
          ENDIF.
          t313 = t316.
          t312 = t313.
          DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t325.
          t324 = t325.
          DATA(t326) = VALUE abap_bool( ).
          DATA(t327) = t312.
          IF t327 IS INITIAL.
            t326 = abap_true.
          ELSEIF t327->has = abap_false.
            t326 = abap_true.
          ENDIF.
          t311 = t326.
          IF t311 = abap_true.
            DATA(t328) = VALUE abap_bool( ).
            DATA(t329) = t70.
            DATA(t330) = |_|.
            DATA(t331) = strlen( t329 ).
            DATA t332 TYPE i.
            DATA(t333) = VALUE i( ).
            DATA(t334) = VALUE string( ).
            t332 = strlen( t330 ).
            IF t332 = 0.
              t328 = abap_true.
            ELSEIF t332 <= t331.
              t333 = 0.
              t334 = t329+t333(t332).
              IF t334 = t330.
                t328 = abap_true.
              ENDIF.
            ENDIF.
            IF t328 = abap_true.
              DATA(t335) = t42.
              DATA t336 TYPE REF TO zcl_lnt_istructure_component.
              CLEAR t336.
              DATA t337 TYPE string.
              DATA t338 TYPE string.
              DATA(t339) = t61.
              t338 = t339->name.
              t337 = t338.
              DATA t340 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t340.
              DATA t341 TYPE REF TO zcl_lnt_void_type.
              CLEAR t341.
              DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t342.
              DATA(t343) = abap_true.
              IF t343 = abap_true.
                DATA(t344) = |DDLS:association|.
                DATA(t345) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t345->has = abap_true.
                t345->value = t344.
                t342 = t345.
              ELSE.
                DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t346.
                t342 = t346.
              ENDIF.
              DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t347.
              t341 = zcl_lnt_void_type=>get_db65( i_voided = t342 i_qualified_name = t347 ).
              t340 = t341.
              DATA t348 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t349 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t349.
              t348 = t349.
              DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t351.
              t350 = t351.
              t336 = NEW zcl_lnt_istructure_component( i_name = t337 i_type_9913 = t340 i_as_include = t348 i_suffix = t350 ).
              CREATE OBJECT t336->zlnt_view_ownkeys_b0e8086400eb.
              t336->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t352.
              IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t352 ).
              ENDIF.
              DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t353.
              IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t353 ).
              ENDIF.
              CREATE OBJECT t336->zlnt_json_ownkeys_70e5fd461788.
              t336->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t354) = |name|.
              DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t355.
              IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t354 p1 = t355 ).
              ENDIF.
              DATA(t356) = |type|.
              DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t357.
              IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
              ENDIF.
              t335->load( ).
              APPEND t336 TO t335->items.
              t335->save( ).
              CONTINUE.
            ENDIF.
            DATA(t358) = t42.
            DATA t359 TYPE REF TO zcl_lnt_istructure_component.
            DATA t360 TYPE string.
            DATA t361 TYPE string.
            DATA(t362) = t61.
            t361 = t362->name.
            t360 = t361.
            DATA t363 TYPE REF TO zcl_lnt_abstract_type.
            DATA t364 TYPE REF TO zcl_lnt_unknown_type.
            DATA t365 TYPE string.
            DATA t366 TYPE string.
            DATA t367 TYPE string.
            DATA(t368) = |CDS parser error, unknown source, |.
            DATA t369 TYPE string.
            DATA(t370) = t61.
            t369 = t370->name.
            DATA(t371) = strlen( t368 ).
            t367 = |{ t368 }{ t369 }|.
            DATA(t372) = |, |.
            DATA(t373) = strlen( t367 ).
            t366 = |{ t367 }{ t372 }|.
            DATA(t374) = t3.
            DATA(t375) = strlen( t366 ).
            t365 = |{ t366 }{ t374 }|.
            DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t376.
            t364 = NEW zcl_lnt_unknown_type( i_error = t365 i_qualified_name = t376 ).
            t363 = t364.
            DATA t377 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t378 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t378.
            t377 = t378.
            DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t380.
            t379 = t380.
            t359 = NEW zcl_lnt_istructure_component( i_name = t360 i_type_9913 = t363 i_as_include = t377 i_suffix = t379 ).
            CREATE OBJECT t359->zlnt_view_ownkeys_b0e8086400eb.
            t359->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t381.
            IF t359->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t359->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t381 ).
            ENDIF.
            DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t382.
            IF t359->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t359->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t382 ).
            ENDIF.
            CREATE OBJECT t359->zlnt_json_ownkeys_70e5fd461788.
            t359->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t383) = |name|.
            DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t384.
            IF t359->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t359->zlnt_json_ownkeys_70e5fd461788->put( p0 = t383 p1 = t384 ).
            ENDIF.
            DATA(t385) = |type|.
            DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t386.
            IF t359->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t359->zlnt_json_ownkeys_70e5fd461788->put( p0 = t385 p1 = t386 ).
            ENDIF.
            t358->load( ).
            APPEND t359 TO t358->items.
            t358->save( ).
            CONTINUE.
          ENDIF.
          DATA(t387) = VALUE string( ).
          DATA(t388) = VALUE string( ).
          DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t391) = t61.
          t390 = t391->name_in_source.
          t389 = t390.
          DATA(t392) = VALUE string( ).
          DATA(t393) = VALUE abap_bool( ).
          DATA(t394) = t389.
          IF t394 IS INITIAL.
            t393 = abap_true.
          ELSEIF t394->has = abap_false.
            t393 = abap_true.
          ENDIF.
          IF t393 = abap_true.
            DATA t395 TYPE string.
            DATA(t396) = t61.
            t395 = t396->name.
            t392 = t395.
          ELSE.
            DATA t397 TYPE string.
            DATA(t398) = t389.
            t397 = t398->value.
            t392 = t397.
          ENDIF.
          t388 = t392.
          t387 = t388.
          DATA t399 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t399.
          DATA t400 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t400.
          DATA t401 TYPE REF TO zcl_lnt_ddic.
          DATA(t402) = t4.
          t401 = t402.
          DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t403.
          DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t404.
          DATA(t405) = abap_true.
          IF t405 = abap_true.
            DATA t406 TYPE string.
            DATA t407 TYPE REF TO zcl_lnt_shape_35310764.
            DATA(t408) = t75.
            t407 = t408.
            t406 = t407->name.
            DATA(t409) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t409->has = abap_true.
            t409->value = t406.
            t404 = t409.
          ELSE.
            DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t410.
            t404 = t410.
          ENDIF.
          t403 = t404.
          DATA t411 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t411.
          DATA(t412) = VALUE abap_bool( ).
          DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t414) = t403.
          t413 = t414.
          DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t416.
          t415 = t416.
          DATA(t417) = VALUE abap_bool( ).
          DATA(t418) = t413.
          IF t418 IS INITIAL.
            t417 = abap_true.
          ELSEIF t418->has = abap_false.
            t417 = abap_true.
          ENDIF.
          t412 = t417.
          IF t412 = abap_true.
            DATA t419 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t420 TYPE REF TO zcl_lnt_abstract_type.
            DATA t421 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t422) = |undefined, lookupTableOrView|.
            DATA t423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t423.
            t421 = NEW zcl_lnt_unknown_type( i_error = t422 i_qualified_name = t423 ).
            t420 = t421.
            DATA t424 TYPE REF TO zif_lnt_object.
            DATA t425 TYPE REF TO zif_lnt_object.
            CLEAR t425.
            t424 = t425.
            t419 = NEW zcl_lnt_ilookup_result( i_type_9913 = t420 i_object_19cd = t424 ).
            CREATE OBJECT t419->zlnt_view_ownkeys_b0e8086400eb.
            t419->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t426.
            IF t419->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t419->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t426 ).
            ENDIF.
            CREATE OBJECT t419->zlnt_json_ownkeys_70e5fd461788.
            t419->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t427) = |type|.
            DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t428.
            IF t419->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t419->zlnt_json_ownkeys_70e5fd461788->put( p0 = t427 p1 = t428 ).
            ENDIF.
            t411 = t419.
          ELSE.
            DATA t429 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t429.
            DATA t430 TYPE REF TO zcl_lnt_table.
            CLEAR t430.
            DATA t431 TYPE REF TO zcl_lnt_table.
            CLEAR t431.
            DATA t432 TYPE REF TO zif_lnt_object.
            CLEAR t432.
            DATA t433 TYPE REF TO zif_lnt_registry.
            DATA(t434) = t401.
            t433 = t434->reg.
            DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t435.
            DATA(t436) = abap_true.
            IF t436 = abap_true.
              DATA(t437) = |TABL|.
              DATA(t438) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t438->has = abap_true.
              t438->value = t437.
              t435 = t438.
            ELSE.
              DATA t439 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t439.
              t435 = t439.
            ENDIF.
            DATA t440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t440.
            DATA(t441) = abap_true.
            IF t441 = abap_true.
              DATA t442 TYPE string.
              DATA(t443) = t403.
              t442 = t443->value.
              DATA(t444) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t444->has = abap_true.
              t444->value = t442.
              t440 = t444.
            ELSE.
              DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t445.
              t440 = t445.
            ENDIF.
            t432 = t433->get_object( i_type_9913 = t435 i_name = t440 ).
            DATA t446 TYPE REF TO object.
            t446 = t432.
            t431 ?= t446.
            t430 = t431.
            DATA t447 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t447.
            DATA t448 TYPE abap_bool.
            DATA(t449) = t430.
            t448 = xsdbool( t449 IS BOUND ).
            IF t448 = abap_true.
              DATA t450 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t451 TYPE REF TO zcl_lnt_abstract_type.
              DATA t452 TYPE REF TO zcl_lnt_abstract_type.
              DATA t453 TYPE REF TO zcl_lnt_table.
              DATA(t454) = t430.
              t453 = t454.
              DATA t455 TYPE REF TO zif_lnt_registry.
              DATA(t456) = t401.
              t455 = t456->reg.
              DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t457.
              DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t458.
              t452 = t453->parse_type( i_reg_f149 = t455 i_data_element = t457 i_description = t458 ).
              t451 = t452.
              DATA t459 TYPE REF TO zif_lnt_object.
              DATA t460 TYPE REF TO zcl_lnt_table.
              DATA(t461) = t430.
              t460 = t461.
              t459 = t460.
              t450 = NEW zcl_lnt_ilookup_result( i_type_9913 = t451 i_object_19cd = t459 ).
              CREATE OBJECT t450->zlnt_view_ownkeys_b0e8086400eb.
              t450->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t462.
              IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t462 ).
              ENDIF.
              DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t463.
              IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t463 ).
              ENDIF.
              CREATE OBJECT t450->zlnt_json_ownkeys_70e5fd461788.
              t450->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t464) = |type|.
              DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t465.
              IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t464 p1 = t465 ).
              ENDIF.
              DATA(t466) = |object|.
              DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t467.
              IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t466 p1 = t467 ).
              ENDIF.
              t447 = t450.
            ELSE.
              DATA t468 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t468.
              DATA t469 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t469.
              DATA t470 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t470.
              DATA(t471) = t401.
              DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t472.
              DATA(t473) = abap_true.
              IF t473 = abap_true.
                DATA t474 TYPE string.
                DATA(t475) = t403.
                t474 = t475->value.
                DATA(t476) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t476->has = abap_true.
                t476->value = t474.
                t472 = t476.
              ELSE.
                DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t477.
                t472 = t477.
              ENDIF.
              t470 = t471->lookup_ddls( i_name = t472 ).
              t469 = t470.
              DATA t478 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t478.
              DATA t479 TYPE abap_bool.
              DATA(t480) = t469.
              t479 = xsdbool( t480 IS BOUND ).
              IF t479 = abap_true.
                DATA t481 TYPE REF TO zcl_lnt_ilookup_result.
                DATA(t482) = t469.
                t481 = t482.
                t478 = t481.
              ELSE.
                DATA t483 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t483.
                DATA t484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t484.
                DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t485.
                DATA(t486) = abap_true.
                IF t486 = abap_true.
                  DATA t487 TYPE string.
                  DATA(t488) = t403.
                  t487 = t488->value.
                  DATA(t489) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t489->has = abap_true.
                  t489->value = t487.
                  t485 = t489.
                ELSE.
                  DATA t490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t490.
                  t485 = t490.
                ENDIF.
                t484 = t485.
                DATA t491 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t491.
                DATA(t492) = VALUE abap_bool( ).
                DATA t493 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t494) = t484.
                t493 = t494.
                DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t496.
                t495 = t496.
                DATA(t497) = VALUE abap_bool( ).
                DATA(t498) = t493.
                IF t498 IS INITIAL.
                  t497 = abap_true.
                ELSEIF t498->has = abap_false.
                  t497 = abap_true.
                ENDIF.
                t492 = t497.
                IF t492 = abap_true.
                  DATA t499 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t500 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t501 TYPE REF TO zcl_lnt_unknown_type.
                  DATA(t502) = |undefined, lookupView|.
                  DATA t503 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t503.
                  t501 = NEW zcl_lnt_unknown_type( i_error = t502 i_qualified_name = t503 ).
                  t500 = t501.
                  DATA t504 TYPE REF TO zif_lnt_object.
                  DATA t505 TYPE REF TO zif_lnt_object.
                  CLEAR t505.
                  t504 = t505.
                  t499 = NEW zcl_lnt_ilookup_result( i_type_9913 = t500 i_object_19cd = t504 ).
                  CREATE OBJECT t499->zlnt_view_ownkeys_b0e8086400eb.
                  t499->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t506.
                  IF t499->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t499->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t506 ).
                  ENDIF.
                  CREATE OBJECT t499->zlnt_json_ownkeys_70e5fd461788.
                  t499->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t507) = |type|.
                  DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t508.
                  IF t499->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t499->zlnt_json_ownkeys_70e5fd461788->put( p0 = t507 p1 = t508 ).
                  ENDIF.
                  t491 = t499.
                ELSE.
                  DATA t509 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t509.
                  DATA t510 TYPE REF TO zcl_lnt_table.
                  CLEAR t510.
                  DATA t511 TYPE REF TO zcl_lnt_table.
                  CLEAR t511.
                  DATA t512 TYPE REF TO zif_lnt_object.
                  CLEAR t512.
                  DATA t513 TYPE REF TO zif_lnt_registry.
                  DATA(t514) = t401.
                  t513 = t514->reg.
                  DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t515.
                  DATA(t516) = abap_true.
                  IF t516 = abap_true.
                    DATA(t517) = |VIEW|.
                    DATA(t518) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t518->has = abap_true.
                    t518->value = t517.
                    t515 = t518.
                  ELSE.
                    DATA t519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t519.
                    t515 = t519.
                  ENDIF.
                  DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t520.
                  DATA(t521) = abap_true.
                  IF t521 = abap_true.
                    DATA t522 TYPE string.
                    DATA(t523) = t484.
                    t522 = t523->value.
                    DATA(t524) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t524->has = abap_true.
                    t524->value = t522.
                    t520 = t524.
                  ELSE.
                    DATA t525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t525.
                    t520 = t525.
                  ENDIF.
                  t512 = t513->get_object( i_type_9913 = t515 i_name = t520 ).
                  DATA t526 TYPE REF TO object.
                  t526 = t512.
                  t511 ?= t526.
                  t510 = t511.
                  DATA t527 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t527.
                  DATA t528 TYPE abap_bool.
                  DATA(t529) = t510.
                  t528 = xsdbool( t529 IS BOUND ).
                  IF t528 = abap_true.
                    DATA t530 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t531 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t532 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t533 TYPE REF TO zcl_lnt_table.
                    DATA(t534) = t510.
                    t533 = t534.
                    DATA t535 TYPE REF TO zif_lnt_registry.
                    DATA(t536) = t401.
                    t535 = t536->reg.
                    DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t537.
                    DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t538.
                    t532 = t533->parse_type( i_reg_f149 = t535 i_data_element = t537 i_description = t538 ).
                    t531 = t532.
                    DATA t539 TYPE REF TO zif_lnt_object.
                    DATA t540 TYPE REF TO zcl_lnt_table.
                    DATA(t541) = t510.
                    t540 = t541.
                    t539 = t540.
                    t530 = NEW zcl_lnt_ilookup_result( i_type_9913 = t531 i_object_19cd = t539 ).
                    CREATE OBJECT t530->zlnt_view_ownkeys_b0e8086400eb.
                    t530->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t542.
                    IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t542 ).
                    ENDIF.
                    DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t543.
                    IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t543 ).
                    ENDIF.
                    CREATE OBJECT t530->zlnt_json_ownkeys_70e5fd461788.
                    t530->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t544) = |type|.
                    DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t545.
                    IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t544 p1 = t545 ).
                    ENDIF.
                    DATA(t546) = |object|.
                    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t547.
                    IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t546 p1 = t547 ).
                    ENDIF.
                    t527 = t530.
                  ELSE.
                    DATA t548 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t548.
                    DATA t549 TYPE abap_bool.
                    DATA t550 TYPE REF TO zif_lnt_registry.
                    DATA(t551) = t401.
                    t550 = t551->reg.
                    DATA t552 TYPE string.
                    DATA(t553) = t484.
                    t552 = t553->value.
                    t549 = t550->in_error_namespace( i_name = t552 ).
                    IF t549 = abap_true.
                      DATA t554 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t555 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t556 TYPE REF TO zcl_lnt_unknown_type.
                      DATA t557 TYPE string.
                      DATA t558 TYPE string.
                      DATA(t559) = t484.
                      t558 = t559->value.
                      DATA(t560) = | not found, lookupView|.
                      DATA(t561) = strlen( t558 ).
                      t557 = |{ t558 }{ t560 }|.
                      DATA t562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t562.
                      t556 = NEW zcl_lnt_unknown_type( i_error = t557 i_qualified_name = t562 ).
                      t555 = t556.
                      DATA t563 TYPE REF TO zif_lnt_object.
                      DATA t564 TYPE REF TO zif_lnt_object.
                      CLEAR t564.
                      t563 = t564.
                      t554 = NEW zcl_lnt_ilookup_result( i_type_9913 = t555 i_object_19cd = t563 ).
                      CREATE OBJECT t554->zlnt_view_ownkeys_b0e8086400eb.
                      t554->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t565.
                      IF t554->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t554->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t565 ).
                      ENDIF.
                      CREATE OBJECT t554->zlnt_json_ownkeys_70e5fd461788.
                      t554->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t566) = |type|.
                      DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t567.
                      IF t554->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t554->zlnt_json_ownkeys_70e5fd461788->put( p0 = t566 p1 = t567 ).
                      ENDIF.
                      t548 = t554.
                    ELSE.
                      DATA t568 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t568.
                      DATA t569 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t569.
                      DATA t570 TYPE REF TO zcl_lnt_void_type.
                      CLEAR t570.
                      DATA t571 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t571.
                      DATA(t572) = abap_true.
                      IF t572 = abap_true.
                        DATA t573 TYPE string.
                        DATA(t574) = t484.
                        t573 = t574->value.
                        DATA(t575) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t575->has = abap_true.
                        t575->value = t573.
                        t571 = t575.
                      ELSE.
                        DATA t576 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t576.
                        t571 = t576.
                      ENDIF.
                      DATA t577 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t577.
                      t570 = zcl_lnt_void_type=>get_db65( i_voided = t571 i_qualified_name = t577 ).
                      t569 = t570.
                      DATA t578 TYPE REF TO zif_lnt_object.
                      DATA t579 TYPE REF TO zif_lnt_object.
                      CLEAR t579.
                      t578 = t579.
                      t568 = NEW zcl_lnt_ilookup_result( i_type_9913 = t569 i_object_19cd = t578 ).
                      CREATE OBJECT t568->zlnt_view_ownkeys_b0e8086400eb.
                      t568->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t580.
                      IF t568->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t568->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t580 ).
                      ENDIF.
                      CREATE OBJECT t568->zlnt_json_ownkeys_70e5fd461788.
                      t568->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t581) = |type|.
                      DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t582.
                      IF t568->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t568->zlnt_json_ownkeys_70e5fd461788->put( p0 = t581 p1 = t582 ).
                      ENDIF.
                      t548 = t568.
                    ENDIF.
                    t527 = t548.
                  ENDIF.
                  t509 = t527.
                  t491 = t509.
                ENDIF.
                t483 = t491.
                t478 = t483.
              ENDIF.
              t468 = t478.
              t447 = t468.
            ENDIF.
            t429 = t447.
            t411 = t429.
          ENDIF.
          t400 = t411.
          t399 = t400.
          DATA t583 TYPE abap_bool.
          DATA t584 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t585) = t399.
          t584 = t585->zlnt_view_read_sr_9be58e2d4893( ).
          t583 = xsdbool( t584 IS BOUND ).
          IF t583 = abap_true.
            DATA t586 TYPE abap_bool.
            DATA t587 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t588) = t399.
            t587 = t588->zlnt_view_read_sr_9be58e2d4893( ).
            t586 = xsdbool( t587 IS BOUND AND t587 IS INSTANCE OF zcl_lnt_structure_type ).
            IF t586 = abap_true.
              DATA t589 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t589.
              DATA t590 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t590.
              DATA t591 TYPE REF TO zcl_lnt_structure_type.
              DATA t592 TYPE REF TO zcl_lnt_structure_type.
              DATA t593 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t594) = t399.
              t593 = t594->zlnt_view_read_sr_9be58e2d4893( ).
              t592 ?= t593.
              t591 = t592.
              DATA t595 TYPE string.
              DATA(t596) = t387.
              t595 = t596.
              DATA t597 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t597.
              DATA t598 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
              DATA(t599) = t591.
              t598 = t599->indexed.
              DATA t600 TYPE string.
              DATA(t601) = t595.
              DATA(t602) = strlen( t601 ).
              t600 = t601.
              IF t600 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t600 TO UPPER CASE.
              ELSE.
                t600 = zlnt_runtime_uppe_91169605024d=>full( t600 ).
              ENDIF.
              t597 = t598->get( p0 = t600 ).
              t590 = t597.
              t589 = t590.
              DATA t603 TYPE abap_bool.
              DATA(t604) = t589.
              t603 = xsdbool( t604 IS BOUND ).
              IF t603 = abap_true.
                DATA(t605) = t42.
                DATA t606 TYPE REF TO zcl_lnt_istructure_component.
                DATA t607 TYPE string.
                DATA t608 TYPE string.
                DATA(t609) = t61.
                t608 = t609->name.
                t607 = t608.
                DATA t610 TYPE REF TO zcl_lnt_abstract_type.
                DATA t611 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t612) = t589.
                t611 = t612.
                t610 = t611.
                DATA t613 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t614 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t614.
                t613 = t614.
                DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t616 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t616.
                t615 = t616.
                t606 = NEW zcl_lnt_istructure_component( i_name = t607 i_type_9913 = t610 i_as_include = t613 i_suffix = t615 ).
                CREATE OBJECT t606->zlnt_view_ownkeys_b0e8086400eb.
                t606->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t617.
                IF t606->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t606->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t617 ).
                ENDIF.
                DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t618.
                IF t606->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t606->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t618 ).
                ENDIF.
                CREATE OBJECT t606->zlnt_json_ownkeys_70e5fd461788.
                t606->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t619) = |name|.
                DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t620.
                IF t606->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t606->zlnt_json_ownkeys_70e5fd461788->put( p0 = t619 p1 = t620 ).
                ENDIF.
                DATA(t621) = |type|.
                DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t622.
                IF t606->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t606->zlnt_json_ownkeys_70e5fd461788->put( p0 = t621 p1 = t622 ).
                ENDIF.
                t605->load( ).
                APPEND t606 TO t605->items.
                t605->save( ).
              ELSE.
                DATA(t623) = t42.
                DATA t624 TYPE REF TO zcl_lnt_istructure_component.
                DATA t625 TYPE string.
                DATA t626 TYPE string.
                DATA(t627) = t61.
                t626 = t627->name.
                t625 = t626.
                DATA t628 TYPE REF TO zcl_lnt_abstract_type.
                DATA t629 TYPE REF TO zcl_lnt_unknown_type.
                DATA t630 TYPE string.
                DATA t631 TYPE string.
                DATA t632 TYPE string.
                DATA(t633) = t387.
                DATA(t634) = | not found in |.
                DATA(t635) = strlen( t633 ).
                t632 = |{ t633 }{ t634 }|.
                DATA t636 TYPE string.
                DATA t637 TYPE REF TO zcl_lnt_shape_35310764.
                DATA(t638) = t75.
                t637 = t638.
                t636 = t637->name.
                DATA(t639) = strlen( t632 ).
                t631 = |{ t632 }{ t636 }|.
                DATA(t640) = |, CDSDetermineTypes|.
                DATA(t641) = strlen( t631 ).
                t630 = |{ t631 }{ t640 }|.
                DATA t642 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t642.
                t629 = NEW zcl_lnt_unknown_type( i_error = t630 i_qualified_name = t642 ).
                t628 = t629.
                DATA t643 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t644 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t644.
                t643 = t644.
                DATA t645 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t646 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t646.
                t645 = t646.
                t624 = NEW zcl_lnt_istructure_component( i_name = t625 i_type_9913 = t628 i_as_include = t643 i_suffix = t645 ).
                CREATE OBJECT t624->zlnt_view_ownkeys_b0e8086400eb.
                t624->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t647.
                IF t624->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t624->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t647 ).
                ENDIF.
                DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t648.
                IF t624->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t624->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t648 ).
                ENDIF.
                CREATE OBJECT t624->zlnt_json_ownkeys_70e5fd461788.
                t624->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t649) = |name|.
                DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t650.
                IF t624->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t624->zlnt_json_ownkeys_70e5fd461788->put( p0 = t649 p1 = t650 ).
                ENDIF.
                DATA(t651) = |type|.
                DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t652.
                IF t624->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t624->zlnt_json_ownkeys_70e5fd461788->put( p0 = t651 p1 = t652 ).
                ENDIF.
                t623->load( ).
                APPEND t624 TO t623->items.
                t623->save( ).
              ENDIF.
            ELSE.
              DATA(t653) = t42.
              DATA t654 TYPE REF TO zcl_lnt_istructure_component.
              DATA t655 TYPE string.
              DATA t656 TYPE string.
              DATA(t657) = t61.
              t656 = t657->name.
              t655 = t656.
              DATA t658 TYPE REF TO zcl_lnt_abstract_type.
              DATA t659 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t660) = t399.
              t659 = t660->zlnt_view_read_sr_9be58e2d4893( ).
              t658 = t659.
              DATA t661 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t662 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t662.
              t661 = t662.
              DATA t663 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t664 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t664.
              t663 = t664.
              t654 = NEW zcl_lnt_istructure_component( i_name = t655 i_type_9913 = t658 i_as_include = t661 i_suffix = t663 ).
              CREATE OBJECT t654->zlnt_view_ownkeys_b0e8086400eb.
              t654->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t665.
              IF t654->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t654->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t665 ).
              ENDIF.
              DATA t666 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t666.
              IF t654->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t654->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t666 ).
              ENDIF.
              CREATE OBJECT t654->zlnt_json_ownkeys_70e5fd461788.
              t654->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t667) = |name|.
              DATA t668 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t668.
              IF t654->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t654->zlnt_json_ownkeys_70e5fd461788->put( p0 = t667 p1 = t668 ).
              ENDIF.
              DATA(t669) = |type|.
              DATA t670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t670.
              IF t654->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t654->zlnt_json_ownkeys_70e5fd461788->put( p0 = t669 p1 = t670 ).
              ENDIF.
              t653->load( ).
              APPEND t654 TO t653->items.
              t653->save( ).
            ENDIF.
          ELSE.
            DATA t671 TYPE abap_bool.
            DATA(t672) = t1.
            DATA t673 TYPE string.
            DATA t674 TYPE REF TO zcl_lnt_shape_35310764.
            DATA(t675) = t75.
            t674 = t675.
            t673 = t674->name.
            t671 = t672->in_error_namespace( i_name = t673 ).
            IF t671 = abap_true.
              DATA(t676) = t42.
              DATA t677 TYPE REF TO zcl_lnt_istructure_component.
              DATA t678 TYPE string.
              DATA t679 TYPE string.
              DATA(t680) = t61.
              t679 = t680->name.
              t678 = t679.
              DATA t681 TYPE REF TO zcl_lnt_abstract_type.
              DATA t682 TYPE REF TO zcl_lnt_unknown_type.
              DATA t683 TYPE string.
              DATA t684 TYPE string.
              DATA t685 TYPE REF TO zcl_lnt_shape_35310764.
              DATA(t686) = t75.
              t685 = t686.
              t684 = t685->name.
              DATA(t687) = | not found, CDSDetermineTypes|.
              DATA(t688) = strlen( t684 ).
              t683 = |{ t684 }{ t687 }|.
              DATA t689 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t689.
              t682 = NEW zcl_lnt_unknown_type( i_error = t683 i_qualified_name = t689 ).
              t681 = t682.
              DATA t690 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t691 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t691.
              t690 = t691.
              DATA t692 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t693 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t693.
              t692 = t693.
              t677 = NEW zcl_lnt_istructure_component( i_name = t678 i_type_9913 = t681 i_as_include = t690 i_suffix = t692 ).
              CREATE OBJECT t677->zlnt_view_ownkeys_b0e8086400eb.
              t677->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t694.
              IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t694 ).
              ENDIF.
              DATA t695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t695.
              IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t695 ).
              ENDIF.
              CREATE OBJECT t677->zlnt_json_ownkeys_70e5fd461788.
              t677->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t696) = |name|.
              DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t697.
              IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t696 p1 = t697 ).
              ENDIF.
              DATA(t698) = |type|.
              DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t699.
              IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t698 p1 = t699 ).
              ENDIF.
              t676->load( ).
              APPEND t677 TO t676->items.
              t676->save( ).
            ELSE.
              DATA(t700) = t42.
              DATA t701 TYPE REF TO zcl_lnt_istructure_component.
              CLEAR t701.
              DATA t702 TYPE string.
              DATA t703 TYPE string.
              DATA(t704) = t61.
              t703 = t704->name.
              t702 = t703.
              DATA t705 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t705.
              DATA t706 TYPE REF TO zcl_lnt_void_type.
              CLEAR t706.
              DATA t707 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t707.
              DATA(t708) = abap_true.
              IF t708 = abap_true.
                DATA t709 TYPE string.
                DATA t710 TYPE REF TO zcl_lnt_shape_35310764.
                DATA(t711) = t75.
                t710 = t711.
                t709 = t710->name.
                DATA(t712) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t712->has = abap_true.
                t712->value = t709.
                t707 = t712.
              ELSE.
                DATA t713 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t713.
                t707 = t713.
              ENDIF.
              DATA t714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t714.
              t706 = zcl_lnt_void_type=>get_db65( i_voided = t707 i_qualified_name = t714 ).
              t705 = t706.
              DATA t715 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t716 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t716.
              t715 = t716.
              DATA t717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t718 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t718.
              t717 = t718.
              t701 = NEW zcl_lnt_istructure_component( i_name = t702 i_type_9913 = t705 i_as_include = t715 i_suffix = t717 ).
              CREATE OBJECT t701->zlnt_view_ownkeys_b0e8086400eb.
              t701->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t719.
              IF t701->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t701->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t719 ).
              ENDIF.
              DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t720.
              IF t701->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t701->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t720 ).
              ENDIF.
              CREATE OBJECT t701->zlnt_json_ownkeys_70e5fd461788.
              t701->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t721) = |name|.
              DATA t722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t722.
              IF t701->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t701->zlnt_json_ownkeys_70e5fd461788->put( p0 = t721 p1 = t722 ).
              ENDIF.
              DATA(t723) = |type|.
              DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t724.
              IF t701->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t701->zlnt_json_ownkeys_70e5fd461788->put( p0 = t723 p1 = t724 ).
              ENDIF.
              t700->load( ).
              APPEND t701 TO t700->items.
              t700->save( ).
            ENDIF.
          ENDIF.
        ELSE.
          DATA(t725) = t42.
          DATA t726 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t726.
          DATA t727 TYPE string.
          DATA t728 TYPE string.
          DATA(t729) = t61.
          t728 = t729->name.
          t727 = t728.
          DATA t730 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t730.
          DATA t731 TYPE REF TO zcl_lnt_void_type.
          CLEAR t731.
          DATA t732 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t732.
          DATA(t733) = abap_true.
          IF t733 = abap_true.
            DATA t734 TYPE string.
            DATA(t735) = |DDLS:fieldname:|.
            DATA(t736) = t3.
            DATA(t737) = strlen( t735 ).
            t734 = |{ t735 }{ t736 }|.
            DATA(t738) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t738->has = abap_true.
            t738->value = t734.
            t732 = t738.
          ELSE.
            DATA t739 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t739.
            t732 = t739.
          ENDIF.
          DATA t740 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t740.
          t731 = zcl_lnt_void_type=>get_db65( i_voided = t732 i_qualified_name = t740 ).
          t730 = t731.
          DATA t741 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t742 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t742.
          t741 = t742.
          DATA t743 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t744 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t744.
          t743 = t744.
          t726 = NEW zcl_lnt_istructure_component( i_name = t727 i_type_9913 = t730 i_as_include = t741 i_suffix = t743 ).
          CREATE OBJECT t726->zlnt_view_ownkeys_b0e8086400eb.
          t726->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t745.
          IF t726->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t726->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t745 ).
          ENDIF.
          DATA t746 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t746.
          IF t726->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t726->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t746 ).
          ENDIF.
          CREATE OBJECT t726->zlnt_json_ownkeys_70e5fd461788.
          t726->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t747) = |name|.
          DATA t748 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t748.
          IF t726->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t726->zlnt_json_ownkeys_70e5fd461788->put( p0 = t747 p1 = t748 ).
          ENDIF.
          DATA(t749) = |type|.
          DATA t750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t750.
          IF t726->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t726->zlnt_json_ownkeys_70e5fd461788->put( p0 = t749 p1 = t750 ).
          ENDIF.
          t725->load( ).
          APPEND t726 TO t725->items.
          t725->save( ).
        ENDIF.
      ENDDO.
      DATA t751 TYPE REF TO zcl_lnt_structure_type.
      DATA(t752) = t42.
      DATA t753 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t754) = t2.
      t753 = t754->definition_name.
      DATA t755 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t756) = t2.
      t755 = t756->definition_name.
      DATA t757 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t758) = t2.
      t757 = t758->description.
      t751 = NEW zcl_lnt_structure_type( i_components = t752 i_qualified_name = t753 i_ddic_name = t755 i_description = t757 ).
      result = t751.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1069_80e1fec352f9.
  ENDMETHOD.
ENDCLASS.
