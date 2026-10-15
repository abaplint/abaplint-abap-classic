* TS: src/lsp/code_actions.ts:10:1 CodeActions
CLASS zcl_lnt_code_actions DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS find_8f95 IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_icode_action_params RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS fix_alls IMPORTING i_key TYPE string i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO object.
    METHODS in_range IMPORTING i_i TYPE REF TO zcl_lnt_issue i_range TYPE REF TO zcl_lnt_range RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_code_actions IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD find_8f95.
    DATA(t1) = i_params_4c59.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |lowering trap: src/lsp/code_actions.ts:17:3: HIR verificatio|.
    t3 = t3 && |n: node 7198 (src/lsp/code_actions.ts:17:3): missing express|.
    t3 = t3 && |ion|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD fix_alls.
    DATA(t1) = i_key.
    DATA(t2) = i_issues.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = t2.
    DATA t8 TYPE REF TO zcl_lnt_issue.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t7->load( ).
      IF t10 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t7->items INDEX t10 + 1 INTO t9.
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
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE string.
      DATA t15 TYPE REF TO zcl_lnt_issue.
      DATA(t16) = t8.
      t15 = t16.
      DATA t17 TYPE string.
      DATA t18 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t19) = t15.
      t18 = t19->data_56cc.
      t17 = t18->key.
      t14 = t17.
      DATA(t20) = t1.
      t13 = xsdbool( t14 <> t20 ).
      IF t13 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t21 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t22 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t23 TYPE REF TO zcl_lnt_issue.
      DATA(t24) = t8.
      t23 = t24.
      DATA t25 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t26 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t27) = t23.
      t26 = t27->data_56cc.
      t25 = t26->default_fix.
      t22 = t25.
      t21 = t22.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t30) = t21.
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      t31 = t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = t29.
      IF t34 IS INITIAL.
        t33 = abap_true.
      ENDIF.
      t28 = t33.
      IF t28 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t35) = t5.
      DATA t36 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t37) = t21.
      t36 = t37.
      t35->load( ).
      APPEND t36 TO t35->items.
      t35->save( ).
      DATA(t38) = t3.
      DATA t39 TYPE REF TO zcl_lnt_shape_9c8b3027.
      DATA(t40) = t8.
      t39 = zcl_lnt_diagnostics=>map_diagnostic( i_issue = t40 ).
      t38->load( ).
      APPEND t39 TO t38->items.
      t38->save( ).
    ENDDO.
    DATA t41 TYPE REF TO zcl_lnt_shape_73439a98.
    CLEAR t41.
    DATA t42 TYPE string.
    DATA t43 TYPE string.
    DATA(t44) = |Fix all, |.
    DATA(t45) = t1.
    DATA(t46) = strlen( t44 ).
    t43 = |{ t44 }{ t45 }|.
    t42 = t43.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t48.
    DATA(t49) = abap_true.
    IF t49 = abap_true.
      DATA(t50) = |quickfix|.
      DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t51->has = abap_true.
      t51->value = t50.
      t48 = t51.
    ELSE.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      t48 = t52.
    ENDIF.
    t47 = t48.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t54.
    DATA(t55) = abap_true.
    IF t55 = abap_true.
      DATA(t56) = t3.
      t54 = t56.
    ELSE.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t57.
      t54 = t57.
    ENDIF.
    t53 = t54.
    DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t59.
    DATA(t60) = abap_true.
    IF t60 = abap_true.
      DATA(t61) = abap_true.
      DATA(t62) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t62->has = abap_true.
      t62->value = t61.
      t59 = t62.
    ELSE.
      DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t63.
      t59 = t63.
    ENDIF.
    t58 = t59.
    DATA t64 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t64.
    DATA t65 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t65.
    DATA(t66) = abap_true.
    IF t66 = abap_true.
      DATA t67 TYPE REF TO zcl_lnt_shape_36bc2e57.
      DATA t68 TYPE REF TO object.
      DATA(t69) = t5.
      t68 = zcl_lnt_lsp_edit=>map_edits( i_edits = t69 ).
      t67 ?= t68.
      t65 = t67.
    ELSE.
      DATA t70 TYPE REF TO zcl_lnt_shape_36bc2e57.
      CLEAR t70.
      t65 = t70.
    ENDIF.
    t64 = t65.
    DATA t71 TYPE REF TO zcl_lnt_code_action_disabled.
    DATA t72 TYPE REF TO zcl_lnt_code_action_disabled.
    CLEAR t72.
    t71 = t72.
    DATA t73 TYPE REF TO zcl_lnt_command.
    DATA t74 TYPE REF TO zcl_lnt_command.
    CLEAR t74.
    t73 = t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    t75 = t76.
    DATA t77 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t78 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CLEAR t78.
    t77 = t78.
    t41 = NEW zcl_lnt_shape_73439a98( i_title = t42 i_kind = t47 i_diagnostics = t53 i_is_preferred = t58 i_disabled = t71 i_edit = t64 i_command = t73 i_data_dc02 = t75 i_tags = t77 ).
    CREATE OBJECT t41->zlnt_view_ownkeys_b0e8086400eb.
    t41->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t79 ).
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t80 ).
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `diagnostics` p1 = t81 ).
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isPreferred` p1 = t82 ).
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t83 ).
    ENDIF.
    CREATE OBJECT t41->zlnt_json_ownkeys_70e5fd461788.
    t41->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t84) = |title|.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
    ENDIF.
    DATA(t86) = |kind|.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
    ENDIF.
    DATA(t88) = |diagnostics|.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t88 p1 = t89 ).
    ENDIF.
    DATA(t90) = |isPreferred|.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t90 p1 = t91 ).
    ENDIF.
    DATA(t92) = |edit|.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
    ENDIF.
    result = t41.

  ENDMETHOD.

  METHOD in_range.
    DATA(t1) = i_i.
    DATA(t2) = i_range.
    DATA t3 TYPE REF TO zcl_lnt_position.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t5 TYPE f.
    DATA t6 TYPE f.
    DATA t7 TYPE REF TO zcl_lnt_no_position.
    DATA(t8) = t2.
    t7 = t8->zlnt_view_read_no_afe0c94a5142( ).
    t6 = t7->zlnt_view_read_no_30cccf3c929a( ).
    DATA(t9) = CONV f( 1 ).
    t5 = t6 + t9.
    DATA t10 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t11 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t12 TYPE REF TO zcl_lnt_no_position.
    DATA(t13) = t2.
    t12 = t13->zlnt_view_read_no_afe0c94a5142( ).
    t11 = t12->zlnt_view_read_no_a9574d1ec283( ).
    DATA(t14) = CONV f( 1 ).
    DATA(t15) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t15->has = abap_true.
    t15->value = t14.
    t10 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t11 right = t15 op = `+` ).
    t4 = NEW zcl_lnt_position( i_row = t5 i_col = t10 ).
    t3 = t4.
    DATA t16 TYPE REF TO zcl_lnt_position.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA t18 TYPE f.
    DATA t19 TYPE f.
    DATA t20 TYPE REF TO zcl_lnt_no_position.
    DATA(t21) = t2.
    t20 = t21->zlnt_view_read_no_04608ad22a15( ).
    t19 = t20->zlnt_view_read_no_30cccf3c929a( ).
    DATA(t22) = CONV f( 1 ).
    t18 = t19 + t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t24 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t25 TYPE REF TO zcl_lnt_no_position.
    DATA(t26) = t2.
    t25 = t26->zlnt_view_read_no_04608ad22a15( ).
    t24 = t25->zlnt_view_read_no_a9574d1ec283( ).
    DATA(t27) = CONV f( 1 ).
    DATA(t28) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t28->has = abap_true.
    t28->value = t27.
    t23 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t24 right = t28 op = `+` ).
    t17 = NEW zcl_lnt_position( i_row = t18 i_col = t23 ).
    t16 = t17.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE REF TO zcl_lnt_position.
    DATA t35 TYPE REF TO zcl_lnt_position.
    DATA t36 TYPE REF TO zcl_lnt_issue.
    DATA(t37) = t1.
    t36 = t37.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA t39 TYPE REF TO zcl_lnt_iissue_data.
    DATA(t40) = t36.
    t39 = t40->data_56cc.
    t38 = t39->start.
    t35 = t38.
    t34 = t35.
    DATA t41 TYPE REF TO zcl_lnt_position.
    DATA(t42) = t3.
    t41 = t42.
    DATA t43 TYPE REF TO zcl_lnt_position.
    DATA(t44) = t16.
    t43 = t44.
    DATA t45 TYPE abap_bool.
    DATA t46 TYPE abap_bool.
    DATA(t47) = t34.
    DATA(t48) = t41.
    t46 = t47->is_after( i_p = t48 ).
    t45 = t46.
    IF t46 = abap_true.
      DATA(t49) = VALUE abap_bool( ).
      DATA t50 TYPE REF TO zcl_lnt_position.
      DATA(t51) = t43.
      t50 = t51.
      DATA t52 TYPE abap_bool.
      DATA t53 TYPE abap_bool.
      DATA t54 TYPE f.
      DATA(t55) = t34.
      t54 = t55->row.
      DATA t56 TYPE f.
      DATA(t57) = t50.
      t56 = t57->row.
      t53 = xsdbool( t54 < t56 ).
      t52 = t53.
      IF t53 = abap_false.
        DATA t58 TYPE abap_bool.
        DATA t59 TYPE abap_bool.
        DATA t60 TYPE f.
        DATA(t61) = t34.
        t60 = t61->row.
        DATA t62 TYPE f.
        DATA(t63) = t50.
        t62 = t63->row.
        t59 = xsdbool( t60 = t62 ).
        t58 = t59.
        IF t59 = abap_true.
          DATA t64 TYPE abap_bool.
          DATA t65 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t66) = t34.
          t65 = t66->col.
          DATA t67 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t68) = t50.
          t67 = t68->col.
          t64 = zlnt_runtime_numb_290eb04a9758=>compare( left = t65 right = t67 op = `<` ).
          t58 = t64.
        ENDIF.
        t52 = t58.
      ENDIF.
      t49 = t52.
      t45 = t49.
    ENDIF.
    t33 = t45.
    t32 = t33.
    IF t33 = abap_false.
      DATA(t69) = VALUE abap_bool( ).
      DATA t70 TYPE REF TO zcl_lnt_position.
      DATA t71 TYPE REF TO zcl_lnt_position.
      DATA t72 TYPE REF TO zcl_lnt_issue.
      DATA(t73) = t1.
      t72 = t73.
      DATA t74 TYPE REF TO zcl_lnt_position.
      DATA t75 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t76) = t72.
      t75 = t76->data_56cc.
      t74 = t75->end.
      t71 = t74.
      t70 = t71.
      DATA t77 TYPE REF TO zcl_lnt_position.
      DATA(t78) = t3.
      t77 = t78.
      DATA t79 TYPE REF TO zcl_lnt_position.
      DATA(t80) = t16.
      t79 = t80.
      DATA t81 TYPE abap_bool.
      DATA t82 TYPE abap_bool.
      DATA(t83) = t70.
      DATA(t84) = t77.
      t82 = t83->is_after( i_p = t84 ).
      t81 = t82.
      IF t82 = abap_true.
        DATA(t85) = VALUE abap_bool( ).
        DATA t86 TYPE REF TO zcl_lnt_position.
        DATA(t87) = t79.
        t86 = t87.
        DATA t88 TYPE abap_bool.
        DATA t89 TYPE abap_bool.
        DATA t90 TYPE f.
        DATA(t91) = t70.
        t90 = t91->row.
        DATA t92 TYPE f.
        DATA(t93) = t86.
        t92 = t93->row.
        t89 = xsdbool( t90 < t92 ).
        t88 = t89.
        IF t89 = abap_false.
          DATA t94 TYPE abap_bool.
          DATA t95 TYPE abap_bool.
          DATA t96 TYPE f.
          DATA(t97) = t70.
          t96 = t97->row.
          DATA t98 TYPE f.
          DATA(t99) = t86.
          t98 = t99->row.
          t95 = xsdbool( t96 = t98 ).
          t94 = t95.
          IF t95 = abap_true.
            DATA t100 TYPE abap_bool.
            DATA t101 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t102) = t70.
            t101 = t102->col.
            DATA t103 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t104) = t86.
            t103 = t104->col.
            t100 = zlnt_runtime_numb_290eb04a9758=>compare( left = t101 right = t103 op = `<` ).
            t94 = t100.
          ENDIF.
          t88 = t94.
        ENDIF.
        t85 = t88.
        t81 = t85.
      ENDIF.
      t69 = t81.
      t32 = t69.
    ENDIF.
    t31 = t32.
    IF t32 = abap_false.
      DATA(t105) = VALUE abap_bool( ).
      DATA t106 TYPE REF TO zcl_lnt_position.
      DATA(t107) = t3.
      t106 = t107.
      DATA t108 TYPE REF TO zcl_lnt_position.
      DATA t109 TYPE REF TO zcl_lnt_position.
      DATA t110 TYPE REF TO zcl_lnt_issue.
      DATA(t111) = t1.
      t110 = t111.
      DATA t112 TYPE REF TO zcl_lnt_position.
      DATA t113 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t114) = t110.
      t113 = t114->data_56cc.
      t112 = t113->start.
      t109 = t112.
      t108 = t109.
      DATA t115 TYPE REF TO zcl_lnt_position.
      DATA t116 TYPE REF TO zcl_lnt_position.
      DATA t117 TYPE REF TO zcl_lnt_issue.
      DATA(t118) = t1.
      t117 = t118.
      DATA t119 TYPE REF TO zcl_lnt_position.
      DATA t120 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t121) = t117.
      t120 = t121->data_56cc.
      t119 = t120->end.
      t116 = t119.
      t115 = t116.
      DATA t122 TYPE abap_bool.
      DATA t123 TYPE abap_bool.
      DATA(t124) = t106.
      DATA(t125) = t108.
      t123 = t124->is_after( i_p = t125 ).
      t122 = t123.
      IF t123 = abap_true.
        DATA(t126) = VALUE abap_bool( ).
        DATA t127 TYPE REF TO zcl_lnt_position.
        DATA(t128) = t115.
        t127 = t128.
        DATA t129 TYPE abap_bool.
        DATA t130 TYPE abap_bool.
        DATA t131 TYPE f.
        DATA(t132) = t106.
        t131 = t132->row.
        DATA t133 TYPE f.
        DATA(t134) = t127.
        t133 = t134->row.
        t130 = xsdbool( t131 < t133 ).
        t129 = t130.
        IF t130 = abap_false.
          DATA t135 TYPE abap_bool.
          DATA t136 TYPE abap_bool.
          DATA t137 TYPE f.
          DATA(t138) = t106.
          t137 = t138->row.
          DATA t139 TYPE f.
          DATA(t140) = t127.
          t139 = t140->row.
          t136 = xsdbool( t137 = t139 ).
          t135 = t136.
          IF t136 = abap_true.
            DATA t141 TYPE abap_bool.
            DATA t142 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t143) = t106.
            t142 = t143->col.
            DATA t144 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t145) = t127.
            t144 = t145->col.
            t141 = zlnt_runtime_numb_290eb04a9758=>compare( left = t142 right = t144 op = `<` ).
            t135 = t141.
          ENDIF.
          t129 = t135.
        ENDIF.
        t126 = t129.
        t122 = t126.
      ENDIF.
      t105 = t122.
      t31 = t105.
    ENDIF.
    t30 = t31.
    IF t31 = abap_false.
      DATA(t146) = VALUE abap_bool( ).
      DATA t147 TYPE REF TO zcl_lnt_position.
      DATA(t148) = t16.
      t147 = t148.
      DATA t149 TYPE REF TO zcl_lnt_position.
      DATA t150 TYPE REF TO zcl_lnt_position.
      DATA t151 TYPE REF TO zcl_lnt_issue.
      DATA(t152) = t1.
      t151 = t152.
      DATA t153 TYPE REF TO zcl_lnt_position.
      DATA t154 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t155) = t151.
      t154 = t155->data_56cc.
      t153 = t154->start.
      t150 = t153.
      t149 = t150.
      DATA t156 TYPE REF TO zcl_lnt_position.
      DATA t157 TYPE REF TO zcl_lnt_position.
      DATA t158 TYPE REF TO zcl_lnt_issue.
      DATA(t159) = t1.
      t158 = t159.
      DATA t160 TYPE REF TO zcl_lnt_position.
      DATA t161 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t162) = t158.
      t161 = t162->data_56cc.
      t160 = t161->end.
      t157 = t160.
      t156 = t157.
      DATA t163 TYPE abap_bool.
      DATA t164 TYPE abap_bool.
      DATA(t165) = t147.
      DATA(t166) = t149.
      t164 = t165->is_after( i_p = t166 ).
      t163 = t164.
      IF t164 = abap_true.
        DATA(t167) = VALUE abap_bool( ).
        DATA t168 TYPE REF TO zcl_lnt_position.
        DATA(t169) = t156.
        t168 = t169.
        DATA t170 TYPE abap_bool.
        DATA t171 TYPE abap_bool.
        DATA t172 TYPE f.
        DATA(t173) = t147.
        t172 = t173->row.
        DATA t174 TYPE f.
        DATA(t175) = t168.
        t174 = t175->row.
        t171 = xsdbool( t172 < t174 ).
        t170 = t171.
        IF t171 = abap_false.
          DATA t176 TYPE abap_bool.
          DATA t177 TYPE abap_bool.
          DATA t178 TYPE f.
          DATA(t179) = t147.
          t178 = t179->row.
          DATA t180 TYPE f.
          DATA(t181) = t168.
          t180 = t181->row.
          t177 = xsdbool( t178 = t180 ).
          t176 = t177.
          IF t177 = abap_true.
            DATA t182 TYPE abap_bool.
            DATA t183 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t184) = t147.
            t183 = t184->col.
            DATA t185 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t186) = t168.
            t185 = t186->col.
            t182 = zlnt_runtime_numb_290eb04a9758=>compare( left = t183 right = t185 op = `<` ).
            t176 = t182.
          ENDIF.
          t170 = t176.
        ENDIF.
        t167 = t170.
        t163 = t167.
      ENDIF.
      t146 = t163.
      t30 = t146.
    ENDIF.
    t29 = t30.
    IF t30 = abap_false.
      DATA t187 TYPE abap_bool.
      DATA(t188) = t16.
      DATA t189 TYPE REF TO zcl_lnt_position.
      DATA t190 TYPE REF TO zcl_lnt_issue.
      DATA(t191) = t1.
      t190 = t191.
      DATA t192 TYPE REF TO zcl_lnt_position.
      DATA t193 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t194) = t190.
      t193 = t194->data_56cc.
      t192 = t193->end.
      t189 = t192.
      t187 = t188->equals( i_p = t189 ).
      t29 = t187.
    ENDIF.
    result = t29.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1163_6743b6c727d2.
  ENDMETHOD.
ENDCLASS.
