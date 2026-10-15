* TS: src/abap/2_statements/expressions/field_sub.ts:7:1 FieldSub
CLASS zcl_lnt_field_sub DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_field_sub IMPLEMENTATION.
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
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t6.
    DATA(t7) = `^\*?!?&?(\/\w+\/)?[a-zA-Z_%$\?][\w%$\$\*]*$`.
    DATA(t8) = `^\*?!?&?(\/[A-Za-z0-9_]+\/)?[a-zA-Z_%$\?][A-Za-z0-9_%$\$\*]*`.
    t8 = t8 && |$|.
    DATA(t9) = ||.
    CREATE OBJECT t6 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t8 flags = t9.
    t6->source = t7.
    t5 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t6 ).
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t10 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t10.
      DATA t11 TYPE REF TO object.
      CLEAR t11.
      CLEAR t10.
      t11 = t5.
      TRY.
          t4 ?= t11.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t10 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t10 IS BOUND.
          t4 = t10->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t19 = zcl_lnt_st_combi_module=>tok( i_t = t20 ).
    CLEAR t18.
    IF t19 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t21.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      CLEAR t21.
      t22 = t19.
      TRY.
          t18 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t21 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t18 = t21->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    t17 = t18.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t26.
    DATA(t27) = `^[\w%$\$\*]+$`.
    DATA(t28) = `^[A-Za-z0-9_%$\$\*]+$`.
    DATA(t29) = ||.
    CREATE OBJECT t26 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t28 flags = t29.
    t26->source = t27.
    t25 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t26 ).
    CLEAR t24.
    IF t25 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t30.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      CLEAR t30.
      t31 = t25.
      TRY.
          t24 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t30 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t24 = t30->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    t23 = t24.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    CREATE OBJECT t33.
    t32 = t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA(t35) = t17.
    DATA(t36) = t23.
    DATA(t37) = t32.
    t34 = zcl_lnt_st_combi_module=>seq( i_first = t35 i_second = t36 i_rest = t37 ).
    t16 = t34.
    CLEAR t15.
    IF t16 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      CLEAR t38.
      t39 = t16.
      TRY.
          t15 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t38 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t15 = t38->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    t14 = zcl_lnt_st_combi_module=>star_prio( i_first = t15 ).
    CLEAR t13.
    IF t14 IS BOUND.
      DATA t40 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t40.
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      CLEAR t40.
      t41 = t14.
      TRY.
          t13 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t40 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t40 IS BOUND.
          t13 = t40->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t14.
        ENDIF.
      ENDIF.
    ENDIF.
    t12 = t13.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t43.
    CREATE OBJECT t43.
    t42 = t43.
    DATA(t44) = t42.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
    CLEAR t47.
    IF t48 IS BOUND.
      CREATE OBJECT t47.
      t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t47->cval = t48.
    ENDIF.
    t46 = zcl_lnt_st_combi_module=>opt( i_first = t47 ).
    CLEAR t45.
    IF t46 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t49.
      DATA t50 TYPE REF TO object.
      CLEAR t50.
      CLEAR t49.
      t50 = t46.
      TRY.
          t45 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t49 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t45 = t49->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    t44->load( ).
    APPEND t45 TO t44->items.
    t44->save( ).
    DATA(t51) = t42.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d102_cb65ad2c1bba.
    CLEAR t54.
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t54->cval = t55.
    ENDIF.
    t53 = zcl_lnt_st_combi_module=>opt( i_first = t54 ).
    CLEAR t52.
    IF t53 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t56.
      DATA t57 TYPE REF TO object.
      CLEAR t57.
      CLEAR t56.
      t57 = t53.
      TRY.
          t52 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t56 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t52 = t56->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    t51->load( ).
    APPEND t52 TO t51->items.
    t51->save( ).
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA(t59) = t3.
    DATA(t60) = t12.
    DATA(t61) = t42.
    t58 = zcl_lnt_st_combi_module=>seq( i_first = t59 i_second = t60 i_rest = t61 ).
    t2 = t58.
    t1 = t2.
    DATA(t62) = t1.
    result = t62.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
  ENDMETHOD.
ENDCLASS.
