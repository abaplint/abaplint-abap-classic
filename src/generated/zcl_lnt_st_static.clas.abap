* TS: src/abap/2_statements/statements/static.ts:7:1 Static
CLASS zcl_lnt_st_static DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_static IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924 ).
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t6->cval = t7.
    ENDIF.
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d146_4e7b86c7b080 ).
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
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA(t15) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d144_e73838d999aa ).
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t14->cval = t15.
    ENDIF.
    APPEND t14 TO t13->items.
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d145_fbc450f30e9d ).
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t17->cval = t18.
    ENDIF.
    APPEND t17 TO t16->items.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    t19 = zcl_lnt_st_combi_module=>per( i_first = t20 i_second = t21 i_rest = t22 ).
    t4 = t19.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t23 TYPE REF TO object.
      t23 = t4.
      t3->oval = t23.
    ENDIF.
    t2 = zcl_lnt_st_combi_module=>opt( i_first = t3 ).
    t1 = t2.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA(t30) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d139_249fe3e5ef12 ).
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    t28 = zcl_lnt_st_combi_module=>opt( i_first = t29 ).
    IF t28 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t31 TYPE REF TO object.
      t31 = t28.
      t27->oval = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = CAST zif_lnt_statement_runnable( t1 ).
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t35 TYPE REF TO object.
      t35 = t34.
      t33->oval = t35.
    ENDIF.
    t32 = t33.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t36 = t37.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t39) = CAST zlnt_runtime_dyna_a429568d5be8( t26 ).
    DATA(t40) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
    DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
    t38 = zcl_lnt_st_combi_module=>seq( i_first = t39 i_second = t40 i_rest = t41 ).
    t25 = t38.
    t24 = t25.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97 ).
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t45->cval = t46.
    ENDIF.
    t44 = t45.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d139_249fe3e5ef12 ).
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t50->cval = t51.
    ENDIF.
    t49 = zcl_lnt_st_combi_module=>opt_prio( i_first = t50 ).
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t52 TYPE REF TO object.
      t52 = t49.
      t48->oval = t52.
    ENDIF.
    t47 = t48.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t54.
    t53 = t54.
    DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = CAST zif_lnt_statement_runnable( t24 ).
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t61 TYPE REF TO object.
      t61 = t60.
      t59->oval = t61.
    ENDIF.
    t58 = t59.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396 ).
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    t62 = t63.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t65 = t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t68) = CAST zlnt_runtime_dyna_a429568d5be8( t58 ).
    DATA(t69) = CAST zlnt_runtime_dyna_a429568d5be8( t62 ).
    DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t65 ).
    t67 = zcl_lnt_st_combi_module=>alt( i_first = t68 i_second = t69 i_rest = t70 ).
    t57 = t67.
    IF t57 IS BOUND.
      CREATE OBJECT t56.
      t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t71 TYPE REF TO object.
      t71 = t57.
      t56->oval = t71.
    ENDIF.
    APPEND t56 TO t55->items.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t73) = CAST zlnt_runtime_dyna_a429568d5be8( t44 ).
    DATA(t74) = CAST zlnt_runtime_dyna_a429568d5be8( t47 ).
    DATA(t75) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
    t72 = zcl_lnt_st_combi_module=>seq( i_first = t73 i_second = t74 i_rest = t75 ).
    t43 = t72.
    t42 = t43.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t82) = |STATIC|.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = t82.
    t80 = t81.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = CAST zif_lnt_statement_runnable( t42 ).
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t86 TYPE REF TO object.
      t86 = t85.
      t84->oval = t86.
    ENDIF.
    t83 = t84.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t88.
    t87 = t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t90) = CAST zlnt_runtime_dyna_a429568d5be8( t80 ).
    DATA(t91) = CAST zlnt_runtime_dyna_a429568d5be8( t83 ).
    DATA(t92) = CAST zlnt_runtime_arra_c22708faf2e3( t87 ).
    t89 = zcl_lnt_st_combi_module=>seq( i_first = t90 i_second = t91 i_rest = t92 ).
    t79 = t89.
    IF t79 IS BOUND.
      CREATE OBJECT t78.
      t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t93 TYPE REF TO object.
      t93 = t79.
      t78->oval = t93.
    ENDIF.
    t77 = t78.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA(t97) = |KeyUser|.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t102) = |STATICS|.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = t102.
    t100 = t101.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = CAST zif_lnt_statement_runnable( t42 ).
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
    DATA(t110) = CAST zlnt_runtime_dyna_a429568d5be8( t100 ).
    DATA(t111) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t107 ).
    t109 = zcl_lnt_st_combi_module=>seq( i_first = t110 i_second = t111 i_rest = t112 ).
    t99 = t109.
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t113 TYPE REF TO object.
      t113 = t99.
      t98->oval = t113.
    ENDIF.
    t96 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t97 i_first = t98 ).
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t114 TYPE REF TO object.
      t114 = t96.
      t95->oval = t114.
    ENDIF.
    t94 = t95.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t116.
    t115 = t116.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t118) = CAST zlnt_runtime_dyna_a429568d5be8( t77 ).
    DATA(t119) = CAST zlnt_runtime_dyna_a429568d5be8( t94 ).
    DATA(t120) = CAST zlnt_runtime_arra_c22708faf2e3( t115 ).
    t117 = zcl_lnt_st_combi_module=>alt_prio( i_first = t118 i_second = t119 i_rest = t120 ).
    t76 = t117.
    result = t76.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d624_913a872f90ff.
  ENDMETHOD.
  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
