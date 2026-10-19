* TS: src/abap/2_statements/expressions/for.ts:7:1 For
CLASS zcl_lnt_st_for DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_for IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |WHERE (|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |)|.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |FROM|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t18 = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t24 i_rest = t27 ).
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = |TO|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    t32 = zcl_lnt_st_combi_module=>seq( i_first = t35 i_second = t38 i_rest = t41 ).
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d177_c99f21007fa4.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t57 TYPE REF TO object.
      t57 = t18.
      TRY.
          t54 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t56 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t54 = t56->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t53 = zcl_lnt_st_combi_module=>opt_prio( i_first = t54 ).
    IF t53 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t59 TYPE REF TO object.
      t59 = t53.
      TRY.
          t52 ?= t59.
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
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t60.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t32 IS BOUND.
      DATA t67 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t68 TYPE REF TO object.
      t68 = t32.
      TRY.
          t65 ?= t68.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t65 IS NOT BOUND.
        TRY.
            t67 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t67 IS BOUND.
          t65 = t67->source( ).
        ENDIF.
        IF t65 IS NOT BOUND.
          CREATE OBJECT t65.
          t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t65->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    t64 = zcl_lnt_st_combi_module=>opt_prio( i_first = t65 ).
    IF t64 IS BOUND.
      DATA t69 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t70 TYPE REF TO object.
      t70 = t64.
      TRY.
          t63 ?= t70.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t69 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t69 IS BOUND.
          t63 = t69->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    t60->load( ).
    APPEND t63 TO t60->items.
    t60->save( ).
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t77 TYPE REF TO object.
      t77 = t1.
      TRY.
          t74 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t76 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t74 = t76->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t73 = zcl_lnt_st_combi_module=>opt_prio( i_first = t74 ).
    IF t73 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t79 TYPE REF TO object.
      t79 = t73.
      TRY.
          t72 ?= t79.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t72 IS NOT BOUND.
        TRY.
            t78 ?= t73.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t72 = t78->source( ).
        ENDIF.
        IF t72 IS NOT BOUND.
          CREATE OBJECT t72.
          t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t72->oval = t73.
        ENDIF.
      ENDIF.
    ENDIF.
    t60->load( ).
    APPEND t72 TO t60->items.
    t60->save( ).
    t46 = zcl_lnt_st_combi_module=>seq( i_first = t49 i_second = t52 i_rest = t60 ).
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = |THEN|.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t90->cval = t91.
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t93.
    t84 = zcl_lnt_st_combi_module=>seq( i_first = t87 i_second = t90 i_rest = t93 ).
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = |UNTIL|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = |WHILE|.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t110.
    t102 = zcl_lnt_st_combi_module=>alt_prio( i_first = t104 i_second = t107 i_rest = t110 ).
    IF t102 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t116 TYPE REF TO object.
      t116 = t102.
      TRY.
          t101 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t115 ?= t102.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t101 = t115->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t102.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t118->cval = t119.
    ENDIF.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t121.
    t98 = zcl_lnt_st_combi_module=>seq( i_first = t101 i_second = t118 i_rest = t121 ).
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d178_47418e3f231b.
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t129->cval = t130.
    ENDIF.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t84 IS BOUND.
      DATA t136 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t137 TYPE REF TO object.
      t137 = t84.
      TRY.
          t134 ?= t137.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t134 IS NOT BOUND.
        TRY.
            t136 ?= t84.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t136 IS BOUND.
          t134 = t136->source( ).
        ENDIF.
        IF t134 IS NOT BOUND.
          CREATE OBJECT t134.
          t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t134->oval = t84.
        ENDIF.
      ENDIF.
    ENDIF.
    t133 = zcl_lnt_st_combi_module=>opt( i_first = t134 ).
    IF t133 IS BOUND.
      DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t139 TYPE REF TO object.
      t139 = t133.
      TRY.
          t132 ?= t139.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS NOT BOUND.
        TRY.
            t138 ?= t133.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t138 IS BOUND.
          t132 = t138->source( ).
        ENDIF.
        IF t132 IS NOT BOUND.
          CREATE OBJECT t132.
          t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t132->oval = t133.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t140.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t98 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t146 TYPE REF TO object.
      t146 = t98.
      TRY.
          t143 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t145 ?= t98.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t143 = t145->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t98.
        ENDIF.
      ENDIF.
    ENDIF.
    t140->load( ).
    APPEND t143 TO t140->items.
    t140->save( ).
    t126 = zcl_lnt_st_combi_module=>seq( i_first = t129 i_second = t132 i_rest = t140 ).
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t154.
    t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t154->sval = |GROUP BY|.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t161) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t160->cval = t161.
    ENDIF.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t166.
    t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t166->sval = |(|.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t172) = zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931.
    IF t172 IS BOUND.
      CREATE OBJECT t171.
      t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t171->cval = t172.
    ENDIF.
    t170 = zcl_lnt_st_combi_module=>plus( i_first = t171 ).
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
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t175.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t178.
    t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t178->sval = |)|.
    t175->load( ).
    APPEND t178 TO t175->items.
    t175->save( ).
    t164 = zcl_lnt_st_combi_module=>seq( i_first = t166 i_second = t169 i_rest = t175 ).
    IF t164 IS BOUND.
      DATA t184 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t185 TYPE REF TO object.
      t185 = t164.
      TRY.
          t163 ?= t185.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t163 IS NOT BOUND.
        TRY.
            t184 ?= t164.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t184 IS BOUND.
          t163 = t184->source( ).
        ENDIF.
        IF t163 IS NOT BOUND.
          CREATE OBJECT t163.
          t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t163->oval = t164.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t187.
    t158 = zcl_lnt_st_combi_module=>alt( i_first = t160 i_second = t163 i_rest = t187 ).
    IF t158 IS BOUND.
      DATA t192 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t193 TYPE REF TO object.
      t193 = t158.
      TRY.
          t157 ?= t193.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t192 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t192 IS BOUND.
          t157 = t192->source( ).
        ENDIF.
        IF t157 IS NOT BOUND.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t157->oval = t158.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t194.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = |ASCENDING|.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = |DESCENDING|.
    DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t211.
    t203 = zcl_lnt_st_combi_module=>alt( i_first = t205 i_second = t208 i_rest = t211 ).
    IF t203 IS BOUND.
      DATA t216 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t217 TYPE REF TO object.
      t217 = t203.
      TRY.
          t202 ?= t217.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t202 IS NOT BOUND.
        TRY.
            t216 ?= t203.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t216 IS BOUND.
          t202 = t216->source( ).
        ENDIF.
        IF t202 IS NOT BOUND.
          CREATE OBJECT t202.
          t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t202->oval = t203.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t221.
    t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t221->sval = |AS TEXT|.
    t220 = zcl_lnt_st_combi_module=>opt( i_first = t221 ).
    IF t220 IS BOUND.
      DATA t223 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t224 TYPE REF TO object.
      t224 = t220.
      TRY.
          t219 ?= t224.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t219 IS NOT BOUND.
        TRY.
            t223 ?= t220.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t223 IS BOUND.
          t219 = t223->source( ).
        ENDIF.
        IF t219 IS NOT BOUND.
          CREATE OBJECT t219.
          t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t219->oval = t220.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t226.
    t200 = zcl_lnt_st_combi_module=>seq( i_first = t202 i_second = t219 i_rest = t226 ).
    IF t200 IS BOUND.
      DATA t231 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t232 TYPE REF TO object.
      t232 = t200.
      TRY.
          t199 ?= t232.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t199 IS NOT BOUND.
        TRY.
            t231 ?= t200.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t231 IS BOUND.
          t199 = t231->source( ).
        ENDIF.
        IF t199 IS NOT BOUND.
          CREATE OBJECT t199.
          t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t199->oval = t200.
        ENDIF.
      ENDIF.
    ENDIF.
    t198 = zcl_lnt_st_combi_module=>opt( i_first = t199 ).
    IF t198 IS BOUND.
      DATA t233 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t234 TYPE REF TO object.
      t234 = t198.
      TRY.
          t197 ?= t234.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t197 IS NOT BOUND.
        TRY.
            t233 ?= t198.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t233 IS BOUND.
          t197 = t233->source( ).
        ENDIF.
        IF t197 IS NOT BOUND.
          CREATE OBJECT t197.
          t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t197->oval = t198.
        ENDIF.
      ENDIF.
    ENDIF.
    t194->load( ).
    APPEND t197 TO t194->items.
    t194->save( ).
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t238.
    t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t238->sval = |WITHOUT MEMBERS|.
    t237 = zcl_lnt_st_combi_module=>opt( i_first = t238 ).
    IF t237 IS BOUND.
      DATA t240 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t241 TYPE REF TO object.
      t241 = t237.
      TRY.
          t236 ?= t241.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t236 IS NOT BOUND.
        TRY.
            t240 ?= t237.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t240 IS BOUND.
          t236 = t240->source( ).
        ENDIF.
        IF t236 IS NOT BOUND.
          CREATE OBJECT t236.
          t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t236->oval = t237.
        ENDIF.
      ENDIF.
    ENDIF.
    t194->load( ).
    APPEND t236 TO t194->items.
    t194->save( ).
    t151 = zcl_lnt_st_combi_module=>seq( i_first = t154 i_second = t157 i_rest = t194 ).
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t250) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
    IF t250 IS BOUND.
      CREATE OBJECT t249.
      t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t249->cval = t250.
    ENDIF.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t253) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
    IF t253 IS BOUND.
      CREATE OBJECT t252.
      t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t252->cval = t253.
    ENDIF.
    DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t255.
    t246 = zcl_lnt_st_combi_module=>alt( i_first = t249 i_second = t252 i_rest = t255 ).
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t263 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t263 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp08| ).
    IF t263 IS BOUND.
      DATA t267 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t268 TYPE REF TO object.
      t268 = t263.
      TRY.
          t262 ?= t268.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t262 IS NOT BOUND.
        TRY.
            t267 ?= t263.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t267 IS BOUND.
          t262 = t267->source( ).
        ENDIF.
        IF t262 IS NOT BOUND.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t262->oval = t263.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t272.
    t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t272->sval = |GROUPS|.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t246 IS BOUND.
      DATA t277 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t278 TYPE REF TO object.
      t278 = t246.
      TRY.
          t275 ?= t278.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t275 IS NOT BOUND.
        TRY.
            t277 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t277 IS BOUND.
          t275 = t277->source( ).
        ENDIF.
        IF t275 IS NOT BOUND.
          CREATE OBJECT t275.
          t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t275->oval = t246.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t279.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t282.
    t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t282->sval = |OF|.
    t279->load( ).
    APPEND t282 TO t279->items.
    t279->save( ).
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t246 IS BOUND.
      DATA t287 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t288 TYPE REF TO object.
      t288 = t246.
      TRY.
          t285 ?= t288.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t285 IS NOT BOUND.
        TRY.
            t287 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t287 IS BOUND.
          t285 = t287->source( ).
        ENDIF.
        IF t285 IS NOT BOUND.
          CREATE OBJECT t285.
          t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t285->oval = t246.
        ENDIF.
      ENDIF.
    ENDIF.
    t279->load( ).
    APPEND t285 TO t279->items.
    t279->save( ).
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t290.
    t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t290->sval = |IN|.
    t279->load( ).
    APPEND t290 TO t279->items.
    t279->save( ).
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t294) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t294 IS BOUND.
      CREATE OBJECT t293.
      t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t293->cval = t294.
    ENDIF.
    t279->load( ).
    APPEND t293 TO t279->items.
    t279->save( ).
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t297 TYPE REF TO zif_lnt_statement_runnable.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t151 IS BOUND.
      DATA t300 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t301 TYPE REF TO object.
      t301 = t151.
      TRY.
          t298 ?= t301.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t298 IS NOT BOUND.
        TRY.
            t300 ?= t151.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t300 IS BOUND.
          t298 = t300->source( ).
        ENDIF.
        IF t298 IS NOT BOUND.
          CREATE OBJECT t298.
          t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t298->oval = t151.
        ENDIF.
      ENDIF.
    ENDIF.
    t297 = zcl_lnt_st_combi_module=>opt_prio( i_first = t298 ).
    IF t297 IS BOUND.
      DATA t302 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t303 TYPE REF TO object.
      t303 = t297.
      TRY.
          t296 ?= t303.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t296 IS NOT BOUND.
        TRY.
            t302 ?= t297.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t302 IS BOUND.
          t296 = t302->source( ).
        ENDIF.
        IF t296 IS NOT BOUND.
          CREATE OBJECT t296.
          t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t296->oval = t297.
        ENDIF.
      ENDIF.
    ENDIF.
    t279->load( ).
    APPEND t296 TO t279->items.
    t279->save( ).
    t270 = zcl_lnt_st_combi_module=>seq( i_first = t272 i_second = t275 i_rest = t279 ).
    IF t270 IS BOUND.
      DATA t308 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t309 TYPE REF TO object.
      t309 = t270.
      TRY.
          t269 ?= t309.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t269 IS NOT BOUND.
        TRY.
            t308 ?= t270.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t308 IS BOUND.
          t269 = t308->source( ).
        ENDIF.
        IF t269 IS NOT BOUND.
          CREATE OBJECT t269.
          t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t269->oval = t270.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t312 TYPE REF TO zcl_lnt_iver_options.
    DATA(t317) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t317->has = abap_true.
    t317->value = |OpenABAP|.
    t312 = NEW zcl_lnt_iver_options( i_also = t317 ).
    CREATE OBJECT t312->zlnt_view_ownkeys_b0e8086400eb.
    t312->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t319 ).
    CREATE OBJECT t312->zlnt_json_ownkeys_70e5fd461788.
    t312->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t321 ).
    t260 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t262 i_first = t269 i_opts = t312 ).
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t326.
    t326->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t326->sval = |FOR|.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t330 TYPE REF TO zif_lnt_statement_runnable.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t126 IS BOUND.
      DATA t334 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t335 TYPE REF TO object.
      t335 = t126.
      TRY.
          t332 ?= t335.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t332 IS NOT BOUND.
        TRY.
            t334 ?= t126.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t334 IS BOUND.
          t332 = t334->source( ).
        ENDIF.
        IF t332 IS NOT BOUND.
          CREATE OBJECT t332.
          t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t332->oval = t126.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46 IS BOUND.
      DATA t339 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t340 TYPE REF TO object.
      t340 = t46.
      TRY.
          t337 ?= t340.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t337 IS NOT BOUND.
        TRY.
            t339 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t339 IS BOUND.
          t337 = t339->source( ).
        ENDIF.
        IF t337 IS NOT BOUND.
          CREATE OBJECT t337.
          t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t337->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t341.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t260 IS BOUND.
      DATA t346 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t347 TYPE REF TO object.
      t347 = t260.
      TRY.
          t344 ?= t347.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t344 IS NOT BOUND.
        TRY.
            t346 ?= t260.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t346 IS BOUND.
          t344 = t346->source( ).
        ENDIF.
        IF t344 IS NOT BOUND.
          CREATE OBJECT t344.
          t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t344->oval = t260.
        ENDIF.
      ENDIF.
    ENDIF.
    t341->load( ).
    APPEND t344 TO t341->items.
    t341->save( ).
    t330 = zcl_lnt_st_combi_module=>alt( i_first = t332 i_second = t337 i_rest = t341 ).
    IF t330 IS BOUND.
      DATA t352 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t353 TYPE REF TO object.
      t353 = t330.
      TRY.
          t329 ?= t353.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t329 IS NOT BOUND.
        TRY.
            t352 ?= t330.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t352 IS BOUND.
          t329 = t352->source( ).
        ENDIF.
        IF t329 IS NOT BOUND.
          CREATE OBJECT t329.
          t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t329->oval = t330.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t354 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t354.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t358 TYPE REF TO zif_lnt_statement_runnable.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t360) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    IF t360 IS BOUND.
      CREATE OBJECT t359.
      t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t359->cval = t360.
    ENDIF.
    t358 = zcl_lnt_st_combi_module=>opt_prio( i_first = t359 ).
    IF t358 IS BOUND.
      DATA t361 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t362 TYPE REF TO object.
      t362 = t358.
      TRY.
          t357 ?= t362.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t357 IS NOT BOUND.
        TRY.
            t361 ?= t358.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t361 IS BOUND.
          t357 = t361->source( ).
        ENDIF.
        IF t357 IS NOT BOUND.
          CREATE OBJECT t357.
          t357->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t357->oval = t358.
        ENDIF.
      ENDIF.
    ENDIF.
    t354->load( ).
    APPEND t357 TO t354->items.
    t354->save( ).
    t323 = zcl_lnt_st_combi_module=>seq( i_first = t326 i_second = t329 i_rest = t354 ).
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t369 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t369 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp05| ).
    IF t369 IS BOUND.
      DATA t373 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t374 TYPE REF TO object.
      t374 = t369.
      TRY.
          t368 ?= t374.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t368 IS NOT BOUND.
        TRY.
            t373 ?= t369.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t373 IS BOUND.
          t368 = t373->source( ).
        ENDIF.
        IF t368 IS NOT BOUND.
          CREATE OBJECT t368.
          t368->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t368->oval = t369.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t323 IS BOUND.
      DATA t377 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t378 TYPE REF TO object.
      t378 = t323.
      TRY.
          t375 ?= t378.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t375 IS NOT BOUND.
        TRY.
            t377 ?= t323.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t377 IS BOUND.
          t375 = t377->source( ).
        ENDIF.
        IF t375 IS NOT BOUND.
          CREATE OBJECT t375.
          t375->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t375->oval = t323.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t381 TYPE REF TO zcl_lnt_iver_options.
    DATA(t386) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t386->has = abap_true.
    t386->value = |OpenABAP|.
    t381 = NEW zcl_lnt_iver_options( i_also = t386 ).
    CREATE OBJECT t381->zlnt_view_ownkeys_b0e8086400eb.
    t381->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t381->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t388 ).
    CREATE OBJECT t381->zlnt_json_ownkeys_70e5fd461788.
    t381->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t381->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t390 ).
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t368 i_first = t375 i_opts = t381 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d182_555fcb96e22f.
  ENDMETHOD.
ENDCLASS.
