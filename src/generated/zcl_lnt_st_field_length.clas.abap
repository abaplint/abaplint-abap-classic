* TS: src/abap/2_statements/expressions/field_length.ts:6:1 FieldLength
CLASS zcl_lnt_st_field_length DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_field_length IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d31_5d276172db4584.
    t7 = zcl_lnt_st_combi_module=>tok( i_t = t8 ).
    IF t7 IS BOUND.
      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t10 TYPE REF TO object.
      t10 = t7.
      TRY.
          t6 ?= t10.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t9 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t9 IS BOUND.
          t6 = t9->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    t5 = zcl_lnt_st_combi_module=>opt_prio( i_first = t6 ).
    IF t5 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t12 TYPE REF TO object.
      t12 = t5.
      TRY.
          t4 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t11 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t4 = t11->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t19 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t19->source = `^\d+$`.
    t18 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t19 ).
    IF t18 IS BOUND.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t24 TYPE REF TO object.
      t24 = t18.
      TRY.
          t17 ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t23 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t17 = t23->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t26->cval = t27.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    t15 = zcl_lnt_st_combi_module=>alt_prio( i_first = t17 i_second = t26 i_rest = t29 ).
    IF t15 IS BOUND.
      DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t35 TYPE REF TO object.
      t35 = t15.
      TRY.
          t14 ?= t35.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t34 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t34 IS BOUND.
          t14 = t34->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t14 i_rest = t37 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t46 = zcl_lnt_st_combi_module=>tok( i_t = t47 ).
    IF t46 IS BOUND.
      DATA t48 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t49 TYPE REF TO object.
      t49 = t46.
      TRY.
          t45 ?= t49.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t48 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t48 IS BOUND.
          t45 = t48->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t59 TYPE REF TO object.
      t59 = t1.
      TRY.
          t56 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t58 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t56 = t58->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = |*|.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t64.
    t54 = zcl_lnt_st_combi_module=>alt_prio( i_first = t56 i_second = t61 i_rest = t64 ).
    IF t54 IS BOUND.
      DATA t69 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t70 TYPE REF TO object.
      t70 = t54.
      TRY.
          t53 ?= t70.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t69 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t69 IS BOUND.
          t53 = t69->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    t52 = zcl_lnt_st_combi_module=>opt_prio( i_first = t53 ).
    IF t52 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t72 TYPE REF TO object.
      t72 = t52.
      TRY.
          t51 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t51 IS NOT BOUND.
        TRY.
            t71 ?= t52.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t51 = t71->source( ).
        ENDIF.
        IF t51 IS NOT BOUND.
          CREATE OBJECT t51.
          t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t51->oval = t52.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t73.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t80 = zcl_lnt_st_combi_module=>tok( i_t = t81 ).
    IF t80 IS BOUND.
      DATA t82 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t83 TYPE REF TO object.
      t83 = t80.
      TRY.
          t79 ?= t83.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t79 IS NOT BOUND.
        TRY.
            t82 ?= t80.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t82 IS BOUND.
          t79 = t82->source( ).
        ENDIF.
        IF t79 IS NOT BOUND.
          CREATE OBJECT t79.
          t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t79->oval = t80.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t87) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t86 = zcl_lnt_st_combi_module=>tok( i_t = t87 ).
    IF t86 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t89 TYPE REF TO object.
      t89 = t86.
      TRY.
          t85 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t88 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t85 = t88->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t91.
    t77 = zcl_lnt_st_combi_module=>alt_prio( i_first = t79 i_second = t85 i_rest = t91 ).
    IF t77 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t97 TYPE REF TO object.
      t97 = t77.
      TRY.
          t76 ?= t97.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t96 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t76 = t96->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    t73->load( ).
    APPEND t76 TO t73->items.
    t73->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t45 i_second = t51 i_rest = t73 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
  ENDMETHOD.
ENDCLASS.
