* TS: src/abap/2_statements/expressions/sql_locate_regexpr.ts:10:1 SQLLocateRegexpr
CLASS zcl_lnt_sql_locate_regexpr DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_locate_regexpr IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = |START|.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t9.
    t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t9->sval = |AFTER|.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t4 = zcl_lnt_st_combi_module=>alt_prio( i_first = t6 i_second = t9 i_rest = t12 ).
    IF t4 IS BOUND.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t18 TYPE REF TO object.
      t18 = t4.
      TRY.
          t3 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t17 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17 IS BOUND.
          t3 = t17->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>opt_prio( i_first = t3 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t21 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    IF t21 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t26 TYPE REF TO object.
      t26 = t21.
      TRY.
          t20 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t25 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t20 = t25->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = |LOCATE_REGEXPR|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t34 = zcl_lnt_st_combi_module=>tok( i_t = t35 ).
    IF t34 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t37 TYPE REF TO object.
      t37 = t34.
      TRY.
          t33 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t36 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t33 = t36->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t44 TYPE REF TO object.
      t44 = t1.
      TRY.
          t41 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t43 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS BOUND.
          t41 = t43->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t38->load( ).
    APPEND t41 TO t38->items.
    t38->save( ).
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d335_fce3d394071e.
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t46->cval = t47.
    ENDIF.
    t38->load( ).
    APPEND t46 TO t38->items.
    t38->save( ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d336_e416d8dcf33c.
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t51->cval = t52.
    ENDIF.
    t50 = zcl_lnt_st_combi_module=>opt_prio( i_first = t51 ).
    IF t50 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t54 TYPE REF TO object.
      t54 = t50.
      TRY.
          t49 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t49 IS NOT BOUND.
        TRY.
            t53 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t49 = t53->source( ).
        ENDIF.
        IF t49 IS NOT BOUND.
          CREATE OBJECT t49.
          t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t49->oval = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    t38->load( ).
    APPEND t49 TO t38->items.
    t38->save( ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d337_a8481289bbef.
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t58->cval = t59.
    ENDIF.
    t57 = zcl_lnt_st_combi_module=>opt_prio( i_first = t58 ).
    IF t57 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t61 TYPE REF TO object.
      t61 = t57.
      TRY.
          t56 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t60 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t56 = t60->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t38->load( ).
    APPEND t56 TO t38->items.
    t38->save( ).
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d338_8158a9a51d17.
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    t64 = zcl_lnt_st_combi_module=>opt_prio( i_first = t65 ).
    IF t64 IS BOUND.
      DATA t67 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t68 TYPE REF TO object.
      t68 = t64.
      TRY.
          t63 ?= t68.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t67 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t67 IS BOUND.
          t63 = t67->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    t38->load( ).
    APPEND t63 TO t38->items.
    t38->save( ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
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
    t38->load( ).
    APPEND t70 TO t38->items.
    t38->save( ).
    t28 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t33 i_rest = t38 ).
    IF t28 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t80 TYPE REF TO object.
      t80 = t28.
      TRY.
          t27 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t79 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t27 = t79->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t81 TYPE REF TO zcl_lnt_iver_options.
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t20 i_first = t27 i_opts = t81 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d327_7453d95ca5a2.
  ENDMETHOD.
ENDCLASS.
