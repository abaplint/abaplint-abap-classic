* TS: src/abap/2_statements/expressions/sql_path_for_column.ts:8:1 SQLPathForColumn
CLASS zcl_lnt_sql_path_for_column DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_path_for_column IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^(\/[A-Za-z0-9_]+\/)?[A-Za-z0-9_]+~$` flags = ||.
    t3->source = `^(\/\w+\/)?\w+~$`.
    t1 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t10 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t12 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t12 IS BOUND.
          t10 = t12->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zcl_lnt_sql_path_segment.
    DATA(t22) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t22->has = abap_true.
    t22->value = abap_true.
    t18 = NEW zcl_lnt_sql_path_segment( i_nws = t22 ).
    DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t25 TYPE REF TO object.
    t25 = t18.
    TRY.
        t17 ?= t25.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t17 IS NOT BOUND.
      TRY.
          t24 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS BOUND.
        t17 = t24->source( ).
      ENDIF.
      IF t17 IS NOT BOUND.
        CREATE OBJECT t17.
        t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t17->oval = t18.
      ENDIF.
    ENDIF.
    t16 = zcl_lnt_st_combi_module=>plus( i_first = t17 ).
    IF t16 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t15 ?= t16.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t26 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t15 = t26->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t32 = zcl_lnt_st_combi_module=>tok( i_t = t33 ).
    IF t32 IS BOUND.
      DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t31 ?= t32.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t34 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t34 IS BOUND.
          t31 = t34->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    t28->load( ).
    APPEND t31 TO t28->items.
    t28->save( ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t38 IS BOUND.
      CREATE OBJECT t37.
      t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t37->cval = t38.
    ENDIF.
    t28->load( ).
    APPEND t37 TO t28->items.
    t28->save( ).
    t7 = zcl_lnt_st_combi_module=>seq( i_first = t10 i_second = t15 i_rest = t28 ).
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zcl_lnt_sql_path_segment.
    DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t49 = NEW zcl_lnt_sql_path_segment( i_nws = t50 ).
    DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t52 TYPE REF TO object.
    t52 = t49.
    TRY.
        t48 ?= t52.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t48 IS NOT BOUND.
      TRY.
          t51 ?= t49.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t51 IS BOUND.
        t48 = t51->source( ).
      ENDIF.
      IF t48 IS NOT BOUND.
        CREATE OBJECT t48.
        t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t48->oval = t49.
      ENDIF.
    ENDIF.
    t47 = zcl_lnt_st_combi_module=>plus( i_first = t48 ).
    IF t47 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t46 ?= t47.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t53 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t46 = t53->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t57 = zcl_lnt_st_combi_module=>tok( i_t = t58 ).
    IF t57 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t56 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t59 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t56 = t59->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t64->cval = t65.
    ENDIF.
    t61->load( ).
    APPEND t64 TO t61->items.
    t61->save( ).
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t56 i_rest = t61 ).
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t72 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t72 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp05| ).
    IF t72 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t77 TYPE REF TO object.
      t77 = t72.
      TRY.
          t71 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t76 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t71 = t76->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t72.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t81 ?= t7.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t81 IS NOT BOUND.
        TRY.
            t83 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t81 = t83->source( ).
        ENDIF.
        IF t81 IS NOT BOUND.
          CREATE OBJECT t81.
          t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t81->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t86 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t88 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t86 = t88->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t91.
    t79 = zcl_lnt_st_combi_module=>alt_prio( i_first = t81 i_second = t86 i_rest = t91 ).
    IF t79 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t78 ?= t79.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t78 IS NOT BOUND.
        TRY.
            t96 ?= t79.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t78 = t96->source( ).
        ENDIF.
        IF t78 IS NOT BOUND.
          CREATE OBJECT t78.
          t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t78->oval = t79.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t98 TYPE REF TO zcl_lnt_iver_options.
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t71 i_first = t78 i_opts = t98 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d295_c8c13651616a.
  ENDMETHOD.
ENDCLASS.
