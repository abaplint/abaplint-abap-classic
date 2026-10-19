* TS: src/ddl/expressions/ddl_named_include.ts:7:1 DDLNamedInclude
CLASS zcl_lnt_ddl_named_include DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ddl_named_include IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1136_0f20aa1247bc.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1137_3ff2443eea78.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>alt( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t19->cval = t20.
    ENDIF.
    t18 = zcl_lnt_st_combi_module=>star( i_first = t19 ).
    IF t18 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t22 TYPE REF TO object.
      t22 = t18.
      TRY.
          t17 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t21 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t17 = t21->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = |KEY|.
    t25 = zcl_lnt_st_combi_module=>opt_prio( i_first = t26 ).
    IF t25 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t29 TYPE REF TO object.
      t29 = t25.
      TRY.
          t24 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t28 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t24 = t28->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1125_a1255dd94435.
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t33->cval = t34.
    ENDIF.
    t30->load( ).
    APPEND t33 TO t30->items.
    t30->save( ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = |:|.
    t30->load( ).
    APPEND t36 TO t30->items.
    t30->save( ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = |INCLUDE|.
    t30->load( ).
    APPEND t39 TO t30->items.
    t30->save( ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1125_a1255dd94435.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    t30->load( ).
    APPEND t42 TO t30->items.
    t30->save( ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = |WITH|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t53.
    t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t53->sval = |SUFFIX|.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1125_a1255dd94435.
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t58->cval = t59.
    ENDIF.
    t55->load( ).
    APPEND t58 TO t55->items.
    t55->save( ).
    t48 = zcl_lnt_st_combi_module=>seq( i_first = t50 i_second = t53 i_rest = t55 ).
    IF t48 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t65 TYPE REF TO object.
      t65 = t48.
      TRY.
          t47 ?= t65.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t64 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t47 = t64->source( ).
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
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t67 TYPE REF TO object.
      t67 = t46.
      TRY.
          t45 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t66 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t45 = t66->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    t30->load( ).
    APPEND t45 TO t30->items.
    t30->save( ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = |NOT NULL|.
    t70 = zcl_lnt_st_combi_module=>opt_prio( i_first = t71 ).
    IF t70 IS BOUND.
      DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t74 TYPE REF TO object.
      t74 = t70.
      TRY.
          t69 ?= t74.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t73 ?= t70.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t73 IS BOUND.
          t69 = t73->source( ).
        ENDIF.
        IF t69 IS NOT BOUND.
          CREATE OBJECT t69.
          t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t69->oval = t70.
        ENDIF.
      ENDIF.
    ENDIF.
    t30->load( ).
    APPEND t69 TO t30->items.
    t30->save( ).
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t81 TYPE REF TO object.
      t81 = t1.
      TRY.
          t78 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t78 IS NOT BOUND.
        TRY.
            t80 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t78 = t80->source( ).
        ENDIF.
        IF t78 IS NOT BOUND.
          CREATE OBJECT t78.
          t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t78->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t77 = zcl_lnt_st_combi_module=>star( i_first = t78 ).
    IF t77 IS BOUND.
      DATA t82 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t83 TYPE REF TO object.
      t83 = t77.
      TRY.
          t76 ?= t83.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t82 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t82 IS BOUND.
          t76 = t82->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    t30->load( ).
    APPEND t76 TO t30->items.
    t30->save( ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t85.
    t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t85->sval = |;|.
    t30->load( ).
    APPEND t85 TO t30->items.
    t30->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t17 i_second = t24 i_rest = t30 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1128_473e6fcaa4d5.
  ENDMETHOD.
ENDCLASS.
