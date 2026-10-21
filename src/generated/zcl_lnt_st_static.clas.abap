* TS: src/abap/2_statements/statements/static.ts:7:1 Static
CLASS zcl_lnt_st_static DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_static IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t6->cval = t7.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d150_582536089a5b.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97.
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t14->cval = t15.
    ENDIF.
    t11->load( ).
    APPEND t14 TO t11->items.
    t11->save( ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d149_69f1f4358f03.
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t17->cval = t18.
    ENDIF.
    t11->load( ).
    APPEND t17 TO t11->items.
    t11->save( ).
    t4 = zcl_lnt_st_combi_module=>per( i_first = t6 i_second = t9 i_rest = t11 ).
    IF t4 IS BOUND.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t3 ?= t4.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t23 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t3 = t23->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>opt( i_first = t3 ).
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t30->cval = t31.
    ENDIF.
    t29 = zcl_lnt_st_combi_module=>opt( i_first = t30 ).
    IF t29 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t28 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t28 IS NOT BOUND.
        TRY.
            t32 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t28 = t32->source( ).
        ENDIF.
        IF t28 IS NOT BOUND.
          CREATE OBJECT t28.
          t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t28->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t35 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t37 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t35 = t37->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    t25 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t35 i_rest = t40 ).
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t48->cval = t49.
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
    IF t54 IS BOUND.
      CREATE OBJECT t53.
      t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t53->cval = t54.
    ENDIF.
    t52 = zcl_lnt_st_combi_module=>opt_prio( i_first = t53 ).
    IF t52 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t51 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t51 IS NOT BOUND.
        TRY.
            t55 ?= t52.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t51 = t55->source( ).
        ENDIF.
        IF t51 IS NOT BOUND.
          CREATE OBJECT t51.
          t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t51->oval = t52.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t57.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t25 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t63 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t65 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t63 = t65->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t68->cval = t69.
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t71.
    t61 = zcl_lnt_st_combi_module=>alt( i_first = t63 i_second = t68 i_rest = t71 ).
    IF t61 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t60 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t76 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t60 = t76->source( ).
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
    t45 = zcl_lnt_st_combi_module=>seq( i_first = t48 i_second = t51 i_rest = t57 ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = |STATIC|.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t90 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t90 IS NOT BOUND.
        TRY.
            t92 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS BOUND.
          t90 = t92->source( ).
        ENDIF.
        IF t90 IS NOT BOUND.
          CREATE OBJECT t90.
          t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t90->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t95.
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t87 i_second = t90 i_rest = t95 ).
    IF t85 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t84 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t100 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t84 = t100->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t109.
    t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t109->sval = |STATICS|.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45 IS BOUND.
      DATA t114 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t112 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t114 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t114 IS BOUND.
          t112 = t114->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t117.
    t107 = zcl_lnt_st_combi_module=>seq( i_first = t109 i_second = t112 i_rest = t117 ).
    IF t107 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t106 ?= t107.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t106 IS NOT BOUND.
        TRY.
            t122 ?= t107.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t106 = t122->source( ).
        ENDIF.
        IF t106 IS NOT BOUND.
          CREATE OBJECT t106.
          t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t106->oval = t107.
        ENDIF.
      ENDIF.
    ENDIF.
    t104 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t106 ).
    IF t104 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t103 ?= t104.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t124 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t103 = t124->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t127.
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t84 i_second = t103 i_rest = t127 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d641_00cf48ea9524.
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
