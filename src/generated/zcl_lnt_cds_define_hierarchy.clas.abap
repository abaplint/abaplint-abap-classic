* TS: src/cds/expressions/cds_define_hierarchy.ts:5:1 CDSDefineHierarchy
CLASS zcl_lnt_cds_define_hierarchy DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_define_hierarchy IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t6->cval = t7.
    ENDIF.
    t5 = zcl_lnt_st_combi_module=>star( i_first = t6 ).
    IF t5 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t4 ?= t5.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t8 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t4 = t8->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t13.
    t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t13->sval = |KEY|.
    t12 = zcl_lnt_st_combi_module=>opt_prio( i_first = t13 ).
    IF t12 IS BOUND.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t11 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11 IS NOT BOUND.
        TRY.
            t15 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t15 IS BOUND.
          t11 = t15->source( ).
        ENDIF.
        IF t11 IS NOT BOUND.
          CREATE OBJECT t11.
          t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    t17->load( ).
    APPEND t20 TO t17->items.
    t17->save( ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t25->cval = t26.
    ENDIF.
    t24 = zcl_lnt_st_combi_module=>opt_prio( i_first = t25 ).
    IF t24 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t23 ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23 IS NOT BOUND.
        TRY.
            t27 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t23 = t27->source( ).
        ENDIF.
        IF t23 IS NOT BOUND.
          CREATE OBJECT t23.
          t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t23->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    t17->load( ).
    APPEND t23 TO t17->items.
    t17->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t11 i_rest = t17 ).
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = |ASCENDING|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = |DESCENDING|.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t42.
    t33 = zcl_lnt_st_combi_module=>alt_prio( i_first = t36 i_second = t39 i_rest = t42 ).
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t50->cval = t51.
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t55 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t57 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t55 = t57->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    t54 = zcl_lnt_st_combi_module=>opt_prio( i_first = t55 ).
    IF t54 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t53 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t59 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t53 = t59->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    t47 = zcl_lnt_st_combi_module=>seq( i_first = t50 i_second = t53 i_rest = t62 ).
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = |SIBLINGS|.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = |ORDER|.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t75.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = |BY|.
    t75->load( ).
    APPEND t78 TO t75->items.
    t75->save( ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t47 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t81 ?= t47.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t81 IS NOT BOUND.
        TRY.
            t83 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t81 = t83->source( ).
        ENDIF.
        IF t81 IS NOT BOUND.
          CREATE OBJECT t81.
          t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t81->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    t75->load( ).
    APPEND t81 TO t75->items.
    t75->save( ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = |,|.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t47 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t94 ?= t47.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t94 IS NOT BOUND.
        TRY.
            t96 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t94 = t96->source( ).
        ENDIF.
        IF t94 IS NOT BOUND.
          CREATE OBJECT t94.
          t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t94->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t99.
    t89 = zcl_lnt_st_combi_module=>seq( i_first = t91 i_second = t94 i_rest = t99 ).
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
    t87 = zcl_lnt_st_combi_module=>star( i_first = t88 ).
    IF t87 IS BOUND.
      DATA t106 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t86 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t106 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t106 IS BOUND.
          t86 = t106->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    t75->load( ).
    APPEND t86 TO t75->items.
    t75->save( ).
    t67 = zcl_lnt_st_combi_module=>seq( i_first = t70 i_second = t73 i_rest = t75 ).
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t115.
    t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t115->sval = |DIRECTORY|.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t118->cval = t119.
    ENDIF.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t120.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = |FILTER|.
    t120->load( ).
    APPEND t123 TO t120->items.
    t120->save( ).
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t126.
    t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t126->sval = |BY|.
    t120->load( ).
    APPEND t126 TO t120->items.
    t120->save( ).
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t129->cval = t130.
    ENDIF.
    t120->load( ).
    APPEND t129 TO t120->items.
    t120->save( ).
    t112 = zcl_lnt_st_combi_module=>seq( i_first = t115 i_second = t118 i_rest = t120 ).
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t138.
    t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t138->sval = |PERIOD|.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t141.
    t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t141->sval = |FROM|.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t143.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t146->cval = t147.
    ENDIF.
    t143->load( ).
    APPEND t146 TO t143->items.
    t143->save( ).
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t149.
    t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t149->sval = |TO|.
    t143->load( ).
    APPEND t149 TO t143->items.
    t143->save( ).
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t153 IS BOUND.
      CREATE OBJECT t152.
      t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t152->cval = t153.
    ENDIF.
    t143->load( ).
    APPEND t152 TO t143->items.
    t143->save( ).
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t160.
    t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t160->sval = |VALID|.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t163.
    t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t163->sval = |FROM|.
    DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t165.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t172) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t172 IS BOUND.
      CREATE OBJECT t171.
      t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t171->cval = t172.
    ENDIF.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t175) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t175 IS BOUND.
      CREATE OBJECT t174.
      t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t174->cval = t175.
    ENDIF.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t177.
    t169 = zcl_lnt_st_combi_module=>alt_prio( i_first = t171 i_second = t174 i_rest = t177 ).
    IF t169 IS BOUND.
      DATA t182 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t168 ?= t169.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t168 IS NOT BOUND.
        TRY.
            t182 ?= t169.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t182 IS BOUND.
          t168 = t182->source( ).
        ENDIF.
        IF t168 IS NOT BOUND.
          CREATE OBJECT t168.
          t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t168->oval = t169.
        ENDIF.
      ENDIF.
    ENDIF.
    t165->load( ).
    APPEND t168 TO t165->items.
    t165->save( ).
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t185.
    t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t185->sval = |TO|.
    t165->load( ).
    APPEND t185 TO t165->items.
    t165->save( ).
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t192) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t192 IS BOUND.
      CREATE OBJECT t191.
      t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t191->cval = t192.
    ENDIF.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t195) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t195 IS BOUND.
      CREATE OBJECT t194.
      t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t194->cval = t195.
    ENDIF.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t197.
    t189 = zcl_lnt_st_combi_module=>alt_prio( i_first = t191 i_second = t194 i_rest = t197 ).
    IF t189 IS BOUND.
      DATA t202 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t188 ?= t189.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t188 IS NOT BOUND.
        TRY.
            t202 ?= t189.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t202 IS BOUND.
          t188 = t202->source( ).
        ENDIF.
        IF t188 IS NOT BOUND.
          CREATE OBJECT t188.
          t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t188->oval = t189.
        ENDIF.
      ENDIF.
    ENDIF.
    t165->load( ).
    APPEND t188 TO t165->items.
    t165->save( ).
    t158 = zcl_lnt_st_combi_module=>seq( i_first = t160 i_second = t163 i_rest = t165 ).
    IF t158 IS BOUND.
      DATA t208 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t157 ?= t158.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t208 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t208 IS BOUND.
          t157 = t208->source( ).
        ENDIF.
        IF t157 IS NOT BOUND.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t157->oval = t158.
        ENDIF.
      ENDIF.
    ENDIF.
    t156 = zcl_lnt_st_combi_module=>opt( i_first = t157 ).
    IF t156 IS BOUND.
      DATA t210 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t155 ?= t156.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t155 IS NOT BOUND.
        TRY.
            t210 ?= t156.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t210 IS BOUND.
          t155 = t210->source( ).
        ENDIF.
        IF t155 IS NOT BOUND.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t155->oval = t156.
        ENDIF.
      ENDIF.
    ENDIF.
    t143->load( ).
    APPEND t155 TO t143->items.
    t143->save( ).
    t135 = zcl_lnt_st_combi_module=>seq( i_first = t138 i_second = t141 i_rest = t143 ).
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t220) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t220 IS BOUND.
      CREATE OBJECT t219.
      t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t219->cval = t220.
    ENDIF.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t223) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1090_761dcdeb1ada.
    IF t223 IS BOUND.
      CREATE OBJECT t222.
      t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t222->cval = t223.
    ENDIF.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t224.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t228 IS BOUND.
      CREATE OBJECT t227.
      t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t227->cval = t228.
    ENDIF.
    t224->load( ).
    APPEND t227 TO t224->items.
    t224->save( ).
    t216 = zcl_lnt_st_combi_module=>alt_prio( i_first = t219 i_second = t222 i_rest = t224 ).
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t236.
    t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t236->sval = |BULK|.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t239.
    t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t239->sval = |INCREMENTAL|.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t241.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t245) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t245 IS BOUND.
      CREATE OBJECT t244.
      t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t244->cval = t245.
    ENDIF.
    t241->load( ).
    APPEND t244 TO t241->items.
    t241->save( ).
    t233 = zcl_lnt_st_combi_module=>alt_prio( i_first = t236 i_second = t239 i_rest = t241 ).
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t253.
    t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t253->sval = |SOURCE|.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t257) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t257 IS BOUND.
      CREATE OBJECT t256.
      t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t256->cval = t257.
    ENDIF.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t258.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t262 TYPE REF TO zif_lnt_statement_runnable.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t264) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1101_9cef074aa21b.
    IF t264 IS BOUND.
      CREATE OBJECT t263.
      t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t263->cval = t264.
    ENDIF.
    t262 = zcl_lnt_st_combi_module=>opt( i_first = t263 ).
    IF t262 IS BOUND.
      DATA t265 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t261 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t261 IS NOT BOUND.
        TRY.
            t265 ?= t262.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS BOUND.
          t261 = t265->source( ).
        ENDIF.
        IF t261 IS NOT BOUND.
          CREATE OBJECT t261.
          t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t261->oval = t262.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t261 TO t258->items.
    t258->save( ).
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t268.
    t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t268->sval = |CHILD|.
    t258->load( ).
    APPEND t268 TO t258->items.
    t258->save( ).
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t271.
    t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t271->sval = |TO|.
    t258->load( ).
    APPEND t271 TO t258->items.
    t258->save( ).
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t274.
    t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t274->sval = |PARENT|.
    t258->load( ).
    APPEND t274 TO t258->items.
    t258->save( ).
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t277.
    t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t277->sval = |ASSOCIATION|.
    t258->load( ).
    APPEND t277 TO t258->items.
    t258->save( ).
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t281) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t281 IS BOUND.
      CREATE OBJECT t280.
      t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t280->cval = t281.
    ENDIF.
    t258->load( ).
    APPEND t280 TO t258->items.
    t258->save( ).
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t289 TYPE REF TO zif_lnt_statement_runnable.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t292 TYPE REF TO zif_lnt_statement_runnable.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t112 IS BOUND.
      DATA t295 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t293 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t293 IS NOT BOUND.
        TRY.
            t295 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t295 IS BOUND.
          t293 = t295->source( ).
        ENDIF.
        IF t293 IS NOT BOUND.
          CREATE OBJECT t293.
          t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t293->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t292 = zcl_lnt_st_combi_module=>opt( i_first = t293 ).
    IF t292 IS BOUND.
      DATA t297 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t291 ?= t292.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t291 IS NOT BOUND.
        TRY.
            t297 ?= t292.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t297 IS BOUND.
          t291 = t297->source( ).
        ENDIF.
        IF t291 IS NOT BOUND.
          CREATE OBJECT t291.
          t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t291->oval = t292.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t135 IS BOUND.
      DATA t302 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t300 ?= t135.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t300 IS NOT BOUND.
        TRY.
            t302 ?= t135.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t302 IS BOUND.
          t300 = t302->source( ).
        ENDIF.
        IF t300 IS NOT BOUND.
          CREATE OBJECT t300.
          t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t300->oval = t135.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t304.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t308 TYPE REF TO zif_lnt_statement_runnable.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t112 IS BOUND.
      DATA t311 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t309 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t309 IS NOT BOUND.
        TRY.
            t311 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t311 IS BOUND.
          t309 = t311->source( ).
        ENDIF.
        IF t309 IS NOT BOUND.
          CREATE OBJECT t309.
          t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t309->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t308 = zcl_lnt_st_combi_module=>opt( i_first = t309 ).
    IF t308 IS BOUND.
      DATA t313 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t307 ?= t308.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t307 IS NOT BOUND.
        TRY.
            t313 ?= t308.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t313 IS BOUND.
          t307 = t313->source( ).
        ENDIF.
        IF t307 IS NOT BOUND.
          CREATE OBJECT t307.
          t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t307->oval = t308.
        ENDIF.
      ENDIF.
    ENDIF.
    t304->load( ).
    APPEND t307 TO t304->items.
    t304->save( ).
    t289 = zcl_lnt_st_combi_module=>seq( i_first = t291 i_second = t300 i_rest = t304 ).
    IF t289 IS BOUND.
      DATA t319 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t288 ?= t289.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t288 IS NOT BOUND.
        TRY.
            t319 ?= t289.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t319 IS BOUND.
          t288 = t319->source( ).
        ENDIF.
        IF t288 IS NOT BOUND.
          CREATE OBJECT t288.
          t288->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t288->oval = t289.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t135 IS BOUND.
      DATA t327 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t325 ?= t135.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t325 IS NOT BOUND.
        TRY.
            t327 ?= t135.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t327 IS BOUND.
          t325 = t327->source( ).
        ENDIF.
        IF t325 IS NOT BOUND.
          CREATE OBJECT t325.
          t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t325->oval = t135.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t112 IS BOUND.
      DATA t334 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t332 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t332 IS NOT BOUND.
        TRY.
            t334 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t334 IS BOUND.
          t332 = t334->source( ).
        ENDIF.
        IF t332 IS NOT BOUND.
          CREATE OBJECT t332.
          t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t332->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t331 = zcl_lnt_st_combi_module=>opt( i_first = t332 ).
    IF t331 IS BOUND.
      DATA t336 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t330 ?= t331.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t330 IS NOT BOUND.
        TRY.
            t336 ?= t331.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t336 IS BOUND.
          t330 = t336->source( ).
        ENDIF.
        IF t330 IS NOT BOUND.
          CREATE OBJECT t330.
          t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t330->oval = t331.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t339 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t339.
    t323 = zcl_lnt_st_combi_module=>seq( i_first = t325 i_second = t330 i_rest = t339 ).
    IF t323 IS BOUND.
      DATA t344 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t322 ?= t323.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t322 IS NOT BOUND.
        TRY.
            t344 ?= t323.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t344 IS BOUND.
          t322 = t344->source( ).
        ENDIF.
        IF t322 IS NOT BOUND.
          CREATE OBJECT t322.
          t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t322->oval = t323.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t346 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t346.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t112 IS BOUND.
      DATA t351 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t349 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t349 IS NOT BOUND.
        TRY.
            t351 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t351 IS BOUND.
          t349 = t351->source( ).
        ENDIF.
        IF t349 IS NOT BOUND.
          CREATE OBJECT t349.
          t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t349->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t346->load( ).
    APPEND t349 TO t346->items.
    t346->save( ).
    t286 = zcl_lnt_st_combi_module=>alt_prio( i_first = t288 i_second = t322 i_rest = t346 ).
    IF t286 IS BOUND.
      DATA t357 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t285 ?= t286.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t285 IS NOT BOUND.
        TRY.
            t357 ?= t286.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t357 IS BOUND.
          t285 = t357->source( ).
        ENDIF.
        IF t285 IS NOT BOUND.
          CREATE OBJECT t285.
          t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t285->oval = t286.
        ENDIF.
      ENDIF.
    ENDIF.
    t284 = zcl_lnt_st_combi_module=>opt( i_first = t285 ).
    IF t284 IS BOUND.
      DATA t359 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t283 ?= t284.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t283 IS NOT BOUND.
        TRY.
            t359 ?= t284.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t359 IS BOUND.
          t283 = t359->source( ).
        ENDIF.
        IF t283 IS NOT BOUND.
          CREATE OBJECT t283.
          t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t283->oval = t284.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t283 TO t258->items.
    t258->save( ).
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t363 TYPE REF TO zif_lnt_statement_runnable.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t365 TYPE REF TO zif_lnt_statement_runnable.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t367.
    t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t367->sval = |START|.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t370.
    t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t370->sval = |WHERE|.
    DATA t372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t372.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t376) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t376 IS BOUND.
      CREATE OBJECT t375.
      t375->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t375->cval = t376.
    ENDIF.
    t372->load( ).
    APPEND t375 TO t372->items.
    t372->save( ).
    t365 = zcl_lnt_st_combi_module=>seq( i_first = t367 i_second = t370 i_rest = t372 ).
    IF t365 IS BOUND.
      DATA t381 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t364 ?= t365.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t364 IS NOT BOUND.
        TRY.
            t381 ?= t365.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t381 IS BOUND.
          t364 = t381->source( ).
        ENDIF.
        IF t364 IS NOT BOUND.
          CREATE OBJECT t364.
          t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t364->oval = t365.
        ENDIF.
      ENDIF.
    ENDIF.
    t363 = zcl_lnt_st_combi_module=>opt( i_first = t364 ).
    IF t363 IS BOUND.
      DATA t383 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t362 ?= t363.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t362 IS NOT BOUND.
        TRY.
            t383 ?= t363.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t383 IS BOUND.
          t362 = t383->source( ).
        ENDIF.
        IF t362 IS NOT BOUND.
          CREATE OBJECT t362.
          t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t362->oval = t363.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t362 TO t258->items.
    t258->save( ).
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t387 TYPE REF TO zif_lnt_statement_runnable.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t67 IS BOUND.
      DATA t390 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t388 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t388 IS NOT BOUND.
        TRY.
            t390 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t390 IS BOUND.
          t388 = t390->source( ).
        ENDIF.
        IF t388 IS NOT BOUND.
          CREATE OBJECT t388.
          t388->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t388->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    t387 = zcl_lnt_st_combi_module=>opt( i_first = t388 ).
    IF t387 IS BOUND.
      DATA t392 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t386 ?= t387.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t386 IS NOT BOUND.
        TRY.
            t392 ?= t387.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t392 IS BOUND.
          t386 = t392->source( ).
        ENDIF.
        IF t386 IS NOT BOUND.
          CREATE OBJECT t386.
          t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t386->oval = t387.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t386 TO t258->items.
    t258->save( ).
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t396 TYPE REF TO zif_lnt_statement_runnable.
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t398 TYPE REF TO zif_lnt_statement_runnable.
    DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t400.
    t400->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t400->sval = |DEPTH|.
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t216 IS BOUND.
      DATA t405 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t403 ?= t216.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t403 IS NOT BOUND.
        TRY.
            t405 ?= t216.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t405 IS BOUND.
          t403 = t405->source( ).
        ENDIF.
        IF t403 IS NOT BOUND.
          CREATE OBJECT t403.
          t403->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t403->oval = t216.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t408 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t408.
    t398 = zcl_lnt_st_combi_module=>seq( i_first = t400 i_second = t403 i_rest = t408 ).
    IF t398 IS BOUND.
      DATA t413 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t397 ?= t398.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t397 IS NOT BOUND.
        TRY.
            t413 ?= t398.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t413 IS BOUND.
          t397 = t413->source( ).
        ENDIF.
        IF t397 IS NOT BOUND.
          CREATE OBJECT t397.
          t397->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t397->oval = t398.
        ENDIF.
      ENDIF.
    ENDIF.
    t396 = zcl_lnt_st_combi_module=>opt( i_first = t397 ).
    IF t396 IS BOUND.
      DATA t415 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t395 ?= t396.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t395 IS NOT BOUND.
        TRY.
            t415 ?= t396.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t415 IS BOUND.
          t395 = t415->source( ).
        ENDIF.
        IF t395 IS NOT BOUND.
          CREATE OBJECT t395.
          t395->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t395->oval = t396.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t395 TO t258->items.
    t258->save( ).
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t419 TYPE REF TO zif_lnt_statement_runnable.
    DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t421 TYPE REF TO zif_lnt_statement_runnable.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t423.
    t423->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t423->sval = |NODETYPE|.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t427) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t427 IS BOUND.
      CREATE OBJECT t426.
      t426->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t426->cval = t427.
    ENDIF.
    DATA t429 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t429.
    t421 = zcl_lnt_st_combi_module=>seq( i_first = t423 i_second = t426 i_rest = t429 ).
    IF t421 IS BOUND.
      DATA t434 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t420 ?= t421.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t420 IS NOT BOUND.
        TRY.
            t434 ?= t421.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t434 IS BOUND.
          t420 = t434->source( ).
        ENDIF.
        IF t420 IS NOT BOUND.
          CREATE OBJECT t420.
          t420->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t420->oval = t421.
        ENDIF.
      ENDIF.
    ENDIF.
    t419 = zcl_lnt_st_combi_module=>opt( i_first = t420 ).
    IF t419 IS BOUND.
      DATA t436 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t418 ?= t419.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t418 IS NOT BOUND.
        TRY.
            t436 ?= t419.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t436 IS BOUND.
          t418 = t436->source( ).
        ENDIF.
        IF t418 IS NOT BOUND.
          CREATE OBJECT t418.
          t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t418->oval = t419.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t418 TO t258->items.
    t258->save( ).
    DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t440 TYPE REF TO zif_lnt_statement_runnable.
    DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t442 TYPE REF TO zif_lnt_statement_runnable.
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t444.
    t444->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t444->sval = |LOAD|.
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t233 IS BOUND.
      DATA t449 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t447 ?= t233.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t447 IS NOT BOUND.
        TRY.
            t449 ?= t233.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t449 IS BOUND.
          t447 = t449->source( ).
        ENDIF.
        IF t447 IS NOT BOUND.
          CREATE OBJECT t447.
          t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t447->oval = t233.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t452 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t452.
    t442 = zcl_lnt_st_combi_module=>seq( i_first = t444 i_second = t447 i_rest = t452 ).
    IF t442 IS BOUND.
      DATA t457 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t441 ?= t442.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t441 IS NOT BOUND.
        TRY.
            t457 ?= t442.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t457 IS BOUND.
          t441 = t457->source( ).
        ENDIF.
        IF t441 IS NOT BOUND.
          CREATE OBJECT t441.
          t441->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t441->oval = t442.
        ENDIF.
      ENDIF.
    ENDIF.
    t440 = zcl_lnt_st_combi_module=>opt( i_first = t441 ).
    IF t440 IS BOUND.
      DATA t459 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t439 ?= t440.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t439 IS NOT BOUND.
        TRY.
            t459 ?= t440.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t459 IS BOUND.
          t439 = t459->source( ).
        ENDIF.
        IF t439 IS NOT BOUND.
          CREATE OBJECT t439.
          t439->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t439->oval = t440.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t439 TO t258->items.
    t258->save( ).
    DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t463 TYPE REF TO zif_lnt_statement_runnable.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t465 TYPE REF TO zif_lnt_statement_runnable.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t467.
    t467->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t467->sval = |MULTIPLE|.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t470.
    t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t470->sval = |PARENTS|.
    DATA t472 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t472.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t476 TYPE REF TO zif_lnt_statement_runnable.
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t478.
    t478->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t478->sval = |NOT ALLOWED|.
    DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t481.
    t481->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t481->sval = |ALLOWED|.
    DATA t483 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t483.
    DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t487 TYPE REF TO zif_lnt_statement_runnable.
    DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t489.
    t489->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t489->sval = |LEAVES|.
    DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t493 TYPE REF TO zif_lnt_statement_runnable.
    DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t494.
    t494->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t494->sval = |ONLY|.
    t493 = zcl_lnt_st_combi_module=>opt_prio( i_first = t494 ).
    IF t493 IS BOUND.
      DATA t496 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t492 ?= t493.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t492 IS NOT BOUND.
        TRY.
            t496 ?= t493.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t496 IS BOUND.
          t492 = t496->source( ).
        ENDIF.
        IF t492 IS NOT BOUND.
          CREATE OBJECT t492.
          t492->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t492->oval = t493.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t499 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t499.
    t487 = zcl_lnt_st_combi_module=>seq( i_first = t489 i_second = t492 i_rest = t499 ).
    IF t487 IS BOUND.
      DATA t504 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t486 ?= t487.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t486 IS NOT BOUND.
        TRY.
            t504 ?= t487.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t504 IS BOUND.
          t486 = t504->source( ).
        ENDIF.
        IF t486 IS NOT BOUND.
          CREATE OBJECT t486.
          t486->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t486->oval = t487.
        ENDIF.
      ENDIF.
    ENDIF.
    t483->load( ).
    APPEND t486 TO t483->items.
    t483->save( ).
    t476 = zcl_lnt_st_combi_module=>alt_prio( i_first = t478 i_second = t481 i_rest = t483 ).
    IF t476 IS BOUND.
      DATA t510 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t475 ?= t476.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t475 IS NOT BOUND.
        TRY.
            t510 ?= t476.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t510 IS BOUND.
          t475 = t510->source( ).
        ENDIF.
        IF t475 IS NOT BOUND.
          CREATE OBJECT t475.
          t475->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t475->oval = t476.
        ENDIF.
      ENDIF.
    ENDIF.
    t472->load( ).
    APPEND t475 TO t472->items.
    t472->save( ).
    t465 = zcl_lnt_st_combi_module=>seq( i_first = t467 i_second = t470 i_rest = t472 ).
    IF t465 IS BOUND.
      DATA t516 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t464 ?= t465.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t464 IS NOT BOUND.
        TRY.
            t516 ?= t465.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t516 IS BOUND.
          t464 = t516->source( ).
        ENDIF.
        IF t464 IS NOT BOUND.
          CREATE OBJECT t464.
          t464->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t464->oval = t465.
        ENDIF.
      ENDIF.
    ENDIF.
    t463 = zcl_lnt_st_combi_module=>opt( i_first = t464 ).
    IF t463 IS BOUND.
      DATA t518 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t462 ?= t463.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t462 IS NOT BOUND.
        TRY.
            t518 ?= t463.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t518 IS BOUND.
          t462 = t518->source( ).
        ENDIF.
        IF t462 IS NOT BOUND.
          CREATE OBJECT t462.
          t462->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t462->oval = t463.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t462 TO t258->items.
    t258->save( ).
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t522 TYPE REF TO zif_lnt_statement_runnable.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t524 TYPE REF TO zif_lnt_statement_runnable.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t526.
    t526->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t526->sval = |ORPHANS|.
    DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t530 TYPE REF TO zif_lnt_statement_runnable.
    DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t532.
    t532->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t532->sval = |IGNORE|.
    DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t535.
    t535->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t535->sval = |ROOT|.
    DATA t537 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t537.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t540.
    t540->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t540->sval = |ERROR|.
    t537->load( ).
    APPEND t540 TO t537->items.
    t537->save( ).
    t530 = zcl_lnt_st_combi_module=>alt_prio( i_first = t532 i_second = t535 i_rest = t537 ).
    IF t530 IS BOUND.
      DATA t546 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t529 ?= t530.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t529 IS NOT BOUND.
        TRY.
            t546 ?= t530.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t546 IS BOUND.
          t529 = t546->source( ).
        ENDIF.
        IF t529 IS NOT BOUND.
          CREATE OBJECT t529.
          t529->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t529->oval = t530.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t549 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t549.
    t524 = zcl_lnt_st_combi_module=>seq( i_first = t526 i_second = t529 i_rest = t549 ).
    IF t524 IS BOUND.
      DATA t554 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t523 ?= t524.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t523 IS NOT BOUND.
        TRY.
            t554 ?= t524.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t554 IS BOUND.
          t523 = t554->source( ).
        ENDIF.
        IF t523 IS NOT BOUND.
          CREATE OBJECT t523.
          t523->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t523->oval = t524.
        ENDIF.
      ENDIF.
    ENDIF.
    t522 = zcl_lnt_st_combi_module=>opt( i_first = t523 ).
    IF t522 IS BOUND.
      DATA t556 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t521 ?= t522.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t521 IS NOT BOUND.
        TRY.
            t556 ?= t522.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t556 IS BOUND.
          t521 = t556->source( ).
        ENDIF.
        IF t521 IS NOT BOUND.
          CREATE OBJECT t521.
          t521->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t521->oval = t522.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t521 TO t258->items.
    t258->save( ).
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t560 TYPE REF TO zif_lnt_statement_runnable.
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t562 TYPE REF TO zif_lnt_statement_runnable.
    DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t564.
    t564->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t564->sval = |CYCLES|.
    DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t568 TYPE REF TO zif_lnt_statement_runnable.
    DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t570.
    t570->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t570->sval = |BREAKUP|.
    DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t573.
    t573->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t573->sval = |ERROR|.
    DATA t576 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t576.
    t568 = zcl_lnt_st_combi_module=>alt_prio( i_first = t570 i_second = t573 i_rest = t576 ).
    IF t568 IS BOUND.
      DATA t581 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t567 ?= t568.
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
    DATA t584 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t584.
    t562 = zcl_lnt_st_combi_module=>seq( i_first = t564 i_second = t567 i_rest = t584 ).
    IF t562 IS BOUND.
      DATA t589 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t561 ?= t562.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t561 IS NOT BOUND.
        TRY.
            t589 ?= t562.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t589 IS BOUND.
          t561 = t589->source( ).
        ENDIF.
        IF t561 IS NOT BOUND.
          CREATE OBJECT t561.
          t561->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t561->oval = t562.
        ENDIF.
      ENDIF.
    ENDIF.
    t560 = zcl_lnt_st_combi_module=>opt( i_first = t561 ).
    IF t560 IS BOUND.
      DATA t591 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t559 ?= t560.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t559 IS NOT BOUND.
        TRY.
            t591 ?= t560.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t591 IS BOUND.
          t559 = t591->source( ).
        ENDIF.
        IF t559 IS NOT BOUND.
          CREATE OBJECT t559.
          t559->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t559->oval = t560.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t559 TO t258->items.
    t258->save( ).
    DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t595 TYPE REF TO zif_lnt_statement_runnable.
    DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t597 TYPE REF TO zif_lnt_statement_runnable.
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t599.
    t599->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t599->sval = |GENERATE|.
    DATA t602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t602.
    t602->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t602->sval = |SPANTREE|.
    DATA t605 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t605.
    t597 = zcl_lnt_st_combi_module=>seq( i_first = t599 i_second = t602 i_rest = t605 ).
    IF t597 IS BOUND.
      DATA t610 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t596 ?= t597.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t596 IS NOT BOUND.
        TRY.
            t610 ?= t597.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t610 IS BOUND.
          t596 = t610->source( ).
        ENDIF.
        IF t596 IS NOT BOUND.
          CREATE OBJECT t596.
          t596->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t596->oval = t597.
        ENDIF.
      ENDIF.
    ENDIF.
    t595 = zcl_lnt_st_combi_module=>opt( i_first = t596 ).
    IF t595 IS BOUND.
      DATA t612 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t594 ?= t595.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t594 IS NOT BOUND.
        TRY.
            t612 ?= t595.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t612 IS BOUND.
          t594 = t612->source( ).
        ENDIF.
        IF t594 IS NOT BOUND.
          CREATE OBJECT t594.
          t594->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t594->oval = t595.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t594 TO t258->items.
    t258->save( ).
    DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t616 TYPE REF TO zif_lnt_statement_runnable.
    DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t618 TYPE REF TO zif_lnt_statement_runnable.
    DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t620.
    t620->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t620->sval = |CACHE|.
    DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t624 TYPE REF TO zif_lnt_statement_runnable.
    DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t626.
    t626->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t626->sval = |ON|.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t629.
    t629->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t629->sval = |OFF|.
    DATA t631 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t631.
    DATA t634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t634.
    t634->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t634->sval = |FORCE|.
    t631->load( ).
    APPEND t634 TO t631->items.
    t631->save( ).
    t624 = zcl_lnt_st_combi_module=>alt_prio( i_first = t626 i_second = t629 i_rest = t631 ).
    IF t624 IS BOUND.
      DATA t640 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t623 ?= t624.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t623 IS NOT BOUND.
        TRY.
            t640 ?= t624.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t640 IS BOUND.
          t623 = t640->source( ).
        ENDIF.
        IF t623 IS NOT BOUND.
          CREATE OBJECT t623.
          t623->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t623->oval = t624.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t643 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t643.
    t618 = zcl_lnt_st_combi_module=>seq( i_first = t620 i_second = t623 i_rest = t643 ).
    IF t618 IS BOUND.
      DATA t648 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t617 ?= t618.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t617 IS NOT BOUND.
        TRY.
            t648 ?= t618.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t648 IS BOUND.
          t617 = t648->source( ).
        ENDIF.
        IF t617 IS NOT BOUND.
          CREATE OBJECT t617.
          t617->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t617->oval = t618.
        ENDIF.
      ENDIF.
    ENDIF.
    t616 = zcl_lnt_st_combi_module=>opt( i_first = t617 ).
    IF t616 IS BOUND.
      DATA t650 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t615 ?= t616.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t615 IS NOT BOUND.
        TRY.
            t650 ?= t616.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t650 IS BOUND.
          t615 = t650->source( ).
        ENDIF.
        IF t615 IS NOT BOUND.
          CREATE OBJECT t615.
          t615->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t615->oval = t616.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t615 TO t258->items.
    t258->save( ).
    t250 = zcl_lnt_st_combi_module=>seq( i_first = t253 i_second = t256 i_rest = t258 ).
    DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t659 TYPE REF TO zif_lnt_statement_runnable.
    DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t661) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t661 IS BOUND.
      CREATE OBJECT t660.
      t660->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t660->cval = t661.
    ENDIF.
    t659 = zcl_lnt_st_combi_module=>star( i_first = t660 ).
    IF t659 IS BOUND.
      DATA t662 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t658 ?= t659.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t658 IS NOT BOUND.
        TRY.
            t662 ?= t659.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t662 IS BOUND.
          t658 = t662->source( ).
        ENDIF.
        IF t658 IS NOT BOUND.
          CREATE OBJECT t658.
          t658->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t658->oval = t659.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t666 TYPE REF TO zif_lnt_statement_runnable.
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t667.
    t667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t667->sval = |DEFINE|.
    t666 = zcl_lnt_st_combi_module=>opt( i_first = t667 ).
    IF t666 IS BOUND.
      DATA t669 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t665 ?= t666.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t665 IS NOT BOUND.
        TRY.
            t669 ?= t666.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t669 IS BOUND.
          t665 = t669->source( ).
        ENDIF.
        IF t665 IS NOT BOUND.
          CREATE OBJECT t665.
          t665->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t665->oval = t666.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t671 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t671.
    DATA t674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t674.
    t674->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t674->sval = |HIERARCHY|.
    t671->load( ).
    APPEND t674 TO t671->items.
    t671->save( ).
    DATA t677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t678) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t678 IS BOUND.
      CREATE OBJECT t677.
      t677->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t677->cval = t678.
    ENDIF.
    t671->load( ).
    APPEND t677 TO t671->items.
    t671->save( ).
    DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t681 TYPE REF TO zif_lnt_statement_runnable.
    DATA t682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t683) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1097_1528186a58df.
    IF t683 IS BOUND.
      CREATE OBJECT t682.
      t682->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t682->cval = t683.
    ENDIF.
    t681 = zcl_lnt_st_combi_module=>opt( i_first = t682 ).
    IF t681 IS BOUND.
      DATA t684 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t680 ?= t681.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t680 IS NOT BOUND.
        TRY.
            t684 ?= t681.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t684 IS BOUND.
          t680 = t684->source( ).
        ENDIF.
        IF t680 IS NOT BOUND.
          CREATE OBJECT t680.
          t680->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t680->oval = t681.
        ENDIF.
      ENDIF.
    ENDIF.
    t671->load( ).
    APPEND t680 TO t671->items.
    t671->save( ).
    DATA t687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t687.
    t687->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t687->sval = |AS|.
    t671->load( ).
    APPEND t687 TO t671->items.
    t671->save( ).
    DATA t690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t690.
    t690->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t690->sval = |PARENT|.
    t671->load( ).
    APPEND t690 TO t671->items.
    t671->save( ).
    DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t693.
    t693->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t693->sval = |CHILD|.
    t671->load( ).
    APPEND t693 TO t671->items.
    t671->save( ).
    DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t696.
    t696->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t696->sval = |HIERARCHY|.
    t671->load( ).
    APPEND t696 TO t671->items.
    t671->save( ).
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t699.
    t699->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t699->sval = |(|.
    t671->load( ).
    APPEND t699 TO t671->items.
    t671->save( ).
    DATA t702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t250 IS BOUND.
      DATA t704 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t702 ?= t250.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t702 IS NOT BOUND.
        TRY.
            t704 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t704 IS BOUND.
          t702 = t704->source( ).
        ENDIF.
        IF t702 IS NOT BOUND.
          CREATE OBJECT t702.
          t702->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t702->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    t671->load( ).
    APPEND t702 TO t671->items.
    t671->save( ).
    DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t707.
    t707->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t707->sval = |)|.
    t671->load( ).
    APPEND t707 TO t671->items.
    t671->save( ).
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t710.
    t710->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t710->sval = |\{|.
    t671->load( ).
    APPEND t710 TO t671->items.
    t671->save( ).
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t714 TYPE REF TO zif_lnt_statement_runnable.
    DATA t716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t718 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t716 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t716 IS NOT BOUND.
        TRY.
            t718 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t718 IS BOUND.
          t716 = t718->source( ).
        ENDIF.
        IF t716 IS NOT BOUND.
          CREATE OBJECT t716.
          t716->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t716->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t721 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t722 TYPE REF TO zif_lnt_statement_runnable.
    DATA t723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t724 TYPE REF TO zif_lnt_statement_runnable.
    DATA t726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t726.
    t726->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t726->sval = |,|.
    DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t731 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t729 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t729 IS NOT BOUND.
        TRY.
            t731 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t731 IS BOUND.
          t729 = t731->source( ).
        ENDIF.
        IF t729 IS NOT BOUND.
          CREATE OBJECT t729.
          t729->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t729->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t734 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t734.
    t724 = zcl_lnt_st_combi_module=>seq( i_first = t726 i_second = t729 i_rest = t734 ).
    IF t724 IS BOUND.
      DATA t739 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t723 ?= t724.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t723 IS NOT BOUND.
        TRY.
            t739 ?= t724.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t739 IS BOUND.
          t723 = t739->source( ).
        ENDIF.
        IF t723 IS NOT BOUND.
          CREATE OBJECT t723.
          t723->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t723->oval = t724.
        ENDIF.
      ENDIF.
    ENDIF.
    t722 = zcl_lnt_st_combi_module=>star( i_first = t723 ).
    IF t722 IS BOUND.
      DATA t741 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t721 ?= t722.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t721 IS NOT BOUND.
        TRY.
            t741 ?= t722.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t741 IS BOUND.
          t721 = t741->source( ).
        ENDIF.
        IF t721 IS NOT BOUND.
          CREATE OBJECT t721.
          t721->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t721->oval = t722.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t744 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t744.
    t714 = zcl_lnt_st_combi_module=>seq( i_first = t716 i_second = t721 i_rest = t744 ).
    IF t714 IS BOUND.
      DATA t749 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t713 ?= t714.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t713 IS NOT BOUND.
        TRY.
            t749 ?= t714.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t749 IS BOUND.
          t713 = t749->source( ).
        ENDIF.
        IF t713 IS NOT BOUND.
          CREATE OBJECT t713.
          t713->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t713->oval = t714.
        ENDIF.
      ENDIF.
    ENDIF.
    t671->load( ).
    APPEND t713 TO t671->items.
    t671->save( ).
    DATA t752 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t752.
    t752->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t752->sval = |\}|.
    t671->load( ).
    APPEND t752 TO t671->items.
    t671->save( ).
    DATA t755 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t756 TYPE REF TO zif_lnt_statement_runnable.
    DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t757.
    t757->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t757->sval = |;|.
    t756 = zcl_lnt_st_combi_module=>opt( i_first = t757 ).
    IF t756 IS BOUND.
      DATA t759 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t755 ?= t756.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t755 IS NOT BOUND.
        TRY.
            t759 ?= t756.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t759 IS BOUND.
          t755 = t759->source( ).
        ENDIF.
        IF t755 IS NOT BOUND.
          CREATE OBJECT t755.
          t755->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t755->oval = t756.
        ENDIF.
      ENDIF.
    ENDIF.
    t671->load( ).
    APPEND t755 TO t671->items.
    t671->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t658 i_second = t665 i_rest = t671 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1102_242781e5a7e9.
  ENDMETHOD.
ENDCLASS.
