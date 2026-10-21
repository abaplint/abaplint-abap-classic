* TS: src/abap/2_statements/statements/assign.ts:7:1 Assign
CLASS zcl_lnt_st_assign DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_assign IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    t5 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t7 ).
    IF t5 IS BOUND.
      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t4 ?= t5.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t9 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t9 IS BOUND.
          t4 = t9->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t12 i_rest = t15 ).
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = |TYPE|.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t26 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t28 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t26 = t28->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    t20 = zcl_lnt_st_combi_module=>seq( i_first = t23 i_second = t26 i_rest = t31 ).
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = |LIKE|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t45->cval = t46.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t48->cval = t49.
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    t43 = zcl_lnt_st_combi_module=>alt_prio( i_first = t45 i_second = t48 i_rest = t51 ).
    IF t43 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t42 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t42 IS NOT BOUND.
        TRY.
            t56 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t42 = t56->source( ).
        ENDIF.
        IF t42 IS NOT BOUND.
          CREATE OBJECT t42.
          t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t42->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t59.
    t36 = zcl_lnt_st_combi_module=>seq( i_first = t39 i_second = t42 i_rest = t59 ).
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t67.
    t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t67->sval = |TYPE HANDLE|.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t70->cval = t71.
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t73.
    t64 = zcl_lnt_st_combi_module=>seq( i_first = t67 i_second = t70 i_rest = t73 ).
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = |RANGE|.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t84->cval = t85.
    ENDIF.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t87.
    t78 = zcl_lnt_st_combi_module=>seq( i_first = t81 i_second = t84 i_rest = t87 ).
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t95.
    t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t95->sval = |DECIMALS|.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t99) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t98->cval = t99.
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t101.
    t92 = zcl_lnt_st_combi_module=>seq( i_first = t95 i_second = t98 i_rest = t101 ).
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t109.
    t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t109->sval = |CASTING|.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t36 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t117 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t117 IS NOT BOUND.
        TRY.
            t119 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t117 = t119->source( ).
        ENDIF.
        IF t117 IS NOT BOUND.
          CREATE OBJECT t117.
          t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t117->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t64 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t122 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t122 IS NOT BOUND.
        TRY.
            t124 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t122 = t124->source( ).
        ENDIF.
        IF t122 IS NOT BOUND.
          CREATE OBJECT t122.
          t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t122->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t126.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t132 ?= t20.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS NOT BOUND.
        TRY.
            t134 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t132 = t134->source( ).
        ENDIF.
        IF t132 IS NOT BOUND.
          CREATE OBJECT t132.
          t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t132->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t92 IS BOUND.
      DATA t139 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t137 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t139 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t139 IS BOUND.
          t137 = t139->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t142.
    t130 = zcl_lnt_st_combi_module=>per( i_first = t132 i_second = t137 i_rest = t142 ).
    IF t130 IS BOUND.
      DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t129 ?= t130.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t147 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t147 IS BOUND.
          t129 = t147->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t126->load( ).
    APPEND t129 TO t126->items.
    t126->save( ).
    t115 = zcl_lnt_st_combi_module=>alt( i_first = t117 i_second = t122 i_rest = t126 ).
    IF t115 IS BOUND.
      DATA t153 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t114 ?= t115.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t153 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t153 IS BOUND.
          t114 = t153->source( ).
        ENDIF.
        IF t114 IS NOT BOUND.
          CREATE OBJECT t114.
          t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t114->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    t113 = zcl_lnt_st_combi_module=>opt( i_first = t114 ).
    IF t113 IS BOUND.
      DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t112 ?= t113.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t155 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t155 IS BOUND.
          t112 = t155->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t158.
    t106 = zcl_lnt_st_combi_module=>seq( i_first = t109 i_second = t112 i_rest = t158 ).
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t166 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t166 IS NOT BOUND.
        TRY.
            t168 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t166 = t168->source( ).
        ENDIF.
        IF t166 IS NOT BOUND.
          CREATE OBJECT t166.
          t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t166->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    t163 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t166 ).
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t173.
    t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t173->sval = |TYPE|.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t177) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t177 IS BOUND.
      CREATE OBJECT t176.
      t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t176->cval = t177.
    ENDIF.
    DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t178.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t92 IS BOUND.
      DATA t185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t183 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t183 IS NOT BOUND.
        TRY.
            t185 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t185 IS BOUND.
          t183 = t185->source( ).
        ENDIF.
        IF t183 IS NOT BOUND.
          CREATE OBJECT t183.
          t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t183->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    t182 = zcl_lnt_st_combi_module=>opt_prio( i_first = t183 ).
    IF t182 IS BOUND.
      DATA t187 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t181 ?= t182.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t181 IS NOT BOUND.
        TRY.
            t187 ?= t182.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t187 IS BOUND.
          t181 = t187->source( ).
        ENDIF.
        IF t181 IS NOT BOUND.
          CREATE OBJECT t181.
          t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t181->oval = t182.
        ENDIF.
      ENDIF.
    ENDIF.
    t178->load( ).
    APPEND t181 TO t178->items.
    t178->save( ).
    t170 = zcl_lnt_st_combi_module=>seq( i_first = t173 i_second = t176 i_rest = t178 ).
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t196.
    t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t196->sval = |ASSIGN|.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t208) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t208 IS BOUND.
      CREATE OBJECT t207.
      t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t207->cval = t208.
    ENDIF.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t210.
    t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t210->sval = |INCREMENT|.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t213.
    t205 = zcl_lnt_st_combi_module=>seq( i_first = t207 i_second = t210 i_rest = t213 ).
    IF t205 IS BOUND.
      DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t204 ?= t205.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t204 IS NOT BOUND.
        TRY.
            t218 ?= t205.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t218 IS BOUND.
          t204 = t218->source( ).
        ENDIF.
        IF t204 IS NOT BOUND.
          CREATE OBJECT t204.
          t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t204->oval = t205.
        ENDIF.
      ENDIF.
    ENDIF.
    t202 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t204 ).
    IF t202 IS BOUND.
      DATA t220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t201 ?= t202.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t201 IS NOT BOUND.
        TRY.
            t220 ?= t202.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t220 IS BOUND.
          t201 = t220->source( ).
        ENDIF.
        IF t201 IS NOT BOUND.
          CREATE OBJECT t201.
          t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t201->oval = t202.
        ENDIF.
      ENDIF.
    ENDIF.
    t200 = zcl_lnt_st_combi_module=>opt( i_first = t201 ).
    IF t200 IS BOUND.
      DATA t222 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t199 ?= t200.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t199 IS NOT BOUND.
        TRY.
            t222 ?= t200.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t222 IS BOUND.
          t199 = t222->source( ).
        ENDIF.
        IF t199 IS NOT BOUND.
          CREATE OBJECT t199.
          t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t199->oval = t200.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t224.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca.
    IF t228 IS BOUND.
      CREATE OBJECT t227.
      t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t227->cval = t228.
    ENDIF.
    t224->load( ).
    APPEND t227 TO t224->items.
    t224->save( ).
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t230.
    t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t230->sval = |TO|.
    t224->load( ).
    APPEND t230 TO t224->items.
    t224->save( ).
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t234) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    IF t234 IS BOUND.
      CREATE OBJECT t233.
      t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t233->cval = t234.
    ENDIF.
    t224->load( ).
    APPEND t233 TO t224->items.
    t224->save( ).
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t163 IS BOUND.
      DATA t243 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t241 ?= t163.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t241 IS NOT BOUND.
        TRY.
            t243 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t243 IS BOUND.
          t241 = t243->source( ).
        ENDIF.
        IF t241 IS NOT BOUND.
          CREATE OBJECT t241.
          t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t241->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t170 IS BOUND.
      DATA t248 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t246 ?= t170.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t248 ?= t170.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t248 IS BOUND.
          t246 = t248->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t170.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t250.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t92 IS BOUND.
      DATA t255 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t253 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t253 IS NOT BOUND.
        TRY.
            t255 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t255 IS BOUND.
          t253 = t255->source( ).
        ENDIF.
        IF t253 IS NOT BOUND.
          CREATE OBJECT t253.
          t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t253->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    t250->load( ).
    APPEND t253 TO t250->items.
    t250->save( ).
    t239 = zcl_lnt_st_combi_module=>alt_prio( i_first = t241 i_second = t246 i_rest = t250 ).
    IF t239 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t238 ?= t239.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t238 IS NOT BOUND.
        TRY.
            t261 ?= t239.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t238 = t261->source( ).
        ENDIF.
        IF t238 IS NOT BOUND.
          CREATE OBJECT t238.
          t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t238->oval = t239.
        ENDIF.
      ENDIF.
    ENDIF.
    t237 = zcl_lnt_st_combi_module=>opt( i_first = t238 ).
    IF t237 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t236 ?= t237.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t236 IS NOT BOUND.
        TRY.
            t263 ?= t237.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t236 = t263->source( ).
        ENDIF.
        IF t236 IS NOT BOUND.
          CREATE OBJECT t236.
          t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t236->oval = t237.
        ENDIF.
      ENDIF.
    ENDIF.
    t224->load( ).
    APPEND t236 TO t224->items.
    t224->save( ).
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78 IS BOUND.
      DATA t270 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t268 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t268 IS NOT BOUND.
        TRY.
            t270 ?= t78.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t270 IS BOUND.
          t268 = t270->source( ).
        ENDIF.
        IF t268 IS NOT BOUND.
          CREATE OBJECT t268.
          t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t268->oval = t78.
        ENDIF.
      ENDIF.
    ENDIF.
    t267 = zcl_lnt_st_combi_module=>opt( i_first = t268 ).
    IF t267 IS BOUND.
      DATA t272 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t266 ?= t267.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t266 IS NOT BOUND.
        TRY.
            t272 ?= t267.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t272 IS BOUND.
          t266 = t272->source( ).
        ENDIF.
        IF t266 IS NOT BOUND.
          CREATE OBJECT t266.
          t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t266->oval = t267.
        ENDIF.
      ENDIF.
    ENDIF.
    t224->load( ).
    APPEND t266 TO t224->items.
    t224->save( ).
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t280 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t280 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t280 IS BOUND.
      DATA t284 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t285 TYPE REF TO object.
      t285 = t280.
      TRY.
          t279 ?= t285.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t279 IS NOT BOUND.
        TRY.
            t284 ?= t280.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t284 IS BOUND.
          t279 = t284->source( ).
        ENDIF.
        IF t279 IS NOT BOUND.
          CREATE OBJECT t279.
          t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t279->oval = t280.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t286.
    t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t286->sval = |ELSE UNASSIGN|.
    DATA t288 TYPE REF TO zcl_lnt_iver_options.
    t278 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t279 i_first = t286 i_opts = t288 ).
    IF t278 IS BOUND.
      DATA t289 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t277 ?= t278.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t277 IS NOT BOUND.
        TRY.
            t289 ?= t278.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t289 IS BOUND.
          t277 = t289->source( ).
        ENDIF.
        IF t277 IS NOT BOUND.
          CREATE OBJECT t277.
          t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t277->oval = t278.
        ENDIF.
      ENDIF.
    ENDIF.
    t276 = zcl_lnt_st_combi_module=>opt( i_first = t277 ).
    IF t276 IS BOUND.
      DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t275 ?= t276.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t275 IS NOT BOUND.
        TRY.
            t291 ?= t276.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t291 IS BOUND.
          t275 = t291->source( ).
        ENDIF.
        IF t275 IS NOT BOUND.
          CREATE OBJECT t275.
          t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t275->oval = t276.
        ENDIF.
      ENDIF.
    ENDIF.
    t224->load( ).
    APPEND t275 TO t224->items.
    t224->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t196 i_second = t199 i_rest = t224 ).

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d375_ab389f7000ba.
  ENDMETHOD.

  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.

  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
