* TS: src/abap/2_statements/expressions/sql_indicators.ts:6:1 SQLIndicators
CLASS zcl_lnt_sql_indicators DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_indicators IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^%?[A-Za-z0-9_]+$| flags = ||.
    t3->source = `^%?\w+$`.
    t1 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |NOT|.
    t11 = zcl_lnt_st_combi_module=>opt_prio( i_first = t12 ).
    IF t11 IS BOUND.
      DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t10 ?= t11.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t14 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t14 IS BOUND.
          t10 = t14->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t17.
    t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t17->sval = |NULL|.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t28.
    t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t28->sval = |STRUCTURE|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t31 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t33 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t31 = t33->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    t26 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t31 i_rest = t36 ).
    IF t26 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t25 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t25 IS NOT BOUND.
        TRY.
            t41 ?= t26.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t25 = t41->source( ).
        ENDIF.
        IF t25 IS NOT BOUND.
          CREATE OBJECT t25.
          t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t25->oval = t26.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = |BITFIELD|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t50 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t50 IS NOT BOUND.
        TRY.
            t52 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t50 = t52->source( ).
        ENDIF.
        IF t50 IS NOT BOUND.
          CREATE OBJECT t50.
          t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t50->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    t45 = zcl_lnt_st_combi_module=>seq( i_first = t47 i_second = t50 i_rest = t55 ).
    IF t45 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t44 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t44 IS NOT BOUND.
        TRY.
            t60 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t44 = t60->source( ).
        ENDIF.
        IF t44 IS NOT BOUND.
          CREATE OBJECT t44.
          t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t44->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t63.
    t23 = zcl_lnt_st_combi_module=>alt( i_first = t25 i_second = t44 i_rest = t63 ).
    IF t23 IS BOUND.
      DATA t68 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t22 ?= t23.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t22 IS NOT BOUND.
        TRY.
            t68 ?= t23.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t68 IS BOUND.
          t22 = t68->source( ).
        ENDIF.
        IF t22 IS NOT BOUND.
          CREATE OBJECT t22.
          t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t22->oval = t23.
        ENDIF.
      ENDIF.
    ENDIF.
    t19->load( ).
    APPEND t22 TO t19->items.
    t19->save( ).
    t7 = zcl_lnt_st_combi_module=>seq( i_first = t10 i_second = t17 i_rest = t19 ).
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t78 = zcl_lnt_st_combi_module=>tok( i_t = t79 ).
    IF t78 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t77 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t77 IS NOT BOUND.
        TRY.
            t80 ?= t78.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t77 = t80->source( ).
        ENDIF.
        IF t77 IS NOT BOUND.
          CREATE OBJECT t77.
          t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t77->oval = t78.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090.
    t84 = zcl_lnt_st_combi_module=>tok( i_t = t85 ).
    IF t84 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t83 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t83 IS NOT BOUND.
        TRY.
            t86 ?= t84.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t83 = t86->source( ).
        ENDIF.
        IF t83 IS NOT BOUND.
          CREATE OBJECT t83.
          t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t83->oval = t84.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t89.
    t74 = zcl_lnt_st_combi_module=>alt_prio( i_first = t77 i_second = t83 i_rest = t89 ).
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t99) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t98 = zcl_lnt_st_combi_module=>tok( i_t = t99 ).
    IF t98 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t97 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t97 IS NOT BOUND.
        TRY.
            t100 ?= t98.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t97 = t100->source( ).
        ENDIF.
        IF t97 IS NOT BOUND.
          CREATE OBJECT t97.
          t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t97->oval = t98.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t104 = zcl_lnt_st_combi_module=>tok( i_t = t105 ).
    IF t104 IS BOUND.
      DATA t106 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t103 ?= t104.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t106 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t106 IS BOUND.
          t103 = t106->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t109.
    t94 = zcl_lnt_st_combi_module=>alt_prio( i_first = t97 i_second = t103 i_rest = t109 ).
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t74 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t117 ?= t74.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t117 IS NOT BOUND.
        TRY.
            t119 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t117 = t119->source( ).
        ENDIF.
        IF t117 IS NOT BOUND.
          CREATE OBJECT t117.
          t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t117->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t122 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t122 IS NOT BOUND.
        TRY.
            t124 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t122 = t124->source( ).
        ENDIF.
        IF t122 IS NOT BOUND.
          CREATE OBJECT t122.
          t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t122->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t126.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t94 IS BOUND.
      DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t129 ?= t94.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t131 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t131 IS BOUND.
          t129 = t131->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    t126->load( ).
    APPEND t129 TO t126->items.
    t126->save( ).
    t114 = zcl_lnt_st_combi_module=>seq( i_first = t117 i_second = t122 i_rest = t126 ).
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t139 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t139 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v915| ).
    IF t139 IS BOUND.
      DATA t143 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t144 TYPE REF TO object.
      t144 = t139.
      TRY.
          t138 ?= t144.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138 IS NOT BOUND.
        TRY.
            t143 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t143 IS BOUND.
          t138 = t143->source( ).
        ENDIF.
        IF t138 IS NOT BOUND.
          CREATE OBJECT t138.
          t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->oval = t139.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t148.
    t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t148->sval = |INDICATORS|.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7 IS BOUND.
      DATA t156 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t154 ?= t7.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154 IS NOT BOUND.
        TRY.
            t156 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t156 IS BOUND.
          t154 = t156->source( ).
        ENDIF.
        IF t154 IS NOT BOUND.
          CREATE OBJECT t154.
          t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t114 IS BOUND.
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t159 ?= t114.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t161 ?= t114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t159 = t161->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t114.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t164.
    t152 = zcl_lnt_st_combi_module=>alt_prio( i_first = t154 i_second = t159 i_rest = t164 ).
    IF t152 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t151 ?= t152.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t151 IS NOT BOUND.
        TRY.
            t169 ?= t152.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t151 = t169->source( ).
        ENDIF.
        IF t151 IS NOT BOUND.
          CREATE OBJECT t151.
          t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t151->oval = t152.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t172.
    t146 = zcl_lnt_st_combi_module=>seq( i_first = t148 i_second = t151 i_rest = t172 ).
    IF t146 IS BOUND.
      DATA t177 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t145 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t145 IS NOT BOUND.
        TRY.
            t177 ?= t146.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t177 IS BOUND.
          t145 = t177->source( ).
        ENDIF.
        IF t145 IS NOT BOUND.
          CREATE OBJECT t145.
          t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t145->oval = t146.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t179 TYPE REF TO zcl_lnt_iver_options.
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t138 i_first = t145 i_opts = t179 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d332_d01031496384.
  ENDMETHOD.
ENDCLASS.
