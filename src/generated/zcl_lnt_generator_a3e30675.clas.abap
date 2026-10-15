* TS: src/registry.ts:136:3 generator.body.177111
CLASS zcl_lnt_generator_a3e30675 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_generator_75a8ddd7.
    DATA state TYPE f.
    DATA running TYPE abap_bool.
    DATA local_generator_iter177110 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA local_generator_step177110 TYPE REF TO zcl_lnt_generator_17955b8b.
    DATA local_obj TYPE REF TO zif_lnt_object.
    DATA local_file TYPE REF TO zif_lnt_file.
    DATA outer TYPE REF TO zcl_lnt_registry.
    DATA local_machine177115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA local_machine177116 TYPE f.
    DATA local_machine177117 TYPE REF TO zcl_lnt_generator_09f740e3.
    METHODS constructor IMPORTING i_outer TYPE REF TO zcl_lnt_registry.
    METHODS next RETURNING VALUE(result) TYPE REF TO zcl_lnt_generator_09f740e3.
    METHODS close.
    METHODS iterate RETURNING VALUE(result) TYPE REF TO zif_lnt_generator_75a8ddd7.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_generator_a3e30675 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_outer.
    DATA(t2) = t1.
    me->outer = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `outer`.
    DATA(t3) = CONV f( 11 ).
    me->state = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
  ENDMETHOD.

  METHOD next.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = CONV abap_bool( me->running ).
    IF t1 = abap_true.
      DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t3) = |src/registry.ts:136:3: reentrant generator next() is unsuppo|.
      t3 = t3 && |rted|.
      t2->source_location = t3.
      RAISE EXCEPTION t2.
    ENDIF.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = abap_false.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_generator_09f740e3.
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
            DATA t18 TYPE REF TO zcl_lnt_generator_09f740e3.
            CLEAR t18.
            DATA(t19) = abap_true.
            DATA t20 TYPE REF TO zif_lnt_file.
            CLEAR t20.
            t18 = NEW zcl_lnt_generator_09f740e3( i_done = t19 i_value = t20 ).
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
            DATA(t29) = abap_true.
            IF t29 = abap_true.
              DATA(t30) = CONV f( 10 ).
              me->state = t30.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              DATA(t31) = CONV f( 0 ).
              me->state = t31.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t32) = VALUE abap_bool( ).
          DATA(t33) = VALUE abap_bool( ).
          DATA(t34) = t4.
          t33 = xsdbool( t34 = abap_false ).
          t32 = t33.
          IF t33 = abap_true.
            DATA(t35) = VALUE abap_bool( ).
            DATA(t36) = CONV f( me->state ).
            DATA(t37) = CONV f( 2 ).
            t35 = xsdbool( t36 = t37 ).
            t32 = t35.
          ENDIF.
          IF t32 = abap_true.
            DATA(t38) = CONV f( 0 ).
            me->state = t38.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t39) = VALUE abap_bool( ).
            DATA(t40) = CONV f( me->local_machine177116 ).
            DATA(t41) = VALUE f( ).
            DATA(t42) = VALUE i( ).
            DATA(t43) = me->local_machine177115.
            t43->load( ).
            t42 = lines( t43->items ).
            t41 = t42.
            t39 = xsdbool( t40 < t41 ).
            IF t39 = abap_true.
              DATA(t44) = CONV f( 5 ).
              me->state = t44.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              DATA(t45) = CONV f( 1 ).
              me->state = t45.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t46) = VALUE abap_bool( ).
          DATA(t47) = VALUE abap_bool( ).
          DATA(t48) = t4.
          t47 = xsdbool( t48 = abap_false ).
          t46 = t47.
          IF t47 = abap_true.
            DATA(t49) = VALUE abap_bool( ).
            DATA(t50) = CONV f( me->state ).
            DATA(t51) = CONV f( 3 ).
            t49 = xsdbool( t50 = t51 ).
            t46 = t49.
          ENDIF.
          IF t46 = abap_true.
            DATA(t52) = CONV f( 0 ).
            me->state = t52.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t53) = VALUE f( ).
            DATA(t54) = CONV f( me->local_machine177116 ).
            DATA(t55) = CONV f( 1 ).
            t53 = t54 + t55.
            me->local_machine177116 = t53.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177116`.
            DATA(t56) = CONV f( 2 ).
            me->state = t56.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = VALUE abap_bool( ).
          DATA(t59) = t4.
          t58 = xsdbool( t59 = abap_false ).
          t57 = t58.
          IF t58 = abap_true.
            DATA(t60) = VALUE abap_bool( ).
            DATA(t61) = CONV f( me->state ).
            DATA(t62) = CONV f( 4 ).
            t60 = xsdbool( t61 = t62 ).
            t57 = t60.
          ENDIF.
          IF t57 = abap_true.
            DATA(t63) = CONV f( 0 ).
            me->state = t63.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t64 TYPE REF TO zcl_lnt_generator_09f740e3.
            CLEAR t64.
            DATA(t65) = abap_false.
            DATA t66 TYPE REF TO zif_lnt_file.
            CLEAR t66.
            DATA(t67) = abap_true.
            IF t67 = abap_true.
              DATA(t68) = me->local_file.
              t66 = t68.
            ELSE.
              DATA t69 TYPE REF TO zif_lnt_file.
              CLEAR t69.
              t66 = t69.
            ENDIF.
            t64 = NEW zcl_lnt_generator_09f740e3( i_done = t65 i_value = t66 ).
            me->local_machine177117 = t64.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177117`.
            DATA(t70) = CONV f( 3 ).
            me->state = t70.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t71) = me->local_machine177117.
            t6 = t71.
            DATA(t72) = abap_true.
            t4 = t72.
          ENDIF.
          DATA(t73) = VALUE abap_bool( ).
          DATA(t74) = VALUE abap_bool( ).
          DATA(t75) = t4.
          t74 = xsdbool( t75 = abap_false ).
          t73 = t74.
          IF t74 = abap_true.
            DATA(t76) = VALUE abap_bool( ).
            DATA(t77) = CONV f( me->state ).
            DATA(t78) = CONV f( 5 ).
            t76 = xsdbool( t77 = t78 ).
            t73 = t76.
          ENDIF.
          IF t73 = abap_true.
            DATA(t79) = CONV f( 0 ).
            me->state = t79.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t80 TYPE REF TO zif_lnt_file.
            CLEAR t80.
            DATA t81 TYPE REF TO zif_lnt_file.
            CLEAR t81.
            DATA(t82) = me->local_machine177115.
            DATA(t83) = VALUE i( ).
            DATA(t84) = CONV f( me->local_machine177116 ).
            IF t84 > range_i32_upper.
              t83 = range_i32_upper.
            ELSEIF t84 < range_i32_lower.
              t83 = range_i32_lower.
            ELSE.
              t83 = trunc( t84 ).
            ENDIF.
            DATA t85 TYPE REF TO object.
            CLEAR t85.
            t85 = t82->get( p0 = t83 ).
            DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t86.
            CLEAR t81.
            IF t85 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t86 ?= t85.
              DATA t87 TYPE REF TO object.
              CLEAR t87.
              t87 = t86->as_ref( ).
              t81 ?= t87.
            ELSE.
              t81 ?= t85.
            ENDIF.
            t80 = t81.
            me->local_file = t80.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_file`.
            DATA(t88) = CONV f( 4 ).
            me->state = t88.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t89) = VALUE abap_bool( ).
          DATA(t90) = VALUE abap_bool( ).
          DATA(t91) = t4.
          t90 = xsdbool( t91 = abap_false ).
          t89 = t90.
          IF t90 = abap_true.
            DATA(t92) = VALUE abap_bool( ).
            DATA(t93) = CONV f( me->state ).
            DATA(t94) = CONV f( 6 ).
            t92 = xsdbool( t93 = t94 ).
            t89 = t92.
          ENDIF.
          IF t89 = abap_true.
            DATA(t95) = CONV f( 0 ).
            me->state = t95.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t96.
            DATA(t97) = me->local_obj.
            t96 = t97->get_files( ).
            me->local_machine177115 = t96.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177115`.
            DATA(t98) = CONV f( 0 ).
            me->local_machine177116 = t98.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177116`.
            DATA(t99) = CONV f( 2 ).
            me->state = t99.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t100) = VALUE abap_bool( ).
          DATA(t101) = VALUE abap_bool( ).
          DATA(t102) = t4.
          t101 = xsdbool( t102 = abap_false ).
          t100 = t101.
          IF t101 = abap_true.
            DATA(t103) = VALUE abap_bool( ).
            DATA(t104) = CONV f( me->state ).
            DATA(t105) = CONV f( 7 ).
            t103 = xsdbool( t104 = t105 ).
            t100 = t103.
          ENDIF.
          IF t100 = abap_true.
            DATA(t106) = CONV f( 0 ).
            me->state = t106.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t107 TYPE REF TO zif_lnt_object.
            CLEAR t107.
            DATA t108 TYPE REF TO zif_lnt_object.
            CLEAR t108.
            DATA(t109) = me->local_generator_step177110.
            t108 = t109->value.
            t107 = t108.
            me->local_obj = t107.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_obj`.
            DATA(t110) = CONV f( 6 ).
            me->state = t110.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t111) = VALUE abap_bool( ).
          DATA(t112) = VALUE abap_bool( ).
          DATA(t113) = t4.
          t112 = xsdbool( t113 = abap_false ).
          t111 = t112.
          IF t112 = abap_true.
            DATA(t114) = VALUE abap_bool( ).
            DATA(t115) = CONV f( me->state ).
            DATA(t116) = CONV f( 8 ).
            t114 = xsdbool( t115 = t116 ).
            t111 = t114.
          ENDIF.
          IF t111 = abap_true.
            DATA(t117) = CONV f( 0 ).
            me->state = t117.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t118) = CONV f( 0 ).
            me->state = t118.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t119) = VALUE abap_bool( ).
          DATA(t120) = VALUE abap_bool( ).
          DATA(t121) = t4.
          t120 = xsdbool( t121 = abap_false ).
          t119 = t120.
          IF t120 = abap_true.
            DATA(t122) = VALUE abap_bool( ).
            DATA(t123) = CONV f( me->state ).
            DATA(t124) = CONV f( 9 ).
            t122 = xsdbool( t123 = t124 ).
            t119 = t122.
          ENDIF.
          IF t119 = abap_true.
            DATA(t125) = CONV f( 0 ).
            me->state = t125.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t126) = VALUE abap_bool( ).
            DATA(t127) = me->local_generator_step177110.
            t126 = t127->done.
            IF t126 = abap_true.
              DATA(t128) = CONV f( 8 ).
              me->state = t128.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              DATA(t129) = CONV f( 7 ).
              me->state = t129.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t130) = VALUE abap_bool( ).
          DATA(t131) = VALUE abap_bool( ).
          DATA(t132) = t4.
          t131 = xsdbool( t132 = abap_false ).
          t130 = t131.
          IF t131 = abap_true.
            DATA(t133) = VALUE abap_bool( ).
            DATA(t134) = CONV f( me->state ).
            DATA(t135) = CONV f( 10 ).
            t133 = xsdbool( t134 = t135 ).
            t130 = t133.
          ENDIF.
          IF t130 = abap_true.
            DATA(t136) = CONV f( 0 ).
            me->state = t136.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t137 TYPE REF TO zcl_lnt_generator_17955b8b.
            CLEAR t137.
            DATA(t138) = me->local_generator_iter177110.
            t137 = t138->next( ).
            me->local_generator_step177110 = t137.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_generatorStep177110`.
            DATA(t139) = CONV f( 9 ).
            me->state = t139.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t140) = VALUE abap_bool( ).
          DATA(t141) = VALUE abap_bool( ).
          DATA(t142) = t4.
          t141 = xsdbool( t142 = abap_false ).
          t140 = t141.
          IF t141 = abap_true.
            DATA(t143) = VALUE abap_bool( ).
            DATA(t144) = CONV f( me->state ).
            DATA(t145) = CONV f( 11 ).
            t143 = xsdbool( t144 = t145 ).
            t140 = t143.
          ENDIF.
          IF t140 = abap_true.
            DATA(t146) = CONV f( 0 ).
            me->state = t146.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t147 TYPE REF TO zif_lnt_generator_8f73cd1c.
            CLEAR t147.
            DATA t148 TYPE REF TO zif_lnt_generator_8f73cd1c.
            CLEAR t148.
            DATA t149 TYPE REF TO zcl_lnt_registry.
            CLEAR t149.
            DATA(t150) = me->outer.
            t149 = t150.
            DATA t151 TYPE REF TO zif_lnt_generator_8f73cd1c.
            CLEAR t151.
            DATA t152 TYPE REF TO zcl_lnt_generator_a921479b.
            CLEAR t152.
            DATA(t153) = t149.
            t152 = NEW zcl_lnt_generator_a921479b( i_outer = t153 ).
            t151 ?= t152.
            t148 = t151.
            t147 = t148->iterate( ).
            me->local_generator_iter177110 = t147.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_generatorIter177110`.
            DATA(t154) = CONV f( 1 ).
            me->state = t154.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
        ENDDO.
      CATCH cx_root INTO t8.
        DATA(t155) = abap_false.
        me->running = t155.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `running`.
        RAISE EXCEPTION t8.
    ENDTRY.
    DATA(t156) = abap_false.
    me->running = t156.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `running`.
    DATA(t157) = t6.
    result = t157.

  ENDMETHOD.

  METHOD close.
    DATA(t1) = CONV f( 0 ).
    me->state = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
    DATA t2 TYPE abap_bool.
    DATA(t3) = me->local_generator_iter177110.
    t2 = xsdbool( t3 IS BOUND ).
    IF t2 = abap_true.
      DATA(t4) = me->local_generator_iter177110.
      t4->close( ).
    ENDIF.
  ENDMETHOD.

  METHOD iterate.
    DATA t1 TYPE REF TO zif_lnt_generator_75a8ddd7.
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
    result = zlnt_runtime_desc_c8762dfcc211=>zlnt_member_d6_5c37d88667ed48.
  ENDMETHOD.

  METHOD zif_lnt_generator_75a8ddd7~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_generator_75a8ddd7~next.
    result = me->next( ).
  ENDMETHOD.

  METHOD zif_lnt_generator_75a8ddd7~close.
    me->close( ).
  ENDMETHOD.

  METHOD zif_lnt_generator_75a8ddd7~iterate.
    result = me->iterate( ).
  ENDMETHOD.
ENDCLASS.
