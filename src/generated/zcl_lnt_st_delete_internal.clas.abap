* TS: src/abap/2_statements/statements/delete_internal.ts:7:1 DeleteInternal
CLASS zcl_lnt_st_delete_internal DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_delete_internal IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |INDEX|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t18->cval = t19.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t15 = zcl_lnt_st_combi_module=>alt_prio( i_first = t18 i_second = t21 i_rest = t24 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |USING KEY|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t35 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t37 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t35 = t37->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t35 i_rest = t40 ).
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t48.
    t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t48->sval = |FROM|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t51->cval = t52.
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t54.
    t45 = zcl_lnt_st_combi_module=>seq( i_first = t48 i_second = t51 i_rest = t54 ).
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t64 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t64 IS NOT BOUND.
        TRY.
            t66 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t64 = t66->source( ).
        ENDIF.
        IF t64 IS NOT BOUND.
          CREATE OBJECT t64.
          t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t64->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    t63 = zcl_lnt_st_combi_module=>opt_prio( i_first = t64 ).
    IF t63 IS BOUND.
      DATA t68 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t62 ?= t63.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t68 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t68 IS BOUND.
          t62 = t68->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = |TO|.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t80) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t79->cval = t80.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t82.
    t74 = zcl_lnt_st_combi_module=>seq( i_first = t76 i_second = t79 i_rest = t82 ).
    IF t74 IS BOUND.
      DATA t87 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t73 ?= t74.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t87 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t87 IS BOUND.
          t73 = t87->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    t72 = zcl_lnt_st_combi_module=>opt_prio( i_first = t73 ).
    IF t72 IS BOUND.
      DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t71 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t89 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t89 IS BOUND.
          t71 = t89->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t72.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t92.
    t59 = zcl_lnt_st_combi_module=>seq( i_first = t62 i_second = t71 i_rest = t92 ).
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t100.
    t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t100->sval = |WHERE|.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t107) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t106->cval = t107.
    ENDIF.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t113) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t113 IS BOUND.
      CREATE OBJECT t112.
      t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t112->cval = t113.
    ENDIF.
    t110 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t112 ).
    IF t110 IS BOUND.
      DATA t114 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t109 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t109 IS NOT BOUND.
        TRY.
            t114 ?= t110.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t114 IS BOUND.
          t109 = t114->source( ).
        ENDIF.
        IF t109 IS NOT BOUND.
          CREATE OBJECT t109.
          t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t109->oval = t110.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t117.
    t104 = zcl_lnt_st_combi_module=>alt( i_first = t106 i_second = t109 i_rest = t117 ).
    IF t104 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t103 ?= t104.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t122 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t103 = t122->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t125.
    t97 = zcl_lnt_st_combi_module=>seq( i_first = t100 i_second = t103 i_rest = t125 ).
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = |WITH TABLE KEY|.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t143 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t141 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t141 IS NOT BOUND.
        TRY.
            t143 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t143 IS BOUND.
          t141 = t143->source( ).
        ENDIF.
        IF t141 IS NOT BOUND.
          CREATE OBJECT t141.
          t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t141->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t146.
    t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t146->sval = |COMPONENTS|.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t149.
    t139 = zcl_lnt_st_combi_module=>seq( i_first = t141 i_second = t146 i_rest = t149 ).
    IF t139 IS BOUND.
      DATA t154 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t138 ?= t139.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138 IS NOT BOUND.
        TRY.
            t154 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t154 IS BOUND.
          t138 = t154->source( ).
        ENDIF.
        IF t138 IS NOT BOUND.
          CREATE OBJECT t138.
          t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->oval = t139.
        ENDIF.
      ENDIF.
    ENDIF.
    t137 = zcl_lnt_st_combi_module=>opt( i_first = t138 ).
    IF t137 IS BOUND.
      DATA t156 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t136 ?= t137.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t136 IS NOT BOUND.
        TRY.
            t156 ?= t137.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t156 IS BOUND.
          t136 = t156->source( ).
        ENDIF.
        IF t136 IS NOT BOUND.
          CREATE OBJECT t136.
          t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t136->oval = t137.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t158.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t164) = zlnt_runtime_desc_78196487750d=>zlnt_member_d128_b497db583ff7.
    IF t164 IS BOUND.
      CREATE OBJECT t163.
      t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t163->cval = t164.
    ENDIF.
    t162 = zcl_lnt_st_combi_module=>plus( i_first = t163 ).
    IF t162 IS BOUND.
      DATA t165 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t161 ?= t162.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t161 IS NOT BOUND.
        TRY.
            t165 ?= t162.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t165 IS BOUND.
          t161 = t165->source( ).
        ENDIF.
        IF t161 IS NOT BOUND.
          CREATE OBJECT t161.
          t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t161->oval = t162.
        ENDIF.
      ENDIF.
    ENDIF.
    t158->load( ).
    APPEND t161 TO t158->items.
    t158->save( ).
    t130 = zcl_lnt_st_combi_module=>seq( i_first = t133 i_second = t136 i_rest = t158 ).
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t174.
    t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t174->sval = |TABLE|.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t177->cval = t178.
    ENDIF.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t179.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t190 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t188 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t188 IS NOT BOUND.
        TRY.
            t190 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t190 IS BOUND.
          t188 = t190->source( ).
        ENDIF.
        IF t188 IS NOT BOUND.
          CREATE OBJECT t188.
          t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t188->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t193 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t193 IS NOT BOUND.
        TRY.
            t195 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t195 IS BOUND.
          t193 = t195->source( ).
        ENDIF.
        IF t193 IS NOT BOUND.
          CREATE OBJECT t193.
          t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t193->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t198.
    t186 = zcl_lnt_st_combi_module=>per( i_first = t188 i_second = t193 i_rest = t198 ).
    IF t186 IS BOUND.
      DATA t203 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t185 ?= t186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t203 ?= t186.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t203 IS BOUND.
          t185 = t203->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t186.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45 IS BOUND.
      DATA t213 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t211 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t211 IS NOT BOUND.
        TRY.
            t213 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t213 IS BOUND.
          t211 = t213->source( ).
        ENDIF.
        IF t211 IS NOT BOUND.
          CREATE OBJECT t211.
          t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t211->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    t210 = zcl_lnt_st_combi_module=>opt_prio( i_first = t211 ).
    IF t210 IS BOUND.
      DATA t215 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t209 ?= t210.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t209 IS NOT BOUND.
        TRY.
            t215 ?= t210.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t215 IS BOUND.
          t209 = t215->source( ).
        ENDIF.
        IF t209 IS NOT BOUND.
          CREATE OBJECT t209.
          t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t209->oval = t210.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t222 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t220 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t220 IS NOT BOUND.
        TRY.
            t222 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t222 IS BOUND.
          t220 = t222->source( ).
        ENDIF.
        IF t220 IS NOT BOUND.
          CREATE OBJECT t220.
          t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t220->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t219 = zcl_lnt_st_combi_module=>opt_prio( i_first = t220 ).
    IF t219 IS BOUND.
      DATA t224 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t218 ?= t219.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t218 IS NOT BOUND.
        TRY.
            t224 ?= t219.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t224 IS BOUND.
          t218 = t224->source( ).
        ENDIF.
        IF t218 IS NOT BOUND.
          CREATE OBJECT t218.
          t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t218->oval = t219.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t227.
    t207 = zcl_lnt_st_combi_module=>seq( i_first = t209 i_second = t218 i_rest = t227 ).
    IF t207 IS BOUND.
      DATA t232 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t206 ?= t207.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t206 IS NOT BOUND.
        TRY.
            t232 ?= t207.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t232 IS BOUND.
          t206 = t232->source( ).
        ENDIF.
        IF t206 IS NOT BOUND.
          CREATE OBJECT t206.
          t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t206->oval = t207.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t234.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t130 IS BOUND.
      DATA t239 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t237 ?= t130.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t237 IS NOT BOUND.
        TRY.
            t239 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t239 IS BOUND.
          t237 = t239->source( ).
        ENDIF.
        IF t237 IS NOT BOUND.
          CREATE OBJECT t237.
          t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t237->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t234->load( ).
    APPEND t237 TO t234->items.
    t234->save( ).
    t183 = zcl_lnt_st_combi_module=>alt( i_first = t185 i_second = t206 i_rest = t234 ).
    IF t183 IS BOUND.
      DATA t245 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t182 ?= t183.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t245 ?= t183.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t245 IS BOUND.
          t182 = t245->source( ).
        ENDIF.
        IF t182 IS NOT BOUND.
          CREATE OBJECT t182.
          t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t182->oval = t183.
        ENDIF.
      ENDIF.
    ENDIF.
    t179->load( ).
    APPEND t182 TO t179->items.
    t179->save( ).
    t171 = zcl_lnt_st_combi_module=>seq( i_first = t174 i_second = t177 i_rest = t179 ).
    DATA t251 TYPE REF TO zif_lnt_statement_runnable.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t255) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t254->cval = t255.
    ENDIF.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t261 TYPE REF TO zif_lnt_statement_runnable.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t265 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t263 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t263 IS NOT BOUND.
        TRY.
            t265 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS BOUND.
          t263 = t265->source( ).
        ENDIF.
        IF t263 IS NOT BOUND.
          CREATE OBJECT t263.
          t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t263->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t270 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t268 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t268 IS NOT BOUND.
        TRY.
            t270 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t270 IS BOUND.
          t268 = t270->source( ).
        ENDIF.
        IF t268 IS NOT BOUND.
          CREATE OBJECT t268.
          t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t268->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t273.
    t261 = zcl_lnt_st_combi_module=>per( i_first = t263 i_second = t268 i_rest = t273 ).
    IF t261 IS BOUND.
      DATA t278 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t260 ?= t261.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t260 IS NOT BOUND.
        TRY.
            t278 ?= t261.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t278 IS BOUND.
          t260 = t278->source( ).
        ENDIF.
        IF t260 IS NOT BOUND.
          CREATE OBJECT t260.
          t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t260->oval = t261.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t59 IS BOUND.
      DATA t283 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t281 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t281 IS NOT BOUND.
        TRY.
            t283 ?= t59.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t283 IS BOUND.
          t281 = t283->source( ).
        ENDIF.
        IF t281 IS NOT BOUND.
          CREATE OBJECT t281.
          t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t281->oval = t59.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t285.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t130 IS BOUND.
      DATA t290 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t288 ?= t130.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t288 IS NOT BOUND.
        TRY.
            t290 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t290 IS BOUND.
          t288 = t290->source( ).
        ENDIF.
        IF t288 IS NOT BOUND.
          CREATE OBJECT t288.
          t288->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t288->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t285->load( ).
    APPEND t288 TO t285->items.
    t285->save( ).
    t258 = zcl_lnt_st_combi_module=>alt( i_first = t260 i_second = t281 i_rest = t285 ).
    IF t258 IS BOUND.
      DATA t296 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t257 ?= t258.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t257 IS NOT BOUND.
        TRY.
            t296 ?= t258.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t296 IS BOUND.
          t257 = t296->source( ).
        ENDIF.
        IF t257 IS NOT BOUND.
          CREATE OBJECT t257.
          t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t257->oval = t258.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t298.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t97 IS BOUND.
      DATA t305 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t303 ?= t97.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t303 IS NOT BOUND.
        TRY.
            t305 ?= t97.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t305 IS BOUND.
          t303 = t305->source( ).
        ENDIF.
        IF t303 IS NOT BOUND.
          CREATE OBJECT t303.
          t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t303->oval = t97.
        ENDIF.
      ENDIF.
    ENDIF.
    t302 = zcl_lnt_st_combi_module=>opt( i_first = t303 ).
    IF t302 IS BOUND.
      DATA t307 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t301 ?= t302.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t301 IS NOT BOUND.
        TRY.
            t307 ?= t302.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t307 IS BOUND.
          t301 = t307->source( ).
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
    t251 = zcl_lnt_st_combi_module=>seq( i_first = t254 i_second = t257 i_rest = t298 ).
    DATA t313 TYPE REF TO zif_lnt_statement_runnable.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t317) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
    IF t317 IS BOUND.
      CREATE OBJECT t316.
      t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t316->cval = t317.
    ENDIF.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t320 TYPE REF TO zif_lnt_statement_runnable.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t322) = zlnt_runtime_desc_78196487750d=>zlnt_member_d103_04a0f92dd4f1.
    IF t322 IS BOUND.
      CREATE OBJECT t321.
      t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t321->cval = t322.
    ENDIF.
    t320 = zcl_lnt_st_combi_module=>opt_prio( i_first = t321 ).
    IF t320 IS BOUND.
      DATA t323 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t319 ?= t320.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t319 IS NOT BOUND.
        TRY.
            t323 ?= t320.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t323 IS BOUND.
          t319 = t323->source( ).
        ENDIF.
        IF t319 IS NOT BOUND.
          CREATE OBJECT t319.
          t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t319->oval = t320.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t325 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t325.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t329 TYPE REF TO zif_lnt_statement_runnable.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t331) = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
    IF t331 IS BOUND.
      CREATE OBJECT t330.
      t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t330->cval = t331.
    ENDIF.
    t329 = zcl_lnt_st_combi_module=>opt_prio( i_first = t330 ).
    IF t329 IS BOUND.
      DATA t332 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t328 ?= t329.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t328 IS NOT BOUND.
        TRY.
            t332 ?= t329.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t332 IS BOUND.
          t328 = t332->source( ).
        ENDIF.
        IF t328 IS NOT BOUND.
          CREATE OBJECT t328.
          t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t328->oval = t329.
        ENDIF.
      ENDIF.
    ENDIF.
    t325->load( ).
    APPEND t328 TO t325->items.
    t325->save( ).
    t313 = zcl_lnt_st_combi_module=>seq( i_first = t316 i_second = t319 i_rest = t325 ).
    DATA t338 TYPE REF TO zif_lnt_statement_runnable.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t341.
    t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t341->sval = |ADJACENT DUPLICATES FROM|.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t345) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t345 IS BOUND.
      CREATE OBJECT t344.
      t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t344->cval = t345.
    ENDIF.
    DATA t346 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t346.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t350 TYPE REF TO zif_lnt_statement_runnable.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t353 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t351 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t351 IS NOT BOUND.
        TRY.
            t353 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t353 IS BOUND.
          t351 = t353->source( ).
        ENDIF.
        IF t351 IS NOT BOUND.
          CREATE OBJECT t351.
          t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t351->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t350 = zcl_lnt_st_combi_module=>opt_prio( i_first = t351 ).
    IF t350 IS BOUND.
      DATA t355 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t349 ?= t350.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t349 IS NOT BOUND.
        TRY.
            t355 ?= t350.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t355 IS BOUND.
          t349 = t355->source( ).
        ENDIF.
        IF t349 IS NOT BOUND.
          CREATE OBJECT t349.
          t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t349->oval = t350.
        ENDIF.
      ENDIF.
    ENDIF.
    t346->load( ).
    APPEND t349 TO t346->items.
    t346->save( ).
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t361 TYPE REF TO zif_lnt_statement_runnable.
    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t363.
    t363->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t363->sval = |COMPARING|.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t367 TYPE REF TO zif_lnt_statement_runnable.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t369.
    t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t369->sval = |ALL FIELDS|.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t373 TYPE REF TO zif_lnt_statement_runnable.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t375 TYPE REF TO zif_lnt_statement_runnable.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t313 IS BOUND.
      DATA t379 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t377 ?= t313.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t377 IS NOT BOUND.
        TRY.
            t379 ?= t313.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t379 IS BOUND.
          t377 = t379->source( ).
        ENDIF.
        IF t377 IS NOT BOUND.
          CREATE OBJECT t377.
          t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t377->oval = t313.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t383) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t383 IS BOUND.
      CREATE OBJECT t382.
      t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t382->cval = t383.
    ENDIF.
    DATA t385 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t385.
    t375 = zcl_lnt_st_combi_module=>alt_prio( i_first = t377 i_second = t382 i_rest = t385 ).
    IF t375 IS BOUND.
      DATA t390 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t374 ?= t375.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t374 IS NOT BOUND.
        TRY.
            t390 ?= t375.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t390 IS BOUND.
          t374 = t390->source( ).
        ENDIF.
        IF t374 IS NOT BOUND.
          CREATE OBJECT t374.
          t374->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t374->oval = t375.
        ENDIF.
      ENDIF.
    ENDIF.
    t373 = zcl_lnt_st_combi_module=>plus( i_first = t374 ).
    IF t373 IS BOUND.
      DATA t392 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t372 ?= t373.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t372 IS NOT BOUND.
        TRY.
            t392 ?= t373.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t392 IS BOUND.
          t372 = t392->source( ).
        ENDIF.
        IF t372 IS NOT BOUND.
          CREATE OBJECT t372.
          t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t372->oval = t373.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t395 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t395.
    t367 = zcl_lnt_st_combi_module=>alt_prio( i_first = t369 i_second = t372 i_rest = t395 ).
    IF t367 IS BOUND.
      DATA t400 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t366 ?= t367.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t366 IS NOT BOUND.
        TRY.
            t400 ?= t367.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t400 IS BOUND.
          t366 = t400->source( ).
        ENDIF.
        IF t366 IS NOT BOUND.
          CREATE OBJECT t366.
          t366->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t366->oval = t367.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t403 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t403.
    t361 = zcl_lnt_st_combi_module=>seq( i_first = t363 i_second = t366 i_rest = t403 ).
    IF t361 IS BOUND.
      DATA t408 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t360 ?= t361.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t360 IS NOT BOUND.
        TRY.
            t408 ?= t361.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t408 IS BOUND.
          t360 = t408->source( ).
        ENDIF.
        IF t360 IS NOT BOUND.
          CREATE OBJECT t360.
          t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t360->oval = t361.
        ENDIF.
      ENDIF.
    ENDIF.
    t359 = zcl_lnt_st_combi_module=>opt( i_first = t360 ).
    IF t359 IS BOUND.
      DATA t410 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t358 ?= t359.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t358 IS NOT BOUND.
        TRY.
            t410 ?= t359.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t410 IS BOUND.
          t358 = t410->source( ).
        ENDIF.
        IF t358 IS NOT BOUND.
          CREATE OBJECT t358.
          t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t358->oval = t359.
        ENDIF.
      ENDIF.
    ENDIF.
    t346->load( ).
    APPEND t358 TO t346->items.
    t346->save( ).
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t414 TYPE REF TO zif_lnt_statement_runnable.
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t417 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t415 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t415 IS NOT BOUND.
        TRY.
            t417 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t417 IS BOUND.
          t415 = t417->source( ).
        ENDIF.
        IF t415 IS NOT BOUND.
          CREATE OBJECT t415.
          t415->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t415->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t414 = zcl_lnt_st_combi_module=>opt_prio( i_first = t415 ).
    IF t414 IS BOUND.
      DATA t419 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t413 ?= t414.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t413 IS NOT BOUND.
        TRY.
            t419 ?= t414.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t419 IS BOUND.
          t413 = t419->source( ).
        ENDIF.
        IF t413 IS NOT BOUND.
          CREATE OBJECT t413.
          t413->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t413->oval = t414.
        ENDIF.
      ENDIF.
    ENDIF.
    t346->load( ).
    APPEND t413 TO t346->items.
    t346->save( ).
    t338 = zcl_lnt_st_combi_module=>seq( i_first = t341 i_second = t344 i_rest = t346 ).
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t427.
    t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t427->sval = |DELETE|.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t431 TYPE REF TO zif_lnt_statement_runnable.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t171 IS BOUND.
      DATA t435 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t433 ?= t171.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t433 IS NOT BOUND.
        TRY.
            t435 ?= t171.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t435 IS BOUND.
          t433 = t435->source( ).
        ENDIF.
        IF t433 IS NOT BOUND.
          CREATE OBJECT t433.
          t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t433->oval = t171.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t338 IS BOUND.
      DATA t440 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t438 ?= t338.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t438 IS NOT BOUND.
        TRY.
            t440 ?= t338.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t440 IS BOUND.
          t438 = t440->source( ).
        ENDIF.
        IF t438 IS NOT BOUND.
          CREATE OBJECT t438.
          t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t438->oval = t338.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t442 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t442.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t251 IS BOUND.
      DATA t447 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t445 ?= t251.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t445 IS NOT BOUND.
        TRY.
            t447 ?= t251.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t447 IS BOUND.
          t445 = t447->source( ).
        ENDIF.
        IF t445 IS NOT BOUND.
          CREATE OBJECT t445.
          t445->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t445->oval = t251.
        ENDIF.
      ENDIF.
    ENDIF.
    t442->load( ).
    APPEND t445 TO t442->items.
    t442->save( ).
    t431 = zcl_lnt_st_combi_module=>alt( i_first = t433 i_second = t438 i_rest = t442 ).
    IF t431 IS BOUND.
      DATA t453 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t430 ?= t431.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t430 IS NOT BOUND.
        TRY.
            t453 ?= t431.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t453 IS BOUND.
          t430 = t453->source( ).
        ENDIF.
        IF t430 IS NOT BOUND.
          CREATE OBJECT t430.
          t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t430->oval = t431.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t456 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t456.
    result = zcl_lnt_st_combi_module=>seq( i_first = t427 i_second = t430 i_rest = t456 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d445_c8667ee83c64.
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
