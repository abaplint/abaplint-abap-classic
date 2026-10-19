* TS: src/abap/2_statements/expressions/inlinedata.ts:7:1 InlineData
CLASS zcl_lnt_st_inline_data DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_inline_data IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t8 TYPE REF TO object.
      t8 = t5.
      TRY.
          t4 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t7 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t4 = t7->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t11 = zcl_lnt_st_combi_module=>tok( i_t = t12 ).
    IF t11 IS BOUND.
      DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t14 TYPE REF TO object.
      t14 = t11.
      TRY.
          t10 ?= t14.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t13 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t13 IS BOUND.
          t10 = t13->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t10 i_rest = t16 ).
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t21 = zcl_lnt_st_combi_module=>tok( i_t = t23 ).
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = |DATA|.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t33 TYPE REF TO object.
      t33 = t21.
      TRY.
          t30 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t30 IS NOT BOUND.
        TRY.
            t32 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t30 = t32->source( ).
        ENDIF.
        IF t30 IS NOT BOUND.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t30->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t34.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
    IF t38 IS BOUND.
      CREATE OBJECT t37.
      t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t37->cval = t38.
    ENDIF.
    t34->load( ).
    APPEND t37 TO t34->items.
    t34->save( ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t43 TYPE REF TO object.
      t43 = t1.
      TRY.
          t40 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40 IS NOT BOUND.
        TRY.
            t42 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t40 = t42->source( ).
        ENDIF.
        IF t40 IS NOT BOUND.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t40->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t34->load( ).
    APPEND t40 TO t34->items.
    t34->save( ).
    t24 = zcl_lnt_st_combi_module=>seq( i_first = t27 i_second = t30 i_rest = t34 ).
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = |FINAL|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t57 TYPE REF TO object.
      t57 = t21.
      TRY.
          t54 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t56 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t54 = t56->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t58.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    t58->load( ).
    APPEND t61 TO t58->items.
    t58->save( ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t67 TYPE REF TO object.
      t67 = t1.
      TRY.
          t64 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t64 IS NOT BOUND.
        TRY.
            t66 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t64 = t66->source( ).
        ENDIF.
        IF t64 IS NOT BOUND.
          CREATE OBJECT t64.
          t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t64->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t58->load( ).
    APPEND t64 TO t58->items.
    t58->save( ).
    t48 = zcl_lnt_st_combi_module=>seq( i_first = t51 i_second = t54 i_rest = t58 ).
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t77 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t77 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp02| ).
    IF t77 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t82 TYPE REF TO object.
      t82 = t77.
      TRY.
          t76 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t81 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t76 = t81->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t24 IS BOUND.
      DATA t85 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t86 TYPE REF TO object.
      t86 = t24.
      TRY.
          t83 ?= t86.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t83 IS NOT BOUND.
        TRY.
            t85 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t85 IS BOUND.
          t83 = t85->source( ).
        ENDIF.
        IF t83 IS NOT BOUND.
          CREATE OBJECT t83.
          t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t83->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t89 TYPE REF TO zcl_lnt_iver_options.
    DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t94->has = abap_true.
    t94->value = |OpenABAP|.
    t89 = NEW zcl_lnt_iver_options( i_also = t94 ).
    CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
    t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t96 ).
    CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
    t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t98 ).
    t75 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t76 i_first = t83 i_opts = t89 ).
    IF t75 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t101 TYPE REF TO object.
      t101 = t75.
      TRY.
          t74 ?= t101.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t100 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t74 = t100->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t106 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t106 IS BOUND.
      DATA t110 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t111 TYPE REF TO object.
      t111 = t106.
      TRY.
          t105 ?= t111.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t110 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t110 IS BOUND.
          t105 = t110->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48 IS BOUND.
      DATA t114 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t115 TYPE REF TO object.
      t115 = t48.
      TRY.
          t112 ?= t115.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t114 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t114 IS BOUND.
          t112 = t114->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zcl_lnt_iver_options.
    DATA(t123) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t123->has = abap_true.
    t123->value = |OpenABAP|.
    t118 = NEW zcl_lnt_iver_options( i_also = t123 ).
    CREATE OBJECT t118->zlnt_view_ownkeys_b0e8086400eb.
    t118->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t125 ).
    CREATE OBJECT t118->zlnt_json_ownkeys_70e5fd461788.
    t118->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t127 ).
    t104 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t105 i_first = t112 i_opts = t118 ).
    IF t104 IS BOUND.
      DATA t129 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t130 TYPE REF TO object.
      t130 = t104.
      TRY.
          t103 ?= t130.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t129 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t129 IS BOUND.
          t103 = t129->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t132.
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t74 i_second = t103 i_rest = t132 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
  ENDMETHOD.
ENDCLASS.
