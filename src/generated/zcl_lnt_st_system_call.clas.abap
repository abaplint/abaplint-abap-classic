* TS: src/abap/2_statements/statements/system_call.ts:8:1 SystemCall
CLASS zcl_lnt_st_system_call DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_system_call IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t3.
    DATA(t4) = |^.+$|.
    DATA(t5) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t4 flags = t5.
    t2 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    t1 = t2.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = |OBJMGR CLONE|.
    CREATE OBJECT t9.
    t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t9->sval = t10.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    t14 = t15.
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t18) = |TO|.
    CREATE OBJECT t17.
    t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t17->sval = t18.
    APPEND t17 TO t16->items.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    APPEND t20 TO t19->items.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t23) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t24) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    t22 = zcl_lnt_st_combi_module=>seq( i_first = t23 i_second = t24 i_rest = t25 ).
    t7 = t22.
    t6 = t7.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
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
    DATA(t34) = |DID|.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = t34.
    t32 = t33.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    t35 = t36.
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    APPEND t38 TO t37->items.
    DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = |PARAMETERS|.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = t42.
    APPEND t41 TO t40->items.
    DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t46->cval = t47.
    ENDIF.
    t45 = zcl_lnt_st_combi_module=>plus( i_first = t46 ).
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t48 TYPE REF TO object.
      t48 = t45.
      t44->oval = t48.
    ENDIF.
    APPEND t44 TO t43->items.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t50) = CAST zlnt_runtime_dyna_a429568d5be8( t28 ).
    DATA(t51) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
    DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    t49 = zcl_lnt_st_combi_module=>seq( i_first = t50 i_second = t51 i_rest = t52 ).
    t27 = t49.
    t26 = t27.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t57) = |SYSTEM-CALL|.
    CREATE OBJECT t56.
    t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t56->sval = t57.
    t55 = t56.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = CAST zif_lnt_statement_runnable( t6 ).
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t64 TYPE REF TO object.
      t64 = t63.
      t62->oval = t64.
    ENDIF.
    t61 = t62.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = CAST zif_lnt_statement_runnable( t26 ).
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t68 TYPE REF TO object.
      t68 = t67.
      t66->oval = t68.
    ENDIF.
    t65 = t66.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    t69 = t70.
    DATA(t71) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = CAST zif_lnt_statement_runnable( t1 ).
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t76 TYPE REF TO object.
      t76 = t75.
      t74->oval = t76.
    ENDIF.
    t73 = zcl_lnt_st_combi_module=>plus( i_first = t74 ).
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t77 TYPE REF TO object.
      t77 = t73.
      t72->oval = t77.
    ENDIF.
    APPEND t72 TO t71->items.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t79) = CAST zlnt_runtime_dyna_a429568d5be8( t61 ).
    DATA(t80) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
    DATA(t81) = CAST zlnt_runtime_arra_c22708faf2e3( t69 ).
    t78 = zcl_lnt_st_combi_module=>alt_prio( i_first = t79 i_second = t80 i_rest = t81 ).
    t60 = t78.
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t82 TYPE REF TO object.
      t82 = t60.
      t59->oval = t82.
    ENDIF.
    t58 = t59.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t84.
    t83 = t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t86) = CAST zlnt_runtime_dyna_a429568d5be8( t55 ).
    DATA(t87) = CAST zlnt_runtime_dyna_a429568d5be8( t58 ).
    DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t83 ).
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t86 i_second = t87 i_rest = t88 ).
    t54 = t85.
    t53 = t54.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA(t90) = |Cloud|.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = CAST zif_lnt_statement_runnable( t53 ).
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t93 TYPE REF TO object.
      t93 = t92.
      t91->oval = t93.
    ENDIF.
    t89 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t90 i_first = t91 ).
    result = t89.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d636_2af4328d1698.
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
