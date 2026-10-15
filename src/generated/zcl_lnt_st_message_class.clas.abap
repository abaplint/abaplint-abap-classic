* TS: src/abap/2_statements/expressions/message_class.ts:5:1 MessageClass
CLASS zcl_lnt_st_message_class DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_message_class IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t5.
    DATA(t6) = `^>?[\w\/]+#?@?\/?!?&?>?\$?\??<?§?~?$`.
    DATA(t7) = `^>?[A-Za-z0-9_\/]+#?@?\/?!?&?>?\$?\??<?§?~?$`.
    DATA(t8) = ||.
    CREATE OBJECT t5 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t7 flags = t8.
    t5->source = t6.
    t4 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t5 ).
    CLEAR t3.
    IF t4 IS BOUND.
      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t9.
      DATA t10 TYPE REF TO object.
      CLEAR t10.
      CLEAR t9.
      t10 = t4.
      TRY.
          t3 ?= t10.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t9 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t9 IS BOUND.
          t3 = t9->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    t2 = t3.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d31_5d276172db4584.
    t15 = zcl_lnt_st_combi_module=>tok( i_t = t16 ).
    CLEAR t14.
    IF t15 IS BOUND.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t17.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      CLEAR t17.
      t18 = t15.
      TRY.
          t14 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t17 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17 IS BOUND.
          t14 = t17->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t13 = zcl_lnt_st_combi_module=>star_prio( i_first = t14 ).
    CLEAR t12.
    IF t13 IS BOUND.
      DATA t19 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t19.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      CLEAR t19.
      t20 = t13.
      TRY.
          t12 ?= t20.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS NOT BOUND.
        TRY.
            t19 ?= t13.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t19 IS BOUND.
          t12 = t19->source( ).
        ENDIF.
        IF t12 IS NOT BOUND.
          CREATE OBJECT t12.
          t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t12->oval = t13.
        ENDIF.
      ENDIF.
    ENDIF.
    t11 = t12.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    CREATE OBJECT t22.
    t21 = t22.
    DATA(t23) = t21.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d32_e6c12f2c0d2c2c.
    t27 = zcl_lnt_st_combi_module=>tok( i_t = t28 ).
    CLEAR t26.
    IF t27 IS BOUND.
      DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t29.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      CLEAR t29.
      t30 = t27.
      TRY.
          t26 ?= t30.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t29 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t29 IS BOUND.
          t26 = t29->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t27.
        ENDIF.
      ENDIF.
    ENDIF.
    t25 = zcl_lnt_st_combi_module=>star_prio( i_first = t26 ).
    CLEAR t24.
    IF t25 IS BOUND.
      DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t31.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      CLEAR t31.
      t32 = t25.
      TRY.
          t24 ?= t32.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t31 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t31 IS BOUND.
          t24 = t31->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    t23->load( ).
    APPEND t24 TO t23->items.
    t23->save( ).
    DATA(t33) = t21.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t40 = zcl_lnt_st_combi_module=>tok( i_t = t41 ).
    CLEAR t39.
    IF t40 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t42.
      DATA t43 TYPE REF TO object.
      CLEAR t43.
      CLEAR t42.
      t43 = t40.
      TRY.
          t39 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t39 IS NOT BOUND.
        TRY.
            t42 ?= t40.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t39 = t42->source( ).
        ENDIF.
        IF t39 IS NOT BOUND.
          CREATE OBJECT t39.
          t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t39->oval = t40.
        ENDIF.
      ENDIF.
    ENDIF.
    t38 = t39.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t49.
    DATA(t50) = `^\w+$`.
    DATA(t51) = |^[A-Za-z0-9_]+$|.
    DATA(t52) = ||.
    CREATE OBJECT t49 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t51 flags = t52.
    t49->source = t50.
    t48 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t49 ).
    CLEAR t47.
    IF t48 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t53.
      DATA t54 TYPE REF TO object.
      CLEAR t54.
      CLEAR t53.
      t54 = t48.
      TRY.
          t47 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t53 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t47 = t53->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    t46 = zcl_lnt_st_combi_module=>opt_prio( i_first = t47 ).
    CLEAR t45.
    IF t46 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t55.
      DATA t56 TYPE REF TO object.
      CLEAR t56.
      CLEAR t55.
      t56 = t46.
      TRY.
          t45 ?= t56.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t55 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t45 = t55->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    t44 = t45.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t58.
    CREATE OBJECT t58.
    t57 = t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA(t60) = t38.
    DATA(t61) = t44.
    DATA(t62) = t57.
    t59 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t61 i_rest = t62 ).
    t37 = t59.
    CLEAR t36.
    IF t37 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t63.
      DATA t64 TYPE REF TO object.
      CLEAR t64.
      CLEAR t63.
      t64 = t37.
      TRY.
          t36 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t36 IS NOT BOUND.
        TRY.
            t63 ?= t37.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t36 = t63->source( ).
        ENDIF.
        IF t36 IS NOT BOUND.
          CREATE OBJECT t36.
          t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t36->oval = t37.
        ENDIF.
      ENDIF.
    ENDIF.
    t35 = zcl_lnt_st_combi_module=>star_prio( i_first = t36 ).
    CLEAR t34.
    IF t35 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t65.
      DATA t66 TYPE REF TO object.
      CLEAR t66.
      CLEAR t65.
      t66 = t35.
      TRY.
          t34 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t34 IS NOT BOUND.
        TRY.
            t65 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t34 = t65->source( ).
        ENDIF.
        IF t34 IS NOT BOUND.
          CREATE OBJECT t34.
          t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t34->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    t33->load( ).
    APPEND t34 TO t33->items.
    t33->save( ).
    DATA(t67) = t21.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d23_6b4b88957b2c9e.
    t71 = zcl_lnt_st_combi_module=>tok( i_t = t72 ).
    CLEAR t70.
    IF t71 IS BOUND.
      DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t73.
      DATA t74 TYPE REF TO object.
      CLEAR t74.
      CLEAR t73.
      t74 = t71.
      TRY.
          t70 ?= t74.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t70 IS NOT BOUND.
        TRY.
            t73 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t73 IS BOUND.
          t70 = t73->source( ).
        ENDIF.
        IF t70 IS NOT BOUND.
          CREATE OBJECT t70.
          t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t70->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    t69 = zcl_lnt_st_combi_module=>opt_prio( i_first = t70 ).
    CLEAR t68.
    IF t69 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t75.
      DATA t76 TYPE REF TO object.
      CLEAR t76.
      CLEAR t75.
      t76 = t69.
      TRY.
          t68 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t75 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t68 = t75->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    t67->load( ).
    APPEND t68 TO t67->items.
    t67->save( ).
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA(t78) = t2.
    DATA(t79) = t11.
    DATA(t80) = t21.
    t77 = zcl_lnt_st_combi_module=>seq( i_first = t78 i_second = t79 i_rest = t80 ).
    t1 = t77.
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d215_80780944ec3f.
  ENDMETHOD.
ENDCLASS.
