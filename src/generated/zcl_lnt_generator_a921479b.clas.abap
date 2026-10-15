* TS: src/registry.ts:122:3 generator.body.177058
CLASS zcl_lnt_generator_a921479b DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_generator_8f73cd1c.
    DATA state TYPE f.
    DATA running TYPE abap_bool.
    DATA local_name TYPE string.
    DATA local_t177043 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA local_type TYPE string.
    DATA outer TYPE REF TO zcl_lnt_registry.
    DATA local_machine177062 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA local_machine177063 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA local_machine177064 TYPE f.
    DATA local_machine177065 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA local_machine177066 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA local_machine177067 TYPE f.
    DATA local_machine177068 TYPE REF TO zcl_lnt_generator_17955b8b.
    METHODS constructor IMPORTING i_outer TYPE REF TO zcl_lnt_registry.
    METHODS next RETURNING VALUE(result) TYPE REF TO zcl_lnt_generator_17955b8b.
    METHODS close.
    METHODS iterate RETURNING VALUE(result) TYPE REF TO zif_lnt_generator_8f73cd1c.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_generator_a921479b IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_outer.
    DATA(t2) = t1.
    me->outer = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `outer`.
    DATA(t3) = CONV f( 13 ).
    me->state = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
  ENDMETHOD.

  METHOD next.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = CONV abap_bool( me->running ).
    IF t1 = abap_true.
      DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t3) = |src/registry.ts:122:3: reentrant generator next() is unsuppo|.
      t3 = t3 && |rted|.
      t2->source_location = t3.
      RAISE EXCEPTION t2.
    ENDIF.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = abap_false.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_generator_17955b8b.
    CLEAR t6.
    DATA(t7) = abap_true.
    me->running = t7.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `running`.
    DATA t8 TYPE REF TO cx_root.
    CLEAR t8.
    TRY.
        DO.
          DATA(t9) = VALUE abap_bool( ).
          DATA(t10) = t4.
          t9 = xsdbool( t10 = abap_false ).
          IF t9 = abap_false.
            EXIT.
          ENDIF.
          DATA(t11) = VALUE abap_bool( ).
          DATA(t12) = VALUE abap_bool( ).
          DATA(t13) = t4.
          t12 = xsdbool( t13 = abap_false ).
          t11 = t12.
          IF t12 = abap_true.
            DATA(t14) = VALUE abap_bool( ).
            DATA(t15) = CONV f( me->state ).
            DATA(t16) = CONV f( 0 ).
            t14 = xsdbool( t15 = t16 ).
            t11 = t14.
          ENDIF.
          IF t11 = abap_true.
            DATA(t17) = CONV f( 0 ).
            me->state = t17.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t18 TYPE REF TO zcl_lnt_generator_17955b8b.
            CLEAR t18.
            DATA(t19) = abap_true.
            DATA t20 TYPE REF TO zif_lnt_object.
            CLEAR t20.
            t18 = NEW zcl_lnt_generator_17955b8b( i_done = t19 i_value = t20 ).
            t6 = t18.
            DATA(t21) = abap_true.
            t4 = t21.
          ENDIF.
          DATA(t22) = VALUE abap_bool( ).
          DATA(t23) = VALUE abap_bool( ).
          DATA(t24) = t4.
          t23 = xsdbool( t24 = abap_false ).
          t22 = t23.
          IF t23 = abap_true.
            DATA(t25) = VALUE abap_bool( ).
            DATA(t26) = CONV f( me->state ).
            DATA(t27) = CONV f( 1 ).
            t25 = xsdbool( t26 = t27 ).
            t22 = t25.
          ENDIF.
          IF t22 = abap_true.
            DATA(t28) = CONV f( 0 ).
            me->state = t28.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t29) = VALUE abap_bool( ).
            DATA(t30) = CONV f( me->local_machine177064 ).
            DATA(t31) = VALUE f( ).
            DATA(t32) = VALUE i( ).
            DATA(t33) = me->local_machine177062.
            t33->load( ).
            t32 = lines( t33->items ).
            t31 = t32.
            t29 = xsdbool( t30 < t31 ).
            IF t29 = abap_true.
              DATA(t34) = CONV f( 12 ).
              me->state = t34.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              DATA(t35) = CONV f( 0 ).
              me->state = t35.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t36) = VALUE abap_bool( ).
          DATA(t37) = VALUE abap_bool( ).
          DATA(t38) = t4.
          t37 = xsdbool( t38 = abap_false ).
          t36 = t37.
          IF t37 = abap_true.
            DATA(t39) = VALUE abap_bool( ).
            DATA(t40) = CONV f( me->state ).
            DATA(t41) = CONV f( 2 ).
            t39 = xsdbool( t40 = t41 ).
            t36 = t39.
          ENDIF.
          IF t36 = abap_true.
            DATA(t42) = CONV f( 0 ).
            me->state = t42.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t43) = VALUE f( ).
            DATA(t44) = CONV f( me->local_machine177064 ).
            DATA(t45) = CONV f( 1 ).
            t43 = t44 + t45.
            me->local_machine177064 = t43.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177064`.
            DATA(t46) = CONV f( 1 ).
            me->state = t46.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t47) = VALUE abap_bool( ).
          DATA(t48) = VALUE abap_bool( ).
          DATA(t49) = t4.
          t48 = xsdbool( t49 = abap_false ).
          t47 = t48.
          IF t48 = abap_true.
            DATA(t50) = VALUE abap_bool( ).
            DATA(t51) = CONV f( me->state ).
            DATA(t52) = CONV f( 3 ).
            t50 = xsdbool( t51 = t52 ).
            t47 = t50.
          ENDIF.
          IF t47 = abap_true.
            DATA(t53) = CONV f( 0 ).
            me->state = t53.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t54) = VALUE abap_bool( ).
            DATA(t55) = CONV f( me->local_machine177067 ).
            DATA(t56) = VALUE f( ).
            DATA(t57) = VALUE i( ).
            DATA(t58) = me->local_machine177065.
            t58->load( ).
            t57 = lines( t58->items ).
            t56 = t57.
            t54 = xsdbool( t55 < t56 ).
            IF t54 = abap_true.
              DATA(t59) = CONV f( 7 ).
              me->state = t59.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              DATA(t60) = CONV f( 2 ).
              me->state = t60.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t61) = VALUE abap_bool( ).
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = t4.
          t62 = xsdbool( t63 = abap_false ).
          t61 = t62.
          IF t62 = abap_true.
            DATA(t64) = VALUE abap_bool( ).
            DATA(t65) = CONV f( me->state ).
            DATA(t66) = CONV f( 4 ).
            t64 = xsdbool( t65 = t66 ).
            t61 = t64.
          ENDIF.
          IF t61 = abap_true.
            DATA(t67) = CONV f( 0 ).
            me->state = t67.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t68) = VALUE f( ).
            DATA(t69) = CONV f( me->local_machine177067 ).
            DATA(t70) = CONV f( 1 ).
            t68 = t69 + t70.
            me->local_machine177067 = t68.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177067`.
            DATA(t71) = CONV f( 3 ).
            me->state = t71.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t72) = VALUE abap_bool( ).
          DATA(t73) = VALUE abap_bool( ).
          DATA(t74) = t4.
          t73 = xsdbool( t74 = abap_false ).
          t72 = t73.
          IF t73 = abap_true.
            DATA(t75) = VALUE abap_bool( ).
            DATA(t76) = CONV f( me->state ).
            DATA(t77) = CONV f( 5 ).
            t75 = xsdbool( t76 = t77 ).
            t72 = t75.
          ENDIF.
          IF t72 = abap_true.
            DATA(t78) = CONV f( 0 ).
            me->state = t78.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t79 TYPE REF TO zcl_lnt_generator_17955b8b.
            CLEAR t79.
            DATA(t80) = abap_false.
            DATA t81 TYPE REF TO zif_lnt_object.
            CLEAR t81.
            DATA(t82) = abap_true.
            IF t82 = abap_true.
              DATA t83 TYPE REF TO zif_lnt_object.
              CLEAR t83.
              DATA t84 TYPE REF TO zif_lnt_object.
              CLEAR t84.
              DATA t85 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
              CLEAR t85.
              DATA t86 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
              CLEAR t86.
              DATA t87 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
              CLEAR t87.
              DATA(t88) = me->outer.
              t87 = t88->objects.
              DATA(t89) = CONV string( me->local_name ).
              t86 = t87->get( p0 = t89 ).
              t85 = t86.
              DATA(t90) = CONV string( me->local_type ).
              t84 = t85->get( p0 = t90 ).
              t83 = t84.
              t81 = t83.
            ELSE.
              DATA t91 TYPE REF TO zif_lnt_object.
              CLEAR t91.
              t81 = t91.
            ENDIF.
            t79 = NEW zcl_lnt_generator_17955b8b( i_done = t80 i_value = t81 ).
            me->local_machine177068 = t79.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177068`.
            DATA(t92) = CONV f( 4 ).
            me->state = t92.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t93) = me->local_machine177068.
            t6 = t93.
            DATA(t94) = abap_true.
            t4 = t94.
          ENDIF.
          DATA(t95) = VALUE abap_bool( ).
          DATA(t96) = VALUE abap_bool( ).
          DATA(t97) = t4.
          t96 = xsdbool( t97 = abap_false ).
          t95 = t96.
          IF t96 = abap_true.
            DATA(t98) = VALUE abap_bool( ).
            DATA(t99) = CONV f( me->state ).
            DATA(t100) = CONV f( 6 ).
            t98 = xsdbool( t99 = t100 ).
            t95 = t98.
          ENDIF.
          IF t95 = abap_true.
            DATA(t101) = CONV f( 0 ).
            me->state = t101.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t102) = VALUE abap_bool( ).
            DATA(t103) = me->local_machine177066.
            DATA(t104) = CONV string( me->local_type ).
            t102 = t103->has( p0 = t104 ).
            IF t102 = abap_true.
              DATA(t105) = CONV f( 5 ).
              me->state = t105.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              DATA(t106) = CONV f( 4 ).
              me->state = t106.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t107) = VALUE abap_bool( ).
          DATA(t108) = VALUE abap_bool( ).
          DATA(t109) = t4.
          t108 = xsdbool( t109 = abap_false ).
          t107 = t108.
          IF t108 = abap_true.
            DATA(t110) = VALUE abap_bool( ).
            DATA(t111) = CONV f( me->state ).
            DATA(t112) = CONV f( 7 ).
            t110 = xsdbool( t111 = t112 ).
            t107 = t110.
          ENDIF.
          IF t107 = abap_true.
            DATA(t113) = CONV f( 0 ).
            me->state = t113.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t114) = VALUE string( ).
            DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t115.
            DATA(t116) = me->local_machine177065.
            DATA(t117) = VALUE i( ).
            DATA(t118) = CONV f( me->local_machine177067 ).
            IF t118 > range_i32_upper.
              t117 = range_i32_upper.
            ELSEIF t118 < range_i32_lower.
              t117 = range_i32_lower.
            ELSE.
              t117 = trunc( t118 ).
            ENDIF.
            t115 = t116->get( p0 = t117 ).
            t114 = t115->value.
            me->local_type = t114.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_type`.
            DATA(t119) = CONV f( 6 ).
            me->state = t119.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t120) = VALUE abap_bool( ).
          DATA(t121) = VALUE abap_bool( ).
          DATA(t122) = t4.
          t121 = xsdbool( t122 = abap_false ).
          t120 = t121.
          IF t121 = abap_true.
            DATA(t123) = VALUE abap_bool( ).
            DATA(t124) = CONV f( me->state ).
            DATA(t125) = CONV f( 8 ).
            t123 = xsdbool( t124 = t125 ).
            t120 = t123.
          ENDIF.
          IF t120 = abap_true.
            DATA(t126) = CONV f( 0 ).
            me->state = t126.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t127 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
            CLEAR t127.
            DATA(t128) = me->local_t177043.
            t127 = t128.
            me->local_machine177066 = t127.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177066`.
            DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t129.
            DATA(t130) = me->local_machine177066.
            t129 = t130->keys( ).
            me->local_machine177065 = t129.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177065`.
            DATA(t131) = CONV f( 0 ).
            me->local_machine177067 = t131.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177067`.
            DATA(t132) = CONV f( 3 ).
            me->state = t132.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t133) = VALUE abap_bool( ).
          DATA(t134) = VALUE abap_bool( ).
          DATA(t135) = t4.
          t134 = xsdbool( t135 = abap_false ).
          t133 = t134.
          IF t134 = abap_true.
            DATA(t136) = VALUE abap_bool( ).
            DATA(t137) = CONV f( me->state ).
            DATA(t138) = CONV f( 9 ).
            t136 = xsdbool( t137 = t138 ).
            t133 = t136.
          ENDIF.
          IF t133 = abap_true.
            DATA(t139) = CONV f( 0 ).
            me->state = t139.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t140) = VALUE abap_bool( ).
            DATA(t141) = VALUE abap_bool( ).
            DATA(t142) = me->local_t177043.
            IF t142 IS INITIAL.
              t141 = abap_true.
            ENDIF.
            t140 = xsdbool( t141 = abap_false ).
            IF t140 = abap_true.
              DATA(t143) = CONV f( 8 ).
              me->state = t143.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              DATA(t144) = CONV f( 2 ).
              me->state = t144.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t145) = VALUE abap_bool( ).
          DATA(t146) = VALUE abap_bool( ).
          DATA(t147) = t4.
          t146 = xsdbool( t147 = abap_false ).
          t145 = t146.
          IF t146 = abap_true.
            DATA(t148) = VALUE abap_bool( ).
            DATA(t149) = CONV f( me->state ).
            DATA(t150) = CONV f( 10 ).
            t148 = xsdbool( t149 = t150 ).
            t145 = t148.
          ENDIF.
          IF t145 = abap_true.
            DATA(t151) = CONV f( 0 ).
            me->state = t151.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t152 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
            CLEAR t152.
            DATA t153 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
            CLEAR t153.
            DATA(t154) = me->outer.
            t153 = t154->objects.
            DATA(t155) = CONV string( me->local_name ).
            t152 = t153->get( p0 = t155 ).
            me->local_t177043 = t152.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_t177043`.
            DATA(t156) = CONV f( 9 ).
            me->state = t156.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t157) = VALUE abap_bool( ).
          DATA(t158) = VALUE abap_bool( ).
          DATA(t159) = t4.
          t158 = xsdbool( t159 = abap_false ).
          t157 = t158.
          IF t158 = abap_true.
            DATA(t160) = VALUE abap_bool( ).
            DATA(t161) = CONV f( me->state ).
            DATA(t162) = CONV f( 11 ).
            t160 = xsdbool( t161 = t162 ).
            t157 = t160.
          ENDIF.
          IF t157 = abap_true.
            DATA(t163) = CONV f( 0 ).
            me->state = t163.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t164) = VALUE abap_bool( ).
            DATA(t165) = me->local_machine177063.
            DATA(t166) = CONV string( me->local_name ).
            t164 = t165->has( p0 = t166 ).
            IF t164 = abap_true.
              DATA(t167) = CONV f( 10 ).
              me->state = t167.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              DATA(t168) = CONV f( 2 ).
              me->state = t168.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t169) = VALUE abap_bool( ).
          DATA(t170) = VALUE abap_bool( ).
          DATA(t171) = t4.
          t170 = xsdbool( t171 = abap_false ).
          t169 = t170.
          IF t170 = abap_true.
            DATA(t172) = VALUE abap_bool( ).
            DATA(t173) = CONV f( me->state ).
            DATA(t174) = CONV f( 12 ).
            t172 = xsdbool( t173 = t174 ).
            t169 = t172.
          ENDIF.
          IF t169 = abap_true.
            DATA(t175) = CONV f( 0 ).
            me->state = t175.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t176) = VALUE string( ).
            DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t177.
            DATA(t178) = me->local_machine177062.
            DATA(t179) = VALUE i( ).
            DATA(t180) = CONV f( me->local_machine177064 ).
            IF t180 > range_i32_upper.
              t179 = range_i32_upper.
            ELSEIF t180 < range_i32_lower.
              t179 = range_i32_lower.
            ELSE.
              t179 = trunc( t180 ).
            ENDIF.
            t177 = t178->get( p0 = t179 ).
            t176 = t177->value.
            me->local_name = t176.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_name`.
            DATA(t181) = CONV f( 11 ).
            me->state = t181.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t182) = VALUE abap_bool( ).
          DATA(t183) = VALUE abap_bool( ).
          DATA(t184) = t4.
          t183 = xsdbool( t184 = abap_false ).
          t182 = t183.
          IF t183 = abap_true.
            DATA(t185) = VALUE abap_bool( ).
            DATA(t186) = CONV f( me->state ).
            DATA(t187) = CONV f( 13 ).
            t185 = xsdbool( t186 = t187 ).
            t182 = t185.
          ENDIF.
          IF t182 = abap_true.
            DATA(t188) = CONV f( 0 ).
            me->state = t188.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t189 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
            CLEAR t189.
            DATA(t190) = me->outer.
            t189 = t190->objects.
            me->local_machine177063 = t189.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177063`.
            DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t191.
            DATA(t192) = me->local_machine177063.
            t191 = t192->keys( ).
            me->local_machine177062 = t191.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177062`.
            DATA(t193) = CONV f( 0 ).
            me->local_machine177064 = t193.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177064`.
            DATA(t194) = CONV f( 1 ).
            me->state = t194.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
        ENDDO.
      CATCH cx_root INTO t8.
        DATA(t195) = abap_false.
        me->running = t195.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `running`.
        RAISE EXCEPTION t8.
    ENDTRY.
    DATA(t196) = abap_false.
    me->running = t196.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `running`.
    DATA(t197) = t6.
    result = t197.

  ENDMETHOD.

  METHOD close.
    DATA(t1) = CONV f( 0 ).
    me->state = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
  ENDMETHOD.

  METHOD iterate.
    DATA t1 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA(t2) = me.
    t1 ?= t2.
    result = t1.

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
    result = zlnt_runtime_desc_c8762dfcc211=>zlnt_member_d4_13543b5ca4726d.
  ENDMETHOD.

  METHOD zif_lnt_generator_8f73cd1c~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_generator_8f73cd1c~next.
    result = me->next( ).
  ENDMETHOD.

  METHOD zif_lnt_generator_8f73cd1c~close.
    me->close( ).
  ENDMETHOD.

  METHOD zif_lnt_generator_8f73cd1c~iterate.
    result = me->iterate( ).
  ENDMETHOD.
ENDCLASS.
