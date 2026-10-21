* TS: src/abap/2_statements/expressions/select_cte.ts:12:1 SelectCTE
CLASS zcl_lnt_select_cte DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_select_cte IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |WHERE|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA(t15) = VALUE string( ).
    t15 = |BYPASSING BUFFER|.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t20 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    IF t20 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t20.
      TRY.
          t19 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t19 IS NOT BOUND.
        TRY.
            t24 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t19 = t24->source( ).
        ENDIF.
        IF t19 IS NOT BOUND.
          CREATE OBJECT t19.
          t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t19->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2.
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t26->cval = t27.
    ENDIF.
    DATA t28 TYPE REF TO zcl_lnt_iver_options.
    t17 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t19 i_first = t26 i_opts = t28 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t32 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v751| ).
    IF t32 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t37 TYPE REF TO object.
      t37 = t32.
      TRY.
          t31 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t36 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t31 = t36->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = |OFFSET|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t44->cval = t45.
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t47.
    t39 = zcl_lnt_st_combi_module=>seq( i_first = t41 i_second = t44 i_rest = t47 ).
    IF t39 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t38 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS NOT BOUND.
        TRY.
            t52 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t38 = t52->source( ).
        ENDIF.
        IF t38 IS NOT BOUND.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t38->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t54 TYPE REF TO zcl_lnt_iver_options.
    t29 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t31 i_first = t38 i_opts = t54 ).
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d155_5eb73ae6c401.
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t60->cval = t61.
    ENDIF.
    t58 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t60 ).
    IF t58 IS BOUND.
      DATA t62 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t57 ?= t58.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t62 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t62 IS BOUND.
          t57 = t62->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    t55 = zcl_lnt_st_combi_module=>opt_prio( i_first = t57 ).
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d266_3b538ddd2a60.
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t69->cval = t70.
    ENDIF.
    t68 = zcl_lnt_st_combi_module=>opt_prio( i_first = t69 ).
    IF t68 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t67 ?= t68.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t67 IS NOT BOUND.
        TRY.
            t71 ?= t68.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t67 = t71->source( ).
        ENDIF.
        IF t67 IS NOT BOUND.
          CREATE OBJECT t67.
          t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t67->oval = t68.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d267_42ee2e3380a0.
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t76->cval = t77.
    ENDIF.
    t75 = zcl_lnt_st_combi_module=>opt_prio( i_first = t76 ).
    IF t75 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t74 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t78 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t74 = t78->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t81.
    t64 = zcl_lnt_st_combi_module=>seq( i_first = t67 i_second = t74 i_rest = t81 ).
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t64 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t89 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t89 IS NOT BOUND.
        TRY.
            t91 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t89 = t91->source( ).
        ENDIF.
        IF t89 IS NOT BOUND.
          CREATE OBJECT t89.
          t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t89->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t100) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
    IF t100 IS BOUND.
      CREATE OBJECT t99.
      t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t99->cval = t100.
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d268_bc2d6eaf7263.
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t104->cval = t105.
    ENDIF.
    t103 = zcl_lnt_st_combi_module=>opt_prio( i_first = t104 ).
    IF t103 IS BOUND.
      DATA t106 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t102 ?= t103.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t102 IS NOT BOUND.
        TRY.
            t106 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t106 IS BOUND.
          t102 = t106->source( ).
        ENDIF.
        IF t102 IS NOT BOUND.
          CREATE OBJECT t102.
          t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t102->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t108.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t113 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t115 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t113 = t115->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t112 = zcl_lnt_st_combi_module=>opt_prio( i_first = t113 ).
    IF t112 IS BOUND.
      DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t111 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t117 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t117 IS BOUND.
          t111 = t117->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t108->load( ).
    APPEND t111 TO t108->items.
    t108->save( ).
    t97 = zcl_lnt_st_combi_module=>seq( i_first = t99 i_second = t102 i_rest = t108 ).
    IF t97 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t96 ?= t97.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t96 IS NOT BOUND.
        TRY.
            t123 ?= t97.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t96 = t123->source( ).
        ENDIF.
        IF t96 IS NOT BOUND.
          CREATE OBJECT t96.
          t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t96->oval = t97.
        ENDIF.
      ENDIF.
    ENDIF.
    t95 = zcl_lnt_st_combi_module=>opt_prio( i_first = t96 ).
    IF t95 IS BOUND.
      DATA t125 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t94 ?= t95.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t94 IS NOT BOUND.
        TRY.
            t125 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t125 IS BOUND.
          t94 = t125->source( ).
        ENDIF.
        IF t94 IS NOT BOUND.
          CREATE OBJECT t94.
          t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t94->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t127.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d269_df623ced1aed.
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t132->cval = t133.
    ENDIF.
    t131 = zcl_lnt_st_combi_module=>opt_prio( i_first = t132 ).
    IF t131 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t130 ?= t131.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t130 IS NOT BOUND.
        TRY.
            t134 ?= t131.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t130 = t134->source( ).
        ENDIF.
        IF t130 IS NOT BOUND.
          CREATE OBJECT t130.
          t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t130->oval = t131.
        ENDIF.
      ENDIF.
    ENDIF.
    t127->load( ).
    APPEND t130 TO t127->items.
    t127->save( ).
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17 IS BOUND.
      DATA t141 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t139 ?= t17.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t139 IS NOT BOUND.
        TRY.
            t141 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t141 IS BOUND.
          t139 = t141->source( ).
        ENDIF.
        IF t139 IS NOT BOUND.
          CREATE OBJECT t139.
          t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t139->oval = t17.
        ENDIF.
      ENDIF.
    ENDIF.
    t138 = zcl_lnt_st_combi_module=>opt_prio( i_first = t139 ).
    IF t138 IS BOUND.
      DATA t143 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t137 ?= t138.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t143 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t143 IS BOUND.
          t137 = t143->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t138.
        ENDIF.
      ENDIF.
    ENDIF.
    t127->load( ).
    APPEND t137 TO t127->items.
    t127->save( ).
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t149) = zlnt_runtime_desc_78196487750d=>zlnt_member_d270_547c551ca3da.
    IF t149 IS BOUND.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t148->cval = t149.
    ENDIF.
    t147 = zcl_lnt_st_combi_module=>opt_prio( i_first = t148 ).
    IF t147 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t146 ?= t147.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t146 IS NOT BOUND.
        TRY.
            t150 ?= t147.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t146 = t150->source( ).
        ENDIF.
        IF t146 IS NOT BOUND.
          CREATE OBJECT t146.
          t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t146->oval = t147.
        ENDIF.
      ENDIF.
    ENDIF.
    t127->load( ).
    APPEND t146 TO t127->items.
    t127->save( ).
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t55 IS BOUND.
      DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t153 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t155 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t155 IS BOUND.
          t153 = t155->source( ).
        ENDIF.
        IF t153 IS NOT BOUND.
          CREATE OBJECT t153.
          t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t153->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    t127->load( ).
    APPEND t153 TO t127->items.
    t127->save( ).
    t86 = zcl_lnt_st_combi_module=>seq( i_first = t89 i_second = t94 i_rest = t127 ).
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t165) = zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079.
    IF t165 IS BOUND.
      CREATE OBJECT t164.
      t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t164->cval = t165.
    ENDIF.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t170) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    IF t170 IS BOUND.
      CREATE OBJECT t169.
      t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t169->cval = t170.
    ENDIF.
    t168 = zcl_lnt_st_combi_module=>opt_prio( i_first = t169 ).
    IF t168 IS BOUND.
      DATA t171 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t167 ?= t168.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t167 IS NOT BOUND.
        TRY.
            t171 ?= t168.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t171 IS BOUND.
          t167 = t171->source( ).
        ENDIF.
        IF t167 IS NOT BOUND.
          CREATE OBJECT t167.
          t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t167->oval = t168.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t173.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t178.
    t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t178->sval = t15.
    t177 = zcl_lnt_st_combi_module=>opt_prio( i_first = t178 ).
    IF t177 IS BOUND.
      DATA t180 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t176 ?= t177.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t176 IS NOT BOUND.
        TRY.
            t180 ?= t177.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t180 IS BOUND.
          t176 = t180->source( ).
        ENDIF.
        IF t176 IS NOT BOUND.
          CREATE OBJECT t176.
          t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t176->oval = t177.
        ENDIF.
      ENDIF.
    ENDIF.
    t173->load( ).
    APPEND t176 TO t173->items.
    t173->save( ).
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t186 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t186 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    IF t186 IS BOUND.
      DATA t190 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t191 TYPE REF TO object.
      t191 = t186.
      TRY.
          t185 ?= t191.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t190 ?= t186.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t190 IS BOUND.
          t185 = t190->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t186.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t193) = zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543.
    IF t193 IS BOUND.
      CREATE OBJECT t192.
      t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t192->cval = t193.
    ENDIF.
    DATA t196 TYPE REF TO zcl_lnt_iver_options.
    DATA(t201) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t201->has = abap_true.
    t201->value = |OpenABAP|.
    t196 = NEW zcl_lnt_iver_options( i_also = t201 ).
    CREATE OBJECT t196->zlnt_view_ownkeys_b0e8086400eb.
    t196->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t203 ).
    CREATE OBJECT t196->zlnt_json_ownkeys_70e5fd461788.
    t196->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t205 ).
    t184 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t185 i_first = t192 i_opts = t196 ).
    IF t184 IS BOUND.
      DATA t207 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t183 ?= t184.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t183 IS NOT BOUND.
        TRY.
            t207 ?= t184.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t207 IS BOUND.
          t183 = t207->source( ).
        ENDIF.
        IF t183 IS NOT BOUND.
          CREATE OBJECT t183.
          t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t183->oval = t184.
        ENDIF.
      ENDIF.
    ENDIF.
    t173->load( ).
    APPEND t183 TO t173->items.
    t173->save( ).
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t213) = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
    IF t213 IS BOUND.
      CREATE OBJECT t212.
      t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t212->cval = t213.
    ENDIF.
    t211 = zcl_lnt_st_combi_module=>opt_prio( i_first = t212 ).
    IF t211 IS BOUND.
      DATA t214 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t210 ?= t211.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t210 IS NOT BOUND.
        TRY.
            t214 ?= t211.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t214 IS BOUND.
          t210 = t214->source( ).
        ENDIF.
        IF t210 IS NOT BOUND.
          CREATE OBJECT t210.
          t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t210->oval = t211.
        ENDIF.
      ENDIF.
    ENDIF.
    t173->load( ).
    APPEND t210 TO t173->items.
    t173->save( ).
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t218 TYPE REF TO zif_lnt_statement_runnable.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t221 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t219 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t219 IS NOT BOUND.
        TRY.
            t221 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t221 IS BOUND.
          t219 = t221->source( ).
        ENDIF.
        IF t219 IS NOT BOUND.
          CREATE OBJECT t219.
          t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t219->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t218 = zcl_lnt_st_combi_module=>opt_prio( i_first = t219 ).
    IF t218 IS BOUND.
      DATA t223 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t217 ?= t218.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t217 IS NOT BOUND.
        TRY.
            t223 ?= t218.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t223 IS BOUND.
          t217 = t223->source( ).
        ENDIF.
        IF t217 IS NOT BOUND.
          CREATE OBJECT t217.
          t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t217->oval = t218.
        ENDIF.
      ENDIF.
    ENDIF.
    t173->load( ).
    APPEND t217 TO t173->items.
    t173->save( ).
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t86 IS BOUND.
      DATA t228 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t226 ?= t86.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t226 IS NOT BOUND.
        TRY.
            t228 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t228 IS BOUND.
          t226 = t228->source( ).
        ENDIF.
        IF t226 IS NOT BOUND.
          CREATE OBJECT t226.
          t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t226->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    t173->load( ).
    APPEND t226 TO t173->items.
    t173->save( ).
    t161 = zcl_lnt_st_combi_module=>seq( i_first = t164 i_second = t167 i_rest = t173 ).
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t238 TYPE REF TO zif_lnt_statement_runnable.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t239.
    t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t239->sval = |DISTINCT|.
    t238 = zcl_lnt_st_combi_module=>opt_prio( i_first = t239 ).
    IF t238 IS BOUND.
      DATA t241 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t237 ?= t238.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t237 IS NOT BOUND.
        TRY.
            t241 ?= t238.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t241 IS BOUND.
          t237 = t241->source( ).
        ENDIF.
        IF t237 IS NOT BOUND.
          CREATE OBJECT t237.
          t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t237->oval = t238.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t245) = zlnt_runtime_desc_78196487750d=>zlnt_member_d275_b37eb4f86fc3.
    IF t245 IS BOUND.
      CREATE OBJECT t244.
      t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t244->cval = t245.
    ENDIF.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t246.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t250) = zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079.
    IF t250 IS BOUND.
      CREATE OBJECT t249.
      t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t249->cval = t250.
    ENDIF.
    t246->load( ).
    APPEND t249 TO t246->items.
    t246->save( ).
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t253 TYPE REF TO zif_lnt_statement_runnable.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t255) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t254->cval = t255.
    ENDIF.
    t253 = zcl_lnt_st_combi_module=>opt_prio( i_first = t254 ).
    IF t253 IS BOUND.
      DATA t256 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t252 ?= t253.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t252 IS NOT BOUND.
        TRY.
            t256 ?= t253.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t256 IS BOUND.
          t252 = t256->source( ).
        ENDIF.
        IF t252 IS NOT BOUND.
          CREATE OBJECT t252.
          t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t252->oval = t253.
        ENDIF.
      ENDIF.
    ENDIF.
    t246->load( ).
    APPEND t252 TO t246->items.
    t246->save( ).
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t261.
    t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t261->sval = t15.
    t260 = zcl_lnt_st_combi_module=>opt_prio( i_first = t261 ).
    IF t260 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t259 ?= t260.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t259 IS NOT BOUND.
        TRY.
            t263 ?= t260.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t259 = t263->source( ).
        ENDIF.
        IF t259 IS NOT BOUND.
          CREATE OBJECT t259.
          t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t259->oval = t260.
        ENDIF.
      ENDIF.
    ENDIF.
    t246->load( ).
    APPEND t259 TO t246->items.
    t246->save( ).
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t269) = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
    IF t269 IS BOUND.
      CREATE OBJECT t268.
      t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t268->cval = t269.
    ENDIF.
    t267 = zcl_lnt_st_combi_module=>opt_prio( i_first = t268 ).
    IF t267 IS BOUND.
      DATA t270 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t266 ?= t267.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t266 IS NOT BOUND.
        TRY.
            t270 ?= t267.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t270 IS BOUND.
          t266 = t270->source( ).
        ENDIF.
        IF t266 IS NOT BOUND.
          CREATE OBJECT t266.
          t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t266->oval = t267.
        ENDIF.
      ENDIF.
    ENDIF.
    t246->load( ).
    APPEND t266 TO t246->items.
    t246->save( ).
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t277 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t275 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t275 IS NOT BOUND.
        TRY.
            t277 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t277 IS BOUND.
          t275 = t277->source( ).
        ENDIF.
        IF t275 IS NOT BOUND.
          CREATE OBJECT t275.
          t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t275->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t274 = zcl_lnt_st_combi_module=>opt_prio( i_first = t275 ).
    IF t274 IS BOUND.
      DATA t279 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t273 ?= t274.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t273 IS NOT BOUND.
        TRY.
            t279 ?= t274.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t279 IS BOUND.
          t273 = t279->source( ).
        ENDIF.
        IF t273 IS NOT BOUND.
          CREATE OBJECT t273.
          t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t273->oval = t274.
        ENDIF.
      ENDIF.
    ENDIF.
    t246->load( ).
    APPEND t273 TO t246->items.
    t246->save( ).
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t86 IS BOUND.
      DATA t284 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t282 ?= t86.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t282 IS NOT BOUND.
        TRY.
            t284 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t284 IS BOUND.
          t282 = t284->source( ).
        ENDIF.
        IF t282 IS NOT BOUND.
          CREATE OBJECT t282.
          t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t282->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    t246->load( ).
    APPEND t282 TO t246->items.
    t246->save( ).
    t234 = zcl_lnt_st_combi_module=>seq( i_first = t237 i_second = t244 i_rest = t246 ).
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t293.
    t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t293->sval = |UNION|.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t297 TYPE REF TO zif_lnt_statement_runnable.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t299 TYPE REF TO zif_lnt_statement_runnable.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t301.
    t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t301->sval = |DISTINCT|.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t304.
    t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t304->sval = |ALL|.
    DATA t307 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t307.
    t299 = zcl_lnt_st_combi_module=>alt_prio( i_first = t301 i_second = t304 i_rest = t307 ).
    IF t299 IS BOUND.
      DATA t312 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t298 ?= t299.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t298 IS NOT BOUND.
        TRY.
            t312 ?= t299.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t312 IS BOUND.
          t298 = t312->source( ).
        ENDIF.
        IF t298 IS NOT BOUND.
          CREATE OBJECT t298.
          t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t298->oval = t299.
        ENDIF.
      ENDIF.
    ENDIF.
    t297 = zcl_lnt_st_combi_module=>opt_prio( i_first = t298 ).
    IF t297 IS BOUND.
      DATA t314 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t296 ?= t297.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t296 IS NOT BOUND.
        TRY.
            t314 ?= t297.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t314 IS BOUND.
          t296 = t314->source( ).
        ENDIF.
        IF t296 IS NOT BOUND.
          CREATE OBJECT t296.
          t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t296->oval = t297.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t317.
    t290 = zcl_lnt_st_combi_module=>seq( i_first = t293 i_second = t296 i_rest = t317 ).
    DATA t322 TYPE REF TO zif_lnt_statement_runnable.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t326 TYPE REF TO zif_lnt_statement_runnable.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t328.
    t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t328->sval = |INTERSECT|.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t333.
    t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t333->sval = |DISTINCT|.
    t332 = zcl_lnt_st_combi_module=>opt_prio( i_first = t333 ).
    IF t332 IS BOUND.
      DATA t335 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t331 ?= t332.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t331 IS NOT BOUND.
        TRY.
            t335 ?= t332.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t335 IS BOUND.
          t331 = t335->source( ).
        ENDIF.
        IF t331 IS NOT BOUND.
          CREATE OBJECT t331.
          t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t331->oval = t332.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t338 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t338.
    t326 = zcl_lnt_st_combi_module=>seq( i_first = t328 i_second = t331 i_rest = t338 ).
    IF t326 IS BOUND.
      DATA t343 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t325 ?= t326.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t325 IS NOT BOUND.
        TRY.
            t343 ?= t326.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t343 IS BOUND.
          t325 = t343->source( ).
        ENDIF.
        IF t325 IS NOT BOUND.
          CREATE OBJECT t325.
          t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t325->oval = t326.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t347 TYPE REF TO zif_lnt_statement_runnable.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t349.
    t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t349->sval = |EXCEPT|.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t353 TYPE REF TO zif_lnt_statement_runnable.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t354.
    t354->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t354->sval = |DISTINCT|.
    t353 = zcl_lnt_st_combi_module=>opt_prio( i_first = t354 ).
    IF t353 IS BOUND.
      DATA t356 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t352 ?= t353.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t352 IS NOT BOUND.
        TRY.
            t356 ?= t353.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t356 IS BOUND.
          t352 = t356->source( ).
        ENDIF.
        IF t352 IS NOT BOUND.
          CREATE OBJECT t352.
          t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t352->oval = t353.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t359 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t359.
    t347 = zcl_lnt_st_combi_module=>seq( i_first = t349 i_second = t352 i_rest = t359 ).
    IF t347 IS BOUND.
      DATA t364 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t346 ?= t347.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t346 IS NOT BOUND.
        TRY.
            t364 ?= t347.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t364 IS BOUND.
          t346 = t364->source( ).
        ENDIF.
        IF t346 IS NOT BOUND.
          CREATE OBJECT t346.
          t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t346->oval = t347.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t367 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t367.
    t322 = zcl_lnt_st_combi_module=>alt_prio( i_first = t325 i_second = t346 i_rest = t367 ).
    DATA t372 TYPE REF TO zif_lnt_statement_runnable.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t376 TYPE REF TO zif_lnt_statement_runnable.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t378 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t378 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    IF t378 IS BOUND.
      DATA t382 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t383 TYPE REF TO object.
      t383 = t378.
      TRY.
          t377 ?= t383.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t377 IS NOT BOUND.
        TRY.
            t382 ?= t378.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t382 IS BOUND.
          t377 = t382->source( ).
        ENDIF.
        IF t377 IS NOT BOUND.
          CREATE OBJECT t377.
          t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t377->oval = t378.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t290 IS BOUND.
      DATA t386 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t384 ?= t290.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t384 IS NOT BOUND.
        TRY.
            t386 ?= t290.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t386 IS BOUND.
          t384 = t386->source( ).
        ENDIF.
        IF t384 IS NOT BOUND.
          CREATE OBJECT t384.
          t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t384->oval = t290.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t390 TYPE REF TO zcl_lnt_iver_options.
    DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t395->has = abap_true.
    t395->value = |OpenABAP|.
    t390 = NEW zcl_lnt_iver_options( i_also = t395 ).
    CREATE OBJECT t390->zlnt_view_ownkeys_b0e8086400eb.
    t390->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t390->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t397 ).
    CREATE OBJECT t390->zlnt_json_ownkeys_70e5fd461788.
    t390->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t390->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t399 ).
    t376 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t377 i_first = t384 i_opts = t390 ).
    IF t376 IS BOUND.
      DATA t401 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t375 ?= t376.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t375 IS NOT BOUND.
        TRY.
            t401 ?= t376.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t401 IS BOUND.
          t375 = t401->source( ).
        ENDIF.
        IF t375 IS NOT BOUND.
          CREATE OBJECT t375.
          t375->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t375->oval = t376.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t405 TYPE REF TO zif_lnt_statement_runnable.
    DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t407 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t407 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v756| ).
    IF t407 IS BOUND.
      DATA t411 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t412 TYPE REF TO object.
      t412 = t407.
      TRY.
          t406 ?= t412.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t406 IS NOT BOUND.
        TRY.
            t411 ?= t407.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t411 IS BOUND.
          t406 = t411->source( ).
        ENDIF.
        IF t406 IS NOT BOUND.
          CREATE OBJECT t406.
          t406->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t406->oval = t407.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322 IS BOUND.
      DATA t415 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t413 ?= t322.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t413 IS NOT BOUND.
        TRY.
            t415 ?= t322.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t415 IS BOUND.
          t413 = t415->source( ).
        ENDIF.
        IF t413 IS NOT BOUND.
          CREATE OBJECT t413.
          t413->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t413->oval = t322.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t417 TYPE REF TO zcl_lnt_iver_options.
    t405 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t406 i_first = t413 i_opts = t417 ).
    IF t405 IS BOUND.
      DATA t418 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t404 ?= t405.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t404 IS NOT BOUND.
        TRY.
            t418 ?= t405.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t418 IS BOUND.
          t404 = t418->source( ).
        ENDIF.
        IF t404 IS NOT BOUND.
          CREATE OBJECT t404.
          t404->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t404->oval = t405.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t421 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t421.
    t372 = zcl_lnt_st_combi_module=>alt_prio( i_first = t375 i_second = t404 i_rest = t421 ).
    DATA t426 TYPE REF TO zif_lnt_statement_runnable.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t430) = zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079.
    IF t430 IS BOUND.
      CREATE OBJECT t429.
      t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t429->cval = t430.
    ENDIF.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t433 TYPE REF TO zif_lnt_statement_runnable.
    DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t435) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    IF t435 IS BOUND.
      CREATE OBJECT t434.
      t434->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t434->cval = t435.
    ENDIF.
    t433 = zcl_lnt_st_combi_module=>opt_prio( i_first = t434 ).
    IF t433 IS BOUND.
      DATA t436 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t432 ?= t433.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t432 IS NOT BOUND.
        TRY.
            t436 ?= t433.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t436 IS BOUND.
          t432 = t436->source( ).
        ENDIF.
        IF t432 IS NOT BOUND.
          CREATE OBJECT t432.
          t432->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t432->oval = t433.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t438.
    DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t442 TYPE REF TO zif_lnt_statement_runnable.
    DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t443.
    t443->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t443->sval = t15.
    t442 = zcl_lnt_st_combi_module=>opt_prio( i_first = t443 ).
    IF t442 IS BOUND.
      DATA t445 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t441 ?= t442.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t441 IS NOT BOUND.
        TRY.
            t445 ?= t442.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t445 IS BOUND.
          t441 = t445->source( ).
        ENDIF.
        IF t441 IS NOT BOUND.
          CREATE OBJECT t441.
          t441->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t441->oval = t442.
        ENDIF.
      ENDIF.
    ENDIF.
    t438->load( ).
    APPEND t441 TO t438->items.
    t438->save( ).
    DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t449 TYPE REF TO zif_lnt_statement_runnable.
    DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t451 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t451 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    IF t451 IS BOUND.
      DATA t455 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t456 TYPE REF TO object.
      t456 = t451.
      TRY.
          t450 ?= t456.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t450 IS NOT BOUND.
        TRY.
            t455 ?= t451.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t455 IS BOUND.
          t450 = t455->source( ).
        ENDIF.
        IF t450 IS NOT BOUND.
          CREATE OBJECT t450.
          t450->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t450->oval = t451.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t458) = zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543.
    IF t458 IS BOUND.
      CREATE OBJECT t457.
      t457->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t457->cval = t458.
    ENDIF.
    DATA t461 TYPE REF TO zcl_lnt_iver_options.
    DATA(t466) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t466->has = abap_true.
    t466->value = |OpenABAP|.
    t461 = NEW zcl_lnt_iver_options( i_also = t466 ).
    CREATE OBJECT t461->zlnt_view_ownkeys_b0e8086400eb.
    t461->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t461->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t468 ).
    CREATE OBJECT t461->zlnt_json_ownkeys_70e5fd461788.
    t461->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t461->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t470 ).
    t449 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t450 i_first = t457 i_opts = t461 ).
    IF t449 IS BOUND.
      DATA t472 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t448 ?= t449.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t448 IS NOT BOUND.
        TRY.
            t472 ?= t449.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t472 IS BOUND.
          t448 = t472->source( ).
        ENDIF.
        IF t448 IS NOT BOUND.
          CREATE OBJECT t448.
          t448->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t448->oval = t449.
        ENDIF.
      ENDIF.
    ENDIF.
    t438->load( ).
    APPEND t448 TO t438->items.
    t438->save( ).
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t476 TYPE REF TO zif_lnt_statement_runnable.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t478) = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
    IF t478 IS BOUND.
      CREATE OBJECT t477.
      t477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t477->cval = t478.
    ENDIF.
    t476 = zcl_lnt_st_combi_module=>opt_prio( i_first = t477 ).
    IF t476 IS BOUND.
      DATA t479 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t475 ?= t476.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t475 IS NOT BOUND.
        TRY.
            t479 ?= t476.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t479 IS BOUND.
          t475 = t479->source( ).
        ENDIF.
        IF t475 IS NOT BOUND.
          CREATE OBJECT t475.
          t475->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t475->oval = t476.
        ENDIF.
      ENDIF.
    ENDIF.
    t438->load( ).
    APPEND t475 TO t438->items.
    t438->save( ).
    DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t483 TYPE REF TO zif_lnt_statement_runnable.
    DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t486 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t484 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t484 IS NOT BOUND.
        TRY.
            t486 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t486 IS BOUND.
          t484 = t486->source( ).
        ENDIF.
        IF t484 IS NOT BOUND.
          CREATE OBJECT t484.
          t484->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t484->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t483 = zcl_lnt_st_combi_module=>opt_prio( i_first = t484 ).
    IF t483 IS BOUND.
      DATA t488 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t482 ?= t483.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t482 IS NOT BOUND.
        TRY.
            t488 ?= t483.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t488 IS BOUND.
          t482 = t488->source( ).
        ENDIF.
        IF t482 IS NOT BOUND.
          CREATE OBJECT t482.
          t482->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t482->oval = t483.
        ENDIF.
      ENDIF.
    ENDIF.
    t438->load( ).
    APPEND t482 TO t438->items.
    t438->save( ).
    DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t64 IS BOUND.
      DATA t493 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t491 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t491 IS NOT BOUND.
        TRY.
            t493 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t493 IS BOUND.
          t491 = t493->source( ).
        ENDIF.
        IF t491 IS NOT BOUND.
          CREATE OBJECT t491.
          t491->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t491->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    t438->load( ).
    APPEND t491 TO t438->items.
    t438->save( ).
    t426 = zcl_lnt_st_combi_module=>seq( i_first = t429 i_second = t432 i_rest = t438 ).
    DATA t499 TYPE REF TO zif_lnt_statement_runnable.
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t503 TYPE REF TO zif_lnt_statement_runnable.
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t504.
    t504->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t504->sval = |DISTINCT|.
    t503 = zcl_lnt_st_combi_module=>opt_prio( i_first = t504 ).
    IF t503 IS BOUND.
      DATA t506 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t502 ?= t503.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t502 IS NOT BOUND.
        TRY.
            t506 ?= t503.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t506 IS BOUND.
          t502 = t506->source( ).
        ENDIF.
        IF t502 IS NOT BOUND.
          CREATE OBJECT t502.
          t502->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t502->oval = t503.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t510) = zlnt_runtime_desc_78196487750d=>zlnt_member_d275_b37eb4f86fc3.
    IF t510 IS BOUND.
      CREATE OBJECT t509.
      t509->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t509->cval = t510.
    ENDIF.
    DATA t511 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t511.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t515) = zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079.
    IF t515 IS BOUND.
      CREATE OBJECT t514.
      t514->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t514->cval = t515.
    ENDIF.
    t511->load( ).
    APPEND t514 TO t511->items.
    t511->save( ).
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t518 TYPE REF TO zif_lnt_statement_runnable.
    DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t520) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    IF t520 IS BOUND.
      CREATE OBJECT t519.
      t519->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t519->cval = t520.
    ENDIF.
    t518 = zcl_lnt_st_combi_module=>opt_prio( i_first = t519 ).
    IF t518 IS BOUND.
      DATA t521 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t517 ?= t518.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t517 IS NOT BOUND.
        TRY.
            t521 ?= t518.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t521 IS BOUND.
          t517 = t521->source( ).
        ENDIF.
        IF t517 IS NOT BOUND.
          CREATE OBJECT t517.
          t517->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t517->oval = t518.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t517 TO t511->items.
    t511->save( ).
    DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t525 TYPE REF TO zif_lnt_statement_runnable.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t526.
    t526->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t526->sval = t15.
    t525 = zcl_lnt_st_combi_module=>opt_prio( i_first = t526 ).
    IF t525 IS BOUND.
      DATA t528 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t524 ?= t525.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t524 IS NOT BOUND.
        TRY.
            t528 ?= t525.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t528 IS BOUND.
          t524 = t528->source( ).
        ENDIF.
        IF t524 IS NOT BOUND.
          CREATE OBJECT t524.
          t524->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t524->oval = t525.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t524 TO t511->items.
    t511->save( ).
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t532 TYPE REF TO zif_lnt_statement_runnable.
    DATA t533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t534) = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
    IF t534 IS BOUND.
      CREATE OBJECT t533.
      t533->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t533->cval = t534.
    ENDIF.
    t532 = zcl_lnt_st_combi_module=>opt_prio( i_first = t533 ).
    IF t532 IS BOUND.
      DATA t535 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t531 ?= t532.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t531 IS NOT BOUND.
        TRY.
            t535 ?= t532.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t535 IS BOUND.
          t531 = t535->source( ).
        ENDIF.
        IF t531 IS NOT BOUND.
          CREATE OBJECT t531.
          t531->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t531->oval = t532.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t531 TO t511->items.
    t511->save( ).
    DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t539 TYPE REF TO zif_lnt_statement_runnable.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t542 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t540 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t540 IS NOT BOUND.
        TRY.
            t542 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t542 IS BOUND.
          t540 = t542->source( ).
        ENDIF.
        IF t540 IS NOT BOUND.
          CREATE OBJECT t540.
          t540->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t540->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t539 = zcl_lnt_st_combi_module=>opt_prio( i_first = t540 ).
    IF t539 IS BOUND.
      DATA t544 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t538 ?= t539.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t538 IS NOT BOUND.
        TRY.
            t544 ?= t539.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t544 IS BOUND.
          t538 = t544->source( ).
        ENDIF.
        IF t538 IS NOT BOUND.
          CREATE OBJECT t538.
          t538->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t538->oval = t539.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t538 TO t511->items.
    t511->save( ).
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t64 IS BOUND.
      DATA t549 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t547 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t547 IS NOT BOUND.
        TRY.
            t549 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t549 IS BOUND.
          t547 = t549->source( ).
        ENDIF.
        IF t547 IS NOT BOUND.
          CREATE OBJECT t547.
          t547->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t547->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t547 TO t511->items.
    t511->save( ).
    t499 = zcl_lnt_st_combi_module=>seq( i_first = t502 i_second = t509 i_rest = t511 ).
    DATA t555 TYPE REF TO zif_lnt_statement_runnable.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t426 IS BOUND.
      DATA t560 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t558 ?= t426.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t558 IS NOT BOUND.
        TRY.
            t560 ?= t426.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t560 IS BOUND.
          t558 = t560->source( ).
        ENDIF.
        IF t558 IS NOT BOUND.
          CREATE OBJECT t558.
          t558->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t558->oval = t426.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t499 IS BOUND.
      DATA t565 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t563 ?= t499.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t563 IS NOT BOUND.
        TRY.
            t565 ?= t499.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t565 IS BOUND.
          t563 = t565->source( ).
        ENDIF.
        IF t563 IS NOT BOUND.
          CREATE OBJECT t563.
          t563->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t563->oval = t499.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t568 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t568.
    t555 = zcl_lnt_st_combi_module=>alt_prio( i_first = t558 i_second = t563 i_rest = t568 ).
    DATA t573 TYPE REF TO zif_lnt_statement_runnable.
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t577) = zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d.
    IF t577 IS BOUND.
      CREATE OBJECT t576.
      t576->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t576->cval = t577.
    ENDIF.
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t580 TYPE REF TO zif_lnt_statement_runnable.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t582.
    t582->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t582->sval = |SELECT|.
    DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t555 IS BOUND.
      DATA t587 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t585 ?= t555.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t585 IS NOT BOUND.
        TRY.
            t587 ?= t555.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t587 IS BOUND.
          t585 = t587->source( ).
        ENDIF.
        IF t585 IS NOT BOUND.
          CREATE OBJECT t585.
          t585->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t585->oval = t555.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t590 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t590.
    t580 = zcl_lnt_st_combi_module=>seq( i_first = t582 i_second = t585 i_rest = t590 ).
    IF t580 IS BOUND.
      DATA t595 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t579 ?= t580.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t579 IS NOT BOUND.
        TRY.
            t595 ?= t580.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t595 IS BOUND.
          t579 = t595->source( ).
        ENDIF.
        IF t579 IS NOT BOUND.
          CREATE OBJECT t579.
          t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t579->oval = t580.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t598 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t598.
    t573 = zcl_lnt_st_combi_module=>alt_prio( i_first = t576 i_second = t579 i_rest = t598 ).
    DATA t603 TYPE REF TO zif_lnt_statement_runnable.
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t606 TYPE REF TO zif_lnt_statement_runnable.
    DATA t608 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t372 IS BOUND.
      DATA t610 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t608 ?= t372.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t608 IS NOT BOUND.
        TRY.
            t610 ?= t372.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t610 IS BOUND.
          t608 = t610->source( ).
        ENDIF.
        IF t608 IS NOT BOUND.
          CREATE OBJECT t608.
          t608->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t608->oval = t372.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t573 IS BOUND.
      DATA t615 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t613 ?= t573.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t613 IS NOT BOUND.
        TRY.
            t615 ?= t573.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t615 IS BOUND.
          t613 = t615->source( ).
        ENDIF.
        IF t613 IS NOT BOUND.
          CREATE OBJECT t613.
          t613->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t613->oval = t573.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t618 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t618.
    t606 = zcl_lnt_st_combi_module=>seq( i_first = t608 i_second = t613 i_rest = t618 ).
    IF t606 IS BOUND.
      DATA t623 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t605 ?= t606.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t605 IS NOT BOUND.
        TRY.
            t623 ?= t606.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t623 IS BOUND.
          t605 = t623->source( ).
        ENDIF.
        IF t605 IS NOT BOUND.
          CREATE OBJECT t605.
          t605->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t605->oval = t606.
        ENDIF.
      ENDIF.
    ENDIF.
    t603 = zcl_lnt_st_combi_module=>star_prio( i_first = t605 ).
    DATA t625 TYPE REF TO zif_lnt_statement_runnable.
    DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t628.
    t628->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t628->sval = |SELECT|.
    DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t632 TYPE REF TO zif_lnt_statement_runnable.
    DATA t634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t161 IS BOUND.
      DATA t636 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t634 ?= t161.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t634 IS NOT BOUND.
        TRY.
            t636 ?= t161.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t636 IS BOUND.
          t634 = t636->source( ).
        ENDIF.
        IF t634 IS NOT BOUND.
          CREATE OBJECT t634.
          t634->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t634->oval = t161.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t234 IS BOUND.
      DATA t641 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t639 ?= t234.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t639 IS NOT BOUND.
        TRY.
            t641 ?= t234.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t641 IS BOUND.
          t639 = t641->source( ).
        ENDIF.
        IF t639 IS NOT BOUND.
          CREATE OBJECT t639.
          t639->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t639->oval = t234.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t644 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t644.
    t632 = zcl_lnt_st_combi_module=>alt_prio( i_first = t634 i_second = t639 i_rest = t644 ).
    IF t632 IS BOUND.
      DATA t649 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t631 ?= t632.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t631 IS NOT BOUND.
        TRY.
            t649 ?= t632.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t649 IS BOUND.
          t631 = t649->source( ).
        ENDIF.
        IF t631 IS NOT BOUND.
          CREATE OBJECT t631.
          t631->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t631->oval = t632.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t652 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t652.
    t625 = zcl_lnt_st_combi_module=>seq( i_first = t628 i_second = t631 i_rest = t652 ).
    DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t625 IS BOUND.
      DATA t661 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t659 ?= t625.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t659 IS NOT BOUND.
        TRY.
            t661 ?= t625.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t661 IS BOUND.
          t659 = t661->source( ).
        ENDIF.
        IF t659 IS NOT BOUND.
          CREATE OBJECT t659.
          t659->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t659->oval = t625.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t603 IS BOUND.
      DATA t666 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t664 ?= t603.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t664 IS NOT BOUND.
        TRY.
            t666 ?= t603.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t666 IS BOUND.
          t664 = t666->source( ).
        ENDIF.
        IF t664 IS NOT BOUND.
          CREATE OBJECT t664.
          t664->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t664->oval = t603.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t669 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t669.
    result = zcl_lnt_st_combi_module=>seq( i_first = t659 i_second = t664 i_rest = t669 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d277_c16b515a2f49.
  ENDMETHOD.
ENDCLASS.
