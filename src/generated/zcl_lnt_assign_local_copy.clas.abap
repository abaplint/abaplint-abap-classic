* TS: src/abap/2_statements/statements/assign_local_copy.ts:7:1 AssignLocalCopy
CLASS zcl_lnt_assign_local_copy DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_assign_local_copy IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |INITIAL|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t8 = zcl_lnt_st_combi_module=>alt( i_first = t10 i_second = t13 i_rest = t16 ).
    IF t8 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t7 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t21 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t7 = t21->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t24 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |INITIAL LINE OF|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    t36 = zcl_lnt_st_combi_module=>alt( i_first = t38 i_second = t41 i_rest = t44 ).
    IF t36 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t35 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t49 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t35 = t49->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t35 i_rest = t52 ).
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = |MAIN TABLE FIELD|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t63 i_rest = t66 ).
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t74.
    t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t74->sval = |ASSIGN LOCAL COPY OF|.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t82 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t80 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t80 IS NOT BOUND.
        TRY.
            t82 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t82 IS BOUND.
          t80 = t82->source( ).
        ENDIF.
        IF t80 IS NOT BOUND.
          CREATE OBJECT t80.
          t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t80->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t87 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t85 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t87 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t87 IS BOUND.
          t85 = t87->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t89.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t94 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t92 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t92 IS NOT BOUND.
        TRY.
            t94 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t94 IS BOUND.
          t92 = t94->source( ).
        ENDIF.
        IF t92 IS NOT BOUND.
          CREATE OBJECT t92.
          t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t92->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t89->load( ).
    APPEND t92 TO t89->items.
    t89->save( ).
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t98) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t98 IS BOUND.
      CREATE OBJECT t97.
      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t97->cval = t98.
    ENDIF.
    t89->load( ).
    APPEND t97 TO t89->items.
    t89->save( ).
    t78 = zcl_lnt_st_combi_module=>alt( i_first = t80 i_second = t85 i_rest = t89 ).
    IF t78 IS BOUND.
      DATA t103 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t77 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t77 IS NOT BOUND.
        TRY.
            t103 ?= t78.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t103 IS BOUND.
          t77 = t103->source( ).
        ENDIF.
        IF t77 IS NOT BOUND.
          CREATE OBJECT t77.
          t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t77->oval = t78.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t105.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t108.
    t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t108->sval = |TO|.
    t105->load( ).
    APPEND t108 TO t105->items.
    t105->save( ).
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t112) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
    IF t112 IS BOUND.
      CREATE OBJECT t111.
      t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t111->cval = t112.
    ENDIF.
    t105->load( ).
    APPEND t111 TO t105->items.
    t105->save( ).
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t74 i_second = t77 i_rest = t105 ).
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71 IS BOUND.
      DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t119 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t119 IS NOT BOUND.
        TRY.
            t121 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS BOUND.
          t119 = t121->source( ).
        ENDIF.
        IF t119 IS NOT BOUND.
          CREATE OBJECT t119.
          t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t119->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t119 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d376_3ade3c5aabb1.
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
