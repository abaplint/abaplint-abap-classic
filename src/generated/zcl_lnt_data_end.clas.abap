* TS: src/abap/2_statements/statements/data_end.ts:6:1 DataEnd
CLASS zcl_lnt_data_end DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_data_end IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |COMMON PART|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    t8 = zcl_lnt_st_combi_module=>opt_prio( i_first = t9 ).
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t11 TYPE REF TO object.
      t11 = t8.
      t7->oval = t11.
    ENDIF.
    t6 = t7.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    t14 = zcl_lnt_st_combi_module=>seq( i_first = t15 i_second = t16 i_rest = t17 ).
    t2 = t14.
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = |END OF|.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = CAST zif_lnt_statement_runnable( t1 ).
    IF t28 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t29 TYPE REF TO object.
      t29 = t28.
      t27->oval = t29.
    ENDIF.
    t26 = t27.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA(t32) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97 ).
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t31->cval = t32.
    ENDIF.
    t30 = t31.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t34.
    t33 = t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t36) = CAST zlnt_runtime_dyna_a429568d5be8( t26 ).
    DATA(t37) = CAST zlnt_runtime_dyna_a429568d5be8( t30 ).
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t33 ).
    t35 = zcl_lnt_st_combi_module=>alt_prio( i_first = t36 i_second = t37 i_rest = t38 ).
    t25 = t35.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t39 TYPE REF TO object.
      t39 = t25.
      t24->oval = t39.
    ENDIF.
    t23 = t24.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    t40 = t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t44) = CAST zlnt_runtime_dyna_a429568d5be8( t23 ).
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    t42 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t44 i_rest = t45 ).
    t19 = t42.
    t18 = t19.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = |VALID BETWEEN|.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = t50.
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca ).
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t52->cval = t53.
    ENDIF.
    t51 = t52.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    t54 = t55.
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t58) = |AND|.
    CREATE OBJECT t57.
    t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t57->sval = t58.
    APPEND t57 TO t56->items.
    DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca ).
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t60->cval = t61.
    ENDIF.
    APPEND t60 TO t59->items.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t63) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t64) = CAST zlnt_runtime_dyna_a429568d5be8( t51 ).
    DATA(t65) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    t62 = zcl_lnt_st_combi_module=>seq( i_first = t63 i_second = t64 i_rest = t65 ).
    t47 = t62.
    t46 = t47.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t69) = |DATA|.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = t69.
    t67 = t68.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA(t72) = CAST zif_lnt_statement_runnable( t18 ).
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t73 TYPE REF TO object.
      t73 = t72.
      t71->oval = t73.
    ENDIF.
    t70 = t71.
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
    CLEAR t79.
    DATA(t80) = CAST zif_lnt_statement_runnable( t46 ).
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t81 TYPE REF TO object.
      t81 = t80.
      t79->oval = t81.
    ENDIF.
    t78 = zcl_lnt_st_combi_module=>opt_prio( i_first = t79 ).
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t82 TYPE REF TO object.
      t82 = t78.
      t77->oval = t82.
    ENDIF.
    APPEND t77 TO t76->items.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t84) = CAST zlnt_runtime_dyna_a429568d5be8( t67 ).
    DATA(t85) = CAST zlnt_runtime_dyna_a429568d5be8( t70 ).
    DATA(t86) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
    t83 = zcl_lnt_st_combi_module=>seq( i_first = t84 i_second = t85 i_rest = t86 ).
    t66 = t83.
    result = t66.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d422_bebdc7940729.
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
