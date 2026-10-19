* TS: src/cds/expressions/cds_with_parameters.ts:5:1 CDSWithParameters
CLASS zcl_lnt_cds_with_parameters DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_with_parameters IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t9 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^"(?:[^"]\|"")*"$| flags = ||.
    t8 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t9 ).
    IF t8 IS BOUND.
      DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t13 TYPE REF TO object.
      t13 = t8.
      TRY.
          t7 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t12 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t12 IS BOUND.
          t7 = t12->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t15 ).
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = |EXTERNAL|.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = |NAME|.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t34 TYPE REF TO object.
      t34 = t1.
      TRY.
          t31 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t33 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t31 = t33->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t28->load( ).
    APPEND t31 TO t28->items.
    t28->save( ).
    t20 = zcl_lnt_st_combi_module=>seq( i_first = t23 i_second = t26 i_rest = t28 ).
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t44->cval = t45.
    ENDIF.
    t43 = zcl_lnt_st_combi_module=>star( i_first = t44 ).
    IF t43 IS BOUND.
      DATA t46 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t47 TYPE REF TO object.
      t47 = t43.
      TRY.
          t42 ?= t47.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t42 IS NOT BOUND.
        TRY.
            t46 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t46 IS BOUND.
          t42 = t46->source( ).
        ENDIF.
        IF t42 IS NOT BOUND.
          CREATE OBJECT t42.
          t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t42->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = |:|.
    t51->load( ).
    APPEND t54 TO t51->items.
    t51->save( ).
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t57->cval = t58.
    ENDIF.
    t51->load( ).
    APPEND t57 TO t51->items.
    t51->save( ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t65 TYPE REF TO object.
      t65 = t20.
      TRY.
          t62 ?= t65.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t64 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t62 = t64->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    t61 = zcl_lnt_st_combi_module=>opt( i_first = t62 ).
    IF t61 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t67 TYPE REF TO object.
      t67 = t61.
      TRY.
          t60 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t66 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t60 = t66->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    t51->load( ).
    APPEND t60 TO t51->items.
    t51->save( ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t71->cval = t72.
    ENDIF.
    t70 = zcl_lnt_st_combi_module=>star( i_first = t71 ).
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
    t51->load( ).
    APPEND t69 TO t51->items.
    t51->save( ).
    t39 = zcl_lnt_st_combi_module=>seq( i_first = t42 i_second = t49 i_rest = t51 ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = |WITH PARAMETERS|.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t39 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t87 TYPE REF TO object.
      t87 = t39.
      TRY.
          t84 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t86 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t84 = t86->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t88.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = |,|.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t39 IS BOUND.
      DATA t101 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t102 TYPE REF TO object.
      t102 = t39.
      TRY.
          t99 ?= t102.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t99 IS NOT BOUND.
        TRY.
            t101 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t101 IS BOUND.
          t99 = t101->source( ).
        ENDIF.
        IF t99 IS NOT BOUND.
          CREATE OBJECT t99.
          t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t99->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t104.
    t94 = zcl_lnt_st_combi_module=>seq( i_first = t96 i_second = t99 i_rest = t104 ).
    IF t94 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t110 TYPE REF TO object.
      t110 = t94.
      TRY.
          t93 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t109 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t93 = t109->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    t92 = zcl_lnt_st_combi_module=>star( i_first = t93 ).
    IF t92 IS BOUND.
      DATA t111 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t112 TYPE REF TO object.
      t112 = t92.
      TRY.
          t91 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t91 IS NOT BOUND.
        TRY.
            t111 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t111 IS BOUND.
          t91 = t111->source( ).
        ENDIF.
        IF t91 IS NOT BOUND.
          CREATE OBJECT t91.
          t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t91->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    t88->load( ).
    APPEND t91 TO t88->items.
    t88->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t81 i_second = t84 i_rest = t88 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1097_1528186a58df.
  ENDMETHOD.
ENDCLASS.
