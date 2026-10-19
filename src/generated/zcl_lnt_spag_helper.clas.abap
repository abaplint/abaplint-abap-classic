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
    me->spag = i_spag.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `spag`.
  ENDMETHOD.

  METHOD rename_variable.
    DATA(t2) = i_pos.
    DATA(t3) = i_low_file.
    DATA(t4) = i_new_name.
    DATA t5 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = i_old_name.
    t7 = me->find_references( i_name = t9 i_pos = t2 ).
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t12 = t7.
    DATA t14 TYPE i.
    t14 = 1.
    DO.
      t12->load( ).
      IF xsdbool( t14 < lines( t12->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t20 TYPE i.
      t20 = t14.
      DO.
        IF xsdbool( t20 > 0 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t26 TYPE REF TO zcl_lnt_irange.
        CLEAR t26.
        DATA t28 TYPE i.
        DATA(t30) = 1.
        t28 = t20 - t30.
        t28 = t28 + 1.
        DATA t31 TYPE REF TO object.
        CLEAR t31.
        t12->load( ).
        CLEAR t31.
        READ TABLE t12->items INDEX t28 INTO t31.
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
        DATA t35 TYPE REF TO zcl_lnt_irange.
        CLEAR t35.
        DATA(t37) = t20.
        t37 = t37 + 1.
        DATA t38 TYPE REF TO object.
        CLEAR t38.
        t12->load( ).
        CLEAR t38.
        READ TABLE t12->items INDEX t37 INTO t38.
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
        DATA(t42) = VALUE i( ).
        DATA t44 TYPE REF TO zcl_lnt_irange.
        t44 = t26.
        DATA t46 TYPE REF TO zcl_lnt_irange.
        t46 = t35.
        DATA(t48) = VALUE f( ).
        DATA t50 TYPE REF TO zcl_lnt_position.
        t50 = t44->start.
        DATA t52 TYPE REF TO zcl_lnt_position.
        t52 = t46->start.
        IF t50->equals( i_p = t52 ) = abap_true.
          t48 = CONV f( 0 ).
        ELSE.
          DATA(t55) = VALUE f( ).
          DATA(t56) = VALUE i( ).
          DATA t58 TYPE REF TO zcl_lnt_position.
          t58 = t44->start.
          DATA t60 TYPE REF TO zcl_lnt_position.
          t60 = t46->start.
          IF t58->is_after( i_p = t60 ) = abap_true.
            t56 = 1.
          ELSE.
            t56 = -1.
          ENDIF.
          t55 = t56.
          t48 = t55.
        ENDIF.
        t42 = t48.
        IF xsdbool( t42 > 0 ) = abap_true.
          DATA t66 TYPE REF TO zcl_lnt_irange.
          CLEAR t66.
          DATA t68 TYPE i.
          DATA(t70) = 1.
          t68 = t20 - t70.
          t68 = t68 + 1.
          DATA t71 TYPE REF TO object.
          CLEAR t71.
          t12->load( ).
          CLEAR t71.
          READ TABLE t12->items INDEX t68 INTO t71.
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
          DATA t75 TYPE i.
          DATA(t77) = 1.
          t75 = t20 - t77.
          DATA t78 TYPE REF TO zcl_lnt_irange.
          CLEAR t78.
          DATA(t80) = t20.
          t80 = t80 + 1.
          DATA t81 TYPE REF TO object.
          CLEAR t81.
          t12->load( ).
          CLEAR t81.
          READ TABLE t12->items INDEX t80 INTO t81.
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
          t12->put( p0 = t75 p1 = t78 ).
          t12->put( p0 = t20 p1 = t66 ).
          DATA(t89) = 1.
          t20 = t20 - t89.
        ELSE.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t92) = 1.
      t14 = t14 + t92.
    ENDDO.
    t11 = t12.
    DATA t95 TYPE REF TO zcl_lnt_irange.
    DATA t96 TYPE REF TO object.
    DATA(t97) = VALUE i( ).
    DO.
      t7->load( ).
      IF t97 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t96.
      READ TABLE t7->items INDEX t97 + 1 INTO t96.
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
      DATA t103 TYPE REF TO zcl_lnt_position.
      t103 = t95->start.
      DATA t105 TYPE REF TO zcl_lnt_position.
      t105 = t95->end.
      t100 = zcl_lnt_edit_helper=>replace_range( i_file = t3 i_start = t103 i_end = t105 i_text = t4 ).
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      IF xsdbool( t5 IS INITIAL ) = abap_true.
        t5 = t100.
      ELSE.
        t5 = zcl_lnt_edit_helper=>merge( i_fix1 = t100 i_fix2 = t5 ).
      ENDIF.
    ENDDO.
    result = t5.

  ENDMETHOD.

  METHOD find_references.
    DATA(t1) = i_name.
    DATA(t2) = i_pos.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = me->spag->get_data( )->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    DATA t9 TYPE REF TO object.
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
      t16 = t8->resolved.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      IF xsdbool( t16 IS INITIAL ) = abap_true.
        CLEAR t19.
      ELSE.
        DATA t28 TYPE string.
        t28 = t16->token->str.
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
        ELSE.
          IF t39 > t40 - t38.
            t39 = t40 - t38.
          ENDIF.
          t36 = t37+t38(t39).
        ENDIF.
        IF xsdbool( t36 = |!| ) = abap_true.
          DATA t43 TYPE string.
          t43 = t28.
          DATA(t45) = VALUE string( ).
          DATA(t47) = 1.
          DATA t48 TYPE i.
          t48 = strlen( t43 ).
          DATA(t51) = strlen( t43 ).
          IF t47 < 0.
            t47 = t47 + t51.
            IF t47 < 0.
              t47 = 0.
            ENDIF.
          ENDIF.
          IF t47 > t51 OR t48 <= 0.
          ELSE.
            IF t48 > t51 - t47.
              t48 = t51 - t47.
            ENDIF.
            t45 = t43+t47(t48).
          ENDIF.
          t28 = t45.
        ENDIF.
        DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t53->has = abap_true.
        t53->value = t28.
        t19 = t53.
      ENDIF.
      t15 = t19.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t57->has = abap_true.
      t57->value = t1.
      t54 = t57.
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
        DATA t65 TYPE REF TO zcl_lnt_fi_identifier.
        t65 = t8->resolved.
        DATA t69 TYPE REF TO zcl_lnt_position.
        CLEAR t69.
        IF xsdbool( t65 IS INITIAL ) = abap_true.
          CLEAR t69.
        ELSE.
          t69 = t65->token->start.
        ENDIF.
        t63 = t69.
        DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t82.
        IF xsdbool( t63 IS INITIAL ) = abap_true.
          CLEAR t82.
        ELSE.
          DATA t86 TYPE abap_bool.
          t86 = t63->equals( i_p = t2 ).
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
        t93 = t8->position_7b94->token->start.
        DATA t110 TYPE REF TO zcl_lnt_abstract_token.
        t110 = t8->position_7b94->token.
        DATA t114 TYPE f.
        t114 = t110->start->row.
        DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t121 = t110->start->col.
        DATA t127 TYPE f.
        t127 = strlen( t110->str ).
        DATA(t132) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t132->has = abap_true.
        t132->value = t127.
        t92 = NEW zcl_lnt_irange( i_start = t93 i_end = NEW zcl_lnt_position( i_row = t114 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t121 right = t132 op = `+` ) ) ).
        CREATE OBJECT t92->zlnt_view_ownkeys_b0e8086400eb.
        t92->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t133 ).
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t134 ).
        ENDIF.
        CREATE OBJECT t92->zlnt_json_ownkeys_70e5fd461788.
        t92->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t136 ).
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t138 ).
        ENDIF.
        t91 = t92.
        DATA t140 TYPE abap_bool.
        t140 = me->fn_has( i_positions = t3 i_element = t91 ).
        IF xsdbool( t140 = abap_false ) = abap_true.
          t3->load( ).
          APPEND t91 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t146 = me->spag->get_children( ).
    DATA t148 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t149 TYPE REF TO object.
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
      t153 = NEW zcl_lnt_spag_helper( i_spag = t148 )->find_references( i_name = t1 i_pos = t2 ).
      DATA t160 TYPE REF TO zcl_lnt_irange.
      CLEAR t160.
      DATA t161 TYPE REF TO object.
      CLEAR t161.
      DATA(t162) = VALUE i( ).
      DO.
        t153->load( ).
        IF t162 >= lines( t153->items ).
          EXIT.
        ENDIF.
        CLEAR t161.
        READ TABLE t153->items INDEX t162 + 1 INTO t161.
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
        DATA t166 TYPE abap_bool.
        t166 = me->fn_has( i_positions = t3 i_element = t160 ).
        IF xsdbool( t166 = abap_false ) = abap_true.
          t3->load( ).
          APPEND t160 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD find_recursive_duplicate.
    DATA(t1) = i_name.
    DATA(t2) = i_skip_34cc.
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    t3 = me->spag->find_variable( i_name = t1 ).
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA t11 TYPE REF TO zcl_lnt_typed_identifier.
    t11 = t3.
    DATA t13 TYPE REF TO zcl_lnt_position.
    IF xsdbool( t11 IS INITIAL ) = abap_true.
    ELSE.
      DATA t18 TYPE REF TO zcl_lnt_fi_identifier.
      t18 = t11.
      t13 = t18->token->start.
    ENDIF.
    t9 = t13.
    DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      DATA t31 TYPE abap_bool.
      t31 = t9->equals( i_p = t2 ).
      DATA(t35) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t35->has = abap_true.
      t35->value = t31.
      t27 = t35.
    ENDIF.
    t8 = t27.
    DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t39) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t39->has = abap_true.
    t39->value = abap_false.
    t36 = t39.
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
      result = t3.
      RETURN.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t51 = me->spag.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t51 IS INITIAL ) = abap_true.
    ELSE.
      t53 = t51->get_children( ).
    ENDIF.
    t49 = t53.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t49 IS BOUND ) = abap_true.
      t59 = t49.
    ELSE.
      CREATE OBJECT t59.
    ENDIF.
    t48 = t59.
    DATA t65 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t66 TYPE REF TO object.
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
      t70 = NEW zcl_lnt_spag_helper( i_spag = t65 )->find_recursive_duplicate( i_name = t1 i_skip_34cc = t2 ).
      IF xsdbool( t70 IS BOUND ) = abap_true.
        result = t70.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD is_duplicate_name.
    DATA(t1) = i_name.
    DATA(t2) = i_pos.
    DATA t3 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t3 = me->spag->get_parent( ).
    DO.
      DATA(t6) = VALUE abap_bool( ).
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t9.
      DATA t11 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t11 = t3.
      DATA t13 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t13.
      IF xsdbool( t11 IS INITIAL ) = abap_true.
        CLEAR t13.
      ELSE.
        t13 = t11->get_identifier( ).
      ENDIF.
      t9 = t13.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      IF xsdbool( t9 IS INITIAL ) = abap_true.
        CLEAR t20.
      ELSE.
        DATA t24 TYPE string.
        t24 = t9->stype.
        DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t27->has = abap_true.
        t27->value = t24.
        t20 = t27.
      ENDIF.
      t8 = t20.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = |let|.
      t28 = t31.
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
        DATA t39 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t39 = t3.
        DATA t41 TYPE REF TO zcl_lnt_iscope_identifier.
        CLEAR t41.
        IF xsdbool( t39 IS INITIAL ) = abap_true.
          CLEAR t41.
        ELSE.
          t41 = t39->get_identifier( ).
        ENDIF.
        t37 = t41.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        IF xsdbool( t37 IS INITIAL ) = abap_true.
          CLEAR t48.
        ELSE.
          DATA t52 TYPE string.
          t52 = t37->stype.
          DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t55->has = abap_true.
          t55->value = t52.
          t48 = t55.
        ENDIF.
        t36 = t48.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = |for|.
        t56 = t59.
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
      t3 = t3->get_parent( ).
    ENDDO.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t78 TYPE REF TO zcl_lnt_typed_identifier.
    t78 = NEW zcl_lnt_spag_helper( i_spag = t3 )->find_recursive_duplicate( i_name = t1 i_skip_34cc = t2 ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t86) = VALUE abap_bool( ).
    t86 = xsdbool( xsdbool( t78 IS INITIAL ) = abap_false ).
    DATA(t89) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t89->has = abap_true.
    t89->value = t86.
    result = t89.

  ENDMETHOD.

  METHOD fn_callback_191672.
    DATA(t1) = i_a.
    DATA(t2) = i_b.
    DATA t4 TYPE REF TO zcl_lnt_position.
    t4 = t1->start.
    DATA t6 TYPE REF TO zcl_lnt_position.
    t6 = t2->start.
    IF t4->equals( i_p = t6 ) = abap_true.
      result = CONV f( 0 ).
      RETURN.
    ENDIF.
    DATA(t9) = VALUE f( ).
    DATA(t10) = VALUE i( ).
    DATA t12 TYPE REF TO zcl_lnt_position.
    t12 = t1->start.
    DATA t14 TYPE REF TO zcl_lnt_position.
    t14 = t2->start.
    IF t12->is_after( i_p = t14 ) = abap_true.
      t10 = 1.
    ELSE.
      t10 = -1.
    ENDIF.
    t9 = t10.
    result = t9.

  ENDMETHOD.

  METHOD fn_has.
    DATA(t1) = i_positions.
    DATA(t2) = i_element.
    DATA t4 TYPE abap_bool.
    t4 = abap_false.
    DATA t7 TYPE REF TO zcl_lnt_irange.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t1->load( ).
      IF t9 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t1->items INDEX t9 + 1 INTO t8.
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
      DATA t13 TYPE REF TO zcl_lnt_position.
      t13 = t7->start.
      DATA t15 TYPE REF TO zcl_lnt_position.
      t15 = t2->start.
      IF t13->equals( i_p = t15 ) = abap_true.
        t4 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    result = t4.

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
