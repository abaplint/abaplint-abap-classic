* TS: src/abap/2_statements/statements/with.ts:8:1 With
CLASS zcl_lnt_st_with DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_with IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = |WITH|.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = NEW zcl_lnt_sqlcte_hierarchy( ).
    DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t15 TYPE REF TO object.
    t15 = t13.
    TRY.
        t12 ?= t15.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t12 IS NOT BOUND.
      TRY.
          t14 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS BOUND.
        t12 = t14->source( ).
      ENDIF.
      IF t12 IS NOT BOUND.
        CREATE OBJECT t12.
        t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t12->oval = t13.
      ENDIF.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d306_9aee0313349c.
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t17->cval = t18.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t10 = zcl_lnt_st_combi_module=>alt_prio( i_first = t12 i_second = t17 i_rest = t20 ).
    IF t10 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t26 TYPE REF TO object.
      t26 = t10.
      TRY.
          t9 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t25 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t9 = t25->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t10.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t4 = zcl_lnt_st_combi_module=>seq( i_first = t6 i_second = t9 i_rest = t28 ).
    IF t4 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t34 TYPE REF TO object.
      t34 = t4.
      TRY.
          t3 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t33 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t3 = t33->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>opt_prio( i_first = t3 ).
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d290_f492e89b83f5.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = |AS|.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t43.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t47 = zcl_lnt_st_combi_module=>tok( i_t = t48 ).
    IF t47 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t50 TYPE REF TO object.
      t50 = t47.
      TRY.
          t46 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t49 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t46 = t49->source( ).
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
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d277_c16b515a2f49.
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t52->cval = t53.
    ENDIF.
    t43->load( ).
    APPEND t52 TO t43->items.
    t43->save( ).
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t56 = zcl_lnt_st_combi_module=>tok( i_t = t57 ).
    IF t56 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t59 TYPE REF TO object.
      t59 = t56.
      TRY.
          t55 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t58 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t55 = t58->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t56.
        ENDIF.
      ENDIF.
    ENDIF.
    t43->load( ).
    APPEND t55 TO t43->items.
    t43->save( ).
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t64 TYPE REF TO object.
      t64 = t1.
      TRY.
          t61 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t63 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t61 = t63->source( ).
        ENDIF.
        IF t61 IS NOT BOUND.
          CREATE OBJECT t61.
          t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t61->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t43->load( ).
    APPEND t61 TO t43->items.
    t43->save( ).
    t35 = zcl_lnt_st_combi_module=>seq( i_first = t38 i_second = t41 i_rest = t43 ).
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t74 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t74 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v751| ).
    IF t74 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t79 TYPE REF TO object.
      t79 = t74.
      TRY.
          t73 ?= t79.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t78 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t73 = t78->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t83.
    t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t83->sval = |WITH|.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t35 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t89 TYPE REF TO object.
      t89 = t35.
      TRY.
          t86 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t88 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t86 = t88->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t90.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = |,|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t35 IS BOUND.
      DATA t103 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t104 TYPE REF TO object.
      t104 = t35.
      TRY.
          t101 ?= t104.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t103 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t103 IS BOUND.
          t101 = t103->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t106.
    t96 = zcl_lnt_st_combi_module=>seq( i_first = t98 i_second = t101 i_rest = t106 ).
    IF t96 IS BOUND.
      DATA t111 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t112 TYPE REF TO object.
      t112 = t96.
      TRY.
          t95 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t111 ?= t96.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t111 IS BOUND.
          t95 = t111->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t96.
        ENDIF.
      ENDIF.
    ENDIF.
    t94 = zcl_lnt_st_combi_module=>star( i_first = t95 ).
    IF t94 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t114 TYPE REF TO object.
      t114 = t94.
      TRY.
          t93 ?= t114.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t113 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t93 = t113->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    t90->load( ).
    APPEND t93 TO t90->items.
    t90->save( ).
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t117) = zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0.
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t116->cval = t117.
    ENDIF.
    t90->load( ).
    APPEND t116 TO t90->items.
    t90->save( ).
    t81 = zcl_lnt_st_combi_module=>seq( i_first = t83 i_second = t86 i_rest = t90 ).
    IF t81 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t123 TYPE REF TO object.
      t123 = t81.
      TRY.
          t80 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t80 IS NOT BOUND.
        TRY.
            t122 ?= t81.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t80 = t122->source( ).
        ENDIF.
        IF t80 IS NOT BOUND.
          CREATE OBJECT t80.
          t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t80->oval = t81.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t124 TYPE REF TO zcl_lnt_iver_options.
    t72 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t73 i_first = t80 i_opts = t124 ).
    IF t72 IS BOUND.
      DATA t125 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t126 TYPE REF TO object.
      t126 = t72.
      TRY.
          t71 ?= t126.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t125 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t125 IS BOUND.
          t71 = t125->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t72.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t71 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d684_dd4b0670faf6.
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
