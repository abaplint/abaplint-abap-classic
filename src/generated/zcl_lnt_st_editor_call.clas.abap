* TS: src/abap/2_statements/statements/editor_call.ts:7:1 EditorCall
CLASS zcl_lnt_st_editor_call DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_editor_call IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |TITLE|.
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
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |DISPLAY-MODE|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = CAST zif_lnt_statement_runnable( t1 ).
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t23 TYPE REF TO object.
      t23 = t22.
      t21->oval = t23.
    ENDIF.
    t20 = t21.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t25.
    t24 = t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t27) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t24 ).
    t26 = zcl_lnt_st_combi_module=>per( i_first = t27 i_second = t28 i_rest = t29 ).
    t16 = t26.
    t15 = t16.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = |EDITOR-CALL FOR|.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = t34.
    t32 = t33.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = |REPORT|.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = t39.
    t37 = zcl_lnt_st_combi_module=>opt_prio( i_first = t38 ).
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t40 TYPE REF TO object.
      t40 = t37.
      t36->oval = t40.
    ENDIF.
    t35 = t36.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t42.
    t41 = t42.
    DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t41 ).
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA(t45) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t44->cval = t45.
    ENDIF.
    APPEND t44 TO t43->items.
    DATA(t46) = CAST zlnt_runtime_arra_c22708faf2e3( t41 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = CAST zif_lnt_statement_runnable( t15 ).
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t51 TYPE REF TO object.
      t51 = t50.
      t49->oval = t51.
    ENDIF.
    t48 = zcl_lnt_st_combi_module=>opt_prio( i_first = t49 ).
    IF t48 IS BOUND.
      CREATE OBJECT t47.
      t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t52 TYPE REF TO object.
      t52 = t48.
      t47->oval = t52.
    ENDIF.
    APPEND t47 TO t46->items.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t54) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
    DATA(t55) = CAST zlnt_runtime_dyna_a429568d5be8( t35 ).
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t41 ).
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t55 i_rest = t56 ).
    t31 = t53.
    t30 = t31.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA(t58) = |Cloud|.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = CAST zif_lnt_statement_runnable( t30 ).
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t61 TYPE REF TO object.
      t61 = t60.
      t59->oval = t61.
    ENDIF.
    t57 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t58 i_first = t59 ).
    result = t57.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d438_3024048eff4c.
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
