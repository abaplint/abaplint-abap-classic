* TS: src/abap/2_statements/expressions/sql_options.ts:7:1 SQLOptions
CLASS zcl_lnt_sql_options DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_options IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |CLIENTS IN|.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d297_8dd76b8d3d10.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t16.
    t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t16->sval = |T000|.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t11 = zcl_lnt_st_combi_module=>alt( i_first = t13 i_second = t16 i_rest = t19 ).
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
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t5 = zcl_lnt_st_combi_module=>seq( i_first = t7 i_second = t10 i_rest = t27 ).
    IF t5 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t33 TYPE REF TO object.
      t33 = t5.
      TRY.
          t4 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t32 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t4 = t32->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = |ALL CLIENTS|.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = |CLIENT|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d297_8dd76b8d3d10.
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t46->cval = t47.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    t41 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t46 i_rest = t49 ).
    IF t41 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t55 TYPE REF TO object.
      t55 = t41.
      TRY.
          t40 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40 IS NOT BOUND.
        TRY.
            t54 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t40 = t54->source( ).
        ENDIF.
        IF t40 IS NOT BOUND.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t40->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    t37->load( ).
    APPEND t40 TO t37->items.
    t37->save( ).
    t1 = zcl_lnt_st_combi_module=>alt( i_first = t4 i_second = t35 i_rest = t37 ).
    DATA t60 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    t60 = zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t60 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t60.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d293_8f762dd42d06.
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t68->cval = t69.
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d155_5eb73ae6c401.
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t73->cval = t74.
    ENDIF.
    t70->load( ).
    APPEND t73 TO t70->items.
    t70->save( ).
    t62 = zcl_lnt_st_combi_module=>per( i_first = t65 i_second = t68 i_rest = t70 ).
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t82.
    t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t82->sval = |USING|.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t87 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t88 TYPE REF TO object.
      t88 = t1.
      TRY.
          t85 ?= t88.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t87 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t87 IS BOUND.
          t85 = t87->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t89.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t62 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t97 TYPE REF TO object.
      t97 = t62.
      TRY.
          t94 ?= t97.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t94 IS NOT BOUND.
        TRY.
            t96 ?= t62.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t94 = t96->source( ).
        ENDIF.
        IF t94 IS NOT BOUND.
          CREATE OBJECT t94.
          t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t94->oval = t62.
        ENDIF.
      ENDIF.
    ENDIF.
    t93 = zcl_lnt_st_combi_module=>opt_prio( i_first = t94 ).
    IF t93 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t99 TYPE REF TO object.
      t99 = t93.
      TRY.
          t92 ?= t99.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t92 IS NOT BOUND.
        TRY.
            t98 ?= t93.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t92 = t98->source( ).
        ENDIF.
        IF t92 IS NOT BOUND.
          CREATE OBJECT t92.
          t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t92->oval = t93.
        ENDIF.
      ENDIF.
    ENDIF.
    t89->load( ).
    APPEND t92 TO t89->items.
    t89->save( ).
    t79 = zcl_lnt_st_combi_module=>seq( i_first = t82 i_second = t85 i_rest = t89 ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t106 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v796| ).
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
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t115.
    t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t115->sval = |OPTIONS|.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t79 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t124 TYPE REF TO object.
      t124 = t79.
      TRY.
          t121 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t121 IS NOT BOUND.
        TRY.
            t123 ?= t79.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t121 = t123->source( ).
        ENDIF.
        IF t121 IS NOT BOUND.
          CREATE OBJECT t121.
          t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t121->oval = t79.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t62 IS BOUND.
      DATA t128 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t129 TYPE REF TO object.
      t129 = t62.
      TRY.
          t126 ?= t129.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t128 ?= t62.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t128 IS BOUND.
          t126 = t128->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t62.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t131.
    t119 = zcl_lnt_st_combi_module=>alt( i_first = t121 i_second = t126 i_rest = t131 ).
    IF t119 IS BOUND.
      DATA t136 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t137 TYPE REF TO object.
      t137 = t119.
      TRY.
          t118 ?= t137.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t136 ?= t119.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t136 IS BOUND.
          t118 = t136->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t119.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t139.
    t113 = zcl_lnt_st_combi_module=>seq( i_first = t115 i_second = t118 i_rest = t139 ).
    IF t113 IS BOUND.
      DATA t144 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t145 TYPE REF TO object.
      t145 = t113.
      TRY.
          t112 ?= t145.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t144 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t144 IS BOUND.
          t112 = t144->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t146 TYPE REF TO zcl_lnt_iver_options.
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t105 i_first = t112 i_opts = t146 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d270_547c551ca3da.
  ENDMETHOD.
ENDCLASS.
