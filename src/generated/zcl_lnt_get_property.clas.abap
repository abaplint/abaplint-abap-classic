* TS: src/abap/2_statements/statements/get_property.ts:7:1 GetProperty
CLASS zcl_lnt_get_property DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_get_property IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |GET PROPERTY OF|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d140_ecb7e995244f.
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t18->cval = t19.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t21.
    t13 = zcl_lnt_st_combi_module=>alt( i_first = t15 i_second = t18 i_rest = t21 ).
    IF t13 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t27 TYPE REF TO object.
      t27 = t13.
      TRY.
          t12 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS NOT BOUND.
        TRY.
            t26 ?= t13.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t12 = t26->source( ).
        ENDIF.
        IF t12 IS NOT BOUND.
          CREATE OBJECT t12.
          t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t12->oval = t13.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = |=|.
    t9->load( ).
    APPEND t29 TO t9->items.
    t9->save( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t32->cval = t33.
    ENDIF.
    t9->load( ).
    APPEND t32 TO t9->items.
    t9->save( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t37.
    t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t37->sval = |NO FLUSH|.
    t36 = zcl_lnt_st_combi_module=>opt( i_first = t37 ).
    IF t36 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t40 TYPE REF TO object.
      t40 = t36.
      TRY.
          t35 ?= t40.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t39 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t35 = t39->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t35 TO t9->items.
    t9->save( ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = |QUEUE-ONLY|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = |QUEUEONLY|.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t53.
    t45 = zcl_lnt_st_combi_module=>alt( i_first = t47 i_second = t50 i_rest = t53 ).
    IF t45 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t59 TYPE REF TO object.
      t59 = t45.
      TRY.
          t44 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t44 IS NOT BOUND.
        TRY.
            t58 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t44 = t58->source( ).
        ENDIF.
        IF t44 IS NOT BOUND.
          CREATE OBJECT t44.
          t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t44->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    t43 = zcl_lnt_st_combi_module=>opt( i_first = t44 ).
    IF t43 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t61 TYPE REF TO object.
      t61 = t43.
      TRY.
          t42 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t42 IS NOT BOUND.
        TRY.
            t60 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t42 = t60->source( ).
        ENDIF.
        IF t42 IS NOT BOUND.
          CREATE OBJECT t42.
          t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t42->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t42 TO t9->items.
    t9->save( ).
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d239_2b0cd25fcf16.
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    t64 = zcl_lnt_st_combi_module=>opt( i_first = t65 ).
    IF t64 IS BOUND.
      DATA t67 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t68 TYPE REF TO object.
      t68 = t64.
      TRY.
          t63 ?= t68.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t67 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t67 IS BOUND.
          t63 = t67->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t63 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t78 TYPE REF TO object.
      t78 = t1.
      TRY.
          t75 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t75 IS NOT BOUND.
        TRY.
            t77 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t75 = t77->source( ).
        ENDIF.
        IF t75 IS NOT BOUND.
          CREATE OBJECT t75.
          t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t75->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t75 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d520_18c2b55bcee8.
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
