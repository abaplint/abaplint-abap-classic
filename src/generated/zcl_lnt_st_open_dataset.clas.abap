* TS: src/abap/2_statements/statements/open_dataset.ts:7:1 OpenDataset
CLASS zcl_lnt_st_open_dataset DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_open_dataset IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |IN|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t9.
    t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t9->sval = |LEGACY|.
    t8 = zcl_lnt_st_combi_module=>opt( i_first = t9 ).
    IF t8 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t12 TYPE REF TO object.
      t12 = t8.
      TRY.
          t7 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t11 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t7 = t11->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t19.
    t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t19->sval = |BINARY MODE|.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = |TEXT MODE|.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t25.
    t17 = zcl_lnt_st_combi_module=>alt_prio( i_first = t19 i_second = t22 i_rest = t25 ).
    IF t17 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t31 TYPE REF TO object.
      t31 = t17.
      TRY.
          t16 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16 IS NOT BOUND.
        TRY.
            t30 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t16 = t30->source( ).
        ENDIF.
        IF t16 IS NOT BOUND.
          CREATE OBJECT t16.
          t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->oval = t17.
        ENDIF.
      ENDIF.
    ENDIF.
    t13->load( ).
    APPEND t16 TO t13->items.
    t13->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t13 ).
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = |CODE PAGE|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t45.
    t36 = zcl_lnt_st_combi_module=>seq( i_first = t39 i_second = t42 i_rest = t45 ).
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t53.
    t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t53->sval = |FOR|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t59.
    t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t59->sval = |OUTPUT|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t62.
    t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t62->sval = |INPUT|.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t64.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t67.
    t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t67->sval = |UPDATE|.
    t64->load( ).
    APPEND t67 TO t64->items.
    t64->save( ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = |APPENDING|.
    t64->load( ).
    APPEND t70 TO t64->items.
    t64->save( ).
    t57 = zcl_lnt_st_combi_module=>alt_prio( i_first = t59 i_second = t62 i_rest = t64 ).
    IF t57 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t77 TYPE REF TO object.
      t77 = t57.
      TRY.
          t56 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t76 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t56 = t76->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    t50 = zcl_lnt_st_combi_module=>seq( i_first = t53 i_second = t56 i_rest = t79 ).
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = |ENCODING|.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = |DEFAULT|.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = |UTF-8|.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t98.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = |NON-UNICODE|.
    t98->load( ).
    APPEND t101 TO t98->items.
    t98->save( ).
    t91 = zcl_lnt_st_combi_module=>alt_prio( i_first = t93 i_second = t96 i_rest = t98 ).
    IF t91 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t108 TYPE REF TO object.
      t108 = t91.
      TRY.
          t90 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t90 IS NOT BOUND.
        TRY.
            t107 ?= t91.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t90 = t107->source( ).
        ENDIF.
        IF t90 IS NOT BOUND.
          CREATE OBJECT t90.
          t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t90->oval = t91.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t110.
    t84 = zcl_lnt_st_combi_module=>seq( i_first = t87 i_second = t90 i_rest = t110 ).
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = |AT POSITION|.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t121->cval = t122.
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t124.
    t115 = zcl_lnt_st_combi_module=>seq( i_first = t118 i_second = t121 i_rest = t124 ).
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t132.
    t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t132->sval = |MESSAGE|.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t136) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t136 IS BOUND.
      CREATE OBJECT t135.
      t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t135->cval = t136.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t138.
    t129 = zcl_lnt_st_combi_module=>seq( i_first = t132 i_second = t135 i_rest = t138 ).
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    t143 = zcl_lnt_st_combi_module=>str( i_s = |IGNORING CONVERSION ERRORS| ).
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t149.
    t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t149->sval = |REPLACEMENT CHARACTER|.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t153 IS BOUND.
      CREATE OBJECT t152.
      t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t152->cval = t153.
    ENDIF.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t155.
    t146 = zcl_lnt_st_combi_module=>seq( i_first = t149 i_second = t152 i_rest = t155 ).
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    t160 = zcl_lnt_st_combi_module=>str( i_s = |SKIPPING BYTE-ORDER MARK| ).
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    t163 = zcl_lnt_st_combi_module=>str( i_s = |WITH BYTE-ORDER MARK| ).
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t169.
    t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t169->sval = |TYPE|.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t173) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t173 IS BOUND.
      CREATE OBJECT t172.
      t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t172->cval = t173.
    ENDIF.
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t175.
    t166 = zcl_lnt_st_combi_module=>seq( i_first = t169 i_second = t172 i_rest = t175 ).
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t183.
    t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t183->sval = |FILTER|.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t187) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t187 IS BOUND.
      CREATE OBJECT t186.
      t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t186->cval = t187.
    ENDIF.
    DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t189.
    t180 = zcl_lnt_st_combi_module=>seq( i_first = t183 i_second = t186 i_rest = t189 ).
    DATA t194 TYPE REF TO zif_lnt_statement_runnable.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t197.
    t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t197->sval = |SMART|.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t200.
    t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t200->sval = |NATIVE|.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t202.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = |UNIX|.
    t202->load( ).
    APPEND t205 TO t202->items.
    t202->save( ).
    t194 = zcl_lnt_st_combi_module=>alt_prio( i_first = t197 i_second = t200 i_rest = t202 ).
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t214.
    t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t214->sval = |WITH|.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t194 IS BOUND.
      DATA t219 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t220 TYPE REF TO object.
      t220 = t194.
      TRY.
          t217 ?= t220.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t217 IS NOT BOUND.
        TRY.
            t219 ?= t194.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t219 IS BOUND.
          t217 = t219->source( ).
        ENDIF.
        IF t217 IS NOT BOUND.
          CREATE OBJECT t217.
          t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t217->oval = t194.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t221.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t224.
    t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t224->sval = |LINEFEED|.
    t221->load( ).
    APPEND t224 TO t221->items.
    t221->save( ).
    t211 = zcl_lnt_st_combi_module=>seq( i_first = t214 i_second = t217 i_rest = t221 ).
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    t230 = zcl_lnt_st_combi_module=>str( i_s = |WITH WINDOWS LINEFEED| ).
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t236.
    t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t236->sval = |OPEN DATASET|.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t240) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t240 IS BOUND.
      CREATE OBJECT t239.
      t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t239->cval = t240.
    ENDIF.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t241.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t245 TYPE REF TO zif_lnt_statement_runnable.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t50 IS BOUND.
      DATA t251 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t252 TYPE REF TO object.
      t252 = t50.
      TRY.
          t249 ?= t252.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t251 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t251 IS BOUND.
          t249 = t251->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t166 IS BOUND.
      DATA t256 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t257 TYPE REF TO object.
      t257 = t166.
      TRY.
          t254 ?= t257.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t254 IS NOT BOUND.
        TRY.
            t256 ?= t166.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t256 IS BOUND.
          t254 = t256->source( ).
        ENDIF.
        IF t254 IS NOT BOUND.
          CREATE OBJECT t254.
          t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t254->oval = t166.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t258.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t264 TYPE REF TO object.
      t264 = t1.
      TRY.
          t261 ?= t264.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t261 IS NOT BOUND.
        TRY.
            t263 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t261 = t263->source( ).
        ENDIF.
        IF t261 IS NOT BOUND.
          CREATE OBJECT t261.
          t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t261->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t261 TO t258->items.
    t258->save( ).
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t163 IS BOUND.
      DATA t268 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t269 TYPE REF TO object.
      t269 = t163.
      TRY.
          t266 ?= t269.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t266 IS NOT BOUND.
        TRY.
            t268 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t268 IS BOUND.
          t266 = t268->source( ).
        ENDIF.
        IF t266 IS NOT BOUND.
          CREATE OBJECT t266.
          t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t266->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t266 TO t258->items.
    t258->save( ).
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t146 IS BOUND.
      DATA t273 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t274 TYPE REF TO object.
      t274 = t146.
      TRY.
          t271 ?= t274.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t271 IS NOT BOUND.
        TRY.
            t273 ?= t146.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t273 IS BOUND.
          t271 = t273->source( ).
        ENDIF.
        IF t271 IS NOT BOUND.
          CREATE OBJECT t271.
          t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t271->oval = t146.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t271 TO t258->items.
    t258->save( ).
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t180 IS BOUND.
      DATA t278 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t279 TYPE REF TO object.
      t279 = t180.
      TRY.
          t276 ?= t279.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t276 IS NOT BOUND.
        TRY.
            t278 ?= t180.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t278 IS BOUND.
          t276 = t278->source( ).
        ENDIF.
        IF t276 IS NOT BOUND.
          CREATE OBJECT t276.
          t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t276->oval = t180.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t276 TO t258->items.
    t258->save( ).
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t84 IS BOUND.
      DATA t283 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t284 TYPE REF TO object.
      t284 = t84.
      TRY.
          t281 ?= t284.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t281 IS NOT BOUND.
        TRY.
            t283 ?= t84.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t283 IS BOUND.
          t281 = t283->source( ).
        ENDIF.
        IF t281 IS NOT BOUND.
          CREATE OBJECT t281.
          t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t281->oval = t84.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t281 TO t258->items.
    t258->save( ).
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t115 IS BOUND.
      DATA t288 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t289 TYPE REF TO object.
      t289 = t115.
      TRY.
          t286 ?= t289.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t286 IS NOT BOUND.
        TRY.
            t288 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t288 IS BOUND.
          t286 = t288->source( ).
        ENDIF.
        IF t286 IS NOT BOUND.
          CREATE OBJECT t286.
          t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t286->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t286 TO t258->items.
    t258->save( ).
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129 IS BOUND.
      DATA t293 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t294 TYPE REF TO object.
      t294 = t129.
      TRY.
          t291 ?= t294.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t291 IS NOT BOUND.
        TRY.
            t293 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t293 IS BOUND.
          t291 = t293->source( ).
        ENDIF.
        IF t291 IS NOT BOUND.
          CREATE OBJECT t291.
          t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t291->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t291 TO t258->items.
    t258->save( ).
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t143 IS BOUND.
      DATA t298 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t299 TYPE REF TO object.
      t299 = t143.
      TRY.
          t296 ?= t299.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t296 IS NOT BOUND.
        TRY.
            t298 ?= t143.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t298 IS BOUND.
          t296 = t298->source( ).
        ENDIF.
        IF t296 IS NOT BOUND.
          CREATE OBJECT t296.
          t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t296->oval = t143.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t296 TO t258->items.
    t258->save( ).
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t160 IS BOUND.
      DATA t303 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t304 TYPE REF TO object.
      t304 = t160.
      TRY.
          t301 ?= t304.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t301 IS NOT BOUND.
        TRY.
            t303 ?= t160.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t303 IS BOUND.
          t301 = t303->source( ).
        ENDIF.
        IF t301 IS NOT BOUND.
          CREATE OBJECT t301.
          t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t301->oval = t160.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t301 TO t258->items.
    t258->save( ).
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t36 IS BOUND.
      DATA t308 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t309 TYPE REF TO object.
      t309 = t36.
      TRY.
          t306 ?= t309.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t306 IS NOT BOUND.
        TRY.
            t308 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t308 IS BOUND.
          t306 = t308->source( ).
        ENDIF.
        IF t306 IS NOT BOUND.
          CREATE OBJECT t306.
          t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t306->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t306 TO t258->items.
    t258->save( ).
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t211 IS BOUND.
      DATA t313 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t314 TYPE REF TO object.
      t314 = t211.
      TRY.
          t311 ?= t314.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t311 IS NOT BOUND.
        TRY.
            t313 ?= t211.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t313 IS BOUND.
          t311 = t313->source( ).
        ENDIF.
        IF t311 IS NOT BOUND.
          CREATE OBJECT t311.
          t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t311->oval = t211.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t311 TO t258->items.
    t258->save( ).
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t230 IS BOUND.
      DATA t318 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t319 TYPE REF TO object.
      t319 = t230.
      TRY.
          t316 ?= t319.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t316 IS NOT BOUND.
        TRY.
            t318 ?= t230.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t318 IS BOUND.
          t316 = t318->source( ).
        ENDIF.
        IF t316 IS NOT BOUND.
          CREATE OBJECT t316.
          t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t316->oval = t230.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t316 TO t258->items.
    t258->save( ).
    t247 = zcl_lnt_st_combi_module=>per( i_first = t249 i_second = t254 i_rest = t258 ).
    IF t247 IS BOUND.
      DATA t324 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t325 TYPE REF TO object.
      t325 = t247.
      TRY.
          t246 ?= t325.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t324 ?= t247.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t324 IS BOUND.
          t246 = t324->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t247.
        ENDIF.
      ENDIF.
    ENDIF.
    t245 = zcl_lnt_st_combi_module=>opt( i_first = t246 ).
    IF t245 IS BOUND.
      DATA t326 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t327 TYPE REF TO object.
      t327 = t245.
      TRY.
          t244 ?= t327.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t244 IS NOT BOUND.
        TRY.
            t326 ?= t245.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t326 IS BOUND.
          t244 = t326->source( ).
        ENDIF.
        IF t244 IS NOT BOUND.
          CREATE OBJECT t244.
          t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t244->oval = t245.
        ENDIF.
      ENDIF.
    ENDIF.
    t241->load( ).
    APPEND t244 TO t241->items.
    t241->save( ).
    t233 = zcl_lnt_st_combi_module=>seq( i_first = t236 i_second = t239 i_rest = t241 ).
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t233 IS BOUND.
      DATA t336 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t337 TYPE REF TO object.
      t337 = t233.
      TRY.
          t334 ?= t337.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t334 IS NOT BOUND.
        TRY.
            t336 ?= t233.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t336 IS BOUND.
          t334 = t336->source( ).
        ENDIF.
        IF t334 IS NOT BOUND.
          CREATE OBJECT t334.
          t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t334->oval = t233.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t334 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d569_b67e4c7404df.
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
