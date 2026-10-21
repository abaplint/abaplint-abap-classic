* TS: src/abap/2_statements/statements/replace.ts:6:1 Replace
CLASS zcl_lnt_st_replace DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_replace IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |LENGTH|.
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
    t18->sval = |OFFSET|.
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
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t34.
    t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t34->sval = |IN|.
    t33 = zcl_lnt_st_combi_module=>opt( i_first = t34 ).
    IF t33 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t32 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t32 IS NOT BOUND.
        TRY.
            t36 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t32 = t36->source( ).
        ENDIF.
        IF t32 IS NOT BOUND.
          CREATE OBJECT t32.
          t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t32->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = |SECTION|.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t47 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t49 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t47 = t49->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t52 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t54 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t52 = t54->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t57.
    t45 = zcl_lnt_st_combi_module=>per( i_first = t47 i_second = t52 i_rest = t57 ).
    IF t45 IS BOUND.
      DATA t62 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t44 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t44 IS NOT BOUND.
        TRY.
            t62 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t62 IS BOUND.
          t44 = t62->source( ).
        ENDIF.
        IF t44 IS NOT BOUND.
          CREATE OBJECT t44.
          t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t44->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    t41->load( ).
    APPEND t44 TO t41->items.
    t41->save( ).
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t65.
    t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t65->sval = |OF|.
    t41->load( ).
    APPEND t65 TO t41->items.
    t41->save( ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t68->cval = t69.
    ENDIF.
    t41->load( ).
    APPEND t68 TO t41->items.
    t41->save( ).
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t39 i_rest = t41 ).
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t79.
    t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t79->sval = |OF|.
    t78 = zcl_lnt_st_combi_module=>opt( i_first = t79 ).
    IF t78 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t77 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t77 IS NOT BOUND.
        TRY.
            t81 ?= t78.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t77 = t81->source( ).
        ENDIF.
        IF t77 IS NOT BOUND.
          CREATE OBJECT t77.
          t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t77->oval = t78.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d176_70730c0e7184.
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t84->cval = t85.
    ENDIF.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t86.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t90) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t90 IS BOUND.
      CREATE OBJECT t89.
      t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t89->cval = t90.
    ENDIF.
    t86->load( ).
    APPEND t89 TO t86->items.
    t86->save( ).
    t74 = zcl_lnt_st_combi_module=>seq( i_first = t77 i_second = t84 i_rest = t86 ).
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = |IGNORING CASE|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = |RESPECTING CASE|.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t104.
    t95 = zcl_lnt_st_combi_module=>alt_prio( i_first = t98 i_second = t101 i_rest = t104 ).
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = |REPLACEMENT COUNT|.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t116) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t115->cval = t116.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    t109 = zcl_lnt_st_combi_module=>seq( i_first = t112 i_second = t115 i_rest = t118 ).
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t126.
    t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t126->sval = |REPLACEMENT OFFSET|.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t129->cval = t130.
    ENDIF.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t132.
    t123 = zcl_lnt_st_combi_module=>seq( i_first = t126 i_second = t129 i_rest = t132 ).
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t140.
    t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t140->sval = |REPLACEMENT LENGTH|.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t144) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t143->cval = t144.
    ENDIF.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t146.
    t137 = zcl_lnt_st_combi_module=>seq( i_first = t140 i_second = t143 i_rest = t146 ).
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t154.
    t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t154->sval = |REPLACEMENT LINE|.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t160.
    t151 = zcl_lnt_st_combi_module=>seq( i_first = t154 i_second = t157 i_rest = t160 ).
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t168.
    t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t168->sval = |ALL OCCURRENCES|.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t171.
    t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t171->sval = |ALL OCCURENCES|.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t173.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t176.
    t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t176->sval = |FIRST OCCURENCE|.
    t173->load( ).
    APPEND t176 TO t173->items.
    t173->save( ).
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t179.
    t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t179->sval = |FIRST OCCURRENCE|.
    t173->load( ).
    APPEND t179 TO t173->items.
    t173->save( ).
    t165 = zcl_lnt_st_combi_module=>alt_prio( i_first = t168 i_second = t171 i_rest = t173 ).
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t188.
    t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t188->sval = |IN CHARACTER MODE|.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t191.
    t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t191->sval = |IN BYTE MODE|.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t194.
    t185 = zcl_lnt_st_combi_module=>alt( i_first = t188 i_second = t191 i_rest = t194 ).
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t202.
    t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t202->sval = |WITH|.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t206) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t206 IS BOUND.
      CREATE OBJECT t205.
      t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t205->cval = t206.
    ENDIF.
    DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t208.
    t199 = zcl_lnt_st_combi_module=>seq( i_first = t202 i_second = t205 i_rest = t208 ).
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t216.
    t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t216->sval = |INTO|.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t220) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t220 IS BOUND.
      CREATE OBJECT t219.
      t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t219->cval = t220.
    ENDIF.
    DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t222.
    t213 = zcl_lnt_st_combi_module=>seq( i_first = t216 i_second = t219 i_rest = t222 ).
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t229.
    t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t229->sval = |REPLACE|.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t237 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t235 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t235 IS NOT BOUND.
        TRY.
            t237 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t237 IS BOUND.
          t235 = t237->source( ).
        ENDIF.
        IF t235 IS NOT BOUND.
          CREATE OBJECT t235.
          t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t235->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t244 TYPE REF TO zif_lnt_statement_runnable.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t165 IS BOUND.
      DATA t247 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t245 ?= t165.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t247 ?= t165.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t247 IS BOUND.
          t245 = t247->source( ).
        ENDIF.
        IF t245 IS NOT BOUND.
          CREATE OBJECT t245.
          t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t245->oval = t165.
        ENDIF.
      ENDIF.
    ENDIF.
    t244 = zcl_lnt_st_combi_module=>opt( i_first = t245 ).
    IF t244 IS BOUND.
      DATA t249 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t243 ?= t244.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t243 IS NOT BOUND.
        TRY.
            t249 ?= t244.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t249 IS BOUND.
          t243 = t249->source( ).
        ENDIF.
        IF t243 IS NOT BOUND.
          CREATE OBJECT t243.
          t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t243->oval = t244.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t74 IS BOUND.
      DATA t254 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t252 ?= t74.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t252 IS NOT BOUND.
        TRY.
            t254 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t254 IS BOUND.
          t252 = t254->source( ).
        ENDIF.
        IF t252 IS NOT BOUND.
          CREATE OBJECT t252.
          t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t252->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t257.
    t241 = zcl_lnt_st_combi_module=>seq( i_first = t243 i_second = t252 i_rest = t257 ).
    IF t241 IS BOUND.
      DATA t262 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t240 ?= t241.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t240 IS NOT BOUND.
        TRY.
            t262 ?= t241.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t262 IS BOUND.
          t240 = t262->source( ).
        ENDIF.
        IF t240 IS NOT BOUND.
          CREATE OBJECT t240.
          t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t240->oval = t241.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t265.
    t233 = zcl_lnt_st_combi_module=>per( i_first = t235 i_second = t240 i_rest = t265 ).
    IF t233 IS BOUND.
      DATA t270 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t232 ?= t233.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t232 IS NOT BOUND.
        TRY.
            t270 ?= t233.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t270 IS BOUND.
          t232 = t270->source( ).
        ENDIF.
        IF t232 IS NOT BOUND.
          CREATE OBJECT t232.
          t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t232->oval = t233.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t272.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t280.
    t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t280->sval = |IN|.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t285.
    t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t285->sval = |TABLE|.
    t284 = zcl_lnt_st_combi_module=>opt( i_first = t285 ).
    IF t284 IS BOUND.
      DATA t287 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t283 ?= t284.
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
    DATA(t293) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t293 IS BOUND.
      CREATE OBJECT t292.
      t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t292->cval = t293.
    ENDIF.
    t289->load( ).
    APPEND t292 TO t289->items.
    t289->save( ).
    t278 = zcl_lnt_st_combi_module=>seq( i_first = t280 i_second = t283 i_rest = t289 ).
    IF t278 IS BOUND.
      DATA t298 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t277 ?= t278.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t277 IS NOT BOUND.
        TRY.
            t298 ?= t278.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t298 IS BOUND.
          t277 = t298->source( ).
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
      DATA t300 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t275 ?= t276.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t275 IS NOT BOUND.
        TRY.
            t300 ?= t276.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t300 IS BOUND.
          t275 = t300->source( ).
        ENDIF.
        IF t275 IS NOT BOUND.
          CREATE OBJECT t275.
          t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t275->oval = t276.
        ENDIF.
      ENDIF.
    ENDIF.
    t272->load( ).
    APPEND t275 TO t272->items.
    t272->save( ).
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t199 IS BOUND.
      DATA t310 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t308 ?= t199.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t308 IS NOT BOUND.
        TRY.
            t310 ?= t199.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t310 IS BOUND.
          t308 = t310->source( ).
        ENDIF.
        IF t308 IS NOT BOUND.
          CREATE OBJECT t308.
          t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t308->oval = t199.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t213 IS BOUND.
      DATA t315 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t313 ?= t213.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t313 IS NOT BOUND.
        TRY.
            t315 ?= t213.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t315 IS BOUND.
          t313 = t315->source( ).
        ENDIF.
        IF t313 IS NOT BOUND.
          CREATE OBJECT t313.
          t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t313->oval = t213.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t317.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t95 IS BOUND.
      DATA t322 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t320 ?= t95.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t320 IS NOT BOUND.
        TRY.
            t322 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t322 IS BOUND.
          t320 = t322->source( ).
        ENDIF.
        IF t320 IS NOT BOUND.
          CREATE OBJECT t320.
          t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t320->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    t317->load( ).
    APPEND t320 TO t317->items.
    t317->save( ).
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185 IS BOUND.
      DATA t327 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t325 ?= t185.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t325 IS NOT BOUND.
        TRY.
            t327 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t327 IS BOUND.
          t325 = t327->source( ).
        ENDIF.
        IF t325 IS NOT BOUND.
          CREATE OBJECT t325.
          t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t325->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t317->load( ).
    APPEND t325 TO t317->items.
    t317->save( ).
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t109 IS BOUND.
      DATA t332 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t330 ?= t109.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t330 IS NOT BOUND.
        TRY.
            t332 ?= t109.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t332 IS BOUND.
          t330 = t332->source( ).
        ENDIF.
        IF t330 IS NOT BOUND.
          CREATE OBJECT t330.
          t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t330->oval = t109.
        ENDIF.
      ENDIF.
    ENDIF.
    t317->load( ).
    APPEND t330 TO t317->items.
    t317->save( ).
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t123 IS BOUND.
      DATA t337 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t335 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t335 IS NOT BOUND.
        TRY.
            t337 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t337 IS BOUND.
          t335 = t337->source( ).
        ENDIF.
        IF t335 IS NOT BOUND.
          CREATE OBJECT t335.
          t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t335->oval = t123.
        ENDIF.
      ENDIF.
    ENDIF.
    t317->load( ).
    APPEND t335 TO t317->items.
    t317->save( ).
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t137 IS BOUND.
      DATA t342 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t340 ?= t137.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t340 IS NOT BOUND.
        TRY.
            t342 ?= t137.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t342 IS BOUND.
          t340 = t342->source( ).
        ENDIF.
        IF t340 IS NOT BOUND.
          CREATE OBJECT t340.
          t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t340->oval = t137.
        ENDIF.
      ENDIF.
    ENDIF.
    t317->load( ).
    APPEND t340 TO t317->items.
    t317->save( ).
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t151 IS BOUND.
      DATA t347 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t345 ?= t151.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t345 IS NOT BOUND.
        TRY.
            t347 ?= t151.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t347 IS BOUND.
          t345 = t347->source( ).
        ENDIF.
        IF t345 IS NOT BOUND.
          CREATE OBJECT t345.
          t345->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t345->oval = t151.
        ENDIF.
      ENDIF.
    ENDIF.
    t317->load( ).
    APPEND t345 TO t317->items.
    t317->save( ).
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t352 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t350 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t350 IS NOT BOUND.
        TRY.
            t352 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t352 IS BOUND.
          t350 = t352->source( ).
        ENDIF.
        IF t350 IS NOT BOUND.
          CREATE OBJECT t350.
          t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t350->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t317->load( ).
    APPEND t350 TO t317->items.
    t317->save( ).
    t306 = zcl_lnt_st_combi_module=>per( i_first = t308 i_second = t313 i_rest = t317 ).
    IF t306 IS BOUND.
      DATA t358 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t305 ?= t306.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t305 IS NOT BOUND.
        TRY.
            t358 ?= t306.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t358 IS BOUND.
          t305 = t358->source( ).
        ENDIF.
        IF t305 IS NOT BOUND.
          CREATE OBJECT t305.
          t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t305->oval = t306.
        ENDIF.
      ENDIF.
    ENDIF.
    t304 = zcl_lnt_st_combi_module=>opt( i_first = t305 ).
    IF t304 IS BOUND.
      DATA t360 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t303 ?= t304.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t303 IS NOT BOUND.
        TRY.
            t360 ?= t304.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t360 IS BOUND.
          t303 = t360->source( ).
        ENDIF.
        IF t303 IS NOT BOUND.
          CREATE OBJECT t303.
          t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t303->oval = t304.
        ENDIF.
      ENDIF.
    ENDIF.
    t272->load( ).
    APPEND t303 TO t272->items.
    t272->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t229 i_second = t232 i_rest = t272 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d600_5c4ef0d6a35d.
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
