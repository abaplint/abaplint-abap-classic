* TS: src/abap/2_statements/statements/export.ts:9:1 Export
CLASS zcl_lnt_st_export DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_export IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |FROM|.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = |=|.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t5 = zcl_lnt_st_combi_module=>alt_prio( i_first = t7 i_second = t10 i_rest = t13 ).
    IF t5 IS BOUND.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t19 TYPE REF TO object.
      t19 = t5.
      TRY.
          t4 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t18 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t4 = t18->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t21 i_rest = t24 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |CLIENT|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t35 i_rest = t38 ).
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = |ID|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t49 i_rest = t52 ).
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = |USING|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t63 i_rest = t66 ).
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t74->cval = t75.
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t78 = zcl_lnt_st_combi_module=>tok( i_t = t79 ).
    IF t78 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t81 TYPE REF TO object.
      t81 = t78.
      TRY.
          t77 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t77 IS NOT BOUND.
        TRY.
            t80 ?= t78.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t77 = t80->source( ).
        ENDIF.
        IF t77 IS NOT BOUND.
          CREATE OBJECT t77.
          t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t77->oval = t78.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t82.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t87 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^[A-Za-z0-9_$%\^~]{2}$` flags = ||.
    t87->source = `^[\w$%\^~]{2}$`.
    t86 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t87 ).
    IF t86 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t92 TYPE REF TO object.
      t92 = t86.
      TRY.
          t85 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t91 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t85 = t91->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    t82->load( ).
    APPEND t85 TO t82->items.
    t82->save( ).
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t95 = zcl_lnt_st_combi_module=>tok( i_t = t96 ).
    IF t95 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t98 TYPE REF TO object.
      t98 = t95.
      TRY.
          t94 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t94 IS NOT BOUND.
        TRY.
            t97 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t94 = t97->source( ).
        ENDIF.
        IF t94 IS NOT BOUND.
          CREATE OBJECT t94.
          t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t94->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    t82->load( ).
    APPEND t94 TO t82->items.
    t82->save( ).
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t74 i_second = t77 i_rest = t82 ).
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = |DATA BUFFER|.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t109->cval = t110.
    ENDIF.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t112.
    t103 = zcl_lnt_st_combi_module=>seq( i_first = t106 i_second = t109 i_rest = t112 ).
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = |MEMORY|.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t131.
    t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t131->sval = |ID|.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t135) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t135 IS BOUND.
      CREATE OBJECT t134.
      t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t134->cval = t135.
    ENDIF.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t137.
    t129 = zcl_lnt_st_combi_module=>seq( i_first = t131 i_second = t134 i_rest = t137 ).
    IF t129 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t143 TYPE REF TO object.
      t143 = t129.
      TRY.
          t128 ?= t143.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t128 IS NOT BOUND.
        TRY.
            t142 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t128 = t142->source( ).
        ENDIF.
        IF t128 IS NOT BOUND.
          CREATE OBJECT t128.
          t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t128->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    t127 = zcl_lnt_st_combi_module=>opt( i_first = t128 ).
    IF t127 IS BOUND.
      DATA t144 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t145 TYPE REF TO object.
      t145 = t127.
      TRY.
          t126 ?= t145.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t144 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t144 IS BOUND.
          t126 = t144->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t147.
    t121 = zcl_lnt_st_combi_module=>seq( i_first = t123 i_second = t126 i_rest = t147 ).
    IF t121 IS BOUND.
      DATA t152 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t153 TYPE REF TO object.
      t153 = t121.
      TRY.
          t120 ?= t153.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t152 ?= t121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t152 IS BOUND.
          t120 = t152->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t121.
        ENDIF.
      ENDIF.
    ENDIF.
    t117 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t120 ).
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = |INTERNAL TABLE|.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t161) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t160->cval = t161.
    ENDIF.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t163.
    t154 = zcl_lnt_st_combi_module=>seq( i_first = t157 i_second = t160 i_rest = t163 ).
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t177.
    t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t177->sval = |SHARED MEMORY|.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t180.
    t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t180->sval = |SHARED BUFFER|.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t183.
    t175 = zcl_lnt_st_combi_module=>alt( i_first = t177 i_second = t180 i_rest = t183 ).
    IF t175 IS BOUND.
      DATA t188 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t189 TYPE REF TO object.
      t189 = t175.
      TRY.
          t174 ?= t189.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t188 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t188 IS BOUND.
          t174 = t188->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71 IS BOUND.
      DATA t193 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t194 TYPE REF TO object.
      t194 = t71.
      TRY.
          t191 ?= t194.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t191 IS NOT BOUND.
        TRY.
            t193 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t193 IS BOUND.
          t191 = t193->source( ).
        ENDIF.
        IF t191 IS NOT BOUND.
          CREATE OBJECT t191.
          t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t191->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t195 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t195.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t203 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t204 TYPE REF TO object.
      t204 = t1.
      TRY.
          t201 ?= t204.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t201 IS NOT BOUND.
        TRY.
            t203 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t203 IS BOUND.
          t201 = t203->source( ).
        ENDIF.
        IF t201 IS NOT BOUND.
          CREATE OBJECT t201.
          t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t201->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t208 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t209 TYPE REF TO object.
      t209 = t29.
      TRY.
          t206 ?= t209.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t206 IS NOT BOUND.
        TRY.
            t208 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t208 IS BOUND.
          t206 = t208->source( ).
        ENDIF.
        IF t206 IS NOT BOUND.
          CREATE OBJECT t206.
          t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t206->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t210.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t215 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t216 TYPE REF TO object.
      t216 = t43.
      TRY.
          t213 ?= t216.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t213 IS NOT BOUND.
        TRY.
            t215 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t215 IS BOUND.
          t213 = t215->source( ).
        ENDIF.
        IF t213 IS NOT BOUND.
          CREATE OBJECT t213.
          t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t213->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t210->load( ).
    APPEND t213 TO t210->items.
    t210->save( ).
    t199 = zcl_lnt_st_combi_module=>per( i_first = t201 i_second = t206 i_rest = t210 ).
    IF t199 IS BOUND.
      DATA t221 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t222 TYPE REF TO object.
      t222 = t199.
      TRY.
          t198 ?= t222.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t198 IS NOT BOUND.
        TRY.
            t221 ?= t199.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t221 IS BOUND.
          t198 = t221->source( ).
        ENDIF.
        IF t198 IS NOT BOUND.
          CREATE OBJECT t198.
          t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t198->oval = t199.
        ENDIF.
      ENDIF.
    ENDIF.
    t195->load( ).
    APPEND t198 TO t195->items.
    t195->save( ).
    t172 = zcl_lnt_st_combi_module=>seq( i_first = t174 i_second = t191 i_rest = t195 ).
    IF t172 IS BOUND.
      DATA t227 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t228 TYPE REF TO object.
      t228 = t172.
      TRY.
          t171 ?= t228.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t171 IS NOT BOUND.
        TRY.
            t227 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t227 IS BOUND.
          t171 = t227->source( ).
        ENDIF.
        IF t171 IS NOT BOUND.
          CREATE OBJECT t171.
          t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t171->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    t168 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t171 ).
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t235.
    t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t235->sval = |DATABASE|.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71 IS BOUND.
      DATA t240 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t241 TYPE REF TO object.
      t241 = t71.
      TRY.
          t238 ?= t241.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t238 IS NOT BOUND.
        TRY.
            t240 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t240 IS BOUND.
          t238 = t240->source( ).
        ENDIF.
        IF t238 IS NOT BOUND.
          CREATE OBJECT t238.
          t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t238->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t242.
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
    DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t257.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t262 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t263 TYPE REF TO object.
      t263 = t43.
      TRY.
          t260 ?= t263.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t260 IS NOT BOUND.
        TRY.
            t262 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t262 IS BOUND.
          t260 = t262->source( ).
        ENDIF.
        IF t260 IS NOT BOUND.
          CREATE OBJECT t260.
          t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t260->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t257->load( ).
    APPEND t260 TO t257->items.
    t257->save( ).
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t267 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t268 TYPE REF TO object.
      t268 = t57.
      TRY.
          t265 ?= t268.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t265 IS NOT BOUND.
        TRY.
            t267 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t267 IS BOUND.
          t265 = t267->source( ).
        ENDIF.
        IF t265 IS NOT BOUND.
          CREATE OBJECT t265.
          t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t265->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t257->load( ).
    APPEND t265 TO t257->items.
    t257->save( ).
    t246 = zcl_lnt_st_combi_module=>per( i_first = t248 i_second = t253 i_rest = t257 ).
    IF t246 IS BOUND.
      DATA t273 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t274 TYPE REF TO object.
      t274 = t246.
      TRY.
          t245 ?= t274.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t273 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t273 IS BOUND.
          t245 = t273->source( ).
        ENDIF.
        IF t245 IS NOT BOUND.
          CREATE OBJECT t245.
          t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t245->oval = t246.
        ENDIF.
      ENDIF.
    ENDIF.
    t242->load( ).
    APPEND t245 TO t242->items.
    t242->save( ).
    t233 = zcl_lnt_st_combi_module=>seq( i_first = t235 i_second = t238 i_rest = t242 ).
    IF t233 IS BOUND.
      DATA t279 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t280 TYPE REF TO object.
      t280 = t233.
      TRY.
          t232 ?= t280.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t232 IS NOT BOUND.
        TRY.
            t279 ?= t233.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t279 IS BOUND.
          t232 = t279->source( ).
        ENDIF.
        IF t232 IS NOT BOUND.
          CREATE OBJECT t232.
          t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t232->oval = t233.
        ENDIF.
      ENDIF.
    ENDIF.
    t229 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t232 ).
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t103 IS BOUND.
      DATA t286 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t287 TYPE REF TO object.
      t287 = t103.
      TRY.
          t284 ?= t287.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t284 IS NOT BOUND.
        TRY.
            t286 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t286 IS BOUND.
          t284 = t286->source( ).
        ENDIF.
        IF t284 IS NOT BOUND.
          CREATE OBJECT t284.
          t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t284->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t117 IS BOUND.
      DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t292 TYPE REF TO object.
      t292 = t117.
      TRY.
          t289 ?= t292.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t289 IS NOT BOUND.
        TRY.
            t291 ?= t117.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t291 IS BOUND.
          t289 = t291->source( ).
        ENDIF.
        IF t289 IS NOT BOUND.
          CREATE OBJECT t289.
          t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t289->oval = t117.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t293 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t293.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t229 IS BOUND.
      DATA t298 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t299 TYPE REF TO object.
      t299 = t229.
      TRY.
          t296 ?= t299.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t296 IS NOT BOUND.
        TRY.
            t298 ?= t229.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t298 IS BOUND.
          t296 = t298->source( ).
        ENDIF.
        IF t296 IS NOT BOUND.
          CREATE OBJECT t296.
          t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t296->oval = t229.
        ENDIF.
      ENDIF.
    ENDIF.
    t293->load( ).
    APPEND t296 TO t293->items.
    t293->save( ).
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t154 IS BOUND.
      DATA t303 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t304 TYPE REF TO object.
      t304 = t154.
      TRY.
          t301 ?= t304.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t301 IS NOT BOUND.
        TRY.
            t303 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t303 IS BOUND.
          t301 = t303->source( ).
        ENDIF.
        IF t301 IS NOT BOUND.
          CREATE OBJECT t301.
          t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t301->oval = t154.
        ENDIF.
      ENDIF.
    ENDIF.
    t293->load( ).
    APPEND t301 TO t293->items.
    t293->save( ).
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t168 IS BOUND.
      DATA t308 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t309 TYPE REF TO object.
      t309 = t168.
      TRY.
          t306 ?= t309.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t306 IS NOT BOUND.
        TRY.
            t308 ?= t168.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t308 IS BOUND.
          t306 = t308->source( ).
        ENDIF.
        IF t306 IS NOT BOUND.
          CREATE OBJECT t306.
          t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t306->oval = t168.
        ENDIF.
      ENDIF.
    ENDIF.
    t293->load( ).
    APPEND t306 TO t293->items.
    t293->save( ).
    t281 = zcl_lnt_st_combi_module=>alt( i_first = t284 i_second = t289 i_rest = t293 ).
    DATA t314 TYPE REF TO zif_lnt_statement_runnable.
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t318) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    IF t318 IS BOUND.
      CREATE OBJECT t317.
      t317->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t317->cval = t318.
    ENDIF.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t321) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
    IF t321 IS BOUND.
      CREATE OBJECT t320.
      t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t320->cval = t321.
    ENDIF.
    DATA t323 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t323.
    t314 = zcl_lnt_st_combi_module=>alt( i_first = t317 i_second = t320 i_rest = t323 ).
    DATA t328 TYPE REF TO zif_lnt_statement_runnable.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t334 TYPE REF TO zif_lnt_statement_runnable.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t314 IS BOUND.
      DATA t341 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t342 TYPE REF TO object.
      t342 = t314.
      TRY.
          t339 ?= t342.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t339 IS NOT BOUND.
        TRY.
            t341 ?= t314.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t341 IS BOUND.
          t339 = t341->source( ).
        ENDIF.
        IF t339 IS NOT BOUND.
          CREATE OBJECT t339.
          t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t339->oval = t314.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t346 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t347 TYPE REF TO object.
      t347 = t1.
      TRY.
          t344 ?= t347.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t344 IS NOT BOUND.
        TRY.
            t346 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t346 IS BOUND.
          t344 = t346->source( ).
        ENDIF.
        IF t344 IS NOT BOUND.
          CREATE OBJECT t344.
          t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t344->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t349.
    t337 = zcl_lnt_st_combi_module=>seq( i_first = t339 i_second = t344 i_rest = t349 ).
    IF t337 IS BOUND.
      DATA t354 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t355 TYPE REF TO object.
      t355 = t337.
      TRY.
          t336 ?= t355.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t336 IS NOT BOUND.
        TRY.
            t354 ?= t337.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t354 IS BOUND.
          t336 = t354->source( ).
        ENDIF.
        IF t336 IS NOT BOUND.
          CREATE OBJECT t336.
          t336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t336->oval = t337.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t314 IS BOUND.
      DATA t359 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t360 TYPE REF TO object.
      t360 = t314.
      TRY.
          t357 ?= t360.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t357 IS NOT BOUND.
        TRY.
            t359 ?= t314.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t359 IS BOUND.
          t357 = t359->source( ).
        ENDIF.
        IF t357 IS NOT BOUND.
          CREATE OBJECT t357.
          t357->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t357->oval = t314.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t362 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t362.
    t334 = zcl_lnt_st_combi_module=>alt_prio( i_first = t336 i_second = t357 i_rest = t362 ).
    IF t334 IS BOUND.
      DATA t367 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t368 TYPE REF TO object.
      t368 = t334.
      TRY.
          t333 ?= t368.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t333 IS NOT BOUND.
        TRY.
            t367 ?= t334.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t367 IS BOUND.
          t333 = t367->source( ).
        ENDIF.
        IF t333 IS NOT BOUND.
          CREATE OBJECT t333.
          t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t333->oval = t334.
        ENDIF.
      ENDIF.
    ENDIF.
    t332 = zcl_lnt_st_combi_module=>plus( i_first = t333 ).
    IF t332 IS BOUND.
      DATA t369 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t370 TYPE REF TO object.
      t370 = t332.
      TRY.
          t331 ?= t370.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t331 IS NOT BOUND.
        TRY.
            t369 ?= t332.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t369 IS BOUND.
          t331 = t369->source( ).
        ENDIF.
        IF t331 IS NOT BOUND.
          CREATE OBJECT t331.
          t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t331->oval = t332.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t373) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t373 IS BOUND.
      CREATE OBJECT t372.
      t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t372->cval = t373.
    ENDIF.
    DATA t374 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t374.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t378) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t378 IS BOUND.
      CREATE OBJECT t377.
      t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t377->cval = t378.
    ENDIF.
    t374->load( ).
    APPEND t377 TO t374->items.
    t374->save( ).
    t328 = zcl_lnt_st_combi_module=>alt( i_first = t331 i_second = t372 i_rest = t374 ).
    DATA t383 TYPE REF TO zif_lnt_statement_runnable.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t386.
    t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t386->sval = |COMPRESSION|.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t390 TYPE REF TO zif_lnt_statement_runnable.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t392.
    t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t392->sval = |ON|.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t395.
    t395->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t395->sval = |OFF|.
    DATA t398 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t398.
    t390 = zcl_lnt_st_combi_module=>alt( i_first = t392 i_second = t395 i_rest = t398 ).
    IF t390 IS BOUND.
      DATA t403 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t404 TYPE REF TO object.
      t404 = t390.
      TRY.
          t389 ?= t404.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t389 IS NOT BOUND.
        TRY.
            t403 ?= t390.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t403 IS BOUND.
          t389 = t403->source( ).
        ENDIF.
        IF t389 IS NOT BOUND.
          CREATE OBJECT t389.
          t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t389->oval = t390.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t406 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t406.
    t383 = zcl_lnt_st_combi_module=>seq( i_first = t386 i_second = t389 i_rest = t406 ).
    DATA t411 TYPE REF TO zif_lnt_statement_runnable.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t414.
    t414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t414->sval = |CODE PAGE HINT|.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t418) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t418 IS BOUND.
      CREATE OBJECT t417.
      t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t417->cval = t418.
    ENDIF.
    DATA t420 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t420.
    t411 = zcl_lnt_st_combi_module=>seq( i_first = t414 i_second = t417 i_rest = t420 ).
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t427.
    t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t427->sval = |EXPORT|.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t328 IS BOUND.
      DATA t432 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t433 TYPE REF TO object.
      t433 = t328.
      TRY.
          t430 ?= t433.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t430 IS NOT BOUND.
        TRY.
            t432 ?= t328.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t432 IS BOUND.
          t430 = t432->source( ).
        ENDIF.
        IF t430 IS NOT BOUND.
          CREATE OBJECT t430.
          t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t430->oval = t328.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t434 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t434.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t437.
    t437->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t437->sval = |TO|.
    t434->load( ).
    APPEND t437 TO t434->items.
    t434->save( ).
    DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t281 IS BOUND.
      DATA t442 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t443 TYPE REF TO object.
      t443 = t281.
      TRY.
          t440 ?= t443.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t440 IS NOT BOUND.
        TRY.
            t442 ?= t281.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t442 IS BOUND.
          t440 = t442->source( ).
        ENDIF.
        IF t440 IS NOT BOUND.
          CREATE OBJECT t440.
          t440->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t440->oval = t281.
        ENDIF.
      ENDIF.
    ENDIF.
    t434->load( ).
    APPEND t440 TO t434->items.
    t434->save( ).
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t446 TYPE REF TO zif_lnt_statement_runnable.
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t383 IS BOUND.
      DATA t449 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t450 TYPE REF TO object.
      t450 = t383.
      TRY.
          t447 ?= t450.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t447 IS NOT BOUND.
        TRY.
            t449 ?= t383.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t449 IS BOUND.
          t447 = t449->source( ).
        ENDIF.
        IF t447 IS NOT BOUND.
          CREATE OBJECT t447.
          t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t447->oval = t383.
        ENDIF.
      ENDIF.
    ENDIF.
    t446 = zcl_lnt_st_combi_module=>opt( i_first = t447 ).
    IF t446 IS BOUND.
      DATA t451 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t452 TYPE REF TO object.
      t452 = t446.
      TRY.
          t445 ?= t452.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t445 IS NOT BOUND.
        TRY.
            t451 ?= t446.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t451 IS BOUND.
          t445 = t451->source( ).
        ENDIF.
        IF t445 IS NOT BOUND.
          CREATE OBJECT t445.
          t445->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t445->oval = t446.
        ENDIF.
      ENDIF.
    ENDIF.
    t434->load( ).
    APPEND t445 TO t434->items.
    t434->save( ).
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t455 TYPE REF TO zif_lnt_statement_runnable.
    DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411 IS BOUND.
      DATA t458 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t459 TYPE REF TO object.
      t459 = t411.
      TRY.
          t456 ?= t459.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t456 IS NOT BOUND.
        TRY.
            t458 ?= t411.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t458 IS BOUND.
          t456 = t458->source( ).
        ENDIF.
        IF t456 IS NOT BOUND.
          CREATE OBJECT t456.
          t456->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t456->oval = t411.
        ENDIF.
      ENDIF.
    ENDIF.
    t455 = zcl_lnt_st_combi_module=>opt( i_first = t456 ).
    IF t455 IS BOUND.
      DATA t460 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t461 TYPE REF TO object.
      t461 = t455.
      TRY.
          t454 ?= t461.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t454 IS NOT BOUND.
        TRY.
            t460 ?= t455.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t460 IS BOUND.
          t454 = t460->source( ).
        ENDIF.
        IF t454 IS NOT BOUND.
          CREATE OBJECT t454.
          t454->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t454->oval = t455.
        ENDIF.
      ENDIF.
    ENDIF.
    t434->load( ).
    APPEND t454 TO t434->items.
    t434->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t427 i_second = t430 i_rest = t434 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d491_a57d7381546f.
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
