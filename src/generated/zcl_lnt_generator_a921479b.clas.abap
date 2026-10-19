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
    me->outer = i_outer.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `outer`.
    me->state = CONV f( 13 ).
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
            DATA(t30) = CONV f( me->local_machine177064 ).
            DATA(t31) = VALUE f( ).
            DATA(t33) = me->local_machine177062.
            t33->load( ).
            t31 = lines( t33->items ).
            IF xsdbool( t30 < t31 ) = abap_true.
              me->state = CONV f( 12 ).
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
            DATA(t44) = CONV f( me->local_machine177064 ).
            DATA(t45) = CONV f( 1 ).
            me->local_machine177064 = t44 + t45.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177064`.
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
            DATA(t55) = CONV f( me->local_machine177067 ).
            DATA(t56) = VALUE f( ).
            DATA(t58) = me->local_machine177065.
            t58->load( ).
            t56 = lines( t58->items ).
            IF xsdbool( t55 < t56 ) = abap_true.
              me->state = CONV f( 7 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              me->state = CONV f( 2 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t61) = VALUE abap_bool( ).
          DATA(t62) = VALUE abap_bool( ).
          t62 = xsdbool( t4 = abap_false ).
          t61 = t62.
          IF t62 = abap_true.
            DATA(t65) = CONV f( me->state ).
            t61 = xsdbool( t65 = CONV f( 4 ) ).
          ENDIF.
          IF t61 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t69) = CONV f( me->local_machine177067 ).
            DATA(t70) = CONV f( 1 ).
            me->local_machine177067 = t69 + t70.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177067`.
            me->state = CONV f( 3 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t72) = VALUE abap_bool( ).
          DATA(t73) = VALUE abap_bool( ).
          t73 = xsdbool( t4 = abap_false ).
          t72 = t73.
          IF t73 = abap_true.
            DATA(t76) = CONV f( me->state ).
            t72 = xsdbool( t76 = CONV f( 5 ) ).
          ENDIF.
          IF t72 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t85 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
            CLEAR t85.
            DATA t87 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
            CLEAR t87.
            t87 = me->outer->objects.
            DATA(t89) = CONV string( me->local_name ).
            t85 = t87->get( p0 = t89 ).
            DATA(t90) = CONV string( me->local_type ).
            me->local_machine177068 = NEW zcl_lnt_generator_17955b8b( i_done = abap_false i_value = t85->get( p0 = t90 ) ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177068`.
            me->state = CONV f( 4 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            t6 = me->local_machine177068.
            t4 = abap_true.
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
            DATA(t104) = CONV string( me->local_type ).
            IF me->local_machine177066->has( p0 = t104 ) = abap_true.
              me->state = CONV f( 5 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              me->state = CONV f( 4 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t107) = VALUE abap_bool( ).
          DATA(t108) = VALUE abap_bool( ).
          t108 = xsdbool( t4 = abap_false ).
          t107 = t108.
          IF t108 = abap_true.
            DATA(t111) = CONV f( me->state ).
            t107 = xsdbool( t111 = CONV f( 7 ) ).
          ENDIF.
          IF t107 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t117) = VALUE i( ).
            DATA(t118) = CONV f( me->local_machine177067 ).
            IF t118 > range_i32_upper.
              t117 = range_i32_upper.
            ELSEIF t118 < range_i32_lower.
              t117 = range_i32_lower.
            ELSE.
              t117 = trunc( t118 ).
            ENDIF.
            me->local_type = me->local_machine177065->get( p0 = t117 )->value.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_type`.
            me->state = CONV f( 6 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
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
            me->local_machine177066 = me->local_t177043.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177066`.
            me->local_machine177065 = me->local_machine177066->keys( ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177065`.
            me->local_machine177067 = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177067`.
            me->state = CONV f( 3 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t133) = VALUE abap_bool( ).
          DATA(t134) = VALUE abap_bool( ).
          t134 = xsdbool( t4 = abap_false ).
          t133 = t134.
          IF t134 = abap_true.
            DATA(t137) = CONV f( me->state ).
            t133 = xsdbool( t137 = CONV f( 9 ) ).
          ENDIF.
          IF t133 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t141) = xsdbool( me->local_t177043 IS INITIAL ).
            IF xsdbool( t141 = abap_false ) = abap_true.
              me->state = CONV f( 8 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              me->state = CONV f( 2 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t145) = VALUE abap_bool( ).
          DATA(t146) = VALUE abap_bool( ).
          t146 = xsdbool( t4 = abap_false ).
          t145 = t146.
          IF t146 = abap_true.
            DATA(t149) = CONV f( me->state ).
            t145 = xsdbool( t149 = CONV f( 10 ) ).
          ENDIF.
          IF t145 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA t153 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
            CLEAR t153.
            t153 = me->outer->objects.
            DATA(t155) = CONV string( me->local_name ).
            me->local_t177043 = t153->get( p0 = t155 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_t177043`.
            me->state = CONV f( 9 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t157) = VALUE abap_bool( ).
          DATA(t158) = VALUE abap_bool( ).
          t158 = xsdbool( t4 = abap_false ).
          t157 = t158.
          IF t158 = abap_true.
            DATA(t161) = CONV f( me->state ).
            t157 = xsdbool( t161 = CONV f( 11 ) ).
          ENDIF.
          IF t157 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t166) = CONV string( me->local_name ).
            IF me->local_machine177063->has( p0 = t166 ) = abap_true.
              me->state = CONV f( 10 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ELSE.
              me->state = CONV f( 2 ).
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            ENDIF.
          ENDIF.
          DATA(t169) = VALUE abap_bool( ).
          DATA(t170) = VALUE abap_bool( ).
          t170 = xsdbool( t4 = abap_false ).
          t169 = t170.
          IF t170 = abap_true.
            DATA(t173) = CONV f( me->state ).
            t169 = xsdbool( t173 = CONV f( 12 ) ).
          ENDIF.
          IF t169 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            DATA(t179) = VALUE i( ).
            DATA(t180) = CONV f( me->local_machine177064 ).
            IF t180 > range_i32_upper.
              t179 = range_i32_upper.
            ELSEIF t180 < range_i32_lower.
              t179 = range_i32_lower.
            ELSE.
              t179 = trunc( t180 ).
            ENDIF.
            me->local_name = me->local_machine177062->get( p0 = t179 )->value.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_name`.
            me->state = CONV f( 11 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
          ENDIF.
          DATA(t182) = VALUE abap_bool( ).
          DATA(t183) = VALUE abap_bool( ).
          t183 = xsdbool( t4 = abap_false ).
          t182 = t183.
          IF t183 = abap_true.
            DATA(t186) = CONV f( me->state ).
            t182 = xsdbool( t186 = CONV f( 13 ) ).
          ENDIF.
          IF t182 = abap_true.
            me->state = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `state`.
            me->local_machine177063 = me->outer->objects.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177063`.
            me->local_machine177062 = me->local_machine177063->keys( ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177062`.
            me->local_machine177064 = CONV f( 0 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `local_machine177064`.
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
