* TS: src/abap/2_statements/expressions/sql_case.ts:10:1 SQLCase
CLASS zcl_lnt_sql_case DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_case IMPLEMENTATION.
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
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d41_e53da77a9517f4 ).
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t7 TYPE REF TO object.
      t7 = t5.
      t4->oval = t7.
    ENDIF.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d167_3c4543cf3a18 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t11 = t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t14) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    t13 = zcl_lnt_st_combi_module=>seq( i_first = t14 i_second = t15 i_rest = t16 ).
    t2 = t13.
    t1 = t2.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8 ).
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d269_df623ced1aed ).
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA(t29) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d270_547c551ca3da ).
    IF t29 IS BOUND.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t28->cval = t29.
    ENDIF.
    APPEND t28 TO t27->items.
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA(t32) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079 ).
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t31->cval = t32.
    ENDIF.
    APPEND t31 TO t30->items.
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA(t35) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t34->cval = t35.
    ENDIF.
    APPEND t34 TO t33->items.
    DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA(t38) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t38 IS BOUND.
      CREATE OBJECT t37.
      t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t37->cval = t38.
    ENDIF.
    APPEND t37 TO t36->items.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t40) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    DATA(t41) = CAST zlnt_runtime_dyna_a429568d5be8( t22 ).
    DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t39 = zcl_lnt_st_combi_module=>alt_prio( i_first = t40 i_second = t41 i_rest = t42 ).
    t18 = t39.
    t17 = t18.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = |+|.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = t50.
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t53) = |-|.
    CREATE OBJECT t52.
    t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t52->sval = t53.
    t51 = t52.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    t54 = t55.
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t58) = |*|.
    CREATE OBJECT t57.
    t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t57->sval = t58.
    APPEND t57 TO t56->items.
    DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t61) = |/|.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = t61.
    APPEND t60 TO t59->items.
    DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = |&&|.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = t64.
    APPEND t63 TO t62->items.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t66) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t67) = CAST zlnt_runtime_dyna_a429568d5be8( t51 ).
    DATA(t68) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    t65 = zcl_lnt_st_combi_module=>alt_prio( i_first = t66 i_second = t67 i_rest = t68 ).
    t47 = t65.
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t69 TYPE REF TO object.
      t69 = t47.
      t46->oval = t69.
    ENDIF.
    t45 = t46.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t75) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t74 = zcl_lnt_st_combi_module=>tok( i_t = t75 ).
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t76 TYPE REF TO object.
      t76 = t74.
      t73->oval = t76.
    ENDIF.
    t72 = zcl_lnt_st_combi_module=>opt_prio( i_first = t73 ).
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t77 TYPE REF TO object.
      t77 = t72.
      t71->oval = t77.
    ENDIF.
    t70 = t71.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    t78 = t79.
    DATA(t80) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = CAST zif_lnt_statement_runnable( t17 ).
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t83 TYPE REF TO object.
      t83 = t82.
      t81->oval = t83.
    ENDIF.
    APPEND t81 TO t80->items.
    DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t89) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t88 = zcl_lnt_st_combi_module=>tok( i_t = t89 ).
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t90 TYPE REF TO object.
      t90 = t88.
      t87->oval = t90.
    ENDIF.
    t86 = zcl_lnt_st_combi_module=>opt_prio( i_first = t87 ).
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t91 TYPE REF TO object.
      t91 = t86.
      t85->oval = t91.
    ENDIF.
    APPEND t85 TO t84->items.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t93) = CAST zlnt_runtime_dyna_a429568d5be8( t45 ).
    DATA(t94) = CAST zlnt_runtime_dyna_a429568d5be8( t70 ).
    DATA(t95) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    t92 = zcl_lnt_st_combi_module=>seq( i_first = t93 i_second = t94 i_rest = t95 ).
    t44 = t92.
    t43 = t44.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA(t100) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d269_df623ced1aed ).
    IF t100 IS BOUND.
      CREATE OBJECT t99.
      t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t99->cval = t100.
    ENDIF.
    t98 = t99.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8 ).
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t102->cval = t103.
    ENDIF.
    t101 = t102.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t105.
    t104 = t105.
    DATA(t106) = CAST zlnt_runtime_arra_c22708faf2e3( t104 ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d270_547c551ca3da ).
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t107->cval = t108.
    ENDIF.
    APPEND t107 TO t106->items.
    DATA(t109) = CAST zlnt_runtime_arra_c22708faf2e3( t104 ).
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA(t111) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t110->cval = t111.
    ENDIF.
    APPEND t110 TO t109->items.
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t104 ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t113->cval = t114.
    ENDIF.
    APPEND t113 TO t112->items.
    DATA(t115) = CAST zlnt_runtime_arra_c22708faf2e3( t104 ).
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t116->cval = t117.
    ENDIF.
    APPEND t116 TO t115->items.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t119) = CAST zlnt_runtime_dyna_a429568d5be8( t98 ).
    DATA(t120) = CAST zlnt_runtime_dyna_a429568d5be8( t101 ).
    DATA(t121) = CAST zlnt_runtime_arra_c22708faf2e3( t104 ).
    t118 = zcl_lnt_st_combi_module=>alt_prio( i_first = t119 i_second = t120 i_rest = t121 ).
    t97 = t118.
    t96 = t97.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t127) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t126 = zcl_lnt_st_combi_module=>tok( i_t = t127 ).
    IF t126 IS BOUND.
      CREATE OBJECT t125.
      t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t128 TYPE REF TO object.
      t128 = t126.
      t125->oval = t128.
    ENDIF.
    t124 = t125.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA(t131) = CAST zif_lnt_statement_runnable( t96 ).
    IF t131 IS BOUND.
      CREATE OBJECT t130.
      t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t132 TYPE REF TO object.
      t132 = t131.
      t130->oval = t132.
    ENDIF.
    t129 = t130.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t134.
    t133 = t134.
    DATA(t135) = CAST zlnt_runtime_arra_c22708faf2e3( t133 ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t138) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t137 = zcl_lnt_st_combi_module=>tok( i_t = t138 ).
    IF t137 IS BOUND.
      CREATE OBJECT t136.
      t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t139 TYPE REF TO object.
      t139 = t137.
      t136->oval = t139.
    ENDIF.
    APPEND t136 TO t135->items.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t141) = CAST zlnt_runtime_dyna_a429568d5be8( t124 ).
    DATA(t142) = CAST zlnt_runtime_dyna_a429568d5be8( t129 ).
    DATA(t143) = CAST zlnt_runtime_arra_c22708faf2e3( t133 ).
    t140 = zcl_lnt_st_combi_module=>seq( i_first = t141 i_second = t142 i_rest = t143 ).
    t123 = t140.
    t122 = t123.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA(t148) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
    IF t148 IS BOUND.
      CREATE OBJECT t147.
      t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t147->cval = t148.
    ENDIF.
    t146 = t147.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA(t151) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t151 IS BOUND.
      CREATE OBJECT t150.
      t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t150->cval = t151.
    ENDIF.
    t149 = t150.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    t152 = t153.
    DATA(t154) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA(t156) = CAST zif_lnt_statement_runnable( t1 ).
    IF t156 IS BOUND.
      CREATE OBJECT t155.
      t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t157 TYPE REF TO object.
      t157 = t156.
      t155->oval = t157.
    ENDIF.
    APPEND t155 TO t154->items.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t159) = CAST zlnt_runtime_dyna_a429568d5be8( t146 ).
    DATA(t160) = CAST zlnt_runtime_dyna_a429568d5be8( t149 ).
    DATA(t161) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    t158 = zcl_lnt_st_combi_module=>alt_prio( i_first = t159 i_second = t160 i_rest = t161 ).
    t145 = t158.
    t144 = t145.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t162.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t166) = |WHEN|.
    CREATE OBJECT t165.
    t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t165->sval = t166.
    t164 = t165.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA(t169) = CAST zif_lnt_statement_runnable( t144 ).
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
    DATA(t173) = CAST zlnt_runtime_arra_c22708faf2e3( t171 ).
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t175) = |THEN|.
    CREATE OBJECT t174.
    t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t174->sval = t175.
    APPEND t174 TO t173->items.
    DATA(t176) = CAST zlnt_runtime_arra_c22708faf2e3( t171 ).
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA(t181) = CAST zif_lnt_statement_runnable( t122 ).
    IF t181 IS BOUND.
      CREATE OBJECT t180.
      t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t182 TYPE REF TO object.
      t182 = t181.
      t180->oval = t182.
    ENDIF.
    t179 = t180.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t190) = |-|.
    CREATE OBJECT t189.
    t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t189->sval = t190.
    t188 = zcl_lnt_st_combi_module=>opt_prio( i_first = t189 ).
    IF t188 IS BOUND.
      CREATE OBJECT t187.
      t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t191 TYPE REF TO object.
      t191 = t188.
      t187->oval = t191.
    ENDIF.
    t186 = t187.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA(t194) = CAST zif_lnt_statement_runnable( t96 ).
    IF t194 IS BOUND.
      CREATE OBJECT t193.
      t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t195 TYPE REF TO object.
      t195 = t194.
      t193->oval = t195.
    ENDIF.
    t192 = t193.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t197.
    t196 = t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t199) = CAST zlnt_runtime_dyna_a429568d5be8( t186 ).
    DATA(t200) = CAST zlnt_runtime_dyna_a429568d5be8( t192 ).
    DATA(t201) = CAST zlnt_runtime_arra_c22708faf2e3( t196 ).
    t198 = zcl_lnt_st_combi_module=>seq( i_first = t199 i_second = t200 i_rest = t201 ).
    t185 = t198.
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t202 TYPE REF TO object.
      t202 = t185.
      t184->oval = t202.
    ENDIF.
    t183 = t184.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t204.
    t203 = t204.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t206) = CAST zlnt_runtime_dyna_a429568d5be8( t179 ).
    DATA(t207) = CAST zlnt_runtime_dyna_a429568d5be8( t183 ).
    DATA(t208) = CAST zlnt_runtime_arra_c22708faf2e3( t203 ).
    t205 = zcl_lnt_st_combi_module=>alt_prio( i_first = t206 i_second = t207 i_rest = t208 ).
    t178 = t205.
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t209 TYPE REF TO object.
      t209 = t178.
      t177->oval = t209.
    ENDIF.
    APPEND t177 TO t176->items.
    DATA(t210) = CAST zlnt_runtime_arra_c22708faf2e3( t171 ).
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA(t214) = CAST zif_lnt_statement_runnable( t43 ).
    IF t214 IS BOUND.
      CREATE OBJECT t213.
      t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t215 TYPE REF TO object.
      t215 = t214.
      t213->oval = t215.
    ENDIF.
    t212 = zcl_lnt_st_combi_module=>star_prio( i_first = t213 ).
    IF t212 IS BOUND.
      CREATE OBJECT t211.
      t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t216 TYPE REF TO object.
      t216 = t212.
      t211->oval = t216.
    ENDIF.
    APPEND t211 TO t210->items.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t218) = CAST zlnt_runtime_dyna_a429568d5be8( t164 ).
    DATA(t219) = CAST zlnt_runtime_dyna_a429568d5be8( t167 ).
    DATA(t220) = CAST zlnt_runtime_arra_c22708faf2e3( t171 ).
    t217 = zcl_lnt_st_combi_module=>seq( i_first = t218 i_second = t219 i_rest = t220 ).
    t163 = t217.
    t162 = t163.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t225) = |ELSE|.
    CREATE OBJECT t224.
    t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t224->sval = t225.
    t223 = t224.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t228.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA(t231) = CAST zif_lnt_statement_runnable( t122 ).
    IF t231 IS BOUND.
      CREATE OBJECT t230.
      t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t232 TYPE REF TO object.
      t232 = t231.
      t230->oval = t232.
    ENDIF.
    t229 = t230.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA t238 TYPE REF TO zif_lnt_statement_runnable.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t240) = |-|.
    CREATE OBJECT t239.
    t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t239->sval = t240.
    t238 = zcl_lnt_st_combi_module=>opt_prio( i_first = t239 ).
    IF t238 IS BOUND.
      CREATE OBJECT t237.
      t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t241 TYPE REF TO object.
      t241 = t238.
      t237->oval = t241.
    ENDIF.
    t236 = t237.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA(t244) = CAST zif_lnt_statement_runnable( t96 ).
    IF t244 IS BOUND.
      CREATE OBJECT t243.
      t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t245 TYPE REF TO object.
      t245 = t244.
      t243->oval = t245.
    ENDIF.
    t242 = t243.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t247.
    t246 = t247.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t249) = CAST zlnt_runtime_dyna_a429568d5be8( t236 ).
    DATA(t250) = CAST zlnt_runtime_dyna_a429568d5be8( t242 ).
    DATA(t251) = CAST zlnt_runtime_arra_c22708faf2e3( t246 ).
    t248 = zcl_lnt_st_combi_module=>seq( i_first = t249 i_second = t250 i_rest = t251 ).
    t235 = t248.
    IF t235 IS BOUND.
      CREATE OBJECT t234.
      t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t252 TYPE REF TO object.
      t252 = t235.
      t234->oval = t252.
    ENDIF.
    t233 = t234.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t254.
    t253 = t254.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t256) = CAST zlnt_runtime_dyna_a429568d5be8( t229 ).
    DATA(t257) = CAST zlnt_runtime_dyna_a429568d5be8( t233 ).
    DATA(t258) = CAST zlnt_runtime_arra_c22708faf2e3( t253 ).
    t255 = zcl_lnt_st_combi_module=>alt_prio( i_first = t256 i_second = t257 i_rest = t258 ).
    t228 = t255.
    IF t228 IS BOUND.
      CREATE OBJECT t227.
      t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t259 TYPE REF TO object.
      t259 = t228.
      t227->oval = t259.
    ENDIF.
    t226 = t227.
    DATA t260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t261.
    t260 = t261.
    DATA t262 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t263) = CAST zlnt_runtime_dyna_a429568d5be8( t223 ).
    DATA(t264) = CAST zlnt_runtime_dyna_a429568d5be8( t226 ).
    DATA(t265) = CAST zlnt_runtime_arra_c22708faf2e3( t260 ).
    t262 = zcl_lnt_st_combi_module=>seq( i_first = t263 i_second = t264 i_rest = t265 ).
    t222 = t262.
    t221 = t222.
    DATA t266 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t266.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA t268 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t268.
    DATA t269 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t270.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t270 = zcl_lnt_version_module=>release_b8cd.
    DATA(t271) = |v740sp05|.
    t269 = t270->get( p0 = t271 ).
    t268 = t269.
    IF t268 IS BOUND.
      CREATE OBJECT t267.
      t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t272 TYPE REF TO object.
      t272 = t268.
      t267->oval = t272.
    ENDIF.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t277) = |CASE|.
    CREATE OBJECT t276.
    t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t276->sval = t277.
    t275 = t276.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t278.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t280.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    DATA t282 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t282.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    DATA(t285) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t285 IS BOUND.
      CREATE OBJECT t284.
      t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t284->cval = t285.
    ENDIF.
    t283 = t284.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t287.
    DATA(t288) = CAST zif_lnt_statement_runnable( t1 ).
    IF t288 IS BOUND.
      CREATE OBJECT t287.
      t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t289 TYPE REF TO object.
      t289 = t288.
      t287->oval = t289.
    ENDIF.
    t286 = t287.
    DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t291.
    t290 = t291.
    DATA t292 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t293) = CAST zlnt_runtime_dyna_a429568d5be8( t283 ).
    DATA(t294) = CAST zlnt_runtime_dyna_a429568d5be8( t286 ).
    DATA(t295) = CAST zlnt_runtime_arra_c22708faf2e3( t290 ).
    t292 = zcl_lnt_st_combi_module=>alt_prio( i_first = t293 i_second = t294 i_rest = t295 ).
    t282 = t292.
    IF t282 IS BOUND.
      CREATE OBJECT t281.
      t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t296 TYPE REF TO object.
      t296 = t282.
      t281->oval = t296.
    ENDIF.
    t280 = zcl_lnt_st_combi_module=>opt( i_first = t281 ).
    IF t280 IS BOUND.
      CREATE OBJECT t279.
      t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t297 TYPE REF TO object.
      t297 = t280.
      t279->oval = t297.
    ENDIF.
    t278 = t279.
    DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t299.
    t298 = t299.
    DATA(t300) = CAST zlnt_runtime_arra_c22708faf2e3( t298 ).
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t302.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA(t304) = CAST zif_lnt_statement_runnable( t162 ).
    IF t304 IS BOUND.
      CREATE OBJECT t303.
      t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t305 TYPE REF TO object.
      t305 = t304.
      t303->oval = t305.
    ENDIF.
    t302 = zcl_lnt_st_combi_module=>plus_prio( i_first = t303 ).
    IF t302 IS BOUND.
      CREATE OBJECT t301.
      t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t306 TYPE REF TO object.
      t306 = t302.
      t301->oval = t306.
    ENDIF.
    APPEND t301 TO t300->items.
    DATA(t307) = CAST zlnt_runtime_arra_c22708faf2e3( t298 ).
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA t309 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t309.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA(t311) = CAST zif_lnt_statement_runnable( t221 ).
    IF t311 IS BOUND.
      CREATE OBJECT t310.
      t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t312 TYPE REF TO object.
      t312 = t311.
      t310->oval = t312.
    ENDIF.
    t309 = zcl_lnt_st_combi_module=>opt_prio( i_first = t310 ).
    IF t309 IS BOUND.
      CREATE OBJECT t308.
      t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t313 TYPE REF TO object.
      t313 = t309.
      t308->oval = t313.
    ENDIF.
    APPEND t308 TO t307->items.
    DATA(t314) = CAST zlnt_runtime_arra_c22708faf2e3( t298 ).
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t316) = |END|.
    CREATE OBJECT t315.
    t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t315->sval = t316.
    APPEND t315 TO t314->items.
    DATA t317 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t318) = CAST zlnt_runtime_dyna_a429568d5be8( t275 ).
    DATA(t319) = CAST zlnt_runtime_dyna_a429568d5be8( t278 ).
    DATA(t320) = CAST zlnt_runtime_arra_c22708faf2e3( t298 ).
    t317 = zcl_lnt_st_combi_module=>seq( i_first = t318 i_second = t319 i_rest = t320 ).
    t274 = t317.
    IF t274 IS BOUND.
      CREATE OBJECT t273.
      t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t321 TYPE REF TO object.
      t321 = t274.
      t273->oval = t321.
    ENDIF.
    DATA t322 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t322.
    DATA(t323) = abap_true.
    IF t323 = abap_true.
      DATA t324 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t324.
      DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t325.
      DATA(t326) = abap_true.
      IF t326 = abap_true.
        DATA(t327) = |OpenABAP|.
        DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t328->has = abap_true.
        t328->value = t327.
        t325 = t328.
      ELSE.
        DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t329.
        t325 = t329.
      ENDIF.
      t324 = NEW zcl_lnt_iver_options( i_also = t325 ).
      t322 = t324.
    ELSE.
      DATA t330 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t330.
      t322 = t330.
    ENDIF.
    t266 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t267 i_first = t273 i_opts = t322 ).
    result = t266.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d269_df623ced1aed.
  ENDMETHOD.
ENDCLASS.
