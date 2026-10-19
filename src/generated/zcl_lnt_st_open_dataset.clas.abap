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
    DATA(t5) = |IN|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = |LEGACY|.
    CREATE OBJECT t9.
    t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t9->sval = t10.
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
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    t13 = t14.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = |BINARY MODE|.
    CREATE OBJECT t19.
    t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t19->sval = t20.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t23) = |TEXT MODE|.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    t26 = zcl_lnt_st_combi_module=>alt_prio( i_first = t19 i_second = t22 i_rest = t25 ).
    t17 = t26.
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
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    t32 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t13 ).
    t1 = t32.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = |CODE PAGE|.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = t40.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    t46 = zcl_lnt_st_combi_module=>seq( i_first = t39 i_second = t42 i_rest = t45 ).
    t36 = t46.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t54) = |FOR|.
    CREATE OBJECT t53.
    t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t53->sval = t54.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t60) = |OUTPUT|.
    CREATE OBJECT t59.
    t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t59->sval = t60.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t63) = |INPUT|.
    CREATE OBJECT t62.
    t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t62->sval = t63.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t65.
    t64 = t65.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t68) = |UPDATE|.
    CREATE OBJECT t67.
    t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t67->sval = t68.
    t64->load( ).
    APPEND t67 TO t64->items.
    t64->save( ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t71) = |APPENDING|.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = t71.
    t64->load( ).
    APPEND t70 TO t64->items.
    t64->save( ).
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    t72 = zcl_lnt_st_combi_module=>alt_prio( i_first = t59 i_second = t62 i_rest = t64 ).
    t57 = t72.
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
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    t80 = zcl_lnt_st_combi_module=>seq( i_first = t53 i_second = t56 i_rest = t79 ).
    t50 = t80.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t88) = |ENCODING|.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = t88.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = |DEFAULT|.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = t94.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t97) = |UTF-8|.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = t97.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t99.
    t98 = t99.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t102) = |NON-UNICODE|.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = t102.
    t98->load( ).
    APPEND t101 TO t98->items.
    t98->save( ).
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    t103 = zcl_lnt_st_combi_module=>alt_prio( i_first = t93 i_second = t96 i_rest = t98 ).
    t91 = t103.
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
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    t111 = zcl_lnt_st_combi_module=>seq( i_first = t87 i_second = t90 i_rest = t110 ).
    t84 = t111.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = |AT POSITION|.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = t119.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t121->cval = t122.
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t124.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    t125 = zcl_lnt_st_combi_module=>seq( i_first = t118 i_second = t121 i_rest = t124 ).
    t115 = t125.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t133) = |MESSAGE|.
    CREATE OBJECT t132.
    t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t132->sval = t133.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t136) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t136 IS BOUND.
      CREATE OBJECT t135.
      t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t135->cval = t136.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t138.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    t139 = zcl_lnt_st_combi_module=>seq( i_first = t132 i_second = t135 i_rest = t138 ).
    t129 = t139.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t145) = |IGNORING CONVERSION ERRORS|.
    t144 = zcl_lnt_st_combi_module=>str( i_s = t145 ).
    t143 = t144.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t150) = |REPLACEMENT CHARACTER|.
    CREATE OBJECT t149.
    t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t149->sval = t150.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t153 IS BOUND.
      CREATE OBJECT t152.
      t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t152->cval = t153.
    ENDIF.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    t156 = zcl_lnt_st_combi_module=>seq( i_first = t149 i_second = t152 i_rest = t155 ).
    t146 = t156.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t162) = |SKIPPING BYTE-ORDER MARK|.
    t161 = zcl_lnt_st_combi_module=>str( i_s = t162 ).
    t160 = t161.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t165) = |WITH BYTE-ORDER MARK|.
    t164 = zcl_lnt_st_combi_module=>str( i_s = t165 ).
    t163 = t164.
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t170) = |TYPE|.
    CREATE OBJECT t169.
    t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t169->sval = t170.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t173) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t173 IS BOUND.
      CREATE OBJECT t172.
      t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t172->cval = t173.
    ENDIF.
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t175.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    t176 = zcl_lnt_st_combi_module=>seq( i_first = t169 i_second = t172 i_rest = t175 ).
    t166 = t176.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t184) = |FILTER|.
    CREATE OBJECT t183.
    t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t183->sval = t184.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t187) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t187 IS BOUND.
      CREATE OBJECT t186.
      t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t186->cval = t187.
    ENDIF.
    DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    t190 = zcl_lnt_st_combi_module=>seq( i_first = t183 i_second = t186 i_rest = t189 ).
    t180 = t190.
    DATA t194 TYPE REF TO zif_lnt_statement_runnable.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t198) = |SMART|.
    CREATE OBJECT t197.
    t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t197->sval = t198.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t201) = |NATIVE|.
    CREATE OBJECT t200.
    t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t200->sval = t201.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t203.
    t202 = t203.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t206) = |UNIX|.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = t206.
    t202->load( ).
    APPEND t205 TO t202->items.
    t202->save( ).
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    t207 = zcl_lnt_st_combi_module=>alt_prio( i_first = t197 i_second = t200 i_rest = t202 ).
    t194 = t207.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t215) = |WITH|.
    CREATE OBJECT t214.
    t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t214->sval = t215.
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
    DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t222.
    t221 = t222.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t225) = |LINEFEED|.
    CREATE OBJECT t224.
    t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t224->sval = t225.
    t221->load( ).
    APPEND t224 TO t221->items.
    t221->save( ).
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    t226 = zcl_lnt_st_combi_module=>seq( i_first = t214 i_second = t217 i_rest = t221 ).
    t211 = t226.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t232) = |WITH WINDOWS LINEFEED|.
    t231 = zcl_lnt_st_combi_module=>str( i_s = t232 ).
    t230 = t231.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t237) = |OPEN DATASET|.
    CREATE OBJECT t236.
    t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t236->sval = t237.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t240) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t240 IS BOUND.
      CREATE OBJECT t239.
      t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t239->cval = t240.
    ENDIF.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t242.
    t241 = t242.
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
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t259.
    t258 = t259.
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
    DATA t320 TYPE REF TO zif_lnt_statement_runnable.
    t320 = zcl_lnt_st_combi_module=>per( i_first = t249 i_second = t254 i_rest = t258 ).
    t247 = t320.
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
    DATA t328 TYPE REF TO zif_lnt_statement_runnable.
    t328 = zcl_lnt_st_combi_module=>seq( i_first = t236 i_second = t239 i_rest = t241 ).
    t233 = t328.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t333) = |Cloud|.
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
    t332 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t333 i_first = t334 ).
    result = t332.

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
