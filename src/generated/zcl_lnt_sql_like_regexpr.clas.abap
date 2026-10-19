* TS: src/abap/2_statements/expressions/sql_like_regexpr.ts:9:1 SQLLikeRegexpr
CLASS zcl_lnt_sql_like_regexpr DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_like_regexpr IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t8 TYPE REF TO object.
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
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t16 = zcl_lnt_st_combi_module=>tok( i_t = t17 ).
    IF t16 IS BOUND.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t19 TYPE REF TO object.
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
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t10 i_rest = t12 ).
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
    t28 = zcl_lnt_st_combi_module=>tok( i_t = t29 ).
    IF t28 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t31 TYPE REF TO object.
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
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t36->cval = t37.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t42 TYPE REF TO object.
      t42 = t1.
      TRY.
          t39 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t39 IS NOT BOUND.
        TRY.
            t41 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t39 = t41->source( ).
        ENDIF.
        IF t39 IS NOT BOUND.
          CREATE OBJECT t39.
          t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t39->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    t34 = zcl_lnt_st_combi_module=>alt_prio( i_first = t36 i_second = t39 i_rest = t44 ).
    IF t34 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t50 TYPE REF TO object.
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
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t24 = zcl_lnt_st_combi_module=>seq( i_first = t27 i_second = t33 i_rest = t52 ).
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = |FLAG|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t24 IS BOUND.
      DATA t68 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t69 TYPE REF TO object.
      t69 = t24.
      TRY.
          t66 ?= t69.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t68 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t68 IS BOUND.
          t66 = t68->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t71->cval = t72.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    t64 = zcl_lnt_st_combi_module=>alt_prio( i_first = t66 i_second = t71 i_rest = t74 ).
    IF t64 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t80 TYPE REF TO object.
      t80 = t64.
      TRY.
          t63 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t79 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t63 = t79->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t82.
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t63 i_rest = t82 ).
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t89 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t89 IS BOUND.
      DATA t93 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t94 TYPE REF TO object.
      t94 = t89.
      TRY.
          t88 ?= t94.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t93 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t93 IS BOUND.
          t88 = t93->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = |LIKE_REGEXPR|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t102) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t101->cval = t102.
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t103.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t110 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t111 TYPE REF TO object.
      t111 = t57.
      TRY.
          t108 ?= t111.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t108 IS NOT BOUND.
        TRY.
            t110 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t110 IS BOUND.
          t108 = t110->source( ).
        ENDIF.
        IF t108 IS NOT BOUND.
          CREATE OBJECT t108.
          t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t108->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t107 = zcl_lnt_st_combi_module=>opt_prio( i_first = t108 ).
    IF t107 IS BOUND.
      DATA t112 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t113 TYPE REF TO object.
      t113 = t107.
      TRY.
          t106 ?= t113.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t106 IS NOT BOUND.
        TRY.
            t112 ?= t107.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t112 IS BOUND.
          t106 = t112->source( ).
        ENDIF.
        IF t106 IS NOT BOUND.
          CREATE OBJECT t106.
          t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t106->oval = t107.
        ENDIF.
      ENDIF.
    ENDIF.
    t103->load( ).
    APPEND t106 TO t103->items.
    t103->save( ).
    t96 = zcl_lnt_st_combi_module=>seq( i_first = t98 i_second = t101 i_rest = t103 ).
    IF t96 IS BOUND.
      DATA t118 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t119 TYPE REF TO object.
      t119 = t96.
      TRY.
          t95 ?= t119.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t118 ?= t96.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t118 IS BOUND.
          t95 = t118->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t96.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t120 TYPE REF TO zcl_lnt_iver_options.
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t88 i_first = t95 i_opts = t120 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d300_344d539249f5.
  ENDMETHOD.
ENDCLASS.
