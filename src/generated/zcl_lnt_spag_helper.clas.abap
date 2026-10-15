* TS: src/rules/downport.ts:49:1 SpagHelper
CLASS zcl_lnt_spag_helper DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA spag TYPE REF TO zif_lnt_spaghetti_scope_node.
    METHODS constructor IMPORTING i_spag TYPE REF TO zif_lnt_spaghetti_scope_node.
    METHODS rename_variable IMPORTING i_old_name TYPE string i_pos TYPE REF TO zcl_lnt_position i_low_file TYPE REF TO zcl_lnt_abap_file i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS find_references IMPORTING i_name TYPE string i_pos TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_recursive_duplicate IMPORTING i_name TYPE string i_skip_34cc TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS is_duplicate_name IMPORTING i_name TYPE string i_pos TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS fn_callback_191672 IMPORTING i_a TYPE REF TO zcl_lnt_irange i_b TYPE REF TO zcl_lnt_irange RETURNING VALUE(result) TYPE f.
    METHODS fn_has IMPORTING i_positions TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_element TYPE REF TO zcl_lnt_irange RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_spag_helper IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_spag.
    DATA(t2) = t1.
    me->spag = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `spag`.
  ENDMETHOD.

  METHOD rename_variable.
    DATA(t1) = i_old_name.
    DATA(t2) = i_pos.
    DATA(t3) = i_low_file.
    DATA(t4) = i_new_name.
    DATA t5 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t6 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t1.
    DATA(t10) = t2.
    t8 = me->find_references( i_name = t9 i_pos = t10 ).
    t7 = t8.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t13) = t7.
    t12 = t13.
    DATA t14 TYPE i.
    DATA(t15) = 1.
    t14 = t15.
    DO.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t14.
      DATA t18 TYPE i.
      DATA(t19) = t12.
      t19->load( ).
      t18 = lines( t19->items ).
      t16 = xsdbool( t17 < t18 ).
      IF t16 = abap_false.
        EXIT.
      ENDIF.
      DATA t20 TYPE i.
      DATA(t21) = t14.
      t20 = t21.
      DO.
        DATA t22 TYPE abap_bool.
        DATA(t23) = t20.
        DATA(t24) = 0.
        t22 = xsdbool( t23 > t24 ).
        IF t22 = abap_false.
          EXIT.
        ENDIF.
        DATA t25 TYPE REF TO zcl_lnt_irange.
        CLEAR t25.
        DATA t26 TYPE REF TO zcl_lnt_irange.
        CLEAR t26.
        DATA(t27) = t12.
        DATA t28 TYPE i.
        DATA(t29) = t20.
        DATA(t30) = 1.
        t28 = t29 - t30.
        t28 = t28 + 1.
        DATA t31 TYPE REF TO object.
        CLEAR t31.
        t27->load( ).
        CLEAR t31.
        READ TABLE t27->items INDEX t28 INTO t31.
        DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t32.
        CLEAR t26.
        IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t32 ?= t31.
          DATA t33 TYPE REF TO object.
          t33 = t32->as_ref( ).
          t26 ?= t33.
        ELSE.
          t26 ?= t31.
        ENDIF.
        t25 = t26.
        DATA t34 TYPE REF TO zcl_lnt_irange.
        CLEAR t34.
        DATA t35 TYPE REF TO zcl_lnt_irange.
        CLEAR t35.
        DATA(t36) = t12.
        DATA(t37) = t20.
        t37 = t37 + 1.
        DATA t38 TYPE REF TO object.
        CLEAR t38.
        t36->load( ).
        CLEAR t38.
        READ TABLE t36->items INDEX t37 INTO t38.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t39.
        CLEAR t35.
        IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t39 ?= t38.
          DATA t40 TYPE REF TO object.
          t40 = t39->as_ref( ).
          t35 ?= t40.
        ELSE.
          t35 ?= t38.
        ENDIF.
        t34 = t35.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = VALUE i( ).
        DATA(t43) = VALUE f( ).
        DATA t44 TYPE REF TO zcl_lnt_irange.
        DATA(t45) = t25.
        t44 = t45.
        DATA t46 TYPE REF TO zcl_lnt_irange.
        DATA(t47) = t34.
        t46 = t47.
        DATA(t48) = VALUE f( ).
        DATA t49 TYPE abap_bool.
        DATA t50 TYPE REF TO zcl_lnt_position.
        DATA(t51) = t44.
        t50 = t51->start.
        DATA t52 TYPE REF TO zcl_lnt_position.
        DATA(t53) = t46.
        t52 = t53->start.
        t49 = t50->equals( i_p = t52 ).
        IF t49 = abap_true.
          DATA(t54) = CONV f( 0 ).
          t48 = t54.
        ELSE.
          DATA(t55) = VALUE f( ).
          DATA(t56) = VALUE i( ).
          DATA t57 TYPE abap_bool.
          DATA t58 TYPE REF TO zcl_lnt_position.
          DATA(t59) = t44.
          t58 = t59->start.
          DATA t60 TYPE REF TO zcl_lnt_position.
          DATA(t61) = t46.
          t60 = t61->start.
          t57 = t58->is_after( i_p = t60 ).
          IF t57 = abap_true.
            DATA(t62) = 1.
            t56 = t62.
          ELSE.
            DATA(t63) = -1.
            t56 = t63.
          ENDIF.
          t55 = t56.
          t48 = t55.
        ENDIF.
        t43 = t48.
        t42 = t43.
        DATA(t64) = 0.
        t41 = xsdbool( t42 > t64 ).
        IF t41 = abap_true.
          DATA t65 TYPE REF TO zcl_lnt_irange.
          CLEAR t65.
          DATA t66 TYPE REF TO zcl_lnt_irange.
          CLEAR t66.
          DATA(t67) = t12.
          DATA t68 TYPE i.
          DATA(t69) = t20.
          DATA(t70) = 1.
          t68 = t69 - t70.
          t68 = t68 + 1.
          DATA t71 TYPE REF TO object.
          CLEAR t71.
          t67->load( ).
          CLEAR t71.
          READ TABLE t67->items INDEX t68 INTO t71.
          DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t72.
          CLEAR t66.
          IF t71 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t72 ?= t71.
            DATA t73 TYPE REF TO object.
            t73 = t72->as_ref( ).
            t66 ?= t73.
          ELSE.
            t66 ?= t71.
          ENDIF.
          t65 = t66.
          DATA(t74) = t12.
          DATA t75 TYPE i.
          DATA(t76) = t20.
          DATA(t77) = 1.
          t75 = t76 - t77.
          DATA t78 TYPE REF TO zcl_lnt_irange.
          CLEAR t78.
          DATA(t79) = t12.
          DATA(t80) = t20.
          t80 = t80 + 1.
          DATA t81 TYPE REF TO object.
          CLEAR t81.
          t79->load( ).
          CLEAR t81.
          READ TABLE t79->items INDEX t80 INTO t81.
          DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t82.
          CLEAR t78.
          IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t82 ?= t81.
            DATA t83 TYPE REF TO object.
            t83 = t82->as_ref( ).
            t78 ?= t83.
          ELSE.
            t78 ?= t81.
          ENDIF.
          t74->put( p0 = t75 p1 = t78 ).
          DATA(t84) = t12.
          DATA(t85) = t20.
          DATA(t86) = t65.
          t84->put( p0 = t85 p1 = t86 ).
          DATA t87 TYPE i.
          DATA(t88) = t20.
          DATA(t89) = 1.
          t87 = t88 - t89.
          t20 = t87.
        ELSE.
          EXIT.
        ENDIF.
      ENDDO.
      DATA t90 TYPE i.
      DATA(t91) = t14.
      DATA(t92) = 1.
      t90 = t91 + t92.
      t14 = t90.
    ENDDO.
    DATA(t93) = t12.
    t11 = t93.
    DATA(t94) = t7.
    DATA t95 TYPE REF TO zcl_lnt_irange.
    CLEAR t95.
    DATA t96 TYPE REF TO object.
    CLEAR t96.
    DATA(t97) = VALUE i( ).
    DO.
      t94->load( ).
      IF t97 >= lines( t94->items ).
        EXIT.
      ENDIF.
      CLEAR t96.
      READ TABLE t94->items INDEX t97 + 1 INTO t96.
      t97 = t97 + 1.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      CLEAR t95.
      IF t96 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t98 ?= t96.
        DATA t99 TYPE REF TO object.
        t99 = t98->as_ref( ).
        t95 ?= t99.
      ELSE.
        t95 ?= t96.
      ENDIF.
      DATA t100 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t101 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t102) = t3.
      DATA t103 TYPE REF TO zcl_lnt_position.
      DATA(t104) = t95.
      t103 = t104->start.
      DATA t105 TYPE REF TO zcl_lnt_position.
      DATA(t106) = t95.
      t105 = t106->end.
      DATA(t107) = t4.
      t101 = zcl_lnt_edit_helper=>replace_range( i_file = t102 i_start = t103 i_end = t105 i_text = t107 ).
      t100 = t101.
      DATA(t108) = VALUE abap_bool( ).
      DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t110) = t5.
      t109 = t110.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      t111 = t112.
      DATA(t113) = VALUE abap_bool( ).
      DATA(t114) = t109.
      IF t114 IS INITIAL.
        t113 = abap_true.
      ENDIF.
      t108 = t113.
      IF t108 = abap_true.
        DATA t115 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t115.
        DATA(t116) = abap_true.
        IF t116 = abap_true.
          DATA(t117) = t100.
          t115 = t117.
        ELSE.
          DATA t118 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t118.
          t115 = t118.
        ENDIF.
        t5 = t115.
      ELSE.
        DATA t119 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t119.
        DATA(t120) = abap_true.
        IF t120 = abap_true.
          DATA t121 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t122) = t100.
          DATA t123 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t124) = t5.
          t123 = t124.
          t121 = zcl_lnt_edit_helper=>merge( i_fix1 = t122 i_fix2 = t123 ).
          t119 = t121.
        ELSE.
          DATA t125 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t125.
          t119 = t125.
        ENDIF.
        t5 = t119.
      ENDIF.
    ENDDO.
    DATA(t126) = t5.
    result = t126.

  ENDMETHOD.

  METHOD find_references.
    DATA(t1) = i_name.
    DATA(t2) = i_pos.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t7) = me->spag.
    t6 = t7->get_data( ).
    t5 = t6->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t17 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t18) = t8.
      t17 = t18->resolved.
      t16 = t17.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = t16.
      IF t21 IS INITIAL.
        t20 = abap_true.
      ENDIF.
      IF t20 = abap_true.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        t19 = t22.
      ELSE.
        DATA(t23) = VALUE string( ).
        DATA t24 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t25 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t26) = t16.
        t25 = t26.
        t24 = t25.
        DATA(t27) = VALUE string( ).
        DATA t28 TYPE string.
        DATA t29 TYPE string.
        DATA t30 TYPE REF TO zcl_lnt_abstract_token.
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t32) = t24.
        t31 = t32->token.
        t30 = t31.
        DATA t33 TYPE string.
        DATA(t34) = t30.
        t33 = t34->str.
        t29 = t33.
        t28 = t29.
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = VALUE string( ).
        DATA(t37) = t28.
        DATA(t38) = 0.
        DATA(t39) = 1.
        DATA(t40) = strlen( t37 ).
        IF t38 < 0.
          t38 = t38 + t40.
          IF t38 < 0.
            t38 = 0.
          ENDIF.
        ENDIF.
        IF t38 > t40 OR t39 <= 0.
          CLEAR t36.
        ELSE.
          IF t39 > t40 - t38.
            t39 = t40 - t38.
          ENDIF.
          t36 = t37+t38(t39).
        ENDIF.
        DATA(t41) = |!|.
        t35 = xsdbool( t36 = t41 ).
        IF t35 = abap_true.
          DATA(t42) = VALUE string( ).
          DATA t43 TYPE string.
          DATA(t44) = t28.
          t43 = t44.
          DATA(t45) = VALUE string( ).
          DATA(t46) = t43.
          DATA(t47) = 1.
          DATA t48 TYPE i.
          DATA(t49) = t43.
          DATA(t50) = strlen( t49 ).
          t48 = t50.
          DATA(t51) = strlen( t46 ).
          IF t47 < 0.
            t47 = t47 + t51.
            IF t47 < 0.
              t47 = 0.
            ENDIF.
          ENDIF.
          IF t47 > t51 OR t48 <= 0.
            CLEAR t45.
          ELSE.
            IF t48 > t51 - t47.
              t48 = t51 - t47.
            ENDIF.
            t45 = t46+t47(t48).
          ENDIF.
          t42 = t45.
          t28 = t42.
        ENDIF.
        DATA(t52) = t28.
        t27 = t52.
        t23 = t27.
        DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t53->has = abap_true.
        t53->value = t23.
        t19 = t53.
      ENDIF.
      t15 = t19.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA(t55) = abap_true.
      IF t55 = abap_true.
        DATA(t56) = t1.
        DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t57->has = abap_true.
        t57->value = t56.
        t54 = t57.
      ELSE.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        t54 = t58.
      ENDIF.
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = VALUE abap_bool( ).
      IF t15 IS BOUND.
        t59 = t15->has.
      ENDIF.
      IF t54 IS BOUND.
        t60 = t54->has.
      ENDIF.
      IF t59 = t60.
        IF t59 = abap_false.
          t14 = abap_true.
        ELSEIF t15->value = t54->value.
          t14 = abap_true.
        ENDIF.
      ENDIF.
      t13 = t14.
      IF t14 = abap_true.
        DATA(t61) = VALUE abap_bool( ).
        DATA t62 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t62.
        DATA t63 TYPE REF TO zcl_lnt_position.
        CLEAR t63.
        DATA t64 TYPE REF TO zcl_lnt_position.
        CLEAR t64.
        DATA t65 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t66 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t67 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t68) = t8.
        t67 = t68->resolved.
        t66 = t67.
        t65 = t66.
        DATA t69 TYPE REF TO zcl_lnt_position.
        CLEAR t69.
        DATA(t70) = VALUE abap_bool( ).
        DATA(t71) = t65.
        IF t71 IS INITIAL.
          t70 = abap_true.
        ENDIF.
        IF t70 = abap_true.
          DATA t72 TYPE REF TO zcl_lnt_position.
          CLEAR t72.
          t69 = t72.
        ELSE.
          DATA t73 TYPE REF TO zcl_lnt_position.
          DATA t74 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t75) = t65.
          t74 = t75.
          DATA t76 TYPE REF TO zcl_lnt_position.
          DATA t77 TYPE REF TO zcl_lnt_abstract_token.
          DATA t78 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t79) = t74.
          t78 = t79->token.
          t77 = t78.
          DATA t80 TYPE REF TO zcl_lnt_position.
          DATA(t81) = t77.
          t80 = t81->start.
          t76 = t80.
          t73 = t76.
          t69 = t73.
        ENDIF.
        t64 = t69.
        t63 = t64.
        DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t82.
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = t63.
        IF t84 IS INITIAL.
          t83 = abap_true.
        ENDIF.
        IF t83 = abap_true.
          DATA t85 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t85.
          t82 = t85.
        ELSE.
          DATA t86 TYPE abap_bool.
          DATA t87 TYPE REF TO zcl_lnt_position.
          DATA(t88) = t63.
          t87 = t88.
          DATA(t89) = t2.
          t86 = t87->equals( i_p = t89 ).
          DATA(t90) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t90->has = abap_true.
          t90->value = t86.
          t82 = t90.
        ENDIF.
        t62 = t82.
        IF t62 IS BOUND.
          IF t62->has = abap_true.
            t61 = xsdbool( t62->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t13 = t61.
      ENDIF.
      IF t13 = abap_true.
        DATA t91 TYPE REF TO zcl_lnt_irange.
        CLEAR t91.
        DATA t92 TYPE REF TO zcl_lnt_irange.
        DATA t93 TYPE REF TO zcl_lnt_position.
        DATA t94 TYPE REF TO zcl_lnt_position.
        DATA t95 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t96 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t97) = t8.
        t96 = t97->position_7b94.
        t95 = t96.
        DATA t98 TYPE REF TO zcl_lnt_position.
        DATA t99 TYPE REF TO zcl_lnt_abstract_token.
        DATA t100 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t101) = t95.
        t100 = t101->token.
        t99 = t100.
        DATA t102 TYPE REF TO zcl_lnt_position.
        DATA(t103) = t99.
        t102 = t103->start.
        t98 = t102.
        t94 = t98.
        t93 = t94.
        DATA t104 TYPE REF TO zcl_lnt_position.
        DATA t105 TYPE REF TO zcl_lnt_position.
        DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t107 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t108) = t8.
        t107 = t108->position_7b94.
        t106 = t107.
        DATA t109 TYPE REF TO zcl_lnt_position.
        DATA t110 TYPE REF TO zcl_lnt_abstract_token.
        DATA t111 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t112) = t106.
        t111 = t112->token.
        t110 = t111.
        DATA t113 TYPE REF TO zcl_lnt_position.
        DATA t114 TYPE f.
        DATA t115 TYPE REF TO zcl_lnt_position.
        DATA t116 TYPE REF TO zcl_lnt_position.
        DATA(t117) = t110.
        t116 = t117->start.
        t115 = t116.
        DATA t118 TYPE f.
        DATA(t119) = t115.
        t118 = t119->row.
        t114 = t118.
        DATA t120 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t122 TYPE REF TO zcl_lnt_position.
        DATA t123 TYPE REF TO zcl_lnt_position.
        DATA(t124) = t110.
        t123 = t124->start.
        t122 = t123.
        DATA t125 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t126) = t122.
        t125 = t126->col.
        t121 = t125.
        DATA t127 TYPE f.
        DATA t128 TYPE i.
        DATA t129 TYPE string.
        DATA(t130) = t110.
        t129 = t130->str.
        DATA(t131) = strlen( t129 ).
        t128 = t131.
        t127 = t128.
        DATA(t132) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t132->has = abap_true.
        t132->value = t127.
        t120 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t121 right = t132 op = `+` ).
        t113 = NEW zcl_lnt_position( i_row = t114 i_col = t120 ).
        t109 = t113.
        t105 = t109.
        t104 = t105.
        t92 = NEW zcl_lnt_irange( i_start = t93 i_end = t104 ).
        CREATE OBJECT t92->zlnt_view_ownkeys_b0e8086400eb.
        t92->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t133 ).
        ENDIF.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t134 ).
        ENDIF.
        CREATE OBJECT t92->zlnt_json_ownkeys_70e5fd461788.
        t92->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t135) = |start|.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
        ENDIF.
        DATA(t137) = |end|.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
        ENDIF.
        t91 = t92.
        DATA t139 TYPE abap_bool.
        DATA t140 TYPE abap_bool.
        DATA(t141) = t3.
        DATA(t142) = t91.
        t140 = me->fn_has( i_positions = t141 i_element = t142 ).
        DATA(t143) = abap_false.
        t139 = xsdbool( t140 = t143 ).
        IF t139 = abap_true.
          DATA(t144) = t3.
          DATA(t145) = t91.
          t144->load( ).
          APPEND t145 TO t144->items.
          t144->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t147) = me->spag.
    t146 = t147->get_children( ).
    DATA t148 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t148.
    DATA t149 TYPE REF TO object.
    CLEAR t149.
    DATA(t150) = VALUE i( ).
    DO.
      t146->load( ).
      IF t150 >= lines( t146->items ).
        EXIT.
      ENDIF.
      CLEAR t149.
      READ TABLE t146->items INDEX t150 + 1 INTO t149.
      t150 = t150 + 1.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      CLEAR t148.
      IF t149 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t151 ?= t149.
        DATA t152 TYPE REF TO object.
        t152 = t151->as_ref( ).
        t148 ?= t152.
      ELSE.
        t148 ?= t149.
      ENDIF.
      DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t155 TYPE REF TO zcl_lnt_spag_helper.
      DATA(t156) = t148.
      t155 = NEW zcl_lnt_spag_helper( i_spag = t156 ).
      DATA(t157) = t1.
      DATA(t158) = t2.
      t154 = t155->find_references( i_name = t157 i_pos = t158 ).
      t153 = t154.
      DATA(t159) = t153.
      DATA t160 TYPE REF TO zcl_lnt_irange.
      CLEAR t160.
      DATA t161 TYPE REF TO object.
      CLEAR t161.
      DATA(t162) = VALUE i( ).
      DO.
        t159->load( ).
        IF t162 >= lines( t159->items ).
          EXIT.
        ENDIF.
        CLEAR t161.
        READ TABLE t159->items INDEX t162 + 1 INTO t161.
        t162 = t162 + 1.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        CLEAR t160.
        IF t161 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t163 ?= t161.
          DATA t164 TYPE REF TO object.
          t164 = t163->as_ref( ).
          t160 ?= t164.
        ELSE.
          t160 ?= t161.
        ENDIF.
        DATA t165 TYPE abap_bool.
        DATA t166 TYPE abap_bool.
        DATA(t167) = t3.
        DATA(t168) = t160.
        t166 = me->fn_has( i_positions = t167 i_element = t168 ).
        DATA(t169) = abap_false.
        t165 = xsdbool( t166 = t169 ).
        IF t165 = abap_true.
          DATA(t170) = t3.
          DATA(t171) = t160.
          t170->load( ).
          APPEND t171 TO t170->items.
          t170->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t172) = t3.
    result = t172.

  ENDMETHOD.

  METHOD find_recursive_duplicate.
    DATA(t1) = i_name.
    DATA(t2) = i_skip_34cc.
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t5) = me->spag.
    DATA(t6) = t1.
    t4 = t5->find_variable( i_name = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_position.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_position.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t12) = t3.
    t11 = t12.
    DATA t13 TYPE REF TO zcl_lnt_position.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t11.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_position.
      CLEAR t16.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_position.
      DATA t18 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t19 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t20) = t11.
      t19 = t20.
      t18 = t19.
      DATA t21 TYPE REF TO zcl_lnt_position.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t24) = t18.
      t23 = t24->token.
      t22 = t23.
      DATA t25 TYPE REF TO zcl_lnt_position.
      DATA(t26) = t22.
      t25 = t26->start.
      t21 = t25.
      t17 = t21.
      t13 = t17.
    ENDIF.
    t10 = t13.
    t9 = t10.
    DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t27.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = t9.
    IF t29 IS INITIAL.
      t28 = abap_true.
    ENDIF.
    IF t28 = abap_true.
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t30.
      t27 = t30.
    ELSE.
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE REF TO zcl_lnt_position.
      DATA(t33) = t9.
      t32 = t33.
      DATA(t34) = t2.
      t31 = t32->equals( i_p = t34 ).
      DATA(t35) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t35->has = abap_true.
      t35->value = t31.
      t27 = t35.
    ENDIF.
    t8 = t27.
    DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t36.
    DATA(t37) = abap_true.
    IF t37 = abap_true.
      DATA(t38) = abap_false.
      DATA(t39) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t39->has = abap_true.
      t39->value = t38.
      t36 = t39.
    ELSE.
      DATA t40 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t40.
      t36 = t40.
    ENDIF.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = VALUE abap_bool( ).
    IF t8 IS BOUND.
      t41 = t8->has.
    ENDIF.
    IF t36 IS BOUND.
      t42 = t36->has.
    ENDIF.
    IF t41 = t42.
      IF t41 = abap_false.
        t7 = abap_true.
      ELSEIF t8->value = t36->value.
        t7 = abap_true.
      ENDIF.
    ENDIF.
    IF t7 = abap_true.
      DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t43.
      DATA(t44) = abap_true.
      IF t44 = abap_true.
        DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t46) = t3.
        t45 = t46.
        t43 = t45.
      ELSE.
        DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t47.
        t43 = t47.
      ENDIF.
      result = t43.
      RETURN.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    DATA t51 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t52) = me->spag.
    t51 = t52.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t53.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = t51.
    IF t55 IS INITIAL.
      t54 = abap_true.
    ENDIF.
    IF t54 = abap_true.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t56.
      t53 = t56.
    ELSE.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t58) = t51.
      t57 = t58->get_children( ).
      t53 = t57.
    ENDIF.
    t50 = t53.
    t49 = t50.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t59.
    DATA t60 TYPE abap_bool.
    DATA(t61) = t49.
    t60 = xsdbool( t61 IS BOUND ).
    IF t60 = abap_true.
      DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t63) = t49.
      t62 = t63.
      t59 = t62.
    ELSE.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t64.
      t59 = t64.
    ENDIF.
    t48 = t59.
    DATA t65 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t65.
    DATA t66 TYPE REF TO object.
    CLEAR t66.
    DATA(t67) = VALUE i( ).
    DO.
      t48->load( ).
      IF t67 >= lines( t48->items ).
        EXIT.
      ENDIF.
      CLEAR t66.
      READ TABLE t48->items INDEX t67 + 1 INTO t66.
      t67 = t67 + 1.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      CLEAR t65.
      IF t66 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t68 ?= t66.
        DATA t69 TYPE REF TO object.
        t69 = t68->as_ref( ).
        t65 ?= t69.
      ELSE.
        t65 ?= t66.
      ENDIF.
      DATA t70 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t71 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t72 TYPE REF TO zcl_lnt_spag_helper.
      DATA(t73) = t65.
      t72 = NEW zcl_lnt_spag_helper( i_spag = t73 ).
      DATA(t74) = t1.
      DATA(t75) = t2.
      t71 = t72->find_recursive_duplicate( i_name = t74 i_skip_34cc = t75 ).
      t70 = t71.
      DATA t76 TYPE abap_bool.
      DATA(t77) = t70.
      t76 = xsdbool( t77 IS BOUND ).
      IF t76 = abap_true.
        DATA t78 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t78.
        DATA(t79) = abap_true.
        IF t79 = abap_true.
          DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t81) = t70.
          t80 = t81.
          t78 = t80.
        ELSE.
          DATA t82 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t82.
          t78 = t82.
        ENDIF.
        result = t78.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t83 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t83.
    result = t83.

  ENDMETHOD.

  METHOD is_duplicate_name.
    DATA(t1) = i_name.
    DATA(t2) = i_pos.
    DATA t3 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t4 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t5) = me->spag.
    t4 = t5->get_parent( ).
    t3 = t4.
    DO.
      DATA(t6) = VALUE abap_bool( ).
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t10.
      DATA t11 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t12) = t3.
      t11 = t12.
      DATA t13 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t13.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = t11.
      IF t15 IS INITIAL.
        t14 = abap_true.
      ENDIF.
      IF t14 = abap_true.
        DATA t16 TYPE REF TO zcl_lnt_iscope_identifier.
        CLEAR t16.
        t13 = t16.
      ELSE.
        DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t18 TYPE REF TO zif_lnt_spaghetti_scope_node.
        DATA(t19) = t11.
        t18 = t19.
        t17 = t18->get_identifier( ).
        t13 = t17.
      ENDIF.
      t10 = t13.
      t9 = t10.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = t9.
      IF t22 IS INITIAL.
        t21 = abap_true.
      ENDIF.
      IF t21 = abap_true.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        t20 = t23.
      ELSE.
        DATA t24 TYPE string.
        DATA t25 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA(t26) = t9.
        t25 = t26.
        t24 = t25->stype.
        DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t27->has = abap_true.
        t27->value = t24.
        t20 = t27.
      ENDIF.
      t8 = t20.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA(t30) = |let|.
        DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t31->has = abap_true.
        t31->value = t30.
        t28 = t31.
      ELSE.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        t28 = t32.
      ENDIF.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = VALUE abap_bool( ).
      IF t8 IS BOUND.
        t33 = t8->has.
      ENDIF.
      IF t28 IS BOUND.
        t34 = t28->has.
      ENDIF.
      IF t33 = t34.
        IF t33 = abap_false.
          t7 = abap_true.
        ELSEIF t8->value = t28->value.
          t7 = abap_true.
        ENDIF.
      ENDIF.
      t6 = t7.
      IF t7 = abap_false.
        DATA(t35) = VALUE abap_bool( ).
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t36.
        DATA t37 TYPE REF TO zcl_lnt_iscope_identifier.
        CLEAR t37.
        DATA t38 TYPE REF TO zcl_lnt_iscope_identifier.
        CLEAR t38.
        DATA t39 TYPE REF TO zif_lnt_spaghetti_scope_node.
        DATA(t40) = t3.
        t39 = t40.
        DATA t41 TYPE REF TO zcl_lnt_iscope_identifier.
        CLEAR t41.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = t39.
        IF t43 IS INITIAL.
          t42 = abap_true.
        ENDIF.
        IF t42 = abap_true.
          DATA t44 TYPE REF TO zcl_lnt_iscope_identifier.
          CLEAR t44.
          t41 = t44.
        ELSE.
          DATA t45 TYPE REF TO zcl_lnt_iscope_identifier.
          DATA t46 TYPE REF TO zif_lnt_spaghetti_scope_node.
          DATA(t47) = t39.
          t46 = t47.
          t45 = t46->get_identifier( ).
          t41 = t45.
        ENDIF.
        t38 = t41.
        t37 = t38.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = t37.
        IF t50 IS INITIAL.
          t49 = abap_true.
        ENDIF.
        IF t49 = abap_true.
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t51.
          t48 = t51.
        ELSE.
          DATA t52 TYPE string.
          DATA t53 TYPE REF TO zcl_lnt_iscope_identifier.
          DATA(t54) = t37.
          t53 = t54.
          t52 = t53->stype.
          DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t55->has = abap_true.
          t55->value = t52.
          t48 = t55.
        ENDIF.
        t36 = t48.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA(t58) = |for|.
          DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t59->has = abap_true.
          t59->value = t58.
          t56 = t59.
        ELSE.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t60.
          t56 = t60.
        ENDIF.
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = VALUE abap_bool( ).
        IF t36 IS BOUND.
          t61 = t36->has.
        ENDIF.
        IF t56 IS BOUND.
          t62 = t56->has.
        ENDIF.
        IF t61 = t62.
          IF t61 = abap_false.
            t35 = abap_true.
          ELSEIF t36->value = t56->value.
            t35 = abap_true.
          ENDIF.
        ENDIF.
        t6 = t35.
      ENDIF.
      IF t6 = abap_false.
        EXIT.
      ENDIF.
      DATA t63 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t64 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t65) = t3.
      t64 = t65.
      t63 = t64->get_parent( ).
      t3 = t63.
    ENDDO.
    DATA(t66) = VALUE abap_bool( ).
    DATA t67 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t68) = t3.
    t67 = t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    t69 = t70.
    DATA(t71) = VALUE abap_bool( ).
    DATA(t72) = t67.
    IF t72 IS INITIAL.
      t71 = abap_true.
    ENDIF.
    t66 = t71.
    IF t66 = abap_true.
      DATA t73 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t73.
      result = t73.
      RETURN.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t74.
    DATA(t75) = abap_true.
    IF t75 = abap_true.
      DATA(t76) = VALUE abap_bool( ).
      DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t78 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t79 TYPE REF TO zcl_lnt_spag_helper.
      DATA t80 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t81) = t3.
      t80 = t81.
      t79 = NEW zcl_lnt_spag_helper( i_spag = t80 ).
      DATA(t82) = t1.
      DATA(t83) = t2.
      t78 = t79->find_recursive_duplicate( i_name = t82 i_skip_34cc = t83 ).
      t77 = t78.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      t84 = t85.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = t77.
      IF t88 IS INITIAL.
        t87 = abap_true.
      ENDIF.
      t86 = xsdbool( t87 = abap_false ).
      t76 = t86.
      DATA(t89) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t89->has = abap_true.
      t89->value = t76.
      t74 = t89.
    ELSE.
      DATA t90 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t90.
      t74 = t90.
    ENDIF.
    result = t74.

  ENDMETHOD.

  METHOD fn_callback_191672.
    DATA(t1) = i_a.
    DATA(t2) = i_b.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA(t5) = t1.
    t4 = t5->start.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA(t7) = t2.
    t6 = t7->start.
    t3 = t4->equals( i_p = t6 ).
    IF t3 = abap_true.
      DATA(t8) = CONV f( 0 ).
      result = t8.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE f( ).
    DATA(t10) = VALUE i( ).
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE REF TO zcl_lnt_position.
    DATA(t13) = t1.
    t12 = t13->start.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA(t15) = t2.
    t14 = t15->start.
    t11 = t12->is_after( i_p = t14 ).
    IF t11 = abap_true.
      DATA(t16) = 1.
      t10 = t16.
    ELSE.
      DATA(t17) = -1.
      t10 = t17.
    ENDIF.
    t9 = t10.
    result = t9.

  ENDMETHOD.

  METHOD fn_has.
    DATA(t1) = i_positions.
    DATA(t2) = i_element.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE abap_bool.
    DATA(t5) = abap_false.
    t4 = t5.
    DATA(t6) = t1.
    DATA t7 TYPE REF TO zcl_lnt_irange.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    DATA(t9) = VALUE i( ).
    DO.
      t6->load( ).
      IF t9 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t6->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE REF TO zcl_lnt_position.
      DATA(t14) = t7.
      t13 = t14->start.
      DATA t15 TYPE REF TO zcl_lnt_position.
      DATA(t16) = t2.
      t15 = t16->start.
      t12 = t13->equals( i_p = t15 ).
      IF t12 = abap_true.
        DATA(t17) = abap_true.
        t4 = t17.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t18) = t4.
    t3 = t18.
    result = t3.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1483_0128e7fb14a2.
  ENDMETHOD.
ENDCLASS.
