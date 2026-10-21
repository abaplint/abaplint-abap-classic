* TS: src/abap/2_statements/statements/leave.ts:7:1 Leave
CLASS zcl_lnt_leave DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_leave IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d90_ea4359cbebf3c6.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |TO SCREEN|.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |TO TRANSACTION|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t31.
    t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t31->sval = |AND SKIP FIRST SCREEN|.
    t30 = zcl_lnt_st_combi_module=>opt( i_first = t31 ).
    IF t30 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t29 ?= t30.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t29 IS NOT BOUND.
        TRY.
            t33 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t29 = t33->source( ).
        ENDIF.
        IF t29 IS NOT BOUND.
          CREATE OBJECT t29.
          t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t29->oval = t30.
        ENDIF.
      ENDIF.
    ENDIF.
    t26->load( ).
    APPEND t29 TO t26->items.
    t26->save( ).
    t18 = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t24 i_rest = t26 ).
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = |LEAVE|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t53.
    t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t53->sval = |TO CURRENT TRANSACTION|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = |AND SKIP FIRST SCREEN|.
    t57 = zcl_lnt_st_combi_module=>opt( i_first = t58 ).
    IF t57 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t56 ?= t57.
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
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t63.
    t51 = zcl_lnt_st_combi_module=>seq( i_first = t53 i_second = t56 i_rest = t63 ).
    IF t51 IS BOUND.
      DATA t68 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t50 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t50 IS NOT BOUND.
        TRY.
            t68 ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t68 IS BOUND.
          t50 = t68->source( ).
        ENDIF.
        IF t50 IS NOT BOUND.
          CREATE OBJECT t50.
          t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t50->oval = t51.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = |TO|.
    t75 = zcl_lnt_st_combi_module=>opt( i_first = t76 ).
    IF t75 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t74 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t78 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t74 = t78->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = |LIST-PROCESSING|.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t90 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t88 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t90 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t90 IS BOUND.
          t88 = t90->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t87 = zcl_lnt_st_combi_module=>opt( i_first = t88 ).
    IF t87 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t86 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t92 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS BOUND.
          t86 = t92->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    t83->load( ).
    APPEND t86 TO t83->items.
    t83->save( ).
    t72 = zcl_lnt_st_combi_module=>seq( i_first = t74 i_second = t81 i_rest = t83 ).
    IF t72 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t71 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t98 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t71 = t98->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t72.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t100.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t103.
    t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t103->sval = |LIST-PROCESSING|.
    t100->load( ).
    APPEND t103 TO t100->items.
    t100->save( ).
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = |SCREEN|.
    t100->load( ).
    APPEND t106 TO t100->items.
    t100->save( ).
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t111 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t109 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t109 IS NOT BOUND.
        TRY.
            t111 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t111 IS BOUND.
          t109 = t111->source( ).
        ENDIF.
        IF t109 IS NOT BOUND.
          CREATE OBJECT t109.
          t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t109->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t100->load( ).
    APPEND t109 TO t100->items.
    t100->save( ).
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t114.
    t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t114->sval = |PROGRAM|.
    t100->load( ).
    APPEND t114 TO t100->items.
    t100->save( ).
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t120.
    t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t120->sval = |TO SCREEN|.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t124) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t124 IS BOUND.
      CREATE OBJECT t123.
      t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t123->cval = t124.
    ENDIF.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t126.
    t118 = zcl_lnt_st_combi_module=>seq( i_first = t120 i_second = t123 i_rest = t126 ).
    IF t118 IS BOUND.
      DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t117 ?= t118.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t117 IS NOT BOUND.
        TRY.
            t131 ?= t118.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t131 IS BOUND.
          t117 = t131->source( ).
        ENDIF.
        IF t117 IS NOT BOUND.
          CREATE OBJECT t117.
          t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t117->oval = t118.
        ENDIF.
      ENDIF.
    ENDIF.
    t100->load( ).
    APPEND t117 TO t100->items.
    t100->save( ).
    t48 = zcl_lnt_st_combi_module=>alt( i_first = t50 i_second = t71 i_rest = t100 ).
    IF t48 IS BOUND.
      DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t47 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t137 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t137 IS BOUND.
          t47 = t137->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    t46 = zcl_lnt_st_combi_module=>opt( i_first = t47 ).
    IF t46 IS BOUND.
      DATA t139 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t45 ?= t46.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t139 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t139 IS BOUND.
          t45 = t139->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t142.
    t39 = zcl_lnt_st_combi_module=>seq( i_first = t42 i_second = t45 i_rest = t142 ).
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t39 IS BOUND.
      DATA t151 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t149 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t149 IS NOT BOUND.
        TRY.
            t151 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t151 IS BOUND.
          t149 = t151->source( ).
        ENDIF.
        IF t149 IS NOT BOUND.
          CREATE OBJECT t149.
          t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t149->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t149 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d543_ccf4648ad473.
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
