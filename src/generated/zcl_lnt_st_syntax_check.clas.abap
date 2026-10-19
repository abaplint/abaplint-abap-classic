* TS: src/abap/2_statements/statements/syntax_check.ts:7:1 SyntaxCheck
CLASS zcl_lnt_st_syntax_check DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_syntax_check IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |PROGRAM|.
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
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    t32->sval = |FRAME ENTRY|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    t46->sval = |INCLUDE|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    t60->sval = |TRACE-TABLE|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    CREATE OBJECT t74.
    t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t74->sval = |LINE|.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t77->cval = t78.
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t80.
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t74 i_second = t77 i_rest = t80 ).
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = |WORD|.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t92) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t91->cval = t92.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t94.
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t88 i_second = t91 i_rest = t94 ).
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = |MESSAGE-ID|.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t105->cval = t106.
    ENDIF.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t108.
    t99 = zcl_lnt_st_combi_module=>seq( i_first = t102 i_second = t105 i_rest = t108 ).
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t116.
    t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t116->sval = |MESSAGE|.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t120) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t119->cval = t120.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t122.
    t113 = zcl_lnt_st_combi_module=>seq( i_first = t116 i_second = t119 i_rest = t122 ).
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t130.
    t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t130->sval = |ID|.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t134 IS BOUND.
      CREATE OBJECT t133.
      t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t133->cval = t134.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t135.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t138.
    t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t138->sval = |TABLE|.
    t135->load( ).
    APPEND t138 TO t135->items.
    t135->save( ).
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t142) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t142 IS BOUND.
      CREATE OBJECT t141.
      t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t141->cval = t142.
    ENDIF.
    t135->load( ).
    APPEND t141 TO t135->items.
    t135->save( ).
    t127 = zcl_lnt_st_combi_module=>seq( i_first = t130 i_second = t133 i_rest = t135 ).
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t150.
    t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t150->sval = |REPLACING|.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t154) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t154 IS BOUND.
      CREATE OBJECT t153.
      t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t153->cval = t154.
    ENDIF.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t156.
    t147 = zcl_lnt_st_combi_module=>seq( i_first = t150 i_second = t153 i_rest = t156 ).
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t164.
    t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t164->sval = |DIRECTORY ENTRY|.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t168) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t167->cval = t168.
    ENDIF.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t170.
    t161 = zcl_lnt_st_combi_module=>seq( i_first = t164 i_second = t167 i_rest = t170 ).
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t178.
    t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t178->sval = |SHORTDUMP-ID|.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t182) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t182 IS BOUND.
      CREATE OBJECT t181.
      t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t181->cval = t182.
    ENDIF.
    DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t184.
    t175 = zcl_lnt_st_combi_module=>seq( i_first = t178 i_second = t181 i_rest = t184 ).
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t192.
    t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t192->sval = |FILTER|.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t196) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t195->cval = t196.
    ENDIF.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t198.
    t189 = zcl_lnt_st_combi_module=>seq( i_first = t192 i_second = t195 i_rest = t198 ).
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = |PROGRAM|.
    t207 = zcl_lnt_st_combi_module=>opt_prio( i_first = t208 ).
    IF t207 IS BOUND.
      DATA t210 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t211 TYPE REF TO object.
      t211 = t207.
      TRY.
          t206 ?= t211.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t206 IS NOT BOUND.
        TRY.
            t210 ?= t207.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t210 IS BOUND.
          t206 = t210->source( ).
        ENDIF.
        IF t206 IS NOT BOUND.
          CREATE OBJECT t206.
          t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t206->oval = t207.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t214) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t214 IS BOUND.
      CREATE OBJECT t213.
      t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t213->cval = t214.
    ENDIF.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t215.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t113 IS BOUND.
      DATA t223 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t224 TYPE REF TO object.
      t224 = t113.
      TRY.
          t221 ?= t224.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t221 IS NOT BOUND.
        TRY.
            t223 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t223 IS BOUND.
          t221 = t223->source( ).
        ENDIF.
        IF t221 IS NOT BOUND.
          CREATE OBJECT t221.
          t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t221->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71 IS BOUND.
      DATA t228 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t229 TYPE REF TO object.
      t229 = t71.
      TRY.
          t226 ?= t229.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t226 IS NOT BOUND.
        TRY.
            t228 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t228 IS BOUND.
          t226 = t228->source( ).
        ENDIF.
        IF t226 IS NOT BOUND.
          CREATE OBJECT t226.
          t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t226->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t230 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t230.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t85 IS BOUND.
      DATA t235 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t236 TYPE REF TO object.
      t236 = t85.
      TRY.
          t233 ?= t236.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t233 IS NOT BOUND.
        TRY.
            t235 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t235 IS BOUND.
          t233 = t235->source( ).
        ENDIF.
        IF t233 IS NOT BOUND.
          CREATE OBJECT t233.
          t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t233->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    t230->load( ).
    APPEND t233 TO t230->items.
    t230->save( ).
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t240 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t241 TYPE REF TO object.
      t241 = t15.
      TRY.
          t238 ?= t241.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t238 IS NOT BOUND.
        TRY.
            t240 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t240 IS BOUND.
          t238 = t240->source( ).
        ENDIF.
        IF t238 IS NOT BOUND.
          CREATE OBJECT t238.
          t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t238->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t230->load( ).
    APPEND t238 TO t230->items.
    t230->save( ).
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t245 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t246 TYPE REF TO object.
      t246 = t1.
      TRY.
          t243 ?= t246.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t243 IS NOT BOUND.
        TRY.
            t245 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t245 IS BOUND.
          t243 = t245->source( ).
        ENDIF.
        IF t243 IS NOT BOUND.
          CREATE OBJECT t243.
          t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t243->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t230->load( ).
    APPEND t243 TO t230->items.
    t230->save( ).
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t147 IS BOUND.
      DATA t250 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t251 TYPE REF TO object.
      t251 = t147.
      TRY.
          t248 ?= t251.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t248 IS NOT BOUND.
        TRY.
            t250 ?= t147.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t250 IS BOUND.
          t248 = t250->source( ).
        ENDIF.
        IF t248 IS NOT BOUND.
          CREATE OBJECT t248.
          t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t248->oval = t147.
        ENDIF.
      ENDIF.
    ENDIF.
    t230->load( ).
    APPEND t248 TO t230->items.
    t230->save( ).
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t161 IS BOUND.
      DATA t255 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t256 TYPE REF TO object.
      t256 = t161.
      TRY.
          t253 ?= t256.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t253 IS NOT BOUND.
        TRY.
            t255 ?= t161.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t255 IS BOUND.
          t253 = t255->source( ).
        ENDIF.
        IF t253 IS NOT BOUND.
          CREATE OBJECT t253.
          t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t253->oval = t161.
        ENDIF.
      ENDIF.
    ENDIF.
    t230->load( ).
    APPEND t253 TO t230->items.
    t230->save( ).
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t260 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t261 TYPE REF TO object.
      t261 = t29.
      TRY.
          t258 ?= t261.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t258 IS NOT BOUND.
        TRY.
            t260 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t260 IS BOUND.
          t258 = t260->source( ).
        ENDIF.
        IF t258 IS NOT BOUND.
          CREATE OBJECT t258.
          t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t258->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t230->load( ).
    APPEND t258 TO t230->items.
    t230->save( ).
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t265 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t266 TYPE REF TO object.
      t266 = t43.
      TRY.
          t263 ?= t266.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t263 IS NOT BOUND.
        TRY.
            t265 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS BOUND.
          t263 = t265->source( ).
        ENDIF.
        IF t263 IS NOT BOUND.
          CREATE OBJECT t263.
          t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t263->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t230->load( ).
    APPEND t263 TO t230->items.
    t230->save( ).
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t99 IS BOUND.
      DATA t270 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t271 TYPE REF TO object.
      t271 = t99.
      TRY.
          t268 ?= t271.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t268 IS NOT BOUND.
        TRY.
            t270 ?= t99.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t270 IS BOUND.
          t268 = t270->source( ).
        ENDIF.
        IF t268 IS NOT BOUND.
          CREATE OBJECT t268.
          t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t268->oval = t99.
        ENDIF.
      ENDIF.
    ENDIF.
    t230->load( ).
    APPEND t268 TO t230->items.
    t230->save( ).
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t275 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t276 TYPE REF TO object.
      t276 = t57.
      TRY.
          t273 ?= t276.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t273 IS NOT BOUND.
        TRY.
            t275 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t275 IS BOUND.
          t273 = t275->source( ).
        ENDIF.
        IF t273 IS NOT BOUND.
          CREATE OBJECT t273.
          t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t273->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t230->load( ).
    APPEND t273 TO t230->items.
    t230->save( ).
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t175 IS BOUND.
      DATA t280 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t281 TYPE REF TO object.
      t281 = t175.
      TRY.
          t278 ?= t281.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t278 IS NOT BOUND.
        TRY.
            t280 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t280 IS BOUND.
          t278 = t280->source( ).
        ENDIF.
        IF t278 IS NOT BOUND.
          CREATE OBJECT t278.
          t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t278->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    t230->load( ).
    APPEND t278 TO t230->items.
    t230->save( ).
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t189 IS BOUND.
      DATA t285 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t286 TYPE REF TO object.
      t286 = t189.
      TRY.
          t283 ?= t286.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t283 IS NOT BOUND.
        TRY.
            t285 ?= t189.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t285 IS BOUND.
          t283 = t285->source( ).
        ENDIF.
        IF t283 IS NOT BOUND.
          CREATE OBJECT t283.
          t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t283->oval = t189.
        ENDIF.
      ENDIF.
    ENDIF.
    t230->load( ).
    APPEND t283 TO t230->items.
    t230->save( ).
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t289 TYPE REF TO zif_lnt_statement_runnable.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t127 IS BOUND.
      DATA t292 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t293 TYPE REF TO object.
      t293 = t127.
      TRY.
          t290 ?= t293.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t290 IS NOT BOUND.
        TRY.
            t292 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t292 IS BOUND.
          t290 = t292->source( ).
        ENDIF.
        IF t290 IS NOT BOUND.
          CREATE OBJECT t290.
          t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t290->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t289 = zcl_lnt_st_combi_module=>plus( i_first = t290 ).
    IF t289 IS BOUND.
      DATA t294 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t295 TYPE REF TO object.
      t295 = t289.
      TRY.
          t288 ?= t295.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t288 IS NOT BOUND.
        TRY.
            t294 ?= t289.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t294 IS BOUND.
          t288 = t294->source( ).
        ENDIF.
        IF t288 IS NOT BOUND.
          CREATE OBJECT t288.
          t288->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t288->oval = t289.
        ENDIF.
      ENDIF.
    ENDIF.
    t230->load( ).
    APPEND t288 TO t230->items.
    t230->save( ).
    t219 = zcl_lnt_st_combi_module=>per( i_first = t221 i_second = t226 i_rest = t230 ).
    IF t219 IS BOUND.
      DATA t300 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t301 TYPE REF TO object.
      t301 = t219.
      TRY.
          t218 ?= t301.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t218 IS NOT BOUND.
        TRY.
            t300 ?= t219.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t300 IS BOUND.
          t218 = t300->source( ).
        ENDIF.
        IF t218 IS NOT BOUND.
          CREATE OBJECT t218.
          t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t218->oval = t219.
        ENDIF.
      ENDIF.
    ENDIF.
    t215->load( ).
    APPEND t218 TO t215->items.
    t215->save( ).
    t203 = zcl_lnt_st_combi_module=>seq( i_first = t206 i_second = t213 i_rest = t215 ).
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t309.
    t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t309->sval = |DYNPRO|.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t313) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t313 IS BOUND.
      CREATE OBJECT t312.
      t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t312->cval = t313.
    ENDIF.
    DATA t314 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t314.
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t318) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t318 IS BOUND.
      CREATE OBJECT t317.
      t317->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t317->cval = t318.
    ENDIF.
    t314->load( ).
    APPEND t317 TO t314->items.
    t314->save( ).
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t321) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t321 IS BOUND.
      CREATE OBJECT t320.
      t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t320->cval = t321.
    ENDIF.
    t314->load( ).
    APPEND t320 TO t314->items.
    t314->save( ).
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t324) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t324 IS BOUND.
      CREATE OBJECT t323.
      t323->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t323->cval = t324.
    ENDIF.
    t314->load( ).
    APPEND t323 TO t314->items.
    t314->save( ).
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t327 TYPE REF TO zif_lnt_statement_runnable.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t113 IS BOUND.
      DATA t331 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t332 TYPE REF TO object.
      t332 = t113.
      TRY.
          t329 ?= t332.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t329 IS NOT BOUND.
        TRY.
            t331 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t331 IS BOUND.
          t329 = t331->source( ).
        ENDIF.
        IF t329 IS NOT BOUND.
          CREATE OBJECT t329.
          t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t329->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71 IS BOUND.
      DATA t336 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t337 TYPE REF TO object.
      t337 = t71.
      TRY.
          t334 ?= t337.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t334 IS NOT BOUND.
        TRY.
            t336 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t336 IS BOUND.
          t334 = t336->source( ).
        ENDIF.
        IF t334 IS NOT BOUND.
          CREATE OBJECT t334.
          t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t334->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t338 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t338.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t85 IS BOUND.
      DATA t343 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t344 TYPE REF TO object.
      t344 = t85.
      TRY.
          t341 ?= t344.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t341 IS NOT BOUND.
        TRY.
            t343 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t343 IS BOUND.
          t341 = t343->source( ).
        ENDIF.
        IF t341 IS NOT BOUND.
          CREATE OBJECT t341.
          t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t341->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    t338->load( ).
    APPEND t341 TO t338->items.
    t338->save( ).
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t348 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t349 TYPE REF TO object.
      t349 = t15.
      TRY.
          t346 ?= t349.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t346 IS NOT BOUND.
        TRY.
            t348 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t348 IS BOUND.
          t346 = t348->source( ).
        ENDIF.
        IF t346 IS NOT BOUND.
          CREATE OBJECT t346.
          t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t346->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t338->load( ).
    APPEND t346 TO t338->items.
    t338->save( ).
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t99 IS BOUND.
      DATA t353 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t354 TYPE REF TO object.
      t354 = t99.
      TRY.
          t351 ?= t354.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t351 IS NOT BOUND.
        TRY.
            t353 ?= t99.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t353 IS BOUND.
          t351 = t353->source( ).
        ENDIF.
        IF t351 IS NOT BOUND.
          CREATE OBJECT t351.
          t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t351->oval = t99.
        ENDIF.
      ENDIF.
    ENDIF.
    t338->load( ).
    APPEND t351 TO t338->items.
    t338->save( ).
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t358 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t359 TYPE REF TO object.
      t359 = t57.
      TRY.
          t356 ?= t359.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t356 IS NOT BOUND.
        TRY.
            t358 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t358 IS BOUND.
          t356 = t358->source( ).
        ENDIF.
        IF t356 IS NOT BOUND.
          CREATE OBJECT t356.
          t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t356->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t338->load( ).
    APPEND t356 TO t338->items.
    t338->save( ).
    t327 = zcl_lnt_st_combi_module=>per( i_first = t329 i_second = t334 i_rest = t338 ).
    IF t327 IS BOUND.
      DATA t364 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t365 TYPE REF TO object.
      t365 = t327.
      TRY.
          t326 ?= t365.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t326 IS NOT BOUND.
        TRY.
            t364 ?= t327.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t364 IS BOUND.
          t326 = t364->source( ).
        ENDIF.
        IF t326 IS NOT BOUND.
          CREATE OBJECT t326.
          t326->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t326->oval = t327.
        ENDIF.
      ENDIF.
    ENDIF.
    t314->load( ).
    APPEND t326 TO t314->items.
    t314->save( ).
    t306 = zcl_lnt_st_combi_module=>seq( i_first = t309 i_second = t312 i_rest = t314 ).
    DATA t370 TYPE REF TO zif_lnt_statement_runnable.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t373.
    t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t373->sval = |SYNTAX-CHECK FOR|.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t377 TYPE REF TO zif_lnt_statement_runnable.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t203 IS BOUND.
      DATA t381 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t382 TYPE REF TO object.
      t382 = t203.
      TRY.
          t379 ?= t382.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t379 IS NOT BOUND.
        TRY.
            t381 ?= t203.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t381 IS BOUND.
          t379 = t381->source( ).
        ENDIF.
        IF t379 IS NOT BOUND.
          CREATE OBJECT t379.
          t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t379->oval = t203.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t306 IS BOUND.
      DATA t386 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t387 TYPE REF TO object.
      t387 = t306.
      TRY.
          t384 ?= t387.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t384 IS NOT BOUND.
        TRY.
            t386 ?= t306.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t386 IS BOUND.
          t384 = t386->source( ).
        ENDIF.
        IF t384 IS NOT BOUND.
          CREATE OBJECT t384.
          t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t384->oval = t306.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t389 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t389.
    t377 = zcl_lnt_st_combi_module=>alt( i_first = t379 i_second = t384 i_rest = t389 ).
    IF t377 IS BOUND.
      DATA t394 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t395 TYPE REF TO object.
      t395 = t377.
      TRY.
          t376 ?= t395.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t376 IS NOT BOUND.
        TRY.
            t394 ?= t377.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t394 IS BOUND.
          t376 = t394->source( ).
        ENDIF.
        IF t376 IS NOT BOUND.
          CREATE OBJECT t376.
          t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t376->oval = t377.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t397 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t397.
    t370 = zcl_lnt_st_combi_module=>seq( i_first = t373 i_second = t376 i_rest = t397 ).
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t370 IS BOUND.
      DATA t406 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t407 TYPE REF TO object.
      t407 = t370.
      TRY.
          t404 ?= t407.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t404 IS NOT BOUND.
        TRY.
            t406 ?= t370.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t406 IS BOUND.
          t404 = t406->source( ).
        ENDIF.
        IF t404 IS NOT BOUND.
          CREATE OBJECT t404.
          t404->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t404->oval = t370.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t404 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d652_19a00458d095.
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
