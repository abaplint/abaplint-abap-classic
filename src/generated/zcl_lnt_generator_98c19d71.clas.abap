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
    me->outer = i_outer.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `outer`.
    me->state = CONV f( 6 ).
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
    t4 = abap_false.
    DATA t6 TYPE REF TO zcl_lnt_generator_0f216880.
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
            DATA t20 TYPE REF TO zif_lnt_method_definition.
            CLEAR t20.
            t6 = NEW zcl_lnt_generator_0f216880( i_done = abap_true i_value = t20 ).
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
            DATA(t30) = CONV f( me->local_machine129757 ).
            DATA(t31) = VALUE f( ).
            DATA(t33) = me->local_machine129755.
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
            DATA(t44) = CONV f( me->local_machine129757 ).
            DATA(t45) = CONV f( 1 ).
            me->local_machine129757 = t44 + t45.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine129757`.
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
            DATA t60 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
            CLEAR t60.
            t60 = me->outer->all.
            DATA(t62) = CONV string( me->local_a ).
            me->local_machine129758 = NEW zcl_lnt_generator_0f216880( i_done = abap_false i_value = t60->get( p0 = t62 ) ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine129758`.
            me->state = CONV f( 2 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            t6 = me->local_machine129758.
            t4 = abap_true.
          ENDIF.
          DATA(t67) = VALUE abap_bool( ).
          DATA(t68) = VALUE abap_bool( ).
          t68 = xsdbool( t4 = abap_false ).
          t67 = t68.
          IF t68 = abap_true.
            DATA(t71) = CONV f( me->state ).
            t67 = xsdbool( t71 = CONV f( 4 ) ).
          ENDIF.
          IF t67 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t76) = CONV string( me->local_a ).
            IF me->local_machine129756->has( p0 = t76 ) = abap_true.
              me->state = CONV f( 3 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              me->state = CONV f( 2 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t79) = VALUE abap_bool( ).
          DATA(t80) = VALUE abap_bool( ).
          t80 = xsdbool( t4 = abap_false ).
          t79 = t80.
          IF t80 = abap_true.
            DATA(t83) = CONV f( me->state ).
            t79 = xsdbool( t83 = CONV f( 5 ) ).
          ENDIF.
          IF t79 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t89) = VALUE i( ).
            DATA(t90) = CONV f( me->local_machine129757 ).
            IF t90 > range_i32_upper.
              t89 = range_i32_upper.
            ELSEIF t90 < range_i32_lower.
              t89 = range_i32_lower.
            ELSE.
              t89 = trunc( t90 ).
            ENDIF.
            me->local_a = me->local_machine129755->get( p0 = t89 )->value.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_a`.
            me->state = CONV f( 4 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t92) = VALUE abap_bool( ).
          DATA(t93) = VALUE abap_bool( ).
          t93 = xsdbool( t4 = abap_false ).
          t92 = t93.
          IF t93 = abap_true.
            DATA(t96) = CONV f( me->state ).
            t92 = xsdbool( t96 = CONV f( 6 ) ).
          ENDIF.
          IF t92 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            me->local_machine129756 = me->outer->all.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine129756`.
            me->local_machine129755 = me->local_machine129756->keys( ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine129755`.
            me->local_machine129757 = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine129757`.
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
  ENDMETHOD.

  METHOD iterate.
    DATA t1 TYPE REF TO zif_lnt_generator_0f59ca3c.
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
