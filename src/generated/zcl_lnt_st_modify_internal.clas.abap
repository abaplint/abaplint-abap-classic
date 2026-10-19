* TS: src/abap/2_statements/statements/modify_internal.ts:6:1 ModifyInternal
CLASS zcl_lnt_st_modify_internal DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_modify_internal IMPLEMENTATION.
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
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |FROM|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t24 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |TRANSPORTING|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d127_3599949d7390.
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t40->cval = t41.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t43->cval = t44.
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t46.
    t38 = zcl_lnt_st_combi_module=>alt( i_first = t40 i_second = t43 i_rest = t46 ).
    IF t38 IS BOUND.
      DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t52 TYPE REF TO object.
      t52 = t38.
      TRY.
          t37 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t37 IS NOT BOUND.
        TRY.
            t51 ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS BOUND.
          t37 = t51->source( ).
        ENDIF.
        IF t37 IS NOT BOUND.
          CREATE OBJECT t37.
          t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t37->oval = t38.
        ENDIF.
      ENDIF.
    ENDIF.
    t36 = zcl_lnt_st_combi_module=>plus( i_first = t37 ).
    IF t36 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t54 TYPE REF TO object.
      t54 = t36.
      TRY.
          t35 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t53 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t35 = t53->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t56.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t35 i_rest = t56 ).
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = |WHERE|.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    t61 = zcl_lnt_st_combi_module=>seq( i_first = t64 i_second = t67 i_rest = t70 ).
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = |ASSIGNING|.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t84.
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t78 i_second = t81 i_rest = t84 ).
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t92.
    t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t92->sval = |USING KEY|.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t95->cval = t96.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t98.
    t89 = zcl_lnt_st_combi_module=>seq( i_first = t92 i_second = t95 i_rest = t98 ).
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t61 IS BOUND.
      DATA t108 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t109 TYPE REF TO object.
      t109 = t61.
      TRY.
          t106 ?= t109.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t106 IS NOT BOUND.
        TRY.
            t108 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t108 IS BOUND.
          t106 = t108->source( ).
        ENDIF.
        IF t106 IS NOT BOUND.
          CREATE OBJECT t106.
          t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t106->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t75 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t114 TYPE REF TO object.
      t114 = t75.
      TRY.
          t111 ?= t114.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t113 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t111 = t113->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t115.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t121 TYPE REF TO object.
      t121 = t89.
      TRY.
          t118 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t120 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t118 = t120->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    t115->load( ).
    APPEND t118 TO t115->items.
    t115->save( ).
    t103 = zcl_lnt_st_combi_module=>per( i_first = t106 i_second = t111 i_rest = t115 ).
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t129->cval = t130.
    ENDIF.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t132->cval = t133.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t135.
    t126 = zcl_lnt_st_combi_module=>alt( i_first = t129 i_second = t132 i_rest = t135 ).
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t149 TYPE REF TO object.
      t149 = t1.
      TRY.
          t146 ?= t149.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t146 IS NOT BOUND.
        TRY.
            t148 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t146 = t148->source( ).
        ENDIF.
        IF t146 IS NOT BOUND.
          CREATE OBJECT t146.
          t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t146->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t153 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t154 TYPE REF TO object.
      t154 = t29.
      TRY.
          t151 ?= t154.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t151 IS NOT BOUND.
        TRY.
            t153 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t153 IS BOUND.
          t151 = t153->source( ).
        ENDIF.
        IF t151 IS NOT BOUND.
          CREATE OBJECT t151.
          t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t151->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t156.
    t144 = zcl_lnt_st_combi_module=>per( i_first = t146 i_second = t151 i_rest = t156 ).
    IF t144 IS BOUND.
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t162 TYPE REF TO object.
      t162 = t144.
      TRY.
          t143 ?= t162.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t161 ?= t144.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t143 = t161->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t144.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t170 TYPE REF TO object.
      t170 = t15.
      TRY.
          t167 ?= t170.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t167 IS NOT BOUND.
        TRY.
            t169 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t167 = t169->source( ).
        ENDIF.
        IF t167 IS NOT BOUND.
          CREATE OBJECT t167.
          t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t167->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t179 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t180 TYPE REF TO object.
      t180 = t1.
      TRY.
          t177 ?= t180.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t177 IS NOT BOUND.
        TRY.
            t179 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t179 IS BOUND.
          t177 = t179->source( ).
        ENDIF.
        IF t177 IS NOT BOUND.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t177->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t184 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t185 TYPE REF TO object.
      t185 = t29.
      TRY.
          t182 ?= t185.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t184 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t184 IS BOUND.
          t182 = t184->source( ).
        ENDIF.
        IF t182 IS NOT BOUND.
          CREATE OBJECT t182.
          t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t182->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t186.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89 IS BOUND.
      DATA t191 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t192 TYPE REF TO object.
      t192 = t89.
      TRY.
          t189 ?= t192.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t191 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t191 IS BOUND.
          t189 = t191->source( ).
        ENDIF.
        IF t189 IS NOT BOUND.
          CREATE OBJECT t189.
          t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t189->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    t186->load( ).
    APPEND t189 TO t186->items.
    t186->save( ).
    t175 = zcl_lnt_st_combi_module=>per( i_first = t177 i_second = t182 i_rest = t186 ).
    IF t175 IS BOUND.
      DATA t197 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t198 TYPE REF TO object.
      t198 = t175.
      TRY.
          t174 ?= t198.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t197 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t197 IS BOUND.
          t174 = t197->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    t173 = zcl_lnt_st_combi_module=>opt( i_first = t174 ).
    IF t173 IS BOUND.
      DATA t199 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t200 TYPE REF TO object.
      t200 = t173.
      TRY.
          t172 ?= t200.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t172 IS NOT BOUND.
        TRY.
            t199 ?= t173.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t199 IS BOUND.
          t172 = t199->source( ).
        ENDIF.
        IF t172 IS NOT BOUND.
          CREATE OBJECT t172.
          t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t172->oval = t173.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t202.
    t165 = zcl_lnt_st_combi_module=>seq( i_first = t167 i_second = t172 i_rest = t202 ).
    IF t165 IS BOUND.
      DATA t207 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t208 TYPE REF TO object.
      t208 = t165.
      TRY.
          t164 ?= t208.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t164 IS NOT BOUND.
        TRY.
            t207 ?= t165.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t207 IS BOUND.
          t164 = t207->source( ).
        ENDIF.
        IF t164 IS NOT BOUND.
          CREATE OBJECT t164.
          t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t164->oval = t165.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t209.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t221 TYPE REF TO object.
      t221 = t1.
      TRY.
          t218 ?= t221.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t218 IS NOT BOUND.
        TRY.
            t220 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t220 IS BOUND.
          t218 = t220->source( ).
        ENDIF.
        IF t218 IS NOT BOUND.
          CREATE OBJECT t218.
          t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t218->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t226 TYPE REF TO object.
      t226 = t29.
      TRY.
          t223 ?= t226.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t223 IS NOT BOUND.
        TRY.
            t225 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS BOUND.
          t223 = t225->source( ).
        ENDIF.
        IF t223 IS NOT BOUND.
          CREATE OBJECT t223.
          t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t223->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t228.
    t216 = zcl_lnt_st_combi_module=>per( i_first = t218 i_second = t223 i_rest = t228 ).
    IF t216 IS BOUND.
      DATA t233 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t234 TYPE REF TO object.
      t234 = t216.
      TRY.
          t215 ?= t234.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t215 IS NOT BOUND.
        TRY.
            t233 ?= t216.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t233 IS BOUND.
          t215 = t233->source( ).
        ENDIF.
        IF t215 IS NOT BOUND.
          CREATE OBJECT t215.
          t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t215->oval = t216.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t238 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t239 TYPE REF TO object.
      t239 = t15.
      TRY.
          t236 ?= t239.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t236 IS NOT BOUND.
        TRY.
            t238 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t238 IS BOUND.
          t236 = t238->source( ).
        ENDIF.
        IF t236 IS NOT BOUND.
          CREATE OBJECT t236.
          t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t236->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t240.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t244 TYPE REF TO zif_lnt_statement_runnable.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t250 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t251 TYPE REF TO object.
      t251 = t1.
      TRY.
          t248 ?= t251.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t248 IS NOT BOUND.
        TRY.
            t250 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t250 IS BOUND.
          t248 = t250->source( ).
        ENDIF.
        IF t248 IS NOT BOUND.
          CREATE OBJECT t248.
          t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t248->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t255 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t256 TYPE REF TO object.
      t256 = t29.
      TRY.
          t253 ?= t256.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t253 IS NOT BOUND.
        TRY.
            t255 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t255 IS BOUND.
          t253 = t255->source( ).
        ENDIF.
        IF t253 IS NOT BOUND.
          CREATE OBJECT t253.
          t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t253->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t258.
    t246 = zcl_lnt_st_combi_module=>per( i_first = t248 i_second = t253 i_rest = t258 ).
    IF t246 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t264 TYPE REF TO object.
      t264 = t246.
      TRY.
          t245 ?= t264.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t263 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t245 = t263->source( ).
        ENDIF.
        IF t245 IS NOT BOUND.
          CREATE OBJECT t245.
          t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t245->oval = t246.
        ENDIF.
      ENDIF.
    ENDIF.
    t244 = zcl_lnt_st_combi_module=>opt( i_first = t245 ).
    IF t244 IS BOUND.
      DATA t265 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t266 TYPE REF TO object.
      t266 = t244.
      TRY.
          t243 ?= t266.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t243 IS NOT BOUND.
        TRY.
            t265 ?= t244.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS BOUND.
          t243 = t265->source( ).
        ENDIF.
        IF t243 IS NOT BOUND.
          CREATE OBJECT t243.
          t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t243->oval = t244.
        ENDIF.
      ENDIF.
    ENDIF.
    t240->load( ).
    APPEND t243 TO t240->items.
    t240->save( ).
    t213 = zcl_lnt_st_combi_module=>seq( i_first = t215 i_second = t236 i_rest = t240 ).
    IF t213 IS BOUND.
      DATA t271 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t272 TYPE REF TO object.
      t272 = t213.
      TRY.
          t212 ?= t272.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t212 IS NOT BOUND.
        TRY.
            t271 ?= t213.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t271 IS BOUND.
          t212 = t271->source( ).
        ENDIF.
        IF t212 IS NOT BOUND.
          CREATE OBJECT t212.
          t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t212->oval = t213.
        ENDIF.
      ENDIF.
    ENDIF.
    t209->load( ).
    APPEND t212 TO t209->items.
    t209->save( ).
    t140 = zcl_lnt_st_combi_module=>alt( i_first = t143 i_second = t164 i_rest = t209 ).
    DATA t277 TYPE REF TO zif_lnt_statement_runnable.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t280.
    t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t280->sval = |MODIFY|.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t285.
    t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t285->sval = |TABLE|.
    t284 = zcl_lnt_st_combi_module=>opt( i_first = t285 ).
    IF t284 IS BOUND.
      DATA t287 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t288 TYPE REF TO object.
      t288 = t284.
      TRY.
          t283 ?= t288.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t283 IS NOT BOUND.
        TRY.
            t287 ?= t284.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t287 IS BOUND.
          t283 = t287->source( ).
        ENDIF.
        IF t283 IS NOT BOUND.
          CREATE OBJECT t283.
          t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t283->oval = t284.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t289.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t126 IS BOUND.
      DATA t294 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t295 TYPE REF TO object.
      t295 = t126.
      TRY.
          t292 ?= t295.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t292 IS NOT BOUND.
        TRY.
            t294 ?= t126.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t294 IS BOUND.
          t292 = t294->source( ).
        ENDIF.
        IF t292 IS NOT BOUND.
          CREATE OBJECT t292.
          t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t292->oval = t126.
        ENDIF.
      ENDIF.
    ENDIF.
    t289->load( ).
    APPEND t292 TO t289->items.
    t289->save( ).
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t298 TYPE REF TO zif_lnt_statement_runnable.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t140 IS BOUND.
      DATA t301 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t302 TYPE REF TO object.
      t302 = t140.
      TRY.
          t299 ?= t302.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t299 IS NOT BOUND.
        TRY.
            t301 ?= t140.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t301 IS BOUND.
          t299 = t301->source( ).
        ENDIF.
        IF t299 IS NOT BOUND.
          CREATE OBJECT t299.
          t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t299->oval = t140.
        ENDIF.
      ENDIF.
    ENDIF.
    t298 = zcl_lnt_st_combi_module=>opt( i_first = t299 ).
    IF t298 IS BOUND.
      DATA t303 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t304 TYPE REF TO object.
      t304 = t298.
      TRY.
          t297 ?= t304.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t297 IS NOT BOUND.
        TRY.
            t303 ?= t298.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t303 IS BOUND.
          t297 = t303->source( ).
        ENDIF.
        IF t297 IS NOT BOUND.
          CREATE OBJECT t297.
          t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t297->oval = t298.
        ENDIF.
      ENDIF.
    ENDIF.
    t289->load( ).
    APPEND t297 TO t289->items.
    t289->save( ).
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t103 IS BOUND.
      DATA t310 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t311 TYPE REF TO object.
      t311 = t103.
      TRY.
          t308 ?= t311.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t308 IS NOT BOUND.
        TRY.
            t310 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t310 IS BOUND.
          t308 = t310->source( ).
        ENDIF.
        IF t308 IS NOT BOUND.
          CREATE OBJECT t308.
          t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t308->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    t307 = zcl_lnt_st_combi_module=>opt( i_first = t308 ).
    IF t307 IS BOUND.
      DATA t312 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t313 TYPE REF TO object.
      t313 = t307.
      TRY.
          t306 ?= t313.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t306 IS NOT BOUND.
        TRY.
            t312 ?= t307.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t312 IS BOUND.
          t306 = t312->source( ).
        ENDIF.
        IF t306 IS NOT BOUND.
          CREATE OBJECT t306.
          t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t306->oval = t307.
        ENDIF.
      ENDIF.
    ENDIF.
    t289->load( ).
    APPEND t306 TO t289->items.
    t289->save( ).
    t277 = zcl_lnt_st_combi_module=>seq( i_first = t280 i_second = t283 i_rest = t289 ).
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t321.
    t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t321->sval = |MODIFY TABLE|.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t126 IS BOUND.
      DATA t326 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t327 TYPE REF TO object.
      t327 = t126.
      TRY.
          t324 ?= t327.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t324 IS NOT BOUND.
        TRY.
            t326 ?= t126.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t326 IS BOUND.
          t324 = t326->source( ).
        ENDIF.
        IF t324 IS NOT BOUND.
          CREATE OBJECT t324.
          t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t324->oval = t126.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t328 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t328.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t336 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t337 TYPE REF TO object.
      t337 = t15.
      TRY.
          t334 ?= t337.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t334 IS NOT BOUND.
        TRY.
            t336 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t336 IS BOUND.
          t334 = t336->source( ).
        ENDIF.
        IF t334 IS NOT BOUND.
          CREATE OBJECT t334.
          t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t334->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89 IS BOUND.
      DATA t341 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t342 TYPE REF TO object.
      t342 = t89.
      TRY.
          t339 ?= t342.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t339 IS NOT BOUND.
        TRY.
            t341 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t341 IS BOUND.
          t339 = t341->source( ).
        ENDIF.
        IF t339 IS NOT BOUND.
          CREATE OBJECT t339.
          t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t339->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t344 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t344.
    t332 = zcl_lnt_st_combi_module=>per( i_first = t334 i_second = t339 i_rest = t344 ).
    IF t332 IS BOUND.
      DATA t349 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t350 TYPE REF TO object.
      t350 = t332.
      TRY.
          t331 ?= t350.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t331 IS NOT BOUND.
        TRY.
            t349 ?= t332.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t349 IS BOUND.
          t331 = t349->source( ).
        ENDIF.
        IF t331 IS NOT BOUND.
          CREATE OBJECT t331.
          t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t331->oval = t332.
        ENDIF.
      ENDIF.
    ENDIF.
    t328->load( ).
    APPEND t331 TO t328->items.
    t328->save( ).
    t318 = zcl_lnt_st_combi_module=>seq( i_first = t321 i_second = t324 i_rest = t328 ).
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t277 IS BOUND.
      DATA t359 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t360 TYPE REF TO object.
      t360 = t277.
      TRY.
          t357 ?= t360.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t357 IS NOT BOUND.
        TRY.
            t359 ?= t277.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t359 IS BOUND.
          t357 = t359->source( ).
        ENDIF.
        IF t357 IS NOT BOUND.
          CREATE OBJECT t357.
          t357->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t357->oval = t277.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t318 IS BOUND.
      DATA t364 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t365 TYPE REF TO object.
      t365 = t318.
      TRY.
          t362 ?= t365.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t362 IS NOT BOUND.
        TRY.
            t364 ?= t318.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t364 IS BOUND.
          t362 = t364->source( ).
        ENDIF.
        IF t362 IS NOT BOUND.
          CREATE OBJECT t362.
          t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t362->oval = t318.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t367 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t367.
    result = zcl_lnt_st_combi_module=>alt( i_first = t357 i_second = t362 i_rest = t367 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d557_3b89d313f054.
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
