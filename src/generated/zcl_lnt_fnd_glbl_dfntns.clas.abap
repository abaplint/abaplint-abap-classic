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
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_progress.
    DATA(t4) = VALUE f( ).
    DATA(t5) = CONV f( '9007199254740991' ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    DATA t8 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t8 = me->reg->get_objects( )->iterate( ).
    DO.
      DATA t13 TYPE REF TO zcl_lnt_generator_17955b8b.
      t13 = t8->next( ).
      IF t13->done = abap_true.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_object.
      t18 = t13->value.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      t24 = abap_false.
      DATA t26 TYPE REF TO cx_root.
      CLEAR t26.
      TRY.
          DATA(t27) = VALUE abap_bool( ).
          DATA(t28) = VALUE abap_bool( ).
          DATA(t29) = VALUE abap_bool( ).
          t29 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_ob_interface ).
          t28 = t29.
          IF t29 = abap_false.
            t28 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_class ).
          ENDIF.
          t27 = t28.
          IF t28 = abap_true.
            DATA t35 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t35.
            DATA t36 TYPE REF TO zif_lnt_union_291f04b3.
            CLEAR t36.
            t36 ?= t18.
            t35 = t36->get_definition( ).
            DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t38.
            CLEAR t38.
            t27 = xsdbool( t35 IS INITIAL ).
          ENDIF.
          t23 = t27.
          t24 = abap_true.
        CATCH cx_root INTO t26.
          IF xsdbool( t24 = abap_false ) = abap_true.
            t8->close( ).
          ENDIF.
          RAISE EXCEPTION t26.
      ENDTRY.
      IF xsdbool( t24 = abap_false ) = abap_true.
        t8->close( ).
      ENDIF.
      IF t23 = abap_true.
        DATA(t50) = VALUE f( ).
        DATA(t51) = VALUE f( ).
        DATA(t52) = VALUE abap_bool( ).
        t52 = abap_false.
        DATA t54 TYPE REF TO cx_root.
        CLEAR t54.
        TRY.
            DATA(t55) = VALUE f( ).
            DATA(t56) = VALUE i( ).
            DATA(t57) = t6.
            DATA t58 TYPE REF TO zif_lnt_union_291f04b3.
            CLEAR t58.
            t58 ?= t18.
            t57->load( ).
            APPEND t58 TO t57->items.
            t56 = lines( t57->items ).
            t57->save( ).
            t55 = t56.
            t51 = t55.
            t52 = abap_true.
          CATCH cx_root INTO t54.
            IF xsdbool( t52 = abap_false ) = abap_true.
              t8->close( ).
            ENDIF.
            RAISE EXCEPTION t54.
        ENDTRY.
        IF xsdbool( t52 = abap_false ) = abap_true.
          t8->close( ).
        ENDIF.
        t50 = t51.
      ELSE.
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = VALUE abap_bool( ).
        t70 = abap_false.
        DATA t72 TYPE REF TO cx_root.
        CLEAR t72.
        TRY.
            DATA(t73) = VALUE abap_bool( ).
            DATA(t74) = VALUE abap_bool( ).
            DATA(t75) = VALUE abap_bool( ).
            DATA(t76) = VALUE abap_bool( ).
            DATA(t77) = VALUE abap_bool( ).
            DATA(t78) = VALUE abap_bool( ).
            t78 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_data_element ).
            t77 = t78.
            IF t78 = abap_false.
              t77 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_table ).
            ENDIF.
            t76 = t77.
            IF t77 = abap_false.
              t76 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_ob_table_type ).
            ENDIF.
            t75 = t76.
            IF t76 = abap_false.
              t75 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_view ).
            ENDIF.
            t74 = t75.
            IF t75 = abap_false.
              t74 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_lock_object ).
            ENDIF.
            t73 = t74.
            IF t74 = abap_false.
              t73 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_athrztn_chck_fld ).
            ENDIF.
            t69 = t73.
            t70 = abap_true.
          CATCH cx_root INTO t72.
            IF xsdbool( t70 = abap_false ) = abap_true.
              t8->close( ).
            ENDIF.
            RAISE EXCEPTION t72.
        ENDTRY.
        IF xsdbool( t70 = abap_false ) = abap_true.
          t8->close( ).
        ENDIF.
        IF t69 = abap_true.
          DATA t98 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t98.
          DATA t99 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t99.
          DATA(t100) = VALUE abap_bool( ).
          t100 = abap_false.
          DATA t102 TYPE REF TO cx_root.
          CLEAR t102.
          TRY.
              DATA t104 TYPE REF TO zif_lnt_union_e3559bc5.
              CLEAR t104.
              t104 ?= t18.
              DATA(t106) = me->reg.
              DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t107.
              DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t108.
              t99 = t104->parse_type( i_reg_f149 = t106 i_data_element = t107 i_description = t108 ).
              t100 = abap_true.
            CATCH cx_root INTO t102.
              IF xsdbool( t100 = abap_false ) = abap_true.
                t8->close( ).
              ENDIF.
              RAISE EXCEPTION t102.
          ENDTRY.
          IF xsdbool( t100 = abap_false ) = abap_true.
            t8->close( ).
          ENDIF.
          t98 = t99.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t118 = t6.
    DATA(t120) = VALUE i( ).
    t118->load( ).
    t120 = lines( t118->items ).
    DATA(t123) = VALUE i( ).
    t123 = 1.
    DO.
      IF xsdbool( t123 < t120 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t128 TYPE REF TO zif_lnt_union_291f04b3.
      CLEAR t128.
      DATA t130 TYPE REF TO zif_lnt_union_291f04b3.
      CLEAR t130.
      DATA t133 TYPE REF TO object.
      t133 = t118->get( p0 = t123 ).
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      CLEAR t130.
      IF t133 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t134 ?= t133.
        DATA t135 TYPE REF TO object.
        t135 = t134->as_ref( ).
        t130 ?= t135.
      ELSE.
        t130 ?= t133.
      ENDIF.
      t128 = t130.
      DATA(t136) = VALUE i( ).
      t136 = t123.
      DO.
        IF xsdbool( t136 > 0 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t141 TYPE REF TO zif_lnt_union_291f04b3.
        CLEAR t141.
        DATA t143 TYPE REF TO zif_lnt_union_291f04b3.
        CLEAR t143.
        DATA(t145) = VALUE i( ).
        DATA(t147) = 1.
        t145 = t136 - t147.
        DATA t148 TYPE REF TO object.
        t148 = t118->get( p0 = t145 ).
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        CLEAR t143.
        IF t148 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t149 ?= t148.
          DATA t150 TYPE REF TO object.
          t150 = t149->as_ref( ).
          t143 ?= t150.
        ELSE.
          t143 ?= t148.
        ENDIF.
        t141 = t143.
        IF xsdbool( zlnt_runtime_orde_654b9c3be2c1=>object_name( p0 = t141->get_name( ) p1 = t128->get_name( ) ) <= 0 ) = abap_true.
          EXIT.
        ENDIF.
        t118->put( p0 = t136 p1 = t141 ).
        DATA(t163) = 1.
        t136 = t136 - t163.
      ENDDO.
      t118->put( p0 = t136 p1 = t128 ).
      DATA(t169) = 1.
      t123 = t123 + t169.
    ENDDO.
    t117 = t118.
    DATA(t171) = VALUE i( ).
    t171 = 1.
    DO.
      IF xsdbool( t171 <= 10 ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t176) = VALUE abap_bool( ).
      DATA t177 TYPE REF TO zif_lnt_progress.
      t177 = t1.
      IF xsdbool( xsdbool( t177 IS INITIAL ) = abap_false ) = abap_true.
        DATA t183 TYPE REF TO zif_lnt_progress.
        t183 = t177.
        DATA(t185) = VALUE f( ).
        DATA(t187) = t6.
        t187->load( ).
        t185 = lines( t187->items ).
        DATA(t189) = |Global OO types, pass |.
        DATA(t190) = VALUE string( ).
        t190 = |{ t171 }|.
        DATA(t192) = strlen( t189 ).
        t183->set( i_total = t185 i_text = |{ t189 }{ t190 }| ).
      ENDIF.
      t176 = abap_false.
      DATA(t194) = VALUE f( ).
      t194 = CONV f( 0 ).
      DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t196.
      CREATE OBJECT t196.
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
          t203 = t202->as_ref( ).
          t199 ?= t203.
        ELSE.
          t199 ?= t200.
        ENDIF.
        DATA(t204) = VALUE abap_bool( ).
        DATA t205 TYPE REF TO zif_lnt_progress.
        t205 = t1.
        IF xsdbool( xsdbool( t205 IS INITIAL ) = abap_false ) = abap_true.
          DATA t211 TYPE REF TO zif_lnt_progress.
          t211 = t205.
          DATA(t214) = VALUE string( ).
          DATA(t215) = VALUE string( ).
          DATA(t216) = |Global OO types(pass |.
          DATA(t217) = VALUE string( ).
          t217 = |{ t171 }|.
          DATA(t219) = strlen( t216 ).
          t215 = |{ t216 }{ t217 }|.
          DATA(t221) = strlen( t215 ).
          t214 = |{ t215 }{ |), next pass: | }|.
          DATA(t222) = VALUE string( ).
          t196->load( ).
          t222 = |{ lines( t196->items ) }|.
          DATA(t225) = strlen( t214 ).
          t211->tick_sync( i_text = |{ t214 }{ t222 }| ).
        ENDIF.
        t204 = abap_false.
        me->update( i_obj_1ed0 = t199 ).
        DATA(t228) = VALUE f( ).
        t228 = me->count_untyped( i_obj_1ed0 = t199 ).
        IF xsdbool( t228 > CONV f( 0 ) ) = abap_true.
          t196->load( ).
          APPEND t199 TO t196->items.
          t196->save( ).
        ENDIF.
        t194 = t194 + t228.
      ENDDO.
      t6 = t196.
      DATA(t240) = VALUE abap_bool( ).
      DATA(t241) = VALUE abap_bool( ).
      t241 = xsdbool( t4 = t194 ).
      t240 = t241.
      IF t241 = abap_false.
        t240 = xsdbool( t194 = CONV f( 0 ) ).
      ENDIF.
      IF t240 = abap_true.
        EXIT.
      ENDIF.
      t4 = t194.
      DATA(t250) = 1.
      t171 = t171 + t250.
    ENDDO.
  ENDMETHOD.

  METHOD count_untyped.
    DATA t2 TYPE REF TO zif_lnt_interface_definition.
    t2 = i_obj_1ed0->get_definition( ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      result = CONV f( 1 ).
      RETURN.
    ENDIF.
    DATA(t13) = VALUE f( ).
    t13 = CONV f( 0 ).
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t15 = t2->get_type_definitions( )->get_all( ).
    DATA t19 TYPE REF TO zcl_lnt_type_definitions_entry.
    DATA t20 TYPE REF TO object.
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
        t23 = t22->as_ref( ).
        t19 ?= t23.
      ELSE.
        t19 ?= t20.
      ENDIF.
      DATA(t26) = VALUE f( ).
      DATA t29 TYPE REF TO zcl_lnt_typed_identifier.
      t29 = t19->type_cba0.
      DATA t31 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t31.
      t31 = t29->type_cba0.
      t26 = me->count( i_type_9913 = t31 ).
      t13 = t13 + t26.
    ENDDO.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t33 = t2->get_attributes( )->get_all( ).
    DATA t37 TYPE REF TO zcl_lnt_class_attribute.
    DATA t38 TYPE REF TO object.
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
        t41 = t40->as_ref( ).
        t37 ?= t41.
      ELSE.
        t37 ?= t38.
      ENDIF.
      DATA(t44) = VALUE f( ).
      DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
      t46 = t37.
      DATA t48 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t48.
      t48 = t46->type_cba0.
      t44 = me->count( i_type_9913 = t48 ).
      t13 = t13 + t44.
    ENDDO.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t50 = t2->get_attributes( )->get_constants( ).
    DATA t54 TYPE REF TO zcl_lnt_class_constant.
    DATA t55 TYPE REF TO object.
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
        t58 = t57->as_ref( ).
        t54 ?= t58.
      ELSE.
        t54 ?= t55.
      ENDIF.
      DATA(t61) = VALUE f( ).
      DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
      t63 = t54.
      DATA t65 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t65.
      t65 = t63->type_cba0.
      t61 = me->count( i_type_9913 = t65 ).
      t13 = t13 + t61.
    ENDDO.
    DATA t67 TYPE REF TO zif_lnt_generator_0f59ca3c.
    t67 = t2->get_method_definitions( )->get_all( )->iterate( ).
    DO.
      DATA t74 TYPE REF TO zcl_lnt_generator_0f216880.
      t74 = t67->next( ).
      IF t74->done = abap_true.
        EXIT.
      ENDIF.
      DATA t81 TYPE REF TO zif_lnt_method_definition.
      t81 = t74->value.
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t83.
      DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t84.
      DATA(t85) = VALUE abap_bool( ).
      t85 = abap_false.
      DATA t87 TYPE REF TO cx_root.
      CLEAR t87.
      TRY.
          t84 = t81->get_parameters( )->get_all( ).
          t85 = abap_true.
        CATCH cx_root INTO t87.
          IF xsdbool( t85 = abap_false ) = abap_true.
            t67->close( ).
          ENDIF.
          RAISE EXCEPTION t87.
      ENDTRY.
      IF xsdbool( t85 = abap_false ) = abap_true.
        t67->close( ).
      ENDIF.
      t83 = t84.
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
          t103 = t102->as_ref( ).
          t99 ?= t103.
        ELSE.
          t99 ?= t100.
        ENDIF.
        DATA(t105) = VALUE f( ).
        DATA(t106) = VALUE abap_bool( ).
        t106 = abap_false.
        DATA t108 TYPE REF TO cx_root.
        CLEAR t108.
        TRY.
            DATA(t111) = VALUE f( ).
            DATA t115 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t115.
            t115 = t99->type_cba0.
            t111 = me->count( i_type_9913 = t115 ).
            t105 = t13 + t111.
            t106 = abap_true.
          CATCH cx_root INTO t108.
            IF xsdbool( t106 = abap_false ) = abap_true.
              t67->close( ).
            ENDIF.
            RAISE EXCEPTION t108.
        ENDTRY.
        IF xsdbool( t106 = abap_false ) = abap_true.
          t67->close( ).
        ENDIF.
        t13 = t105.
      ENDDO.
    ENDDO.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t126 = t2->get_events( ).
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t126 IS BOUND ) = abap_true.
      t130 = t126.
    ELSE.
      CREATE OBJECT t130.
    ENDIF.
    t125 = t130.
    DATA t135 TYPE REF TO zif_lnt_event_definition.
    DATA t136 TYPE REF TO object.
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
        t139 = t138->as_ref( ).
        t135 ?= t139.
      ELSE.
        t135 ?= t136.
      ENDIF.
      DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t140.
      t140 = t135->get_parameters( ).
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
          t146 = t145->as_ref( ).
          t142 ?= t146.
        ELSE.
          t142 ?= t143.
        ENDIF.
        DATA(t149) = VALUE f( ).
        DATA t153 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t153.
        t153 = t142->type_cba0.
        t149 = me->count( i_type_9913 = t153 ).
        t13 = t13 + t149.
      ENDDO.
    ENDDO.
    result = t13.

  ENDMETHOD.

  METHOD count.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    t3 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
    t2 = t3.
    IF t3 = abap_false.
      t2 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
    ENDIF.
    IF t2 = abap_true.
      result = CONV f( 1 ).
      RETURN.
    ENDIF.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      DATA t13 TYPE REF TO zcl_lnt_ty_table_type.
      t13 ?= t1.
      t11 = t13->row_type.
      result = me->count( i_type_9913 = t11 ).
      RETURN.
    ENDIF.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_reference ) = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_abstract_type.
      DATA t23 TYPE REF TO zcl_lnt_data_reference.
      t23 ?= t1.
      t21 = t23->type_cba0.
      result = me->count( i_type_9913 = t21 ).
      RETURN.
    ENDIF.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
      DATA(t30) = VALUE f( ).
      t30 = CONV f( 0 ).
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t34 TYPE REF TO zcl_lnt_structure_type.
      t34 ?= t1.
      t32 = t34->components.
      DATA t39 TYPE REF TO zcl_lnt_istructure_component.
      DATA t40 TYPE REF TO object.
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
        DATA(t50) = VALUE f( ).
        t50 = me->count( i_type_9913 = t39->zlnt_view_read_sr_455340cd1e80( ) ).
        t30 = t30 + t50.
      ENDDO.
      result = t30.
      RETURN.
    ENDIF.



    result = CONV f( 0 ).

  ENDMETHOD.

  METHOD update.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    t2 = t1->get_main_abap_file( ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      DATA t13 TYPE REF TO zif_lnt_class_definition.
      t1->set_definition( i_def = t13 ).
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    t16 = t2.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    IF xsdbool( t16 IS INITIAL ) = abap_true.
    ELSE.
      t19 = t16->structure.
    ENDIF.
    t14 = t19.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t14 IS INITIAL ) = abap_true.
      DATA t36 TYPE REF TO zif_lnt_class_definition.
      t1->set_definition( i_def = t36 ).
      RETURN.
    ENDIF.
    DATA t37 TYPE REF TO zcl_lnt_syntax_input.
    DATA t38 TYPE REF TO zcl_lnt_syntax_input.
    DATA(t39) = VALUE string( ).
    DATA t41 TYPE REF TO zcl_lnt_abstract_file.
    t41 = t2.
    t39 = t41->filename.
    DATA t46 TYPE REF TO zcl_lnt_current_scope.
    DATA(t48) = me->reg.
    DATA t49 TYPE REF TO zif_lnt_object.
    t49 ?= t1.
    t46 = zcl_lnt_current_scope=>build_default( i_reg_f149 = t48 i_obj_1ed0 = t49 ).
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t53.
    t38 = NEW zcl_lnt_syntax_input( i_scope = t46 i_filename = t39 i_issues = t51 i_deferred = t53 ).
    CREATE OBJECT t38->zlnt_view_ownkeys_b0e8086400eb.
    t38->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t55 ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t56 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t57 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `deferred` p1 = t58 ).
    ENDIF.
    CREATE OBJECT t38->zlnt_json_ownkeys_70e5fd461788.
    t38->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t60 ).
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = |scope| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = |issues| p1 = t64 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = |deferred| p1 = t66 ).
    ENDIF.
    t37 = t38.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_interface ) = abap_true.
      DATA t69 TYPE REF TO zcl_lnt_structure_node.
      DATA t71 TYPE REF TO zcl_lnt_structure_node.
      t71 = t14.
      DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
      t69 = t71->find_first_structure( i_type_9913 = t73 ).
      IF xsdbool( t69 IS BOUND ) = abap_true.
        DATA t76 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        TRY.
            DATA t78 TYPE REF TO zcl_lnt_interface_definition.
            t78 = NEW zcl_lnt_interface_definition( i_node = t69 i_input_967e = t37 ).
            DATA t82 TYPE REF TO zcl_lnt_ob_interface.
            t82 ?= t1.
            t82->st_dfn_ins_src_obj_int_ts_intr( i_def = t78 ).
          CATCH zlnt_exception_cl_30eec8e8805d INTO t76.
            DATA(t86) = t76->payload.
            DATA t87 TYPE REF TO zcl_lnt_ob_interface.
            t87 ?= t1.
            DATA t90 TYPE REF TO zif_lnt_interface_definition.
            t87->st_dfn_ins_src_obj_int_ts_intr( i_def = t90 ).
        ENDTRY.
      ELSE.
        DATA t91 TYPE REF TO zcl_lnt_ob_interface.
        t91 ?= t1.
        DATA t94 TYPE REF TO zif_lnt_interface_definition.
        t91->st_dfn_ins_src_obj_int_ts_intr( i_def = t94 ).
      ENDIF.
    ELSE.
      DATA t95 TYPE REF TO zcl_lnt_structure_node.
      DATA t97 TYPE REF TO zcl_lnt_structure_node.
      t97 = t14.
      DATA(t99) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
      t95 = t97->find_first_structure( i_type_9913 = t99 ).
      IF xsdbool( t95 IS BOUND ) = abap_true.
        DATA t102 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        TRY.
            DATA t104 TYPE REF TO zcl_lnt_ty_class_definition.
            t104 = NEW zcl_lnt_ty_class_definition( i_node = t95 i_input_967e = t37 ).
            DATA t108 TYPE REF TO zcl_lnt_class.
            DATA t109 TYPE REF TO zcl_lnt_class.
            t109 ?= t1.
            t108 = t109.
            t108->def = t104.
            DELETE t108->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
          CATCH zlnt_exception_cl_30eec8e8805d INTO t102.
            DATA(t116) = t102->payload.
            DATA t117 TYPE REF TO zcl_lnt_class.
            DATA t118 TYPE REF TO zcl_lnt_class.
            t118 ?= t1.
            t117 = t118.
            CLEAR t117->def.
            DELETE t117->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
        ENDTRY.
      ELSE.
        DATA t123 TYPE REF TO zcl_lnt_class.
        DATA t124 TYPE REF TO zcl_lnt_class.
        t124 ?= t1.
        t123 = t124.
        CLEAR t123->def.
        DELETE t123->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
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
