* TS: src/abap/2_statements/statements/call_screen.ts:7:1 CallScreen
CLASS zcl_lnt_call_screen DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_call_screen IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |STARTING AT|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
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
    t21->sval = |ENDING AT|.
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
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    t26->load( ).
    APPEND t29 TO t26->items.
    t26->save( ).
    t18 = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t24 i_rest = t26 ).
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = |CALL SCREEN|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t43.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t54 TYPE REF TO object.
      t54 = t1.
      TRY.
          t51 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t51 IS NOT BOUND.
        TRY.
            t53 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t51 = t53->source( ).
        ENDIF.
        IF t51 IS NOT BOUND.
          CREATE OBJECT t51.
          t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t51->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t61 TYPE REF TO object.
      t61 = t18.
      TRY.
          t58 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t58 IS NOT BOUND.
        TRY.
            t60 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t58 = t60->source( ).
        ENDIF.
        IF t58 IS NOT BOUND.
          CREATE OBJECT t58.
          t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t58->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t57 = zcl_lnt_st_combi_module=>opt_prio( i_first = t58 ).
    IF t57 IS BOUND.
      DATA t62 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t63 TYPE REF TO object.
      t63 = t57.
      TRY.
          t56 ?= t63.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t62 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t62 IS BOUND.
          t56 = t62->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t65.
    t49 = zcl_lnt_st_combi_module=>seq( i_first = t51 i_second = t56 i_rest = t65 ).
    IF t49 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t71 TYPE REF TO object.
      t71 = t49.
      TRY.
          t48 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t70 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t48 = t70->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    t47 = zcl_lnt_st_combi_module=>opt_prio( i_first = t48 ).
    IF t47 IS BOUND.
      DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t73 TYPE REF TO object.
      t73 = t47.
      TRY.
          t46 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t72 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS BOUND.
          t46 = t72->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    t43->load( ).
    APPEND t46 TO t43->items.
    t43->save( ).
    t35 = zcl_lnt_st_combi_module=>seq( i_first = t38 i_second = t41 i_rest = t43 ).
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t35 IS BOUND.
      DATA t82 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t83 TYPE REF TO object.
      t83 = t35.
      TRY.
          t80 ?= t83.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t80 IS NOT BOUND.
        TRY.
            t82 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t82 IS BOUND.
          t80 = t82->source( ).
        ENDIF.
        IF t80 IS NOT BOUND.
          CREATE OBJECT t80.
          t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t80->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t80 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d395_d6422e344004.
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
