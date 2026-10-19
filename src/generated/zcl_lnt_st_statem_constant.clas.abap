* TS: src/abap/2_statements/statements/constant.ts:6:1 Constant
CLASS zcl_lnt_st_statem_constant DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_statem_constant IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    t8 = zcl_lnt_st_combi_module=>opt( i_first = t9 ).
    IF t8 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t12 TYPE REF TO object.
      t12 = t8.
      TRY.
          t7 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t11 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t7 = t11->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t19->cval = t20.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d150_582536089a5b.
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t22->cval = t23.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d149_69f1f4358f03.
    IF t28 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t27->cval = t28.
    ENDIF.
    t24->load( ).
    APPEND t27 TO t24->items.
    t24->save( ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t30->cval = t31.
    ENDIF.
    t24->load( ).
    APPEND t30 TO t24->items.
    t24->save( ).
    t17 = zcl_lnt_st_combi_module=>per( i_first = t19 i_second = t22 i_rest = t24 ).
    IF t17 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t37 TYPE REF TO object.
      t37 = t17.
      TRY.
          t16 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16 IS NOT BOUND.
        TRY.
            t36 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t16 = t36->source( ).
        ENDIF.
        IF t16 IS NOT BOUND.
          CREATE OBJECT t16.
          t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->oval = t17.
        ENDIF.
      ENDIF.
    ENDIF.
    t13->load( ).
    APPEND t16 TO t13->items.
    t13->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t13 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t48.
    t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t48->sval = |CONSTANT|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = |CONSTANTS|.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t54.
    t46 = zcl_lnt_st_combi_module=>alt( i_first = t48 i_second = t51 i_rest = t54 ).
    IF t46 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t60 TYPE REF TO object.
      t60 = t46.
      TRY.
          t45 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t59 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t45 = t59->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t65 TYPE REF TO object.
      t65 = t1.
      TRY.
          t62 ?= t65.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t64 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t62 = t64->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = |%_PREDEFINED|.
    t70 = zcl_lnt_st_combi_module=>opt_prio( i_first = t71 ).
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
    t66->load( ).
    APPEND t69 TO t66->items.
    t66->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t45 i_second = t62 i_rest = t66 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d426_fb8ad08dadf9.
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
