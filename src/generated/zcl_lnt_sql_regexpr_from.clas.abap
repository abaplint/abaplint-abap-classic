* TS: src/abap/2_statements/expressions/sql_regexpr_from.ts:8:1 SQLRegexprFrom
CLASS zcl_lnt_sql_regexpr_from DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_regexpr_from IMPLEMENTATION.
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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t7.
      DATA t8 TYPE REF TO object.
      CLEAR t8.
      CLEAR t7.
      t8 = t5.
      TRY.
          t4 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t7 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t4 = t7->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t10.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = t12.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t16 = zcl_lnt_st_combi_module=>tok( i_t = t17 ).
    CLEAR t15.
    IF t16 IS BOUND.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t18.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      CLEAR t18.
      t19 = t16.
      TRY.
          t15 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t18 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t15 = t18->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    DATA(t21) = t3.
    DATA(t22) = t9.
    DATA(t23) = t12.
    t20 = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t22 i_rest = t23 ).
    t2 = t20.
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
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
    t28 = zcl_lnt_st_combi_module=>tok( i_t = t29 ).
    CLEAR t27.
    IF t28 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t30.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      CLEAR t30.
      t31 = t28.
      TRY.
          t27 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t30 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t27 = t30->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    CLEAR t36.
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t36->cval = t37.
    ENDIF.
    t35 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = t1.
    CLEAR t39.
    IF t40 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t41.
      DATA t42 TYPE REF TO object.
      CLEAR t42.
      CLEAR t41.
      t42 = t40.
      TRY.
          t39 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t39 IS NOT BOUND.
        TRY.
            t41 ?= t40.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t39 = t41->source( ).
        ENDIF.
        IF t39 IS NOT BOUND.
          CREATE OBJECT t39.
          t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t39->oval = t40.
        ENDIF.
      ENDIF.
    ENDIF.
    t38 = t39.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t44.
    CREATE OBJECT t44.
    t43 = t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA(t46) = t35.
    DATA(t47) = t38.
    DATA(t48) = t43.
    t45 = zcl_lnt_st_combi_module=>alt_prio( i_first = t46 i_second = t47 i_rest = t48 ).
    t34 = t45.
    CLEAR t33.
    IF t34 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t49.
      DATA t50 TYPE REF TO object.
      CLEAR t50.
      CLEAR t49.
      t50 = t34.
      TRY.
          t33 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t49 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t33 = t49->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    t32 = t33.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    CREATE OBJECT t52.
    t51 = t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA(t54) = t26.
    DATA(t55) = t32.
    DATA(t56) = t51.
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t55 i_rest = t56 ).
    t25 = t53.
    t24 = t25.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = |FROM|.
    CLEAR t59.
    CREATE OBJECT t59.
    t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t59->sval = t60.
    t58 = t59.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = t24.
    CLEAR t65.
    IF t66 IS BOUND.
      DATA t67 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t67.
      DATA t68 TYPE REF TO object.
      CLEAR t68.
      CLEAR t67.
      t68 = t66.
      TRY.
          t65 ?= t68.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t65 IS NOT BOUND.
        TRY.
            t67 ?= t66.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t67 IS BOUND.
          t65 = t67->source( ).
        ENDIF.
        IF t65 IS NOT BOUND.
          CREATE OBJECT t65.
          t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t65->oval = t66.
        ENDIF.
      ENDIF.
    ENDIF.
    t64 = t65.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    CLEAR t70.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t70->cval = t71.
    ENDIF.
    t69 = t70.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t73.
    CREATE OBJECT t73.
    t72 = t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA(t75) = t64.
    DATA(t76) = t69.
    DATA(t77) = t72.
    t74 = zcl_lnt_st_combi_module=>alt_prio( i_first = t75 i_second = t76 i_rest = t77 ).
    t63 = t74.
    CLEAR t62.
    IF t63 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t78.
      DATA t79 TYPE REF TO object.
      CLEAR t79.
      CLEAR t78.
      t79 = t63.
      TRY.
          t62 ?= t79.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t78 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t62 = t78->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    t61 = t62.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t81.
    CREATE OBJECT t81.
    t80 = t81.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA(t83) = t58.
    DATA(t84) = t61.
    DATA(t85) = t80.
    t82 = zcl_lnt_st_combi_module=>seq( i_first = t83 i_second = t84 i_rest = t85 ).
    t57 = t82.
    result = t57.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d336_e416d8dcf33c.
  ENDMETHOD.
ENDCLASS.
