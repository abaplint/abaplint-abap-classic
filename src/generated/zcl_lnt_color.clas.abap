* TS: src/abap/2_statements/expressions/color.ts:5:1 Color
CLASS zcl_lnt_color DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_color IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |=|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t12) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t11 = zcl_lnt_st_combi_module=>seq( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |1|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = |2|.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t23 = t24.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = |3|.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = t27.
    APPEND t26 TO t25->items.
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = |4|.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = t30.
    APPEND t29 TO t28->items.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = |5|.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    APPEND t32 TO t31->items.
    DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = |6|.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = t36.
    APPEND t35 TO t34->items.
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = |7|.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = t39.
    APPEND t38 TO t37->items.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t41) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t42) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    t40 = zcl_lnt_st_combi_module=>alt_prio( i_first = t41 i_second = t42 i_rest = t43 ).
    t16 = t40.
    t15 = t16.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = |COL_BACKGROUND|.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = t48.
    t46 = t47.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = |COL_HEADING|.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = t51.
    t49 = t50.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t53.
    t52 = t53.
    DATA(t54) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = |COL_NORMAL|.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = t56.
    APPEND t55 TO t54->items.
    DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t59) = |COL_TOTAL|.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = t59.
    APPEND t58 TO t57->items.
    DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = |COL_KEY|.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = t62.
    APPEND t61 TO t60->items.
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = |COL_POSITIVE|.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    APPEND t64 TO t63->items.
    DATA(t66) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t68) = |COL_NEGATIVE|.
    CREATE OBJECT t67.
    t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t67->sval = t68.
    APPEND t67 TO t66->items.
    DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t71) = |COL_GROUP|.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = t71.
    APPEND t70 TO t69->items.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t73) = CAST zlnt_runtime_dyna_a429568d5be8( t46 ).
    DATA(t74) = CAST zlnt_runtime_dyna_a429568d5be8( t49 ).
    DATA(t75) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    t72 = zcl_lnt_st_combi_module=>alt_prio( i_first = t73 i_second = t74 i_rest = t75 ).
    t45 = t72.
    t44 = t45.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = CAST zif_lnt_statement_runnable( t1 ).
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t81 TYPE REF TO object.
      t81 = t80.
      t79->oval = t81.
    ENDIF.
    t78 = t79.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t87) = |ON|.
    CREATE OBJECT t86.
    t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t86->sval = t87.
    t85 = t86.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t90) = |OFF|.
    CREATE OBJECT t89.
    t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t89->sval = t90.
    t88 = t89.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t92.
    t91 = t92.
    DATA(t93) = CAST zlnt_runtime_arra_c22708faf2e3( t91 ).
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t95) = |COLOR OFF|.
    CREATE OBJECT t94.
    t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t94->sval = t95.
    APPEND t94 TO t93->items.
    DATA(t96) = CAST zlnt_runtime_arra_c22708faf2e3( t91 ).
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = CAST zif_lnt_statement_runnable( t15 ).
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t102 TYPE REF TO object.
      t102 = t101.
      t100->oval = t102.
    ENDIF.
    t99 = t100.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = CAST zif_lnt_statement_runnable( t44 ).
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t106 TYPE REF TO object.
      t106 = t105.
      t104->oval = t106.
    ENDIF.
    t103 = t104.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t108.
    t107 = t108.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t110) = CAST zlnt_runtime_dyna_a429568d5be8( t99 ).
    DATA(t111) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t107 ).
    t109 = zcl_lnt_st_combi_module=>alt_prio( i_first = t110 i_second = t111 i_rest = t112 ).
    t98 = t109.
    IF t98 IS BOUND.
      CREATE OBJECT t97.
      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t113 TYPE REF TO object.
      t113 = t98.
      t97->oval = t113.
    ENDIF.
    APPEND t97 TO t96->items.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t115) = CAST zlnt_runtime_dyna_a429568d5be8( t85 ).
    DATA(t116) = CAST zlnt_runtime_dyna_a429568d5be8( t88 ).
    DATA(t117) = CAST zlnt_runtime_arra_c22708faf2e3( t91 ).
    t114 = zcl_lnt_st_combi_module=>alt_prio( i_first = t115 i_second = t116 i_rest = t117 ).
    t84 = t114.
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t118 TYPE REF TO object.
      t118 = t84.
      t83->oval = t118.
    ENDIF.
    t82 = t83.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t120.
    t119 = t120.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t122) = CAST zlnt_runtime_dyna_a429568d5be8( t78 ).
    DATA(t123) = CAST zlnt_runtime_dyna_a429568d5be8( t82 ).
    DATA(t124) = CAST zlnt_runtime_arra_c22708faf2e3( t119 ).
    t121 = zcl_lnt_st_combi_module=>alt( i_first = t122 i_second = t123 i_rest = t124 ).
    t77 = t121.
    t76 = t77.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t129) = |ON|.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = t129.
    t127 = t128.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t132) = |OFF|.
    CREATE OBJECT t131.
    t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t131->sval = t132.
    t130 = t131.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t134.
    t133 = t134.
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t136) = CAST zlnt_runtime_dyna_a429568d5be8( t127 ).
    DATA(t137) = CAST zlnt_runtime_dyna_a429568d5be8( t130 ).
    DATA(t138) = CAST zlnt_runtime_arra_c22708faf2e3( t133 ).
    t135 = zcl_lnt_st_combi_module=>alt_prio( i_first = t136 i_second = t137 i_rest = t138 ).
    t126 = t135.
    t125 = t126.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t142) = |COLOR|.
    CREATE OBJECT t141.
    t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t141->sval = t142.
    t140 = t141.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA(t150) = CAST zif_lnt_statement_runnable( t76 ).
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t151 TYPE REF TO object.
      t151 = t150.
      t149->oval = t151.
    ENDIF.
    t148 = t149.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA(t156) = CAST zif_lnt_statement_runnable( t125 ).
    IF t156 IS BOUND.
      CREATE OBJECT t155.
      t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t157 TYPE REF TO object.
      t157 = t156.
      t155->oval = t157.
    ENDIF.
    t154 = zcl_lnt_st_combi_module=>opt( i_first = t155 ).
    IF t154 IS BOUND.
      CREATE OBJECT t153.
      t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t158 TYPE REF TO object.
      t158 = t154.
      t153->oval = t158.
    ENDIF.
    t152 = t153.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t160.
    t159 = t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t162) = CAST zlnt_runtime_dyna_a429568d5be8( t148 ).
    DATA(t163) = CAST zlnt_runtime_dyna_a429568d5be8( t152 ).
    DATA(t164) = CAST zlnt_runtime_arra_c22708faf2e3( t159 ).
    t161 = zcl_lnt_st_combi_module=>seq( i_first = t162 i_second = t163 i_rest = t164 ).
    t147 = t161.
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t165 TYPE REF TO object.
      t165 = t147.
      t146->oval = t165.
    ENDIF.
    t145 = zcl_lnt_st_combi_module=>opt( i_first = t146 ).
    IF t145 IS BOUND.
      CREATE OBJECT t144.
      t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t166 TYPE REF TO object.
      t166 = t145.
      t144->oval = t166.
    ENDIF.
    t143 = t144.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t168.
    t167 = t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t170) = CAST zlnt_runtime_dyna_a429568d5be8( t140 ).
    DATA(t171) = CAST zlnt_runtime_dyna_a429568d5be8( t143 ).
    DATA(t172) = CAST zlnt_runtime_arra_c22708faf2e3( t167 ).
    t169 = zcl_lnt_st_combi_module=>seq( i_first = t170 i_second = t171 i_rest = t172 ).
    t139 = t169.
    result = t139.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d117_490f9bcc19a9.
  ENDMETHOD.
ENDCLASS.
