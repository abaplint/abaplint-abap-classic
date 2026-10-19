* TS: src/abap/2_statements/statements/read_table.ts:8:1 ReadTable
CLASS zcl_lnt_st_read_table DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_read_table IMPLEMENTATION.
  METHOD get_matcher.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |COMPARING|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t11 = zcl_lnt_st_combi_module=>plus( i_first = t12 ).
    IF t11 IS BOUND.
      DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t15 TYPE REF TO object.
      t15 = t11.
      TRY.
          t10 ?= t15.
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
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t19->cval = t20.
    ENDIF.
    t18 = zcl_lnt_st_combi_module=>plus( i_first = t19 ).
    IF t18 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t22 TYPE REF TO object.
      t22 = t18.
      TRY.
          t17 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t21 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t17 = t21->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t8 = zcl_lnt_st_combi_module=>alt( i_first = t10 i_second = t17 i_rest = t24 ).
    IF t8 IS BOUND.
      DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t30 TYPE REF TO object.
      t30 = t8.
      TRY.
          t7 ?= t30.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t29 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t29 IS BOUND.
          t7 = t29->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    t33 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t32 ).
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t40.
    t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t40->sval = |INDEX|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t43->cval = t44.
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t46.
    t37 = zcl_lnt_st_combi_module=>seq( i_first = t40 i_second = t43 i_rest = t46 ).
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t60->cval = t61.
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t58 = zcl_lnt_st_combi_module=>alt( i_first = t60 i_second = t63 i_rest = t66 ).
    IF t58 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t72 TYPE REF TO object.
      t72 = t58.
      TRY.
          t57 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t71 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t57 = t71->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    t55 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t57 ).
    IF t55 IS BOUND.
      DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t74 TYPE REF TO object.
      t74 = t55.
      TRY.
          t54 ?= t74.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t73 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t73 IS BOUND.
          t54 = t73->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = |COMPONENTS|.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t78.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d130_b1d921bbb09b.
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    t78->load( ).
    APPEND t81 TO t78->items.
    t78->save( ).
    t51 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t76 i_rest = t78 ).
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = |WITH KEY|.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = |WITH TABLE KEY|.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t99.
    t91 = zcl_lnt_st_combi_module=>alt_prio( i_first = t93 i_second = t96 i_rest = t99 ).
    IF t91 IS BOUND.
      DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t105 TYPE REF TO object.
      t105 = t91.
      TRY.
          t90 ?= t105.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t90 IS NOT BOUND.
        TRY.
            t104 ?= t91.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t104 IS BOUND.
          t90 = t104->source( ).
        ENDIF.
        IF t90 IS NOT BOUND.
          CREATE OBJECT t90.
          t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t90->oval = t91.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d130_b1d921bbb09b.
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t110->cval = t111.
    ENDIF.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t116 TYPE REF TO object.
      t116 = t51.
      TRY.
          t113 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t115 ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t113 = t115->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t51.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t117.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = |=|.
    t124 = zcl_lnt_st_combi_module=>opt_prio( i_first = t125 ).
    IF t124 IS BOUND.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t128 TYPE REF TO object.
      t128 = t124.
      TRY.
          t123 ?= t128.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t123 IS NOT BOUND.
        TRY.
            t127 ?= t124.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS BOUND.
          t123 = t127->source( ).
        ENDIF.
        IF t123 IS NOT BOUND.
          CREATE OBJECT t123.
          t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t123->oval = t124.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t131) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t131 IS BOUND.
      CREATE OBJECT t130.
      t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t130->cval = t131.
    ENDIF.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t133.
    t121 = zcl_lnt_st_combi_module=>seq( i_first = t123 i_second = t130 i_rest = t133 ).
    IF t121 IS BOUND.
      DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t139 TYPE REF TO object.
      t139 = t121.
      TRY.
          t120 ?= t139.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t138 ?= t121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t138 IS BOUND.
          t120 = t138->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t121.
        ENDIF.
      ENDIF.
    ENDIF.
    t117->load( ).
    APPEND t120 TO t117->items.
    t117->save( ).
    t108 = zcl_lnt_st_combi_module=>alt( i_first = t110 i_second = t113 i_rest = t117 ).
    IF t108 IS BOUND.
      DATA t144 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t145 TYPE REF TO object.
      t145 = t108.
      TRY.
          t107 ?= t145.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t144 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t144 IS BOUND.
          t107 = t144->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t147.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    t148 = zcl_lnt_st_combi_module=>seq( i_first = t90 i_second = t107 i_rest = t147 ).
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t155.
    t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t155->sval = |USING KEY|.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t162) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t161->cval = t162.
    ENDIF.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t168) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t167->cval = t168.
    ENDIF.
    t165 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t167 ).
    IF t165 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t170 TYPE REF TO object.
      t170 = t165.
      TRY.
          t164 ?= t170.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t164 IS NOT BOUND.
        TRY.
            t169 ?= t165.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t164 = t169->source( ).
        ENDIF.
        IF t164 IS NOT BOUND.
          CREATE OBJECT t164.
          t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t164->oval = t165.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t172.
    t159 = zcl_lnt_st_combi_module=>alt( i_first = t161 i_second = t164 i_rest = t172 ).
    IF t159 IS BOUND.
      DATA t177 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t178 TYPE REF TO object.
      t178 = t159.
      TRY.
          t158 ?= t178.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t158 IS NOT BOUND.
        TRY.
            t177 ?= t159.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t177 IS BOUND.
          t158 = t177->source( ).
        ENDIF.
        IF t158 IS NOT BOUND.
          CREATE OBJECT t158.
          t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t158->oval = t159.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t180.
    t152 = zcl_lnt_st_combi_module=>seq( i_first = t155 i_second = t158 i_rest = t180 ).
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t188.
    t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t188->sval = |FROM|.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t192) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t192 IS BOUND.
      CREATE OBJECT t191.
      t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t191->cval = t192.
    ENDIF.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t194.
    t185 = zcl_lnt_st_combi_module=>seq( i_first = t188 i_second = t191 i_rest = t194 ).
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t202.
    t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t202->sval = |TRANSPORTING|.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = |ALL FIELDS|.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t211.
    t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t211->sval = |NO FIELDS|.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t213.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t217) = zlnt_runtime_desc_78196487750d=>zlnt_member_d351_5341159ff4cc.
    IF t217 IS BOUND.
      CREATE OBJECT t216.
      t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t216->cval = t217.
    ENDIF.
    t213->load( ).
    APPEND t216 TO t213->items.
    t213->save( ).
    t206 = zcl_lnt_st_combi_module=>alt_prio( i_first = t208 i_second = t211 i_rest = t213 ).
    IF t206 IS BOUND.
      DATA t222 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t223 TYPE REF TO object.
      t223 = t206.
      TRY.
          t205 ?= t223.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t205 IS NOT BOUND.
        TRY.
            t222 ?= t206.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t222 IS BOUND.
          t205 = t222->source( ).
        ENDIF.
        IF t205 IS NOT BOUND.
          CREATE OBJECT t205.
          t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t205->oval = t206.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t225.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    t226 = zcl_lnt_st_combi_module=>seq( i_first = t202 i_second = t205 i_rest = t225 ).
    DATA t230 TYPE REF TO zcl_lnt_tuple_cc45ee1d.
    DATA(t232) = zlnt_runtime_desc_78196487750d=>zlnt_member_d250_08c3abeac258.
    t230 = NEW zcl_lnt_tuple_cc45ee1d( i_f0 = t232 i_f1 = t33 i_f2 = |CASTING| i_f3 = t226 i_f4 = |BINARY SEARCH| ).
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t244 TYPE REF TO zif_lnt_statement_runnable.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t37 IS BOUND.
      DATA t248 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t249 TYPE REF TO object.
      t249 = t37.
      TRY.
          t246 ?= t249.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t248 ?= t37.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t248 IS BOUND.
          t246 = t248->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t37.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185 IS BOUND.
      DATA t253 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t254 TYPE REF TO object.
      t254 = t185.
      TRY.
          t251 ?= t254.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t251 IS NOT BOUND.
        TRY.
            t253 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t253 IS BOUND.
          t251 = t253->source( ).
        ENDIF.
        IF t251 IS NOT BOUND.
          CREATE OBJECT t251.
          t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t251->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t256.
    t244 = zcl_lnt_st_combi_module=>alt( i_first = t246 i_second = t251 i_rest = t256 ).
    IF t244 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t262 TYPE REF TO object.
      t262 = t244.
      TRY.
          t243 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t243 IS NOT BOUND.
        TRY.
            t261 ?= t244.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t243 = t261->source( ).
        ENDIF.
        IF t243 IS NOT BOUND.
          CREATE OBJECT t243.
          t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t243->oval = t244.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t152 IS BOUND.
      DATA t266 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t267 TYPE REF TO object.
      t267 = t152.
      TRY.
          t264 ?= t267.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t264 IS NOT BOUND.
        TRY.
            t266 ?= t152.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS BOUND.
          t264 = t266->source( ).
        ENDIF.
        IF t264 IS NOT BOUND.
          CREATE OBJECT t264.
          t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t264->oval = t152.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t268 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t268.
    DATA t270 TYPE REF TO zcl_lnt_tuple_cc45ee1d.
    t270 = t230.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t274 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    t274 = t270->f0.
    IF t274 IS BOUND.
      CREATE OBJECT t273.
      t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t273->cval = t274.
    ENDIF.
    t268->load( ).
    APPEND t273 TO t268->items.
    t268->save( ).
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    t278 = t270->f1.
    IF t278 IS BOUND.
      DATA t280 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t281 TYPE REF TO object.
      t281 = t278.
      TRY.
          t277 ?= t281.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t277 IS NOT BOUND.
        TRY.
            t280 ?= t278.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t280 IS BOUND.
          t277 = t280->source( ).
        ENDIF.
        IF t277 IS NOT BOUND.
          CREATE OBJECT t277.
          t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t277->oval = t278.
        ENDIF.
      ENDIF.
    ENDIF.
    t268->load( ).
    APPEND t277 TO t268->items.
    t268->save( ).
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t284) = VALUE string( ).
    t284 = t270->f2.
    CREATE OBJECT t283.
    t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t283->sval = t284.
    t268->load( ).
    APPEND t283 TO t268->items.
    t268->save( ).
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t288 TYPE REF TO zif_lnt_statement_runnable.
    t288 = t270->f3.
    IF t288 IS BOUND.
      DATA t290 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t291 TYPE REF TO object.
      t291 = t288.
      TRY.
          t287 ?= t291.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t287 IS NOT BOUND.
        TRY.
            t290 ?= t288.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t290 IS BOUND.
          t287 = t290->source( ).
        ENDIF.
        IF t287 IS NOT BOUND.
          CREATE OBJECT t287.
          t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t287->oval = t288.
        ENDIF.
      ENDIF.
    ENDIF.
    t268->load( ).
    APPEND t287 TO t268->items.
    t268->save( ).
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t294) = VALUE string( ).
    t294 = t270->f4.
    CREATE OBJECT t293.
    t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t293->sval = t294.
    t268->load( ).
    APPEND t293 TO t268->items.
    t268->save( ).
    t241 = zcl_lnt_st_combi_module=>per( i_first = t243 i_second = t264 i_rest = t268 ).
    IF t241 IS BOUND.
      DATA t300 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t301 TYPE REF TO object.
      t301 = t241.
      TRY.
          t240 ?= t301.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t240 IS NOT BOUND.
        TRY.
            t300 ?= t241.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t300 IS BOUND.
          t240 = t300->source( ).
        ENDIF.
        IF t240 IS NOT BOUND.
          CREATE OBJECT t240.
          t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t240->oval = t241.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    DATA t305 TYPE REF TO zif_lnt_statement_runnable.
    t305 = t148.
    DATA t307 TYPE REF TO zcl_lnt_tuple_cc45ee1d.
    t307 = t230.
    DATA t309 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t309.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t313 TYPE REF TO zif_lnt_statement_runnable.
    t313 = t307->f1.
    IF t313 IS BOUND.
      DATA t315 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t316 TYPE REF TO object.
      t316 = t313.
      TRY.
          t312 ?= t316.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t312 IS NOT BOUND.
        TRY.
            t315 ?= t313.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t315 IS BOUND.
          t312 = t315->source( ).
        ENDIF.
        IF t312 IS NOT BOUND.
          CREATE OBJECT t312.
          t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t312->oval = t313.
        ENDIF.
      ENDIF.
    ENDIF.
    t309->load( ).
    APPEND t312 TO t309->items.
    t309->save( ).
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t319) = VALUE string( ).
    t319 = t307->f2.
    CREATE OBJECT t318.
    t318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t318->sval = t319.
    t309->load( ).
    APPEND t318 TO t309->items.
    t309->save( ).
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    t323 = t307->f3.
    IF t323 IS BOUND.
      DATA t325 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t326 TYPE REF TO object.
      t326 = t323.
      TRY.
          t322 ?= t326.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t322 IS NOT BOUND.
        TRY.
            t325 ?= t323.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t325 IS BOUND.
          t322 = t325->source( ).
        ENDIF.
        IF t322 IS NOT BOUND.
          CREATE OBJECT t322.
          t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t322->oval = t323.
        ENDIF.
      ENDIF.
    ENDIF.
    t309->load( ).
    APPEND t322 TO t309->items.
    t309->save( ).
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t329) = VALUE string( ).
    t329 = t307->f4.
    CREATE OBJECT t328.
    t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t328->sval = t329.
    t309->load( ).
    APPEND t328 TO t309->items.
    t309->save( ).
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t305 IS BOUND.
      DATA t334 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t335 TYPE REF TO object.
      t335 = t305.
      TRY.
          t332 ?= t335.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t332 IS NOT BOUND.
        TRY.
            t334 ?= t305.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t334 IS BOUND.
          t332 = t334->source( ).
        ENDIF.
        IF t332 IS NOT BOUND.
          CREATE OBJECT t332.
          t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t332->oval = t305.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t337 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    t337 = t307->f0.
    IF t337 IS BOUND.
      CREATE OBJECT t336.
      t336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t336->cval = t337.
    ENDIF.
    t304 = zcl_lnt_st_combi_module=>per( i_first = t332 i_second = t336 i_rest = t309 ).
    IF t304 IS BOUND.
      DATA t340 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t341 TYPE REF TO object.
      t341 = t304.
      TRY.
          t303 ?= t341.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t303 IS NOT BOUND.
        TRY.
            t340 ?= t304.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t340 IS BOUND.
          t303 = t340->source( ).
        ENDIF.
        IF t303 IS NOT BOUND.
          CREATE OBJECT t303.
          t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t303->oval = t304.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t342 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t342.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t346 TYPE REF TO zif_lnt_statement_runnable.
    DATA t347 TYPE REF TO zcl_lnt_tuple_cc45ee1d.
    t347 = t230.
    DATA t349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t349.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t353) = VALUE string( ).
    t353 = t347->f2.
    CREATE OBJECT t352.
    t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t352->sval = t353.
    t349->load( ).
    APPEND t352 TO t349->items.
    t349->save( ).
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t357 TYPE REF TO zif_lnt_statement_runnable.
    t357 = t347->f3.
    IF t357 IS BOUND.
      DATA t359 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t360 TYPE REF TO object.
      t360 = t357.
      TRY.
          t356 ?= t360.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t356 IS NOT BOUND.
        TRY.
            t359 ?= t357.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t359 IS BOUND.
          t356 = t359->source( ).
        ENDIF.
        IF t356 IS NOT BOUND.
          CREATE OBJECT t356.
          t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t356->oval = t357.
        ENDIF.
      ENDIF.
    ENDIF.
    t349->load( ).
    APPEND t356 TO t349->items.
    t349->save( ).
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t363) = VALUE string( ).
    t363 = t347->f4.
    CREATE OBJECT t362.
    t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t362->sval = t363.
    t349->load( ).
    APPEND t362 TO t349->items.
    t349->save( ).
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t367 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    t367 = t347->f0.
    IF t367 IS BOUND.
      CREATE OBJECT t366.
      t366->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t366->cval = t367.
    ENDIF.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t370 TYPE REF TO zif_lnt_statement_runnable.
    t370 = t347->f1.
    IF t370 IS BOUND.
      DATA t372 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t373 TYPE REF TO object.
      t373 = t370.
      TRY.
          t369 ?= t373.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t369 IS NOT BOUND.
        TRY.
            t372 ?= t370.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t372 IS BOUND.
          t369 = t372->source( ).
        ENDIF.
        IF t369 IS NOT BOUND.
          CREATE OBJECT t369.
          t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t369->oval = t370.
        ENDIF.
      ENDIF.
    ENDIF.
    t346 = zcl_lnt_st_combi_module=>per( i_first = t366 i_second = t369 i_rest = t349 ).
    IF t346 IS BOUND.
      DATA t375 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t376 TYPE REF TO object.
      t376 = t346.
      TRY.
          t345 ?= t376.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t345 IS NOT BOUND.
        TRY.
            t375 ?= t346.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t375 IS BOUND.
          t345 = t375->source( ).
        ENDIF.
        IF t345 IS NOT BOUND.
          CREATE OBJECT t345.
          t345->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t345->oval = t346.
        ENDIF.
      ENDIF.
    ENDIF.
    t342->load( ).
    APPEND t345 TO t342->items.
    t342->save( ).
    t237 = zcl_lnt_st_combi_module=>alt( i_first = t240 i_second = t303 i_rest = t342 ).
    DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t383.
    t383->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t383->sval = |READ TABLE|.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t387 TYPE REF TO zif_lnt_statement_runnable.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t390) = zlnt_runtime_desc_78196487750d=>zlnt_member_d211_bc99aed7bb7c.
    IF t390 IS BOUND.
      CREATE OBJECT t389.
      t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t389->cval = t390.
    ENDIF.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t393 TYPE REF TO zif_lnt_statement_runnable.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t395 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t395 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp02| ).
    IF t395 IS BOUND.
      DATA t399 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t400 TYPE REF TO object.
      t400 = t395.
      TRY.
          t394 ?= t400.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t394 IS NOT BOUND.
        TRY.
            t399 ?= t395.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t399 IS BOUND.
          t394 = t399->source( ).
        ENDIF.
        IF t394 IS NOT BOUND.
          CREATE OBJECT t394.
          t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t394->oval = t395.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t402) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t402 IS BOUND.
      CREATE OBJECT t401.
      t401->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t401->cval = t402.
    ENDIF.
    DATA t405 TYPE REF TO zcl_lnt_iver_options.
    DATA(t410) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t410->has = abap_true.
    t410->value = |OpenABAP|.
    t405 = NEW zcl_lnt_iver_options( i_also = t410 ).
    CREATE OBJECT t405->zlnt_view_ownkeys_b0e8086400eb.
    t405->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t405->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t412 ).
    CREATE OBJECT t405->zlnt_json_ownkeys_70e5fd461788.
    t405->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t405->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t414 ).
    t393 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t394 i_first = t401 i_opts = t405 ).
    IF t393 IS BOUND.
      DATA t416 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t417 TYPE REF TO object.
      t417 = t393.
      TRY.
          t392 ?= t417.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t392 IS NOT BOUND.
        TRY.
            t416 ?= t393.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t416 IS BOUND.
          t392 = t416->source( ).
        ENDIF.
        IF t392 IS NOT BOUND.
          CREATE OBJECT t392.
          t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t392->oval = t393.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t419 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t419.
    t387 = zcl_lnt_st_combi_module=>alt( i_first = t389 i_second = t392 i_rest = t419 ).
    IF t387 IS BOUND.
      DATA t424 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t425 TYPE REF TO object.
      t425 = t387.
      TRY.
          t386 ?= t425.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t386 IS NOT BOUND.
        TRY.
            t424 ?= t387.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t424 IS BOUND.
          t386 = t424->source( ).
        ENDIF.
        IF t386 IS NOT BOUND.
          CREATE OBJECT t386.
          t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t386->oval = t387.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t426 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t426.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t430 TYPE REF TO zif_lnt_statement_runnable.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t237 IS BOUND.
      DATA t433 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t434 TYPE REF TO object.
      t434 = t237.
      TRY.
          t431 ?= t434.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t431 IS NOT BOUND.
        TRY.
            t433 ?= t237.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t433 IS BOUND.
          t431 = t433->source( ).
        ENDIF.
        IF t431 IS NOT BOUND.
          CREATE OBJECT t431.
          t431->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t431->oval = t237.
        ENDIF.
      ENDIF.
    ENDIF.
    t430 = zcl_lnt_st_combi_module=>opt( i_first = t431 ).
    IF t430 IS BOUND.
      DATA t435 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t436 TYPE REF TO object.
      t436 = t430.
      TRY.
          t429 ?= t436.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t429 IS NOT BOUND.
        TRY.
            t435 ?= t430.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t435 IS BOUND.
          t429 = t435->source( ).
        ENDIF.
        IF t429 IS NOT BOUND.
          CREATE OBJECT t429.
          t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t429->oval = t430.
        ENDIF.
      ENDIF.
    ENDIF.
    t426->load( ).
    APPEND t429 TO t426->items.
    t426->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t383 i_second = t386 i_rest = t426 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d594_a2664c6b8771.
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
