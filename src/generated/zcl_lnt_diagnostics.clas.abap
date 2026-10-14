* TS: src/lsp/diagnostics.ts:6:1 Diagnostics
CLASS zcl_lnt_diagnostics DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS find_issues IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS map_diagnostic IMPORTING i_issue TYPE REF TO zcl_lnt_issue RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_c44ae6d7.
    METHODS find_8f95 IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS map_severity IMPORTING i_severity TYPE string RETURNING VALUE(result) TYPE i.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_diagnostics IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_registry( t1 ).
    me->reg = t2.
  ENDMETHOD.
  METHOD find_issues.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/diagnostics.ts:13|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD map_diagnostic.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_issue( i_issue ).
    DATA t2 TYPE REF TO zcl_lnt_shape_c44ae6d7.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_c44ae6d7.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_shape_9ead17bd.
    CLEAR t4.
    DATA(t5) = abap_true.
    IF t5 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_shape_9ead17bd.
      CLEAR t6.
      DATA t7 TYPE REF TO zcl_lnt_shape_38f98ddf.
      CLEAR t7.
      DATA(t8) = abap_true.
      IF t8 = abap_true.
        DATA t9 TYPE REF TO zcl_lnt_shape_38f98ddf.
        CLEAR t9.
        DATA t10 TYPE int8.
        DATA t11 TYPE int8.
        DATA t12 TYPE REF TO zcl_lnt_position.
        DATA t13 TYPE REF TO zcl_lnt_position.
        DATA t14 TYPE REF TO zcl_lnt_issue.
        DATA(t15) = CAST zcl_lnt_issue( t1 ).
        t14 = t15.
        DATA t16 TYPE REF TO zcl_lnt_position.
        DATA t17 TYPE REF TO zcl_lnt_iissue_data.
        DATA(t18) = CAST zcl_lnt_issue( t14 ).
        t17 = t18->data_56cc.
        t16 = t17->start.
        t13 = t16.
        t12 = t13.
        DATA t19 TYPE int8.
        DATA(t20) = CAST zcl_lnt_position( t12 ).
        t19 = t20->row.
        t11 = t19.
        DATA(t21) = CONV int8( 1 ).
        t10 = t11 - t21.
        IF t10 < range_int8_bound_min OR t10 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        DATA t22 TYPE int8.
        DATA t23 TYPE int8.
        DATA t24 TYPE REF TO zcl_lnt_position.
        DATA t25 TYPE REF TO zcl_lnt_position.
        DATA t26 TYPE REF TO zcl_lnt_issue.
        DATA(t27) = CAST zcl_lnt_issue( t1 ).
        t26 = t27.
        DATA t28 TYPE REF TO zcl_lnt_position.
        DATA t29 TYPE REF TO zcl_lnt_iissue_data.
        DATA(t30) = CAST zcl_lnt_issue( t26 ).
        t29 = t30->data_56cc.
        t28 = t29->start.
        t25 = t28.
        t24 = t25.
        DATA t31 TYPE int8.
        DATA(t32) = CAST zcl_lnt_position( t24 ).
        t31 = t32->col.
        t23 = t31.
        DATA(t33) = CONV int8( 1 ).
        t22 = t23 - t33.
        IF t22 < range_int8_bound_min OR t22 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t9 = NEW zcl_lnt_shape_38f98ddf( i_line = t10 i_character = t22 ).
        t7 = t9.
      ELSE.
        DATA t34 TYPE REF TO zcl_lnt_shape_38f98ddf.
        CLEAR t34.
        t7 = t34.
      ENDIF.
      DATA t35 TYPE REF TO zcl_lnt_shape_38f98ddf.
      CLEAR t35.
      DATA(t36) = abap_true.
      IF t36 = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_shape_38f98ddf.
        CLEAR t37.
        DATA t38 TYPE int8.
        DATA t39 TYPE int8.
        DATA t40 TYPE REF TO zcl_lnt_position.
        DATA t41 TYPE REF TO zcl_lnt_position.
        DATA t42 TYPE REF TO zcl_lnt_issue.
        DATA(t43) = CAST zcl_lnt_issue( t1 ).
        t42 = t43.
        DATA t44 TYPE REF TO zcl_lnt_position.
        DATA t45 TYPE REF TO zcl_lnt_iissue_data.
        DATA(t46) = CAST zcl_lnt_issue( t42 ).
        t45 = t46->data_56cc.
        t44 = t45->end.
        t41 = t44.
        t40 = t41.
        DATA t47 TYPE int8.
        DATA(t48) = CAST zcl_lnt_position( t40 ).
        t47 = t48->row.
        t39 = t47.
        DATA(t49) = CONV int8( 1 ).
        t38 = t39 - t49.
        IF t38 < range_int8_bound_min OR t38 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        DATA t50 TYPE int8.
        DATA t51 TYPE int8.
        DATA t52 TYPE REF TO zcl_lnt_position.
        DATA t53 TYPE REF TO zcl_lnt_position.
        DATA t54 TYPE REF TO zcl_lnt_issue.
        DATA(t55) = CAST zcl_lnt_issue( t1 ).
        t54 = t55.
        DATA t56 TYPE REF TO zcl_lnt_position.
        DATA t57 TYPE REF TO zcl_lnt_iissue_data.
        DATA(t58) = CAST zcl_lnt_issue( t54 ).
        t57 = t58->data_56cc.
        t56 = t57->end.
        t53 = t56.
        t52 = t53.
        DATA t59 TYPE int8.
        DATA(t60) = CAST zcl_lnt_position( t52 ).
        t59 = t60->col.
        t51 = t59.
        DATA(t61) = CONV int8( 1 ).
        t50 = t51 - t61.
        IF t50 < range_int8_bound_min OR t50 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t37 = NEW zcl_lnt_shape_38f98ddf( i_line = t38 i_character = t50 ).
        t35 = t37.
      ELSE.
        DATA t62 TYPE REF TO zcl_lnt_shape_38f98ddf.
        CLEAR t62.
        t35 = t62.
      ENDIF.
      t6 = NEW zcl_lnt_shape_9ead17bd( i_start = t7 i_end = t35 ).
      t4 = t6.
    ELSE.
      DATA t63 TYPE REF TO zcl_lnt_shape_9ead17bd.
      CLEAR t63.
      t4 = t63.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    CLEAR t64.
    DATA(t65) = abap_true.
    IF t65 = abap_true.
      DATA t66 TYPE int8.
      DATA t67 TYPE i.
      DATA t68 TYPE string.
      DATA t69 TYPE REF TO zcl_lnt_issue.
      DATA(t70) = CAST zcl_lnt_issue( t1 ).
      t69 = t70.
      DATA t71 TYPE string.
      DATA t72 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t73) = CAST zcl_lnt_issue( t69 ).
      t72 = t73->data_56cc.
      t71 = t72->severity.
      t68 = t71.
      t67 = zcl_lnt_diagnostics=>map_severity( i_severity = t68 ).
      t66 = t67.
      DATA(t74) = NEW zlnt_runtime_opti_4a236cd5714d( ).
      t74->has = abap_true.
      t74->value = t66.
      t64 = t74.
    ELSE.
      DATA t75 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t75.
      t64 = t75.
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = abap_true.
    IF t77 = abap_true.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t79 TYPE string.
      DATA t80 TYPE REF TO zcl_lnt_issue.
      DATA(t81) = CAST zcl_lnt_issue( t1 ).
      t80 = t81.
      DATA t82 TYPE string.
      DATA t83 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t84) = CAST zcl_lnt_issue( t80 ).
      t83 = t84->data_56cc.
      t82 = t83->key.
      t79 = t82.
      CREATE OBJECT t78.
      t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t78->sval = t79.
      t76 = t78.
    ELSE.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      t76 = t85.
    ENDIF.
    DATA t86 TYPE REF TO zcl_lnt_shape_88ee2c6c.
    CLEAR t86.
    DATA(t87) = abap_true.
    IF t87 = abap_true.
      DATA t88 TYPE REF TO zcl_lnt_shape_88ee2c6c.
      DATA t89 TYPE string.
      DATA t90 TYPE string.
      DATA(t91) = |https://rules.abaplint.org/|.
      DATA t92 TYPE string.
      DATA t93 TYPE REF TO zcl_lnt_issue.
      DATA(t94) = CAST zcl_lnt_issue( t1 ).
      t93 = t94.
      DATA t95 TYPE string.
      DATA t96 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t97) = CAST zcl_lnt_issue( t93 ).
      t96 = t97->data_56cc.
      t95 = t96->key.
      t92 = t95.
      DATA(t98) = strlen( t91 ).
      t90 = |{ t91 }{ t92 }|.
      DATA(t99) = |/|.
      DATA(t100) = strlen( t90 ).
      t89 = |{ t90 }{ t99 }|.
      t88 = NEW zcl_lnt_shape_88ee2c6c( i_href = t89 ).
      t86 = t88.
    ELSE.
      DATA t101 TYPE REF TO zcl_lnt_shape_88ee2c6c.
      CLEAR t101.
      t86 = t101.
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t102.
    DATA(t103) = abap_true.
    IF t103 = abap_true.
      DATA(t104) = |abaplint|.
      DATA(t105) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t105->has = abap_true.
      t105->value = t104.
      t102 = t105.
    ELSE.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t106.
      t102 = t106.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = abap_true.
    IF t108 = abap_true.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t110 TYPE string.
      DATA t111 TYPE REF TO zcl_lnt_issue.
      DATA(t112) = CAST zcl_lnt_issue( t1 ).
      t111 = t112.
      DATA t113 TYPE string.
      DATA t114 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t115) = CAST zcl_lnt_issue( t111 ).
      t114 = t115->data_56cc.
      t113 = t114->message_25cb.
      t110 = t113.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t109->sval = t110.
      t107 = t109.
    ELSE.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      t107 = t116.
    ENDIF.
    DATA t117 TYPE REF TO zlnt_runtime_arra_f39560c658f8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    t3 = NEW zcl_lnt_shape_c44ae6d7( i_range = t4 i_severity = t64 i_code = t76 i_code_description = t86 i_source_75cf = t102 i_message_26cb = t107 i_tags = t117 i_related_information = t118 i_data_dc02 = t119 ).
    t2 = t3.
    DATA(t120) = CAST zcl_lnt_shape_c44ae6d7( t2 ).
    result = t120.
    
  ENDMETHOD.
  METHOD find_8f95.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/lsp/diagnostics.ts:46|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
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
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1070_7e4a353d0401.
  ENDMETHOD.
ENDCLASS.
