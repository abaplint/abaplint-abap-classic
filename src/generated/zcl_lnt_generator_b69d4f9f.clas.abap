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
    DATA(t2) = i_outer.
    me->local_type = i_type_9913.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_type`.
    me->outer = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `outer`.
    me->state = CONV f( 8 ).
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
    t4 = abap_false.
    DATA t6 TYPE REF TO zcl_lnt_generator_17955b8b.
    me->running = abap_true.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `running`.
    DATA t8 TYPE REF TO cx_root.
    TRY.
        DO.
          IF xsdbool( t4 = abap_false ) = abap_false.
            EXIT.
          ENDIF.
          DATA(t11) = VALUE abap_bool( ).
          DATA(t12) = VALUE abap_bool( ).
          t12 = xsdbool( t4 = abap_false ).
          t11 = t12.
          IF t12 = abap_true.
            DATA(t15) = CONV f( me->state ).
            t11 = xsdbool( t15 = CONV f( 0 ) ).
          ENDIF.
          IF t11 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t20 TYPE REF TO zif_lnt_object.
            CLEAR t20.
            t6 = NEW zcl_lnt_generator_17955b8b( i_done = abap_true i_value = t20 ).
            t4 = abap_true.
          ENDIF.
          DATA(t22) = VALUE abap_bool( ).
          DATA(t23) = VALUE abap_bool( ).
          t23 = xsdbool( t4 = abap_false ).
          t22 = t23.
          IF t23 = abap_true.
            DATA(t26) = CONV f( me->state ).
            t22 = xsdbool( t26 = CONV f( 1 ) ).
          ENDIF.
          IF t22 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t30) = CONV f( me->local_machine177097 ).
            DATA(t31) = VALUE f( ).
            DATA(t33) = me->local_machine177095.
            t33->load( ).
            t31 = lines( t33->items ).
            IF xsdbool( t30 < t31 ) = abap_true.
              me->state = CONV f( 5 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              me->state = CONV f( 0 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t36) = VALUE abap_bool( ).
          DATA(t37) = VALUE abap_bool( ).
          t37 = xsdbool( t4 = abap_false ).
          t36 = t37.
          IF t37 = abap_true.
            DATA(t40) = CONV f( me->state ).
            t36 = xsdbool( t40 = CONV f( 2 ) ).
          ENDIF.
          IF t36 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t44) = CONV f( me->local_machine177097 ).
            DATA(t45) = CONV f( 1 ).
            me->local_machine177097 = t44 + t45.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177097`.
            me->state = CONV f( 1 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t47) = VALUE abap_bool( ).
          DATA(t48) = VALUE abap_bool( ).
          t48 = xsdbool( t4 = abap_false ).
          t47 = t48.
          IF t48 = abap_true.
            DATA(t51) = CONV f( me->state ).
            t47 = xsdbool( t51 = CONV f( 3 ) ).
          ENDIF.
          IF t47 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t60 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
            CLEAR t60.
            DATA t62 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
            CLEAR t62.
            t62 = me->outer->objects_by_type.
            DATA(t64) = CONV string( me->local_type ).
            t60 = t62->get( p0 = t64 ).
            DATA(t65) = CONV string( me->local_name ).
            me->local_machine177098 = NEW zcl_lnt_generator_17955b8b( i_done = abap_false i_value = t60->get( p0 = t65 ) ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177098`.
            me->state = CONV f( 2 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            t6 = me->local_machine177098.
            t4 = abap_true.
          ENDIF.
          DATA(t70) = VALUE abap_bool( ).
          DATA(t71) = VALUE abap_bool( ).
          t71 = xsdbool( t4 = abap_false ).
          t70 = t71.
          IF t71 = abap_true.
            DATA(t74) = CONV f( me->state ).
            t70 = xsdbool( t74 = CONV f( 4 ) ).
          ENDIF.
          IF t70 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t79) = CONV string( me->local_name ).
            IF me->local_machine177096->has( p0 = t79 ) = abap_true.
              me->state = CONV f( 3 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              me->state = CONV f( 2 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t82) = VALUE abap_bool( ).
          DATA(t83) = VALUE abap_bool( ).
          t83 = xsdbool( t4 = abap_false ).
          t82 = t83.
          IF t83 = abap_true.
            DATA(t86) = CONV f( me->state ).
            t82 = xsdbool( t86 = CONV f( 5 ) ).
          ENDIF.
          IF t82 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t92) = VALUE i( ).
            DATA(t93) = CONV f( me->local_machine177097 ).
            IF t93 > range_i32_upper.
              t92 = range_i32_upper.
            ELSEIF t93 < range_i32_lower.
              t92 = range_i32_lower.
            ELSE.
              t92 = trunc( t93 ).
            ENDIF.
            me->local_name = me->local_machine177095->get( p0 = t92 )->value.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_name`.
            me->state = CONV f( 4 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t95) = VALUE abap_bool( ).
          DATA(t96) = VALUE abap_bool( ).
          t96 = xsdbool( t4 = abap_false ).
          t95 = t96.
          IF t96 = abap_true.
            DATA(t99) = CONV f( me->state ).
            t95 = xsdbool( t99 = CONV f( 6 ) ).
          ENDIF.
          IF t95 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            me->local_machine177096 = me->local_t177077.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177096`.
            me->local_machine177095 = me->local_machine177096->keys( ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177095`.
            me->local_machine177097 = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177097`.
            me->state = CONV f( 1 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t108) = VALUE abap_bool( ).
          DATA(t109) = VALUE abap_bool( ).
          t109 = xsdbool( t4 = abap_false ).
          t108 = t109.
          IF t109 = abap_true.
            DATA(t112) = CONV f( me->state ).
            t108 = xsdbool( t112 = CONV f( 7 ) ).
          ENDIF.
          IF t108 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t116) = xsdbool( me->local_t177077 IS INITIAL ).
            IF xsdbool( t116 = abap_false ) = abap_true.
              me->state = CONV f( 6 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              me->state = CONV f( 0 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t120) = VALUE abap_bool( ).
          DATA(t121) = VALUE abap_bool( ).
          t121 = xsdbool( t4 = abap_false ).
          t120 = t121.
          IF t121 = abap_true.
            DATA(t124) = CONV f( me->state ).
            t120 = xsdbool( t124 = CONV f( 8 ) ).
          ENDIF.
          IF t120 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t128 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
            CLEAR t128.
            t128 = me->outer->objects_by_type.
            DATA(t130) = CONV string( me->local_type ).
            me->local_t177077 = t128->get( p0 = t130 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_t177077`.
            me->state = CONV f( 7 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
        ENDDO.
      CATCH cx_root INTO t8.
        me->running = abap_false.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `running`.
        RAISE EXCEPTION t8.
    ENDTRY.
    me->running = abap_false.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `running`.
    result = t6.

  ENDMETHOD.

  METHOD close.
    me->state = CONV f( 0 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
  ENDMETHOD.

  METHOD iterate.
    DATA t1 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t1 ?= me.
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
