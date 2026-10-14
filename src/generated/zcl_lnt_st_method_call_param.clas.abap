* TS: src/abap/2_statements/expressions/method_call_param.ts:7:1 MethodCallParam
CLASS zcl_lnt_st_method_call_param DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_method_call_param IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
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
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d219_2dee75409f14 ).
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
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d216_5867c1ce5807 ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    APPEND t12 TO t11->items.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t14 = zcl_lnt_st_combi_module=>alt( i_first = t15 i_second = t16 i_rest = t17 ).
    t2 = t14.
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t23) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77 ).
    t22 = zcl_lnt_st_combi_module=>tok( i_t = t23 ).
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t22.
      t21->oval = t24.
    ENDIF.
    t20 = t21.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t27 = zcl_lnt_st_combi_module=>tok( i_t = t28 ).
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t29 TYPE REF TO object.
      t29 = t27.
      t26->oval = t29.
    ENDIF.
    t25 = t26.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    t30 = t31.
    DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t35) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44 ).
    t34 = zcl_lnt_st_combi_module=>tok( i_t = t35 ).
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t36 TYPE REF TO object.
      t36 = t34.
      t33->oval = t36.
    ENDIF.
    APPEND t33 TO t32->items.
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t40) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t39 = zcl_lnt_st_combi_module=>tok( i_t = t40 ).
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t41 TYPE REF TO object.
      t41 = t39.
      t38->oval = t41.
    ENDIF.
    APPEND t38 TO t37->items.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t44) = CAST zlnt_runtime_dyna_a429568d5be8( t25 ).
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
    t42 = zcl_lnt_st_combi_module=>alt_prio( i_first = t43 i_second = t44 i_rest = t45 ).
    t19 = t42.
    t18 = t19.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77 ).
    t50 = zcl_lnt_st_combi_module=>tok( i_t = t51 ).
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t52 TYPE REF TO object.
      t52 = t50.
      t49->oval = t52.
    ENDIF.
    t48 = t49.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t56) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t55 = zcl_lnt_st_combi_module=>tok( i_t = t56 ).
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t57 TYPE REF TO object.
      t57 = t55.
      t54->oval = t57.
    ENDIF.
    t53 = t54.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t59.
    t58 = t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t62) = CAST zlnt_runtime_dyna_a429568d5be8( t53 ).
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t58 ).
    t60 = zcl_lnt_st_combi_module=>alt_prio( i_first = t61 i_second = t62 i_rest = t63 ).
    t47 = t60.
    t46 = t47.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t72) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t71 = zcl_lnt_st_combi_module=>tok( i_t = t72 ).
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t73 TYPE REF TO object.
      t73 = t71.
      t70->oval = t73.
    ENDIF.
    t69 = t70.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA(t76) = CAST zif_lnt_statement_runnable( t1 ).
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t77 TYPE REF TO object.
      t77 = t76.
      t75->oval = t77.
    ENDIF.
    t74 = t75.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    t78 = t79.
    DATA(t80) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = CAST zif_lnt_statement_runnable( t18 ).
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t83 TYPE REF TO object.
      t83 = t82.
      t81->oval = t83.
    ENDIF.
    APPEND t81 TO t80->items.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t85) = CAST zlnt_runtime_dyna_a429568d5be8( t69 ).
    DATA(t86) = CAST zlnt_runtime_dyna_a429568d5be8( t74 ).
    DATA(t87) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    t84 = zcl_lnt_st_combi_module=>seq( i_first = t85 i_second = t86 i_rest = t87 ).
    t68 = t84.
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t88 TYPE REF TO object.
      t88 = t68.
      t67->oval = t88.
    ENDIF.
    t66 = t67.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t95) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d26_2fd73418f07736 ).
    t94 = zcl_lnt_st_combi_module=>tok( i_t = t95 ).
    IF t94 IS BOUND.
      CREATE OBJECT t93.
      t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t96 TYPE REF TO object.
      t96 = t94.
      t93->oval = t96.
    ENDIF.
    t92 = t93.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = CAST zif_lnt_statement_runnable( t1 ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t100 TYPE REF TO object.
      t100 = t99.
      t98->oval = t100.
    ENDIF.
    t97 = t98.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t102.
    t101 = t102.
    DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t101 ).
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = CAST zif_lnt_statement_runnable( t46 ).
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t106 TYPE REF TO object.
      t106 = t105.
      t104->oval = t106.
    ENDIF.
    APPEND t104 TO t103->items.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t108) = CAST zlnt_runtime_dyna_a429568d5be8( t92 ).
    DATA(t109) = CAST zlnt_runtime_dyna_a429568d5be8( t97 ).
    DATA(t110) = CAST zlnt_runtime_arra_c22708faf2e3( t101 ).
    t107 = zcl_lnt_st_combi_module=>seq( i_first = t108 i_second = t109 i_rest = t110 ).
    t91 = t107.
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t111 TYPE REF TO object.
      t111 = t91.
      t90->oval = t111.
    ENDIF.
    t89 = t90.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t113.
    t112 = t113.
    DATA(t114) = CAST zlnt_runtime_arra_c22708faf2e3( t112 ).
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t120) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d26_2fd73418f07736 ).
    t119 = zcl_lnt_st_combi_module=>tok( i_t = t120 ).
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t121 TYPE REF TO object.
      t121 = t119.
      t118->oval = t121.
    ENDIF.
    t117 = t118.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA(t124) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d137_6fd956b9c58a ).
    IF t124 IS BOUND.
      CREATE OBJECT t123.
      t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t123->cval = t124.
    ENDIF.
    t122 = t123.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t126.
    t125 = t126.
    DATA(t127) = CAST zlnt_runtime_arra_c22708faf2e3( t125 ).
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t133) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44 ).
    t132 = zcl_lnt_st_combi_module=>tok( i_t = t133 ).
    IF t132 IS BOUND.
      CREATE OBJECT t131.
      t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t134 TYPE REF TO object.
      t134 = t132.
      t131->oval = t134.
    ENDIF.
    t130 = t131.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t138) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t137 = zcl_lnt_st_combi_module=>tok( i_t = t138 ).
    IF t137 IS BOUND.
      CREATE OBJECT t136.
      t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t139 TYPE REF TO object.
      t139 = t137.
      t136->oval = t139.
    ENDIF.
    t135 = t136.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t141.
    t140 = t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t143) = CAST zlnt_runtime_dyna_a429568d5be8( t130 ).
    DATA(t144) = CAST zlnt_runtime_dyna_a429568d5be8( t135 ).
    DATA(t145) = CAST zlnt_runtime_arra_c22708faf2e3( t140 ).
    t142 = zcl_lnt_st_combi_module=>alt_prio( i_first = t143 i_second = t144 i_rest = t145 ).
    t129 = t142.
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t146 TYPE REF TO object.
      t146 = t129.
      t128->oval = t146.
    ENDIF.
    APPEND t128 TO t127->items.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t148) = CAST zlnt_runtime_dyna_a429568d5be8( t117 ).
    DATA(t149) = CAST zlnt_runtime_dyna_a429568d5be8( t122 ).
    DATA(t150) = CAST zlnt_runtime_arra_c22708faf2e3( t125 ).
    t147 = zcl_lnt_st_combi_module=>seq( i_first = t148 i_second = t149 i_rest = t150 ).
    t116 = t147.
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t151 TYPE REF TO object.
      t151 = t116.
      t115->oval = t151.
    ENDIF.
    APPEND t115 TO t114->items.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t153) = CAST zlnt_runtime_dyna_a429568d5be8( t66 ).
    DATA(t154) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
    DATA(t155) = CAST zlnt_runtime_arra_c22708faf2e3( t112 ).
    t152 = zcl_lnt_st_combi_module=>alt_prio( i_first = t153 i_second = t154 i_rest = t155 ).
    t65 = t152.
    t64 = t65.
    DATA(t156) = CAST zif_lnt_statement_runnable( t64 ).
    result = t156.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d214_4a4b8612d221.
  ENDMETHOD.
ENDCLASS.
