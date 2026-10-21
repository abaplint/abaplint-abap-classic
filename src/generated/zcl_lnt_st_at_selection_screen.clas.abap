* TS: src/abap/2_statements/statements/at_selection_screen.ts:7:1 AtSelectionScreen
CLASS zcl_lnt_st_at_selection_screen DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_at_selection_screen IMPLEMENTATION.
  METHOD get_matcher.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = |ON VALUE-REQUEST FOR|.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t3 = zcl_lnt_st_combi_module=>seq( i_first = t6 i_second = t9 i_rest = t12 ).
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = |ON|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t25->cval = t26.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t19 = zcl_lnt_st_combi_module=>seq( i_first = t22 i_second = t25 i_rest = t28 ).
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = |ON END OF|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t39->cval = t40.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t42.
    t33 = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t39 i_rest = t42 ).
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = |ON RADIOBUTTON GROUP|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t54 IS BOUND.
      CREATE OBJECT t53.
      t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t53->cval = t54.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t56.
    t47 = zcl_lnt_st_combi_module=>seq( i_first = t50 i_second = t53 i_rest = t56 ).
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = |ON BLOCK|.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d107_ee9c2dd1a63a.
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    t61 = zcl_lnt_st_combi_module=>seq( i_first = t64 i_second = t67 i_rest = t70 ).
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = |ON HELP-REQUEST FOR|.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t84.
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t78 i_second = t81 i_rest = t84 ).
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t92.
    t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t92->sval = |AT SELECTION-SCREEN|.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t100.
    t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t100->sval = |OUTPUT|.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t103 ?= t3.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t105 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t103 = t105->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t3.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t107.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t47 IS BOUND.
      DATA t112 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t110 ?= t47.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t110 IS NOT BOUND.
        TRY.
            t112 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t112 IS BOUND.
          t110 = t112->source( ).
        ENDIF.
        IF t110 IS NOT BOUND.
          CREATE OBJECT t110.
          t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t110->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    t107->load( ).
    APPEND t110 TO t107->items.
    t107->save( ).
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t115.
    t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t115->sval = |ON EXIT-COMMAND|.
    t107->load( ).
    APPEND t115 TO t107->items.
    t107->save( ).
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t118 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t120 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t118 = t120->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    t107->load( ).
    APPEND t118 TO t107->items.
    t107->save( ).
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33 IS BOUND.
      DATA t125 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t123 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t123 IS NOT BOUND.
        TRY.
            t125 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t125 IS BOUND.
          t123 = t125->source( ).
        ENDIF.
        IF t123 IS NOT BOUND.
          CREATE OBJECT t123.
          t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t123->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    t107->load( ).
    APPEND t123 TO t107->items.
    t107->save( ).
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t75 IS BOUND.
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t128 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t128 IS NOT BOUND.
        TRY.
            t130 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t130 IS BOUND.
          t128 = t130->source( ).
        ENDIF.
        IF t128 IS NOT BOUND.
          CREATE OBJECT t128.
          t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t128->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    t107->load( ).
    APPEND t128 TO t107->items.
    t107->save( ).
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t61 IS BOUND.
      DATA t135 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t133 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t133 IS NOT BOUND.
        TRY.
            t135 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t135 IS BOUND.
          t133 = t135->source( ).
        ENDIF.
        IF t133 IS NOT BOUND.
          CREATE OBJECT t133.
          t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t133->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    t107->load( ).
    APPEND t133 TO t107->items.
    t107->save( ).
    t98 = zcl_lnt_st_combi_module=>alt( i_first = t100 i_second = t103 i_rest = t107 ).
    IF t98 IS BOUND.
      DATA t141 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t97 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t97 IS NOT BOUND.
        TRY.
            t141 ?= t98.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t141 IS BOUND.
          t97 = t141->source( ).
        ENDIF.
        IF t97 IS NOT BOUND.
          CREATE OBJECT t97.
          t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t97->oval = t98.
        ENDIF.
      ENDIF.
    ENDIF.
    t96 = zcl_lnt_st_combi_module=>opt( i_first = t97 ).
    IF t96 IS BOUND.
      DATA t143 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t95 ?= t96.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t143 ?= t96.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t143 IS BOUND.
          t95 = t143->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t96.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t146.
    t89 = zcl_lnt_st_combi_module=>seq( i_first = t92 i_second = t95 i_rest = t146 ).
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89 IS BOUND.
      DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t153 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t155 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t155 IS BOUND.
          t153 = t155->source( ).
        ENDIF.
        IF t153 IS NOT BOUND.
          CREATE OBJECT t153.
          t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t153->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t153 ).

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d382_b3aa13d22624.
  ENDMETHOD.

  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.

  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
