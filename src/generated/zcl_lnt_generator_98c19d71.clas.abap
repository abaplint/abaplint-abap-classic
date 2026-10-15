* TS: src/abap/types/method_definitions.ts:18:3 generator.body.129751
CLASS zcl_lnt_generator_98c19d71 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_generator_0f59ca3c.
    DATA state TYPE f.
    DATA running TYPE abap_bool.
    DATA local_a TYPE string.
    DATA outer TYPE REF TO zcl_lnt_method_definitions.
    DATA local_machine129755 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA local_machine129756 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
    DATA local_machine129757 TYPE f.
    DATA local_machine129758 TYPE REF TO zcl_lnt_generator_0f216880.
    METHODS constructor IMPORTING i_outer TYPE REF TO zcl_lnt_method_definitions.
    METHODS next RETURNING VALUE(result) TYPE REF TO zcl_lnt_generator_0f216880.
    METHODS close.
    METHODS iterate RETURNING VALUE(result) TYPE REF TO zif_lnt_generator_0f59ca3c.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_generator_98c19d71 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_outer.
    DATA(t2) = t1.
    me->outer = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `outer`.
    DATA(t3) = CONV f( 6 ).
    me->state = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
  ENDMETHOD.

  METHOD next.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = CONV abap_bool( me->running ).
    IF t1 = abap_true.
      DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t3) = |src/abap/types/method_definitions.ts:18:3: reentrant generat|.
      t3 = t3 && |or next() is unsupported|.
      t2->source_location = t3.
      RAISE EXCEPTION t2.
    ENDIF.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = abap_false.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_generator_0f216880.
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
            DATA t18 TYPE REF TO zcl_lnt_generator_0f216880.
            CLEAR t18.
            DATA(t19) = abap_true.
            DATA t20 TYPE REF TO zif_lnt_method_definition.
            CLEAR t20.
            t18 = NEW zcl_lnt_generator_0f216880( i_done = t19 i_value = t20 ).
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
            DATA(t30) = CONV f( me->local_machine129757 ).
            DATA(t31) = VALUE f( ).
            DATA(t32) = VALUE i( ).
            DATA(t33) = me->local_machine129755.
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
            DATA(t44) = CONV f( me->local_machine129757 ).
            DATA(t45) = CONV f( 1 ).
            t43 = t44 + t45.
            me->local_machine129757 = t43.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine129757`.
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
            DATA t54 TYPE REF TO zcl_lnt_generator_0f216880.
            CLEAR t54.
            DATA(t55) = abap_false.
            DATA t56 TYPE REF TO zif_lnt_method_definition.
            CLEAR t56.
            DATA(t57) = abap_true.
            IF t57 = abap_true.
              DATA t58 TYPE REF TO zif_lnt_method_definition.
              CLEAR t58.
              DATA t59 TYPE REF TO zif_lnt_method_definition.
              CLEAR t59.
              DATA t60 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
              CLEAR t60.
              DATA(t61) = me->outer.
              t60 = t61->all.
              DATA(t62) = CONV string( me->local_a ).
              t59 = t60->get( p0 = t62 ).
              t58 = t59.
              t56 = t58.
            ELSE.
              DATA t63 TYPE REF TO zif_lnt_method_definition.
              CLEAR t63.
              t56 = t63.
            ENDIF.
            t54 = NEW zcl_lnt_generator_0f216880( i_done = t55 i_value = t56 ).
            me->local_machine129758 = t54.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine129758`.
            DATA(t64) = CONV f( 2 ).
            me->state = t64.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t65) = me->local_machine129758.
            t6 = t65.
            DATA(t66) = abap_true.
            t4 = t66.
          ENDIF.
          DATA(t67) = VALUE abap_bool( ).
          DATA(t68) = VALUE abap_bool( ).
          DATA(t69) = t4.
          t68 = xsdbool( t69 = abap_false ).
          t67 = t68.
          IF t68 = abap_true.
            DATA(t70) = VALUE abap_bool( ).
            DATA(t71) = CONV f( me->state ).
            DATA(t72) = CONV f( 4 ).
            t70 = xsdbool( t71 = t72 ).
            t67 = t70.
          ENDIF.
          IF t67 = abap_true.
            DATA(t73) = CONV f( 0 ).
            me->state = t73.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t74) = VALUE abap_bool( ).
            DATA(t75) = me->local_machine129756.
            DATA(t76) = CONV string( me->local_a ).
            t74 = t75->has( p0 = t76 ).
            IF t74 = abap_true.
              DATA(t77) = CONV f( 3 ).
              me->state = t77.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              DATA(t78) = CONV f( 2 ).
              me->state = t78.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t79) = VALUE abap_bool( ).
          DATA(t80) = VALUE abap_bool( ).
          DATA(t81) = t4.
          t80 = xsdbool( t81 = abap_false ).
          t79 = t80.
          IF t80 = abap_true.
            DATA(t82) = VALUE abap_bool( ).
            DATA(t83) = CONV f( me->state ).
            DATA(t84) = CONV f( 5 ).
            t82 = xsdbool( t83 = t84 ).
            t79 = t82.
          ENDIF.
          IF t79 = abap_true.
            DATA(t85) = CONV f( 0 ).
            me->state = t85.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t86) = VALUE string( ).
            DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t87.
            DATA(t88) = me->local_machine129755.
            DATA(t89) = VALUE i( ).
            DATA(t90) = CONV f( me->local_machine129757 ).
            IF t90 > range_i32_upper.
              t89 = range_i32_upper.
            ELSEIF t90 < range_i32_lower.
              t89 = range_i32_lower.
            ELSE.
              t89 = trunc( t90 ).
            ENDIF.
            t87 = t88->get( p0 = t89 ).
            t86 = t87->value.
            me->local_a = t86.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_a`.
            DATA(t91) = CONV f( 4 ).
            me->state = t91.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t92) = VALUE abap_bool( ).
          DATA(t93) = VALUE abap_bool( ).
          DATA(t94) = t4.
          t93 = xsdbool( t94 = abap_false ).
          t92 = t93.
          IF t93 = abap_true.
            DATA(t95) = VALUE abap_bool( ).
            DATA(t96) = CONV f( me->state ).
            DATA(t97) = CONV f( 6 ).
            t95 = xsdbool( t96 = t97 ).
            t92 = t95.
          ENDIF.
          IF t92 = abap_true.
            DATA(t98) = CONV f( 0 ).
            me->state = t98.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t99 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
            CLEAR t99.
            DATA(t100) = me->outer.
            t99 = t100->all.
            me->local_machine129756 = t99.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine129756`.
            DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t101.
            DATA(t102) = me->local_machine129756.
            t101 = t102->keys( ).
            me->local_machine129755 = t101.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine129755`.
            DATA(t103) = CONV f( 0 ).
            me->local_machine129757 = t103.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine129757`.
            DATA(t104) = CONV f( 1 ).
            me->state = t104.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
        ENDDO.
      CATCH cx_root INTO t8.
        DATA(t105) = abap_false.
        me->running = t105.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `running`.
        RAISE EXCEPTION t8.
    ENDTRY.
    DATA(t106) = abap_false.
    me->running = t106.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `running`.
    DATA(t107) = t6.
    result = t107.

  ENDMETHOD.

  METHOD close.
    DATA(t1) = CONV f( 0 ).
    me->state = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
  ENDMETHOD.

  METHOD iterate.
    DATA t1 TYPE REF TO zif_lnt_generator_0f59ca3c.
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
    result = zlnt_runtime_desc_c8762dfcc211=>zlnt_member_d3_93b114c6beac5f.
  ENDMETHOD.

  METHOD zif_lnt_generator_0f59ca3c~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_generator_0f59ca3c~next.
    result = me->next( ).
  ENDMETHOD.

  METHOD zif_lnt_generator_0f59ca3c~close.
    me->close( ).
  ENDMETHOD.

  METHOD zif_lnt_generator_0f59ca3c~iterate.
    result = me->iterate( ).
  ENDMETHOD.
ENDCLASS.
