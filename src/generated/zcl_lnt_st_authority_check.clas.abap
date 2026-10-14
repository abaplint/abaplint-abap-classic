* TS: src/abap/2_statements/statements/authority_check.ts:7:1 AuthorityCheck
CLASS zcl_lnt_st_authority_check DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_authority_check IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |FIELD|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |ID|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t23 = t24.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA(t30) = CAST zif_lnt_statement_runnable( t1 ).
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t31 TYPE REF TO object.
      t31 = t30.
      t29->oval = t31.
    ENDIF.
    t28 = t29.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = |DUMMY|.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = t34.
    t32 = t33.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    t35 = t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t38) = CAST zlnt_runtime_dyna_a429568d5be8( t28 ).
    DATA(t39) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
    DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    t37 = zcl_lnt_st_combi_module=>alt( i_first = t38 i_second = t39 i_rest = t40 ).
    t27 = t37.
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t41 TYPE REF TO object.
      t41 = t27.
      t26->oval = t41.
    ENDIF.
    APPEND t26 TO t25->items.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t44) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    t42 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t44 i_rest = t45 ).
    t16 = t42.
    t15 = t16.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = |AUTHORITY-CHECK OBJECT|.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = t50.
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t63) = |FOR USER|.
    CREATE OBJECT t62.
    t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t62->sval = t63.
    t61 = t62.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    t64 = t65.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t68.
    t67 = t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t70) = CAST zlnt_runtime_dyna_a429568d5be8( t61 ).
    DATA(t71) = CAST zlnt_runtime_dyna_a429568d5be8( t64 ).
    DATA(t72) = CAST zlnt_runtime_arra_c22708faf2e3( t67 ).
    t69 = zcl_lnt_st_combi_module=>seq( i_first = t70 i_second = t71 i_rest = t72 ).
    t60 = t69.
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t73 TYPE REF TO object.
      t73 = t60.
      t59->oval = t73.
    ENDIF.
    t58 = zcl_lnt_st_combi_module=>opt( i_first = t59 ).
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t74 TYPE REF TO object.
      t74 = t58.
      t57->oval = t74.
    ENDIF.
    APPEND t57 TO t56->items.
    DATA(t75) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = CAST zif_lnt_statement_runnable( t15 ).
    IF t79 IS BOUND.
      CREATE OBJECT t78.
      t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t80 TYPE REF TO object.
      t80 = t79.
      t78->oval = t80.
    ENDIF.
    t77 = zcl_lnt_st_combi_module=>plus( i_first = t78 ).
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t81 TYPE REF TO object.
      t81 = t77.
      t76->oval = t81.
    ENDIF.
    APPEND t76 TO t75->items.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t83) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t84) = CAST zlnt_runtime_dyna_a429568d5be8( t51 ).
    DATA(t85) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    t82 = zcl_lnt_st_combi_module=>seq( i_first = t83 i_second = t84 i_rest = t85 ).
    t47 = t82.
    t46 = t47.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA(t87) = |KeyUser|.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA(t89) = CAST zif_lnt_statement_runnable( t46 ).
    IF t89 IS BOUND.
      CREATE OBJECT t88.
      t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t90 TYPE REF TO object.
      t90 = t89.
      t88->oval = t90.
    ENDIF.
    t86 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t87 i_first = t88 ).
    result = t86.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d367_3c57bd3bdc56.
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
