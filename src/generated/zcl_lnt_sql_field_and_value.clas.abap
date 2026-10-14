* TS: src/abap/2_statements/expressions/sql_field_and_value.ts:8:1 SQLFieldAndValue
CLASS zcl_lnt_sql_field_and_value DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_field_and_value IMPLEMENTATION.
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
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d56_5d4839b794b2ac ).
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
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d48_c59205d155180b ).
    t10 = zcl_lnt_st_combi_module=>tok( i_t = t11 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t12 TYPE REF TO object.
      t12 = t10.
      t9->oval = t12.
    ENDIF.
    t8 = t9.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    t13 = t14.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t17) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    t15 = zcl_lnt_st_combi_module=>alt_prio( i_first = t16 i_second = t17 i_rest = t18 ).
    t2 = t15.
    t1 = t2.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA(t26) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t25->cval = t26.
    ENDIF.
    t24 = t25.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA(t29) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t29 IS BOUND.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t28->cval = t29.
    ENDIF.
    t27 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    t30 = t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t33) = CAST zlnt_runtime_dyna_a429568d5be8( t24 ).
    DATA(t34) = CAST zlnt_runtime_dyna_a429568d5be8( t27 ).
    DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
    t32 = zcl_lnt_st_combi_module=>alt_prio( i_first = t33 i_second = t34 i_rest = t35 ).
    t23 = t32.
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t36 TYPE REF TO object.
      t36 = t23.
      t22->oval = t36.
    ENDIF.
    t21 = t22.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = CAST zif_lnt_statement_runnable( t1 ).
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t40 TYPE REF TO object.
      t40 = t39.
      t38->oval = t40.
    ENDIF.
    t37 = t38.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t42.
    t41 = t42.
    DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t41 ).
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA(t45) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t44->cval = t45.
    ENDIF.
    APPEND t44 TO t43->items.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t47) = CAST zlnt_runtime_dyna_a429568d5be8( t21 ).
    DATA(t48) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t49) = CAST zlnt_runtime_arra_c22708faf2e3( t41 ).
    t46 = zcl_lnt_st_combi_module=>seq( i_first = t47 i_second = t48 i_rest = t49 ).
    t20 = t46.
    t19 = t20.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA(t54) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t54 IS BOUND.
      CREATE OBJECT t53.
      t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t53->cval = t54.
    ENDIF.
    t52 = t53.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t57) = |=|.
    CREATE OBJECT t56.
    t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t56->sval = t57.
    t55 = t56.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t59.
    t58 = t59.
    DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t58 ).
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = CAST zif_lnt_statement_runnable( t19 ).
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t66 TYPE REF TO object.
      t66 = t65.
      t64->oval = t66.
    ENDIF.
    t63 = t64.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA(t69) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t68->cval = t69.
    ENDIF.
    t67 = t68.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t71.
    t70 = t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t73) = CAST zlnt_runtime_dyna_a429568d5be8( t63 ).
    DATA(t74) = CAST zlnt_runtime_dyna_a429568d5be8( t67 ).
    DATA(t75) = CAST zlnt_runtime_arra_c22708faf2e3( t70 ).
    t72 = zcl_lnt_st_combi_module=>alt_prio( i_first = t73 i_second = t74 i_rest = t75 ).
    t62 = t72.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t76 TYPE REF TO object.
      t76 = t62.
      t61->oval = t76.
    ENDIF.
    APPEND t61 TO t60->items.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t78) = CAST zlnt_runtime_dyna_a429568d5be8( t52 ).
    DATA(t79) = CAST zlnt_runtime_dyna_a429568d5be8( t55 ).
    DATA(t80) = CAST zlnt_runtime_arra_c22708faf2e3( t58 ).
    t77 = zcl_lnt_st_combi_module=>seq( i_first = t78 i_second = t79 i_rest = t80 ).
    t51 = t77.
    t50 = t51.
    DATA(t81) = CAST zif_lnt_statement_runnable( t50 ).
    result = t81.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d292_48e50b6486bc.
  ENDMETHOD.
ENDCLASS.
