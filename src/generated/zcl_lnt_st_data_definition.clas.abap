* TS: src/abap/2_statements/expressions/data_definition.ts:7:1 DataDefinition
CLASS zcl_lnt_st_data_definition DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_data_definition IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = |READ-ONLY|.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
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
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d150_582536089a5b.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    t11->load( ).
    APPEND t20 TO t11->items.
    t11->save( ).
    t4 = zcl_lnt_st_combi_module=>per( i_first = t6 i_second = t9 i_rest = t11 ).
    IF t4 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t3 ?= t4.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t26 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t3 = t26->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>opt( i_first = t3 ).
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t31->cval = t32.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = |READ-ONLY|.
    t35 = zcl_lnt_st_combi_module=>opt_prio( i_first = t36 ).
    IF t35 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t34 ?= t35.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t34 IS NOT BOUND.
        TRY.
            t38 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t34 = t38->source( ).
        ENDIF.
        IF t34 IS NOT BOUND.
          CREATE OBJECT t34.
          t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t34->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    t28 = zcl_lnt_st_combi_module=>seq( i_first = t31 i_second = t34 i_rest = t41 ).
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t49 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v702| ).
    IF t49 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t54 TYPE REF TO object.
      t54 = t49.
      TRY.
          t48 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t53 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t48 = t53->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = |BOXED|.
    DATA t57 TYPE REF TO zcl_lnt_iver_options.
    t46 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t48 i_first = t55 i_opts = t57 ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t60->cval = t61.
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    t64 = zcl_lnt_st_combi_module=>opt_prio( i_first = t65 ).
    IF t64 IS BOUND.
      DATA t67 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t63 ?= t64.
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
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t78 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v731| ).
    IF t78 IS BOUND.
      DATA t82 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t83 TYPE REF TO object.
      t83 = t78.
      TRY.
          t77 ?= t83.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t77 IS NOT BOUND.
        TRY.
            t82 ?= t78.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t82 IS BOUND.
          t77 = t82->source( ).
        ENDIF.
        IF t77 IS NOT BOUND.
          CREATE OBJECT t77.
          t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t77->oval = t78.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_handle_type( ) ).
    IF t85 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t84 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t86 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t84 = t86->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t88 TYPE REF TO zcl_lnt_iver_options.
    t76 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t77 i_first = t84 i_opts = t88 ).
    IF t76 IS BOUND.
      DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t75 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t75 IS NOT BOUND.
        TRY.
            t89 ?= t76.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t89 IS BOUND.
          t75 = t89->source( ).
        ENDIF.
        IF t75 IS NOT BOUND.
          CREATE OBJECT t75.
          t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t75->oval = t76.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t95 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t97 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t95 = t97->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t28 IS BOUND.
      DATA t102 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t100 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t100 IS NOT BOUND.
        TRY.
            t102 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t102 IS BOUND.
          t100 = t102->source( ).
        ENDIF.
        IF t100 IS NOT BOUND.
          CREATE OBJECT t100.
          t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t100->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t104.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t107->cval = t108.
    ENDIF.
    t104->load( ).
    APPEND t107 TO t104->items.
    t104->save( ).
    t93 = zcl_lnt_st_combi_module=>alt( i_first = t95 i_second = t100 i_rest = t104 ).
    IF t93 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t92 ?= t93.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t92 IS NOT BOUND.
        TRY.
            t113 ?= t93.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t92 = t113->source( ).
        ENDIF.
        IF t92 IS NOT BOUND.
          CREATE OBJECT t92.
          t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t92->oval = t93.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t116.
    t73 = zcl_lnt_st_combi_module=>alt_prio( i_first = t75 i_second = t92 i_rest = t116 ).
    IF t73 IS BOUND.
      DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t72 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t72 IS NOT BOUND.
        TRY.
            t121 ?= t73.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS BOUND.
          t72 = t121->source( ).
        ENDIF.
        IF t72 IS NOT BOUND.
          CREATE OBJECT t72.
          t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t72->oval = t73.
        ENDIF.
      ENDIF.
    ENDIF.
    t69->load( ).
    APPEND t72 TO t69->items.
    t69->save( ).
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46 IS BOUND.
      DATA t128 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t126 ?= t46.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t128 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t128 IS BOUND.
          t126 = t128->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    t125 = zcl_lnt_st_combi_module=>opt_prio( i_first = t126 ).
    IF t125 IS BOUND.
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t124 ?= t125.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t124 IS NOT BOUND.
        TRY.
            t130 ?= t125.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t130 IS BOUND.
          t124 = t130->source( ).
        ENDIF.
        IF t124 IS NOT BOUND.
          CREATE OBJECT t124.
          t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t124->oval = t125.
        ENDIF.
      ENDIF.
    ENDIF.
    t69->load( ).
    APPEND t124 TO t69->items.
    t69->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t63 i_rest = t69 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df.
  ENDMETHOD.
ENDCLASS.
