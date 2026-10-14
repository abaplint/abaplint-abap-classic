* TS: src/abap/2_statements/statements/set_property.ts:7:1 SetProperty
CLASS zcl_lnt_set_property DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_set_property IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |SET PROPERTY OF|.
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
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t18->cval = t19.
    ENDIF.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t21.
    t20 = t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t23) = CAST zlnt_runtime_dyna_a429568d5be8( t14 ).
    DATA(t24) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t20 ).
    t22 = zcl_lnt_st_combi_module=>alt( i_first = t23 i_second = t24 i_rest = t25 ).
    t13 = t22.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t26 TYPE REF TO object.
      t26 = t13.
      t12->oval = t26.
    ENDIF.
    APPEND t12 TO t11->items.
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t29) = |=|.
    CREATE OBJECT t28.
    t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t28->sval = t29.
    APPEND t28 TO t27->items.
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA(t32) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t31->cval = t32.
    ENDIF.
    APPEND t31 TO t30->items.
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t37) = |NO FLUSH|.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = t37.
    t35 = zcl_lnt_st_combi_module=>opt_prio( i_first = t36 ).
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t38 TYPE REF TO object.
      t38 = t35.
      t34->oval = t38.
    ENDIF.
    APPEND t34 TO t33->items.
    DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d233_66b4b8df8ddb ).
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    t41 = zcl_lnt_st_combi_module=>opt( i_first = t42 ).
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t44 TYPE REF TO object.
      t44 = t41.
      t40->oval = t44.
    ENDIF.
    APPEND t40 TO t39->items.
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t49) = |QUEUEONLY|.
    CREATE OBJECT t48.
    t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t48->sval = t49.
    t47 = zcl_lnt_st_combi_module=>opt( i_first = t48 ).
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t50 TYPE REF TO object.
      t50 = t47.
      t46->oval = t50.
    ENDIF.
    APPEND t46 TO t45->items.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t52) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t53) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t54) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t51 = zcl_lnt_st_combi_module=>seq( i_first = t52 i_second = t53 i_rest = t54 ).
    t2 = t51.
    t1 = t2.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA(t56) = |Cloud|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = CAST zif_lnt_statement_runnable( t1 ).
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t59 TYPE REF TO object.
      t59 = t58.
      t57->oval = t59.
    ENDIF.
    t55 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t56 i_first = t57 ).
    result = t55.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d612_458d252c73b7.
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
