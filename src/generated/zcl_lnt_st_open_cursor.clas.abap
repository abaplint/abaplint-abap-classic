* TS: src/abap/2_statements/statements/open_cursor.ts:7:1 OpenCursor
CLASS zcl_lnt_st_open_cursor DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_open_cursor IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v752| ).
    IF t4 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t9 TYPE REF TO object.
      t9 = t4.
      TRY.
          t3 ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t8 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t3 = t8->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t13.
    t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t13->sval = |WITH|.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2.
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t16->cval = t17.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t11 = zcl_lnt_st_combi_module=>seq( i_first = t13 i_second = t16 i_rest = t19 ).
    IF t11 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t11.
      TRY.
          t10 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t24 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t10 = t24->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t26 TYPE REF TO zcl_lnt_iver_options.
    t1 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t10 i_opts = t26 ).
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = |OPEN CURSOR|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = |WITH HOLD|.
    t34 = zcl_lnt_st_combi_module=>opt_prio( i_first = t35 ).
    IF t34 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
      t38 = t34.
      TRY.
          t33 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t37 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t33 = t37->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t39.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d333_b60636864266.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    t39->load( ).
    APPEND t42 TO t39->items.
    t39->save( ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t45->sval = |FOR|.
    t39->load( ).
    APPEND t45 TO t39->items.
    t39->save( ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0.
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t48->cval = t49.
    ENDIF.
    t39->load( ).
    APPEND t48 TO t39->items.
    t39->save( ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t56 TYPE REF TO object.
      t56 = t1.
      TRY.
          t53 ?= t56.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t55 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t53 = t55->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t52 = zcl_lnt_st_combi_module=>opt_prio( i_first = t53 ).
    IF t52 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t58 TYPE REF TO object.
      t58 = t52.
      TRY.
          t51 ?= t58.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t51 IS NOT BOUND.
        TRY.
            t57 ?= t52.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t51 = t57->source( ).
        ENDIF.
        IF t51 IS NOT BOUND.
          CREATE OBJECT t51.
          t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t51->oval = t52.
        ENDIF.
      ENDIF.
    ENDIF.
    t39->load( ).
    APPEND t51 TO t39->items.
    t39->save( ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d270_547c551ca3da.
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    t61 = zcl_lnt_st_combi_module=>opt_prio( i_first = t62 ).
    IF t61 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t65 TYPE REF TO object.
      t65 = t61.
      TRY.
          t60 ?= t65.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t64 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t60 = t64->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    t39->load( ).
    APPEND t60 TO t39->items.
    t39->save( ).
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t33 i_rest = t39 ).
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t75 TYPE REF TO object.
      t75 = t27.
      TRY.
          t72 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t72 IS NOT BOUND.
        TRY.
            t74 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t72 = t74->source( ).
        ENDIF.
        IF t72 IS NOT BOUND.
          CREATE OBJECT t72.
          t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t72->oval = t27.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t72 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d568_88df8e7885d7.
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
