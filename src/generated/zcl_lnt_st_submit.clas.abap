* TS: src/abap/2_statements/statements/submit.ts:7:1 Submit
CLASS zcl_lnt_st_submit DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_submit IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |SIGN|.
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
    t18->sval = |=|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |EQ|.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = |IN|.
    t23->load( ).
    APPEND t26 TO t23->items.
    t23->save( ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = |NE|.
    t23->load( ).
    APPEND t29 TO t23->items.
    t23->save( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |CP|.
    t23->load( ).
    APPEND t32 TO t23->items.
    t23->save( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = |GE|.
    t23->load( ).
    APPEND t35 TO t23->items.
    t23->save( ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = |LE|.
    t23->load( ).
    APPEND t38 TO t23->items.
    t23->save( ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = |INCL|.
    t23->load( ).
    APPEND t41 TO t23->items.
    t23->save( ).
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t44.
    t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t44->sval = |GT|.
    t23->load( ).
    APPEND t44 TO t23->items.
    t23->save( ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = |LT|.
    t23->load( ).
    APPEND t47 TO t23->items.
    t23->save( ).
    t15 = zcl_lnt_st_combi_module=>alt( i_first = t18 i_second = t21 i_rest = t23 ).
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t56 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t58 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t56 = t58->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t64.
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t56 i_second = t61 i_rest = t64 ).
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t72.
    t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t72->sval = |BETWEEN|.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t75->cval = t76.
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t77.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t80.
    t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t80->sval = |AND|.
    t77->load( ).
    APPEND t80 TO t77->items.
    t77->save( ).
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t84) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t83->cval = t84.
    ENDIF.
    t77->load( ).
    APPEND t83 TO t77->items.
    t77->save( ).
    t69 = zcl_lnt_st_combi_module=>seq( i_first = t72 i_second = t75 i_rest = t77 ).
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t92.
    t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t92->sval = |WITH SELECTION-TABLE|.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = |WITH|.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t109->cval = t110.
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t111.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t53 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t117 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t117 IS NOT BOUND.
        TRY.
            t119 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t117 = t119->source( ).
        ENDIF.
        IF t117 IS NOT BOUND.
          CREATE OBJECT t117.
          t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t117->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t69 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t122 ?= t69.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t122 IS NOT BOUND.
        TRY.
            t124 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t122 = t124->source( ).
        ENDIF.
        IF t122 IS NOT BOUND.
          CREATE OBJECT t122.
          t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t122->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t127.
    t115 = zcl_lnt_st_combi_module=>alt( i_first = t117 i_second = t122 i_rest = t127 ).
    IF t115 IS BOUND.
      DATA t132 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t114 ?= t115.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t132 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t132 IS BOUND.
          t114 = t132->source( ).
        ENDIF.
        IF t114 IS NOT BOUND.
          CREATE OBJECT t114.
          t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t114->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    t111->load( ).
    APPEND t114 TO t111->items.
    t111->save( ).
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t139 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t137 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t139 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t139 IS BOUND.
          t137 = t139->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t136 = zcl_lnt_st_combi_module=>opt_prio( i_first = t137 ).
    IF t136 IS BOUND.
      DATA t141 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t135 ?= t136.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t135 IS NOT BOUND.
        TRY.
            t141 ?= t136.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t141 IS BOUND.
          t135 = t141->source( ).
        ENDIF.
        IF t135 IS NOT BOUND.
          CREATE OBJECT t135.
          t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t135->oval = t136.
        ENDIF.
      ENDIF.
    ENDIF.
    t111->load( ).
    APPEND t135 TO t111->items.
    t111->save( ).
    t103 = zcl_lnt_st_combi_module=>seq( i_first = t106 i_second = t109 i_rest = t111 ).
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t151) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
    IF t151 IS BOUND.
      CREATE OBJECT t150.
      t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t150->cval = t151.
    ENDIF.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t154) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t154 IS BOUND.
      CREATE OBJECT t153.
      t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t153->cval = t154.
    ENDIF.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t156.
    t147 = zcl_lnt_st_combi_module=>alt_prio( i_first = t150 i_second = t153 i_rest = t156 ).
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t164.
    t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t164->sval = |VIA JOB|.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t168) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t167->cval = t168.
    ENDIF.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t169.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t172.
    t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t172->sval = |NUMBER|.
    t169->load( ).
    APPEND t172 TO t169->items.
    t169->save( ).
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t176) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t176 IS BOUND.
      CREATE OBJECT t175.
      t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t175->cval = t176.
    ENDIF.
    t169->load( ).
    APPEND t175 TO t169->items.
    t169->save( ).
    t161 = zcl_lnt_st_combi_module=>seq( i_first = t164 i_second = t167 i_rest = t169 ).
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    t181 = zcl_lnt_st_combi_module=>str( i_s = |EXPORTING LIST TO MEMORY| ).
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t187.
    t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t187->sval = |SPOOL PARAMETERS|.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t191) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t191 IS BOUND.
      CREATE OBJECT t190.
      t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t190->cval = t191.
    ENDIF.
    DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t193.
    t184 = zcl_lnt_st_combi_module=>seq( i_first = t187 i_second = t190 i_rest = t193 ).
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t201.
    t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t201->sval = |ARCHIVE PARAMETERS|.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t205) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t205 IS BOUND.
      CREATE OBJECT t204.
      t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t204->cval = t205.
    ENDIF.
    DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t207.
    t198 = zcl_lnt_st_combi_module=>seq( i_first = t201 i_second = t204 i_rest = t207 ).
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t215.
    t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t215->sval = |ARCHIVE MODE|.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t219) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t219 IS BOUND.
      CREATE OBJECT t218.
      t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t218->cval = t219.
    ENDIF.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t221.
    t212 = zcl_lnt_st_combi_module=>seq( i_first = t215 i_second = t218 i_rest = t221 ).
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t229.
    t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t229->sval = |RECEIVER|.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t233) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t233 IS BOUND.
      CREATE OBJECT t232.
      t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t232->cval = t233.
    ENDIF.
    DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t235.
    t226 = zcl_lnt_st_combi_module=>seq( i_first = t229 i_second = t232 i_rest = t235 ).
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t243.
    t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t243->sval = |LINE-SIZE|.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t247) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t247 IS BOUND.
      CREATE OBJECT t246.
      t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t246->cval = t247.
    ENDIF.
    DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t249.
    t240 = zcl_lnt_st_combi_module=>seq( i_first = t243 i_second = t246 i_rest = t249 ).
    DATA t254 TYPE REF TO zif_lnt_statement_runnable.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t257.
    t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t257->sval = |LINE-COUNT|.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t261) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t261 IS BOUND.
      CREATE OBJECT t260.
      t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t260->cval = t261.
    ENDIF.
    DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t263.
    t254 = zcl_lnt_st_combi_module=>seq( i_first = t257 i_second = t260 i_rest = t263 ).
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t271.
    t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t271->sval = |USER|.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t275) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t275 IS BOUND.
      CREATE OBJECT t274.
      t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t274->cval = t275.
    ENDIF.
    DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t277.
    t268 = zcl_lnt_st_combi_module=>seq( i_first = t271 i_second = t274 i_rest = t277 ).
    DATA t282 TYPE REF TO zif_lnt_statement_runnable.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t285.
    t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t285->sval = |USING SELECTION-SET|.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t289) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t289 IS BOUND.
      CREATE OBJECT t288.
      t288->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t288->cval = t289.
    ENDIF.
    DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t291.
    t282 = zcl_lnt_st_combi_module=>seq( i_first = t285 i_second = t288 i_rest = t291 ).
    DATA t296 TYPE REF TO zif_lnt_statement_runnable.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t299.
    t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t299->sval = |USING SELECTION-SETS OF PROGRAM|.
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t303) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t303 IS BOUND.
      CREATE OBJECT t302.
      t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t302->cval = t303.
    ENDIF.
    DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t305.
    t296 = zcl_lnt_st_combi_module=>seq( i_first = t299 i_second = t302 i_rest = t305 ).
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t313.
    t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t313->sval = |USING SELECTION-SCREEN|.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t317) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t317 IS BOUND.
      CREATE OBJECT t316.
      t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t316->cval = t317.
    ENDIF.
    DATA t319 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t319.
    t310 = zcl_lnt_st_combi_module=>seq( i_first = t313 i_second = t316 i_rest = t319 ).
    DATA t324 TYPE REF TO zif_lnt_statement_runnable.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t327.
    t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t327->sval = |WITH FREE SELECTIONS|.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t331) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t331 IS BOUND.
      CREATE OBJECT t330.
      t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t330->cval = t331.
    ENDIF.
    DATA t333 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t333.
    t324 = zcl_lnt_st_combi_module=>seq( i_first = t327 i_second = t330 i_rest = t333 ).
    DATA t338 TYPE REF TO zif_lnt_statement_runnable.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t341.
    t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t341->sval = |NEW LIST IDENTIFICATION|.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t345) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t345 IS BOUND.
      CREATE OBJECT t344.
      t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t344->cval = t345.
    ENDIF.
    DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t347.
    t338 = zcl_lnt_st_combi_module=>seq( i_first = t341 i_second = t344 i_rest = t347 ).
    DATA t352 TYPE REF TO zif_lnt_statement_runnable.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t355.
    t355->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t355->sval = |LAYOUT|.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t359) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t359 IS BOUND.
      CREATE OBJECT t358.
      t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t358->cval = t359.
    ENDIF.
    DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t361.
    t352 = zcl_lnt_st_combi_module=>seq( i_first = t355 i_second = t358 i_rest = t361 ).
    DATA t366 TYPE REF TO zif_lnt_statement_runnable.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t369.
    t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t369->sval = |SAP COVER PAGE|.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t373) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t373 IS BOUND.
      CREATE OBJECT t372.
      t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t372->cval = t373.
    ENDIF.
    DATA t375 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t375.
    t366 = zcl_lnt_st_combi_module=>seq( i_first = t369 i_second = t372 i_rest = t375 ).
    DATA t380 TYPE REF TO zif_lnt_statement_runnable.
    DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t383.
    t383->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t383->sval = |COPIES|.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t387) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t387 IS BOUND.
      CREATE OBJECT t386.
      t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t386->cval = t387.
    ENDIF.
    DATA t389 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t389.
    t380 = zcl_lnt_st_combi_module=>seq( i_first = t383 i_second = t386 i_rest = t389 ).
    DATA t394 TYPE REF TO zif_lnt_statement_runnable.
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t397.
    t397->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t397->sval = |DATASET EXPIRATION|.
    DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t401) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t401 IS BOUND.
      CREATE OBJECT t400.
      t400->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t400->cval = t401.
    ENDIF.
    DATA t403 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t403.
    t394 = zcl_lnt_st_combi_module=>seq( i_first = t397 i_second = t400 i_rest = t403 ).
    DATA t408 TYPE REF TO zif_lnt_statement_runnable.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t411.
    t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t411->sval = |COVER TEXT|.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t415) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t415 IS BOUND.
      CREATE OBJECT t414.
      t414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t414->cval = t415.
    ENDIF.
    DATA t417 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t417.
    t408 = zcl_lnt_st_combi_module=>seq( i_first = t411 i_second = t414 i_rest = t417 ).
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t425.
    t425->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t425->sval = |LIST NAME|.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t429) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t429 IS BOUND.
      CREATE OBJECT t428.
      t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t428->cval = t429.
    ENDIF.
    DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t431.
    t422 = zcl_lnt_st_combi_module=>seq( i_first = t425 i_second = t428 i_rest = t431 ).
    DATA t436 TYPE REF TO zif_lnt_statement_runnable.
    DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t439.
    t439->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t439->sval = |KEEP IN SPOOL|.
    DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t443) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t443 IS BOUND.
      CREATE OBJECT t442.
      t442->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t442->cval = t443.
    ENDIF.
    DATA t445 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t445.
    t436 = zcl_lnt_st_combi_module=>seq( i_first = t439 i_second = t442 i_rest = t445 ).
    DATA t450 TYPE REF TO zif_lnt_statement_runnable.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t453.
    t453->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t453->sval = |IMMEDIATELY|.
    DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t457) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t457 IS BOUND.
      CREATE OBJECT t456.
      t456->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t456->cval = t457.
    ENDIF.
    DATA t459 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t459.
    t450 = zcl_lnt_st_combi_module=>seq( i_first = t453 i_second = t456 i_rest = t459 ).
    DATA t464 TYPE REF TO zif_lnt_statement_runnable.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t467.
    t467->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t467->sval = |DESTINATION|.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t471) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t471 IS BOUND.
      CREATE OBJECT t470.
      t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t470->cval = t471.
    ENDIF.
    DATA t473 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t473.
    t464 = zcl_lnt_st_combi_module=>seq( i_first = t467 i_second = t470 i_rest = t473 ).
    DATA t478 TYPE REF TO zif_lnt_statement_runnable.
    DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t481.
    t481->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t481->sval = |LANGUAGE|.
    DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t485) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t485 IS BOUND.
      CREATE OBJECT t484.
      t484->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t484->cval = t485.
    ENDIF.
    DATA t487 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t487.
    t478 = zcl_lnt_st_combi_module=>seq( i_first = t481 i_second = t484 i_rest = t487 ).
    DATA t492 TYPE REF TO zif_lnt_statement_runnable.
    DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t496 TYPE REF TO zif_lnt_statement_runnable.
    DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t103 IS BOUND.
      DATA t499 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t497 ?= t103.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t497 IS NOT BOUND.
        TRY.
            t499 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t499 IS BOUND.
          t497 = t499->source( ).
        ENDIF.
        IF t497 IS NOT BOUND.
          CREATE OBJECT t497.
          t497->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t497->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    t496 = zcl_lnt_st_combi_module=>plus_prio( i_first = t497 ).
    IF t496 IS BOUND.
      DATA t501 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t495 ?= t496.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t495 IS NOT BOUND.
        TRY.
            t501 ?= t496.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t501 IS BOUND.
          t495 = t501->source( ).
        ENDIF.
        IF t495 IS NOT BOUND.
          CREATE OBJECT t495.
          t495->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t495->oval = t496.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89 IS BOUND.
      DATA t506 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t504 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t504 IS NOT BOUND.
        TRY.
            t506 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t506 IS BOUND.
          t504 = t506->source( ).
        ENDIF.
        IF t504 IS NOT BOUND.
          CREATE OBJECT t504.
          t504->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t504->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t508 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t508.
    DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t512 TYPE REF TO zif_lnt_statement_runnable.
    DATA t513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t103 IS BOUND.
      DATA t515 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t513 ?= t103.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t513 IS NOT BOUND.
        TRY.
            t515 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t515 IS BOUND.
          t513 = t515->source( ).
        ENDIF.
        IF t513 IS NOT BOUND.
          CREATE OBJECT t513.
          t513->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t513->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    t512 = zcl_lnt_st_combi_module=>plus_prio( i_first = t513 ).
    IF t512 IS BOUND.
      DATA t517 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t511 ?= t512.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t511 IS NOT BOUND.
        TRY.
            t517 ?= t512.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t517 IS BOUND.
          t511 = t517->source( ).
        ENDIF.
        IF t511 IS NOT BOUND.
          CREATE OBJECT t511.
          t511->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t511->oval = t512.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t511 TO t508->items.
    t508->save( ).
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t521 TYPE REF TO zif_lnt_statement_runnable.
    DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t103 IS BOUND.
      DATA t524 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t522 ?= t103.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t522 IS NOT BOUND.
        TRY.
            t524 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t524 IS BOUND.
          t522 = t524->source( ).
        ENDIF.
        IF t522 IS NOT BOUND.
          CREATE OBJECT t522.
          t522->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t522->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    t521 = zcl_lnt_st_combi_module=>plus_prio( i_first = t522 ).
    IF t521 IS BOUND.
      DATA t526 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t520 ?= t521.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t520 IS NOT BOUND.
        TRY.
            t526 ?= t521.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t526 IS BOUND.
          t520 = t526->source( ).
        ENDIF.
        IF t520 IS NOT BOUND.
          CREATE OBJECT t520.
          t520->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t520->oval = t521.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t520 TO t508->items.
    t508->save( ).
    DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t184 IS BOUND.
      DATA t531 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t529 ?= t184.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t529 IS NOT BOUND.
        TRY.
            t531 ?= t184.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t531 IS BOUND.
          t529 = t531->source( ).
        ENDIF.
        IF t529 IS NOT BOUND.
          CREATE OBJECT t529.
          t529->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t529->oval = t184.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t529 TO t508->items.
    t508->save( ).
    DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t240 IS BOUND.
      DATA t536 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t534 ?= t240.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t534 IS NOT BOUND.
        TRY.
            t536 ?= t240.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t536 IS BOUND.
          t534 = t536->source( ).
        ENDIF.
        IF t534 IS NOT BOUND.
          CREATE OBJECT t534.
          t534->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t534->oval = t240.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t534 TO t508->items.
    t508->save( ).
    DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t254 IS BOUND.
      DATA t541 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t539 ?= t254.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t539 IS NOT BOUND.
        TRY.
            t541 ?= t254.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t541 IS BOUND.
          t539 = t541->source( ).
        ENDIF.
        IF t539 IS NOT BOUND.
          CREATE OBJECT t539.
          t539->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t539->oval = t254.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t539 TO t508->items.
    t508->save( ).
    DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t198 IS BOUND.
      DATA t546 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t544 ?= t198.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t544 IS NOT BOUND.
        TRY.
            t546 ?= t198.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t546 IS BOUND.
          t544 = t546->source( ).
        ENDIF.
        IF t544 IS NOT BOUND.
          CREATE OBJECT t544.
          t544->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t544->oval = t198.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t544 TO t508->items.
    t508->save( ).
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t212 IS BOUND.
      DATA t551 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t549 ?= t212.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t549 IS NOT BOUND.
        TRY.
            t551 ?= t212.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t551 IS BOUND.
          t549 = t551->source( ).
        ENDIF.
        IF t549 IS NOT BOUND.
          CREATE OBJECT t549.
          t549->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t549->oval = t212.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t549 TO t508->items.
    t508->save( ).
    DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t226 IS BOUND.
      DATA t556 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t554 ?= t226.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t554 IS NOT BOUND.
        TRY.
            t556 ?= t226.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t556 IS BOUND.
          t554 = t556->source( ).
        ENDIF.
        IF t554 IS NOT BOUND.
          CREATE OBJECT t554.
          t554->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t554->oval = t226.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t554 TO t508->items.
    t508->save( ).
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t268 IS BOUND.
      DATA t561 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t559 ?= t268.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t559 IS NOT BOUND.
        TRY.
            t561 ?= t268.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t561 IS BOUND.
          t559 = t561->source( ).
        ENDIF.
        IF t559 IS NOT BOUND.
          CREATE OBJECT t559.
          t559->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t559->oval = t268.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t559 TO t508->items.
    t508->save( ).
    DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t282 IS BOUND.
      DATA t566 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t564 ?= t282.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t564 IS NOT BOUND.
        TRY.
            t566 ?= t282.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t566 IS BOUND.
          t564 = t566->source( ).
        ENDIF.
        IF t564 IS NOT BOUND.
          CREATE OBJECT t564.
          t564->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t564->oval = t282.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t564 TO t508->items.
    t508->save( ).
    DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t296 IS BOUND.
      DATA t571 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t569 ?= t296.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t569 IS NOT BOUND.
        TRY.
            t571 ?= t296.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t571 IS BOUND.
          t569 = t571->source( ).
        ENDIF.
        IF t569 IS NOT BOUND.
          CREATE OBJECT t569.
          t569->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t569->oval = t296.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t569 TO t508->items.
    t508->save( ).
    DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t436 IS BOUND.
      DATA t576 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t574 ?= t436.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t574 IS NOT BOUND.
        TRY.
            t576 ?= t436.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t576 IS BOUND.
          t574 = t576->source( ).
        ENDIF.
        IF t574 IS NOT BOUND.
          CREATE OBJECT t574.
          t574->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t574->oval = t436.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t574 TO t508->items.
    t508->save( ).
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t366 IS BOUND.
      DATA t581 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t579 ?= t366.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t579 IS NOT BOUND.
        TRY.
            t581 ?= t366.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t581 IS BOUND.
          t579 = t581->source( ).
        ENDIF.
        IF t579 IS NOT BOUND.
          CREATE OBJECT t579.
          t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t579->oval = t366.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t579 TO t508->items.
    t508->save( ).
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t450 IS BOUND.
      DATA t586 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t584 ?= t450.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t584 IS NOT BOUND.
        TRY.
            t586 ?= t450.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t586 IS BOUND.
          t584 = t586->source( ).
        ENDIF.
        IF t584 IS NOT BOUND.
          CREATE OBJECT t584.
          t584->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t584->oval = t450.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t584 TO t508->items.
    t508->save( ).
    DATA t589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t352 IS BOUND.
      DATA t591 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t589 ?= t352.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t589 IS NOT BOUND.
        TRY.
            t591 ?= t352.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t591 IS BOUND.
          t589 = t591->source( ).
        ENDIF.
        IF t589 IS NOT BOUND.
          CREATE OBJECT t589.
          t589->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t589->oval = t352.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t589 TO t508->items.
    t508->save( ).
    DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t464 IS BOUND.
      DATA t596 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t594 ?= t464.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t594 IS NOT BOUND.
        TRY.
            t596 ?= t464.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t596 IS BOUND.
          t594 = t596->source( ).
        ENDIF.
        IF t594 IS NOT BOUND.
          CREATE OBJECT t594.
          t594->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t594->oval = t464.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t594 TO t508->items.
    t508->save( ).
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t408 IS BOUND.
      DATA t601 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t599 ?= t408.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t599 IS NOT BOUND.
        TRY.
            t601 ?= t408.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t601 IS BOUND.
          t599 = t601->source( ).
        ENDIF.
        IF t599 IS NOT BOUND.
          CREATE OBJECT t599.
          t599->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t599->oval = t408.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t599 TO t508->items.
    t508->save( ).
    DATA t604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t422 IS BOUND.
      DATA t606 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t604 ?= t422.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t604 IS NOT BOUND.
        TRY.
            t606 ?= t422.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t606 IS BOUND.
          t604 = t606->source( ).
        ENDIF.
        IF t604 IS NOT BOUND.
          CREATE OBJECT t604.
          t604->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t604->oval = t422.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t604 TO t508->items.
    t508->save( ).
    DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t478 IS BOUND.
      DATA t611 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t609 ?= t478.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t609 IS NOT BOUND.
        TRY.
            t611 ?= t478.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t611 IS BOUND.
          t609 = t611->source( ).
        ENDIF.
        IF t609 IS NOT BOUND.
          CREATE OBJECT t609.
          t609->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t609->oval = t478.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t609 TO t508->items.
    t508->save( ).
    DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t324 IS BOUND.
      DATA t616 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t614 ?= t324.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t614 IS NOT BOUND.
        TRY.
            t616 ?= t324.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t616 IS BOUND.
          t614 = t616->source( ).
        ENDIF.
        IF t614 IS NOT BOUND.
          CREATE OBJECT t614.
          t614->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t614->oval = t324.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t614 TO t508->items.
    t508->save( ).
    DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t338 IS BOUND.
      DATA t621 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t619 ?= t338.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t619 IS NOT BOUND.
        TRY.
            t621 ?= t338.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t621 IS BOUND.
          t619 = t621->source( ).
        ENDIF.
        IF t619 IS NOT BOUND.
          CREATE OBJECT t619.
          t619->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t619->oval = t338.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t619 TO t508->items.
    t508->save( ).
    DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t310 IS BOUND.
      DATA t626 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t624 ?= t310.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t624 IS NOT BOUND.
        TRY.
            t626 ?= t310.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t626 IS BOUND.
          t624 = t626->source( ).
        ENDIF.
        IF t624 IS NOT BOUND.
          CREATE OBJECT t624.
          t624->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t624->oval = t310.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t624 TO t508->items.
    t508->save( ).
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t380 IS BOUND.
      DATA t631 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t629 ?= t380.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t629 IS NOT BOUND.
        TRY.
            t631 ?= t380.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t631 IS BOUND.
          t629 = t631->source( ).
        ENDIF.
        IF t629 IS NOT BOUND.
          CREATE OBJECT t629.
          t629->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t629->oval = t380.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t629 TO t508->items.
    t508->save( ).
    DATA t634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t394 IS BOUND.
      DATA t636 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t634 ?= t394.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t634 IS NOT BOUND.
        TRY.
            t636 ?= t394.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t636 IS BOUND.
          t634 = t636->source( ).
        ENDIF.
        IF t634 IS NOT BOUND.
          CREATE OBJECT t634.
          t634->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t634->oval = t394.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t634 TO t508->items.
    t508->save( ).
    DATA t639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t639.
    t639->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t639->sval = |TO SAP-SPOOL|.
    t508->load( ).
    APPEND t639 TO t508->items.
    t508->save( ).
    DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t642.
    t642->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t642->sval = |WITHOUT SPOOL DYNPRO|.
    t508->load( ).
    APPEND t642 TO t508->items.
    t508->save( ).
    DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t645.
    t645->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t645->sval = |VIA SELECTION-SCREEN|.
    t508->load( ).
    APPEND t645 TO t508->items.
    t508->save( ).
    DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t181 IS BOUND.
      DATA t650 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t648 ?= t181.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t648 IS NOT BOUND.
        TRY.
            t650 ?= t181.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t650 IS BOUND.
          t648 = t650->source( ).
        ENDIF.
        IF t648 IS NOT BOUND.
          CREATE OBJECT t648.
          t648->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t648->oval = t181.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t648 TO t508->items.
    t508->save( ).
    DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t654) = zlnt_runtime_desc_78196487750d=>zlnt_member_d90_ea4359cbebf3c6.
    IF t654 IS BOUND.
      CREATE OBJECT t653.
      t653->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t653->cval = t654.
    ENDIF.
    t508->load( ).
    APPEND t653 TO t508->items.
    t508->save( ).
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t161 IS BOUND.
      DATA t658 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t656 ?= t161.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t656 IS NOT BOUND.
        TRY.
            t658 ?= t161.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t658 IS BOUND.
          t656 = t658->source( ).
        ENDIF.
        IF t656 IS NOT BOUND.
          CREATE OBJECT t656.
          t656->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t656->oval = t161.
        ENDIF.
      ENDIF.
    ENDIF.
    t508->load( ).
    APPEND t656 TO t508->items.
    t508->save( ).
    t492 = zcl_lnt_st_combi_module=>per( i_first = t495 i_second = t504 i_rest = t508 ).
    DATA t664 TYPE REF TO zif_lnt_statement_runnable.
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t667.
    t667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t667->sval = |SUBMIT|.
    DATA t670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t147 IS BOUND.
      DATA t672 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t670 ?= t147.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t670 IS NOT BOUND.
        TRY.
            t672 ?= t147.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t672 IS BOUND.
          t670 = t672->source( ).
        ENDIF.
        IF t670 IS NOT BOUND.
          CREATE OBJECT t670.
          t670->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t670->oval = t147.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t674 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t674.
    DATA t677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t678 TYPE REF TO zif_lnt_statement_runnable.
    DATA t679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t492 IS BOUND.
      DATA t681 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t679 ?= t492.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t679 IS NOT BOUND.
        TRY.
            t681 ?= t492.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t681 IS BOUND.
          t679 = t681->source( ).
        ENDIF.
        IF t679 IS NOT BOUND.
          CREATE OBJECT t679.
          t679->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t679->oval = t492.
        ENDIF.
      ENDIF.
    ENDIF.
    t678 = zcl_lnt_st_combi_module=>opt( i_first = t679 ).
    IF t678 IS BOUND.
      DATA t683 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t677 ?= t678.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t677 IS NOT BOUND.
        TRY.
            t683 ?= t678.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t683 IS BOUND.
          t677 = t683->source( ).
        ENDIF.
        IF t677 IS NOT BOUND.
          CREATE OBJECT t677.
          t677->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t677->oval = t678.
        ENDIF.
      ENDIF.
    ENDIF.
    t674->load( ).
    APPEND t677 TO t674->items.
    t674->save( ).
    t664 = zcl_lnt_st_combi_module=>seq( i_first = t667 i_second = t670 i_rest = t674 ).
    DATA t691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t664 IS BOUND.
      DATA t693 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t691 ?= t664.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t691 IS NOT BOUND.
        TRY.
            t693 ?= t664.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t693 IS BOUND.
          t691 = t693->source( ).
        ENDIF.
        IF t691 IS NOT BOUND.
          CREATE OBJECT t691.
          t691->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t691->oval = t664.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t691 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d645_168d2de480b7.
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
