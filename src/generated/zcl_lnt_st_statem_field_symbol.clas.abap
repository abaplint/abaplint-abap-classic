* TS: src/abap/2_statements/statements/fieldsymbol.ts:7:1 FieldSymbol
CLASS zcl_lnt_st_statem_field_symbol DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_statem_field_symbol IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |STRUCTURE|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |DEFAULT|.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    t9->load( ).
    APPEND t15 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t24 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v916| ).
    IF t24 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t29 TYPE REF TO object.
      t29 = t24.
      TRY.
          t23 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23 IS NOT BOUND.
        TRY.
            t28 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t23 = t28->source( ).
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
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = |TYPE|.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = |ANY|.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = |STRUCTURE|.
    t38->load( ).
    APPEND t41 TO t38->items.
    t38->save( ).
    t31 = zcl_lnt_st_combi_module=>seq( i_first = t33 i_second = t36 i_rest = t38 ).
    IF t31 IS BOUND.
      DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t48 TYPE REF TO object.
      t48 = t31.
      TRY.
          t30 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t30 IS NOT BOUND.
        TRY.
            t47 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t47 IS BOUND.
          t30 = t47->source( ).
        ENDIF.
        IF t30 IS NOT BOUND.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t30->oval = t31.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t49 TYPE REF TO zcl_lnt_iver_options.
    t21 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t23 i_first = t30 i_opts = t49 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t52.
    t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t52->sval = |FIELD-SYMBOLS|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t55->cval = t56.
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t57.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21 IS BOUND.
      DATA t67 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t68 TYPE REF TO object.
      t68 = t21.
      TRY.
          t65 ?= t68.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t65 IS NOT BOUND.
        TRY.
            t67 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t67 IS BOUND.
          t65 = t67->source( ).
        ENDIF.
        IF t65 IS NOT BOUND.
          CREATE OBJECT t65.
          t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t65->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t70->cval = t71.
    ENDIF.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t72.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t75->cval = t76.
    ENDIF.
    t72->load( ).
    APPEND t75 TO t72->items.
    t72->save( ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t81 TYPE REF TO object.
      t81 = t1.
      TRY.
          t78 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t78 IS NOT BOUND.
        TRY.
            t80 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t78 = t80->source( ).
        ENDIF.
        IF t78 IS NOT BOUND.
          CREATE OBJECT t78.
          t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t78->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t72->load( ).
    APPEND t78 TO t72->items.
    t72->save( ).
    t63 = zcl_lnt_st_combi_module=>alt( i_first = t65 i_second = t70 i_rest = t72 ).
    IF t63 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t87 TYPE REF TO object.
      t87 = t63.
      TRY.
          t62 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t86 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t62 = t86->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    t61 = zcl_lnt_st_combi_module=>opt( i_first = t62 ).
    IF t61 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t89 TYPE REF TO object.
      t89 = t61.
      TRY.
          t60 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t88 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t60 = t88->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    t57->load( ).
    APPEND t60 TO t57->items.
    t57->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t52 i_second = t55 i_rest = t57 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d498_bacf37b32951.
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
