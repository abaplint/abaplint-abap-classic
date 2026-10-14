* TS: src/abap/2_statements/expressions/sql_hints.ts:5:1 SQLHints
CLASS zcl_lnt_sql_hints DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_hints IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |ORACLE|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |ADABAS|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |AS400|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    APPEND t12 TO t11->items.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = |DB2|.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    APPEND t15 TO t14->items.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |HDB|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    APPEND t18 TO t17->items.
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = |MSSQLNT|.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    APPEND t21 TO t20->items.
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = |SYBASE|.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = t25.
    APPEND t24 TO t23->items.
    DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = |DB6|.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = t28.
    APPEND t27 TO t26->items.
    DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = |INFORMIX|.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = t31.
    APPEND t30 TO t29->items.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t33) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t34) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t32 = zcl_lnt_st_combi_module=>alt_prio( i_first = t33 i_second = t34 i_rest = t35 ).
    t2 = t32.
    t1 = t2.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = |%_HINTS|.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = t40.
    t38 = t39.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = CAST zif_lnt_statement_runnable( t1 ).
    IF t48 IS BOUND.
      CREATE OBJECT t47.
      t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t49 TYPE REF TO object.
      t49 = t48.
      t47->oval = t49.
    ENDIF.
    t46 = t47.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA(t52) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t51->cval = t52.
    ENDIF.
    t50 = t51.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t54.
    t53 = t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t56) = CAST zlnt_runtime_dyna_a429568d5be8( t46 ).
    DATA(t57) = CAST zlnt_runtime_dyna_a429568d5be8( t50 ).
    DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
    t55 = zcl_lnt_st_combi_module=>seq( i_first = t56 i_second = t57 i_rest = t58 ).
    t45 = t55.
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t59 TYPE REF TO object.
      t59 = t45.
      t44->oval = t59.
    ENDIF.
    t43 = zcl_lnt_st_combi_module=>plus( i_first = t44 ).
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t60 TYPE REF TO object.
      t60 = t43.
      t42->oval = t60.
    ENDIF.
    t41 = t42.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    t61 = t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t64) = CAST zlnt_runtime_dyna_a429568d5be8( t38 ).
    DATA(t65) = CAST zlnt_runtime_dyna_a429568d5be8( t41 ).
    DATA(t66) = CAST zlnt_runtime_arra_c22708faf2e3( t61 ).
    t63 = zcl_lnt_st_combi_module=>seq( i_first = t64 i_second = t65 i_rest = t66 ).
    t37 = t63.
    t36 = t37.
    DATA(t67) = CAST zif_lnt_statement_runnable( t36 ).
    result = t67.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d313_63087fa9e019.
  ENDMETHOD.
ENDCLASS.
