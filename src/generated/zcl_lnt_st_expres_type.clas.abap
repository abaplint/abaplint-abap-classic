* TS: src/abap/2_statements/expressions/type.ts:6:1 Type
CLASS zcl_lnt_st_expres_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_expres_type IMPLEMENTATION.
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
    t7 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v784| ).
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
    CREATE OBJECT t13.
    t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t13->sval = |AS BITFIELD|.
    DATA t15 TYPE REF TO zcl_lnt_iver_options.
    t5 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t6 i_first = t13 i_opts = t15 ).
    IF t5 IS BOUND.
      DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t4 ?= t5.
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
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = |TYPE|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t25->cval = t26.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t20 = zcl_lnt_st_combi_module=>seq( i_first = t22 i_second = t25 i_rest = t28 ).
    IF t20 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t19 ?= t20.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t19 IS NOT BOUND.
        TRY.
            t33 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t19 = t33->source( ).
        ENDIF.
        IF t19 IS NOT BOUND.
          CREATE OBJECT t19.
          t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t19->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t19 i_rest = t36 ).
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t44.
    t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t44->sval = |WITH INDICATORS|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d100_553f73368b64.
    IF t48 IS BOUND.
      CREATE OBJECT t47.
      t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t47->cval = t48.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t54 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t56 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t54 = t56->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t53 = zcl_lnt_st_combi_module=>opt_prio( i_first = t54 ).
    IF t53 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t52 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t58 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t52 = t58->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    t49->load( ).
    APPEND t52 TO t49->items.
    t49->save( ).
    t41 = zcl_lnt_st_combi_module=>seq( i_first = t44 i_second = t47 i_rest = t49 ).
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t72->cval = t73.
    ENDIF.
    t71 = zcl_lnt_st_combi_module=>opt_prio( i_first = t72 ).
    IF t71 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t70 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t70 IS NOT BOUND.
        TRY.
            t74 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t70 = t74->source( ).
        ENDIF.
        IF t70 IS NOT BOUND.
          CREATE OBJECT t70.
          t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t70->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t77.
    t64 = zcl_lnt_st_combi_module=>seq( i_first = t67 i_second = t70 i_rest = t77 ).
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = |LINE OF|.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t92) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t91->cval = t92.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t94.
    t86 = zcl_lnt_st_combi_module=>seq( i_first = t88 i_second = t91 i_rest = t94 ).
    IF t86 IS BOUND.
      DATA t99 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t85 ?= t86.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t99 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t99 IS BOUND.
          t85 = t99->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t105.
    t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t105->sval = |REF TO|.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t109 IS BOUND.
      CREATE OBJECT t108.
      t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t108->cval = t109.
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t111.
    t103 = zcl_lnt_st_combi_module=>seq( i_first = t105 i_second = t108 i_rest = t111 ).
    IF t103 IS BOUND.
      DATA t116 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t102 ?= t103.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t102 IS NOT BOUND.
        TRY.
            t116 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t116 IS BOUND.
          t102 = t116->source( ).
        ENDIF.
        IF t102 IS NOT BOUND.
          CREATE OBJECT t102.
          t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t102->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t121->cval = t122.
    ENDIF.
    t118->load( ).
    APPEND t121 TO t118->items.
    t118->save( ).
    t82 = zcl_lnt_st_combi_module=>alt_prio( i_first = t85 i_second = t102 i_rest = t118 ).
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = |LINE OF|.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t64 IS BOUND.
      DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t136 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t136 IS NOT BOUND.
        TRY.
            t138 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t138 IS BOUND.
          t136 = t138->source( ).
        ENDIF.
        IF t136 IS NOT BOUND.
          CREATE OBJECT t136.
          t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t136->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t141.
    t131 = zcl_lnt_st_combi_module=>seq( i_first = t133 i_second = t136 i_rest = t141 ).
    IF t131 IS BOUND.
      DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t130 ?= t131.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t130 IS NOT BOUND.
        TRY.
            t146 ?= t131.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t146 IS BOUND.
          t130 = t146->source( ).
        ENDIF.
        IF t130 IS NOT BOUND.
          CREATE OBJECT t130.
          t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t130->oval = t131.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t152.
    t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t152->sval = |REF TO|.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t64 IS BOUND.
      DATA t157 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t155 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t155 IS NOT BOUND.
        TRY.
            t157 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t157 IS BOUND.
          t155 = t157->source( ).
        ENDIF.
        IF t155 IS NOT BOUND.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t155->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t160.
    t150 = zcl_lnt_st_combi_module=>seq( i_first = t152 i_second = t155 i_rest = t160 ).
    IF t150 IS BOUND.
      DATA t165 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t149 ?= t150.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t149 IS NOT BOUND.
        TRY.
            t165 ?= t150.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t165 IS BOUND.
          t149 = t165->source( ).
        ENDIF.
        IF t149 IS NOT BOUND.
          CREATE OBJECT t149.
          t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t149->oval = t150.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t167.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t64 IS BOUND.
      DATA t175 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t173 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t173 IS NOT BOUND.
        TRY.
            t175 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t175 IS BOUND.
          t173 = t175->source( ).
        ENDIF.
        IF t173 IS NOT BOUND.
          CREATE OBJECT t173.
          t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t173->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t181) = zlnt_runtime_desc_78196487750d=>zlnt_member_d207_e6b5df1debdc.
    IF t181 IS BOUND.
      CREATE OBJECT t180.
      t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t180->cval = t181.
    ENDIF.
    t179 = zcl_lnt_st_combi_module=>opt_prio( i_first = t180 ).
    IF t179 IS BOUND.
      DATA t182 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t178 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t178 IS NOT BOUND.
        TRY.
            t182 ?= t179.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t182 IS BOUND.
          t178 = t182->source( ).
        ENDIF.
        IF t178 IS NOT BOUND.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t178->oval = t179.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t185.
    t171 = zcl_lnt_st_combi_module=>seq( i_first = t173 i_second = t178 i_rest = t185 ).
    IF t171 IS BOUND.
      DATA t190 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t170 ?= t171.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t170 IS NOT BOUND.
        TRY.
            t190 ?= t171.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t190 IS BOUND.
          t170 = t190->source( ).
        ENDIF.
        IF t170 IS NOT BOUND.
          CREATE OBJECT t170.
          t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t170->oval = t171.
        ENDIF.
      ENDIF.
    ENDIF.
    t167->load( ).
    APPEND t170 TO t167->items.
    t167->save( ).
    t127 = zcl_lnt_st_combi_module=>alt_prio( i_first = t130 i_second = t149 i_rest = t167 ).
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = |LIKE|.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t82 IS BOUND.
      DATA t210 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t208 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t208 IS NOT BOUND.
        TRY.
            t210 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t210 IS BOUND.
          t208 = t210->source( ).
        ENDIF.
        IF t208 IS NOT BOUND.
          CREATE OBJECT t208.
          t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t208->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t213.
    t203 = zcl_lnt_st_combi_module=>seq( i_first = t205 i_second = t208 i_rest = t213 ).
    IF t203 IS BOUND.
      DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t202 ?= t203.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t202 IS NOT BOUND.
        TRY.
            t218 ?= t203.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t218 IS BOUND.
          t202 = t218->source( ).
        ENDIF.
        IF t202 IS NOT BOUND.
          CREATE OBJECT t202.
          t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t202->oval = t203.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t224.
    t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t224->sval = |TYPE|.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t127 IS BOUND.
      DATA t229 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t227 ?= t127.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t227 IS NOT BOUND.
        TRY.
            t229 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t229 IS BOUND.
          t227 = t229->source( ).
        ENDIF.
        IF t227 IS NOT BOUND.
          CREATE OBJECT t227.
          t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t227->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t232 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t232.
    t222 = zcl_lnt_st_combi_module=>seq( i_first = t224 i_second = t227 i_rest = t232 ).
    IF t222 IS BOUND.
      DATA t237 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t221 ?= t222.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t221 IS NOT BOUND.
        TRY.
            t237 ?= t222.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t237 IS BOUND.
          t221 = t237->source( ).
        ENDIF.
        IF t221 IS NOT BOUND.
          CREATE OBJECT t221.
          t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t221->oval = t222.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t240.
    t200 = zcl_lnt_st_combi_module=>alt_prio( i_first = t202 i_second = t221 i_rest = t240 ).
    IF t200 IS BOUND.
      DATA t245 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t199 ?= t200.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t199 IS NOT BOUND.
        TRY.
            t245 ?= t200.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t245 IS BOUND.
          t199 = t245->source( ).
        ENDIF.
        IF t199 IS NOT BOUND.
          CREATE OBJECT t199.
          t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t199->oval = t200.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t251 TYPE REF TO zif_lnt_statement_runnable.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t253 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t253 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v781| ).
    IF t253 IS BOUND.
      DATA t257 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t258 TYPE REF TO object.
      t258 = t253.
      TRY.
          t252 ?= t258.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t252 IS NOT BOUND.
        TRY.
            t257 ?= t253.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t257 IS BOUND.
          t252 = t257->source( ).
        ENDIF.
        IF t252 IS NOT BOUND.
          CREATE OBJECT t252.
          t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t252->oval = t253.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t259 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t259 IS NOT BOUND.
        TRY.
            t261 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t259 = t261->source( ).
        ENDIF.
        IF t259 IS NOT BOUND.
          CREATE OBJECT t259.
          t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t259->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t263 TYPE REF TO zcl_lnt_iver_options.
    t251 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t252 i_first = t259 i_opts = t263 ).
    IF t251 IS BOUND.
      DATA t264 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t250 ?= t251.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t250 IS NOT BOUND.
        TRY.
            t264 ?= t251.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t264 IS BOUND.
          t250 = t264->source( ).
        ENDIF.
        IF t250 IS NOT BOUND.
          CREATE OBJECT t250.
          t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t250->oval = t251.
        ENDIF.
      ENDIF.
    ENDIF.
    t249 = zcl_lnt_st_combi_module=>opt_prio( i_first = t250 ).
    IF t249 IS BOUND.
      DATA t266 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t248 ?= t249.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t248 IS NOT BOUND.
        TRY.
            t266 ?= t249.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS BOUND.
          t248 = t266->source( ).
        ENDIF.
        IF t248 IS NOT BOUND.
          CREATE OBJECT t248.
          t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t248->oval = t249.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t269.
    result = zcl_lnt_st_combi_module=>seq( i_first = t199 i_second = t248 i_rest = t269 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
  ENDMETHOD.
ENDCLASS.
