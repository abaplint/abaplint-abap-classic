* TS: src/abap/2_statements/expressions/sql_aggregation.ts:12:1 SQLAggregation
CLASS zcl_lnt_sql_aggregation DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_aggregation IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t7 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp08| ).
    IF t7 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t12 TYPE REF TO object.
      t12 = t7.
      TRY.
          t6 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t11 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t6 = t11->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_iver_options.
    t5 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t6 i_first = t13 i_opts = t15 ).
    IF t5 IS BOUND.
      DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t17 TYPE REF TO object.
      t17 = t5.
      TRY.
          t4 ?= t17.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t16 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t16 IS BOUND.
          t4 = t16->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t19->cval = t20.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t22.
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t19 i_rest = t22 ).
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t31 = zcl_lnt_st_combi_module=>tok( i_t = t32 ).
    IF t31 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t34 TYPE REF TO object.
      t34 = t31.
      TRY.
          t30 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t30 IS NOT BOUND.
        TRY.
            t33 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t30 = t33->source( ).
        ENDIF.
        IF t30 IS NOT BOUND.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t30->oval = t31.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t37 = zcl_lnt_st_combi_module=>tok( i_t = t38 ).
    IF t37 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t40 TYPE REF TO object.
      t40 = t37.
      TRY.
          t36 ?= t40.
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
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t45 = zcl_lnt_st_combi_module=>tok( i_t = t46 ).
    IF t45 IS BOUND.
      DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t48 TYPE REF TO object.
      t48 = t45.
      TRY.
          t44 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t44 IS NOT BOUND.
        TRY.
            t47 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t47 IS BOUND.
          t44 = t47->source( ).
        ENDIF.
        IF t44 IS NOT BOUND.
          CREATE OBJECT t44.
          t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t44->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    t41->load( ).
    APPEND t44 TO t41->items.
    t41->save( ).
    t27 = zcl_lnt_st_combi_module=>alt_prio( i_first = t30 i_second = t36 i_rest = t41 ).
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t57 = zcl_lnt_st_combi_module=>tok( i_t = t58 ).
    IF t57 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t60 TYPE REF TO object.
      t60 = t57.
      TRY.
          t56 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t59 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t56 = t59->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t64.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t67.
    t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t67->sval = |,|.
    t64->load( ).
    APPEND t67 TO t64->items.
    t64->save( ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t70->cval = t71.
    ENDIF.
    t64->load( ).
    APPEND t70 TO t64->items.
    t64->save( ).
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t74 = zcl_lnt_st_combi_module=>tok( i_t = t75 ).
    IF t74 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t77 TYPE REF TO object.
      t77 = t74.
      TRY.
          t73 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t76 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t73 = t76->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    t64->load( ).
    APPEND t73 TO t64->items.
    t64->save( ).
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t56 i_second = t62 i_rest = t64 ).
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = |DEC|.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t53 IS BOUND.
      DATA t93 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t94 TYPE REF TO object.
      t94 = t53.
      TRY.
          t91 ?= t94.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t91 IS NOT BOUND.
        TRY.
            t93 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t93 IS BOUND.
          t91 = t93->source( ).
        ENDIF.
        IF t91 IS NOT BOUND.
          CREATE OBJECT t91.
          t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t91->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t96.
    t86 = zcl_lnt_st_combi_module=>seq( i_first = t88 i_second = t91 i_rest = t96 ).
    IF t86 IS BOUND.
      DATA t101 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t102 TYPE REF TO object.
      t102 = t86.
      TRY.
          t85 ?= t102.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t101 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t101 IS BOUND.
          t85 = t101->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = |CURR|.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t53 IS BOUND.
      DATA t112 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t113 TYPE REF TO object.
      t113 = t53.
      TRY.
          t110 ?= t113.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t110 IS NOT BOUND.
        TRY.
            t112 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t112 IS BOUND.
          t110 = t112->source( ).
        ENDIF.
        IF t110 IS NOT BOUND.
          CREATE OBJECT t110.
          t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t110->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t115.
    t105 = zcl_lnt_st_combi_module=>seq( i_first = t107 i_second = t110 i_rest = t115 ).
    IF t105 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t121 TYPE REF TO object.
      t121 = t105.
      TRY.
          t104 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t104 IS NOT BOUND.
        TRY.
            t120 ?= t105.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t104 = t120->source( ).
        ENDIF.
        IF t104 IS NOT BOUND.
          CREATE OBJECT t104.
          t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t104->oval = t105.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t122.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = |QUAN|.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t53 IS BOUND.
      DATA t133 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t134 TYPE REF TO object.
      t134 = t53.
      TRY.
          t131 ?= t134.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t133 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t133 IS BOUND.
          t131 = t133->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t136.
    t126 = zcl_lnt_st_combi_module=>seq( i_first = t128 i_second = t131 i_rest = t136 ).
    IF t126 IS BOUND.
      DATA t141 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t142 TYPE REF TO object.
      t142 = t126.
      TRY.
          t125 ?= t142.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t125 IS NOT BOUND.
        TRY.
            t141 ?= t126.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t141 IS BOUND.
          t125 = t141->source( ).
        ENDIF.
        IF t125 IS NOT BOUND.
          CREATE OBJECT t125.
          t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t125->oval = t126.
        ENDIF.
      ENDIF.
    ENDIF.
    t122->load( ).
    APPEND t125 TO t122->items.
    t122->save( ).
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t144.
    t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t144->sval = |D16N|.
    t122->load( ).
    APPEND t144 TO t122->items.
    t122->save( ).
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t147.
    t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t147->sval = |D34N|.
    t122->load( ).
    APPEND t147 TO t122->items.
    t122->save( ).
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t150.
    t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t150->sval = |FLTP|.
    t122->load( ).
    APPEND t150 TO t122->items.
    t122->save( ).
    t82 = zcl_lnt_st_combi_module=>alt_prio( i_first = t85 i_second = t104 i_rest = t122 ).
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t159.
    t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t159->sval = |COUNT|.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t163 = zcl_lnt_sql_aggregation_module=>lparen.
    IF t163 IS BOUND.
      DATA t164 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t165 TYPE REF TO object.
      t165 = t163.
      TRY.
          t162 ?= t165.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t162 IS NOT BOUND.
        TRY.
            t164 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t164 IS BOUND.
          t162 = t164->source( ).
        ENDIF.
        IF t162 IS NOT BOUND.
          CREATE OBJECT t162.
          t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t162->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t166.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t171.
    t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t171->sval = |DISTINCT|.
    t170 = zcl_lnt_st_combi_module=>opt_prio( i_first = t171 ).
    IF t170 IS BOUND.
      DATA t173 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t174 TYPE REF TO object.
      t174 = t170.
      TRY.
          t169 ?= t174.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t169 IS NOT BOUND.
        TRY.
            t173 ?= t170.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t173 IS BOUND.
          t169 = t173->source( ).
        ENDIF.
        IF t169 IS NOT BOUND.
          CREATE OBJECT t169.
          t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t169->oval = t170.
        ENDIF.
      ENDIF.
    ENDIF.
    t166->load( ).
    APPEND t169 TO t166->items.
    t166->save( ).
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t179.
    t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t179->sval = |*|.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t184 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t185 TYPE REF TO object.
      t185 = t1.
      TRY.
          t182 ?= t185.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t184 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t184 IS BOUND.
          t182 = t184->source( ).
        ENDIF.
        IF t182 IS NOT BOUND.
          CREATE OBJECT t182.
          t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t182->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t187.
    t177 = zcl_lnt_st_combi_module=>alt_prio( i_first = t179 i_second = t182 i_rest = t187 ).
    IF t177 IS BOUND.
      DATA t192 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t193 TYPE REF TO object.
      t193 = t177.
      TRY.
          t176 ?= t193.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t176 IS NOT BOUND.
        TRY.
            t192 ?= t177.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t192 IS BOUND.
          t176 = t192->source( ).
        ENDIF.
        IF t176 IS NOT BOUND.
          CREATE OBJECT t176.
          t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t176->oval = t177.
        ENDIF.
      ENDIF.
    ENDIF.
    t166->load( ).
    APPEND t176 TO t166->items.
    t166->save( ).
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t196 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t196 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t196 IS BOUND.
      DATA t197 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t198 TYPE REF TO object.
      t198 = t196.
      TRY.
          t195 ?= t198.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t195 IS NOT BOUND.
        TRY.
            t197 ?= t196.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t197 IS BOUND.
          t195 = t197->source( ).
        ENDIF.
        IF t195 IS NOT BOUND.
          CREATE OBJECT t195.
          t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t195->oval = t196.
        ENDIF.
      ENDIF.
    ENDIF.
    t166->load( ).
    APPEND t195 TO t166->items.
    t166->save( ).
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t203) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    IF t203 IS BOUND.
      CREATE OBJECT t202.
      t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t202->cval = t203.
    ENDIF.
    t201 = zcl_lnt_st_combi_module=>opt_prio( i_first = t202 ).
    IF t201 IS BOUND.
      DATA t204 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t205 TYPE REF TO object.
      t205 = t201.
      TRY.
          t200 ?= t205.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t204 ?= t201.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t204 IS BOUND.
          t200 = t204->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t201.
        ENDIF.
      ENDIF.
    ENDIF.
    t166->load( ).
    APPEND t200 TO t166->items.
    t166->save( ).
    t156 = zcl_lnt_st_combi_module=>seq( i_first = t159 i_second = t162 i_rest = t166 ).
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t213.
    t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t213->sval = |MAX|.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t217 = zcl_lnt_sql_aggregation_module=>lparen.
    IF t217 IS BOUND.
      DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t219 TYPE REF TO object.
      t219 = t217.
      TRY.
          t216 ?= t219.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t216 IS NOT BOUND.
        TRY.
            t218 ?= t217.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t218 IS BOUND.
          t216 = t218->source( ).
        ENDIF.
        IF t216 IS NOT BOUND.
          CREATE OBJECT t216.
          t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t216->oval = t217.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t220.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t225.
    t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t225->sval = |DISTINCT|.
    t224 = zcl_lnt_st_combi_module=>opt_prio( i_first = t225 ).
    IF t224 IS BOUND.
      DATA t227 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t228 TYPE REF TO object.
      t228 = t224.
      TRY.
          t223 ?= t228.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t223 IS NOT BOUND.
        TRY.
            t227 ?= t224.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t227 IS BOUND.
          t223 = t227->source( ).
        ENDIF.
        IF t223 IS NOT BOUND.
          CREATE OBJECT t223.
          t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t223->oval = t224.
        ENDIF.
      ENDIF.
    ENDIF.
    t220->load( ).
    APPEND t223 TO t220->items.
    t220->save( ).
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t232 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t233 TYPE REF TO object.
      t233 = t1.
      TRY.
          t230 ?= t233.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t230 IS NOT BOUND.
        TRY.
            t232 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t232 IS BOUND.
          t230 = t232->source( ).
        ENDIF.
        IF t230 IS NOT BOUND.
          CREATE OBJECT t230.
          t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t230->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t220->load( ).
    APPEND t230 TO t220->items.
    t220->save( ).
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t236 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t236 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t236 IS BOUND.
      DATA t237 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t238 TYPE REF TO object.
      t238 = t236.
      TRY.
          t235 ?= t238.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t235 IS NOT BOUND.
        TRY.
            t237 ?= t236.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t237 IS BOUND.
          t235 = t237->source( ).
        ENDIF.
        IF t235 IS NOT BOUND.
          CREATE OBJECT t235.
          t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t235->oval = t236.
        ENDIF.
      ENDIF.
    ENDIF.
    t220->load( ).
    APPEND t235 TO t220->items.
    t220->save( ).
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t243) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    IF t243 IS BOUND.
      CREATE OBJECT t242.
      t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t242->cval = t243.
    ENDIF.
    t241 = zcl_lnt_st_combi_module=>opt_prio( i_first = t242 ).
    IF t241 IS BOUND.
      DATA t244 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t245 TYPE REF TO object.
      t245 = t241.
      TRY.
          t240 ?= t245.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t240 IS NOT BOUND.
        TRY.
            t244 ?= t241.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t244 IS BOUND.
          t240 = t244->source( ).
        ENDIF.
        IF t240 IS NOT BOUND.
          CREATE OBJECT t240.
          t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t240->oval = t241.
        ENDIF.
      ENDIF.
    ENDIF.
    t220->load( ).
    APPEND t240 TO t220->items.
    t220->save( ).
    t210 = zcl_lnt_st_combi_module=>seq( i_first = t213 i_second = t216 i_rest = t220 ).
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t253.
    t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t253->sval = |MIN|.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t257 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t257 = zcl_lnt_sql_aggregation_module=>lparen.
    IF t257 IS BOUND.
      DATA t258 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t259 TYPE REF TO object.
      t259 = t257.
      TRY.
          t256 ?= t259.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t256 IS NOT BOUND.
        TRY.
            t258 ?= t257.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t258 IS BOUND.
          t256 = t258->source( ).
        ENDIF.
        IF t256 IS NOT BOUND.
          CREATE OBJECT t256.
          t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t256->oval = t257.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t260.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t264 TYPE REF TO zif_lnt_statement_runnable.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t265.
    t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t265->sval = |DISTINCT|.
    t264 = zcl_lnt_st_combi_module=>opt_prio( i_first = t265 ).
    IF t264 IS BOUND.
      DATA t267 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t268 TYPE REF TO object.
      t268 = t264.
      TRY.
          t263 ?= t268.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t263 IS NOT BOUND.
        TRY.
            t267 ?= t264.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t267 IS BOUND.
          t263 = t267->source( ).
        ENDIF.
        IF t263 IS NOT BOUND.
          CREATE OBJECT t263.
          t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t263->oval = t264.
        ENDIF.
      ENDIF.
    ENDIF.
    t260->load( ).
    APPEND t263 TO t260->items.
    t260->save( ).
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t272 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t273 TYPE REF TO object.
      t273 = t1.
      TRY.
          t270 ?= t273.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t270 IS NOT BOUND.
        TRY.
            t272 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t272 IS BOUND.
          t270 = t272->source( ).
        ENDIF.
        IF t270 IS NOT BOUND.
          CREATE OBJECT t270.
          t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t270->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t260->load( ).
    APPEND t270 TO t260->items.
    t260->save( ).
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t276 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t276 IS BOUND.
      DATA t277 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t278 TYPE REF TO object.
      t278 = t276.
      TRY.
          t275 ?= t278.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t275 IS NOT BOUND.
        TRY.
            t277 ?= t276.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t277 IS BOUND.
          t275 = t277->source( ).
        ENDIF.
        IF t275 IS NOT BOUND.
          CREATE OBJECT t275.
          t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t275->oval = t276.
        ENDIF.
      ENDIF.
    ENDIF.
    t260->load( ).
    APPEND t275 TO t260->items.
    t260->save( ).
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t283) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    IF t283 IS BOUND.
      CREATE OBJECT t282.
      t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t282->cval = t283.
    ENDIF.
    t281 = zcl_lnt_st_combi_module=>opt_prio( i_first = t282 ).
    IF t281 IS BOUND.
      DATA t284 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t285 TYPE REF TO object.
      t285 = t281.
      TRY.
          t280 ?= t285.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t280 IS NOT BOUND.
        TRY.
            t284 ?= t281.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t284 IS BOUND.
          t280 = t284->source( ).
        ENDIF.
        IF t280 IS NOT BOUND.
          CREATE OBJECT t280.
          t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t280->oval = t281.
        ENDIF.
      ENDIF.
    ENDIF.
    t260->load( ).
    APPEND t280 TO t260->items.
    t260->save( ).
    t250 = zcl_lnt_st_combi_module=>seq( i_first = t253 i_second = t256 i_rest = t260 ).
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t293.
    t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t293->sval = |SUM|.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t297 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t297 = zcl_lnt_sql_aggregation_module=>lparen.
    IF t297 IS BOUND.
      DATA t298 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t299 TYPE REF TO object.
      t299 = t297.
      TRY.
          t296 ?= t299.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t296 IS NOT BOUND.
        TRY.
            t298 ?= t297.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t298 IS BOUND.
          t296 = t298->source( ).
        ENDIF.
        IF t296 IS NOT BOUND.
          CREATE OBJECT t296.
          t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t296->oval = t297.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t300.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t305.
    t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t305->sval = |DISTINCT|.
    t304 = zcl_lnt_st_combi_module=>opt_prio( i_first = t305 ).
    IF t304 IS BOUND.
      DATA t307 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t308 TYPE REF TO object.
      t308 = t304.
      TRY.
          t303 ?= t308.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t303 IS NOT BOUND.
        TRY.
            t307 ?= t304.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t307 IS BOUND.
          t303 = t307->source( ).
        ENDIF.
        IF t303 IS NOT BOUND.
          CREATE OBJECT t303.
          t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t303->oval = t304.
        ENDIF.
      ENDIF.
    ENDIF.
    t300->load( ).
    APPEND t303 TO t300->items.
    t300->save( ).
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t312 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t313 TYPE REF TO object.
      t313 = t1.
      TRY.
          t310 ?= t313.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t310 IS NOT BOUND.
        TRY.
            t312 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t312 IS BOUND.
          t310 = t312->source( ).
        ENDIF.
        IF t310 IS NOT BOUND.
          CREATE OBJECT t310.
          t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t310->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t300->load( ).
    APPEND t310 TO t300->items.
    t300->save( ).
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t316 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t316 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t316 IS BOUND.
      DATA t317 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t318 TYPE REF TO object.
      t318 = t316.
      TRY.
          t315 ?= t318.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t315 IS NOT BOUND.
        TRY.
            t317 ?= t316.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t317 IS BOUND.
          t315 = t317->source( ).
        ENDIF.
        IF t315 IS NOT BOUND.
          CREATE OBJECT t315.
          t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t315->oval = t316.
        ENDIF.
      ENDIF.
    ENDIF.
    t300->load( ).
    APPEND t315 TO t300->items.
    t300->save( ).
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t321 TYPE REF TO zif_lnt_statement_runnable.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t323) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    IF t323 IS BOUND.
      CREATE OBJECT t322.
      t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t322->cval = t323.
    ENDIF.
    t321 = zcl_lnt_st_combi_module=>opt_prio( i_first = t322 ).
    IF t321 IS BOUND.
      DATA t324 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t325 TYPE REF TO object.
      t325 = t321.
      TRY.
          t320 ?= t325.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t320 IS NOT BOUND.
        TRY.
            t324 ?= t321.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t324 IS BOUND.
          t320 = t324->source( ).
        ENDIF.
        IF t320 IS NOT BOUND.
          CREATE OBJECT t320.
          t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t320->oval = t321.
        ENDIF.
      ENDIF.
    ENDIF.
    t300->load( ).
    APPEND t320 TO t300->items.
    t300->save( ).
    t290 = zcl_lnt_st_combi_module=>seq( i_first = t293 i_second = t296 i_rest = t300 ).
    DATA t330 TYPE REF TO zif_lnt_statement_runnable.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t333.
    t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t333->sval = |AVG|.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t338) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t337 = zcl_lnt_st_combi_module=>tok( i_t = t338 ).
    IF t337 IS BOUND.
      DATA t339 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t340 TYPE REF TO object.
      t340 = t337.
      TRY.
          t336 ?= t340.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t336 IS NOT BOUND.
        TRY.
            t339 ?= t337.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t339 IS BOUND.
          t336 = t339->source( ).
        ENDIF.
        IF t336 IS NOT BOUND.
          CREATE OBJECT t336.
          t336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t336->oval = t337.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t341.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t345 TYPE REF TO zif_lnt_statement_runnable.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t346.
    t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t346->sval = |DISTINCT|.
    t345 = zcl_lnt_st_combi_module=>opt_prio( i_first = t346 ).
    IF t345 IS BOUND.
      DATA t348 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t349 TYPE REF TO object.
      t349 = t345.
      TRY.
          t344 ?= t349.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t344 IS NOT BOUND.
        TRY.
            t348 ?= t345.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t348 IS BOUND.
          t344 = t348->source( ).
        ENDIF.
        IF t344 IS NOT BOUND.
          CREATE OBJECT t344.
          t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t344->oval = t345.
        ENDIF.
      ENDIF.
    ENDIF.
    t341->load( ).
    APPEND t344 TO t341->items.
    t341->save( ).
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t353 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t354 TYPE REF TO object.
      t354 = t1.
      TRY.
          t351 ?= t354.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t351 IS NOT BOUND.
        TRY.
            t353 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t353 IS BOUND.
          t351 = t353->source( ).
        ENDIF.
        IF t351 IS NOT BOUND.
          CREATE OBJECT t351.
          t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t351->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t341->load( ).
    APPEND t351 TO t341->items.
    t341->save( ).
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t357 TYPE REF TO zif_lnt_statement_runnable.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t361 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t361 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v751| ).
    IF t361 IS BOUND.
      DATA t365 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t366 TYPE REF TO object.
      t366 = t361.
      TRY.
          t360 ?= t366.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t360 IS NOT BOUND.
        TRY.
            t365 ?= t361.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t365 IS BOUND.
          t360 = t365->source( ).
        ENDIF.
        IF t360 IS NOT BOUND.
          CREATE OBJECT t360.
          t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t360->oval = t361.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t368 TYPE REF TO zif_lnt_statement_runnable.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t370.
    t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t370->sval = |AS|.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t82 IS BOUND.
      DATA t375 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t376 TYPE REF TO object.
      t376 = t82.
      TRY.
          t373 ?= t376.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t373 IS NOT BOUND.
        TRY.
            t375 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t375 IS BOUND.
          t373 = t375->source( ).
        ENDIF.
        IF t373 IS NOT BOUND.
          CREATE OBJECT t373.
          t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t373->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t378 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t378.
    t368 = zcl_lnt_st_combi_module=>seq( i_first = t370 i_second = t373 i_rest = t378 ).
    IF t368 IS BOUND.
      DATA t383 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t384 TYPE REF TO object.
      t384 = t368.
      TRY.
          t367 ?= t384.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t367 IS NOT BOUND.
        TRY.
            t383 ?= t368.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t383 IS BOUND.
          t367 = t383->source( ).
        ENDIF.
        IF t367 IS NOT BOUND.
          CREATE OBJECT t367.
          t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t367->oval = t368.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t385 TYPE REF TO zcl_lnt_iver_options.
    t359 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t360 i_first = t367 i_opts = t385 ).
    IF t359 IS BOUND.
      DATA t386 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t387 TYPE REF TO object.
      t387 = t359.
      TRY.
          t358 ?= t387.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t358 IS NOT BOUND.
        TRY.
            t386 ?= t359.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t386 IS BOUND.
          t358 = t386->source( ).
        ENDIF.
        IF t358 IS NOT BOUND.
          CREATE OBJECT t358.
          t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t358->oval = t359.
        ENDIF.
      ENDIF.
    ENDIF.
    t357 = zcl_lnt_st_combi_module=>opt_prio( i_first = t358 ).
    IF t357 IS BOUND.
      DATA t388 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t389 TYPE REF TO object.
      t389 = t357.
      TRY.
          t356 ?= t389.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t356 IS NOT BOUND.
        TRY.
            t388 ?= t357.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t388 IS BOUND.
          t356 = t388->source( ).
        ENDIF.
        IF t356 IS NOT BOUND.
          CREATE OBJECT t356.
          t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t356->oval = t357.
        ENDIF.
      ENDIF.
    ENDIF.
    t341->load( ).
    APPEND t356 TO t341->items.
    t341->save( ).
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27 IS BOUND.
      DATA t393 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t394 TYPE REF TO object.
      t394 = t27.
      TRY.
          t391 ?= t394.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t391 IS NOT BOUND.
        TRY.
            t393 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t393 IS BOUND.
          t391 = t393->source( ).
        ENDIF.
        IF t391 IS NOT BOUND.
          CREATE OBJECT t391.
          t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t391->oval = t27.
        ENDIF.
      ENDIF.
    ENDIF.
    t341->load( ).
    APPEND t391 TO t341->items.
    t341->save( ).
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t397 TYPE REF TO zif_lnt_statement_runnable.
    DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t399) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    IF t399 IS BOUND.
      CREATE OBJECT t398.
      t398->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t398->cval = t399.
    ENDIF.
    t397 = zcl_lnt_st_combi_module=>opt_prio( i_first = t398 ).
    IF t397 IS BOUND.
      DATA t400 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t401 TYPE REF TO object.
      t401 = t397.
      TRY.
          t396 ?= t401.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t396 IS NOT BOUND.
        TRY.
            t400 ?= t397.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t400 IS BOUND.
          t396 = t400->source( ).
        ENDIF.
        IF t396 IS NOT BOUND.
          CREATE OBJECT t396.
          t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t396->oval = t397.
        ENDIF.
      ENDIF.
    ENDIF.
    t341->load( ).
    APPEND t396 TO t341->items.
    t341->save( ).
    t330 = zcl_lnt_st_combi_module=>seq( i_first = t333 i_second = t336 i_rest = t341 ).
    DATA t406 TYPE REF TO zif_lnt_statement_runnable.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t409 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t409 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t409 IS BOUND.
      DATA t413 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t414 TYPE REF TO object.
      t414 = t409.
      TRY.
          t408 ?= t414.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t408 IS NOT BOUND.
        TRY.
            t413 ?= t409.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t413 IS BOUND.
          t408 = t413->source( ).
        ENDIF.
        IF t408 IS NOT BOUND.
          CREATE OBJECT t408.
          t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t408->oval = t409.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t416 TYPE REF TO zif_lnt_statement_runnable.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t419 TYPE REF TO zif_lnt_statement_runnable.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t421.
    t421->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t421->sval = |ROW_NUMBER|.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t424.
    t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t424->sval = |RANK|.
    DATA t426 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t426.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t429.
    t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t429->sval = |DENSE_RANK|.
    t426->load( ).
    APPEND t429 TO t426->items.
    t426->save( ).
    t419 = zcl_lnt_st_combi_module=>alt_prio( i_first = t421 i_second = t424 i_rest = t426 ).
    IF t419 IS BOUND.
      DATA t435 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t436 TYPE REF TO object.
      t436 = t419.
      TRY.
          t418 ?= t436.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t418 IS NOT BOUND.
        TRY.
            t435 ?= t419.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t435 IS BOUND.
          t418 = t435->source( ).
        ENDIF.
        IF t418 IS NOT BOUND.
          CREATE OBJECT t418.
          t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t418->oval = t419.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t439 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t439 = zcl_lnt_sql_aggregation_module=>lparen.
    IF t439 IS BOUND.
      DATA t440 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t441 TYPE REF TO object.
      t441 = t439.
      TRY.
          t438 ?= t441.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t438 IS NOT BOUND.
        TRY.
            t440 ?= t439.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t440 IS BOUND.
          t438 = t440->source( ).
        ENDIF.
        IF t438 IS NOT BOUND.
          CREATE OBJECT t438.
          t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t438->oval = t439.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t442 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t442.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t446 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t446 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t446 IS BOUND.
      DATA t447 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t448 TYPE REF TO object.
      t448 = t446.
      TRY.
          t445 ?= t448.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t445 IS NOT BOUND.
        TRY.
            t447 ?= t446.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t447 IS BOUND.
          t445 = t447->source( ).
        ENDIF.
        IF t445 IS NOT BOUND.
          CREATE OBJECT t445.
          t445->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t445->oval = t446.
        ENDIF.
      ENDIF.
    ENDIF.
    t442->load( ).
    APPEND t445 TO t442->items.
    t442->save( ).
    DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t451) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    IF t451 IS BOUND.
      CREATE OBJECT t450.
      t450->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t450->cval = t451.
    ENDIF.
    t442->load( ).
    APPEND t450 TO t442->items.
    t442->save( ).
    t416 = zcl_lnt_st_combi_module=>seq( i_first = t418 i_second = t438 i_rest = t442 ).
    IF t416 IS BOUND.
      DATA t456 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t457 TYPE REF TO object.
      t457 = t416.
      TRY.
          t415 ?= t457.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t415 IS NOT BOUND.
        TRY.
            t456 ?= t416.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t456 IS BOUND.
          t415 = t456->source( ).
        ENDIF.
        IF t415 IS NOT BOUND.
          CREATE OBJECT t415.
          t415->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t415->oval = t416.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t458 TYPE REF TO zcl_lnt_iver_options.
    t406 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t408 i_first = t415 i_opts = t458 ).
    DATA t459 TYPE REF TO zif_lnt_statement_runnable.
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t462 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t462 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t462 IS BOUND.
      DATA t466 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t467 TYPE REF TO object.
      t467 = t462.
      TRY.
          t461 ?= t467.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t461 IS NOT BOUND.
        TRY.
            t466 ?= t462.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t466 IS BOUND.
          t461 = t466->source( ).
        ENDIF.
        IF t461 IS NOT BOUND.
          CREATE OBJECT t461.
          t461->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t461->oval = t462.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t469 TYPE REF TO zif_lnt_statement_runnable.
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t472 TYPE REF TO zif_lnt_statement_runnable.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t474.
    t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t474->sval = |LEAD|.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t477.
    t477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t477->sval = |LAG|.
    DATA t480 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t480.
    t472 = zcl_lnt_st_combi_module=>alt_prio( i_first = t474 i_second = t477 i_rest = t480 ).
    IF t472 IS BOUND.
      DATA t485 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t486 TYPE REF TO object.
      t486 = t472.
      TRY.
          t471 ?= t486.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t471 IS NOT BOUND.
        TRY.
            t485 ?= t472.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t485 IS BOUND.
          t471 = t485->source( ).
        ENDIF.
        IF t471 IS NOT BOUND.
          CREATE OBJECT t471.
          t471->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t471->oval = t472.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t489 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t490) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t489 = zcl_lnt_st_combi_module=>tok( i_t = t490 ).
    IF t489 IS BOUND.
      DATA t491 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t492 TYPE REF TO object.
      t492 = t489.
      TRY.
          t488 ?= t492.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t488 IS NOT BOUND.
        TRY.
            t491 ?= t489.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t491 IS BOUND.
          t488 = t491->source( ).
        ENDIF.
        IF t488 IS NOT BOUND.
          CREATE OBJECT t488.
          t488->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t488->oval = t489.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t493 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t493.
    DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t497) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t497 IS BOUND.
      CREATE OBJECT t496.
      t496->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t496->cval = t497.
    ENDIF.
    t493->load( ).
    APPEND t496 TO t493->items.
    t493->save( ).
    DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t500 TYPE REF TO zif_lnt_statement_runnable.
    DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t502 TYPE REF TO zif_lnt_statement_runnable.
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t504.
    t504->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t504->sval = |,|.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t508) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t508 IS BOUND.
      CREATE OBJECT t507.
      t507->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t507->cval = t508.
    ENDIF.
    DATA t509 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t509.
    DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t513 TYPE REF TO zif_lnt_statement_runnable.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t515 TYPE REF TO zif_lnt_statement_runnable.
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t517.
    t517->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t517->sval = |,|.
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t521) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t521 IS BOUND.
      CREATE OBJECT t520.
      t520->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t520->cval = t521.
    ENDIF.
    DATA t523 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t523.
    t515 = zcl_lnt_st_combi_module=>seq( i_first = t517 i_second = t520 i_rest = t523 ).
    IF t515 IS BOUND.
      DATA t528 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t529 TYPE REF TO object.
      t529 = t515.
      TRY.
          t514 ?= t529.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t514 IS NOT BOUND.
        TRY.
            t528 ?= t515.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t528 IS BOUND.
          t514 = t528->source( ).
        ENDIF.
        IF t514 IS NOT BOUND.
          CREATE OBJECT t514.
          t514->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t514->oval = t515.
        ENDIF.
      ENDIF.
    ENDIF.
    t513 = zcl_lnt_st_combi_module=>opt_prio( i_first = t514 ).
    IF t513 IS BOUND.
      DATA t530 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t531 TYPE REF TO object.
      t531 = t513.
      TRY.
          t512 ?= t531.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t512 IS NOT BOUND.
        TRY.
            t530 ?= t513.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t530 IS BOUND.
          t512 = t530->source( ).
        ENDIF.
        IF t512 IS NOT BOUND.
          CREATE OBJECT t512.
          t512->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t512->oval = t513.
        ENDIF.
      ENDIF.
    ENDIF.
    t509->load( ).
    APPEND t512 TO t509->items.
    t509->save( ).
    t502 = zcl_lnt_st_combi_module=>seq( i_first = t504 i_second = t507 i_rest = t509 ).
    IF t502 IS BOUND.
      DATA t536 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t537 TYPE REF TO object.
      t537 = t502.
      TRY.
          t501 ?= t537.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t501 IS NOT BOUND.
        TRY.
            t536 ?= t502.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t536 IS BOUND.
          t501 = t536->source( ).
        ENDIF.
        IF t501 IS NOT BOUND.
          CREATE OBJECT t501.
          t501->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t501->oval = t502.
        ENDIF.
      ENDIF.
    ENDIF.
    t500 = zcl_lnt_st_combi_module=>opt_prio( i_first = t501 ).
    IF t500 IS BOUND.
      DATA t538 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t539 TYPE REF TO object.
      t539 = t500.
      TRY.
          t499 ?= t539.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t499 IS NOT BOUND.
        TRY.
            t538 ?= t500.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t538 IS BOUND.
          t499 = t538->source( ).
        ENDIF.
        IF t499 IS NOT BOUND.
          CREATE OBJECT t499.
          t499->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t499->oval = t500.
        ENDIF.
      ENDIF.
    ENDIF.
    t493->load( ).
    APPEND t499 TO t493->items.
    t493->save( ).
    DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t542 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t542 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t542 IS BOUND.
      DATA t543 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t544 TYPE REF TO object.
      t544 = t542.
      TRY.
          t541 ?= t544.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t541 IS NOT BOUND.
        TRY.
            t543 ?= t542.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t543 IS BOUND.
          t541 = t543->source( ).
        ENDIF.
        IF t541 IS NOT BOUND.
          CREATE OBJECT t541.
          t541->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t541->oval = t542.
        ENDIF.
      ENDIF.
    ENDIF.
    t493->load( ).
    APPEND t541 TO t493->items.
    t493->save( ).
    DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t547) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    IF t547 IS BOUND.
      CREATE OBJECT t546.
      t546->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t546->cval = t547.
    ENDIF.
    t493->load( ).
    APPEND t546 TO t493->items.
    t493->save( ).
    t469 = zcl_lnt_st_combi_module=>seq( i_first = t471 i_second = t488 i_rest = t493 ).
    IF t469 IS BOUND.
      DATA t552 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t553 TYPE REF TO object.
      t553 = t469.
      TRY.
          t468 ?= t553.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t468 IS NOT BOUND.
        TRY.
            t552 ?= t469.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t552 IS BOUND.
          t468 = t552->source( ).
        ENDIF.
        IF t468 IS NOT BOUND.
          CREATE OBJECT t468.
          t468->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t468->oval = t469.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t554 TYPE REF TO zcl_lnt_iver_options.
    t459 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t461 i_first = t468 i_opts = t554 ).
    DATA t555 TYPE REF TO zif_lnt_statement_runnable.
    DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t558 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t558 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t558 IS BOUND.
      DATA t562 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t563 TYPE REF TO object.
      t563 = t558.
      TRY.
          t557 ?= t563.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t557 IS NOT BOUND.
        TRY.
            t562 ?= t558.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t562 IS BOUND.
          t557 = t562->source( ).
        ENDIF.
        IF t557 IS NOT BOUND.
          CREATE OBJECT t557.
          t557->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t557->oval = t558.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t565 TYPE REF TO zif_lnt_statement_runnable.
    DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t568 TYPE REF TO zif_lnt_statement_runnable.
    DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t570.
    t570->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t570->sval = |FIRST_VALUE|.
    DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t573.
    t573->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t573->sval = |LAST_VALUE|.
    DATA t576 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t576.
    t568 = zcl_lnt_st_combi_module=>alt_prio( i_first = t570 i_second = t573 i_rest = t576 ).
    IF t568 IS BOUND.
      DATA t581 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t582 TYPE REF TO object.
      t582 = t568.
      TRY.
          t567 ?= t582.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t567 IS NOT BOUND.
        TRY.
            t581 ?= t568.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t581 IS BOUND.
          t567 = t581->source( ).
        ENDIF.
        IF t567 IS NOT BOUND.
          CREATE OBJECT t567.
          t567->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t567->oval = t568.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t585 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t586) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t585 = zcl_lnt_st_combi_module=>tok( i_t = t586 ).
    IF t585 IS BOUND.
      DATA t587 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t588 TYPE REF TO object.
      t588 = t585.
      TRY.
          t584 ?= t588.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t584 IS NOT BOUND.
        TRY.
            t587 ?= t585.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t587 IS BOUND.
          t584 = t587->source( ).
        ENDIF.
        IF t584 IS NOT BOUND.
          CREATE OBJECT t584.
          t584->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t584->oval = t585.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t589 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t589.
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t593) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t593 IS BOUND.
      CREATE OBJECT t592.
      t592->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t592->cval = t593.
    ENDIF.
    t589->load( ).
    APPEND t592 TO t589->items.
    t589->save( ).
    DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t596 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t596 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t596 IS BOUND.
      DATA t597 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t598 TYPE REF TO object.
      t598 = t596.
      TRY.
          t595 ?= t598.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t595 IS NOT BOUND.
        TRY.
            t597 ?= t596.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t597 IS BOUND.
          t595 = t597->source( ).
        ENDIF.
        IF t595 IS NOT BOUND.
          CREATE OBJECT t595.
          t595->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t595->oval = t596.
        ENDIF.
      ENDIF.
    ENDIF.
    t589->load( ).
    APPEND t595 TO t589->items.
    t589->save( ).
    DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t601) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    IF t601 IS BOUND.
      CREATE OBJECT t600.
      t600->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t600->cval = t601.
    ENDIF.
    t589->load( ).
    APPEND t600 TO t589->items.
    t589->save( ).
    t565 = zcl_lnt_st_combi_module=>seq( i_first = t567 i_second = t584 i_rest = t589 ).
    IF t565 IS BOUND.
      DATA t606 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t607 TYPE REF TO object.
      t607 = t565.
      TRY.
          t564 ?= t607.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t564 IS NOT BOUND.
        TRY.
            t606 ?= t565.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t606 IS BOUND.
          t564 = t606->source( ).
        ENDIF.
        IF t564 IS NOT BOUND.
          CREATE OBJECT t564.
          t564->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t564->oval = t565.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t608 TYPE REF TO zcl_lnt_iver_options.
    t555 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t557 i_first = t564 i_opts = t608 ).
    DATA t609 TYPE REF TO zif_lnt_statement_runnable.
    DATA t611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t612 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t612 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t612 IS BOUND.
      DATA t616 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t617 TYPE REF TO object.
      t617 = t612.
      TRY.
          t611 ?= t617.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t611 IS NOT BOUND.
        TRY.
            t616 ?= t612.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t616 IS BOUND.
          t611 = t616->source( ).
        ENDIF.
        IF t611 IS NOT BOUND.
          CREATE OBJECT t611.
          t611->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t611->oval = t612.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t619 TYPE REF TO zif_lnt_statement_runnable.
    DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t621.
    t621->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t621->sval = |STRING_AGG|.
    DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t625 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t626) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t625 = zcl_lnt_st_combi_module=>tok( i_t = t626 ).
    IF t625 IS BOUND.
      DATA t627 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t628 TYPE REF TO object.
      t628 = t625.
      TRY.
          t624 ?= t628.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t624 IS NOT BOUND.
        TRY.
            t627 ?= t625.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t627 IS BOUND.
          t624 = t627->source( ).
        ENDIF.
        IF t624 IS NOT BOUND.
          CREATE OBJECT t624.
          t624->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t624->oval = t625.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t629 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t629.
    DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t633) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t633 IS BOUND.
      CREATE OBJECT t632.
      t632->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t632->cval = t633.
    ENDIF.
    t629->load( ).
    APPEND t632 TO t629->items.
    t629->save( ).
    DATA t635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t636 TYPE REF TO zif_lnt_statement_runnable.
    DATA t637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t638 TYPE REF TO zif_lnt_statement_runnable.
    DATA t640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t640.
    t640->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t640->sval = |,|.
    DATA t643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t644) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t644 IS BOUND.
      CREATE OBJECT t643.
      t643->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t643->cval = t644.
    ENDIF.
    DATA t646 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t646.
    t638 = zcl_lnt_st_combi_module=>seq( i_first = t640 i_second = t643 i_rest = t646 ).
    IF t638 IS BOUND.
      DATA t651 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t652 TYPE REF TO object.
      t652 = t638.
      TRY.
          t637 ?= t652.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t637 IS NOT BOUND.
        TRY.
            t651 ?= t638.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t651 IS BOUND.
          t637 = t651->source( ).
        ENDIF.
        IF t637 IS NOT BOUND.
          CREATE OBJECT t637.
          t637->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t637->oval = t638.
        ENDIF.
      ENDIF.
    ENDIF.
    t636 = zcl_lnt_st_combi_module=>opt_prio( i_first = t637 ).
    IF t636 IS BOUND.
      DATA t653 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t654 TYPE REF TO object.
      t654 = t636.
      TRY.
          t635 ?= t654.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t635 IS NOT BOUND.
        TRY.
            t653 ?= t636.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t653 IS BOUND.
          t635 = t653->source( ).
        ENDIF.
        IF t635 IS NOT BOUND.
          CREATE OBJECT t635.
          t635->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t635->oval = t636.
        ENDIF.
      ENDIF.
    ENDIF.
    t629->load( ).
    APPEND t635 TO t629->items.
    t629->save( ).
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t657 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t657 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t657 IS BOUND.
      DATA t658 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t659 TYPE REF TO object.
      t659 = t657.
      TRY.
          t656 ?= t659.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t656 IS NOT BOUND.
        TRY.
            t658 ?= t657.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t658 IS BOUND.
          t656 = t658->source( ).
        ENDIF.
        IF t656 IS NOT BOUND.
          CREATE OBJECT t656.
          t656->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t656->oval = t657.
        ENDIF.
      ENDIF.
    ENDIF.
    t629->load( ).
    APPEND t656 TO t629->items.
    t629->save( ).
    DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t662 TYPE REF TO zif_lnt_statement_runnable.
    DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t664) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    IF t664 IS BOUND.
      CREATE OBJECT t663.
      t663->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t663->cval = t664.
    ENDIF.
    t662 = zcl_lnt_st_combi_module=>opt_prio( i_first = t663 ).
    IF t662 IS BOUND.
      DATA t665 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t666 TYPE REF TO object.
      t666 = t662.
      TRY.
          t661 ?= t666.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t661 IS NOT BOUND.
        TRY.
            t665 ?= t662.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t665 IS BOUND.
          t661 = t665->source( ).
        ENDIF.
        IF t661 IS NOT BOUND.
          CREATE OBJECT t661.
          t661->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t661->oval = t662.
        ENDIF.
      ENDIF.
    ENDIF.
    t629->load( ).
    APPEND t661 TO t629->items.
    t629->save( ).
    t619 = zcl_lnt_st_combi_module=>seq( i_first = t621 i_second = t624 i_rest = t629 ).
    IF t619 IS BOUND.
      DATA t671 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t672 TYPE REF TO object.
      t672 = t619.
      TRY.
          t618 ?= t672.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t618 IS NOT BOUND.
        TRY.
            t671 ?= t619.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t671 IS BOUND.
          t618 = t671->source( ).
        ENDIF.
        IF t618 IS NOT BOUND.
          CREATE OBJECT t618.
          t618->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t618->oval = t619.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t673 TYPE REF TO zcl_lnt_iver_options.
    t609 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t611 i_first = t618 i_opts = t673 ).
    DATA t674 TYPE REF TO zif_lnt_statement_runnable.
    DATA t676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t677 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t677 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t677 IS BOUND.
      DATA t681 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t682 TYPE REF TO object.
      t682 = t677.
      TRY.
          t676 ?= t682.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t676 IS NOT BOUND.
        TRY.
            t681 ?= t677.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t681 IS BOUND.
          t676 = t681->source( ).
        ENDIF.
        IF t676 IS NOT BOUND.
          CREATE OBJECT t676.
          t676->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t676->oval = t677.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t684 TYPE REF TO zif_lnt_statement_runnable.
    DATA t686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t686.
    t686->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t686->sval = |NTILE|.
    DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t690 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t691) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t690 = zcl_lnt_st_combi_module=>tok( i_t = t691 ).
    IF t690 IS BOUND.
      DATA t692 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t693 TYPE REF TO object.
      t693 = t690.
      TRY.
          t689 ?= t693.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t689 IS NOT BOUND.
        TRY.
            t692 ?= t690.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t692 IS BOUND.
          t689 = t692->source( ).
        ENDIF.
        IF t689 IS NOT BOUND.
          CREATE OBJECT t689.
          t689->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t689->oval = t690.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t694 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t694.
    DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t698) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t698 IS BOUND.
      CREATE OBJECT t697.
      t697->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t697->cval = t698.
    ENDIF.
    t694->load( ).
    APPEND t697 TO t694->items.
    t694->save( ).
    DATA t700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t701 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t701 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t701 IS BOUND.
      DATA t702 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t703 TYPE REF TO object.
      t703 = t701.
      TRY.
          t700 ?= t703.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t700 IS NOT BOUND.
        TRY.
            t702 ?= t701.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t702 IS BOUND.
          t700 = t702->source( ).
        ENDIF.
        IF t700 IS NOT BOUND.
          CREATE OBJECT t700.
          t700->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t700->oval = t701.
        ENDIF.
      ENDIF.
    ENDIF.
    t694->load( ).
    APPEND t700 TO t694->items.
    t694->save( ).
    DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t706) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    IF t706 IS BOUND.
      CREATE OBJECT t705.
      t705->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t705->cval = t706.
    ENDIF.
    t694->load( ).
    APPEND t705 TO t694->items.
    t694->save( ).
    t684 = zcl_lnt_st_combi_module=>seq( i_first = t686 i_second = t689 i_rest = t694 ).
    IF t684 IS BOUND.
      DATA t711 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t712 TYPE REF TO object.
      t712 = t684.
      TRY.
          t683 ?= t712.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t683 IS NOT BOUND.
        TRY.
            t711 ?= t684.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t711 IS BOUND.
          t683 = t711->source( ).
        ENDIF.
        IF t683 IS NOT BOUND.
          CREATE OBJECT t683.
          t683->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t683->oval = t684.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t713 TYPE REF TO zcl_lnt_iver_options.
    t674 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t676 i_first = t683 i_opts = t713 ).
    DATA t714 TYPE REF TO zif_lnt_statement_runnable.
    DATA t716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t717 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t717 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t717 IS BOUND.
      DATA t721 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t722 TYPE REF TO object.
      t722 = t717.
      TRY.
          t716 ?= t722.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t716 IS NOT BOUND.
        TRY.
            t721 ?= t717.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t721 IS BOUND.
          t716 = t721->source( ).
        ENDIF.
        IF t716 IS NOT BOUND.
          CREATE OBJECT t716.
          t716->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t716->oval = t717.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t724 TYPE REF TO zif_lnt_statement_runnable.
    DATA t726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t727 TYPE REF TO zif_lnt_statement_runnable.
    DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t729.
    t729->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t729->sval = |CORR_SPEARMAN|.
    DATA t732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t732.
    t732->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t732->sval = |CORR|.
    DATA t735 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t735.
    t727 = zcl_lnt_st_combi_module=>alt_prio( i_first = t729 i_second = t732 i_rest = t735 ).
    IF t727 IS BOUND.
      DATA t740 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t741 TYPE REF TO object.
      t741 = t727.
      TRY.
          t726 ?= t741.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t726 IS NOT BOUND.
        TRY.
            t740 ?= t727.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t740 IS BOUND.
          t726 = t740->source( ).
        ENDIF.
        IF t726 IS NOT BOUND.
          CREATE OBJECT t726.
          t726->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t726->oval = t727.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t744 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t745) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t744 = zcl_lnt_st_combi_module=>tok( i_t = t745 ).
    IF t744 IS BOUND.
      DATA t746 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t747 TYPE REF TO object.
      t747 = t744.
      TRY.
          t743 ?= t747.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t743 IS NOT BOUND.
        TRY.
            t746 ?= t744.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t746 IS BOUND.
          t743 = t746->source( ).
        ENDIF.
        IF t743 IS NOT BOUND.
          CREATE OBJECT t743.
          t743->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t743->oval = t744.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t748 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t748.
    DATA t751 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t752) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t752 IS BOUND.
      CREATE OBJECT t751.
      t751->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t751->cval = t752.
    ENDIF.
    t748->load( ).
    APPEND t751 TO t748->items.
    t748->save( ).
    DATA t754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t754.
    t754->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t754->sval = |,|.
    t748->load( ).
    APPEND t754 TO t748->items.
    t748->save( ).
    DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t758) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t758 IS BOUND.
      CREATE OBJECT t757.
      t757->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t757->cval = t758.
    ENDIF.
    t748->load( ).
    APPEND t757 TO t748->items.
    t748->save( ).
    DATA t760 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t761 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t761 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t761 IS BOUND.
      DATA t762 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t763 TYPE REF TO object.
      t763 = t761.
      TRY.
          t760 ?= t763.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t760 IS NOT BOUND.
        TRY.
            t762 ?= t761.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t762 IS BOUND.
          t760 = t762->source( ).
        ENDIF.
        IF t760 IS NOT BOUND.
          CREATE OBJECT t760.
          t760->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t760->oval = t761.
        ENDIF.
      ENDIF.
    ENDIF.
    t748->load( ).
    APPEND t760 TO t748->items.
    t748->save( ).
    DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t766 TYPE REF TO zif_lnt_statement_runnable.
    DATA t767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t768) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    IF t768 IS BOUND.
      CREATE OBJECT t767.
      t767->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t767->cval = t768.
    ENDIF.
    t766 = zcl_lnt_st_combi_module=>opt_prio( i_first = t767 ).
    IF t766 IS BOUND.
      DATA t769 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t770 TYPE REF TO object.
      t770 = t766.
      TRY.
          t765 ?= t770.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t765 IS NOT BOUND.
        TRY.
            t769 ?= t766.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t769 IS BOUND.
          t765 = t769->source( ).
        ENDIF.
        IF t765 IS NOT BOUND.
          CREATE OBJECT t765.
          t765->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t765->oval = t766.
        ENDIF.
      ENDIF.
    ENDIF.
    t748->load( ).
    APPEND t765 TO t748->items.
    t748->save( ).
    t724 = zcl_lnt_st_combi_module=>seq( i_first = t726 i_second = t743 i_rest = t748 ).
    IF t724 IS BOUND.
      DATA t775 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t776 TYPE REF TO object.
      t776 = t724.
      TRY.
          t723 ?= t776.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t723 IS NOT BOUND.
        TRY.
            t775 ?= t724.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t775 IS BOUND.
          t723 = t775->source( ).
        ENDIF.
        IF t723 IS NOT BOUND.
          CREATE OBJECT t723.
          t723->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t723->oval = t724.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t777 TYPE REF TO zcl_lnt_iver_options.
    t714 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t716 i_first = t723 i_opts = t777 ).
    DATA t778 TYPE REF TO zif_lnt_statement_runnable.
    DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t781 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t781 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t781 IS BOUND.
      DATA t785 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t786 TYPE REF TO object.
      t786 = t781.
      TRY.
          t780 ?= t786.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t780 IS NOT BOUND.
        TRY.
            t785 ?= t781.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t785 IS BOUND.
          t780 = t785->source( ).
        ENDIF.
        IF t780 IS NOT BOUND.
          CREATE OBJECT t780.
          t780->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t780->oval = t781.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t788 TYPE REF TO zif_lnt_statement_runnable.
    DATA t790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t791 TYPE REF TO zif_lnt_statement_runnable.
    DATA t793 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t793.
    t793->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t793->sval = |PRODUCT|.
    DATA t796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t796.
    t796->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t796->sval = |MEDIAN|.
    DATA t798 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t798.
    DATA t801 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t801.
    t801->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t801->sval = |VAR|.
    t798->load( ).
    APPEND t801 TO t798->items.
    t798->save( ).
    DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t804.
    t804->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t804->sval = |STDDEV|.
    t798->load( ).
    APPEND t804 TO t798->items.
    t798->save( ).
    t791 = zcl_lnt_st_combi_module=>alt_prio( i_first = t793 i_second = t796 i_rest = t798 ).
    IF t791 IS BOUND.
      DATA t810 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t811 TYPE REF TO object.
      t811 = t791.
      TRY.
          t790 ?= t811.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t790 IS NOT BOUND.
        TRY.
            t810 ?= t791.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t810 IS BOUND.
          t790 = t810->source( ).
        ENDIF.
        IF t790 IS NOT BOUND.
          CREATE OBJECT t790.
          t790->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t790->oval = t791.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t814 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t815) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t814 = zcl_lnt_st_combi_module=>tok( i_t = t815 ).
    IF t814 IS BOUND.
      DATA t816 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t817 TYPE REF TO object.
      t817 = t814.
      TRY.
          t813 ?= t817.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t813 IS NOT BOUND.
        TRY.
            t816 ?= t814.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t816 IS BOUND.
          t813 = t816->source( ).
        ENDIF.
        IF t813 IS NOT BOUND.
          CREATE OBJECT t813.
          t813->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t813->oval = t814.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t818 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t818.
    DATA t821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t822) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t822 IS BOUND.
      CREATE OBJECT t821.
      t821->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t821->cval = t822.
    ENDIF.
    t818->load( ).
    APPEND t821 TO t818->items.
    t818->save( ).
    DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t825 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_aece59aa6618 = abap_false.
      zcl_lnt_sql_aggregation_module=>zlnt_builtin_init_9d9f9f91b60e( ).
    ENDIF.
    t825 = zcl_lnt_sql_aggregation_module=>rparen.
    IF t825 IS BOUND.
      DATA t826 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t827 TYPE REF TO object.
      t827 = t825.
      TRY.
          t824 ?= t827.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t824 IS NOT BOUND.
        TRY.
            t826 ?= t825.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t826 IS BOUND.
          t824 = t826->source( ).
        ENDIF.
        IF t824 IS NOT BOUND.
          CREATE OBJECT t824.
          t824->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t824->oval = t825.
        ENDIF.
      ENDIF.
    ENDIF.
    t818->load( ).
    APPEND t824 TO t818->items.
    t818->save( ).
    DATA t829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t830 TYPE REF TO zif_lnt_statement_runnable.
    DATA t831 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t832) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
    IF t832 IS BOUND.
      CREATE OBJECT t831.
      t831->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t831->cval = t832.
    ENDIF.
    t830 = zcl_lnt_st_combi_module=>opt_prio( i_first = t831 ).
    IF t830 IS BOUND.
      DATA t833 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t834 TYPE REF TO object.
      t834 = t830.
      TRY.
          t829 ?= t834.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t829 IS NOT BOUND.
        TRY.
            t833 ?= t830.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t833 IS BOUND.
          t829 = t833->source( ).
        ENDIF.
        IF t829 IS NOT BOUND.
          CREATE OBJECT t829.
          t829->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t829->oval = t830.
        ENDIF.
      ENDIF.
    ENDIF.
    t818->load( ).
    APPEND t829 TO t818->items.
    t818->save( ).
    t788 = zcl_lnt_st_combi_module=>seq( i_first = t790 i_second = t813 i_rest = t818 ).
    IF t788 IS BOUND.
      DATA t839 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t840 TYPE REF TO object.
      t840 = t788.
      TRY.
          t787 ?= t840.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t787 IS NOT BOUND.
        TRY.
            t839 ?= t788.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t839 IS BOUND.
          t787 = t839->source( ).
        ENDIF.
        IF t787 IS NOT BOUND.
          CREATE OBJECT t787.
          t787->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t787->oval = t788.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t841 TYPE REF TO zcl_lnt_iver_options.
    t778 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t780 i_first = t787 i_opts = t841 ).
    DATA t844 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t406 IS BOUND.
      DATA t846 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t847 TYPE REF TO object.
      t847 = t406.
      TRY.
          t844 ?= t847.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t844 IS NOT BOUND.
        TRY.
            t846 ?= t406.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t846 IS BOUND.
          t844 = t846->source( ).
        ENDIF.
        IF t844 IS NOT BOUND.
          CREATE OBJECT t844.
          t844->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t844->oval = t406.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t459 IS BOUND.
      DATA t851 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t852 TYPE REF TO object.
      t852 = t459.
      TRY.
          t849 ?= t852.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t849 IS NOT BOUND.
        TRY.
            t851 ?= t459.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t851 IS BOUND.
          t849 = t851->source( ).
        ENDIF.
        IF t849 IS NOT BOUND.
          CREATE OBJECT t849.
          t849->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t849->oval = t459.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t853 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t853.
    DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t555 IS BOUND.
      DATA t858 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t859 TYPE REF TO object.
      t859 = t555.
      TRY.
          t856 ?= t859.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t856 IS NOT BOUND.
        TRY.
            t858 ?= t555.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t858 IS BOUND.
          t856 = t858->source( ).
        ENDIF.
        IF t856 IS NOT BOUND.
          CREATE OBJECT t856.
          t856->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t856->oval = t555.
        ENDIF.
      ENDIF.
    ENDIF.
    t853->load( ).
    APPEND t856 TO t853->items.
    t853->save( ).
    DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t609 IS BOUND.
      DATA t863 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t864 TYPE REF TO object.
      t864 = t609.
      TRY.
          t861 ?= t864.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t861 IS NOT BOUND.
        TRY.
            t863 ?= t609.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t863 IS BOUND.
          t861 = t863->source( ).
        ENDIF.
        IF t861 IS NOT BOUND.
          CREATE OBJECT t861.
          t861->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t861->oval = t609.
        ENDIF.
      ENDIF.
    ENDIF.
    t853->load( ).
    APPEND t861 TO t853->items.
    t853->save( ).
    DATA t866 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t674 IS BOUND.
      DATA t868 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t869 TYPE REF TO object.
      t869 = t674.
      TRY.
          t866 ?= t869.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t866 IS NOT BOUND.
        TRY.
            t868 ?= t674.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t868 IS BOUND.
          t866 = t868->source( ).
        ENDIF.
        IF t866 IS NOT BOUND.
          CREATE OBJECT t866.
          t866->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t866->oval = t674.
        ENDIF.
      ENDIF.
    ENDIF.
    t853->load( ).
    APPEND t866 TO t853->items.
    t853->save( ).
    DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t714 IS BOUND.
      DATA t873 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t874 TYPE REF TO object.
      t874 = t714.
      TRY.
          t871 ?= t874.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t871 IS NOT BOUND.
        TRY.
            t873 ?= t714.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t873 IS BOUND.
          t871 = t873->source( ).
        ENDIF.
        IF t871 IS NOT BOUND.
          CREATE OBJECT t871.
          t871->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t871->oval = t714.
        ENDIF.
      ENDIF.
    ENDIF.
    t853->load( ).
    APPEND t871 TO t853->items.
    t853->save( ).
    DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t778 IS BOUND.
      DATA t878 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t879 TYPE REF TO object.
      t879 = t778.
      TRY.
          t876 ?= t879.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t876 IS NOT BOUND.
        TRY.
            t878 ?= t778.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t878 IS BOUND.
          t876 = t878->source( ).
        ENDIF.
        IF t876 IS NOT BOUND.
          CREATE OBJECT t876.
          t876->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t876->oval = t778.
        ENDIF.
      ENDIF.
    ENDIF.
    t853->load( ).
    APPEND t876 TO t853->items.
    t853->save( ).
    DATA t881 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t156 IS BOUND.
      DATA t883 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t884 TYPE REF TO object.
      t884 = t156.
      TRY.
          t881 ?= t884.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t881 IS NOT BOUND.
        TRY.
            t883 ?= t156.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t883 IS BOUND.
          t881 = t883->source( ).
        ENDIF.
        IF t881 IS NOT BOUND.
          CREATE OBJECT t881.
          t881->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t881->oval = t156.
        ENDIF.
      ENDIF.
    ENDIF.
    t853->load( ).
    APPEND t881 TO t853->items.
    t853->save( ).
    DATA t886 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t210 IS BOUND.
      DATA t888 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t889 TYPE REF TO object.
      t889 = t210.
      TRY.
          t886 ?= t889.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t886 IS NOT BOUND.
        TRY.
            t888 ?= t210.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t888 IS BOUND.
          t886 = t888->source( ).
        ENDIF.
        IF t886 IS NOT BOUND.
          CREATE OBJECT t886.
          t886->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t886->oval = t210.
        ENDIF.
      ENDIF.
    ENDIF.
    t853->load( ).
    APPEND t886 TO t853->items.
    t853->save( ).
    DATA t891 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t250 IS BOUND.
      DATA t893 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t894 TYPE REF TO object.
      t894 = t250.
      TRY.
          t891 ?= t894.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t891 IS NOT BOUND.
        TRY.
            t893 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t893 IS BOUND.
          t891 = t893->source( ).
        ENDIF.
        IF t891 IS NOT BOUND.
          CREATE OBJECT t891.
          t891->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t891->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    t853->load( ).
    APPEND t891 TO t853->items.
    t853->save( ).
    DATA t896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t290 IS BOUND.
      DATA t898 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t899 TYPE REF TO object.
      t899 = t290.
      TRY.
          t896 ?= t899.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t896 IS NOT BOUND.
        TRY.
            t898 ?= t290.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t898 IS BOUND.
          t896 = t898->source( ).
        ENDIF.
        IF t896 IS NOT BOUND.
          CREATE OBJECT t896.
          t896->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t896->oval = t290.
        ENDIF.
      ENDIF.
    ENDIF.
    t853->load( ).
    APPEND t896 TO t853->items.
    t853->save( ).
    DATA t901 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t330 IS BOUND.
      DATA t903 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t904 TYPE REF TO object.
      t904 = t330.
      TRY.
          t901 ?= t904.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t901 IS NOT BOUND.
        TRY.
            t903 ?= t330.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t903 IS BOUND.
          t901 = t903->source( ).
        ENDIF.
        IF t901 IS NOT BOUND.
          CREATE OBJECT t901.
          t901->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t901->oval = t330.
        ENDIF.
      ENDIF.
    ENDIF.
    t853->load( ).
    APPEND t901 TO t853->items.
    t853->save( ).
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t844 i_second = t849 i_rest = t853 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
  ENDMETHOD.
ENDCLASS.
