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
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t5 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t5 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^>?[A-Za-z0-9_\/]+#?@?\/?!?&?>?\$?\??<?§?~?$` flags = ||.
    t5->source = `^>?[\w\/]+#?@?\/?!?&?>?\$?\??<?§?~?$`.
    t4 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t5 ).
    IF t4 IS BOUND.
      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t10 TYPE REF TO object.
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
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d31_5d276172db4584.
    t15 = zcl_lnt_st_combi_module=>tok( i_t = t16 ).
    IF t15 IS BOUND.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t18 TYPE REF TO object.
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
    IF t13 IS BOUND.
      DATA t19 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t20 TYPE REF TO object.
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
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t21.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d32_e6c12f2c0d2c2c.
    t27 = zcl_lnt_st_combi_module=>tok( i_t = t28 ).
    IF t27 IS BOUND.
      DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t30 TYPE REF TO object.
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
    IF t25 IS BOUND.
      DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t32 TYPE REF TO object.
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
    t21->load( ).
    APPEND t24 TO t21->items.
    t21->save( ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t40 = zcl_lnt_st_combi_module=>tok( i_t = t41 ).
    IF t40 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t43 TYPE REF TO object.
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
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA t49 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t49 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[A-Za-z0-9_]+$| flags = ||.
    t49->source = `^\w+$`.
    t48 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t49 ).
    IF t48 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t54 TYPE REF TO object.
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
    IF t46 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t56 TYPE REF TO object.
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
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t58.
    t37 = zcl_lnt_st_combi_module=>seq( i_first = t39 i_second = t45 i_rest = t58 ).
    IF t37 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t64 TYPE REF TO object.
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
    IF t35 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t66 TYPE REF TO object.
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
    t21->load( ).
    APPEND t34 TO t21->items.
    t21->save( ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d23_6b4b88957b2c9e.
    t71 = zcl_lnt_st_combi_module=>tok( i_t = t72 ).
    IF t71 IS BOUND.
      DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t74 TYPE REF TO object.
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
    IF t69 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t76 TYPE REF TO object.
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
    t21->load( ).
    APPEND t68 TO t21->items.
    t21->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t3 i_second = t12 i_rest = t21 ).

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
