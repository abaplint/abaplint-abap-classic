* TS: src/cds/expressions/cds_type.ts:5:1 CDSType
CLASS zcl_lnt_cd_cds_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cd_cds_type IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |,|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t9 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |[0-9]+| flags = ||.
    t9->source = `\d+`.
    t8 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t9 ).
    IF t8 IS BOUND.
      DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t14 TYPE REF TO object.
      t14 = t8.
      TRY.
          t7 ?= t14.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t13 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t13 IS BOUND.
          t7 = t13->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t16 ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t31.
    t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t31->sval = |.|.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t34->cval = t35.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t31 i_second = t34 i_rest = t37 ).
    IF t29 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t43 TYPE REF TO object.
      t43 = t29.
      TRY.
          t28 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t28 IS NOT BOUND.
        TRY.
            t42 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t28 = t42->source( ).
        ENDIF.
        IF t28 IS NOT BOUND.
          CREATE OBJECT t28.
          t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t28->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t27 = zcl_lnt_st_combi_module=>opt_prio( i_first = t28 ).
    IF t27 IS BOUND.
      DATA t44 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t45 TYPE REF TO object.
      t45 = t27.
      TRY.
          t26 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t44 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t44 IS BOUND.
          t26 = t44->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t27.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t46.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = |(|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA t59 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t59 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |[0-9]+| flags = ||.
    t59->source = `\d+`.
    t58 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t59 ).
    IF t58 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t64 TYPE REF TO object.
      t64 = t58.
      TRY.
          t57 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t63 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t57 = t63->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t65.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t73 TYPE REF TO object.
      t73 = t1.
      TRY.
          t70 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t70 IS NOT BOUND.
        TRY.
            t72 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS BOUND.
          t70 = t72->source( ).
        ENDIF.
        IF t70 IS NOT BOUND.
          CREATE OBJECT t70.
          t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t70->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t69 = zcl_lnt_st_combi_module=>opt_prio( i_first = t70 ).
    IF t69 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t75 TYPE REF TO object.
      t75 = t69.
      TRY.
          t68 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t74 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t68 = t74->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    t65->load( ).
    APPEND t68 TO t65->items.
    t65->save( ).
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t77.
    t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t77->sval = |)|.
    t65->load( ).
    APPEND t77 TO t65->items.
    t65->save( ).
    t52 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t57 i_rest = t65 ).
    IF t52 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t84 TYPE REF TO object.
      t84 = t52.
      TRY.
          t51 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t51 IS NOT BOUND.
        TRY.
            t83 ?= t52.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t51 = t83->source( ).
        ENDIF.
        IF t51 IS NOT BOUND.
          CREATE OBJECT t51.
          t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t51->oval = t52.
        ENDIF.
      ENDIF.
    ENDIF.
    t50 = zcl_lnt_st_combi_module=>opt_prio( i_first = t51 ).
    IF t50 IS BOUND.
      DATA t85 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t86 TYPE REF TO object.
      t86 = t50.
      TRY.
          t49 ?= t86.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t49 IS NOT BOUND.
        TRY.
            t85 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t85 IS BOUND.
          t49 = t85->source( ).
        ENDIF.
        IF t49 IS NOT BOUND.
          CREATE OBJECT t49.
          t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t49->oval = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    t46->load( ).
    APPEND t49 TO t46->items.
    t46->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t23 i_second = t26 i_rest = t46 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
  ENDMETHOD.
ENDCLASS.
