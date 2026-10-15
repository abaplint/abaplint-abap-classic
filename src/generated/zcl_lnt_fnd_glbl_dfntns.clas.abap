* TS: src/abap/5_syntax/global_definitions/find_global_definitions.ts:17:1 FindGlobalDefinitions
CLASS zcl_lnt_fnd_glbl_dfntns DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS run IMPORTING i_progress TYPE REF TO zif_lnt_progress.
    METHODS count_untyped IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_union_291f04b3 RETURNING VALUE(result) TYPE f.
    METHODS count IMPORTING i_type_9913 TYPE REF TO zif_lnt_union_ea265422 RETURNING VALUE(result) TYPE f.
    METHODS update IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_union_291f04b3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fnd_glbl_dfntns IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_progress.
    DATA(t2) = VALUE i( ).
    DATA(t3) = 10.
    t2 = t3.
    DATA(t4) = VALUE f( ).
    DATA(t5) = CONV f( '9007199254740991' ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t8 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t10.
    DATA(t11) = me->reg.
    t10 = t11->get_objects( ).
    t9 = t10->iterate( ).
    t8 = t9.
    DO.
      DATA(t12) = abap_true.
      IF t12 = abap_false.
        EXIT.
      ENDIF.
      DATA t13 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t14.
      DATA(t15) = t8.
      t14 = t15->next( ).
      t13 = t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t13.
      t16 = t17->done.
      IF t16 = abap_true.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      DATA t19 TYPE REF TO zif_lnt_object.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_object.
      CLEAR t20.
      DATA(t21) = t13.
      t20 = t21->value.
      t19 = t20.
      t18 = t19.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = abap_false.
      t24 = t25.
      DATA t26 TYPE REF TO cx_root.
      CLEAR t26.
      TRY.
          DATA(t27) = VALUE abap_bool( ).
          DATA(t28) = VALUE abap_bool( ).
          DATA(t29) = VALUE abap_bool( ).
          DATA(t30) = t18.
          t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_ob_interface ).
          t28 = t29.
          IF t29 = abap_false.
            DATA(t31) = VALUE abap_bool( ).
            DATA(t32) = t18.
            t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_class ).
            t28 = t31.
          ENDIF.
          t27 = t28.
          IF t28 = abap_true.
            DATA(t33) = VALUE abap_bool( ).
            DATA t34 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t34.
            DATA t35 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t35.
            DATA t36 TYPE REF TO zif_lnt_union_291f04b3.
            CLEAR t36.
            DATA(t37) = t18.
            t36 ?= t37.
            t35 = t36->get_definition( ).
            t34 = t35.
            DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t38.
            DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t39.
            t38 = t39.
            DATA(t40) = VALUE abap_bool( ).
            DATA(t41) = t34.
            IF t41 IS INITIAL.
              t40 = abap_true.
            ENDIF.
            t33 = t40.
            t27 = t33.
          ENDIF.
          t23 = t27.
          DATA(t42) = abap_true.
          t24 = t42.
        CATCH cx_root INTO t26.
          DATA(t43) = VALUE abap_bool( ).
          DATA(t44) = t24.
          t43 = xsdbool( t44 = abap_false ).
          IF t43 = abap_true.
            DATA(t45) = t8.
            t45->close( ).
          ENDIF.
          RAISE EXCEPTION t26.
      ENDTRY.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = t24.
      t46 = xsdbool( t47 = abap_false ).
      IF t46 = abap_true.
        DATA(t48) = t8.
        t48->close( ).
      ENDIF.
      DATA(t49) = t23.
      t22 = t49.
      IF t22 = abap_true.
        DATA(t50) = VALUE f( ).
        DATA(t51) = VALUE f( ).
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = abap_false.
        t52 = t53.
        DATA t54 TYPE REF TO cx_root.
        CLEAR t54.
        TRY.
            DATA(t55) = VALUE f( ).
            DATA(t56) = VALUE i( ).
            DATA(t57) = t6.
            DATA t58 TYPE REF TO zif_lnt_union_291f04b3.
            CLEAR t58.
            DATA(t59) = t18.
            t58 ?= t59.
            t57->load( ).
            APPEND t58 TO t57->items.
            t56 = lines( t57->items ).
            t57->save( ).
            t55 = t56.
            t51 = t55.
            DATA(t60) = abap_true.
            t52 = t60.
          CATCH cx_root INTO t54.
            DATA(t61) = VALUE abap_bool( ).
            DATA(t62) = t52.
            t61 = xsdbool( t62 = abap_false ).
            IF t61 = abap_true.
              DATA(t63) = t8.
              t63->close( ).
            ENDIF.
            RAISE EXCEPTION t54.
        ENDTRY.
        DATA(t64) = VALUE abap_bool( ).
        DATA(t65) = t52.
        t64 = xsdbool( t65 = abap_false ).
        IF t64 = abap_true.
          DATA(t66) = t8.
          t66->close( ).
        ENDIF.
        DATA(t67) = t51.
        t50 = t67.
      ELSE.
        DATA(t68) = VALUE abap_bool( ).
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = VALUE abap_bool( ).
        DATA(t71) = abap_false.
        t70 = t71.
        DATA t72 TYPE REF TO cx_root.
        CLEAR t72.
        TRY.
            DATA(t73) = VALUE abap_bool( ).
            DATA(t74) = VALUE abap_bool( ).
            DATA(t75) = VALUE abap_bool( ).
            DATA(t76) = VALUE abap_bool( ).
            DATA(t77) = VALUE abap_bool( ).
            DATA(t78) = VALUE abap_bool( ).
            DATA(t79) = t18.
            t78 = xsdbool( t79 IS BOUND AND t79 IS INSTANCE OF zcl_lnt_data_element ).
            t77 = t78.
            IF t78 = abap_false.
              DATA(t80) = VALUE abap_bool( ).
              DATA(t81) = t18.
              t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_table ).
              t77 = t80.
            ENDIF.
            t76 = t77.
            IF t77 = abap_false.
              DATA(t82) = VALUE abap_bool( ).
              DATA(t83) = t18.
              t82 = xsdbool( t83 IS BOUND AND t83 IS INSTANCE OF zcl_lnt_ob_table_type ).
              t76 = t82.
            ENDIF.
            t75 = t76.
            IF t76 = abap_false.
              DATA(t84) = VALUE abap_bool( ).
              DATA(t85) = t18.
              t84 = xsdbool( t85 IS BOUND AND t85 IS INSTANCE OF zcl_lnt_view ).
              t75 = t84.
            ENDIF.
            t74 = t75.
            IF t75 = abap_false.
              DATA(t86) = VALUE abap_bool( ).
              DATA(t87) = t18.
              t86 = xsdbool( t87 IS BOUND AND t87 IS INSTANCE OF zcl_lnt_lock_object ).
              t74 = t86.
            ENDIF.
            t73 = t74.
            IF t74 = abap_false.
              DATA(t88) = VALUE abap_bool( ).
              DATA(t89) = t18.
              t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_athrztn_chck_fld ).
              t73 = t88.
            ENDIF.
            t69 = t73.
            DATA(t90) = abap_true.
            t70 = t90.
          CATCH cx_root INTO t72.
            DATA(t91) = VALUE abap_bool( ).
            DATA(t92) = t70.
            t91 = xsdbool( t92 = abap_false ).
            IF t91 = abap_true.
              DATA(t93) = t8.
              t93->close( ).
            ENDIF.
            RAISE EXCEPTION t72.
        ENDTRY.
        DATA(t94) = VALUE abap_bool( ).
        DATA(t95) = t70.
        t94 = xsdbool( t95 = abap_false ).
        IF t94 = abap_true.
          DATA(t96) = t8.
          t96->close( ).
        ENDIF.
        DATA(t97) = t69.
        t68 = t97.
        IF t68 = abap_true.
          DATA t98 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t98.
          DATA t99 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t99.
          DATA(t100) = VALUE abap_bool( ).
          DATA(t101) = abap_false.
          t100 = t101.
          DATA t102 TYPE REF TO cx_root.
          CLEAR t102.
          TRY.
              DATA t103 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t103.
              DATA t104 TYPE REF TO zif_lnt_union_e3559bc5.
              CLEAR t104.
              DATA(t105) = t18.
              t104 ?= t105.
              DATA(t106) = me->reg.
              DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t107.
              DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t108.
              t103 = t104->parse_type( i_reg_f149 = t106 i_data_element = t107 i_description = t108 ).
              t99 = t103.
              DATA(t109) = abap_true.
              t100 = t109.
            CATCH cx_root INTO t102.
              DATA(t110) = VALUE abap_bool( ).
              DATA(t111) = t100.
              t110 = xsdbool( t111 = abap_false ).
              IF t110 = abap_true.
                DATA(t112) = t8.
                t112->close( ).
              ENDIF.
              RAISE EXCEPTION t102.
          ENDTRY.
          DATA(t113) = VALUE abap_bool( ).
          DATA(t114) = t100.
          t113 = xsdbool( t114 = abap_false ).
          IF t113 = abap_true.
            DATA(t115) = t8.
            t115->close( ).
          ENDIF.
          DATA(t116) = t99.
          t98 = t116.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t118.
    DATA(t119) = t6.
    t118 = t119.
    DATA(t120) = VALUE i( ).
    DATA(t121) = VALUE i( ).
    DATA(t122) = t118.
    t122->load( ).
    t121 = lines( t122->items ).
    t120 = t121.
    DATA(t123) = VALUE i( ).
    DATA(t124) = 1.
    t123 = t124.
    DO.
      DATA(t125) = VALUE abap_bool( ).
      DATA(t126) = t123.
      DATA(t127) = t120.
      t125 = xsdbool( t126 < t127 ).
      IF t125 = abap_false.
        EXIT.
      ENDIF.
      DATA t128 TYPE REF TO zif_lnt_union_291f04b3.
      CLEAR t128.
      DATA t129 TYPE REF TO zif_lnt_union_291f04b3.
      CLEAR t129.
      DATA t130 TYPE REF TO zif_lnt_union_291f04b3.
      CLEAR t130.
      DATA(t131) = t118.
      DATA(t132) = t123.
      DATA t133 TYPE REF TO object.
      CLEAR t133.
      t133 = t131->get( p0 = t132 ).
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      CLEAR t130.
      IF t133 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t134 ?= t133.
        DATA t135 TYPE REF TO object.
        CLEAR t135.
        t135 = t134->as_ref( ).
        t130 ?= t135.
      ELSE.
        t130 ?= t133.
      ENDIF.
      t129 = t130.
      t128 = t129.
      DATA(t136) = VALUE i( ).
      DATA(t137) = t123.
      t136 = t137.
      DO.
        DATA(t138) = VALUE abap_bool( ).
        DATA(t139) = t136.
        DATA(t140) = 0.
        t138 = xsdbool( t139 > t140 ).
        IF t138 = abap_false.
          EXIT.
        ENDIF.
        DATA t141 TYPE REF TO zif_lnt_union_291f04b3.
        CLEAR t141.
        DATA t142 TYPE REF TO zif_lnt_union_291f04b3.
        CLEAR t142.
        DATA t143 TYPE REF TO zif_lnt_union_291f04b3.
        CLEAR t143.
        DATA(t144) = t118.
        DATA(t145) = VALUE i( ).
        DATA(t146) = t136.
        DATA(t147) = 1.
        t145 = t146 - t147.
        DATA t148 TYPE REF TO object.
        CLEAR t148.
        t148 = t144->get( p0 = t145 ).
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        CLEAR t143.
        IF t148 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t149 ?= t148.
          DATA t150 TYPE REF TO object.
          CLEAR t150.
          t150 = t149->as_ref( ).
          t143 ?= t150.
        ELSE.
          t143 ?= t148.
        ENDIF.
        t142 = t143.
        t141 = t142.
        DATA(t151) = VALUE abap_bool( ).
        DATA(t152) = VALUE i( ).
        DATA(t153) = VALUE string( ).
        DATA(t154) = t141.
        t153 = t154->get_name( ).
        DATA(t155) = VALUE string( ).
        DATA(t156) = t128.
        t155 = t156->get_name( ).
        t152 = zlnt_runtime_orde_654b9c3be2c1=>object_name( p0 = t153 p1 = t155 ).
        DATA(t157) = 0.
        t151 = xsdbool( t152 <= t157 ).
        IF t151 = abap_true.
          EXIT.
        ENDIF.
        DATA(t158) = t118.
        DATA(t159) = t136.
        DATA(t160) = t141.
        t158->put( p0 = t159 p1 = t160 ).
        DATA(t161) = VALUE i( ).
        DATA(t162) = t136.
        DATA(t163) = 1.
        t161 = t162 - t163.
        t136 = t161.
      ENDDO.
      DATA(t164) = t118.
      DATA(t165) = t136.
      DATA(t166) = t128.
      t164->put( p0 = t165 p1 = t166 ).
      DATA(t167) = VALUE i( ).
      DATA(t168) = t123.
      DATA(t169) = 1.
      t167 = t168 + t169.
      t123 = t167.
    ENDDO.
    DATA(t170) = t118.
    t117 = t170.
    DATA(t171) = VALUE i( ).
    DATA(t172) = 1.
    t171 = t172.
    DO.
      DATA(t173) = VALUE abap_bool( ).
      DATA(t174) = t171.
      DATA(t175) = t2.
      t173 = xsdbool( t174 <= t175 ).
      IF t173 = abap_false.
        EXIT.
      ENDIF.
      DATA(t176) = VALUE abap_bool( ).
      DATA t177 TYPE REF TO zif_lnt_progress.
      CLEAR t177.
      DATA(t178) = t1.
      t177 = t178.
      DATA(t179) = VALUE abap_bool( ).
      DATA(t180) = VALUE abap_bool( ).
      DATA(t181) = VALUE abap_bool( ).
      DATA(t182) = t177.
      IF t182 IS INITIAL.
        t181 = abap_true.
      ENDIF.
      t180 = xsdbool( t181 = abap_false ).
      IF t180 = abap_true.
        DATA t183 TYPE REF TO zif_lnt_progress.
        CLEAR t183.
        DATA(t184) = t177.
        t183 = t184.
        DATA(t185) = VALUE f( ).
        DATA(t186) = VALUE i( ).
        DATA(t187) = t6.
        t187->load( ).
        t186 = lines( t187->items ).
        t185 = t186.
        DATA(t188) = VALUE string( ).
        DATA(t189) = |Global OO types, pass |.
        DATA(t190) = VALUE string( ).
        DATA(t191) = t171.
        t190 = |{ t191 }|.
        DATA(t192) = strlen( t189 ).
        t188 = |{ t189 }{ t190 }|.
        t183->set( i_total = t185 i_text = t188 ).
      ENDIF.
      DATA(t193) = abap_false.
      t179 = t193.
      t176 = t179.
      DATA(t194) = VALUE f( ).
      DATA(t195) = CONV f( 0 ).
      t194 = t195.
      DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t196.
      DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t197.
      CREATE OBJECT t197.
      t196 = t197.
      DATA(t198) = t6.
      DATA t199 TYPE REF TO zif_lnt_union_291f04b3.
      CLEAR t199.
      DATA t200 TYPE REF TO object.
      CLEAR t200.
      DATA(t201) = VALUE i( ).
      DO.
        t198->load( ).
        IF t201 >= lines( t198->items ).
          EXIT.
        ENDIF.
        CLEAR t200.
        READ TABLE t198->items INDEX t201 + 1 INTO t200.
        t201 = t201 + 1.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        CLEAR t199.
        IF t200 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t202 ?= t200.
          DATA t203 TYPE REF TO object.
          CLEAR t203.
          t203 = t202->as_ref( ).
          t199 ?= t203.
        ELSE.
          t199 ?= t200.
        ENDIF.
        DATA(t204) = VALUE abap_bool( ).
        DATA t205 TYPE REF TO zif_lnt_progress.
        CLEAR t205.
        DATA(t206) = t1.
        t205 = t206.
        DATA(t207) = VALUE abap_bool( ).
        DATA(t208) = VALUE abap_bool( ).
        DATA(t209) = VALUE abap_bool( ).
        DATA(t210) = t205.
        IF t210 IS INITIAL.
          t209 = abap_true.
        ENDIF.
        t208 = xsdbool( t209 = abap_false ).
        IF t208 = abap_true.
          DATA t211 TYPE REF TO zif_lnt_progress.
          CLEAR t211.
          DATA(t212) = t205.
          t211 = t212.
          DATA(t213) = VALUE string( ).
          DATA(t214) = VALUE string( ).
          DATA(t215) = VALUE string( ).
          DATA(t216) = |Global OO types(pass |.
          DATA(t217) = VALUE string( ).
          DATA(t218) = t171.
          t217 = |{ t218 }|.
          DATA(t219) = strlen( t216 ).
          t215 = |{ t216 }{ t217 }|.
          DATA(t220) = |), next pass: |.
          DATA(t221) = strlen( t215 ).
          t214 = |{ t215 }{ t220 }|.
          DATA(t222) = VALUE string( ).
          DATA(t223) = VALUE i( ).
          DATA(t224) = t196.
          t224->load( ).
          t223 = lines( t224->items ).
          t222 = |{ t223 }|.
          DATA(t225) = strlen( t214 ).
          t213 = |{ t214 }{ t222 }|.
          t211->tick_sync( i_text = t213 ).
        ENDIF.
        DATA(t226) = abap_false.
        t207 = t226.
        t204 = t207.
        DATA(t227) = t199.
        me->update( i_obj_1ed0 = t227 ).
        DATA(t228) = VALUE f( ).
        DATA(t229) = VALUE f( ).
        DATA(t230) = t199.
        t229 = me->count_untyped( i_obj_1ed0 = t230 ).
        t228 = t229.
        DATA(t231) = VALUE abap_bool( ).
        DATA(t232) = t228.
        DATA(t233) = CONV f( 0 ).
        t231 = xsdbool( t232 > t233 ).
        IF t231 = abap_true.
          DATA(t234) = t196.
          DATA(t235) = t199.
          t234->load( ).
          APPEND t235 TO t234->items.
          t234->save( ).
        ENDIF.
        DATA(t236) = VALUE f( ).
        DATA(t237) = t194.
        DATA(t238) = t228.
        t236 = t237 + t238.
        t194 = t236.
      ENDDO.
      DATA(t239) = t196.
      t6 = t239.
      DATA(t240) = VALUE abap_bool( ).
      DATA(t241) = VALUE abap_bool( ).
      DATA(t242) = t4.
      DATA(t243) = t194.
      t241 = xsdbool( t242 = t243 ).
      t240 = t241.
      IF t241 = abap_false.
        DATA(t244) = VALUE abap_bool( ).
        DATA(t245) = t194.
        DATA(t246) = CONV f( 0 ).
        t244 = xsdbool( t245 = t246 ).
        t240 = t244.
      ENDIF.
      IF t240 = abap_true.
        EXIT.
      ENDIF.
      DATA(t247) = t194.
      t4 = t247.
      DATA(t248) = VALUE i( ).
      DATA(t249) = t171.
      DATA(t250) = 1.
      t248 = t249 + t250.
      t171 = t248.
    ENDDO.
  ENDMETHOD.

  METHOD count_untyped.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4->get_definition( ).
    t2 = t3.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t6.
    DATA(t7) = t2.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t6.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    t5 = t10.
    IF t5 = abap_true.
      DATA(t12) = CONV f( 1 ).
      result = t12.
      RETURN.
    ENDIF.
    DATA(t13) = VALUE f( ).
    DATA(t14) = CONV f( 0 ).
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_type_definitions.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t17.
    DATA(t18) = t2.
    t17 = t18.
    t16 = t17->get_type_definitions( ).
    t15 = t16->get_all( ).
    DATA t19 TYPE REF TO zcl_lnt_type_definitions_entry.
    CLEAR t19.
    DATA t20 TYPE REF TO object.
    CLEAR t20.
    DATA(t21) = VALUE i( ).
    DO.
      t15->load( ).
      IF t21 >= lines( t15->items ).
        EXIT.
      ENDIF.
      CLEAR t20.
      READ TABLE t15->items INDEX t21 + 1 INTO t20.
      t21 = t21 + 1.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      CLEAR t19.
      IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t20.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
        t23 = t22->as_ref( ).
        t19 ?= t23.
      ELSE.
        t19 ?= t20.
      ENDIF.
      DATA(t24) = VALUE f( ).
      DATA(t25) = t13.
      DATA(t26) = VALUE f( ).
      DATA t27 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t29.
      DATA(t30) = t19.
      t29 = t30->type_cba0.
      t28 = t29.
      DATA t31 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t31.
      DATA(t32) = t28.
      t31 = t32->type_cba0.
      t27 = t31.
      t26 = me->count( i_type_9913 = t27 ).
      t24 = t25 + t26.
      t13 = t24.
    ENDDO.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_attributes.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t35.
    DATA(t36) = t2.
    t35 = t36.
    t34 = t35->get_attributes( ).
    t33 = t34->get_all( ).
    DATA t37 TYPE REF TO zcl_lnt_class_attribute.
    CLEAR t37.
    DATA t38 TYPE REF TO object.
    CLEAR t38.
    DATA(t39) = VALUE i( ).
    DO.
      t33->load( ).
      IF t39 >= lines( t33->items ).
        EXIT.
      ENDIF.
      CLEAR t38.
      READ TABLE t33->items INDEX t39 + 1 INTO t38.
      t39 = t39 + 1.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      CLEAR t37.
      IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t40 ?= t38.
        DATA t41 TYPE REF TO object.
        CLEAR t41.
        t41 = t40->as_ref( ).
        t37 ?= t41.
      ELSE.
        t37 ?= t38.
      ENDIF.
      DATA(t42) = VALUE f( ).
      DATA(t43) = t13.
      DATA(t44) = VALUE f( ).
      DATA t45 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t45.
      DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t46.
      DATA(t47) = t37.
      t46 = t47.
      DATA t48 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t48.
      DATA(t49) = t46.
      t48 = t49->type_cba0.
      t45 = t48.
      t44 = me->count( i_type_9913 = t45 ).
      t42 = t43 + t44.
      t13 = t42.
    ENDDO.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    DATA t51 TYPE REF TO zif_lnt_attributes.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t52.
    DATA(t53) = t2.
    t52 = t53.
    t51 = t52->get_attributes( ).
    t50 = t51->get_constants( ).
    DATA t54 TYPE REF TO zcl_lnt_class_constant.
    CLEAR t54.
    DATA t55 TYPE REF TO object.
    CLEAR t55.
    DATA(t56) = VALUE i( ).
    DO.
      t50->load( ).
      IF t56 >= lines( t50->items ).
        EXIT.
      ENDIF.
      CLEAR t55.
      READ TABLE t50->items INDEX t56 + 1 INTO t55.
      t56 = t56 + 1.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      CLEAR t54.
      IF t55 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t57 ?= t55.
        DATA t58 TYPE REF TO object.
        CLEAR t58.
        t58 = t57->as_ref( ).
        t54 ?= t58.
      ELSE.
        t54 ?= t55.
      ENDIF.
      DATA(t59) = VALUE f( ).
      DATA(t60) = t13.
      DATA(t61) = VALUE f( ).
      DATA t62 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t62.
      DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t63.
      DATA(t64) = t54.
      t63 = t64.
      DATA t65 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t65.
      DATA(t66) = t63.
      t65 = t66->type_cba0.
      t62 = t65.
      t61 = me->count( i_type_9913 = t62 ).
      t59 = t60 + t61.
      t13 = t59.
    ENDDO.
    DATA t67 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t67.
    DATA t68 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t68.
    DATA t69 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t69.
    DATA t70 TYPE REF TO zif_lnt_method_definitions.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t71.
    DATA(t72) = t2.
    t71 = t72.
    t70 = t71->get_method_definitions( ).
    t69 = t70->get_all( ).
    t68 = t69->iterate( ).
    t67 = t68.
    DO.
      DATA(t73) = abap_true.
      IF t73 = abap_false.
        EXIT.
      ENDIF.
      DATA t74 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t75.
      DATA(t76) = t67.
      t75 = t76->next( ).
      t74 = t75.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = t74.
      t77 = t78->done.
      IF t77 = abap_true.
        EXIT.
      ENDIF.
      DATA t79 TYPE REF TO zif_lnt_method_definition.
      CLEAR t79.
      DATA t80 TYPE REF TO zif_lnt_method_definition.
      CLEAR t80.
      DATA t81 TYPE REF TO zif_lnt_method_definition.
      CLEAR t81.
      DATA(t82) = t74.
      t81 = t82->value.
      t80 = t81.
      t79 = t80.
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t83.
      DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t84.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = abap_false.
      t85 = t86.
      DATA t87 TYPE REF TO cx_root.
      CLEAR t87.
      TRY.
          DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t88.
          DATA t89 TYPE REF TO zif_lnt_method_parameters.
          CLEAR t89.
          DATA(t90) = t79.
          t89 = t90->get_parameters( ).
          t88 = t89->get_all( ).
          t84 = t88.
          DATA(t91) = abap_true.
          t85 = t91.
        CATCH cx_root INTO t87.
          DATA(t92) = VALUE abap_bool( ).
          DATA(t93) = t85.
          t92 = xsdbool( t93 = abap_false ).
          IF t92 = abap_true.
            DATA(t94) = t67.
            t94->close( ).
          ENDIF.
          RAISE EXCEPTION t87.
      ENDTRY.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = t85.
      t95 = xsdbool( t96 = abap_false ).
      IF t95 = abap_true.
        DATA(t97) = t67.
        t97->close( ).
      ENDIF.
      DATA(t98) = t84.
      t83 = t98.
      DATA t99 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t99.
      DATA t100 TYPE REF TO object.
      CLEAR t100.
      DATA(t101) = VALUE i( ).
      DO.
        t83->load( ).
        IF t101 >= lines( t83->items ).
          EXIT.
        ENDIF.
        CLEAR t100.
        READ TABLE t83->items INDEX t101 + 1 INTO t100.
        t101 = t101 + 1.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        CLEAR t99.
        IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t102 ?= t100.
          DATA t103 TYPE REF TO object.
          CLEAR t103.
          t103 = t102->as_ref( ).
          t99 ?= t103.
        ELSE.
          t99 ?= t100.
        ENDIF.
        DATA(t104) = VALUE f( ).
        DATA(t105) = VALUE f( ).
        DATA(t106) = VALUE abap_bool( ).
        DATA(t107) = abap_false.
        t106 = t107.
        DATA t108 TYPE REF TO cx_root.
        CLEAR t108.
        TRY.
            DATA(t109) = VALUE f( ).
            DATA(t110) = t13.
            DATA(t111) = VALUE f( ).
            DATA t112 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t112.
            DATA t113 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t113.
            DATA(t114) = t99.
            t113 = t114.
            DATA t115 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t115.
            DATA(t116) = t113.
            t115 = t116->type_cba0.
            t112 = t115.
            t111 = me->count( i_type_9913 = t112 ).
            t109 = t110 + t111.
            t105 = t109.
            DATA(t117) = abap_true.
            t106 = t117.
          CATCH cx_root INTO t108.
            DATA(t118) = VALUE abap_bool( ).
            DATA(t119) = t106.
            t118 = xsdbool( t119 = abap_false ).
            IF t118 = abap_true.
              DATA(t120) = t67.
              t120->close( ).
            ENDIF.
            RAISE EXCEPTION t108.
        ENDTRY.
        DATA(t121) = VALUE abap_bool( ).
        DATA(t122) = t106.
        t121 = xsdbool( t122 = abap_false ).
        IF t121 = abap_true.
          DATA(t123) = t67.
          t123->close( ).
        ENDIF.
        DATA(t124) = t105.
        t104 = t124.
        t13 = t104.
      ENDDO.
    ENDDO.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t127.
    DATA t128 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t128.
    DATA(t129) = t2.
    t128 = t129.
    t127 = t128->get_events( ).
    t126 = t127.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t130.
    DATA(t131) = VALUE abap_bool( ).
    DATA(t132) = t126.
    t131 = xsdbool( t132 IS BOUND ).
    IF t131 = abap_true.
      DATA(t133) = t126.
      t130 = t133.
    ELSE.
      DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t134.
      CREATE OBJECT t134.
      t130 = t134.
    ENDIF.
    t125 = t130.
    DATA t135 TYPE REF TO zif_lnt_event_definition.
    CLEAR t135.
    DATA t136 TYPE REF TO object.
    CLEAR t136.
    DATA(t137) = VALUE i( ).
    DO.
      t125->load( ).
      IF t137 >= lines( t125->items ).
        EXIT.
      ENDIF.
      CLEAR t136.
      READ TABLE t125->items INDEX t137 + 1 INTO t136.
      t137 = t137 + 1.
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t138.
      CLEAR t135.
      IF t136 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t138 ?= t136.
        DATA t139 TYPE REF TO object.
        CLEAR t139.
        t139 = t138->as_ref( ).
        t135 ?= t139.
      ELSE.
        t135 ?= t136.
      ENDIF.
      DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t140.
      DATA(t141) = t135.
      t140 = t141->get_parameters( ).
      DATA t142 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t142.
      DATA t143 TYPE REF TO object.
      CLEAR t143.
      DATA(t144) = VALUE i( ).
      DO.
        t140->load( ).
        IF t144 >= lines( t140->items ).
          EXIT.
        ENDIF.
        CLEAR t143.
        READ TABLE t140->items INDEX t144 + 1 INTO t143.
        t144 = t144 + 1.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        CLEAR t142.
        IF t143 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t145 ?= t143.
          DATA t146 TYPE REF TO object.
          CLEAR t146.
          t146 = t145->as_ref( ).
          t142 ?= t146.
        ELSE.
          t142 ?= t143.
        ENDIF.
        DATA(t147) = VALUE f( ).
        DATA(t148) = t13.
        DATA(t149) = VALUE f( ).
        DATA t150 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t150.
        DATA t151 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t151.
        DATA(t152) = t142.
        t151 = t152.
        DATA t153 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t153.
        DATA(t154) = t151.
        t153 = t154->type_cba0.
        t150 = t153.
        t149 = me->count( i_type_9913 = t150 ).
        t147 = t148 + t149.
        t13 = t147.
      ENDDO.
    ENDDO.
    DATA(t155) = t13.
    result = t155.

  ENDMETHOD.

  METHOD count.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_unknown_type ).
    t2 = t3.
    IF t3 = abap_false.
      DATA(t5) = VALUE abap_bool( ).
      DATA(t6) = t1.
      t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_void_type ).
      t2 = t5.
    ENDIF.
    IF t2 = abap_true.
      DATA(t7) = CONV f( 1 ).
      result = t7.
      RETURN.
    ELSE.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = t1.
      t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t8 = abap_true.
        DATA(t10) = VALUE f( ).
        DATA t11 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t11.
        DATA t12 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t12.
        DATA t13 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t13.
        DATA(t14) = t1.
        DATA t15 TYPE REF TO object.
        CLEAR t15.
        t15 = t14.
        t13 ?= t15.
        t12 = t13.
        DATA t16 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t16.
        DATA(t17) = t12.
        t16 = t17->row_type.
        t11 = t16.
        t10 = me->count( i_type_9913 = t11 ).
        result = t10.
        RETURN.
      ELSE.
        DATA(t18) = VALUE abap_bool( ).
        DATA(t19) = t1.
        t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_data_reference ).
        IF t18 = abap_true.
          DATA(t20) = VALUE f( ).
          DATA t21 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t21.
          DATA t22 TYPE REF TO zcl_lnt_data_reference.
          CLEAR t22.
          DATA t23 TYPE REF TO zcl_lnt_data_reference.
          CLEAR t23.
          DATA(t24) = t1.
          DATA t25 TYPE REF TO object.
          CLEAR t25.
          t25 = t24.
          t23 ?= t25.
          t22 = t23.
          DATA t26 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t26.
          DATA(t27) = t22.
          t26 = t27->type_cba0.
          t21 = t26.
          t20 = me->count( i_type_9913 = t21 ).
          result = t20.
          RETURN.
        ELSE.
          DATA(t28) = VALUE abap_bool( ).
          DATA(t29) = t1.
          t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_structure_type ).
          IF t28 = abap_true.
            DATA(t30) = VALUE f( ).
            DATA(t31) = CONV f( 0 ).
            t30 = t31.
            DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t32.
            DATA t33 TYPE REF TO zcl_lnt_structure_type.
            CLEAR t33.
            DATA t34 TYPE REF TO zcl_lnt_structure_type.
            CLEAR t34.
            DATA(t35) = t1.
            DATA t36 TYPE REF TO object.
            CLEAR t36.
            t36 = t35.
            t34 ?= t36.
            t33 = t34.
            DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t37.
            DATA(t38) = t33.
            t37 = t38->components.
            t32 = t37.
            DATA t39 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t39.
            DATA t40 TYPE REF TO object.
            CLEAR t40.
            DATA(t41) = VALUE i( ).
            DO.
              t32->load( ).
              IF t41 >= lines( t32->items ).
                EXIT.
              ENDIF.
              CLEAR t40.
              READ TABLE t32->items INDEX t41 + 1 INTO t40.
              t41 = t41 + 1.
              DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t42.
              CLEAR t39.
              IF t40 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t42 ?= t40.
                CLEAR t39.
                IF t42 IS BOUND.
                  IF t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    TRY.
                        t39 ?= t42->oval.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                  ENDIF.
                  IF t39 IS NOT BOUND.
                    IF t42->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t42->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t42->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t42->tag <>
                    zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
                      CLEAR t43.
                      IF t42->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                      ENDIF.
                      TRY.
                          t43 ?= t42->oval.
                        CATCH cx_sy_move_cast_error.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                      ENDTRY.
                      IF t43->structural( ) <> abap_true.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                      ENDIF.
                    ENDIF.
                    DATA(t44) = VALUE string( ).
                    DATA t45 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t45.
                    DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t46.
                    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t47.
                    t39 = NEW zcl_lnt_istructure_component( view_source = t42 i_name = t44 i_type_9913 = t45 i_as_include = t46 i_suffix = t47 ).
                  ENDIF.
                ENDIF.
              ELSE.
                t39 ?= t40.
              ENDIF.
              DATA(t48) = VALUE f( ).
              DATA(t49) = t30.
              DATA(t50) = VALUE f( ).
              DATA t51 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t51.
              DATA(t52) = t39.
              t51 = t52->zlnt_view_read_sr_455340cd1e80( ).
              t50 = me->count( i_type_9913 = t51 ).
              t48 = t49 + t50.
              t30 = t48.
            ENDDO.
            DATA(t53) = t30.
            result = t53.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t54) = CONV f( 0 ).
    result = t54.

  ENDMETHOD.

  METHOD update.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4->get_main_abap_file( ).
    t2 = t3.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t6.
    DATA(t7) = t2.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t6.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    t5 = t10.
    IF t5 = abap_true.
      DATA(t12) = t1.
      DATA t13 TYPE REF TO zif_lnt_class_definition.
      CLEAR t13.
      t12->set_definition( i_def = t13 ).
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t17.
    DATA(t18) = t2.
    t17 = t18.
    t16 = t17.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t16.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t24.
      DATA(t25) = t16.
      t24 = t25.
      DATA t26 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t26.
      DATA(t27) = t24.
      t26 = t27->structure.
      t23 = t26.
      t19 = t23.
    ENDIF.
    t15 = t19.
    t14 = t15.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t29.
    DATA(t30) = t14.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t29.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t28 = t33.
    IF t28 = abap_true.
      DATA(t35) = t1.
      DATA t36 TYPE REF TO zif_lnt_class_definition.
      CLEAR t36.
      t35->set_definition( i_def = t36 ).
      RETURN.
    ENDIF.
    DATA t37 TYPE REF TO zcl_lnt_syntax_input.
    CLEAR t37.
    DATA t38 TYPE REF TO zcl_lnt_syntax_input.
    CLEAR t38.
    DATA(t39) = VALUE string( ).
    DATA(t40) = VALUE string( ).
    DATA t41 TYPE REF TO zcl_lnt_abstract_file.
    CLEAR t41.
    DATA t42 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t42.
    DATA(t43) = t2.
    t42 = t43.
    t41 = t42.
    DATA(t44) = VALUE string( ).
    DATA(t45) = t41.
    t44 = t45->filename.
    t40 = t44.
    t39 = t40.
    DATA t46 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t46.
    DATA t47 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t47.
    DATA(t48) = me->reg.
    DATA t49 TYPE REF TO zif_lnt_object.
    CLEAR t49.
    DATA(t50) = t1.
    t49 ?= t50.
    t47 = zcl_lnt_current_scope=>build_default( i_reg_f149 = t48 i_obj_1ed0 = t49 ).
    t46 = t47.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    CREATE OBJECT t52.
    t51 = t52.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t54.
    CREATE OBJECT t54.
    t53 = t54.
    t38 = NEW zcl_lnt_syntax_input( i_scope = t46 i_filename = t39 i_issues = t51 i_deferred = t53 ).
    CREATE OBJECT t38->zlnt_view_ownkeys_b0e8086400eb.
    t38->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t55 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t56 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t57 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `deferred` p1 = t58 ).
    ENDIF.
    CREATE OBJECT t38->zlnt_json_ownkeys_70e5fd461788.
    t38->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t59) = |filename|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |scope|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |issues|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |deferred|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    t37 = t38.
    DATA(t67) = VALUE abap_bool( ).
    DATA(t68) = t1.
    t67 = xsdbool( t68 IS BOUND AND t68 IS INSTANCE OF zcl_lnt_ob_interface ).
    IF t67 = abap_true.
      DATA t69 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t69.
      DATA t70 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t70.
      DATA t71 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t71.
      DATA(t72) = t14.
      t71 = t72.
      DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
      t70 = t71->find_first_structure( i_type_9913 = t73 ).
      t69 = t70.
      DATA(t74) = VALUE abap_bool( ).
      DATA(t75) = t69.
      t74 = xsdbool( t75 IS BOUND ).
      IF t74 = abap_true.
        DATA t76 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t76.
        TRY.
            DATA t77 TYPE REF TO zcl_lnt_interface_definition.
            CLEAR t77.
            DATA t78 TYPE REF TO zcl_lnt_interface_definition.
            CLEAR t78.
            DATA t79 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t79.
            DATA(t80) = t69.
            t79 = t80.
            DATA(t81) = t37.
            t78 = NEW zcl_lnt_interface_definition( i_node = t79 i_input_967e = t81 ).
            t77 = t78.
            DATA t82 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t82.
            DATA(t83) = t1.
            DATA t84 TYPE REF TO object.
            CLEAR t84.
            t84 = t83.
            t82 ?= t84.
            DATA(t85) = t77.
            t82->st_dfn_ins_src_obj_int_ts_intr( i_def = t85 ).
          CATCH zlnt_exception_cl_30eec8e8805d INTO t76.
            DATA(t86) = t76->payload.
            DATA t87 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t87.
            DATA(t88) = t1.
            DATA t89 TYPE REF TO object.
            CLEAR t89.
            t89 = t88.
            t87 ?= t89.
            DATA t90 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t90.
            t87->st_dfn_ins_src_obj_int_ts_intr( i_def = t90 ).
        ENDTRY.
      ELSE.
        DATA t91 TYPE REF TO zcl_lnt_ob_interface.
        CLEAR t91.
        DATA(t92) = t1.
        DATA t93 TYPE REF TO object.
        CLEAR t93.
        t93 = t92.
        t91 ?= t93.
        DATA t94 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t94.
        t91->st_dfn_ins_src_obj_int_ts_intr( i_def = t94 ).
      ENDIF.
    ELSE.
      DATA t95 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t95.
      DATA t96 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t96.
      DATA t97 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t97.
      DATA(t98) = t14.
      t97 = t98.
      DATA(t99) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
      t96 = t97->find_first_structure( i_type_9913 = t99 ).
      t95 = t96.
      DATA(t100) = VALUE abap_bool( ).
      DATA(t101) = t95.
      t100 = xsdbool( t101 IS BOUND ).
      IF t100 = abap_true.
        DATA t102 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t102.
        TRY.
            DATA t103 TYPE REF TO zcl_lnt_ty_class_definition.
            CLEAR t103.
            DATA t104 TYPE REF TO zcl_lnt_ty_class_definition.
            CLEAR t104.
            DATA t105 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t105.
            DATA(t106) = t95.
            t105 = t106.
            DATA(t107) = t37.
            t104 = NEW zcl_lnt_ty_class_definition( i_node = t105 i_input_967e = t107 ).
            t103 = t104.
            DATA t108 TYPE REF TO zcl_lnt_class.
            CLEAR t108.
            DATA t109 TYPE REF TO zcl_lnt_class.
            CLEAR t109.
            DATA(t110) = t1.
            DATA t111 TYPE REF TO object.
            CLEAR t111.
            t111 = t110.
            t109 ?= t111.
            t108 = t109.
            DATA t112 TYPE REF TO zif_lnt_class_definition.
            CLEAR t112.
            DATA(t113) = t103.
            t112 = t113.
            DATA(t114) = t108.
            DATA(t115) = t112.
            t114->def = t115.
            DELETE t114->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
          CATCH zlnt_exception_cl_30eec8e8805d INTO t102.
            DATA(t116) = t102->payload.
            DATA t117 TYPE REF TO zcl_lnt_class.
            CLEAR t117.
            DATA t118 TYPE REF TO zcl_lnt_class.
            CLEAR t118.
            DATA(t119) = t1.
            DATA t120 TYPE REF TO object.
            CLEAR t120.
            t120 = t119.
            t118 ?= t120.
            t117 = t118.
            DATA(t121) = t117.
            DATA t122 TYPE REF TO zif_lnt_class_definition.
            CLEAR t122.
            t121->def = t122.
            DELETE t121->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
        ENDTRY.
      ELSE.
        DATA t123 TYPE REF TO zcl_lnt_class.
        CLEAR t123.
        DATA t124 TYPE REF TO zcl_lnt_class.
        CLEAR t124.
        DATA(t125) = t1.
        DATA t126 TYPE REF TO object.
        CLEAR t126.
        t126 = t125.
        t124 ?= t126.
        t123 = t124.
        DATA(t127) = t123.
        DATA t128 TYPE REF TO zif_lnt_class_definition.
        CLEAR t128.
        t127->def = t128.
        DELETE t127->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d849_8b3aa6261bd5.
  ENDMETHOD.
ENDCLASS.
