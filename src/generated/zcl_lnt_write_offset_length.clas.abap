* TS: src/abap/2_statements/expressions/write_offset_length.ts:6:1 WriteOffsetLength
CLASS zcl_lnt_write_offset_length DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_write_offset_length IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d167_3c4543cf3a18 ).
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t12.
    DATA(t13) = `^[\d]+$`.
    DATA(t14) = |^[0-9]+$|.
    DATA(t15) = ||.
    CREATE OBJECT t12 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t14 flags = t15.
    t12->source = t13.
    t11 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t12 ).
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t16 TYPE REF TO object.
      t16 = t11.
      t10->oval = t16.
    ENDIF.
    t9 = t10.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA t22 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t22.
    DATA(t23) = `^\*$`.
    DATA(t24) = ||.
    CREATE OBJECT t22 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t23 flags = t24.
    t21 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t22 ).
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t25 TYPE REF TO object.
      t25 = t21.
      t20->oval = t25.
    ENDIF.
    APPEND t20 TO t19->items.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t27) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    t26 = zcl_lnt_st_combi_module=>alt( i_first = t27 i_second = t28 i_rest = t29 ).
    t5 = t26.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t30 TYPE REF TO object.
      t30 = t5.
      t4->oval = t30.
    ENDIF.
    t3 = t4.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t37) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t36 = zcl_lnt_st_combi_module=>tok( i_t = t37 ).
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t38 TYPE REF TO object.
      t38 = t36.
      t35->oval = t38.
    ENDIF.
    t34 = t35.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t42) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44 ).
    t41 = zcl_lnt_st_combi_module=>tok( i_t = t42 ).
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t43 TYPE REF TO object.
      t43 = t41.
      t40->oval = t43.
    ENDIF.
    t39 = t40.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t45.
    t44 = t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t47) = CAST zlnt_runtime_dyna_a429568d5be8( t34 ).
    DATA(t48) = CAST zlnt_runtime_dyna_a429568d5be8( t39 ).
    DATA(t49) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
    t46 = zcl_lnt_st_combi_module=>alt( i_first = t47 i_second = t48 i_rest = t49 ).
    t33 = t46.
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t50 TYPE REF TO object.
      t50 = t33.
      t32->oval = t50.
    ENDIF.
    t31 = t32.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t51 = t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t54) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t55) = CAST zlnt_runtime_dyna_a429568d5be8( t31 ).
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t51 ).
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t55 i_rest = t56 ).
    t2 = t53.
    t1 = t2.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t62) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d51_977bdd21674215 ).
    t61 = zcl_lnt_st_combi_module=>tok( i_t = t62 ).
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t63 TYPE REF TO object.
      t63 = t61.
      t60->oval = t63.
    ENDIF.
    t59 = t60.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = CAST zif_lnt_statement_runnable( t1 ).
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t67 TYPE REF TO object.
      t67 = t66.
      t65->oval = t67.
    ENDIF.
    t64 = t65.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    t68 = t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t71) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t72) = CAST zlnt_runtime_dyna_a429568d5be8( t64 ).
    DATA(t73) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
    t70 = zcl_lnt_st_combi_module=>seq( i_first = t71 i_second = t72 i_rest = t73 ).
    t58 = t70.
    t57 = t58.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t82) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d51_977bdd21674215 ).
    t81 = zcl_lnt_st_combi_module=>tok( i_t = t82 ).
    IF t81 IS BOUND.
      CREATE OBJECT t80.
      t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t83 TYPE REF TO object.
      t83 = t81.
      t80->oval = t83.
    ENDIF.
    t79 = t80.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t87) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d26_2fd73418f07736 ).
    t86 = zcl_lnt_st_combi_module=>tok( i_t = t87 ).
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t88 TYPE REF TO object.
      t88 = t86.
      t85->oval = t88.
    ENDIF.
    t84 = t85.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t90.
    t89 = t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t92) = CAST zlnt_runtime_dyna_a429568d5be8( t79 ).
    DATA(t93) = CAST zlnt_runtime_dyna_a429568d5be8( t84 ).
    DATA(t94) = CAST zlnt_runtime_arra_c22708faf2e3( t89 ).
    t91 = zcl_lnt_st_combi_module=>alt( i_first = t92 i_second = t93 i_rest = t94 ).
    t78 = t91.
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t95 TYPE REF TO object.
      t95 = t78.
      t77->oval = t95.
    ENDIF.
    t76 = t77.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA(t98) = CAST zif_lnt_statement_runnable( t1 ).
    IF t98 IS BOUND.
      CREATE OBJECT t97.
      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t99 TYPE REF TO object.
      t99 = t98.
      t97->oval = t99.
    ENDIF.
    t96 = t97.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t101.
    t100 = t101.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t103) = CAST zlnt_runtime_dyna_a429568d5be8( t76 ).
    DATA(t104) = CAST zlnt_runtime_dyna_a429568d5be8( t96 ).
    DATA(t105) = CAST zlnt_runtime_arra_c22708faf2e3( t100 ).
    t102 = zcl_lnt_st_combi_module=>seq( i_first = t103 i_second = t104 i_rest = t105 ).
    t75 = t102.
    t74 = t75.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = CAST zif_lnt_statement_runnable( t57 ).
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t111 TYPE REF TO object.
      t111 = t110.
      t109->oval = t111.
    ENDIF.
    t108 = t109.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA(t120) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d167_3c4543cf3a18 ).
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t119->cval = t120.
    ENDIF.
    t118 = t119.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    DATA t124 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t124.
    DATA(t125) = `^\/?[\w\d]+$`.
    DATA(t126) = `^\/?[A-Za-z0-9_0-9]+$`.
    DATA(t127) = ||.
    CREATE OBJECT t124 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t126 flags = t127.
    t124->source = t125.
    t123 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t124 ).
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t128 TYPE REF TO object.
      t128 = t123.
      t122->oval = t128.
    ENDIF.
    t121 = t122.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t130.
    t129 = t130.
    DATA(t131) = CAST zlnt_runtime_arra_c22708faf2e3( t129 ).
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t133) = |/|.
    CREATE OBJECT t132.
    t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t132->sval = t133.
    APPEND t132 TO t131->items.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t135) = CAST zlnt_runtime_dyna_a429568d5be8( t118 ).
    DATA(t136) = CAST zlnt_runtime_dyna_a429568d5be8( t121 ).
    DATA(t137) = CAST zlnt_runtime_arra_c22708faf2e3( t129 ).
    t134 = zcl_lnt_st_combi_module=>alt( i_first = t135 i_second = t136 i_rest = t137 ).
    t117 = t134.
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t138 TYPE REF TO object.
      t138 = t117.
      t116->oval = t138.
    ENDIF.
    t115 = t116.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA(t143) = CAST zif_lnt_statement_runnable( t74 ).
    IF t143 IS BOUND.
      CREATE OBJECT t142.
      t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t144 TYPE REF TO object.
      t144 = t143.
      t142->oval = t144.
    ENDIF.
    t141 = zcl_lnt_st_combi_module=>opt( i_first = t142 ).
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t145 TYPE REF TO object.
      t145 = t141.
      t140->oval = t145.
    ENDIF.
    t139 = t140.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t147.
    t146 = t147.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t149) = CAST zlnt_runtime_dyna_a429568d5be8( t115 ).
    DATA(t150) = CAST zlnt_runtime_dyna_a429568d5be8( t139 ).
    DATA(t151) = CAST zlnt_runtime_arra_c22708faf2e3( t146 ).
    t148 = zcl_lnt_st_combi_module=>seq( i_first = t149 i_second = t150 i_rest = t151 ).
    t114 = t148.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t152 TYPE REF TO object.
      t152 = t114.
      t113->oval = t152.
    ENDIF.
    t112 = t113.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t154.
    t153 = t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t156) = CAST zlnt_runtime_dyna_a429568d5be8( t108 ).
    DATA(t157) = CAST zlnt_runtime_dyna_a429568d5be8( t112 ).
    DATA(t158) = CAST zlnt_runtime_arra_c22708faf2e3( t153 ).
    t155 = zcl_lnt_st_combi_module=>alt( i_first = t156 i_second = t157 i_rest = t158 ).
    t107 = t155.
    t106 = t107.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t159.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t165) = |AT|.
    CREATE OBJECT t164.
    t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t164->sval = t165.
    t163 = zcl_lnt_st_combi_module=>opt( i_first = t164 ).
    IF t163 IS BOUND.
      CREATE OBJECT t162.
      t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t166 TYPE REF TO object.
      t166 = t163.
      t162->oval = t166.
    ENDIF.
    t161 = t162.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA(t169) = CAST zif_lnt_statement_runnable( t106 ).
    IF t169 IS BOUND.
      CREATE OBJECT t168.
      t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t170 TYPE REF TO object.
      t170 = t169.
      t168->oval = t170.
    ENDIF.
    t167 = t168.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t172.
    t171 = t172.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t174) = CAST zlnt_runtime_dyna_a429568d5be8( t161 ).
    DATA(t175) = CAST zlnt_runtime_dyna_a429568d5be8( t167 ).
    DATA(t176) = CAST zlnt_runtime_arra_c22708faf2e3( t171 ).
    t173 = zcl_lnt_st_combi_module=>seq( i_first = t174 i_second = t175 i_rest = t176 ).
    t160 = t173.
    t159 = t160.
    DATA(t177) = CAST zif_lnt_statement_runnable( t159 ).
    result = t177.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d340_8d8d1acca482.
  ENDMETHOD.
ENDCLASS.
