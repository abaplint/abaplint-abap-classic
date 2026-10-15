* TS: src/registry.ts:130:3 generator.body.177091
CLASS zcl_lnt_generator_b69d4f9f DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_generator_8f73cd1c.
    DATA state TYPE f.
    DATA running TYPE abap_bool.
    DATA local_type TYPE string.
    DATA local_t177077 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA local_name TYPE string.
    DATA outer TYPE REF TO zcl_lnt_registry.
    DATA local_machine177095 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA local_machine177096 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA local_machine177097 TYPE f.
    DATA local_machine177098 TYPE REF TO zcl_lnt_generator_17955b8b.
    METHODS constructor IMPORTING i_type_9913 TYPE string i_outer TYPE REF TO zcl_lnt_registry.
    METHODS next RETURNING VALUE(result) TYPE REF TO zcl_lnt_generator_17955b8b.
    METHODS close.
    METHODS iterate RETURNING VALUE(result) TYPE REF TO zif_lnt_generator_8f73cd1c.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_generator_b69d4f9f IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_outer.
    DATA(t3) = t1.
    me->local_type = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_type`.
    DATA(t4) = t2.
    me->outer = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `outer`.
    DATA(t5) = CONV f( 8 ).
    me->state = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
  ENDMETHOD.

  METHOD next.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = CONV abap_bool( me->running ).
    IF t1 = abap_true.
      DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t3) = |src/registry.ts:130:3: reentrant generator next() is unsuppo|.
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
            DATA(t30) = CONV f( me->local_machine177097 ).
            DATA(t31) = VALUE f( ).
            DATA(t32) = VALUE i( ).
            DATA(t33) = me->local_machine177095.
            t33->load( ).
            t32 = lines( t33->items ).
            t31 = t32.
            t29 = xsdbool( t30 < t31 ).
            IF t29 = abap_true.
              DATA(t34) = CONV f( 5 ).
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
            DATA(t44) = CONV f( me->local_machine177097 ).
            DATA(t45) = CONV f( 1 ).
            t43 = t44 + t45.
            me->local_machine177097 = t43.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177097`.
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
            DATA t54 TYPE REF TO zcl_lnt_generator_17955b8b.
            CLEAR t54.
            DATA(t55) = abap_false.
            DATA t56 TYPE REF TO zif_lnt_object.
            CLEAR t56.
            DATA(t57) = abap_true.
            IF t57 = abap_true.
              DATA t58 TYPE REF TO zif_lnt_object.
              CLEAR t58.
              DATA t59 TYPE REF TO zif_lnt_object.
              CLEAR t59.
              DATA t60 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
              CLEAR t60.
              DATA t61 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
              CLEAR t61.
              DATA t62 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
              CLEAR t62.
              DATA(t63) = me->outer.
              t62 = t63->objects_by_type.
              DATA(t64) = CONV string( me->local_type ).
              t61 = t62->get( p0 = t64 ).
              t60 = t61.
              DATA(t65) = CONV string( me->local_name ).
              t59 = t60->get( p0 = t65 ).
              t58 = t59.
              t56 = t58.
            ELSE.
              DATA t66 TYPE REF TO zif_lnt_object.
              CLEAR t66.
              t56 = t66.
            ENDIF.
            t54 = NEW zcl_lnt_generator_17955b8b( i_done = t55 i_value = t56 ).
            me->local_machine177098 = t54.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177098`.
            DATA(t67) = CONV f( 2 ).
            me->state = t67.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t68) = me->local_machine177098.
            t6 = t68.
            DATA(t69) = abap_true.
            t4 = t69.
          ENDIF.
          DATA(t70) = VALUE abap_bool( ).
          DATA(t71) = VALUE abap_bool( ).
          DATA(t72) = t4.
          t71 = xsdbool( t72 = abap_false ).
          t70 = t71.
          IF t71 = abap_true.
            DATA(t73) = VALUE abap_bool( ).
            DATA(t74) = CONV f( me->state ).
            DATA(t75) = CONV f( 4 ).
            t73 = xsdbool( t74 = t75 ).
            t70 = t73.
          ENDIF.
          IF t70 = abap_true.
            DATA(t76) = CONV f( 0 ).
            me->state = t76.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t77) = VALUE abap_bool( ).
            DATA(t78) = me->local_machine177096.
            DATA(t79) = CONV string( me->local_name ).
            t77 = t78->has( p0 = t79 ).
            IF t77 = abap_true.
              DATA(t80) = CONV f( 3 ).
              me->state = t80.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              DATA(t81) = CONV f( 2 ).
              me->state = t81.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t82) = VALUE abap_bool( ).
          DATA(t83) = VALUE abap_bool( ).
          DATA(t84) = t4.
          t83 = xsdbool( t84 = abap_false ).
          t82 = t83.
          IF t83 = abap_true.
            DATA(t85) = VALUE abap_bool( ).
            DATA(t86) = CONV f( me->state ).
            DATA(t87) = CONV f( 5 ).
            t85 = xsdbool( t86 = t87 ).
            t82 = t85.
          ENDIF.
          IF t82 = abap_true.
            DATA(t88) = CONV f( 0 ).
            me->state = t88.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t89) = VALUE string( ).
            DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t90.
            DATA(t91) = me->local_machine177095.
            DATA(t92) = VALUE i( ).
            DATA(t93) = CONV f( me->local_machine177097 ).
            IF t93 > range_i32_upper.
              t92 = range_i32_upper.
            ELSEIF t93 < range_i32_lower.
              t92 = range_i32_lower.
            ELSE.
              t92 = trunc( t93 ).
            ENDIF.
            t90 = t91->get( p0 = t92 ).
            t89 = t90->value.
            me->local_name = t89.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_name`.
            DATA(t94) = CONV f( 4 ).
            me->state = t94.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
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
            DATA t102 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
            CLEAR t102.
            DATA(t103) = me->local_t177077.
            t102 = t103.
            me->local_machine177096 = t102.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177096`.
            DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t104.
            DATA(t105) = me->local_machine177096.
            t104 = t105->keys( ).
            me->local_machine177095 = t104.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177095`.
            DATA(t106) = CONV f( 0 ).
            me->local_machine177097 = t106.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177097`.
            DATA(t107) = CONV f( 1 ).
            me->state = t107.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t108) = VALUE abap_bool( ).
          DATA(t109) = VALUE abap_bool( ).
          DATA(t110) = t4.
          t109 = xsdbool( t110 = abap_false ).
          t108 = t109.
          IF t109 = abap_true.
            DATA(t111) = VALUE abap_bool( ).
            DATA(t112) = CONV f( me->state ).
            DATA(t113) = CONV f( 7 ).
            t111 = xsdbool( t112 = t113 ).
            t108 = t111.
          ENDIF.
          IF t108 = abap_true.
            DATA(t114) = CONV f( 0 ).
            me->state = t114.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t115) = VALUE abap_bool( ).
            DATA(t116) = VALUE abap_bool( ).
            DATA(t117) = me->local_t177077.
            IF t117 IS INITIAL.
              t116 = abap_true.
            ENDIF.
            t115 = xsdbool( t116 = abap_false ).
            IF t115 = abap_true.
              DATA(t118) = CONV f( 6 ).
              me->state = t118.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              DATA(t119) = CONV f( 0 ).
              me->state = t119.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
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
            DATA t128 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
            CLEAR t128.
            DATA(t129) = me->outer.
            t128 = t129->objects_by_type.
            DATA(t130) = CONV string( me->local_type ).
            t127 = t128->get( p0 = t130 ).
            me->local_t177077 = t127.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_t177077`.
            DATA(t131) = CONV f( 7 ).
            me->state = t131.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
        ENDDO.
      CATCH cx_root INTO t8.
        DATA(t132) = abap_false.
        me->running = t132.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `running`.
        RAISE EXCEPTION t8.
    ENDTRY.
    DATA(t133) = abap_false.
    me->running = t133.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `running`.
    DATA(t134) = t6.
    result = t134.

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
    result = zlnt_runtime_desc_c8762dfcc211=>zlnt_member_d5_fe178efb571dcf.
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
