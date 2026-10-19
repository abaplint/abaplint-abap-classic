* TS: src/abap/2_statements/statements/import.ts:8:1 Import
CLASS zcl_lnt_st_import DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_import IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |TO|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    t11 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t10 ).
    t1 = t11.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |CLIENT|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    t25 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t24 ).
    t15 = t25.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = |ID|.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    t39 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t35 i_rest = t38 ).
    t29 = t39.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = |USING|.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t49 i_rest = t52 ).
    t43 = t53.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t60->cval = t61.
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t64 = zcl_lnt_st_combi_module=>tok( i_t = t65 ).
    IF t64 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t67 TYPE REF TO object.
      t67 = t64.
      TRY.
          t63 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t66 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t63 = t66->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    t68 = t69.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA t73 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t74) = `^[\w$%\^]{2}$`.
    DATA(t75) = `^[A-Za-z0-9_$%\^]{2}$`.
    DATA(t76) = ||.
    CREATE OBJECT t73 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t75 flags = t76.
    t73->source = t74.
    t72 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t73 ).
    IF t72 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t78 TYPE REF TO object.
      t78 = t72.
      TRY.
          t71 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t77 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t71 = t77->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t72.
        ENDIF.
      ENDIF.
    ENDIF.
    t68->load( ).
    APPEND t71 TO t68->items.
    t68->save( ).
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t81 = zcl_lnt_st_combi_module=>tok( i_t = t82 ).
    IF t81 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t84 TYPE REF TO object.
      t84 = t81.
      TRY.
          t80 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t80 IS NOT BOUND.
        TRY.
            t83 ?= t81.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t80 = t83->source( ).
        ENDIF.
        IF t80 IS NOT BOUND.
          CREATE OBJECT t80.
          t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t80->oval = t81.
        ENDIF.
      ENDIF.
    ENDIF.
    t68->load( ).
    APPEND t80 TO t68->items.
    t68->save( ).
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t63 i_rest = t68 ).
    t57 = t85.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t93) = |DATA BUFFER|.
    CREATE OBJECT t92.
    t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t92->sval = t93.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t95->cval = t96.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    t99 = zcl_lnt_st_combi_module=>seq( i_first = t92 i_second = t95 i_rest = t98 ).
    t89 = t99.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t105) = |KeyUser|.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = |MEMORY|.
    CREATE OBJECT t109.
    t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t109->sval = t110.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t118) = |ID|.
    CREATE OBJECT t117.
    t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t117->sval = t118.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t121 IS BOUND.
      CREATE OBJECT t120.
      t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t120->cval = t121.
    ENDIF.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    t124 = zcl_lnt_st_combi_module=>seq( i_first = t117 i_second = t120 i_rest = t123 ).
    t115 = t124.
    IF t115 IS BOUND.
      DATA t128 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t129 TYPE REF TO object.
      t129 = t115.
      TRY.
          t114 ?= t129.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t128 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t128 IS BOUND.
          t114 = t128->source( ).
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
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t131 TYPE REF TO object.
      t131 = t113.
      TRY.
          t112 ?= t131.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t130 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t130 IS BOUND.
          t112 = t130->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t133.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    t134 = zcl_lnt_st_combi_module=>seq( i_first = t109 i_second = t112 i_rest = t133 ).
    t107 = t134.
    IF t107 IS BOUND.
      DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t139 TYPE REF TO object.
      t139 = t107.
      TRY.
          t106 ?= t139.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t106 IS NOT BOUND.
        TRY.
            t138 ?= t107.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t138 IS BOUND.
          t106 = t138->source( ).
        ENDIF.
        IF t106 IS NOT BOUND.
          CREATE OBJECT t106.
          t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t106->oval = t107.
        ENDIF.
      ENDIF.
    ENDIF.
    t104 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t105 i_first = t106 ).
    t103 = t104.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t144) = |INTERNAL TABLE|.
    CREATE OBJECT t143.
    t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t143->sval = t144.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t146->cval = t147.
    ENDIF.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    t150 = zcl_lnt_st_combi_module=>seq( i_first = t143 i_second = t146 i_rest = t149 ).
    t140 = t150.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t156) = |KeyUser|.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t164) = |SHARED MEMORY|.
    CREATE OBJECT t163.
    t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t163->sval = t164.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t167) = |SHARED BUFFER|.
    CREATE OBJECT t166.
    t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t166->sval = t167.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t169.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    t170 = zcl_lnt_st_combi_module=>alt( i_first = t163 i_second = t166 i_rest = t169 ).
    t161 = t170.
    IF t161 IS BOUND.
      DATA t174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t175 TYPE REF TO object.
      t175 = t161.
      TRY.
          t160 ?= t175.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t160 IS NOT BOUND.
        TRY.
            t174 ?= t161.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t174 IS BOUND.
          t160 = t174->source( ).
        ENDIF.
        IF t160 IS NOT BOUND.
          CREATE OBJECT t160.
          t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t160->oval = t161.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t179 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t180 TYPE REF TO object.
      t180 = t57.
      TRY.
          t177 ?= t180.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t177 IS NOT BOUND.
        TRY.
            t179 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t179 IS BOUND.
          t177 = t179->source( ).
        ENDIF.
        IF t177 IS NOT BOUND.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t177->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t182.
    t181 = t182.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t189 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t190 TYPE REF TO object.
      t190 = t1.
      TRY.
          t187 ?= t190.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t187 IS NOT BOUND.
        TRY.
            t189 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t189 IS BOUND.
          t187 = t189->source( ).
        ENDIF.
        IF t187 IS NOT BOUND.
          CREATE OBJECT t187.
          t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t187->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t194 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t195 TYPE REF TO object.
      t195 = t15.
      TRY.
          t192 ?= t195.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t192 IS NOT BOUND.
        TRY.
            t194 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t194 IS BOUND.
          t192 = t194->source( ).
        ENDIF.
        IF t192 IS NOT BOUND.
          CREATE OBJECT t192.
          t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t192->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t197.
    t196 = t197.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t201 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t202 TYPE REF TO object.
      t202 = t29.
      TRY.
          t199 ?= t202.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t199 IS NOT BOUND.
        TRY.
            t201 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t201 IS BOUND.
          t199 = t201->source( ).
        ENDIF.
        IF t199 IS NOT BOUND.
          CREATE OBJECT t199.
          t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t199->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t196->load( ).
    APPEND t199 TO t196->items.
    t196->save( ).
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    t203 = zcl_lnt_st_combi_module=>per( i_first = t187 i_second = t192 i_rest = t196 ).
    t185 = t203.
    IF t185 IS BOUND.
      DATA t207 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t208 TYPE REF TO object.
      t208 = t185.
      TRY.
          t184 ?= t208.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t184 IS NOT BOUND.
        TRY.
            t207 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t207 IS BOUND.
          t184 = t207->source( ).
        ENDIF.
        IF t184 IS NOT BOUND.
          CREATE OBJECT t184.
          t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t184->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t181->load( ).
    APPEND t184 TO t181->items.
    t181->save( ).
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    t209 = zcl_lnt_st_combi_module=>seq( i_first = t160 i_second = t177 i_rest = t181 ).
    t158 = t209.
    IF t158 IS BOUND.
      DATA t213 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t214 TYPE REF TO object.
      t214 = t158.
      TRY.
          t157 ?= t214.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t213 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t213 IS BOUND.
          t157 = t213->source( ).
        ENDIF.
        IF t157 IS NOT BOUND.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t157->oval = t158.
        ENDIF.
      ENDIF.
    ENDIF.
    t155 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t156 i_first = t157 ).
    t154 = t155.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t217) = |KeyUser|.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t222) = |DATABASE|.
    CREATE OBJECT t221.
    t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t221->sval = t222.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t226 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t227 TYPE REF TO object.
      t227 = t57.
      TRY.
          t224 ?= t227.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t224 IS NOT BOUND.
        TRY.
            t226 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t226 IS BOUND.
          t224 = t226->source( ).
        ENDIF.
        IF t224 IS NOT BOUND.
          CREATE OBJECT t224.
          t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t224->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t229.
    t228 = t229.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t236 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t237 TYPE REF TO object.
      t237 = t1.
      TRY.
          t234 ?= t237.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t234 IS NOT BOUND.
        TRY.
            t236 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t236 IS BOUND.
          t234 = t236->source( ).
        ENDIF.
        IF t234 IS NOT BOUND.
          CREATE OBJECT t234.
          t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t234->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t241 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t242 TYPE REF TO object.
      t242 = t15.
      TRY.
          t239 ?= t242.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t239 IS NOT BOUND.
        TRY.
            t241 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t241 IS BOUND.
          t239 = t241->source( ).
        ENDIF.
        IF t239 IS NOT BOUND.
          CREATE OBJECT t239.
          t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t239->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t244.
    t243 = t244.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t248 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t249 TYPE REF TO object.
      t249 = t29.
      TRY.
          t246 ?= t249.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t248 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t248 IS BOUND.
          t246 = t248->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t243->load( ).
    APPEND t246 TO t243->items.
    t243->save( ).
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t253 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t254 TYPE REF TO object.
      t254 = t43.
      TRY.
          t251 ?= t254.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t251 IS NOT BOUND.
        TRY.
            t253 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t253 IS BOUND.
          t251 = t253->source( ).
        ENDIF.
        IF t251 IS NOT BOUND.
          CREATE OBJECT t251.
          t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t251->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t243->load( ).
    APPEND t251 TO t243->items.
    t243->save( ).
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    t255 = zcl_lnt_st_combi_module=>per( i_first = t234 i_second = t239 i_rest = t243 ).
    t232 = t255.
    IF t232 IS BOUND.
      DATA t259 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t260 TYPE REF TO object.
      t260 = t232.
      TRY.
          t231 ?= t260.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t231 IS NOT BOUND.
        TRY.
            t259 ?= t232.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t259 IS BOUND.
          t231 = t259->source( ).
        ENDIF.
        IF t231 IS NOT BOUND.
          CREATE OBJECT t231.
          t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t231->oval = t232.
        ENDIF.
      ENDIF.
    ENDIF.
    t228->load( ).
    APPEND t231 TO t228->items.
    t228->save( ).
    DATA t261 TYPE REF TO zif_lnt_statement_runnable.
    t261 = zcl_lnt_st_combi_module=>seq( i_first = t221 i_second = t224 i_rest = t228 ).
    t219 = t261.
    IF t219 IS BOUND.
      DATA t265 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t266 TYPE REF TO object.
      t266 = t219.
      TRY.
          t218 ?= t266.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t218 IS NOT BOUND.
        TRY.
            t265 ?= t219.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS BOUND.
          t218 = t265->source( ).
        ENDIF.
        IF t218 IS NOT BOUND.
          CREATE OBJECT t218.
          t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t218->oval = t219.
        ENDIF.
      ENDIF.
    ENDIF.
    t216 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t217 i_first = t218 ).
    t215 = t216.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t269) = |KeyUser|.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t274) = |LOGFILE ID|.
    CREATE OBJECT t273.
    t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t273->sval = t274.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t277) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t277 IS BOUND.
      CREATE OBJECT t276.
      t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t276->cval = t277.
    ENDIF.
    DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t279.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    t280 = zcl_lnt_st_combi_module=>seq( i_first = t273 i_second = t276 i_rest = t279 ).
    t271 = t280.
    IF t271 IS BOUND.
      DATA t284 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t285 TYPE REF TO object.
      t285 = t271.
      TRY.
          t270 ?= t285.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t270 IS NOT BOUND.
        TRY.
            t284 ?= t271.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t284 IS BOUND.
          t270 = t284->source( ).
        ENDIF.
        IF t270 IS NOT BOUND.
          CREATE OBJECT t270.
          t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t270->oval = t271.
        ENDIF.
      ENDIF.
    ENDIF.
    t268 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t269 i_first = t270 ).
    t267 = t268.
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89 IS BOUND.
      DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t292 TYPE REF TO object.
      t292 = t89.
      TRY.
          t289 ?= t292.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t289 IS NOT BOUND.
        TRY.
            t291 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t291 IS BOUND.
          t289 = t291->source( ).
        ENDIF.
        IF t289 IS NOT BOUND.
          CREATE OBJECT t289.
          t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t289->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t103 IS BOUND.
      DATA t296 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t297 TYPE REF TO object.
      t297 = t103.
      TRY.
          t294 ?= t297.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t294 IS NOT BOUND.
        TRY.
            t296 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t296 IS BOUND.
          t294 = t296->source( ).
        ENDIF.
        IF t294 IS NOT BOUND.
          CREATE OBJECT t294.
          t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t294->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t299.
    t298 = t299.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t215 IS BOUND.
      DATA t303 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t304 TYPE REF TO object.
      t304 = t215.
      TRY.
          t301 ?= t304.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t301 IS NOT BOUND.
        TRY.
            t303 ?= t215.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t303 IS BOUND.
          t301 = t303->source( ).
        ENDIF.
        IF t301 IS NOT BOUND.
          CREATE OBJECT t301.
          t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t301->oval = t215.
        ENDIF.
      ENDIF.
    ENDIF.
    t298->load( ).
    APPEND t301 TO t298->items.
    t298->save( ).
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t140 IS BOUND.
      DATA t308 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t309 TYPE REF TO object.
      t309 = t140.
      TRY.
          t306 ?= t309.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t306 IS NOT BOUND.
        TRY.
            t308 ?= t140.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t308 IS BOUND.
          t306 = t308->source( ).
        ENDIF.
        IF t306 IS NOT BOUND.
          CREATE OBJECT t306.
          t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t306->oval = t140.
        ENDIF.
      ENDIF.
    ENDIF.
    t298->load( ).
    APPEND t306 TO t298->items.
    t298->save( ).
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t154 IS BOUND.
      DATA t313 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t314 TYPE REF TO object.
      t314 = t154.
      TRY.
          t311 ?= t314.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t311 IS NOT BOUND.
        TRY.
            t313 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t313 IS BOUND.
          t311 = t313->source( ).
        ENDIF.
        IF t311 IS NOT BOUND.
          CREATE OBJECT t311.
          t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t311->oval = t154.
        ENDIF.
      ENDIF.
    ENDIF.
    t298->load( ).
    APPEND t311 TO t298->items.
    t298->save( ).
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t267 IS BOUND.
      DATA t318 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t319 TYPE REF TO object.
      t319 = t267.
      TRY.
          t316 ?= t319.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t316 IS NOT BOUND.
        TRY.
            t318 ?= t267.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t318 IS BOUND.
          t316 = t318->source( ).
        ENDIF.
        IF t316 IS NOT BOUND.
          CREATE OBJECT t316.
          t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t316->oval = t267.
        ENDIF.
      ENDIF.
    ENDIF.
    t298->load( ).
    APPEND t316 TO t298->items.
    t298->save( ).
    DATA t320 TYPE REF TO zif_lnt_statement_runnable.
    t320 = zcl_lnt_st_combi_module=>alt( i_first = t289 i_second = t294 i_rest = t298 ).
    t286 = t320.
    DATA t324 TYPE REF TO zif_lnt_statement_runnable.
    DATA t325 TYPE REF TO zif_lnt_statement_runnable.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t327 TYPE REF TO zif_lnt_statement_runnable.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t330) = zlnt_runtime_desc_78196487750d=>zlnt_member_d127_3599949d7390.
    IF t330 IS BOUND.
      CREATE OBJECT t329.
      t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t329->cval = t330.
    ENDIF.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t336) = |TO|.
    CREATE OBJECT t335.
    t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t335->sval = t336.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t339) = |INTO|.
    CREATE OBJECT t338.
    t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t338->sval = t339.
    DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t341.
    DATA t342 TYPE REF TO zif_lnt_statement_runnable.
    t342 = zcl_lnt_st_combi_module=>alt( i_first = t335 i_second = t338 i_rest = t341 ).
    t333 = t342.
    IF t333 IS BOUND.
      DATA t346 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t347 TYPE REF TO object.
      t347 = t333.
      TRY.
          t332 ?= t347.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t332 IS NOT BOUND.
        TRY.
            t346 ?= t333.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t346 IS BOUND.
          t332 = t346->source( ).
        ENDIF.
        IF t332 IS NOT BOUND.
          CREATE OBJECT t332.
          t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t332->oval = t333.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t349.
    t348 = t349.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t352) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t352 IS BOUND.
      CREATE OBJECT t351.
      t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t351->cval = t352.
    ENDIF.
    t348->load( ).
    APPEND t351 TO t348->items.
    t348->save( ).
    DATA t353 TYPE REF TO zif_lnt_statement_runnable.
    t353 = zcl_lnt_st_combi_module=>seq( i_first = t329 i_second = t332 i_rest = t348 ).
    t327 = t353.
    IF t327 IS BOUND.
      DATA t357 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t358 TYPE REF TO object.
      t358 = t327.
      TRY.
          t326 ?= t358.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t326 IS NOT BOUND.
        TRY.
            t357 ?= t327.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t357 IS BOUND.
          t326 = t357->source( ).
        ENDIF.
        IF t326 IS NOT BOUND.
          CREATE OBJECT t326.
          t326->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t326->oval = t327.
        ENDIF.
      ENDIF.
    ENDIF.
    t325 = zcl_lnt_st_combi_module=>plus( i_first = t326 ).
    t324 = t325.
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    DATA t360 TYPE REF TO zif_lnt_statement_runnable.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t362 TYPE REF TO zif_lnt_statement_runnable.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t365 TYPE REF TO zif_lnt_statement_runnable.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t368) = zlnt_runtime_desc_78196487750d=>zlnt_member_d127_3599949d7390.
    IF t368 IS BOUND.
      CREATE OBJECT t367.
      t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t367->cval = t368.
    ENDIF.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t371) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
    IF t371 IS BOUND.
      CREATE OBJECT t370.
      t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t370->cval = t371.
    ENDIF.
    DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t373.
    DATA t374 TYPE REF TO zif_lnt_statement_runnable.
    t374 = zcl_lnt_st_combi_module=>alt( i_first = t367 i_second = t370 i_rest = t373 ).
    t365 = t374.
    IF t365 IS BOUND.
      DATA t378 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t379 TYPE REF TO object.
      t379 = t365.
      TRY.
          t364 ?= t379.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t364 IS NOT BOUND.
        TRY.
            t378 ?= t365.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t378 IS BOUND.
          t364 = t378->source( ).
        ENDIF.
        IF t364 IS NOT BOUND.
          CREATE OBJECT t364.
          t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t364->oval = t365.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t382) = |=|.
    CREATE OBJECT t381.
    t381->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t381->sval = t382.
    DATA t383 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t384 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t384.
    t383 = t384.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t387) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t387 IS BOUND.
      CREATE OBJECT t386.
      t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t386->cval = t387.
    ENDIF.
    t383->load( ).
    APPEND t386 TO t383->items.
    t383->save( ).
    DATA t388 TYPE REF TO zif_lnt_statement_runnable.
    t388 = zcl_lnt_st_combi_module=>seq( i_first = t364 i_second = t381 i_rest = t383 ).
    t362 = t388.
    IF t362 IS BOUND.
      DATA t392 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t393 TYPE REF TO object.
      t393 = t362.
      TRY.
          t361 ?= t393.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t361 IS NOT BOUND.
        TRY.
            t392 ?= t362.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t392 IS BOUND.
          t361 = t392->source( ).
        ENDIF.
        IF t361 IS NOT BOUND.
          CREATE OBJECT t361.
          t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t361->oval = t362.
        ENDIF.
      ENDIF.
    ENDIF.
    t360 = zcl_lnt_st_combi_module=>plus( i_first = t361 ).
    t359 = t360.
    DATA t394 TYPE REF TO zif_lnt_statement_runnable.
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t359 IS BOUND.
      DATA t399 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t400 TYPE REF TO object.
      t400 = t359.
      TRY.
          t397 ?= t400.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t397 IS NOT BOUND.
        TRY.
            t399 ?= t359.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t399 IS BOUND.
          t397 = t399->source( ).
        ENDIF.
        IF t397 IS NOT BOUND.
          CREATE OBJECT t397.
          t397->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t397->oval = t359.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t324 IS BOUND.
      DATA t404 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t405 TYPE REF TO object.
      t405 = t324.
      TRY.
          t402 ?= t405.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t402 IS NOT BOUND.
        TRY.
            t404 ?= t324.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t404 IS BOUND.
          t402 = t404->source( ).
        ENDIF.
        IF t402 IS NOT BOUND.
          CREATE OBJECT t402.
          t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t402->oval = t324.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t406 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t407 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t407.
    t406 = t407.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t410) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t410 IS BOUND.
      CREATE OBJECT t409.
      t409->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t409->cval = t410.
    ENDIF.
    t406->load( ).
    APPEND t409 TO t406->items.
    t406->save( ).
    DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t413 TYPE REF TO zif_lnt_statement_runnable.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t415) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t415 IS BOUND.
      CREATE OBJECT t414.
      t414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t414->cval = t415.
    ENDIF.
    t413 = zcl_lnt_st_combi_module=>plus( i_first = t414 ).
    IF t413 IS BOUND.
      DATA t416 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t417 TYPE REF TO object.
      t417 = t413.
      TRY.
          t412 ?= t417.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t412 IS NOT BOUND.
        TRY.
            t416 ?= t413.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t416 IS BOUND.
          t412 = t416->source( ).
        ENDIF.
        IF t412 IS NOT BOUND.
          CREATE OBJECT t412.
          t412->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t412->oval = t413.
        ENDIF.
      ENDIF.
    ENDIF.
    t406->load( ).
    APPEND t412 TO t406->items.
    t406->save( ).
    DATA t418 TYPE REF TO zif_lnt_statement_runnable.
    t418 = zcl_lnt_st_combi_module=>alt( i_first = t397 i_second = t402 i_rest = t406 ).
    t394 = t418.
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t426) = |ACCEPTING PADDING|.
    CREATE OBJECT t425.
    t425->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t425->sval = t426.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t429) = |IGNORING CONVERSION ERRORS|.
    CREATE OBJECT t428.
    t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t428->sval = t429.
    DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t431.
    t430 = t431.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t434) = |IN CHAR-TO-HEX MODE|.
    CREATE OBJECT t433.
    t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t433->sval = t434.
    t430->load( ).
    APPEND t433 TO t430->items.
    t430->save( ).
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t437) = |IGNORING STRUCTURE BOUNDARIES|.
    CREATE OBJECT t436.
    t436->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t436->sval = t437.
    t430->load( ).
    APPEND t436 TO t430->items.
    t430->save( ).
    DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t440) = |ACCEPTING TRUNCATION|.
    CREATE OBJECT t439.
    t439->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t439->sval = t440.
    t430->load( ).
    APPEND t439 TO t430->items.
    t430->save( ).
    DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t443 TYPE REF TO zif_lnt_statement_runnable.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t446) = |REPLACEMENT CHARACTER|.
    CREATE OBJECT t445.
    t445->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t445->sval = t446.
    DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t449) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t449 IS BOUND.
      CREATE OBJECT t448.
      t448->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t448->cval = t449.
    ENDIF.
    DATA t451 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t451.
    DATA t452 TYPE REF TO zif_lnt_statement_runnable.
    t452 = zcl_lnt_st_combi_module=>seq( i_first = t445 i_second = t448 i_rest = t451 ).
    t443 = t452.
    IF t443 IS BOUND.
      DATA t456 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t457 TYPE REF TO object.
      t457 = t443.
      TRY.
          t442 ?= t457.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t442 IS NOT BOUND.
        TRY.
            t456 ?= t443.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t456 IS BOUND.
          t442 = t456->source( ).
        ENDIF.
        IF t442 IS NOT BOUND.
          CREATE OBJECT t442.
          t442->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t442->oval = t443.
        ENDIF.
      ENDIF.
    ENDIF.
    t430->load( ).
    APPEND t442 TO t430->items.
    t430->save( ).
    DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t460 TYPE REF TO zif_lnt_statement_runnable.
    DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t463) = |CODE PAGE INTO|.
    CREATE OBJECT t462.
    t462->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t462->sval = t463.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t466) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t466 IS BOUND.
      CREATE OBJECT t465.
      t465->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t465->cval = t466.
    ENDIF.
    DATA t468 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t468.
    DATA t469 TYPE REF TO zif_lnt_statement_runnable.
    t469 = zcl_lnt_st_combi_module=>seq( i_first = t462 i_second = t465 i_rest = t468 ).
    t460 = t469.
    IF t460 IS BOUND.
      DATA t473 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t474 TYPE REF TO object.
      t474 = t460.
      TRY.
          t459 ?= t474.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t459 IS NOT BOUND.
        TRY.
            t473 ?= t460.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t473 IS BOUND.
          t459 = t473->source( ).
        ENDIF.
        IF t459 IS NOT BOUND.
          CREATE OBJECT t459.
          t459->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t459->oval = t460.
        ENDIF.
      ENDIF.
    ENDIF.
    t430->load( ).
    APPEND t459 TO t430->items.
    t430->save( ).
    DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t477 TYPE REF TO zif_lnt_statement_runnable.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t480) = |ENDIAN INTO|.
    CREATE OBJECT t479.
    t479->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t479->sval = t480.
    DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t483) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t483 IS BOUND.
      CREATE OBJECT t482.
      t482->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t482->cval = t483.
    ENDIF.
    DATA t485 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t485.
    DATA t486 TYPE REF TO zif_lnt_statement_runnable.
    t486 = zcl_lnt_st_combi_module=>seq( i_first = t479 i_second = t482 i_rest = t485 ).
    t477 = t486.
    IF t477 IS BOUND.
      DATA t490 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t491 TYPE REF TO object.
      t491 = t477.
      TRY.
          t476 ?= t491.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t476 IS NOT BOUND.
        TRY.
            t490 ?= t477.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t490 IS BOUND.
          t476 = t490->source( ).
        ENDIF.
        IF t476 IS NOT BOUND.
          CREATE OBJECT t476.
          t476->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t476->oval = t477.
        ENDIF.
      ENDIF.
    ENDIF.
    t430->load( ).
    APPEND t476 TO t430->items.
    t430->save( ).
    DATA t492 TYPE REF TO zif_lnt_statement_runnable.
    t492 = zcl_lnt_st_combi_module=>per( i_first = t425 i_second = t428 i_rest = t430 ).
    t422 = t492.
    DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t500) = |IMPORT|.
    CREATE OBJECT t499.
    t499->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t499->sval = t500.
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t394 IS BOUND.
      DATA t504 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t505 TYPE REF TO object.
      t505 = t394.
      TRY.
          t502 ?= t505.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t502 IS NOT BOUND.
        TRY.
            t504 ?= t394.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t504 IS BOUND.
          t502 = t504->source( ).
        ENDIF.
        IF t502 IS NOT BOUND.
          CREATE OBJECT t502.
          t502->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t502->oval = t394.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t506 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t507 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t507.
    t506 = t507.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t510) = |FROM|.
    CREATE OBJECT t509.
    t509->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t509->sval = t510.
    t506->load( ).
    APPEND t509 TO t506->items.
    t506->save( ).
    DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t286 IS BOUND.
      DATA t514 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t515 TYPE REF TO object.
      t515 = t286.
      TRY.
          t512 ?= t515.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t512 IS NOT BOUND.
        TRY.
            t514 ?= t286.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t514 IS BOUND.
          t512 = t514->source( ).
        ENDIF.
        IF t512 IS NOT BOUND.
          CREATE OBJECT t512.
          t512->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t512->oval = t286.
        ENDIF.
      ENDIF.
    ENDIF.
    t506->load( ).
    APPEND t512 TO t506->items.
    t506->save( ).
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t518 TYPE REF TO zif_lnt_statement_runnable.
    DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t422 IS BOUND.
      DATA t521 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t522 TYPE REF TO object.
      t522 = t422.
      TRY.
          t519 ?= t522.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t519 IS NOT BOUND.
        TRY.
            t521 ?= t422.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t521 IS BOUND.
          t519 = t521->source( ).
        ENDIF.
        IF t519 IS NOT BOUND.
          CREATE OBJECT t519.
          t519->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t519->oval = t422.
        ENDIF.
      ENDIF.
    ENDIF.
    t518 = zcl_lnt_st_combi_module=>opt( i_first = t519 ).
    IF t518 IS BOUND.
      DATA t523 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t524 TYPE REF TO object.
      t524 = t518.
      TRY.
          t517 ?= t524.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t517 IS NOT BOUND.
        TRY.
            t523 ?= t518.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t523 IS BOUND.
          t517 = t523->source( ).
        ENDIF.
        IF t517 IS NOT BOUND.
          CREATE OBJECT t517.
          t517->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t517->oval = t518.
        ENDIF.
      ENDIF.
    ENDIF.
    t506->load( ).
    APPEND t517 TO t506->items.
    t506->save( ).
    DATA t525 TYPE REF TO zif_lnt_statement_runnable.
    t525 = zcl_lnt_st_combi_module=>seq( i_first = t499 i_second = t502 i_rest = t506 ).
    result = t525.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d526_f815f9eca95e.
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
