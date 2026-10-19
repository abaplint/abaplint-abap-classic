* TS: src/cds/expressions/cds_select.ts:7:1 CDSSelect
CLASS zcl_lnt_cds_select DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_select IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t6.
    t6->load( ).
    APPEND |FROM| TO t6->items.
    t6->save( ).
    t5 = zcl_lnt_st_combi_module=>stop_before1( i_words = t6 ).
    IF t5 IS BOUND.
      DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t13 TYPE REF TO object.
      t13 = t5.
      TRY.
          t4 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t12 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t12 IS BOUND.
          t4 = t12->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = |,|.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t18 = zcl_lnt_st_combi_module=>seq( i_first = t20 i_second = t23 i_rest = t26 ).
    IF t18 IS BOUND.
      DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t32 TYPE REF TO object.
      t32 = t18.
      TRY.
          t17 ?= t32.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t31 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t31 IS BOUND.
          t17 = t31->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t16 = zcl_lnt_st_combi_module=>star( i_first = t17 ).
    IF t16 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t34 TYPE REF TO object.
      t34 = t16.
      TRY.
          t15 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t33 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t15 = t33->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t35.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    t35->load( ).
    APPEND t38 TO t35->items.
    t35->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t15 i_rest = t35 ).
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    t44 = zcl_lnt_st_combi_module=>str( i_s = |DISTINCT| ).
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t50->cval = t51.
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = |,|.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t64.
    t56 = zcl_lnt_st_combi_module=>seq( i_first = t58 i_second = t61 i_rest = t64 ).
    IF t56 IS BOUND.
      DATA t69 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t70 TYPE REF TO object.
      t70 = t56.
      TRY.
          t55 ?= t70.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t69 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t69 IS BOUND.
          t55 = t69->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t56.
        ENDIF.
      ENDIF.
    ENDIF.
    t54 = zcl_lnt_st_combi_module=>star( i_first = t55 ).
    IF t54 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t72 TYPE REF TO object.
      t72 = t54.
      TRY.
          t53 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t71 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t53 = t71->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t73.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = |,|.
    t77 = zcl_lnt_st_combi_module=>opt( i_first = t78 ).
    IF t77 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t81 TYPE REF TO object.
      t81 = t77.
      TRY.
          t76 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t80 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t76 = t80->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    t73->load( ).
    APPEND t76 TO t73->items.
    t73->save( ).
    t47 = zcl_lnt_st_combi_module=>seq( i_first = t50 i_second = t53 i_rest = t73 ).
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    t90 = zcl_lnt_st_combi_module=>str( i_s = |\{| ).
    IF t90 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t93 TYPE REF TO object.
      t93 = t90.
      TRY.
          t89 ?= t93.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t89 IS NOT BOUND.
        TRY.
            t92 ?= t90.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS BOUND.
          t89 = t92->source( ).
        ENDIF.
        IF t89 IS NOT BOUND.
          CREATE OBJECT t89.
          t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t89->oval = t90.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = |*|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t47 IS BOUND.
      DATA t103 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t104 TYPE REF TO object.
      t104 = t47.
      TRY.
          t101 ?= t104.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t103 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t103 IS BOUND.
          t101 = t103->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t106.
    t96 = zcl_lnt_st_combi_module=>alt_prio( i_first = t98 i_second = t101 i_rest = t106 ).
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
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t113.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    t117 = zcl_lnt_st_combi_module=>str( i_s = |\}| ).
    IF t117 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t120 TYPE REF TO object.
      t120 = t117.
      TRY.
          t116 ?= t120.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t116 IS NOT BOUND.
        TRY.
            t119 ?= t117.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t116 = t119->source( ).
        ENDIF.
        IF t116 IS NOT BOUND.
          CREATE OBJECT t116.
          t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t116->oval = t117.
        ENDIF.
      ENDIF.
    ENDIF.
    t113->load( ).
    APPEND t116 TO t113->items.
    t113->save( ).
    t86 = zcl_lnt_st_combi_module=>seq( i_first = t89 i_second = t95 i_rest = t113 ).
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t128->cval = t129.
    ENDIF.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t132 IS BOUND.
      CREATE OBJECT t131.
      t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t131->cval = t132.
    ENDIF.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t134.
    t125 = zcl_lnt_st_combi_module=>seq( i_first = t128 i_second = t131 i_rest = t134 ).
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t125 IS BOUND.
      DATA t144 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t145 TYPE REF TO object.
      t145 = t125.
      TRY.
          t142 ?= t145.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t142 IS NOT BOUND.
        TRY.
            t144 ?= t125.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t144 IS BOUND.
          t142 = t144->source( ).
        ENDIF.
        IF t142 IS NOT BOUND.
          CREATE OBJECT t142.
          t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t142->oval = t125.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t148) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t148 IS BOUND.
      CREATE OBJECT t147.
      t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t147->cval = t148.
    ENDIF.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t149.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t153 IS BOUND.
      CREATE OBJECT t152.
      t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t152->cval = t153.
    ENDIF.
    t149->load( ).
    APPEND t152 TO t149->items.
    t149->save( ).
    t139 = zcl_lnt_st_combi_module=>alt_prio( i_first = t142 i_second = t147 i_rest = t149 ).
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t162) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t161->cval = t162.
    ENDIF.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t164.
    t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t164->sval = |=|.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t166.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t169.
    t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t169->sval = |>|.
    t166->load( ).
    APPEND t169 TO t166->items.
    t166->save( ).
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t139 IS BOUND.
      DATA t174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t175 TYPE REF TO object.
      t175 = t139.
      TRY.
          t172 ?= t175.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t172 IS NOT BOUND.
        TRY.
            t174 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t174 IS BOUND.
          t172 = t174->source( ).
        ENDIF.
        IF t172 IS NOT BOUND.
          CREATE OBJECT t172.
          t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t172->oval = t139.
        ENDIF.
      ENDIF.
    ENDIF.
    t166->load( ).
    APPEND t172 TO t166->items.
    t166->save( ).
    t158 = zcl_lnt_st_combi_module=>seq( i_first = t161 i_second = t164 i_rest = t166 ).
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t183.
    t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t183->sval = |BIND|.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = |ASPECT|.
    DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t188.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t192) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t192 IS BOUND.
      CREATE OBJECT t191.
      t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t191->cval = t192.
    ENDIF.
    t188->load( ).
    APPEND t191 TO t188->items.
    t188->save( ).
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t194.
    t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t194->sval = |(|.
    t188->load( ).
    APPEND t194 TO t188->items.
    t188->save( ).
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t158 IS BOUND.
      DATA t199 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t200 TYPE REF TO object.
      t200 = t158.
      TRY.
          t197 ?= t200.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t197 IS NOT BOUND.
        TRY.
            t199 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t199 IS BOUND.
          t197 = t199->source( ).
        ENDIF.
        IF t197 IS NOT BOUND.
          CREATE OBJECT t197.
          t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t197->oval = t158.
        ENDIF.
      ENDIF.
    ENDIF.
    t188->load( ).
    APPEND t197 TO t188->items.
    t188->save( ).
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t207.
    t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t207->sval = |,|.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t158 IS BOUND.
      DATA t212 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t213 TYPE REF TO object.
      t213 = t158.
      TRY.
          t210 ?= t213.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t210 IS NOT BOUND.
        TRY.
            t212 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t212 IS BOUND.
          t210 = t212->source( ).
        ENDIF.
        IF t210 IS NOT BOUND.
          CREATE OBJECT t210.
          t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t210->oval = t158.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t215.
    t205 = zcl_lnt_st_combi_module=>seq( i_first = t207 i_second = t210 i_rest = t215 ).
    IF t205 IS BOUND.
      DATA t220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t221 TYPE REF TO object.
      t221 = t205.
      TRY.
          t204 ?= t221.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t204 IS NOT BOUND.
        TRY.
            t220 ?= t205.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t220 IS BOUND.
          t204 = t220->source( ).
        ENDIF.
        IF t204 IS NOT BOUND.
          CREATE OBJECT t204.
          t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t204->oval = t205.
        ENDIF.
      ENDIF.
    ENDIF.
    t203 = zcl_lnt_st_combi_module=>star_prio( i_first = t204 ).
    IF t203 IS BOUND.
      DATA t222 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t223 TYPE REF TO object.
      t223 = t203.
      TRY.
          t202 ?= t223.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t202 IS NOT BOUND.
        TRY.
            t222 ?= t203.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t222 IS BOUND.
          t202 = t222->source( ).
        ENDIF.
        IF t202 IS NOT BOUND.
          CREATE OBJECT t202.
          t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t202->oval = t203.
        ENDIF.
      ENDIF.
    ENDIF.
    t188->load( ).
    APPEND t202 TO t188->items.
    t188->save( ).
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t225.
    t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t225->sval = |)|.
    t188->load( ).
    APPEND t225 TO t188->items.
    t188->save( ).
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t233.
    t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t233->sval = |AS|.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t237) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t237 IS BOUND.
      CREATE OBJECT t236.
      t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t236->cval = t237.
    ENDIF.
    DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t239.
    t231 = zcl_lnt_st_combi_module=>seq( i_first = t233 i_second = t236 i_rest = t239 ).
    IF t231 IS BOUND.
      DATA t244 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t245 TYPE REF TO object.
      t245 = t231.
      TRY.
          t230 ?= t245.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t230 IS NOT BOUND.
        TRY.
            t244 ?= t231.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t244 IS BOUND.
          t230 = t244->source( ).
        ENDIF.
        IF t230 IS NOT BOUND.
          CREATE OBJECT t230.
          t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t230->oval = t231.
        ENDIF.
      ENDIF.
    ENDIF.
    t229 = zcl_lnt_st_combi_module=>opt_prio( i_first = t230 ).
    IF t229 IS BOUND.
      DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t247 TYPE REF TO object.
      t247 = t229.
      TRY.
          t228 ?= t247.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t228 IS NOT BOUND.
        TRY.
            t246 ?= t229.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t246 IS BOUND.
          t228 = t246->source( ).
        ENDIF.
        IF t228 IS NOT BOUND.
          CREATE OBJECT t228.
          t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t228->oval = t229.
        ENDIF.
      ENDIF.
    ENDIF.
    t188->load( ).
    APPEND t228 TO t188->items.
    t188->save( ).
    t180 = zcl_lnt_st_combi_module=>seq( i_first = t183 i_second = t186 i_rest = t188 ).
    DATA t252 TYPE REF TO zif_lnt_statement_runnable.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t255.
    t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t255->sval = |(|.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t259) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1112_606bcf340c7d.
    IF t259 IS BOUND.
      CREATE OBJECT t258.
      t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t258->cval = t259.
    ENDIF.
    DATA t260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t260.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t263.
    t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t263->sval = |)|.
    t260->load( ).
    APPEND t263 TO t260->items.
    t260->save( ).
    t252 = zcl_lnt_st_combi_module=>seq( i_first = t255 i_second = t258 i_rest = t260 ).
    DATA t269 TYPE REF TO zif_lnt_statement_runnable.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t252 IS BOUND.
      DATA t274 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t275 TYPE REF TO object.
      t275 = t252.
      TRY.
          t272 ?= t275.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t272 IS NOT BOUND.
        TRY.
            t274 ?= t252.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t274 IS BOUND.
          t272 = t274->source( ).
        ENDIF.
        IF t272 IS NOT BOUND.
          CREATE OBJECT t272.
          t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t272->oval = t252.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t278) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1112_606bcf340c7d.
    IF t278 IS BOUND.
      CREATE OBJECT t277.
      t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t277->cval = t278.
    ENDIF.
    DATA t280 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t280.
    t269 = zcl_lnt_st_combi_module=>alt_prio( i_first = t272 i_second = t277 i_rest = t280 ).
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t287.
    t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t287->sval = |SELECT|.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44 IS BOUND.
      DATA t294 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t295 TYPE REF TO object.
      t295 = t44.
      TRY.
          t292 ?= t295.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t292 IS NOT BOUND.
        TRY.
            t294 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t294 IS BOUND.
          t292 = t294->source( ).
        ENDIF.
        IF t292 IS NOT BOUND.
          CREATE OBJECT t292.
          t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t292->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    t291 = zcl_lnt_st_combi_module=>opt_prio( i_first = t292 ).
    IF t291 IS BOUND.
      DATA t296 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t297 TYPE REF TO object.
      t297 = t291.
      TRY.
          t290 ?= t297.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t290 IS NOT BOUND.
        TRY.
            t296 ?= t291.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t296 IS BOUND.
          t290 = t296->source( ).
        ENDIF.
        IF t290 IS NOT BOUND.
          CREATE OBJECT t290.
          t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t290->oval = t291.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t298.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t306.
    t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t306->sval = |*|.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t311 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t312 TYPE REF TO object.
      t312 = t1.
      TRY.
          t309 ?= t312.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t309 IS NOT BOUND.
        TRY.
            t311 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t311 IS BOUND.
          t309 = t311->source( ).
        ENDIF.
        IF t309 IS NOT BOUND.
          CREATE OBJECT t309.
          t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t309->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t314 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t314.
    t304 = zcl_lnt_st_combi_module=>alt_prio( i_first = t306 i_second = t309 i_rest = t314 ).
    IF t304 IS BOUND.
      DATA t319 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t320 TYPE REF TO object.
      t320 = t304.
      TRY.
          t303 ?= t320.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t303 IS NOT BOUND.
        TRY.
            t319 ?= t304.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t319 IS BOUND.
          t303 = t319->source( ).
        ENDIF.
        IF t303 IS NOT BOUND.
          CREATE OBJECT t303.
          t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t303->oval = t304.
        ENDIF.
      ENDIF.
    ENDIF.
    t302 = zcl_lnt_st_combi_module=>opt( i_first = t303 ).
    IF t302 IS BOUND.
      DATA t321 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t322 TYPE REF TO object.
      t322 = t302.
      TRY.
          t301 ?= t322.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t301 IS NOT BOUND.
        TRY.
            t321 ?= t302.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t321 IS BOUND.
          t301 = t321->source( ).
        ENDIF.
        IF t301 IS NOT BOUND.
          CREATE OBJECT t301.
          t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t301->oval = t302.
        ENDIF.
      ENDIF.
    ENDIF.
    t298->load( ).
    APPEND t301 TO t298->items.
    t298->save( ).
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t324.
    t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t324->sval = |FROM|.
    t298->load( ).
    APPEND t324 TO t298->items.
    t298->save( ).
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t328) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    IF t328 IS BOUND.
      CREATE OBJECT t327.
      t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t327->cval = t328.
    ENDIF.
    t298->load( ).
    APPEND t327 TO t298->items.
    t298->save( ).
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t333) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1108_9ad6b30e9664.
    IF t333 IS BOUND.
      CREATE OBJECT t332.
      t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t332->cval = t333.
    ENDIF.
    t331 = zcl_lnt_st_combi_module=>star( i_first = t332 ).
    IF t331 IS BOUND.
      DATA t334 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t335 TYPE REF TO object.
      t335 = t331.
      TRY.
          t330 ?= t335.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t330 IS NOT BOUND.
        TRY.
            t334 ?= t331.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t334 IS BOUND.
          t330 = t334->source( ).
        ENDIF.
        IF t330 IS NOT BOUND.
          CREATE OBJECT t330.
          t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t330->oval = t331.
        ENDIF.
      ENDIF.
    ENDIF.
    t298->load( ).
    APPEND t330 TO t298->items.
    t298->save( ).
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t338 TYPE REF TO zif_lnt_statement_runnable.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t340 TYPE REF TO zif_lnt_statement_runnable.
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t343) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1096_358eab8a400f.
    IF t343 IS BOUND.
      CREATE OBJECT t342.
      t342->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t342->cval = t343.
    ENDIF.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t346) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    IF t346 IS BOUND.
      CREATE OBJECT t345.
      t345->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t345->cval = t346.
    ENDIF.
    DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t348.
    t340 = zcl_lnt_st_combi_module=>alt_prio( i_first = t342 i_second = t345 i_rest = t348 ).
    IF t340 IS BOUND.
      DATA t353 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t354 TYPE REF TO object.
      t354 = t340.
      TRY.
          t339 ?= t354.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t339 IS NOT BOUND.
        TRY.
            t353 ?= t340.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t353 IS BOUND.
          t339 = t353->source( ).
        ENDIF.
        IF t339 IS NOT BOUND.
          CREATE OBJECT t339.
          t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t339->oval = t340.
        ENDIF.
      ENDIF.
    ENDIF.
    t338 = zcl_lnt_st_combi_module=>star( i_first = t339 ).
    IF t338 IS BOUND.
      DATA t355 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t356 TYPE REF TO object.
      t356 = t338.
      TRY.
          t337 ?= t356.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t337 IS NOT BOUND.
        TRY.
            t355 ?= t338.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t355 IS BOUND.
          t337 = t355->source( ).
        ENDIF.
        IF t337 IS NOT BOUND.
          CREATE OBJECT t337.
          t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t337->oval = t338.
        ENDIF.
      ENDIF.
    ENDIF.
    t298->load( ).
    APPEND t337 TO t298->items.
    t298->save( ).
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t180 IS BOUND.
      DATA t362 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t363 TYPE REF TO object.
      t363 = t180.
      TRY.
          t360 ?= t363.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t360 IS NOT BOUND.
        TRY.
            t362 ?= t180.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t362 IS BOUND.
          t360 = t362->source( ).
        ENDIF.
        IF t360 IS NOT BOUND.
          CREATE OBJECT t360.
          t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t360->oval = t180.
        ENDIF.
      ENDIF.
    ENDIF.
    t359 = zcl_lnt_st_combi_module=>star_prio( i_first = t360 ).
    IF t359 IS BOUND.
      DATA t364 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t365 TYPE REF TO object.
      t365 = t359.
      TRY.
          t358 ?= t365.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t358 IS NOT BOUND.
        TRY.
            t364 ?= t359.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t364 IS BOUND.
          t358 = t364->source( ).
        ENDIF.
        IF t358 IS NOT BOUND.
          CREATE OBJECT t358.
          t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t358->oval = t359.
        ENDIF.
      ENDIF.
    ENDIF.
    t298->load( ).
    APPEND t358 TO t298->items.
    t298->save( ).
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t368 TYPE REF TO zif_lnt_statement_runnable.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t86 IS BOUND.
      DATA t371 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t372 TYPE REF TO object.
      t372 = t86.
      TRY.
          t369 ?= t372.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t369 IS NOT BOUND.
        TRY.
            t371 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t371 IS BOUND.
          t369 = t371->source( ).
        ENDIF.
        IF t369 IS NOT BOUND.
          CREATE OBJECT t369.
          t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t369->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    t368 = zcl_lnt_st_combi_module=>opt( i_first = t369 ).
    IF t368 IS BOUND.
      DATA t373 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t374 TYPE REF TO object.
      t374 = t368.
      TRY.
          t367 ?= t374.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t367 IS NOT BOUND.
        TRY.
            t373 ?= t368.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t373 IS BOUND.
          t367 = t373->source( ).
        ENDIF.
        IF t367 IS NOT BOUND.
          CREATE OBJECT t367.
          t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t367->oval = t368.
        ENDIF.
      ENDIF.
    ENDIF.
    t298->load( ).
    APPEND t367 TO t298->items.
    t298->save( ).
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t377 TYPE REF TO zif_lnt_statement_runnable.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t379) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1104_02fd7d49de66.
    IF t379 IS BOUND.
      CREATE OBJECT t378.
      t378->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t378->cval = t379.
    ENDIF.
    t377 = zcl_lnt_st_combi_module=>opt_prio( i_first = t378 ).
    IF t377 IS BOUND.
      DATA t380 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t381 TYPE REF TO object.
      t381 = t377.
      TRY.
          t376 ?= t381.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t376 IS NOT BOUND.
        TRY.
            t380 ?= t377.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t380 IS BOUND.
          t376 = t380->source( ).
        ENDIF.
        IF t376 IS NOT BOUND.
          CREATE OBJECT t376.
          t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t376->oval = t377.
        ENDIF.
      ENDIF.
    ENDIF.
    t298->load( ).
    APPEND t376 TO t298->items.
    t298->save( ).
    DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t384 TYPE REF TO zif_lnt_statement_runnable.
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t386) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1115_36a563593830.
    IF t386 IS BOUND.
      CREATE OBJECT t385.
      t385->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t385->cval = t386.
    ENDIF.
    t384 = zcl_lnt_st_combi_module=>opt_prio( i_first = t385 ).
    IF t384 IS BOUND.
      DATA t387 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t388 TYPE REF TO object.
      t388 = t384.
      TRY.
          t383 ?= t388.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t383 IS NOT BOUND.
        TRY.
            t387 ?= t384.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t387 IS BOUND.
          t383 = t387->source( ).
        ENDIF.
        IF t383 IS NOT BOUND.
          CREATE OBJECT t383.
          t383->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t383->oval = t384.
        ENDIF.
      ENDIF.
    ENDIF.
    t298->load( ).
    APPEND t383 TO t298->items.
    t298->save( ).
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t391 TYPE REF TO zif_lnt_statement_runnable.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t393) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1118_b270eb02b737.
    IF t393 IS BOUND.
      CREATE OBJECT t392.
      t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t392->cval = t393.
    ENDIF.
    t391 = zcl_lnt_st_combi_module=>opt_prio( i_first = t392 ).
    IF t391 IS BOUND.
      DATA t394 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t395 TYPE REF TO object.
      t395 = t391.
      TRY.
          t390 ?= t395.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t390 IS NOT BOUND.
        TRY.
            t394 ?= t391.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t394 IS BOUND.
          t390 = t394->source( ).
        ENDIF.
        IF t390 IS NOT BOUND.
          CREATE OBJECT t390.
          t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t390->oval = t391.
        ENDIF.
      ENDIF.
    ENDIF.
    t298->load( ).
    APPEND t390 TO t298->items.
    t298->save( ).
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t398 TYPE REF TO zif_lnt_statement_runnable.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t400 TYPE REF TO zif_lnt_statement_runnable.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t403 TYPE REF TO zif_lnt_statement_runnable.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t405.
    t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t405->sval = |UNION|.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t409 TYPE REF TO zif_lnt_statement_runnable.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t410.
    t410->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t410->sval = |ALL|.
    t409 = zcl_lnt_st_combi_module=>opt_prio( i_first = t410 ).
    IF t409 IS BOUND.
      DATA t412 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t413 TYPE REF TO object.
      t413 = t409.
      TRY.
          t408 ?= t413.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t408 IS NOT BOUND.
        TRY.
            t412 ?= t409.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t412 IS BOUND.
          t408 = t412->source( ).
        ENDIF.
        IF t408 IS NOT BOUND.
          CREATE OBJECT t408.
          t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t408->oval = t409.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t414 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t414.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t269 IS BOUND.
      DATA t419 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t420 TYPE REF TO object.
      t420 = t269.
      TRY.
          t417 ?= t420.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t417 IS NOT BOUND.
        TRY.
            t419 ?= t269.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t419 IS BOUND.
          t417 = t419->source( ).
        ENDIF.
        IF t417 IS NOT BOUND.
          CREATE OBJECT t417.
          t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t417->oval = t269.
        ENDIF.
      ENDIF.
    ENDIF.
    t414->load( ).
    APPEND t417 TO t414->items.
    t414->save( ).
    t403 = zcl_lnt_st_combi_module=>seq( i_first = t405 i_second = t408 i_rest = t414 ).
    IF t403 IS BOUND.
      DATA t425 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t426 TYPE REF TO object.
      t426 = t403.
      TRY.
          t402 ?= t426.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t402 IS NOT BOUND.
        TRY.
            t425 ?= t403.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t425 IS BOUND.
          t402 = t425->source( ).
        ENDIF.
        IF t402 IS NOT BOUND.
          CREATE OBJECT t402.
          t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t402->oval = t403.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t429 TYPE REF TO zif_lnt_statement_runnable.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t431.
    t431->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t431->sval = |EXCEPT|.
    DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t269 IS BOUND.
      DATA t436 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t437 TYPE REF TO object.
      t437 = t269.
      TRY.
          t434 ?= t437.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t434 IS NOT BOUND.
        TRY.
            t436 ?= t269.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t436 IS BOUND.
          t434 = t436->source( ).
        ENDIF.
        IF t434 IS NOT BOUND.
          CREATE OBJECT t434.
          t434->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t434->oval = t269.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t439 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t439.
    t429 = zcl_lnt_st_combi_module=>seq( i_first = t431 i_second = t434 i_rest = t439 ).
    IF t429 IS BOUND.
      DATA t444 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t445 TYPE REF TO object.
      t445 = t429.
      TRY.
          t428 ?= t445.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t428 IS NOT BOUND.
        TRY.
            t444 ?= t429.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t444 IS BOUND.
          t428 = t444->source( ).
        ENDIF.
        IF t428 IS NOT BOUND.
          CREATE OBJECT t428.
          t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t428->oval = t429.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t446 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t446.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t450 TYPE REF TO zif_lnt_statement_runnable.
    DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t452.
    t452->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t452->sval = |INTERSECT|.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t269 IS BOUND.
      DATA t457 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t458 TYPE REF TO object.
      t458 = t269.
      TRY.
          t455 ?= t458.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t455 IS NOT BOUND.
        TRY.
            t457 ?= t269.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t457 IS BOUND.
          t455 = t457->source( ).
        ENDIF.
        IF t455 IS NOT BOUND.
          CREATE OBJECT t455.
          t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t455->oval = t269.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t460 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t460.
    t450 = zcl_lnt_st_combi_module=>seq( i_first = t452 i_second = t455 i_rest = t460 ).
    IF t450 IS BOUND.
      DATA t465 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t466 TYPE REF TO object.
      t466 = t450.
      TRY.
          t449 ?= t466.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t449 IS NOT BOUND.
        TRY.
            t465 ?= t450.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t465 IS BOUND.
          t449 = t465->source( ).
        ENDIF.
        IF t449 IS NOT BOUND.
          CREATE OBJECT t449.
          t449->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t449->oval = t450.
        ENDIF.
      ENDIF.
    ENDIF.
    t446->load( ).
    APPEND t449 TO t446->items.
    t446->save( ).
    t400 = zcl_lnt_st_combi_module=>alt_prio( i_first = t402 i_second = t428 i_rest = t446 ).
    IF t400 IS BOUND.
      DATA t471 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t472 TYPE REF TO object.
      t472 = t400.
      TRY.
          t399 ?= t472.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t399 IS NOT BOUND.
        TRY.
            t471 ?= t400.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t471 IS BOUND.
          t399 = t471->source( ).
        ENDIF.
        IF t399 IS NOT BOUND.
          CREATE OBJECT t399.
          t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t399->oval = t400.
        ENDIF.
      ENDIF.
    ENDIF.
    t398 = zcl_lnt_st_combi_module=>opt_prio( i_first = t399 ).
    IF t398 IS BOUND.
      DATA t473 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t474 TYPE REF TO object.
      t474 = t398.
      TRY.
          t397 ?= t474.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t397 IS NOT BOUND.
        TRY.
            t473 ?= t398.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t473 IS BOUND.
          t397 = t473->source( ).
        ENDIF.
        IF t397 IS NOT BOUND.
          CREATE OBJECT t397.
          t397->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t397->oval = t398.
        ENDIF.
      ENDIF.
    ENDIF.
    t298->load( ).
    APPEND t397 TO t298->items.
    t298->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t287 i_second = t290 i_rest = t298 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1112_606bcf340c7d.
  ENDMETHOD.
ENDCLASS.
