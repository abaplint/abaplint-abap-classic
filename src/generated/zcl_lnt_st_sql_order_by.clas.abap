* TS: src/abap/2_statements/expressions/sql_order_by.ts:8:1 SQLOrderBy
CLASS zcl_lnt_st_sql_order_by DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_sql_order_by IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |ASCENDING|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |DESCENDING|.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>alt( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t18 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v778| ).
    IF t18 IS BOUND.
      DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t23 TYPE REF TO object.
      t23 = t18.
      TRY.
          t17 ?= t23.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t22 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t22 IS BOUND.
          t17 = t22->source( ).
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
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = |NULLS|.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = |FIRST|.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = |LAST|.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t39.
    t31 = zcl_lnt_st_combi_module=>alt( i_first = t33 i_second = t36 i_rest = t39 ).
    IF t31 IS BOUND.
      DATA t44 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t30 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t30 IS NOT BOUND.
        TRY.
            t44 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t44 IS BOUND.
          t30 = t44->source( ).
        ENDIF.
        IF t30 IS NOT BOUND.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t30->oval = t31.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t47.
    t25 = zcl_lnt_st_combi_module=>seq( i_first = t27 i_second = t30 i_rest = t47 ).
    IF t25 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t24 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t52 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t24 = t52->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t54 TYPE REF TO zcl_lnt_iver_options.
    t15 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t17 i_first = t24 i_opts = t54 ).
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t61 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v789| ).
    IF t61 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t66 TYPE REF TO object.
      t66 = t61.
      TRY.
          t60 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t65 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t60 = t65->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    DATA t69 TYPE REF TO zcl_lnt_iver_options.
    t59 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t60 i_first = t67 i_opts = t69 ).
    IF t59 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t58 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t58 IS NOT BOUND.
        TRY.
            t70 ?= t59.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t58 = t70->source( ).
        ENDIF.
        IF t58 IS NOT BOUND.
          CREATE OBJECT t58.
          t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t58->oval = t59.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t73->cval = t74.
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t76.
    t55 = zcl_lnt_st_combi_module=>alt_prio( i_first = t58 i_second = t73 i_rest = t76 ).
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t55 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t86 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t88 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t86 = t88->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t95 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t93 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t95 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t95 IS BOUND.
          t93 = t95->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t92 = zcl_lnt_st_combi_module=>opt( i_first = t93 ).
    IF t92 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t91 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t91 IS NOT BOUND.
        TRY.
            t97 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t91 = t97->source( ).
        ENDIF.
        IF t91 IS NOT BOUND.
          CREATE OBJECT t91.
          t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t91->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t99.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t106 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t104 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t104 IS NOT BOUND.
        TRY.
            t106 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t106 IS BOUND.
          t104 = t106->source( ).
        ENDIF.
        IF t104 IS NOT BOUND.
          CREATE OBJECT t104.
          t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t104->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t103 = zcl_lnt_st_combi_module=>opt( i_first = t104 ).
    IF t103 IS BOUND.
      DATA t108 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t102 ?= t103.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t102 IS NOT BOUND.
        TRY.
            t108 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t108 IS BOUND.
          t102 = t108->source( ).
        ENDIF.
        IF t102 IS NOT BOUND.
          CREATE OBJECT t102.
          t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t102->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    t99->load( ).
    APPEND t102 TO t99->items.
    t99->save( ).
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t113.
    t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t113->sval = |,|.
    t112 = zcl_lnt_st_combi_module=>opt( i_first = t113 ).
    IF t112 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t111 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t115 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t111 = t115->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t99->load( ).
    APPEND t111 TO t99->items.
    t99->save( ).
    t84 = zcl_lnt_st_combi_module=>seq( i_first = t86 i_second = t91 i_rest = t99 ).
    IF t84 IS BOUND.
      DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t83 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t83 IS NOT BOUND.
        TRY.
            t121 ?= t84.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS BOUND.
          t83 = t121->source( ).
        ENDIF.
        IF t83 IS NOT BOUND.
          CREATE OBJECT t83.
          t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t83->oval = t84.
        ENDIF.
      ENDIF.
    ENDIF.
    t81 = zcl_lnt_st_combi_module=>plus( i_first = t83 ).
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t126.
    t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t126->sval = |ORDER BY|.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t132.
    t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t132->sval = |PRIMARY KEY|.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t136) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t136 IS BOUND.
      CREATE OBJECT t135.
      t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t135->cval = t136.
    ENDIF.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t137.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t81 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t140 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t142 ?= t81.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t140 = t142->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t81.
        ENDIF.
      ENDIF.
    ENDIF.
    t137->load( ).
    APPEND t140 TO t137->items.
    t137->save( ).
    t130 = zcl_lnt_st_combi_module=>alt_prio( i_first = t132 i_second = t135 i_rest = t137 ).
    IF t130 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t129 ?= t130.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t148 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t129 = t148->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t151.
    result = zcl_lnt_st_combi_module=>seq( i_first = t126 i_second = t129 i_rest = t151 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
  ENDMETHOD.
ENDCLASS.
