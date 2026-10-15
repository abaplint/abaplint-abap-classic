* TS: src/objects/rename/renamer.ts:21:1 Renamer
CLASS zcl_lnt_renamer DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS rename IMPORTING i_type_9913 TYPE string i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_irename_result.
    METHODS build_edits IMPORTING i_type_9913 TYPE string i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO object.
    METHODS factory IMPORTING i_type_9913 TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_object_renamer.
    METHODS apply IMPORTING i_edits TYPE REF TO object RETURNING VALUE(result) TYPE REF TO zcl_lnt_irename_result.
    METHODS apply_edit IMPORTING i_dc TYPE REF TO object.
    METHODS apply_renames IMPORTING i_renames TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_renamer IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD rename.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = t1.
    DATA(t8) = t2.
    DATA(t9) = t3.
    t6 = me->build_edits( i_type_9913 = t7 i_old_name = t8 i_new_name = t9 ).
    t5 ?= t6.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t11.
    DATA(t12) = t4.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA(t21) = |no changes could be determined|.
        DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t22->has = abap_true.
        t22->value = t21.
        t19 = t22.
      ELSE.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        t19 = t23.
      ENDIF.
      t18 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t19 ).
      t17 = NEW #( ).
      t17->payload = t18.
      CLEAR t17->source_value.
      IF t18 IS BOUND.
        DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t24.
        DATA t25 TYPE REF TO object.
        CLEAR t25.
        CLEAR t24.
        t25 = t18.
        TRY.
            t17->source_value ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17->source_value IS NOT BOUND.
          TRY.
              t24 ?= t18.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t24 IS BOUND.
            t17->source_value = t24->source( ).
          ENDIF.
          IF t17->source_value IS NOT BOUND.
            CREATE OBJECT t17->source_value.
            t17->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t17->source_value->oval = t18.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t17.
    ELSE.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_shape_36bc2e57.
      CLEAR t28.
      DATA(t29) = t4.
      t28 = t29.
      t27 = t28->changes.
      t26 = xsdbool( t27 IS BOUND ).
      IF t26 = abap_true.
        DATA t30 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t30.
        DATA t31 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t31.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        DATA(t33) = abap_true.
        IF t33 = abap_true.
          DATA(t34) = |only documentChanges expected|.
          DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t35->has = abap_true.
          t35->value = t34.
          t32 = t35.
        ELSE.
          DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t36.
          t32 = t36.
        ENDIF.
        t31 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t32 ).
        t30 = NEW #( ).
        t30->payload = t31.
        CLEAR t30->source_value.
        IF t31 IS BOUND.
          DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t37.
          DATA t38 TYPE REF TO object.
          CLEAR t38.
          CLEAR t37.
          t38 = t31.
          TRY.
              t30->source_value ?= t38.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t30->source_value IS NOT BOUND.
            TRY.
                t37 ?= t31.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t37 IS BOUND.
              t30->source_value = t37->source( ).
            ENDIF.
            IF t30->source_value IS NOT BOUND.
              CREATE OBJECT t30->source_value.
              t30->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t30->source_value->oval = t31.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t30.
      ENDIF.
    ENDIF.
    DATA t39 TYPE REF TO zcl_lnt_irename_result.
    CLEAR t39.
    DATA t40 TYPE REF TO zcl_lnt_irename_result.
    CLEAR t40.
    DATA t41 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t41.
    DATA(t42) = t4.
    t41 = t42.
    t40 = me->apply( i_edits = t41 ).
    t39 = t40.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t43.
    DATA(t44) = me->reg.
    DATA t45 TYPE REF TO zcl_lnt_irun_input.
    CLEAR t45.
    t43 = t44->find_issues( i_input_967e = t45 ).
    DATA(t46) = t39.
    result = t46.

  ENDMETHOD.

  METHOD build_edits.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zif_lnt_registry.
    CLEAR t4.
    DATA(t5) = me->reg.
    t4 = t5->parse( ).
    DATA t6 TYPE REF TO zif_lnt_object.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_object.
    CLEAR t7.
    DATA(t8) = me->reg.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = t1.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA(t15) = abap_true.
    IF t15 = abap_true.
      DATA(t16) = t2.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t16.
      t14 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t14 = t18.
    ENDIF.
    t7 = t8->get_object( i_type_9913 = t9 i_name = t14 ).
    t6 = t7.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE REF TO zif_lnt_object.
    CLEAR t21.
    DATA(t22) = t6.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t21.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    t20 = t25.
    t19 = t20.
    IF t20 = abap_true.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = t1.
      DATA(t29) = |SICF|.
      t27 = xsdbool( t28 = t29 ).
      t19 = t27.
    ENDIF.
    IF t19 = abap_true.
      DATA t30 TYPE REF TO zif_lnt_object.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t34.
      CREATE OBJECT t34.
      t33 = t34.
      DATA t35 TYPE REF TO zif_lnt_generator_8f73cd1c.
      CLEAR t35.
      DATA t36 TYPE REF TO zif_lnt_generator_8f73cd1c.
      CLEAR t36.
      DATA t37 TYPE REF TO zif_lnt_generator_8f73cd1c.
      CLEAR t37.
      DATA(t38) = me->reg.
      t37 = t38->get_objects( ).
      t36 = t37->iterate( ).
      t35 = t36.
      DO.
        DATA(t39) = abap_true.
        IF t39 = abap_false.
          EXIT.
        ENDIF.
        DATA t40 TYPE REF TO zcl_lnt_generator_17955b8b.
        CLEAR t40.
        DATA t41 TYPE REF TO zcl_lnt_generator_17955b8b.
        CLEAR t41.
        DATA(t42) = t35.
        t41 = t42->next( ).
        t40 = t41.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = t40.
        t43 = t44->done.
        IF t43 = abap_true.
          EXIT.
        ENDIF.
        DATA t45 TYPE REF TO zif_lnt_object.
        CLEAR t45.
        DATA t46 TYPE REF TO zif_lnt_object.
        CLEAR t46.
        DATA t47 TYPE REF TO zif_lnt_object.
        CLEAR t47.
        DATA(t48) = t40.
        t47 = t48->value.
        t46 = t47.
        t45 = t46.
        DATA(t49) = VALUE f( ).
        DATA(t50) = VALUE f( ).
        DATA(t51) = VALUE abap_bool( ).
        DATA(t52) = abap_false.
        t51 = t52.
        DATA t53 TYPE REF TO cx_root.
        CLEAR t53.
        TRY.
            DATA(t54) = VALUE f( ).
            DATA(t55) = VALUE i( ).
            DATA(t56) = t33.
            DATA(t57) = t45.
            t56->load( ).
            APPEND t57 TO t56->items.
            t55 = lines( t56->items ).
            t56->save( ).
            t54 = t55.
            t50 = t54.
            DATA(t58) = abap_true.
            t51 = t58.
          CATCH cx_root INTO t53.
            DATA(t59) = VALUE abap_bool( ).
            DATA(t60) = t51.
            t59 = xsdbool( t60 = abap_false ).
            IF t59 = abap_true.
              DATA(t61) = t35.
              t61->close( ).
            ENDIF.
            RAISE EXCEPTION t53.
        ENDTRY.
        DATA(t62) = VALUE abap_bool( ).
        DATA(t63) = t51.
        t62 = xsdbool( t63 = abap_false ).
        IF t62 = abap_true.
          DATA(t64) = t35.
          t64->close( ).
        ENDIF.
        DATA(t65) = t50.
        t49 = t65.
      ENDDO.
      DATA(t66) = t33.
      t32 = t66.
      t31 = t32.
      DATA(t67) = VALUE i( ).
      DATA(t68) = VALUE i( ).
      DATA(t69) = t31.
      t69->load( ).
      t68 = lines( t69->items ).
      t67 = t68.
      DATA(t70) = VALUE i( ).
      DATA(t71) = 0.
      t70 = t71.
      DATA t72 TYPE REF TO zif_lnt_object.
      CLEAR t72.
      DATA t73 TYPE REF TO zif_lnt_object.
      CLEAR t73.
      t72 = t73.
      DO.
        DATA(t74) = VALUE abap_bool( ).
        DATA(t75) = t70.
        DATA(t76) = t67.
        t74 = xsdbool( t75 < t76 ).
        IF t74 = abap_false.
          EXIT.
        ENDIF.
        DATA t77 TYPE REF TO zif_lnt_object.
        CLEAR t77.
        DATA t78 TYPE REF TO zif_lnt_object.
        CLEAR t78.
        DATA t79 TYPE REF TO zif_lnt_object.
        CLEAR t79.
        DATA(t80) = t31.
        DATA(t81) = t70.
        DATA t82 TYPE REF TO object.
        CLEAR t82.
        t82 = t80->get( p0 = t81 ).
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        CLEAR t79.
        IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t83 ?= t82.
          DATA t84 TYPE REF TO object.
          CLEAR t84.
          t84 = t83->as_ref( ).
          t79 ?= t84.
        ELSE.
          t79 ?= t82.
        ENDIF.
        t78 = t79.
        t77 = t78.
        DATA(t85) = VALUE abap_bool( ).
        DATA(t86) = VALUE abap_bool( ).
        DATA(t87) = VALUE string( ).
        DATA(t88) = t77.
        t87 = t88->get_type( ).
        DATA(t89) = |SICF|.
        t86 = xsdbool( t87 = t89 ).
        t85 = t86.
        IF t86 = abap_true.
          DATA(t90) = VALUE abap_bool( ).
          DATA(t91) = VALUE string( ).
          DATA(t92) = VALUE string( ).
          DATA(t93) = t77.
          t92 = t93->get_name( ).
          DATA(t94) = strlen( t92 ).
          t91 = t92.
          IF t91 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t91 TO UPPER CASE.
          ELSE.
            t91 = zlnt_runtime_uppe_91169605024d=>full( t91 ).
          ENDIF.
          DATA(t95) = VALUE string( ).
          DATA(t96) = VALUE string( ).
          DATA(t97) = t2.
          DATA(t98) = strlen( t97 ).
          t96 = t97.
          IF t96 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t96 TO UPPER CASE.
          ELSE.
            t96 = zlnt_runtime_uppe_91169605024d=>full( t96 ).
          ENDIF.
          DATA(t99) = | |.
          DATA(t100) = strlen( t96 ).
          t95 = |{ t96 }{ t99 }|.
          DATA(t101) = strlen( t91 ).
          DATA(t102) = VALUE i( ).
          DATA(t103) = VALUE i( ).
          DATA(t104) = VALUE string( ).
          t102 = strlen( t95 ).
          IF t102 = 0.
            t90 = abap_true.
          ELSEIF t102 <= t101.
            t103 = 0.
            t104 = t91+t103(t102).
            IF t104 = t95.
              t90 = abap_true.
            ENDIF.
          ENDIF.
          t85 = t90.
        ENDIF.
        IF t85 = abap_true.
          DATA t105 TYPE REF TO zif_lnt_object.
          CLEAR t105.
          DATA(t106) = abap_true.
          IF t106 = abap_true.
            DATA(t107) = t77.
            t105 = t107.
          ELSE.
            DATA t108 TYPE REF TO zif_lnt_object.
            CLEAR t108.
            t105 = t108.
          ENDIF.
          t72 = t105.
          EXIT.
        ENDIF.
        DATA(t109) = VALUE i( ).
        DATA(t110) = t70.
        DATA(t111) = 1.
        t109 = t110 + t111.
        t70 = t109.
      ENDDO.
      DATA(t112) = t72.
      t30 = t112.
      t6 = t30.
    ENDIF.
    DATA(t113) = VALUE abap_bool( ).
    DATA t114 TYPE REF TO zif_lnt_object.
    CLEAR t114.
    DATA(t115) = t6.
    t114 = t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    t116 = t117.
    DATA(t118) = VALUE abap_bool( ).
    DATA(t119) = t114.
    IF t119 IS INITIAL.
      t118 = abap_true.
    ENDIF.
    t113 = t118.
    IF t113 = abap_true.
      DATA t120 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t120.
      DATA t121 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t121.
      DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t122.
      DATA(t123) = abap_true.
      IF t123 = abap_true.
        DATA(t124) = |rename, object not found|.
        DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t125->has = abap_true.
        t125->value = t124.
        t122 = t125.
      ELSE.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        t122 = t126.
      ENDIF.
      t121 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t122 ).
      t120 = NEW #( ).
      t120->payload = t121.
      CLEAR t120->source_value.
      IF t121 IS BOUND.
        DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t127.
        DATA t128 TYPE REF TO object.
        CLEAR t128.
        CLEAR t127.
        t128 = t121.
        TRY.
            t120->source_value ?= t128.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120->source_value IS NOT BOUND.
          TRY.
              t127 ?= t121.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t127 IS BOUND.
            t120->source_value = t127->source( ).
          ENDIF.
          IF t120->source_value IS NOT BOUND.
            CREATE OBJECT t120->source_value.
            t120->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t120->source_value->oval = t121.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t120.
    ELSE.
      DATA(t129) = VALUE abap_bool( ).
      DATA(t130) = VALUE f( ).
      DATA(t131) = VALUE i( ).
      DATA(t132) = t3.
      DATA(t133) = strlen( t132 ).
      t131 = t133.
      t130 = t131.
      DATA(t134) = VALUE f( ).
      DATA t135 TYPE REF TO zcl_lnt_iallowed_naming.
      CLEAR t135.
      DATA t136 TYPE REF TO zif_lnt_object.
      CLEAR t136.
      DATA(t137) = t6.
      t136 = t137.
      t135 = t136->get_allowed_naming( ).
      t134 = t135->max_length.
      t129 = xsdbool( t130 > t134 ).
      IF t129 = abap_true.
        DATA t138 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t138.
        DATA t139 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t139.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        DATA(t141) = abap_true.
        IF t141 = abap_true.
          DATA(t142) = |Name not allowed|.
          DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t143->has = abap_true.
          t143->value = t142.
          t140 = t143.
        ELSE.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t144.
          t140 = t144.
        ENDIF.
        t139 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t140 ).
        t138 = NEW #( ).
        t138->payload = t139.
        CLEAR t138->source_value.
        IF t139 IS BOUND.
          DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t145.
          DATA t146 TYPE REF TO object.
          CLEAR t146.
          CLEAR t145.
          t146 = t139.
          TRY.
              t138->source_value ?= t146.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t138->source_value IS NOT BOUND.
            TRY.
                t145 ?= t139.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t145 IS BOUND.
              t138->source_value = t145->source( ).
            ENDIF.
            IF t138->source_value IS NOT BOUND.
              CREATE OBJECT t138->source_value.
              t138->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t138->source_value->oval = t139.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t138.
      ENDIF.
    ENDIF.
    DATA t147 TYPE REF TO zif_lnt_object_renamer.
    CLEAR t147.
    DATA t148 TYPE REF TO zif_lnt_object_renamer.
    CLEAR t148.
    DATA(t149) = t1.
    t148 = me->factory( i_type_9913 = t149 ).
    t147 = t148.
    DATA t150 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t150.
    DATA(t151) = t147.
    DATA t152 TYPE REF TO zif_lnt_object.
    CLEAR t152.
    DATA(t153) = t6.
    t152 = t153.
    DATA(t154) = VALUE string( ).
    DATA(t155) = t2.
    DATA(t156) = strlen( t155 ).
    t154 = t155.
    IF t154 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t154 TO UPPER CASE.
    ELSE.
      t154 = zlnt_runtime_uppe_91169605024d=>full( t154 ).
    ENDIF.
    DATA(t157) = t3.
    t150 = t151->build_edits( i_obj_1ed0 = t152 i_old_name = t154 i_new_name = t157 ).
    result = t150.

  ENDMETHOD.

  METHOD factory.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = t1.
    DATA(t4) = |CLAS|.
    t2 = xsdbool( t3 = t4 ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zcl_lnt_rename_global_class.
      CLEAR t5.
      DATA(t6) = me->reg.
      t5 = NEW zcl_lnt_rename_global_class( i_reg_f149 = t6 ).
      result = t5.
      RETURN.
    ELSE.
      DATA(t7) = VALUE abap_bool( ).
      DATA(t8) = t1.
      DATA(t9) = |DTEL|.
      t7 = xsdbool( t8 = t9 ).
      IF t7 = abap_true.
        DATA t10 TYPE REF TO zcl_lnt_rename_data_element.
        CLEAR t10.
        DATA(t11) = me->reg.
        t10 = NEW zcl_lnt_rename_data_element( i_reg_f149 = t11 ).
        result = t10.
        RETURN.
      ELSE.
        DATA(t12) = VALUE abap_bool( ).
        DATA(t13) = t1.
        DATA(t14) = |DOMA|.
        t12 = xsdbool( t13 = t14 ).
        IF t12 = abap_true.
          DATA t15 TYPE REF TO zcl_lnt_rename_domain.
          CLEAR t15.
          DATA(t16) = me->reg.
          t15 = NEW zcl_lnt_rename_domain( i_reg_f149 = t16 ).
          result = t15.
          RETURN.
        ELSE.
          DATA(t17) = VALUE abap_bool( ).
          DATA(t18) = t1.
          DATA(t19) = |TABL|.
          t17 = xsdbool( t18 = t19 ).
          IF t17 = abap_true.
            DATA t20 TYPE REF TO zcl_lnt_rename_table.
            CLEAR t20.
            DATA(t21) = me->reg.
            t20 = NEW zcl_lnt_rename_table( i_reg_f149 = t21 ).
            result = t20.
            RETURN.
          ELSE.
            DATA(t22) = VALUE abap_bool( ).
            DATA(t23) = t1.
            DATA(t24) = |TTYP|.
            t22 = xsdbool( t23 = t24 ).
            IF t22 = abap_true.
              DATA t25 TYPE REF TO zcl_lnt_rename_table_type.
              CLEAR t25.
              DATA(t26) = me->reg.
              t25 = NEW zcl_lnt_rename_table_type( i_reg_f149 = t26 ).
              result = t25.
              RETURN.
            ELSE.
              DATA(t27) = VALUE abap_bool( ).
              DATA(t28) = t1.
              DATA(t29) = |INTF|.
              t27 = xsdbool( t28 = t29 ).
              IF t27 = abap_true.
                DATA t30 TYPE REF TO zcl_lnt_rnm_glbl_intrfc.
                CLEAR t30.
                DATA(t31) = me->reg.
                t30 = NEW zcl_lnt_rnm_glbl_intrfc( i_reg_f149 = t31 ).
                result = t30.
                RETURN.
              ELSE.
                DATA(t32) = VALUE abap_bool( ).
                DATA(t33) = t1.
                DATA(t34) = |PROG|.
                t32 = xsdbool( t33 = t34 ).
                IF t32 = abap_true.
                  DATA t35 TYPE REF TO zcl_lnt_rename_program.
                  CLEAR t35.
                  DATA(t36) = me->reg.
                  t35 = NEW zcl_lnt_rename_program( i_reg_f149 = t36 ).
                  result = t35.
                  RETURN.
                ELSE.
                  DATA(t37) = VALUE abap_bool( ).
                  DATA(t38) = t1.
                  DATA(t39) = |MSAG|.
                  t37 = xsdbool( t38 = t39 ).
                  IF t37 = abap_true.
                    DATA t40 TYPE REF TO zcl_lnt_rename_message_class.
                    CLEAR t40.
                    DATA(t41) = me->reg.
                    t40 = NEW zcl_lnt_rename_message_class( i_reg_f149 = t41 ).
                    result = t40.
                    RETURN.
                  ELSE.
                    DATA(t42) = VALUE abap_bool( ).
                    DATA(t43) = t1.
                    DATA(t44) = |SICF|.
                    t42 = xsdbool( t43 = t44 ).
                    IF t42 = abap_true.
                      DATA t45 TYPE REF TO zcl_lnt_rename_icf_service.
                      CLEAR t45.
                      DATA(t46) = me->reg.
                      t45 = NEW zcl_lnt_rename_icf_service( i_reg_f149 = t46 ).
                      result = t45.
                      RETURN.
                    ELSE.
                      DATA t47 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
                      CLEAR t47.
                      DATA t48 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
                      CLEAR t48.
                      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t49.
                      DATA(t50) = abap_true.
                      IF t50 = abap_true.
                        DATA(t51) = VALUE string( ).
                        DATA(t52) = VALUE string( ).
                        DATA(t53) = |Renaming of |.
                        DATA(t54) = t1.
                        DATA(t55) = strlen( t53 ).
                        t52 = |{ t53 }{ t54 }|.
                        DATA(t56) = | not yet supported|.
                        DATA(t57) = strlen( t52 ).
                        t51 = |{ t52 }{ t56 }|.
                        DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t58->has = abap_true.
                        t58->value = t51.
                        t49 = t58.
                      ELSE.
                        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t59.
                        t49 = t59.
                      ENDIF.
                      t48 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t49 ).
                      t47 = NEW #( ).
                      t47->payload = t48.
                      CLEAR t47->source_value.
                      IF t48 IS BOUND.
                        DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
                        CLEAR t60.
                        DATA t61 TYPE REF TO object.
                        CLEAR t61.
                        CLEAR t60.
                        t61 = t48.
                        TRY.
                            t47->source_value ?= t61.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                        IF t47->source_value IS NOT BOUND.
                          TRY.
                              t60 ?= t48.
                            CATCH cx_sy_move_cast_error.
                          ENDTRY.
                          IF t60 IS BOUND.
                            t47->source_value = t60->source( ).
                          ENDIF.
                          IF t47->source_value IS NOT BOUND.
                            CREATE OBJECT t47->source_value.
                            t47->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                            t47->source_value->oval = t48.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                      RAISE EXCEPTION t47.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD apply.
    DATA t1 TYPE REF TO object.
    CLEAR t1.
    t1 = i_edits.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_irename_result.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_irename_result.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t6.
    DATA(t7) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t8.
    DATA(t9) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t10.
    DATA(t11) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t10 = t11.
    t5 = NEW zcl_lnt_irename_result( i_deleted_files = t8 i_added_files = t6 i_updated_files = t10 ).
    CREATE OBJECT t5->zlnt_view_ownkeys_b0e8086400eb.
    t5->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `addedFiles` p1 = t12 ).
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `deletedFiles` p1 = t13 ).
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updatedFiles` p1 = t14 ).
    ENDIF.
    CREATE OBJECT t5->zlnt_json_ownkeys_70e5fd461788.
    t5->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t15) = |addedFiles|.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t15 p1 = t16 ).
    ENDIF.
    DATA(t17) = |deletedFiles|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
    ENDIF.
    DATA(t19) = |updatedFiles|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
    ENDIF.
    t4 = t5.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    DATA t24 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t24.
    DATA t25 TYPE REF TO object.
    CLEAR t25.
    t25 = t1.
    t24 ?= t25.
    t23 = t24->document_changes.
    t22 = t23.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = t22.
    t27 = xsdbool( t28 IS BOUND ).
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t29.
      DATA(t30) = t22.
      t29 = t30.
      t26 = t29.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t31.
      CREATE OBJECT t31.
      t26 = t31.
    ENDIF.
    t21 = t26.
    DATA t32 TYPE REF TO object.
    CLEAR t32.
    DATA t33 TYPE REF TO object.
    CLEAR t33.
    DATA(t34) = VALUE i( ).
    DO.
      t21->load( ).
      IF t34 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t33.
      READ TABLE t21->items INDEX t34 + 1 INTO t33.
      t34 = t34 + 1.
      t32 = t33.
      DATA(t35) = VALUE abap_bool( ).
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      t37 = t32.
      CLEAR t36.
      IF t37 IS BOUND.
        DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t38.
        DATA t39 TYPE REF TO object.
        CLEAR t39.
        CLEAR t38.
        t39 = t37.
        TRY.
            t36 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS NOT BOUND.
          TRY.
              t38 ?= t37.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t38 IS BOUND.
            t36 = t38->source( ).
          ENDIF.
          IF t36 IS NOT BOUND.
            CREATE OBJECT t36.
            t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t36->oval = t37.
          ENDIF.
        ENDIF.
      ENDIF.
      t35 = zlnt_runtime_lspg_9f4574ef5f1a=>text_document( t36 ).
      IF t35 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_text_document_edit.
        CLEAR t40.
        DATA t41 TYPE REF TO object.
        CLEAR t41.
        t41 = t32.
        t40 ?= t41.
        me->apply_edit( i_dc = t40 ).
        DATA t42 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t42.
        DATA t43 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t43.
        DATA(t44) = t4.
        t43 = t44->updated_files.
        DATA(t45) = VALUE string( ).
        DATA t46 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        CLEAR t46.
        DATA t47 TYPE REF TO zcl_lnt_text_document_edit.
        CLEAR t47.
        DATA t48 TYPE REF TO object.
        CLEAR t48.
        t48 = t32.
        t47 ?= t48.
        t46 = t47->text_document.
        t45 = t46->zlnt_view_read_no_99604757acee( ).
        t42 = t43->add( p0 = t45 ).
      ELSE.
        DATA(t49) = VALUE abap_bool( ).
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t50.
        DATA t51 TYPE REF TO object.
        CLEAR t51.
        t51 = t32.
        CLEAR t50.
        IF t51 IS BOUND.
          DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t52.
          DATA t53 TYPE REF TO object.
          CLEAR t53.
          CLEAR t52.
          t53 = t51.
          TRY.
              t50 ?= t53.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t50 IS NOT BOUND.
            TRY.
                t52 ?= t51.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t52 IS BOUND.
              t50 = t52->source( ).
            ENDIF.
            IF t50 IS NOT BOUND.
              CREATE OBJECT t50.
              t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t50->oval = t51.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA(t54) = abap_true.
        t49 = zlnt_runtime_lspg_9f4574ef5f1a=>rename( p0 = t50 condition = t54 ).
        IF t49 = abap_true.
          DATA(t55) = t2.
          DATA t56 TYPE REF TO zcl_lnt_rename_file.
          CLEAR t56.
          DATA t57 TYPE REF TO object.
          CLEAR t57.
          t57 = t32.
          t56 ?= t57.
          t55->load( ).
          APPEND t56 TO t55->items.
          t55->save( ).
        ELSE.
          DATA t58 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          CLEAR t58.
          DATA t59 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t59.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t60.
          DATA(t61) = abap_true.
          IF t61 = abap_true.
            DATA(t62) = |unexpected documentChange type|.
            DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t63->has = abap_true.
            t63->value = t62.
            t60 = t63.
          ELSE.
            DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t64.
            t60 = t64.
          ENDIF.
          t59 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t60 ).
          t58 = NEW #( ).
          t58->payload = t59.
          CLEAR t58->source_value.
          IF t59 IS BOUND.
            DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t65.
            DATA t66 TYPE REF TO object.
            CLEAR t66.
            CLEAR t65.
            t66 = t59.
            TRY.
                t58->source_value ?= t66.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t58->source_value IS NOT BOUND.
              TRY.
                  t65 ?= t59.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t65 IS BOUND.
                t58->source_value = t65->source( ).
              ENDIF.
              IF t58->source_value IS NOT BOUND.
                CREATE OBJECT t58->source_value.
                t58->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t58->source_value->oval = t59.
              ENDIF.
            ENDIF.
          ENDIF.
          RAISE EXCEPTION t58.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t67) = t2.
    DATA t68 TYPE REF TO zcl_lnt_rename_file.
    CLEAR t68.
    DATA t69 TYPE REF TO object.
    CLEAR t69.
    DATA(t70) = VALUE i( ).
    DO.
      t67->load( ).
      IF t70 >= lines( t67->items ).
        EXIT.
      ENDIF.
      CLEAR t69.
      READ TABLE t67->items INDEX t70 + 1 INTO t69.
      t70 = t70 + 1.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      CLEAR t68.
      IF t69 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t71 ?= t69.
        DATA t72 TYPE REF TO object.
        CLEAR t72.
        t72 = t71->as_ref( ).
        t68 ?= t72.
      ELSE.
        t68 ?= t69.
      ENDIF.
      DATA(t73) = VALUE abap_bool( ).
      DATA t74 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t74.
      DATA(t75) = t4.
      t74 = t75->updated_files.
      DATA(t76) = VALUE string( ).
      DATA(t77) = t68.
      t76 = t77->old_uri.
      t73 = t74->delete( p0 = t76 ).
      DATA t78 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t78.
      DATA t79 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t79.
      DATA(t80) = t4.
      t79 = t80->deleted_files.
      DATA(t81) = VALUE string( ).
      DATA(t82) = t68.
      t81 = t82->old_uri.
      t78 = t79->add( p0 = t81 ).
      DATA t83 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t83.
      DATA t84 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t84.
      DATA(t85) = t4.
      t84 = t85->added_files.
      DATA(t86) = VALUE string( ).
      DATA(t87) = t68.
      t86 = t87->new_uri.
      t83 = t84->add( p0 = t86 ).
    ENDDO.
    DATA(t88) = t2.
    me->apply_renames( i_renames = t88 ).
    DATA(t89) = t4.
    result = t89.

  ENDMETHOD.

  METHOD apply_edit.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA t1 TYPE REF TO object.
    CLEAR t1.
    t1 = i_dc.
    DATA t2 TYPE REF TO zif_lnt_file.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_file.
    CLEAR t3.
    DATA(t4) = me->reg.
    DATA(t5) = VALUE string( ).
    DATA t6 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_text_document_edit.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    t8 = t1.
    t7 ?= t8.
    t6 = t7->text_document.
    t5 = t6->zlnt_view_read_no_99604757acee( ).
    t3 = t4->get_file_by_name( i_filename = t5 ).
    t2 = t3.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zif_lnt_file.
    CLEAR t10.
    DATA(t11) = t2.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t10.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    t9 = t14.
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA(t20) = VALUE string( ).
        DATA(t21) = VALUE string( ).
        DATA(t22) = |file |.
        DATA(t23) = VALUE string( ).
        DATA t24 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        CLEAR t24.
        DATA t25 TYPE REF TO zcl_lnt_text_document_edit.
        CLEAR t25.
        DATA t26 TYPE REF TO object.
        CLEAR t26.
        t26 = t1.
        t25 ?= t26.
        t24 = t25->text_document.
        t23 = t24->zlnt_view_read_no_99604757acee( ).
        DATA(t27) = strlen( t22 ).
        t21 = |{ t22 }{ t23 }|.
        DATA(t28) = | not found|.
        DATA(t29) = strlen( t21 ).
        t20 = |{ t21 }{ t28 }|.
        DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t30->has = abap_true.
        t30->value = t20.
        t18 = t30.
      ELSE.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        t18 = t31.
      ENDIF.
      t17 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t18 ).
      t16 = NEW #( ).
      t16->payload = t17.
      CLEAR t16->source_value.
      IF t17 IS BOUND.
        DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t32.
        DATA t33 TYPE REF TO object.
        CLEAR t33.
        CLEAR t32.
        t33 = t17.
        TRY.
            t16->source_value ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t16->source_value IS NOT BOUND.
          TRY.
              t32 ?= t17.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t32 IS BOUND.
            t16->source_value = t32->source( ).
          ENDIF.
          IF t16->source_value IS NOT BOUND.
            CREATE OBJECT t16->source_value.
            t16->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t16->source_value->oval = t17.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t16.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_file.
    CLEAR t36.
    DATA(t37) = t2.
    t36 = t37.
    t35 = t36->get_raw_rows( ).
    t34 = t35.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    DATA t39 TYPE REF TO zcl_lnt_text_document_edit.
    CLEAR t39.
    DATA t40 TYPE REF TO object.
    CLEAR t40.
    t40 = t1.
    t39 ?= t40.
    t38 = t39->edits.
    DATA t41 TYPE REF TO object.
    CLEAR t41.
    DATA t42 TYPE REF TO object.
    CLEAR t42.
    DATA(t43) = VALUE i( ).
    DO.
      t38->load( ).
      IF t43 >= lines( t38->items ).
        EXIT.
      ENDIF.
      CLEAR t42.
      READ TABLE t38->items INDEX t43 + 1 INTO t42.
      t43 = t43 + 1.
      t41 = t42.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = VALUE string( ).
      DATA(t47) = |newText|.
      t46 = t47.
      DATA t48 TYPE REF TO object.
      CLEAR t48.
      DATA t49 TYPE REF TO object.
      CLEAR t49.
      t49 = t41.
      t48 = t49.
      DATA(t50) = VALUE abap_bool( ).
      DATA t51 TYPE REF TO object.
      CLEAR t51.
      t51 = t48.
      DATA(t52) = t46.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t54.
      CLEAR t53.
      CLEAR t54.
      IF t51 IS NOT BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: erasedPropertyHas: receiver is undefined`.
      ENDIF.
      TRY.
          t53 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t54 ?= t51.
          CATCH cx_sy_move_cast_error.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: erasedPropertyHas: reference lacks view storage`.
        ENDTRY.
        t53 = t54->source( ).
        IF t53 IS NOT BOUND.
          IF t54->structural( ) = abap_false.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: erasedPropertyHas: source-less storage is not structural`.
          ENDIF.
          t50 = t54->has( t52 ).
        ELSE.
          t50 = t53->has( t52 ).
        ENDIF.
      ELSE.
        IF t53->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: erasedPropertyHas: source is not object graph`.
        ENDIF.
        t50 = t53->has( t52 ).
      ENDIF.
      IF t50 = abap_false.
        t50 = xsdbool( t52 = `constructor` OR t52 = `__proto__` OR t52 = `hasOwnProperty` OR t52 = `isPrototypeOf` OR t52 = `propertyIsEnumerable` OR t52 = `toLocaleString` OR t52 = `toString` OR t52 = `valueOf` OR t52 = `__defineGetter__`
        OR t52 = `__defineSetter__` OR t52 = `__lookupGetter__` OR t52 = `__lookupSetter__` ).
      ENDIF.
      t45 = t50.
      DATA(t55) = abap_false.
      t44 = xsdbool( t45 = t55 ).
      IF t44 = abap_true.
        DATA t56 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t56.
        DATA t57 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t57.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        DATA(t59) = abap_true.
        IF t59 = abap_true.
          DATA(t60) = |applyEdit, snippet edit not supported|.
          DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t61->has = abap_true.
          t61->value = t60.
          t58 = t61.
        ELSE.
          DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t62.
          t58 = t62.
        ENDIF.
        t57 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t58 ).
        t56 = NEW #( ).
        t56->payload = t57.
        CLEAR t56->source_value.
        IF t57 IS BOUND.
          DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t63.
          DATA t64 TYPE REF TO object.
          CLEAR t64.
          CLEAR t63.
          t64 = t57.
          TRY.
              t56->source_value ?= t64.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t56->source_value IS NOT BOUND.
            TRY.
                t63 ?= t57.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t63 IS BOUND.
              t56->source_value = t63->source( ).
            ENDIF.
            IF t56->source_value IS NOT BOUND.
              CREATE OBJECT t56->source_value.
              t56->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t56->source_value->oval = t57.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t56.
      ENDIF.
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE f( ).
      DATA t67 TYPE REF TO zcl_lnt_no_position.
      CLEAR t67.
      DATA t68 TYPE REF TO zcl_lnt_range.
      CLEAR t68.
      DATA t69 TYPE REF TO zcl_lnt_union_0fb2de53.
      CLEAR t69.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      DATA t71 TYPE REF TO object.
      CLEAR t71.
      t71 = t41.
      CLEAR t70.
      IF t71 IS BOUND.
        DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t72.
        DATA t73 TYPE REF TO object.
        CLEAR t73.
        CLEAR t72.
        t73 = t71.
        TRY.
            t70 ?= t73.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS NOT BOUND.
          TRY.
              t72 ?= t71.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t72 IS BOUND.
            t70 = t72->source( ).
          ENDIF.
          IF t70 IS NOT BOUND.
            CREATE OBJECT t70.
            t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t70->oval = t71.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t69.
      IF t70 IS BOUND.
        IF t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t69 ?= t70->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t69 IS NOT BOUND.
          IF t70->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t74.
            IF t70->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t74 ?= t70->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t74->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          t69 = NEW zcl_lnt_union_0fb2de53( view_source = t70 ).
        ENDIF.
      ENDIF.
      t68 = t69->zlnt_view_read_un_4fa0c5b5e04a( ).
      t67 = t68->zlnt_view_read_no_afe0c94a5142( ).
      t66 = t67->zlnt_view_read_no_30cccf3c929a( ).
      DATA(t75) = VALUE f( ).
      DATA t76 TYPE REF TO zcl_lnt_no_position.
      CLEAR t76.
      DATA t77 TYPE REF TO zcl_lnt_range.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_union_0fb2de53.
      CLEAR t78.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      DATA t80 TYPE REF TO object.
      CLEAR t80.
      t80 = t41.
      CLEAR t79.
      IF t80 IS BOUND.
        DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t81.
        DATA t82 TYPE REF TO object.
        CLEAR t82.
        CLEAR t81.
        t82 = t80.
        TRY.
            t79 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS NOT BOUND.
          TRY.
              t81 ?= t80.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t81 IS BOUND.
            t79 = t81->source( ).
          ENDIF.
          IF t79 IS NOT BOUND.
            CREATE OBJECT t79.
            t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t79->oval = t80.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t78.
      IF t79 IS BOUND.
        IF t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t78 ?= t79->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t78 IS NOT BOUND.
          IF t79->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t83.
            IF t79->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t83 ?= t79->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t83->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          t78 = NEW zcl_lnt_union_0fb2de53( view_source = t79 ).
        ENDIF.
      ENDIF.
      t77 = t78->zlnt_view_read_un_4fa0c5b5e04a( ).
      t76 = t77->zlnt_view_read_no_04608ad22a15( ).
      t75 = t76->zlnt_view_read_no_30cccf3c929a( ).
      t65 = xsdbool( t66 <> t75 ).
      IF t65 = abap_true.
        DATA t84 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t84.
        DATA t85 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t85.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        DATA(t87) = abap_true.
        IF t87 = abap_true.
          DATA(t88) = |applyEdit, start and end line differ|.
          DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t89->has = abap_true.
          t89->value = t88.
          t86 = t89.
        ELSE.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t90.
          t86 = t90.
        ENDIF.
        t85 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t86 ).
        t84 = NEW #( ).
        t84->payload = t85.
        CLEAR t84->source_value.
        IF t85 IS BOUND.
          DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t91.
          DATA t92 TYPE REF TO object.
          CLEAR t92.
          CLEAR t91.
          t92 = t85.
          TRY.
              t84->source_value ?= t92.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t84->source_value IS NOT BOUND.
            TRY.
                t91 ?= t85.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t91 IS BOUND.
              t84->source_value = t91->source( ).
            ENDIF.
            IF t84->source_value IS NOT BOUND.
              CREATE OBJECT t84->source_value.
              t84->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t84->source_value->oval = t85.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t84.
      ENDIF.
      DATA(t93) = VALUE string( ).
      DATA(t94) = VALUE string( ).
      DATA(t95) = t34.
      DATA(t96) = VALUE i( ).
      DATA(t97) = VALUE f( ).
      DATA t98 TYPE REF TO zcl_lnt_no_position.
      CLEAR t98.
      DATA t99 TYPE REF TO zcl_lnt_range.
      CLEAR t99.
      DATA t100 TYPE REF TO zcl_lnt_union_0fb2de53.
      CLEAR t100.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      DATA t102 TYPE REF TO object.
      CLEAR t102.
      t102 = t41.
      CLEAR t101.
      IF t102 IS BOUND.
        DATA t103 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t103.
        DATA t104 TYPE REF TO object.
        CLEAR t104.
        CLEAR t103.
        t104 = t102.
        TRY.
            t101 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t101 IS NOT BOUND.
          TRY.
              t103 ?= t102.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t103 IS BOUND.
            t101 = t103->source( ).
          ENDIF.
          IF t101 IS NOT BOUND.
            CREATE OBJECT t101.
            t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t101->oval = t102.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t100.
      IF t101 IS BOUND.
        IF t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t100 ?= t101->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t100 IS NOT BOUND.
          IF t101->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t105.
            IF t101->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t105 ?= t101->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t105->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          t100 = NEW zcl_lnt_union_0fb2de53( view_source = t101 ).
        ENDIF.
      ENDIF.
      t99 = t100->zlnt_view_read_un_4fa0c5b5e04a( ).
      t98 = t99->zlnt_view_read_no_afe0c94a5142( ).
      t97 = t98->zlnt_view_read_no_30cccf3c929a( ).
      IF t97 > range_i32_upper.
        t96 = range_i32_upper.
      ELSEIF t97 < range_i32_lower.
        t96 = range_i32_lower.
      ELSE.
        t96 = trunc( t97 ).
      ENDIF.
      t96 = t96 + 1.
      IF t95->has( t96 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t95->load( ).
      CLEAR t94.
      READ TABLE t95->items INDEX t96 INTO t94.
      t93 = t94.
      DATA(t106) = t34.
      DATA(t107) = VALUE i( ).
      DATA(t108) = VALUE f( ).
      DATA t109 TYPE REF TO zcl_lnt_no_position.
      CLEAR t109.
      DATA t110 TYPE REF TO zcl_lnt_range.
      CLEAR t110.
      DATA t111 TYPE REF TO zcl_lnt_union_0fb2de53.
      CLEAR t111.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      DATA t113 TYPE REF TO object.
      CLEAR t113.
      t113 = t41.
      CLEAR t112.
      IF t113 IS BOUND.
        DATA t114 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t114.
        DATA t115 TYPE REF TO object.
        CLEAR t115.
        CLEAR t114.
        t115 = t113.
        TRY.
            t112 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t112 IS NOT BOUND.
          TRY.
              t114 ?= t113.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t114 IS BOUND.
            t112 = t114->source( ).
          ENDIF.
          IF t112 IS NOT BOUND.
            CREATE OBJECT t112.
            t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t112->oval = t113.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t111.
      IF t112 IS BOUND.
        IF t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t111 ?= t112->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t111 IS NOT BOUND.
          IF t112->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t116 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t116.
            IF t112->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t116 ?= t112->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t116->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          t111 = NEW zcl_lnt_union_0fb2de53( view_source = t112 ).
        ENDIF.
      ENDIF.
      t110 = t111->zlnt_view_read_un_4fa0c5b5e04a( ).
      t109 = t110->zlnt_view_read_no_afe0c94a5142( ).
      t108 = t109->zlnt_view_read_no_30cccf3c929a( ).
      IF t108 > range_i32_upper.
        t107 = range_i32_upper.
      ELSEIF t108 < range_i32_lower.
        t107 = range_i32_lower.
      ELSE.
        t107 = trunc( t108 ).
      ENDIF.
      DATA(t117) = VALUE string( ).
      DATA(t118) = VALUE string( ).
      DATA(t119) = VALUE string( ).
      DATA(t120) = t93.
      DATA(t121) = 0.
      DATA(t122) = VALUE i( ).
      DATA t123 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t123.
      DATA t124 TYPE REF TO zcl_lnt_no_position.
      CLEAR t124.
      DATA t125 TYPE REF TO zcl_lnt_range.
      CLEAR t125.
      DATA t126 TYPE REF TO zcl_lnt_union_0fb2de53.
      CLEAR t126.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      DATA t128 TYPE REF TO object.
      CLEAR t128.
      t128 = t41.
      CLEAR t127.
      IF t128 IS BOUND.
        DATA t129 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t129.
        DATA t130 TYPE REF TO object.
        CLEAR t130.
        CLEAR t129.
        t130 = t128.
        TRY.
            t127 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS NOT BOUND.
          TRY.
              t129 ?= t128.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t129 IS BOUND.
            t127 = t129->source( ).
          ENDIF.
          IF t127 IS NOT BOUND.
            CREATE OBJECT t127.
            t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t127->oval = t128.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t126.
      IF t127 IS BOUND.
        IF t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t126 ?= t127->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t126 IS NOT BOUND.
          IF t127->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t131.
            IF t127->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t131 ?= t127->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t131->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          t126 = NEW zcl_lnt_union_0fb2de53( view_source = t127 ).
        ENDIF.
      ENDIF.
      t125 = t126->zlnt_view_read_un_4fa0c5b5e04a( ).
      t124 = t125->zlnt_view_read_no_afe0c94a5142( ).
      t123 = t124->zlnt_view_read_no_a9574d1ec283( ).
      t122 = zlnt_runtime_numb_290eb04a9758=>index( t123 ).
      DATA(t132) = strlen( t120 ).
      t121 = COND i( WHEN t121 < 0 THEN 0 WHEN t121 > t132 THEN t132 ELSE t121 ).
      t122 = COND i( WHEN t122 < 0 THEN 0 WHEN t122 > t132 THEN t132 ELSE t122 ).
      IF t121 > t122.
        t132 = t121.
        t121 = t122.
        t122 = t132.
      ENDIF.
      t132 = t122 - t121.
      t119 = t120+t121(t132).
      DATA(t133) = VALUE string( ).
      DATA t134 TYPE REF TO zcl_lnt_union_6c8220bd.
      CLEAR t134.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      DATA t136 TYPE REF TO object.
      CLEAR t136.
      t136 = t41.
      CLEAR t135.
      IF t136 IS BOUND.
        DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t137.
        DATA t138 TYPE REF TO object.
        CLEAR t138.
        CLEAR t137.
        t138 = t136.
        TRY.
            t135 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t135 IS NOT BOUND.
          TRY.
              t137 ?= t136.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t137 IS BOUND.
            t135 = t137->source( ).
          ENDIF.
          IF t135 IS NOT BOUND.
            CREATE OBJECT t135.
            t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t135->oval = t136.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t134.
      IF t135 IS BOUND.
        IF t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t134 ?= t135->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t134 IS NOT BOUND.
          IF t135->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t139 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t139.
            IF t135->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t139 ?= t135->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t139->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          t134 = NEW zcl_lnt_union_6c8220bd( view_source = t135 ).
        ENDIF.
      ENDIF.
      t133 = t134->zlnt_view_read_un_3c4b2399a89f( ).
      DATA(t140) = strlen( t119 ).
      t118 = |{ t119 }{ t133 }|.
      DATA(t141) = VALUE string( ).
      DATA(t142) = VALUE string( ).
      DATA(t143) = t93.
      t142 = t143.
      DATA(t144) = VALUE string( ).
      DATA(t145) = t142.
      DATA(t146) = VALUE i( ).
      DATA t147 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t147.
      DATA t148 TYPE REF TO zcl_lnt_no_position.
      CLEAR t148.
      DATA t149 TYPE REF TO zcl_lnt_range.
      CLEAR t149.
      DATA t150 TYPE REF TO zcl_lnt_union_0fb2de53.
      CLEAR t150.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      DATA t152 TYPE REF TO object.
      CLEAR t152.
      t152 = t41.
      CLEAR t151.
      IF t152 IS BOUND.
        DATA t153 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t153.
        DATA t154 TYPE REF TO object.
        CLEAR t154.
        CLEAR t153.
        t154 = t152.
        TRY.
            t151 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t151 IS NOT BOUND.
          TRY.
              t153 ?= t152.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t153 IS BOUND.
            t151 = t153->source( ).
          ENDIF.
          IF t151 IS NOT BOUND.
            CREATE OBJECT t151.
            t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t151->oval = t152.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t150.
      IF t151 IS BOUND.
        IF t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t150 ?= t151->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t150 IS NOT BOUND.
          IF t151->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t155.
            IF t151->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t155 ?= t151->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t155->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          t150 = NEW zcl_lnt_union_0fb2de53( view_source = t151 ).
        ENDIF.
      ENDIF.
      t149 = t150->zlnt_view_read_un_4fa0c5b5e04a( ).
      t148 = t149->zlnt_view_read_no_04608ad22a15( ).
      t147 = t148->zlnt_view_read_no_a9574d1ec283( ).
      t146 = zlnt_runtime_numb_290eb04a9758=>index( t147 ).
      DATA(t156) = VALUE i( ).
      DATA(t157) = t142.
      DATA(t158) = strlen( t157 ).
      t156 = t158.
      DATA(t159) = strlen( t145 ).
      t146 = COND i( WHEN t146 < 0 THEN 0 WHEN t146 > t159 THEN t159 ELSE t146 ).
      t156 = COND i( WHEN t156 < 0 THEN 0 WHEN t156 > t159 THEN t159 ELSE t156 ).
      IF t146 > t156.
        t159 = t146.
        t146 = t156.
        t156 = t159.
      ENDIF.
      t159 = t156 - t146.
      t144 = t145+t146(t159).
      t141 = t144.
      DATA(t160) = strlen( t118 ).
      t117 = |{ t118 }{ t141 }|.
      t106->put( p0 = t107 p1 = t117 ).
    ENDDO.
    DATA t161 TYPE REF TO zcl_lnt_memory_file.
    CLEAR t161.
    DATA t162 TYPE REF TO zcl_lnt_memory_file.
    CLEAR t162.
    DATA(t163) = VALUE string( ).
    DATA t164 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
    CLEAR t164.
    DATA t165 TYPE REF TO zcl_lnt_text_document_edit.
    CLEAR t165.
    DATA t166 TYPE REF TO object.
    CLEAR t166.
    t166 = t1.
    t165 ?= t166.
    t164 = t165->text_document.
    t163 = t164->zlnt_view_read_no_99604757acee( ).
    DATA(t167) = VALUE string( ).
    DATA(t168) = t34.
    DATA(t169) = |\n|.
    DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t170->has = abap_true.
    t170->value = t169.
    t167 = t168->join( p0 = t170 ).
    t162 = NEW zcl_lnt_memory_file( i_filename = t163 i_raw = t167 ).
    t161 = t162.
    DATA t171 TYPE REF TO zif_lnt_registry.
    CLEAR t171.
    DATA(t172) = me->reg.
    DATA(t173) = t161.
    t171 = t172->update_file( i_file = t173 ).
  ENDMETHOD.

  METHOD apply_renames.
    DATA(t1) = i_renames.
    DATA(t2) = t1.
    DATA t3 TYPE REF TO zcl_lnt_rename_file.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    DATA(t5) = VALUE i( ).
    DO.
      t2->load( ).
      IF t5 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t2->items INDEX t5 + 1 INTO t4.
      t5 = t5 + 1.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t4.
        DATA t7 TYPE REF TO object.
        CLEAR t7.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t4.
      ENDIF.
      DATA t8 TYPE REF TO zif_lnt_file.
      CLEAR t8.
      DATA t9 TYPE REF TO zif_lnt_file.
      CLEAR t9.
      DATA(t10) = me->reg.
      DATA(t11) = VALUE string( ).
      DATA(t12) = t3.
      t11 = t12->old_uri.
      t9 = t10->get_file_by_name( i_filename = t11 ).
      t8 = t9.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zif_lnt_file.
      CLEAR t14.
      DATA(t15) = t8.
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      t16 = t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t14.
      IF t19 IS INITIAL.
        t18 = abap_true.
      ENDIF.
      t13 = t18.
      IF t13 = abap_true.
        DATA t20 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t20.
        DATA t21 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t21.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        DATA(t23) = abap_true.
        IF t23 = abap_true.
          DATA(t24) = |applyRenames, old not found|.
          DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t25->has = abap_true.
          t25->value = t24.
          t22 = t25.
        ELSE.
          DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t26.
          t22 = t26.
        ENDIF.
        t21 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t22 ).
        t20 = NEW #( ).
        t20->payload = t21.
        CLEAR t20->source_value.
        IF t21 IS BOUND.
          DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t27.
          DATA t28 TYPE REF TO object.
          CLEAR t28.
          CLEAR t27.
          t28 = t21.
          TRY.
              t20->source_value ?= t28.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t20->source_value IS NOT BOUND.
            TRY.
                t27 ?= t21.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t27 IS BOUND.
              t20->source_value = t27->source( ).
            ENDIF.
            IF t20->source_value IS NOT BOUND.
              CREATE OBJECT t20->source_value.
              t20->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t20->source_value->oval = t21.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t20.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_memory_file.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_memory_file.
      CLEAR t30.
      DATA(t31) = VALUE string( ).
      DATA(t32) = t3.
      t31 = t32->new_uri.
      DATA(t33) = VALUE string( ).
      DATA t34 TYPE REF TO zif_lnt_file.
      CLEAR t34.
      DATA(t35) = t8.
      t34 = t35.
      t33 = t34->get_raw( ).
      t30 = NEW zcl_lnt_memory_file( i_filename = t31 i_raw = t33 ).
      t29 = t30.
      DATA t36 TYPE REF TO zif_lnt_registry.
      CLEAR t36.
      DATA(t37) = me->reg.
      DATA t38 TYPE REF TO zif_lnt_file.
      CLEAR t38.
      DATA(t39) = t8.
      t38 = t39.
      t36 = t37->remove_file( i_file = t38 ).
      DATA t40 TYPE REF TO zif_lnt_registry.
      CLEAR t40.
      DATA(t41) = me->reg.
      DATA(t42) = t29.
      t40 = t41->add_file( i_file = t42 ).
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1338_0381d2f9028f.
  ENDMETHOD.
ENDCLASS.
