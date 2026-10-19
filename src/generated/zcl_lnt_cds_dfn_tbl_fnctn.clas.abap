* TS: src/cds/expressions/cds_define_table_function.ts:6:1 CDSDefineTableFunction
CLASS zcl_lnt_cds_dfn_tbl_fnctn DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_dfn_tbl_fnctn IMPLEMENTATION.
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
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |=|.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |>|.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    t9->load( ).
    APPEND t15 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t25->cval = t26.
    ENDIF.
    t24 = zcl_lnt_st_combi_module=>star( i_first = t25 ).
    IF t24 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t28 TYPE REF TO object.
      t28 = t24.
      TRY.
          t23 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23 IS NOT BOUND.
        TRY.
            t27 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t23 = t27->source( ).
        ENDIF.
        IF t23 IS NOT BOUND.
          CREATE OBJECT t23.
          t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t23->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    t31 = zcl_lnt_st_combi_module=>str( i_s = |DEFINE TABLE FUNCTION| ).
    IF t31 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t34 TYPE REF TO object.
      t34 = t31.
      TRY.
          t30 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t30 IS NOT BOUND.
        TRY.
            t33 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t30 = t33->source( ).
        ENDIF.
        IF t30 IS NOT BOUND.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t30->oval = t31.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t35.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    t35->load( ).
    APPEND t38 TO t35->items.
    t35->save( ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1097_1528186a58df.
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t43->cval = t44.
    ENDIF.
    t42 = zcl_lnt_st_combi_module=>opt_prio( i_first = t43 ).
    IF t42 IS BOUND.
      DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t46 TYPE REF TO object.
      t46 = t42.
      TRY.
          t41 ?= t46.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t45 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t45 IS BOUND.
          t41 = t45->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    t35->load( ).
    APPEND t41 TO t35->items.
    t35->save( ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    t49 = zcl_lnt_st_combi_module=>str( i_s = |RETURNS \{| ).
    IF t49 IS BOUND.
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
    ENDIF.
    t35->load( ).
    APPEND t48 TO t35->items.
    t35->save( ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    t60 = zcl_lnt_st_combi_module=>star( i_first = t61 ).
    IF t60 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t64 TYPE REF TO object.
      t64 = t60.
      TRY.
          t59 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t63 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t59 = t63->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = |KEY|.
    t67 = zcl_lnt_st_combi_module=>opt_prio( i_first = t68 ).
    IF t67 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t71 TYPE REF TO object.
      t71 = t67.
      TRY.
          t66 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t70 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t66 = t70->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t72.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t75->cval = t76.
    ENDIF.
    t72->load( ).
    APPEND t75 TO t72->items.
    t72->save( ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = |:|.
    t72->load( ).
    APPEND t78 TO t72->items.
    t72->save( ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    t72->load( ).
    APPEND t81 TO t72->items.
    t72->save( ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t87) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t87 IS BOUND.
      CREATE OBJECT t86.
      t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t86->cval = t87.
    ENDIF.
    t85 = zcl_lnt_st_combi_module=>star( i_first = t86 ).
    IF t85 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t89 TYPE REF TO object.
      t89 = t85.
      TRY.
          t84 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t88 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t84 = t88->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    t72->load( ).
    APPEND t84 TO t72->items.
    t72->save( ).
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = |;|.
    t72->load( ).
    APPEND t91 TO t72->items.
    t72->save( ).
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t59 i_second = t66 i_rest = t72 ).
    IF t57 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t98 TYPE REF TO object.
      t98 = t57.
      TRY.
          t56 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t97 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t56 = t97->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t55 = zcl_lnt_st_combi_module=>plus( i_first = t56 ).
    IF t55 IS BOUND.
      DATA t99 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t100 TYPE REF TO object.
      t100 = t55.
      TRY.
          t54 ?= t100.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t99 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t99 IS BOUND.
          t54 = t99->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    t35->load( ).
    APPEND t54 TO t35->items.
    t35->save( ).
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    t103 = zcl_lnt_st_combi_module=>str( i_s = |\} IMPLEMENTED BY METHOD| ).
    IF t103 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t106 TYPE REF TO object.
      t106 = t103.
      TRY.
          t102 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t102 IS NOT BOUND.
        TRY.
            t105 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t102 = t105->source( ).
        ENDIF.
        IF t102 IS NOT BOUND.
          CREATE OBJECT t102.
          t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t102->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    t35->load( ).
    APPEND t102 TO t35->items.
    t35->save( ).
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t110 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t111 TYPE REF TO object.
      t111 = t1.
      TRY.
          t108 ?= t111.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t108 IS NOT BOUND.
        TRY.
            t110 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t110 IS BOUND.
          t108 = t110->source( ).
        ENDIF.
        IF t108 IS NOT BOUND.
          CREATE OBJECT t108.
          t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t108->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t35->load( ).
    APPEND t108 TO t35->items.
    t35->save( ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t115.
    t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t115->sval = |;|.
    t114 = zcl_lnt_st_combi_module=>opt( i_first = t115 ).
    IF t114 IS BOUND.
      DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t118 TYPE REF TO object.
      t118 = t114.
      TRY.
          t113 ?= t118.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t117 ?= t114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t117 IS BOUND.
          t113 = t117->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t114.
        ENDIF.
      ENDIF.
    ENDIF.
    t35->load( ).
    APPEND t113 TO t35->items.
    t35->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t23 i_second = t30 i_rest = t35 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1110_085be6a3a6ff.
  ENDMETHOD.
ENDCLASS.
