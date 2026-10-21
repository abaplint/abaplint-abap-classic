* TS: src/abap/2_statements/expressions/reduce_next.ts:7:1 ReduceNext
CLASS zcl_lnt_st_reduce_next DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_reduce_next IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v754| ).
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
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d56_5d4839b794b2ac.
    t17 = zcl_lnt_st_combi_module=>tok( i_t = t18 ).
    IF t17 IS BOUND.
      DATA t19 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t16 ?= t17.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16 IS NOT BOUND.
        TRY.
            t19 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t19 IS BOUND.
          t16 = t19->source( ).
        ENDIF.
        IF t16 IS NOT BOUND.
          CREATE OBJECT t16.
          t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->oval = t17.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = |=|.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t25.
    t14 = zcl_lnt_st_combi_module=>seq( i_first = t16 i_second = t22 i_rest = t25 ).
    IF t14 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t13 ?= t14.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t30 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t13 = t30->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t14.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d48_c59205d155180b.
    t37 = zcl_lnt_st_combi_module=>tok( i_t = t38 ).
    IF t37 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t36 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t36 IS NOT BOUND.
        TRY.
            t39 ?= t37.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t36 = t39->source( ).
        ENDIF.
        IF t36 IS NOT BOUND.
          CREATE OBJECT t36.
          t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t36->oval = t37.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = |=|.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t45.
    t34 = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t42 i_rest = t45 ).
    IF t34 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t33 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t50 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t33 = t50->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = |/=|.
    t52->load( ).
    APPEND t55 TO t52->items.
    t52->save( ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = |*=|.
    t52->load( ).
    APPEND t58 TO t52->items.
    t52->save( ).
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = |&&=|.
    t52->load( ).
    APPEND t61 TO t52->items.
    t52->save( ).
    t11 = zcl_lnt_st_combi_module=>alt( i_first = t13 i_second = t33 i_rest = t52 ).
    IF t11 IS BOUND.
      DATA t67 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t10 ?= t11.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t67 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t67 IS BOUND.
          t10 = t67->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t71 TYPE REF TO zcl_lnt_iver_options.
    DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t76->has = abap_true.
    t76->value = |OpenABAP|.
    t71 = NEW zcl_lnt_iver_options( i_also = t76 ).
    CREATE OBJECT t71->zlnt_view_ownkeys_b0e8086400eb.
    t71->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t78 ).
    CREATE OBJECT t71->zlnt_json_ownkeys_70e5fd461788.
    t71->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t80 ).
    t1 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t10 i_opts = t71 ).
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d255_88331b4186a0.
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t85->cval = t86.
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = |=|.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t94 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t94 IS NOT BOUND.
        TRY.
            t96 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t94 = t96->source( ).
        ENDIF.
        IF t94 IS NOT BOUND.
          CREATE OBJECT t94.
          t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t94->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t99.
    t89 = zcl_lnt_st_combi_module=>alt_prio( i_first = t91 i_second = t94 i_rest = t99 ).
    IF t89 IS BOUND.
      DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t88 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t104 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t104 IS BOUND.
          t88 = t104->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t106.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t109->cval = t110.
    ENDIF.
    t106->load( ).
    APPEND t109 TO t106->items.
    t106->save( ).
    t82 = zcl_lnt_st_combi_module=>seq( i_first = t85 i_second = t88 i_rest = t106 ).
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t117.
    t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t117->sval = |NEXT|.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t82 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t122 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t122 IS NOT BOUND.
        TRY.
            t124 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t122 = t124->source( ).
        ENDIF.
        IF t122 IS NOT BOUND.
          CREATE OBJECT t122.
          t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t122->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    t121 = zcl_lnt_st_combi_module=>plus( i_first = t122 ).
    IF t121 IS BOUND.
      DATA t126 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t120 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t126 ?= t121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t126 IS BOUND.
          t120 = t126->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t121.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t129.
    result = zcl_lnt_st_combi_module=>seq( i_first = t117 i_second = t120 i_rest = t129 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d253_daaebfcb0814.
  ENDMETHOD.
ENDCLASS.
