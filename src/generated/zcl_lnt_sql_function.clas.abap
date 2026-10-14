* TS: src/abap/2_statements/expressions/sql_function.ts:354:1 SQLFunction
CLASS zcl_lnt_sql_function DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS fn_fn IMPORTING i_comma_param TYPE REF TO zif_lnt_statement_runnable i_name TYPE string i_params_4c59 TYPE int8 i_v TYPE REF TO zcl_lnt_abap_release RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    METHODS fn_value_for IMPORTING i_abap_only TYPE REF TO zif_lnt_statement_runnable i_p TYPE REF TO zcl_lnt_sql_named_param RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS fn_named_fn IMPORTING i_abap_only TYPE REF TO zif_lnt_statement_runnable i_name TYPE string i_v TYPE REF TO zcl_lnt_abap_release i_params_4c59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO
    zif_lnt_statement_runnable.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_function IMPLEMENTATION.
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
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |CHAR|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t17) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t16 = zcl_lnt_st_combi_module=>tok( i_t = t17 ).
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t18 TYPE REF TO object.
      t18 = t16.
      t15->oval = t18.
    ENDIF.
    t14 = t15.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    t22 = t23.
    DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t22 ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t27) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t26 = zcl_lnt_st_combi_module=>tok( i_t = t27 ).
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t28 TYPE REF TO object.
      t28 = t26.
      t25->oval = t28.
    ENDIF.
    APPEND t25 TO t24->items.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t14 ).
    DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t22 ).
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t31 i_rest = t32 ).
    t13 = t29.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t33 TYPE REF TO object.
      t33 = t13.
      t12->oval = t33.
    ENDIF.
    t11 = zcl_lnt_st_combi_module=>opt_prio( i_first = t12 ).
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t34 TYPE REF TO object.
      t34 = t11.
      t10->oval = t34.
    ENDIF.
    t9 = t10.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    t35 = t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t38) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t39) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    t37 = zcl_lnt_st_combi_module=>seq( i_first = t38 i_second = t39 i_rest = t40 ).
    t5 = t37.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t41 TYPE REF TO object.
      t41 = t5.
      t4->oval = t41.
    ENDIF.
    t3 = t4.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = |DEC|.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t50 = zcl_lnt_st_combi_module=>tok( i_t = t51 ).
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t52 TYPE REF TO object.
      t52 = t50.
      t49->oval = t52.
    ENDIF.
    t48 = t49.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t54.
    t53 = t54.
    DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA(t57) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t57 IS BOUND.
      CREATE OBJECT t56.
      t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t56->cval = t57.
    ENDIF.
    APPEND t56 TO t55->items.
    DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t60) = |,|.
    CREATE OBJECT t59.
    t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t59->sval = t60.
    APPEND t59 TO t58->items.
    DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    APPEND t62 TO t61->items.
    DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t67) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t66 = zcl_lnt_st_combi_module=>tok( i_t = t67 ).
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t68 TYPE REF TO object.
      t68 = t66.
      t65->oval = t68.
    ENDIF.
    APPEND t65 TO t64->items.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t70) = CAST zlnt_runtime_dyna_a429568d5be8( t45 ).
    DATA(t71) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t72) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
    t69 = zcl_lnt_st_combi_module=>seq( i_first = t70 i_second = t71 i_rest = t72 ).
    t44 = t69.
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t73 TYPE REF TO object.
      t73 = t44.
      t43->oval = t73.
    ENDIF.
    t42 = t43.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t75.
    t74 = t75.
    DATA(t76) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t81) = |NUMC|.
    CREATE OBJECT t80.
    t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t80->sval = t81.
    t79 = t80.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t90) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t89 = zcl_lnt_st_combi_module=>tok( i_t = t90 ).
    IF t89 IS BOUND.
      CREATE OBJECT t88.
      t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t91 TYPE REF TO object.
      t91 = t89.
      t88->oval = t91.
    ENDIF.
    t87 = t88.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t94 IS BOUND.
      CREATE OBJECT t93.
      t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t93->cval = t94.
    ENDIF.
    t92 = t93.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t96.
    t95 = t96.
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t100) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t99 = zcl_lnt_st_combi_module=>tok( i_t = t100 ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t101 TYPE REF TO object.
      t101 = t99.
      t98->oval = t101.
    ENDIF.
    APPEND t98 TO t97->items.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t103) = CAST zlnt_runtime_dyna_a429568d5be8( t87 ).
    DATA(t104) = CAST zlnt_runtime_dyna_a429568d5be8( t92 ).
    DATA(t105) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    t102 = zcl_lnt_st_combi_module=>seq( i_first = t103 i_second = t104 i_rest = t105 ).
    t86 = t102.
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t106 TYPE REF TO object.
      t106 = t86.
      t85->oval = t106.
    ENDIF.
    t84 = zcl_lnt_st_combi_module=>opt_prio( i_first = t85 ).
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t107 TYPE REF TO object.
      t107 = t84.
      t83->oval = t107.
    ENDIF.
    t82 = t83.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t109.
    t108 = t109.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t111) = CAST zlnt_runtime_dyna_a429568d5be8( t79 ).
    DATA(t112) = CAST zlnt_runtime_dyna_a429568d5be8( t82 ).
    DATA(t113) = CAST zlnt_runtime_arra_c22708faf2e3( t108 ).
    t110 = zcl_lnt_st_combi_module=>seq( i_first = t111 i_second = t112 i_rest = t113 ).
    t78 = t110.
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t114 TYPE REF TO object.
      t114 = t78.
      t77->oval = t114.
    ENDIF.
    APPEND t77 TO t76->items.
    DATA(t115) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t117) = |DATS|.
    CREATE OBJECT t116.
    t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t116->sval = t117.
    APPEND t116 TO t115->items.
    DATA(t118) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t120) = |FLTP|.
    CREATE OBJECT t119.
    t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t119->sval = t120.
    APPEND t119 TO t118->items.
    DATA(t121) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t123) = |INT1|.
    CREATE OBJECT t122.
    t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t122->sval = t123.
    APPEND t122 TO t121->items.
    DATA(t124) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t126) = |INT2|.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = t126.
    APPEND t125 TO t124->items.
    DATA(t127) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t129) = |INT4|.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = t129.
    APPEND t128 TO t127->items.
    DATA(t130) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t132) = |INT8|.
    CREATE OBJECT t131.
    t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t131->sval = t132.
    APPEND t131 TO t130->items.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t134) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t135) = CAST zlnt_runtime_dyna_a429568d5be8( t42 ).
    DATA(t136) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
    t133 = zcl_lnt_st_combi_module=>alt_prio( i_first = t134 i_second = t135 i_rest = t136 ).
    t2 = t133.
    t1 = t2.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t141) = |,|.
    CREATE OBJECT t140.
    t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t140->sval = t141.
    t139 = t140.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t143->cval = t144.
    ENDIF.
    t142 = t143.
    DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t146.
    t145 = t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t148) = CAST zlnt_runtime_dyna_a429568d5be8( t139 ).
    DATA(t149) = CAST zlnt_runtime_dyna_a429568d5be8( t142 ).
    DATA(t150) = CAST zlnt_runtime_arra_c22708faf2e3( t145 ).
    t147 = zcl_lnt_st_combi_module=>seq( i_first = t148 i_second = t149 i_rest = t150 ).
    t138 = t147.
    t137 = t138.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t151.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA(t155) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d269_df623ced1aed ).
    IF t155 IS BOUND.
      CREATE OBJECT t154.
      t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t154->cval = t155.
    ENDIF.
    t153 = t154.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t160.
    t159 = t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t162) = CAST zlnt_runtime_dyna_a429568d5be8( t153 ).
    DATA(t163) = CAST zlnt_runtime_dyna_a429568d5be8( t156 ).
    DATA(t164) = CAST zlnt_runtime_arra_c22708faf2e3( t159 ).
    t161 = zcl_lnt_st_combi_module=>alt_prio( i_first = t162 i_second = t163 i_rest = t164 ).
    t152 = t161.
    t151 = t152.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t168.
    DATA t169 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t170.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t170 = zcl_lnt_version_module=>release_b8cd.
    DATA(t171) = |v750|.
    t169 = t170->get( p0 = t171 ).
    t168 = t169.
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t172 TYPE REF TO object.
      t172 = t168.
      t167->oval = t172.
    ENDIF.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    DATA t178 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t178.
    DATA(t179) = |^cast$|.
    DATA(t180) = |i|.
    CREATE OBJECT t178 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t179 flags = t180.
    t177 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t178 ).
    IF t177 IS BOUND.
      CREATE OBJECT t176.
      t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t181 TYPE REF TO object.
      t181 = t177.
      t176->oval = t181.
    ENDIF.
    t175 = t176.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t185) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t184 = zcl_lnt_st_combi_module=>tok( i_t = t185 ).
    IF t184 IS BOUND.
      CREATE OBJECT t183.
      t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t186 TYPE REF TO object.
      t186 = t184.
      t183->oval = t186.
    ENDIF.
    t182 = t183.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t188.
    t187 = t188.
    DATA(t189) = CAST zlnt_runtime_arra_c22708faf2e3( t187 ).
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA(t191) = CAST zif_lnt_statement_runnable( t151 ).
    IF t191 IS BOUND.
      CREATE OBJECT t190.
      t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t192 TYPE REF TO object.
      t192 = t191.
      t190->oval = t192.
    ENDIF.
    APPEND t190 TO t189->items.
    DATA(t193) = CAST zlnt_runtime_arra_c22708faf2e3( t187 ).
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t195) = |AS|.
    CREATE OBJECT t194.
    t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t194->sval = t195.
    APPEND t194 TO t193->items.
    DATA(t196) = CAST zlnt_runtime_arra_c22708faf2e3( t187 ).
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = CAST zif_lnt_statement_runnable( t1 ).
    IF t198 IS BOUND.
      CREATE OBJECT t197.
      t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t199 TYPE REF TO object.
      t199 = t198.
      t197->oval = t199.
    ENDIF.
    APPEND t197 TO t196->items.
    DATA(t200) = CAST zlnt_runtime_arra_c22708faf2e3( t187 ).
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t203) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t202 = zcl_lnt_st_combi_module=>tok( i_t = t203 ).
    IF t202 IS BOUND.
      CREATE OBJECT t201.
      t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t204 TYPE REF TO object.
      t204 = t202.
      t201->oval = t204.
    ENDIF.
    APPEND t201 TO t200->items.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t206) = CAST zlnt_runtime_dyna_a429568d5be8( t175 ).
    DATA(t207) = CAST zlnt_runtime_dyna_a429568d5be8( t182 ).
    DATA(t208) = CAST zlnt_runtime_arra_c22708faf2e3( t187 ).
    t205 = zcl_lnt_st_combi_module=>seq( i_first = t206 i_second = t207 i_rest = t208 ).
    t174 = t205.
    IF t174 IS BOUND.
      CREATE OBJECT t173.
      t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t209 TYPE REF TO object.
      t209 = t174.
      t173->oval = t209.
    ENDIF.
    DATA t210 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t210.
    DATA(t211) = abap_true.
    IF t211 = abap_true.
      DATA t212 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t212.
      DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t213.
      DATA(t214) = abap_true.
      IF t214 = abap_true.
        DATA(t215) = |OpenABAP|.
        DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t216->has = abap_true.
        t216->value = t215.
        t213 = t216.
      ELSE.
        DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t217.
        t213 = t217.
      ENDIF.
      t212 = NEW zcl_lnt_iver_options( i_also = t213 ).
      t210 = t212.
    ELSE.
      DATA t218 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t218.
      t210 = t218.
    ENDIF.
    t166 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t167 i_first = t173 i_opts = t210 ).
    t165 = t166.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t219.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    DATA t223 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t224) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t223 = zcl_lnt_st_combi_module=>tok( i_t = t224 ).
    IF t223 IS BOUND.
      CREATE OBJECT t222.
      t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t225 TYPE REF TO object.
      t225 = t223.
      t222->oval = t225.
    ENDIF.
    t221 = t222.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA(t228) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
    IF t228 IS BOUND.
      CREATE OBJECT t227.
      t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t227->cval = t228.
    ENDIF.
    t226 = t227.
    DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t230 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t230.
    t229 = t230.
    DATA(t231) = CAST zlnt_runtime_arra_c22708faf2e3( t229 ).
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t234) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t233 = zcl_lnt_st_combi_module=>tok( i_t = t234 ).
    IF t233 IS BOUND.
      CREATE OBJECT t232.
      t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t235 TYPE REF TO object.
      t235 = t233.
      t232->oval = t235.
    ENDIF.
    APPEND t232 TO t231->items.
    DATA t236 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t237) = CAST zlnt_runtime_dyna_a429568d5be8( t221 ).
    DATA(t238) = CAST zlnt_runtime_dyna_a429568d5be8( t226 ).
    DATA(t239) = CAST zlnt_runtime_arra_c22708faf2e3( t229 ).
    t236 = zcl_lnt_st_combi_module=>seq( i_first = t237 i_second = t238 i_rest = t239 ).
    t220 = t236.
    t219 = t220.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t240.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t241.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t245) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d41_e53da77a9517f4 ).
    t244 = zcl_lnt_st_combi_module=>tok( i_t = t245 ).
    IF t244 IS BOUND.
      CREATE OBJECT t243.
      t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t246 TYPE REF TO object.
      t246 = t244.
      t243->oval = t246.
    ENDIF.
    t242 = t243.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA(t252) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
    IF t252 IS BOUND.
      CREATE OBJECT t251.
      t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t251->cval = t252.
    ENDIF.
    t250 = t251.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA(t255) = CAST zif_lnt_statement_runnable( t219 ).
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t256 TYPE REF TO object.
      t256 = t255.
      t254->oval = t256.
    ENDIF.
    t253 = t254.
    DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t258.
    t257 = t258.
    DATA t259 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t260) = CAST zlnt_runtime_dyna_a429568d5be8( t250 ).
    DATA(t261) = CAST zlnt_runtime_dyna_a429568d5be8( t253 ).
    DATA(t262) = CAST zlnt_runtime_arra_c22708faf2e3( t257 ).
    t259 = zcl_lnt_st_combi_module=>alt_prio( i_first = t260 i_second = t261 i_rest = t262 ).
    t249 = t259.
    IF t249 IS BOUND.
      CREATE OBJECT t248.
      t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t263 TYPE REF TO object.
      t263 = t249.
      t248->oval = t263.
    ENDIF.
    t247 = t248.
    DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t265.
    t264 = t265.
    DATA t266 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t267) = CAST zlnt_runtime_dyna_a429568d5be8( t242 ).
    DATA(t268) = CAST zlnt_runtime_dyna_a429568d5be8( t247 ).
    DATA(t269) = CAST zlnt_runtime_arra_c22708faf2e3( t264 ).
    t266 = zcl_lnt_st_combi_module=>seq( i_first = t267 i_second = t268 i_rest = t269 ).
    t241 = t266.
    t240 = t241.
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t270.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA(t274) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t274 IS BOUND.
      CREATE OBJECT t273.
      t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t273->cval = t274.
    ENDIF.
    t272 = t273.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA(t277) = CAST zif_lnt_statement_runnable( t240 ).
    IF t277 IS BOUND.
      CREATE OBJECT t276.
      t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t278 TYPE REF TO object.
      t278 = t277.
      t276->oval = t278.
    ENDIF.
    t275 = t276.
    DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t280 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t280.
    t279 = t280.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t282) = CAST zlnt_runtime_dyna_a429568d5be8( t272 ).
    DATA(t283) = CAST zlnt_runtime_dyna_a429568d5be8( t275 ).
    DATA(t284) = CAST zlnt_runtime_arra_c22708faf2e3( t279 ).
    t281 = zcl_lnt_st_combi_module=>alt_prio( i_first = t282 i_second = t283 i_rest = t284 ).
    t271 = t281.
    t270 = t271.
    DATA t285 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t287.
    DATA(t288) = CAST zif_lnt_statement_runnable( t165 ).
    IF t288 IS BOUND.
      CREATE OBJECT t287.
      t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t289 TYPE REF TO object.
      t289 = t288.
      t287->oval = t289.
    ENDIF.
    t286 = t287.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t291.
    DATA(t292) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d303_41f42c023891 ).
    IF t292 IS BOUND.
      CREATE OBJECT t291.
      t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t291->cval = t292.
    ENDIF.
    t290 = t291.
    DATA t293 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t294 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t294.
    t293 = t294.
    DATA(t295) = CAST zlnt_runtime_arra_c22708faf2e3( t293 ).
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA(t297) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d304_37e1cb13dad0 ).
    IF t297 IS BOUND.
      CREATE OBJECT t296.
      t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t296->cval = t297.
    ENDIF.
    APPEND t296 TO t295->items.
    DATA(t298) = CAST zlnt_runtime_arra_c22708faf2e3( t293 ).
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA(t300) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d305_1d893c9cc0cb ).
    IF t300 IS BOUND.
      CREATE OBJECT t299.
      t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t299->cval = t300.
    ENDIF.
    APPEND t299 TO t298->items.
    DATA(t301) = CAST zlnt_runtime_arra_c22708faf2e3( t293 ).
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t302.
    DATA(t303) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d306_9aee0313349c ).
    IF t303 IS BOUND.
      CREATE OBJECT t302.
      t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t302->cval = t303.
    ENDIF.
    APPEND t302 TO t301->items.
    DATA t304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t306 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t306.
    t305 = t306.
    DATA t307 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t307.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    t307 = zcl_lnt_sql_function_module=>sql_function_defs.
    DATA t308 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t308.
    DATA t309 TYPE REF TO object.
    CLEAR t309.
    LOOP AT t307->items INTO t309.
      t308 ?= t309.
      DATA(t310) = CAST zlnt_runtime_arra_c22708faf2e3( t305 ).
      DATA t311 TYPE REF TO zif_lnt_statement_runnable.
      DATA t312 TYPE string.
      DATA t313 TYPE string.
      DATA(t314) = CAST zcl_lnt_tuple_dda7dd58( t308 ).
      t313 = t314->f0.
      t312 = t313.
      DATA t315 TYPE int8.
      DATA t316 TYPE int8.
      DATA(t317) = CAST zcl_lnt_tuple_dda7dd58( t308 ).
      t316 = t317->f1.
      t315 = t316.
      DATA t318 TYPE REF TO zcl_lnt_abap_release.
      DATA t319 TYPE REF TO zcl_lnt_abap_release.
      DATA(t320) = CAST zcl_lnt_tuple_dda7dd58( t308 ).
      t319 = t320->f2.
      t318 = t319.
      DATA t321 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t322) = CAST zif_lnt_statement_runnable( t137 ).
      DATA(t323) = t312.
      DATA(t324) = t315.
      DATA(t325) = CAST zcl_lnt_abap_release( t318 ).
      t321 = me->fn_fn( i_comma_param = t322 i_name = t323 i_params_4c59 = t324 i_v = t325 ).
      t311 = t321.
      APPEND t311 TO t310->items.
    ENDLOOP.
    DATA(t326) = CAST zlnt_runtime_arra_c22708faf2e3( t305 ).
    t304 = t326.
    DATA t327 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t327.
    DATA t328 TYPE REF TO object.
    CLEAR t328.
    LOOP AT t304->items INTO t328.
      t327 ?= t328.
      DATA(t329) = CAST zlnt_runtime_arra_c22708faf2e3( t293 ).
      DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t330.
      DATA(t331) = CAST zif_lnt_statement_runnable( t327 ).
      IF t331 IS BOUND.
        CREATE OBJECT t330.
        t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t332 TYPE REF TO object.
        t332 = t331.
        t330->oval = t332.
      ENDIF.
      APPEND t330 TO t329->items.
    ENDLOOP.
    DATA t333 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t333.
    DATA t334 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t335 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t335.
    t334 = t335.
    DATA t336 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t336.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    t336 = zcl_lnt_sql_function_module=>sql_named_function_defs.
    DATA t337 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t337.
    DATA t338 TYPE REF TO object.
    CLEAR t338.
    LOOP AT t336->items INTO t338.
      t337 ?= t338.
      DATA(t339) = CAST zlnt_runtime_arra_c22708faf2e3( t334 ).
      DATA t340 TYPE REF TO zif_lnt_statement_runnable.
      DATA t341 TYPE string.
      DATA t342 TYPE string.
      DATA(t343) = CAST zcl_lnt_tuple_443ddf92( t337 ).
      t342 = t343->f0.
      t341 = t342.
      DATA t344 TYPE REF TO zcl_lnt_abap_release.
      DATA t345 TYPE REF TO zcl_lnt_abap_release.
      DATA(t346) = CAST zcl_lnt_tuple_443ddf92( t337 ).
      t345 = t346->f1.
      t344 = t345.
      DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t349) = CAST zcl_lnt_tuple_443ddf92( t337 ).
      t348 = t349->f2.
      t347 = t348.
      DATA t350 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t351) = CAST zif_lnt_statement_runnable( t270 ).
      DATA(t352) = t341.
      DATA(t353) = CAST zcl_lnt_abap_release( t344 ).
      DATA(t354) = CAST zlnt_runtime_arra_c22708faf2e3( t347 ).
      t350 = me->fn_named_fn( i_abap_only = t351 i_name = t352 i_v = t353 i_params_4c59 = t354 ).
      t340 = t350.
      APPEND t340 TO t339->items.
    ENDLOOP.
    DATA(t355) = CAST zlnt_runtime_arra_c22708faf2e3( t334 ).
    t333 = t355.
    DATA t356 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t356.
    DATA t357 TYPE REF TO object.
    CLEAR t357.
    LOOP AT t333->items INTO t357.
      t356 ?= t357.
      DATA(t358) = CAST zlnt_runtime_arra_c22708faf2e3( t293 ).
      DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t359.
      DATA(t360) = CAST zif_lnt_statement_runnable( t356 ).
      IF t360 IS BOUND.
        CREATE OBJECT t359.
        t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t361 TYPE REF TO object.
        t361 = t360.
        t359->oval = t361.
      ENDIF.
      APPEND t359 TO t358->items.
    ENDLOOP.
    DATA t362 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t362.
    DATA t363 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t364 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t364.
    t363 = t364.
    DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t365.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    t365 = zcl_lnt_sql_function_module=>sql_spatial_function_defs.
    DATA t366 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t366.
    DATA t367 TYPE REF TO object.
    CLEAR t367.
    LOOP AT t365->items INTO t367.
      t366 ?= t367.
      DATA(t368) = CAST zlnt_runtime_arra_c22708faf2e3( t363 ).
      DATA t369 TYPE REF TO zif_lnt_statement_runnable.
      DATA t370 TYPE string.
      DATA t371 TYPE string.
      DATA(t372) = CAST zcl_lnt_tuple_dda7dd58( t366 ).
      t371 = t372->f0.
      t370 = t371.
      DATA t373 TYPE int8.
      DATA t374 TYPE int8.
      DATA(t375) = CAST zcl_lnt_tuple_dda7dd58( t366 ).
      t374 = t375->f1.
      t373 = t374.
      DATA t376 TYPE REF TO zcl_lnt_abap_release.
      DATA t377 TYPE REF TO zcl_lnt_abap_release.
      DATA(t378) = CAST zcl_lnt_tuple_dda7dd58( t366 ).
      t377 = t378->f2.
      t376 = t377.
      DATA t379 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t380) = CAST zif_lnt_statement_runnable( t137 ).
      DATA(t381) = t370.
      DATA(t382) = t373.
      DATA(t383) = CAST zcl_lnt_abap_release( t376 ).
      t379 = me->fn_fn( i_comma_param = t380 i_name = t381 i_params_4c59 = t382 i_v = t383 ).
      t369 = t379.
      APPEND t369 TO t368->items.
    ENDLOOP.
    DATA(t384) = CAST zlnt_runtime_arra_c22708faf2e3( t363 ).
    t362 = t384.
    DATA t385 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t385.
    DATA t386 TYPE REF TO object.
    CLEAR t386.
    LOOP AT t362->items INTO t386.
      t385 ?= t386.
      DATA(t387) = CAST zlnt_runtime_arra_c22708faf2e3( t293 ).
      DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t388.
      DATA(t389) = CAST zif_lnt_statement_runnable( t385 ).
      IF t389 IS BOUND.
        CREATE OBJECT t388.
        t388->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t390 TYPE REF TO object.
        t390 = t389.
        t388->oval = t390.
      ENDIF.
      APPEND t388 TO t387->items.
    ENDLOOP.
    DATA t391 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t391.
    DATA t392 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t393.
    t392 = t393.
    DATA t394 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t394.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    t394 = zcl_lnt_sql_function_module=>sql_spatial_aggregate_defs.
    DATA t395 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t395.
    DATA t396 TYPE REF TO object.
    CLEAR t396.
    LOOP AT t394->items INTO t396.
      t395 ?= t396.
      DATA(t397) = CAST zlnt_runtime_arra_c22708faf2e3( t392 ).
      DATA t398 TYPE REF TO zif_lnt_statement_runnable.
      DATA t399 TYPE string.
      DATA t400 TYPE string.
      DATA(t401) = CAST zcl_lnt_tuple_dda7dd58( t395 ).
      t400 = t401->f0.
      t399 = t400.
      DATA t402 TYPE int8.
      DATA t403 TYPE int8.
      DATA(t404) = CAST zcl_lnt_tuple_dda7dd58( t395 ).
      t403 = t404->f1.
      t402 = t403.
      DATA t405 TYPE REF TO zcl_lnt_abap_release.
      DATA t406 TYPE REF TO zcl_lnt_abap_release.
      DATA(t407) = CAST zcl_lnt_tuple_dda7dd58( t395 ).
      t406 = t407->f2.
      t405 = t406.
      DATA t408 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t409) = CAST zif_lnt_statement_runnable( t137 ).
      DATA(t410) = t399.
      DATA(t411) = t402.
      DATA(t412) = CAST zcl_lnt_abap_release( t405 ).
      t408 = me->fn_fn( i_comma_param = t409 i_name = t410 i_params_4c59 = t411 i_v = t412 ).
      t398 = t408.
      APPEND t398 TO t397->items.
    ENDLOOP.
    DATA(t413) = CAST zlnt_runtime_arra_c22708faf2e3( t392 ).
    t391 = t413.
    DATA t414 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t414.
    DATA t415 TYPE REF TO object.
    CLEAR t415.
    LOOP AT t391->items INTO t415.
      t414 ?= t415.
      DATA(t416) = CAST zlnt_runtime_arra_c22708faf2e3( t293 ).
      DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t417.
      DATA(t418) = CAST zif_lnt_statement_runnable( t414 ).
      IF t418 IS BOUND.
        CREATE OBJECT t417.
        t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t419 TYPE REF TO object.
        t419 = t418.
        t417->oval = t419.
      ENDIF.
      APPEND t417 TO t416->items.
    ENDLOOP.
    DATA t420 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t421) = CAST zlnt_runtime_dyna_a429568d5be8( t286 ).
    DATA(t422) = CAST zlnt_runtime_dyna_a429568d5be8( t290 ).
    DATA(t423) = CAST zlnt_runtime_arra_c22708faf2e3( t293 ).
    t420 = zcl_lnt_st_combi_module=>alt_prio( i_first = t421 i_second = t422 i_rest = t423 ).
    t285 = t420.
    result = t285.

  ENDMETHOD.
  METHOD fn_fn.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zif_lnt_statement_runnable( i_comma_param ).
    DATA(t2) = i_name.
    DATA(t3) = i_params_4c59.
    DATA(t4) = CAST zcl_lnt_abap_release( i_v ).
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t7.
    DATA t8 TYPE string.
    DATA t9 TYPE string.
    DATA(t10) = |^|.
    DATA(t11) = t2.
    DATA(t12) = strlen( t10 ).
    t9 = |{ t10 }{ t11 }|.
    DATA(t13) = |$|.
    DATA(t14) = strlen( t9 ).
    t8 = |{ t9 }{ t13 }|.
    DATA(t15) = |i|.
    CREATE OBJECT t7 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t8 flags = t15.
    t6 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t7 ).
    t5 = t6.
    DATA t16 TYPE abap_bool.
    DATA(t17) = t3.
    DATA(t18) = CONV int8( 0 ).
    t16 = xsdbool( t17 = t18 ).
    IF t16 = abap_true.
      DATA t19 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      DATA(t21) = CAST zcl_lnt_abap_release( t4 ).
      IF t21 IS BOUND.
        CREATE OBJECT t20.
        t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t22 TYPE REF TO object.
        t22 = t21.
        t20->oval = t22.
      ENDIF.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      DATA(t27) = CAST zif_lnt_statement_runnable( t5 ).
      IF t27 IS BOUND.
        CREATE OBJECT t26.
        t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t28 TYPE REF TO object.
        t28 = t27.
        t26->oval = t28.
      ENDIF.
      t25 = t26.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      DATA t31 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t32) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
      t31 = zcl_lnt_st_combi_module=>tok( i_t = t32 ).
      IF t31 IS BOUND.
        CREATE OBJECT t30.
        t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t33 TYPE REF TO object.
        t33 = t31.
        t30->oval = t33.
      ENDIF.
      t29 = t30.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t35.
      t34 = t35.
      DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t34 ).
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      DATA t38 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t39) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
      t38 = zcl_lnt_st_combi_module=>tok( i_t = t39 ).
      IF t38 IS BOUND.
        CREATE OBJECT t37.
        t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t40 TYPE REF TO object.
        t40 = t38.
        t37->oval = t40.
      ENDIF.
      APPEND t37 TO t36->items.
      DATA t41 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t42) = CAST zlnt_runtime_dyna_a429568d5be8( t25 ).
      DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t29 ).
      DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t34 ).
      t41 = zcl_lnt_st_combi_module=>seq( i_first = t42 i_second = t43 i_rest = t44 ).
      t24 = t41.
      IF t24 IS BOUND.
        CREATE OBJECT t23.
        t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t45 TYPE REF TO object.
        t45 = t24.
        t23->oval = t45.
      ENDIF.
      DATA t46 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t46.
      DATA(t47) = abap_true.
      IF t47 = abap_true.
        DATA t48 TYPE REF TO zcl_lnt_iver_options.
        CLEAR t48.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        DATA(t50) = abap_true.
        IF t50 = abap_true.
          DATA(t51) = |OpenABAP|.
          DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t52->has = abap_true.
          t52->value = t51.
          t49 = t52.
        ELSE.
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t53.
          t49 = t53.
        ENDIF.
        t48 = NEW zcl_lnt_iver_options( i_also = t49 ).
        t46 = t48.
      ELSE.
        DATA t54 TYPE REF TO zcl_lnt_iver_options.
        CLEAR t54.
        t46 = t54.
      ENDIF.
      t19 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t20 i_first = t23 i_opts = t46 ).
      result = t19.
      RETURN.
    ELSE.
      DATA t55 TYPE abap_bool.
      DATA(t56) = t3.
      DATA t57 TYPE int8.
      DATA(t58) = CONV i( zcl_lnt_sql_function_module=>variadic ).
      t57 = t58.
      t55 = xsdbool( t56 = t57 ).
      IF t55 = abap_true.
        DATA t59 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t60.
        DATA(t61) = CAST zcl_lnt_abap_release( t4 ).
        IF t61 IS BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t62 TYPE REF TO object.
          t62 = t61.
          t60->oval = t62.
        ENDIF.
        DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t63.
        DATA t64 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t64.
        DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t65.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        DATA(t67) = CAST zif_lnt_statement_runnable( t5 ).
        IF t67 IS BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t68 TYPE REF TO object.
          t68 = t67.
          t66->oval = t68.
        ENDIF.
        t65 = t66.
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
        DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t75.
        t74 = t75.
        DATA(t76) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        DATA(t78) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
        IF t78 IS BOUND.
          CREATE OBJECT t77.
          t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          t77->cval = t78.
        ENDIF.
        APPEND t77 TO t76->items.
        DATA(t79) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        DATA t81 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t81.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        DATA(t83) = CAST zif_lnt_statement_runnable( t1 ).
        IF t83 IS BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t84 TYPE REF TO object.
          t84 = t83.
          t82->oval = t84.
        ENDIF.
        t81 = zcl_lnt_st_combi_module=>star_prio( i_first = t82 ).
        IF t81 IS BOUND.
          CREATE OBJECT t80.
          t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t85 TYPE REF TO object.
          t85 = t81.
          t80->oval = t85.
        ENDIF.
        APPEND t80 TO t79->items.
        DATA(t86) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
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
        APPEND t87 TO t86->items.
        DATA t91 TYPE REF TO zif_lnt_statement_runnable.
        DATA(t92) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
        DATA(t93) = CAST zlnt_runtime_dyna_a429568d5be8( t69 ).
        DATA(t94) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
        t91 = zcl_lnt_st_combi_module=>seq( i_first = t92 i_second = t93 i_rest = t94 ).
        t64 = t91.
        IF t64 IS BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t95 TYPE REF TO object.
          t95 = t64.
          t63->oval = t95.
        ENDIF.
        DATA t96 TYPE REF TO zcl_lnt_iver_options.
        CLEAR t96.
        DATA(t97) = abap_true.
        IF t97 = abap_true.
          DATA t98 TYPE REF TO zcl_lnt_iver_options.
          CLEAR t98.
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t99.
          DATA(t100) = abap_true.
          IF t100 = abap_true.
            DATA(t101) = |OpenABAP|.
            DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t102->has = abap_true.
            t102->value = t101.
            t99 = t102.
          ELSE.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t103.
            t99 = t103.
          ENDIF.
          t98 = NEW zcl_lnt_iver_options( i_also = t99 ).
          t96 = t98.
        ELSE.
          DATA t104 TYPE REF TO zcl_lnt_iver_options.
          CLEAR t104.
          t96 = t104.
        ENDIF.
        t59 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t60 i_first = t63 i_opts = t96 ).
        result = t59.
        RETURN.
      ELSE.
        DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t106.
        t105 = t106.
        DATA t107 TYPE int8.
        DATA(t108) = CONV int8( 1 ).
        t107 = t108.
        DO.
          DATA t109 TYPE abap_bool.
          DATA(t110) = t107.
          DATA(t111) = t3.
          t109 = xsdbool( t110 < t111 ).
          IF t109 = abap_false.
            EXIT.
          ENDIF.
          DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t105 ).
          DATA(t113) = CAST zif_lnt_statement_runnable( t1 ).
          APPEND t113 TO t112->items.
          DATA t114 TYPE int8.
          DATA(t115) = t107.
          DATA(t116) = CONV int8( 1 ).
          t114 = t115 + t116.
          IF t114 < range_int8_bound_min OR t114 > range_int8_bound_max.
            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
          ENDIF.
          t107 = t114.
        ENDDO.
        DATA t117 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t117.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        DATA(t119) = CAST zcl_lnt_abap_release( t4 ).
        IF t119 IS BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t120 TYPE REF TO object.
          t120 = t119.
          t118->oval = t120.
        ENDIF.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        DATA t122 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t122.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        DATA(t125) = CAST zif_lnt_statement_runnable( t5 ).
        IF t125 IS BOUND.
          CREATE OBJECT t124.
          t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t126 TYPE REF TO object.
          t126 = t125.
          t124->oval = t126.
        ENDIF.
        t123 = t124.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        DATA t129 TYPE REF TO zif_lnt_statement_runnable.
        DATA(t130) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
        t129 = zcl_lnt_st_combi_module=>tok( i_t = t130 ).
        IF t129 IS BOUND.
          CREATE OBJECT t128.
          t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t131 TYPE REF TO object.
          t131 = t129.
          t128->oval = t131.
        ENDIF.
        t127 = t128.
        DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t133.
        t132 = t133.
        DATA(t134) = CAST zlnt_runtime_arra_c22708faf2e3( t132 ).
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        DATA(t136) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
        IF t136 IS BOUND.
          CREATE OBJECT t135.
          t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          t135->cval = t136.
        ENDIF.
        APPEND t135 TO t134->items.
        DATA(t137) = CAST zlnt_runtime_arra_c22708faf2e3( t105 ).
        DATA t138 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t138.
        DATA t139 TYPE REF TO object.
        CLEAR t139.
        LOOP AT t137->items INTO t139.
          t138 ?= t139.
          DATA(t140) = CAST zlnt_runtime_arra_c22708faf2e3( t132 ).
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          DATA(t142) = CAST zif_lnt_statement_runnable( t138 ).
          IF t142 IS BOUND.
            CREATE OBJECT t141.
            t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            DATA t143 TYPE REF TO object.
            t143 = t142.
            t141->oval = t143.
          ENDIF.
          APPEND t141 TO t140->items.
        ENDLOOP.
        DATA(t144) = CAST zlnt_runtime_arra_c22708faf2e3( t132 ).
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        DATA t146 TYPE REF TO zif_lnt_statement_runnable.
        DATA(t147) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
        t146 = zcl_lnt_st_combi_module=>tok( i_t = t147 ).
        IF t146 IS BOUND.
          CREATE OBJECT t145.
          t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t148 TYPE REF TO object.
          t148 = t146.
          t145->oval = t148.
        ENDIF.
        APPEND t145 TO t144->items.
        DATA t149 TYPE REF TO zif_lnt_statement_runnable.
        DATA(t150) = CAST zlnt_runtime_dyna_a429568d5be8( t123 ).
        DATA(t151) = CAST zlnt_runtime_dyna_a429568d5be8( t127 ).
        DATA(t152) = CAST zlnt_runtime_arra_c22708faf2e3( t132 ).
        t149 = zcl_lnt_st_combi_module=>seq( i_first = t150 i_second = t151 i_rest = t152 ).
        t122 = t149.
        IF t122 IS BOUND.
          CREATE OBJECT t121.
          t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t153 TYPE REF TO object.
          t153 = t122.
          t121->oval = t153.
        ENDIF.
        DATA t154 TYPE REF TO zcl_lnt_iver_options.
        CLEAR t154.
        DATA(t155) = abap_true.
        IF t155 = abap_true.
          DATA t156 TYPE REF TO zcl_lnt_iver_options.
          CLEAR t156.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          DATA(t158) = abap_true.
          IF t158 = abap_true.
            DATA(t159) = |OpenABAP|.
            DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t160->has = abap_true.
            t160->value = t159.
            t157 = t160.
          ELSE.
            DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t161.
            t157 = t161.
          ENDIF.
          t156 = NEW zcl_lnt_iver_options( i_also = t157 ).
          t154 = t156.
        ELSE.
          DATA t162 TYPE REF TO zcl_lnt_iver_options.
          CLEAR t162.
          t154 = t162.
        ENDIF.
        t117 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t118 i_first = t121 i_opts = t154 ).
        result = t117.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD fn_value_for.
    DATA(t1) = CAST zif_lnt_statement_runnable( i_abap_only ).
    DATA(t2) = CAST zcl_lnt_sql_named_param( i_p ).
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE string.
    DATA(t6) = CAST zcl_lnt_sql_named_param( t2 ).
    t5 = t6->value.
    DATA(t7) = |abap_only|.
    t4 = xsdbool( t5 = t7 ).
    IF t4 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      DATA(t9) = CAST zif_lnt_statement_runnable( t1 ).
      IF t9 IS BOUND.
        CREATE OBJECT t8.
        t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t10 TYPE REF TO object.
        t10 = t9.
        t8->oval = t10.
      ENDIF.
      t3 = t8.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      DATA(t12) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
      IF t12 IS BOUND.
        CREATE OBJECT t11.
        t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
        t11->cval = t12.
      ENDIF.
      t3 = t11.
    ENDIF.
    result = t3.

  ENDMETHOD.
  METHOD fn_named_fn.
    DATA(t1) = CAST zif_lnt_statement_runnable( i_abap_only ).
    DATA(t2) = i_name.
    DATA(t3) = CAST zcl_lnt_abap_release( i_v ).
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( i_params_4c59 ).
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t7.
    DATA t8 TYPE string.
    DATA t9 TYPE string.
    DATA(t10) = |^|.
    DATA(t11) = t2.
    DATA(t12) = strlen( t10 ).
    t9 = |{ t10 }{ t11 }|.
    DATA(t13) = |$|.
    DATA(t14) = strlen( t9 ).
    t8 = |{ t9 }{ t13 }|.
    DATA(t15) = |i|.
    CREATE OBJECT t7 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t8 flags = t15.
    t6 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t7 ).
    t5 = t6.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    DATA t21 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    LOOP AT t20->items INTO t22.
      t21 ?= t22.
      DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
      DATA t24 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      DATA t27 TYPE REF TO zif_lnt_statement_runnable.
      DATA t28 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t28.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      DATA(t31) = |^|.
      DATA t32 TYPE string.
      DATA(t33) = CAST zcl_lnt_sql_named_param( t21 ).
      t32 = t33->name.
      DATA(t34) = strlen( t31 ).
      t30 = |{ t31 }{ t32 }|.
      DATA(t35) = |$|.
      DATA(t36) = strlen( t30 ).
      t29 = |{ t30 }{ t35 }|.
      DATA(t37) = |i|.
      CREATE OBJECT t28 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t29 flags = t37.
      t27 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t28 ).
      IF t27 IS BOUND.
        CREATE OBJECT t26.
        t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t38 TYPE REF TO object.
        t38 = t27.
        t26->oval = t38.
      ENDIF.
      t25 = t26.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t41) = |=|.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t40->sval = t41.
      t39 = t40.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t43.
      t42 = t43.
      DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t42 ).
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      DATA t46 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t47) = CAST zif_lnt_statement_runnable( t1 ).
      t46 = t47.
      DATA t48 TYPE REF TO zcl_lnt_sql_named_param.
      DATA(t49) = CAST zcl_lnt_sql_named_param( t21 ).
      t48 = t49.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      DATA t51 TYPE abap_bool.
      DATA t52 TYPE string.
      DATA(t53) = CAST zcl_lnt_sql_named_param( t48 ).
      t52 = t53->value.
      DATA(t54) = |abap_only|.
      t51 = xsdbool( t52 = t54 ).
      IF t51 = abap_true.
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t55.
        DATA(t56) = CAST zif_lnt_statement_runnable( t46 ).
        IF t56 IS BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t57 TYPE REF TO object.
          t57 = t56.
          t55->oval = t57.
        ENDIF.
        t50 = t55.
      ELSE.
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t58.
        DATA(t59) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0 ).
        IF t59 IS BOUND.
          CREATE OBJECT t58.
          t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          t58->cval = t59.
        ENDIF.
        t50 = t58.
      ENDIF.
      t45 = t50.
      APPEND t45 TO t44->items.
      DATA t60 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t25 ).
      DATA(t62) = CAST zlnt_runtime_dyna_a429568d5be8( t39 ).
      DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t42 ).
      t60 = zcl_lnt_st_combi_module=>seq( i_first = t61 i_second = t62 i_rest = t63 ).
      t24 = t60.
      APPEND t24 TO t23->items.
    ENDLOOP.
    DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    t17 = t64.
    t16 = t17.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t65.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t66.
    DATA t67 TYPE abap_bool.
    DATA t68 TYPE i.
    DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    t68 = lines( t69->items ).
    DATA(t70) = 1.
    t67 = xsdbool( t68 = t70 ).
    IF t67 = abap_true.
      DATA t71 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t72) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
      DATA t73 TYPE REF TO object.
      CLEAR t73.
      READ TABLE t72->items INDEX 1 INTO t73.
      t71 ?= t73.
      t66 = t71.
    ELSE.
      DATA t74 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t74.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      DATA t77 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t78) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
      DATA t79 TYPE REF TO object.
      CLEAR t79.
      READ TABLE t78->items INDEX 1 INTO t79.
      t77 ?= t79.
      IF t77 IS BOUND.
        CREATE OBJECT t76.
        t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t80 TYPE REF TO object.
        t80 = t77.
        t76->oval = t80.
      ENDIF.
      t75 = t76.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      DATA t83 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
      DATA t85 TYPE REF TO object.
      CLEAR t85.
      READ TABLE t84->items INDEX 2 INTO t85.
      t83 ?= t85.
      IF t83 IS BOUND.
        CREATE OBJECT t82.
        t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t86 TYPE REF TO object.
        t86 = t83.
        t82->oval = t86.
      ENDIF.
      t81 = t82.
      DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t88.
      t87 = t88.
      DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t90) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
      DATA(t91) = 2.
      t89 = t90->slice1( p0 = t91 ).
      DATA t92 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t92.
      DATA t93 TYPE REF TO object.
      CLEAR t93.
      LOOP AT t89->items INTO t93.
        t92 ?= t93.
        DATA(t94) = CAST zlnt_runtime_arra_c22708faf2e3( t87 ).
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        DATA(t96) = CAST zif_lnt_statement_runnable( t92 ).
        IF t96 IS BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t97 TYPE REF TO object.
          t97 = t96.
          t95->oval = t97.
        ENDIF.
        APPEND t95 TO t94->items.
      ENDLOOP.
      DATA t98 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t99) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
      DATA(t100) = CAST zlnt_runtime_dyna_a429568d5be8( t81 ).
      DATA(t101) = CAST zlnt_runtime_arra_c22708faf2e3( t87 ).
      t98 = zcl_lnt_st_combi_module=>alt_prio( i_first = t99 i_second = t100 i_rest = t101 ).
      t74 = t98.
      t66 = t74.
    ENDIF.
    t65 = t66.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = CAST zif_lnt_statement_runnable( t65 ).
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t109 TYPE REF TO object.
      t109 = t108.
      t107->oval = t109.
    ENDIF.
    t106 = t107.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t117) = |,|.
    CREATE OBJECT t116.
    t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t116->sval = t117.
    t115 = t116.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA(t120) = CAST zif_lnt_statement_runnable( t65 ).
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t121 TYPE REF TO object.
      t121 = t120.
      t119->oval = t121.
    ENDIF.
    t118 = t119.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t123.
    t122 = t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t125) = CAST zlnt_runtime_dyna_a429568d5be8( t115 ).
    DATA(t126) = CAST zlnt_runtime_dyna_a429568d5be8( t118 ).
    DATA(t127) = CAST zlnt_runtime_arra_c22708faf2e3( t122 ).
    t124 = zcl_lnt_st_combi_module=>seq( i_first = t125 i_second = t126 i_rest = t127 ).
    t114 = t124.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t128 TYPE REF TO object.
      t128 = t114.
      t113->oval = t128.
    ENDIF.
    t112 = zcl_lnt_st_combi_module=>star_prio( i_first = t113 ).
    IF t112 IS BOUND.
      CREATE OBJECT t111.
      t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t129 TYPE REF TO object.
      t129 = t112.
      t111->oval = t129.
    ENDIF.
    t110 = t111.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t131.
    t130 = t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t133) = CAST zlnt_runtime_dyna_a429568d5be8( t106 ).
    DATA(t134) = CAST zlnt_runtime_dyna_a429568d5be8( t110 ).
    DATA(t135) = CAST zlnt_runtime_arra_c22708faf2e3( t130 ).
    t132 = zcl_lnt_st_combi_module=>seq( i_first = t133 i_second = t134 i_rest = t135 ).
    t105 = t132.
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t136 TYPE REF TO object.
      t136 = t105.
      t104->oval = t136.
    ENDIF.
    t103 = zcl_lnt_st_combi_module=>opt_prio( i_first = t104 ).
    t102 = t103.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA(t139) = CAST zcl_lnt_abap_release( t3 ).
    IF t139 IS BOUND.
      CREATE OBJECT t138.
      t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t140 TYPE REF TO object.
      t140 = t139.
      t138->oval = t140.
    ENDIF.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA(t145) = CAST zif_lnt_statement_runnable( t5 ).
    IF t145 IS BOUND.
      CREATE OBJECT t144.
      t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t146 TYPE REF TO object.
      t146 = t145.
      t144->oval = t146.
    ENDIF.
    t143 = t144.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t150) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t149 = zcl_lnt_st_combi_module=>tok( i_t = t150 ).
    IF t149 IS BOUND.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t151 TYPE REF TO object.
      t151 = t149.
      t148->oval = t151.
    ENDIF.
    t147 = t148.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    t152 = t153.
    DATA(t154) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA(t156) = CAST zif_lnt_statement_runnable( t102 ).
    IF t156 IS BOUND.
      CREATE OBJECT t155.
      t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t157 TYPE REF TO object.
      t157 = t156.
      t155->oval = t157.
    ENDIF.
    APPEND t155 TO t154->items.
    DATA(t158) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t161) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t160 = zcl_lnt_st_combi_module=>tok( i_t = t161 ).
    IF t160 IS BOUND.
      CREATE OBJECT t159.
      t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t162 TYPE REF TO object.
      t162 = t160.
      t159->oval = t162.
    ENDIF.
    APPEND t159 TO t158->items.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t164) = CAST zlnt_runtime_dyna_a429568d5be8( t143 ).
    DATA(t165) = CAST zlnt_runtime_dyna_a429568d5be8( t147 ).
    DATA(t166) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    t163 = zcl_lnt_st_combi_module=>seq( i_first = t164 i_second = t165 i_rest = t166 ).
    t142 = t163.
    IF t142 IS BOUND.
      CREATE OBJECT t141.
      t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t167 TYPE REF TO object.
      t167 = t142.
      t141->oval = t167.
    ENDIF.
    DATA t168 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t168.
    DATA(t169) = abap_true.
    IF t169 = abap_true.
      DATA t170 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t170.
      DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t171.
      DATA(t172) = abap_true.
      IF t172 = abap_true.
        DATA(t173) = |OpenABAP|.
        DATA(t174) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t174->has = abap_true.
        t174->value = t173.
        t171 = t174.
      ELSE.
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t175.
        t171 = t175.
      ENDIF.
      t170 = NEW zcl_lnt_iver_options( i_also = t171 ).
      t168 = t170.
    ELSE.
      DATA t176 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t176.
      t168 = t176.
    ENDIF.
    t137 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t138 i_first = t141 i_opts = t168 ).
    result = t137.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d270_547c551ca3da.
  ENDMETHOD.
ENDCLASS.
