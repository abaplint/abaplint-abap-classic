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
    me->outer = i_outer.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `outer`.
    me->state = CONV f( 11 ).
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
    t4 = abap_false.
    DATA t6 TYPE REF TO zcl_lnt_generator_09f740e3.
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
            DATA t20 TYPE REF TO zif_lnt_file.
            CLEAR t20.
            t6 = NEW zcl_lnt_generator_09f740e3( i_done = abap_true i_value = t20 ).
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
            me->state = CONV f( 10 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t32) = VALUE abap_bool( ).
          DATA(t33) = VALUE abap_bool( ).
          t33 = xsdbool( t4 = abap_false ).
          t32 = t33.
          IF t33 = abap_true.
            DATA(t36) = CONV f( me->state ).
            t32 = xsdbool( t36 = CONV f( 2 ) ).
          ENDIF.
          IF t32 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t40) = CONV f( me->local_machine177116 ).
            DATA(t41) = VALUE f( ).
            DATA(t43) = me->local_machine177115.
            t43->load( ).
            t41 = lines( t43->items ).
            IF xsdbool( t40 < t41 ) = abap_true.
              me->state = CONV f( 5 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              me->state = CONV f( 1 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t46) = VALUE abap_bool( ).
          DATA(t47) = VALUE abap_bool( ).
          t47 = xsdbool( t4 = abap_false ).
          t46 = t47.
          IF t47 = abap_true.
            DATA(t50) = CONV f( me->state ).
            t46 = xsdbool( t50 = CONV f( 3 ) ).
          ENDIF.
          IF t46 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t54) = CONV f( me->local_machine177116 ).
            DATA(t55) = CONV f( 1 ).
            me->local_machine177116 = t54 + t55.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177116`.
            me->state = CONV f( 2 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = VALUE abap_bool( ).
          t58 = xsdbool( t4 = abap_false ).
          t57 = t58.
          IF t58 = abap_true.
            DATA(t61) = CONV f( me->state ).
            t57 = xsdbool( t61 = CONV f( 4 ) ).
          ENDIF.
          IF t57 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t66 TYPE REF TO zif_lnt_file.
            CLEAR t66.
            t66 = me->local_file.
            me->local_machine177117 = NEW zcl_lnt_generator_09f740e3( i_done = abap_false i_value = t66 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177117`.
            me->state = CONV f( 3 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            t6 = me->local_machine177117.
            t4 = abap_true.
          ENDIF.
          DATA(t73) = VALUE abap_bool( ).
          DATA(t74) = VALUE abap_bool( ).
          t74 = xsdbool( t4 = abap_false ).
          t73 = t74.
          IF t74 = abap_true.
            DATA(t77) = CONV f( me->state ).
            t73 = xsdbool( t77 = CONV f( 5 ) ).
          ENDIF.
          IF t73 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t81 TYPE REF TO zif_lnt_file.
            CLEAR t81.
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
            t85 = me->local_machine177115->get( p0 = t83 ).
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
            me->local_file = t81.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_file`.
            me->state = CONV f( 4 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t89) = VALUE abap_bool( ).
          DATA(t90) = VALUE abap_bool( ).
          t90 = xsdbool( t4 = abap_false ).
          t89 = t90.
          IF t90 = abap_true.
            DATA(t93) = CONV f( me->state ).
            t89 = xsdbool( t93 = CONV f( 6 ) ).
          ENDIF.
          IF t89 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            me->local_machine177115 = me->local_obj->get_files( ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177115`.
            me->local_machine177116 = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177116`.
            me->state = CONV f( 2 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t100) = VALUE abap_bool( ).
          DATA(t101) = VALUE abap_bool( ).
          t101 = xsdbool( t4 = abap_false ).
          t100 = t101.
          IF t101 = abap_true.
            DATA(t104) = CONV f( me->state ).
            t100 = xsdbool( t104 = CONV f( 7 ) ).
          ENDIF.
          IF t100 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            me->local_obj = me->local_generator_step177110->value.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_obj`.
            me->state = CONV f( 6 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t111) = VALUE abap_bool( ).
          DATA(t112) = VALUE abap_bool( ).
          t112 = xsdbool( t4 = abap_false ).
          t111 = t112.
          IF t112 = abap_true.
            DATA(t115) = CONV f( me->state ).
            t111 = xsdbool( t115 = CONV f( 8 ) ).
          ENDIF.
          IF t111 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t119) = VALUE abap_bool( ).
          DATA(t120) = VALUE abap_bool( ).
          t120 = xsdbool( t4 = abap_false ).
          t119 = t120.
          IF t120 = abap_true.
            DATA(t123) = CONV f( me->state ).
            t119 = xsdbool( t123 = CONV f( 9 ) ).
          ENDIF.
          IF t119 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            IF me->local_generator_step177110->done = abap_true.
              me->state = CONV f( 8 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              me->state = CONV f( 7 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t130) = VALUE abap_bool( ).
          DATA(t131) = VALUE abap_bool( ).
          t131 = xsdbool( t4 = abap_false ).
          t130 = t131.
          IF t131 = abap_true.
            DATA(t134) = CONV f( me->state ).
            t130 = xsdbool( t134 = CONV f( 10 ) ).
          ENDIF.
          IF t130 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            me->local_generator_step177110 = me->local_generator_iter177110->next( ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_generatorStep177110`.
            me->state = CONV f( 9 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t140) = VALUE abap_bool( ).
          DATA(t141) = VALUE abap_bool( ).
          t141 = xsdbool( t4 = abap_false ).
          t140 = t141.
          IF t141 = abap_true.
            DATA(t144) = CONV f( me->state ).
            t140 = xsdbool( t144 = CONV f( 11 ) ).
          ENDIF.
          IF t140 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t151 TYPE REF TO zif_lnt_generator_8f73cd1c.
            CLEAR t151.
            DATA t152 TYPE REF TO zcl_lnt_generator_a921479b.
            CLEAR t152.
            DATA(t153) = me->outer.
            t152 = NEW zcl_lnt_generator_a921479b( i_outer = t153 ).
            t151 ?= t152.
            me->local_generator_iter177110 = t151->iterate( ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_generatorIter177110`.
            me->state = CONV f( 1 ).
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
    IF xsdbool( me->local_generator_iter177110 IS BOUND ) = abap_true.
      me->local_generator_iter177110->close( ).
    ENDIF.
  ENDMETHOD.

  METHOD iterate.
    DATA t1 TYPE REF TO zif_lnt_generator_75a8ddd7.
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
