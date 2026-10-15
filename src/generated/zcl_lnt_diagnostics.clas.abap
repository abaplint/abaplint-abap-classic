* TS: src/lsp/diagnostics.ts:6:1 Diagnostics
CLASS zcl_lnt_diagnostics DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS find_issues IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS map_diagnostic IMPORTING i_issue TYPE REF TO zcl_lnt_issue RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_9c8b3027.
    METHODS find_8f95 IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS map_severity IMPORTING i_severity TYPE string RETURNING VALUE(result) TYPE i.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_diagnostics IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD find_issues.
    DATA(t1) = i_text_document.
    DATA t2 TYPE REF TO zif_lnt_file.
    DATA t3 TYPE REF TO zif_lnt_file.
    DATA(t4) = me->reg.
    DATA t5 TYPE string.
    DATA(t6) = t1.
    t5 = t6->zlnt_view_read_no_0041136eb871( ).
    t3 = t4->get_file_by_name( i_filename = t5 ).
    t2 = t3.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zif_lnt_file.
    DATA(t9) = t2.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t14.
      result = t14.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zif_lnt_object.
    DATA t16 TYPE REF TO zif_lnt_object.
    DATA(t17) = me->reg.
    DATA t18 TYPE REF TO zif_lnt_file.
    DATA(t19) = t2.
    t18 = t19.
    t16 = t17->find_object_for_file( i_file = t18 ).
    t15 = t16.
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE REF TO zif_lnt_object.
    DATA(t22) = t15.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t21.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    t20 = t25.
    IF t20 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t27.
      result = t27.
      RETURN.
    ENDIF.
    DATA t28 TYPE REF TO zif_lnt_registry.
    DATA(t29) = me->reg.
    t28 = t29->parse( ).
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t32) = me->reg.
    DATA t33 TYPE REF TO zif_lnt_object.
    DATA(t34) = t15.
    t33 = t34.
    t31 = t32->find_issues_object( i_iobj = t33 ).
    t30 = t31.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t36 = t37.
    DATA(t38) = t30.
    DATA t39 TYPE REF TO zcl_lnt_issue.
    CLEAR t39.
    DATA t40 TYPE REF TO object.
    CLEAR t40.
    DATA(t41) = VALUE i( ).
    DO.
      t38->load( ).
      IF t41 >= lines( t38->items ).
        EXIT.
      ENDIF.
      CLEAR t40.
      READ TABLE t38->items INDEX t41 + 1 INTO t40.
      t41 = t41 + 1.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      CLEAR t39.
      IF t40 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t42 ?= t40.
        DATA t43 TYPE REF TO object.
        t43 = t42->as_ref( ).
        t39 ?= t43.
      ELSE.
        t39 ?= t40.
      ENDIF.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE string.
      DATA t46 TYPE REF TO zcl_lnt_issue.
      DATA(t47) = t39.
      t46 = t47.
      DATA t48 TYPE string.
      DATA t49 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t50) = t46.
      t49 = t50->data_56cc.
      t48 = t49->filename.
      t45 = t48.
      DATA t51 TYPE string.
      DATA t52 TYPE REF TO zif_lnt_file.
      DATA(t53) = t2.
      t52 = t53.
      t51 = t52->get_filename( ).
      t44 = xsdbool( t45 = t51 ).
      IF t44 = abap_true.
        DATA(t54) = t36.
        DATA(t55) = t39.
        t54->load( ).
        APPEND t55 TO t54->items.
        t54->save( ).
      ENDIF.
    ENDDO.
    DATA(t56) = t36.
    t35 = t56.
    t30 = t35.
    DATA(t57) = t30.
    result = t57.

  ENDMETHOD.

  METHOD map_diagnostic.
    DATA(t1) = i_issue.
    DATA t2 TYPE REF TO zcl_lnt_shape_9c8b3027.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_9c8b3027.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA t7 TYPE f.
      DATA t8 TYPE i.
      DATA t9 TYPE string.
      DATA t10 TYPE REF TO zcl_lnt_issue.
      DATA(t11) = t1.
      t10 = t11.
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t14) = t10.
      t13 = t14->data_56cc.
      t12 = t13->severity.
      t9 = t12.
      t8 = zcl_lnt_diagnostics=>map_severity( i_severity = t9 ).
      t7 = t8.
      DATA(t15) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t15->has = abap_true.
      t15->value = t7.
      t5 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t16.
      t5 = t16.
    ENDIF.
    t4 = t5.
    DATA t17 TYPE REF TO zcl_lnt_range.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_range.
    CLEAR t18.
    DATA(t19) = abap_true.
    IF t19 = abap_true.
      DATA t20 TYPE REF TO zcl_lnt_range.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_no_position.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_no_position.
      DATA t23 TYPE f.
      DATA t24 TYPE f.
      DATA t25 TYPE f.
      DATA t26 TYPE REF TO zcl_lnt_position.
      DATA t27 TYPE REF TO zcl_lnt_position.
      DATA t28 TYPE REF TO zcl_lnt_issue.
      DATA(t29) = t1.
      t28 = t29.
      DATA t30 TYPE REF TO zcl_lnt_position.
      DATA t31 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t32) = t28.
      t31 = t32->data_56cc.
      t30 = t31->start.
      t27 = t30.
      t26 = t27.
      DATA t33 TYPE f.
      DATA(t34) = t26.
      t33 = t34->row.
      t25 = t33.
      DATA(t35) = CONV f( 1 ).
      t24 = t25 - t35.
      t23 = t24.
      DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t37 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t38 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t39 TYPE REF TO zcl_lnt_position.
      DATA t40 TYPE REF TO zcl_lnt_position.
      DATA t41 TYPE REF TO zcl_lnt_issue.
      DATA(t42) = t1.
      t41 = t42.
      DATA t43 TYPE REF TO zcl_lnt_position.
      DATA t44 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t45) = t41.
      t44 = t45->data_56cc.
      t43 = t44->start.
      t40 = t43.
      t39 = t40.
      DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t47) = t39.
      t46 = t47->col.
      t38 = t46.
      DATA(t48) = CONV f( 1 ).
      DATA(t49) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t49->has = abap_true.
      t49->value = t48.
      t37 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t38 right = t49 op = `-` ).
      t36 = t37.
      t22 = NEW zcl_lnt_no_position( i_line = t23 i_character = t36 ).
      CREATE OBJECT t22->zlnt_view_ownkeys_b0e8086400eb.
      t22->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      IF t22->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t22->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t50 ).
      ENDIF.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      IF t22->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t22->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t51 ).
      ENDIF.
      CREATE OBJECT t22->zlnt_json_ownkeys_70e5fd461788.
      t22->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t52) = |line|.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      IF t22->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t22->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
      ENDIF.
      DATA(t54) = |character|.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      IF t22->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t22->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
      ENDIF.
      t21 = t22.
      DATA t56 TYPE REF TO zcl_lnt_no_position.
      CLEAR t56.
      DATA t57 TYPE REF TO zcl_lnt_no_position.
      DATA t58 TYPE f.
      DATA t59 TYPE f.
      DATA t60 TYPE f.
      DATA t61 TYPE REF TO zcl_lnt_position.
      DATA t62 TYPE REF TO zcl_lnt_position.
      DATA t63 TYPE REF TO zcl_lnt_issue.
      DATA(t64) = t1.
      t63 = t64.
      DATA t65 TYPE REF TO zcl_lnt_position.
      DATA t66 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t67) = t63.
      t66 = t67->data_56cc.
      t65 = t66->end.
      t62 = t65.
      t61 = t62.
      DATA t68 TYPE f.
      DATA(t69) = t61.
      t68 = t69->row.
      t60 = t68.
      DATA(t70) = CONV f( 1 ).
      t59 = t60 - t70.
      t58 = t59.
      DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t72 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t73 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t74 TYPE REF TO zcl_lnt_position.
      DATA t75 TYPE REF TO zcl_lnt_position.
      DATA t76 TYPE REF TO zcl_lnt_issue.
      DATA(t77) = t1.
      t76 = t77.
      DATA t78 TYPE REF TO zcl_lnt_position.
      DATA t79 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t80) = t76.
      t79 = t80->data_56cc.
      t78 = t79->end.
      t75 = t78.
      t74 = t75.
      DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t82) = t74.
      t81 = t82->col.
      t73 = t81.
      DATA(t83) = CONV f( 1 ).
      DATA(t84) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t84->has = abap_true.
      t84->value = t83.
      t72 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t73 right = t84 op = `-` ).
      t71 = t72.
      t57 = NEW zcl_lnt_no_position( i_line = t58 i_character = t71 ).
      CREATE OBJECT t57->zlnt_view_ownkeys_b0e8086400eb.
      t57->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t85 ).
      ENDIF.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t86 ).
      ENDIF.
      CREATE OBJECT t57->zlnt_json_ownkeys_70e5fd461788.
      t57->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t87) = |line|.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t87 p1 = t88 ).
      ENDIF.
      DATA(t89) = |character|.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
      ENDIF.
      t56 = t57.
      t20 = NEW zcl_lnt_range( i_start = t21 i_end = t56 ).
      CREATE OBJECT t20->zlnt_view_ownkeys_b0e8086400eb.
      t20->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t91 ).
      ENDIF.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t92 ).
      ENDIF.
      CREATE OBJECT t20->zlnt_json_ownkeys_70e5fd461788.
      t20->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t93) = |start|.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
      ENDIF.
      DATA(t95) = |end|.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
      ENDIF.
      t18 = t20.
    ELSE.
      DATA t97 TYPE REF TO zcl_lnt_range.
      CLEAR t97.
      t18 = t97.
    ENDIF.
    t17 = t18.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA(t100) = abap_true.
    IF t100 = abap_true.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      DATA t102 TYPE string.
      DATA t103 TYPE REF TO zcl_lnt_issue.
      DATA(t104) = t1.
      t103 = t104.
      DATA t105 TYPE string.
      DATA t106 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t107) = t103.
      t106 = t107->data_56cc.
      t105 = t106->key.
      t102 = t105.
      CLEAR t101.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t101->sval = t102.
      t99 = t101.
    ELSE.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      t99 = t108.
    ENDIF.
    t98 = t99.
    DATA t109 TYPE REF TO zcl_lnt_shape_88ee2c6c.
    CLEAR t109.
    DATA t110 TYPE REF TO zcl_lnt_shape_88ee2c6c.
    CLEAR t110.
    DATA(t111) = abap_true.
    IF t111 = abap_true.
      DATA t112 TYPE REF TO zcl_lnt_shape_88ee2c6c.
      DATA t113 TYPE string.
      DATA t114 TYPE string.
      DATA t115 TYPE string.
      DATA(t116) = |https://rules.abaplint.org/|.
      DATA t117 TYPE string.
      DATA t118 TYPE REF TO zcl_lnt_issue.
      DATA(t119) = t1.
      t118 = t119.
      DATA t120 TYPE string.
      DATA t121 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t122) = t118.
      t121 = t122->data_56cc.
      t120 = t121->key.
      t117 = t120.
      DATA(t123) = strlen( t116 ).
      t115 = |{ t116 }{ t117 }|.
      DATA(t124) = |/|.
      DATA(t125) = strlen( t115 ).
      t114 = |{ t115 }{ t124 }|.
      t113 = t114.
      t112 = NEW zcl_lnt_shape_88ee2c6c( i_href = t113 ).
      CREATE OBJECT t112->zlnt_view_ownkeys_b0e8086400eb.
      t112->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `href` p1 = t126 ).
      ENDIF.
      CREATE OBJECT t112->zlnt_json_ownkeys_70e5fd461788.
      t112->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t127) = |href|.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
      ENDIF.
      t110 = t112.
    ELSE.
      DATA t129 TYPE REF TO zcl_lnt_shape_88ee2c6c.
      CLEAR t129.
      t110 = t129.
    ENDIF.
    t109 = t110.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA(t132) = abap_true.
    IF t132 = abap_true.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      DATA t134 TYPE string.
      DATA t135 TYPE REF TO zcl_lnt_issue.
      DATA(t136) = t1.
      t135 = t136.
      DATA t137 TYPE string.
      DATA t138 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t139) = t135.
      t138 = t139->data_56cc.
      t137 = t138->message_25cb.
      t134 = t137.
      CLEAR t133.
      CREATE OBJECT t133.
      t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t133->sval = t134.
      t131 = t133.
    ELSE.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      t131 = t140.
    ENDIF.
    t130 = t131.
    DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t142.
    DATA(t143) = abap_true.
    IF t143 = abap_true.
      DATA(t144) = |abaplint|.
      DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t145->has = abap_true.
      t145->value = t144.
      t142 = t145.
    ELSE.
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t146.
      t142 = t146.
    ENDIF.
    t141 = t142.
    DATA t147 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t148 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CLEAR t148.
    t147 = t148.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t150.
    t149 = t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    t151 = t152.
    t3 = NEW zcl_lnt_shape_9c8b3027( i_range = t17 i_severity = t4 i_code = t98 i_code_description = t109 i_source_75cf = t141 i_message_26cb = t130 i_tags = t147 i_related_information = t149 i_data_dc02 = t151 ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t153 ).
    ENDIF.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t154 ).
    ENDIF.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `code` p1 = t155 ).
    ENDIF.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `codeDescription` p1 = t156 ).
    ENDIF.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t157 ).
    ENDIF.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `source` p1 = t158 ).
    ENDIF.
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t159) = |severity|.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
    ENDIF.
    DATA(t161) = |range|.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
    ENDIF.
    DATA(t163) = |code|.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t163 p1 = t164 ).
    ENDIF.
    DATA(t165) = |codeDescription|.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t165 p1 = t166 ).
    ENDIF.
    DATA(t167) = |message|.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
    ENDIF.
    DATA(t169) = |source|.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
    ENDIF.
    t2 = t3.
    DATA(t171) = t2.
    result = t171.

  ENDMETHOD.

  METHOD find_8f95.
    DATA(t1) = i_text_document.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 = me->find_issues( i_text_document = t4 ).
    t2 = t3.
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
      DATA(t13) = t5.
      DATA t14 TYPE REF TO zcl_lnt_shape_9c8b3027.
      DATA(t15) = t8.
      t14 = zcl_lnt_diagnostics=>map_diagnostic( i_issue = t15 ).
      t13->load( ).
      APPEND t14 TO t13->items.
      t13->save( ).
    ENDDO.
    DATA(t16) = t5.
    result = t16.

  ENDMETHOD.

  METHOD map_severity.
    DATA(t1) = i_severity.
    DATA t2 TYPE abap_bool.
    DATA(t3) = t1.
    DATA(t4) = |Error|.
    t2 = xsdbool( t3 = t4 ).
    IF t2 = abap_true.
      DATA(t5) = 1.
      result = t5.
      RETURN.
    ELSE.
      DATA t6 TYPE abap_bool.
      DATA(t7) = t1.
      DATA(t8) = |Warning|.
      t6 = xsdbool( t7 = t8 ).
      IF t6 = abap_true.
        DATA(t9) = 2.
        result = t9.
        RETURN.
      ELSE.
        DATA t10 TYPE abap_bool.
        DATA(t11) = t1.
        DATA(t12) = |Info|.
        t10 = xsdbool( t11 = t12 ).
        IF t10 = abap_true.
          DATA(t13) = 3.
          result = t13.
          RETURN.
        ELSE.
          DATA(t14) = 1.
          result = t14.
          RETURN.
        ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1166_80474dc83ddd.
  ENDMETHOD.
ENDCLASS.
