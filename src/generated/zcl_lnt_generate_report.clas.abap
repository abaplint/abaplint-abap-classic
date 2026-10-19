* TS: src/abap/2_statements/statements/generate_report.ts:7:1 GenerateReport
CLASS zcl_lnt_generate_report DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_generate_report IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    t1 = zcl_lnt_st_combi_module=>str( i_s = |WITHOUT SELECTION-SCREEN| ).
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |MESSAGE|.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t4 = zcl_lnt_st_combi_module=>seq( i_first = t7 i_second = t10 i_rest = t13 ).
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |INCLUDE|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t18 = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t24 i_rest = t27 ).
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = |LINE|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    t32 = zcl_lnt_st_combi_module=>seq( i_first = t35 i_second = t38 i_rest = t41 ).
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = |WORD|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t52->cval = t53.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    t46 = zcl_lnt_st_combi_module=>seq( i_first = t49 i_second = t52 i_rest = t55 ).
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = |OFFSET|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t66->cval = t67.
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    t60 = zcl_lnt_st_combi_module=>seq( i_first = t63 i_second = t66 i_rest = t69 ).
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    t74 = zcl_lnt_st_combi_module=>str( i_s = |WITH PRECOMPILED HEADERS| ).
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    t77 = zcl_lnt_st_combi_module=>str( i_s = |WITH TEST CODE| ).
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t83.
    t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t83->sval = |MESSAGE-ID|.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t87) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t87 IS BOUND.
      CREATE OBJECT t86.
      t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t86->cval = t87.
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t89.
    t80 = zcl_lnt_st_combi_module=>seq( i_first = t83 i_second = t86 i_rest = t89 ).
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t97.
    t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t97->sval = |TRACE-FILE|.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t100->cval = t101.
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t103.
    t94 = zcl_lnt_st_combi_module=>seq( i_first = t97 i_second = t100 i_rest = t103 ).
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t111.
    t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t111->sval = |SHORTDUMP-ID|.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t114->cval = t115.
    ENDIF.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t117.
    t108 = zcl_lnt_st_combi_module=>seq( i_first = t111 i_second = t114 i_rest = t117 ).
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = |DIRECTORY ENTRY|.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t128->cval = t129.
    ENDIF.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t131.
    t122 = zcl_lnt_st_combi_module=>seq( i_first = t125 i_second = t128 i_rest = t131 ).
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t141 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t142 TYPE REF TO object.
      t142 = t1.
      TRY.
          t139 ?= t142.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t139 IS NOT BOUND.
        TRY.
            t141 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t141 IS BOUND.
          t139 = t141->source( ).
        ENDIF.
        IF t139 IS NOT BOUND.
          CREATE OBJECT t139.
          t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t139->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4 IS BOUND.
      DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t147 TYPE REF TO object.
      t147 = t4.
      TRY.
          t144 ?= t147.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t144 IS NOT BOUND.
        TRY.
            t146 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t146 IS BOUND.
          t144 = t146->source( ).
        ENDIF.
        IF t144 IS NOT BOUND.
          CREATE OBJECT t144.
          t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t144->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t148.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t153 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t154 TYPE REF TO object.
      t154 = t18.
      TRY.
          t151 ?= t154.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t151 IS NOT BOUND.
        TRY.
            t153 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t153 IS BOUND.
          t151 = t153->source( ).
        ENDIF.
        IF t151 IS NOT BOUND.
          CREATE OBJECT t151.
          t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t151->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t148->load( ).
    APPEND t151 TO t148->items.
    t148->save( ).
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t94 IS BOUND.
      DATA t158 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t159 TYPE REF TO object.
      t159 = t94.
      TRY.
          t156 ?= t159.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t156 IS NOT BOUND.
        TRY.
            t158 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t158 IS BOUND.
          t156 = t158->source( ).
        ENDIF.
        IF t156 IS NOT BOUND.
          CREATE OBJECT t156.
          t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t156->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    t148->load( ).
    APPEND t156 TO t148->items.
    t148->save( ).
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t32 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t164 TYPE REF TO object.
      t164 = t32.
      TRY.
          t161 ?= t164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t161 IS NOT BOUND.
        TRY.
            t163 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t161 = t163->source( ).
        ENDIF.
        IF t161 IS NOT BOUND.
          CREATE OBJECT t161.
          t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t161->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    t148->load( ).
    APPEND t161 TO t148->items.
    t148->save( ).
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t169 TYPE REF TO object.
      t169 = t46.
      TRY.
          t166 ?= t169.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t166 IS NOT BOUND.
        TRY.
            t168 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t166 = t168->source( ).
        ENDIF.
        IF t166 IS NOT BOUND.
          CREATE OBJECT t166.
          t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t166->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    t148->load( ).
    APPEND t166 TO t148->items.
    t148->save( ).
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t60 IS BOUND.
      DATA t173 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t174 TYPE REF TO object.
      t174 = t60.
      TRY.
          t171 ?= t174.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t171 IS NOT BOUND.
        TRY.
            t173 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t173 IS BOUND.
          t171 = t173->source( ).
        ENDIF.
        IF t171 IS NOT BOUND.
          CREATE OBJECT t171.
          t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t171->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    t148->load( ).
    APPEND t171 TO t148->items.
    t148->save( ).
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t74 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t179 TYPE REF TO object.
      t179 = t74.
      TRY.
          t176 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t176 IS NOT BOUND.
        TRY.
            t178 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t176 = t178->source( ).
        ENDIF.
        IF t176 IS NOT BOUND.
          CREATE OBJECT t176.
          t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t176->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    t148->load( ).
    APPEND t176 TO t148->items.
    t148->save( ).
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77 IS BOUND.
      DATA t183 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t184 TYPE REF TO object.
      t184 = t77.
      TRY.
          t181 ?= t184.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t181 IS NOT BOUND.
        TRY.
            t183 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t183 IS BOUND.
          t181 = t183->source( ).
        ENDIF.
        IF t181 IS NOT BOUND.
          CREATE OBJECT t181.
          t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t181->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    t148->load( ).
    APPEND t181 TO t148->items.
    t148->save( ).
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t80 IS BOUND.
      DATA t188 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t189 TYPE REF TO object.
      t189 = t80.
      TRY.
          t186 ?= t189.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t186 IS NOT BOUND.
        TRY.
            t188 ?= t80.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t188 IS BOUND.
          t186 = t188->source( ).
        ENDIF.
        IF t186 IS NOT BOUND.
          CREATE OBJECT t186.
          t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t186->oval = t80.
        ENDIF.
      ENDIF.
    ENDIF.
    t148->load( ).
    APPEND t186 TO t148->items.
    t148->save( ).
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t108 IS BOUND.
      DATA t193 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t194 TYPE REF TO object.
      t194 = t108.
      TRY.
          t191 ?= t194.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t191 IS NOT BOUND.
        TRY.
            t193 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t193 IS BOUND.
          t191 = t193->source( ).
        ENDIF.
        IF t191 IS NOT BOUND.
          CREATE OBJECT t191.
          t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t191->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    t148->load( ).
    APPEND t191 TO t148->items.
    t148->save( ).
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t122 IS BOUND.
      DATA t198 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t199 TYPE REF TO object.
      t199 = t122.
      TRY.
          t196 ?= t199.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t196 IS NOT BOUND.
        TRY.
            t198 ?= t122.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t198 IS BOUND.
          t196 = t198->source( ).
        ENDIF.
        IF t196 IS NOT BOUND.
          CREATE OBJECT t196.
          t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t196->oval = t122.
        ENDIF.
      ENDIF.
    ENDIF.
    t148->load( ).
    APPEND t196 TO t148->items.
    t148->save( ).
    t136 = zcl_lnt_st_combi_module=>per( i_first = t139 i_second = t144 i_rest = t148 ).
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t207.
    t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t207->sval = |GENERATE REPORT|.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t211) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t211 IS BOUND.
      CREATE OBJECT t210.
      t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t210->cval = t211.
    ENDIF.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t212.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t136 IS BOUND.
      DATA t219 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t220 TYPE REF TO object.
      t220 = t136.
      TRY.
          t217 ?= t220.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t217 IS NOT BOUND.
        TRY.
            t219 ?= t136.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t219 IS BOUND.
          t217 = t219->source( ).
        ENDIF.
        IF t217 IS NOT BOUND.
          CREATE OBJECT t217.
          t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t217->oval = t136.
        ENDIF.
      ENDIF.
    ENDIF.
    t216 = zcl_lnt_st_combi_module=>opt( i_first = t217 ).
    IF t216 IS BOUND.
      DATA t221 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t222 TYPE REF TO object.
      t222 = t216.
      TRY.
          t215 ?= t222.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t215 IS NOT BOUND.
        TRY.
            t221 ?= t216.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t221 IS BOUND.
          t215 = t221->source( ).
        ENDIF.
        IF t215 IS NOT BOUND.
          CREATE OBJECT t215.
          t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t215->oval = t216.
        ENDIF.
      ENDIF.
    ENDIF.
    t212->load( ).
    APPEND t215 TO t212->items.
    t212->save( ).
    t204 = zcl_lnt_st_combi_module=>seq( i_first = t207 i_second = t210 i_rest = t212 ).
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t204 IS BOUND.
      DATA t231 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t232 TYPE REF TO object.
      t232 = t204.
      TRY.
          t229 ?= t232.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t229 IS NOT BOUND.
        TRY.
            t231 ?= t204.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t231 IS BOUND.
          t229 = t231->source( ).
        ENDIF.
        IF t229 IS NOT BOUND.
          CREATE OBJECT t229.
          t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t229->oval = t204.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t229 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d509_83ce94d67b86.
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
