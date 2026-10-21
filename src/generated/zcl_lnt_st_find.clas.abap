* TS: src/abap/2_statements/statements/find.ts:6:1 Find
CLASS zcl_lnt_st_find DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_find IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |IGNORING CASE|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |RESPECTING CASE|.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |IN BYTE MODE|.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = |IN CHARACTER MODE|.
    t9->load( ).
    APPEND t15 TO t9->items.
    t9->save( ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |OF|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t19 = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t24 i_rest = t27 ).
    IF t19 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t18 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t32 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t18 = t32->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t18 TO t9->items.
    t9->save( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = |FROM|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    t36 = zcl_lnt_st_combi_module=>seq( i_first = t38 i_second = t41 i_rest = t44 ).
    IF t36 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t35 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t49 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t35 = t49->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t35 TO t9->items.
    t9->save( ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = |TO|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t58->cval = t59.
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t55 i_second = t58 i_rest = t61 ).
    IF t53 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t52 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t66 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t52 = t66->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t52 TO t9->items.
    t9->save( ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t72.
    t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t72->sval = |MATCH OFFSET|.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t75->cval = t76.
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t78.
    t70 = zcl_lnt_st_combi_module=>seq( i_first = t72 i_second = t75 i_rest = t78 ).
    IF t70 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t69 ?= t70.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t83 ?= t70.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t69 = t83->source( ).
        ENDIF.
        IF t69 IS NOT BOUND.
          CREATE OBJECT t69.
          t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t69->oval = t70.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t69 TO t9->items.
    t9->save( ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t89.
    t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t89->sval = |MATCH LINE|.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t92->cval = t93.
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t95.
    t87 = zcl_lnt_st_combi_module=>seq( i_first = t89 i_second = t92 i_rest = t95 ).
    IF t87 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t86 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t100 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t86 = t100->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t86 TO t9->items.
    t9->save( ).
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = |MATCH COUNT|.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t109->cval = t110.
    ENDIF.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t112.
    t104 = zcl_lnt_st_combi_module=>seq( i_first = t106 i_second = t109 i_rest = t112 ).
    IF t104 IS BOUND.
      DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t103 ?= t104.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t117 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t117 IS BOUND.
          t103 = t117->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t103 TO t9->items.
    t9->save( ).
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = |MATCH LENGTH|.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t127) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t126->cval = t127.
    ENDIF.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t129.
    t121 = zcl_lnt_st_combi_module=>seq( i_first = t123 i_second = t126 i_rest = t129 ).
    IF t121 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t120 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t134 ?= t121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t120 = t134->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t121.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t120 TO t9->items.
    t9->save( ).
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t140.
    t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t140->sval = |LENGTH|.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t144) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t143->cval = t144.
    ENDIF.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t146.
    t138 = zcl_lnt_st_combi_module=>seq( i_first = t140 i_second = t143 i_rest = t146 ).
    IF t138 IS BOUND.
      DATA t151 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t137 ?= t138.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t151 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t151 IS BOUND.
          t137 = t151->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t138.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t137 TO t9->items.
    t9->save( ).
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = |RESULTS|.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t161) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t160->cval = t161.
    ENDIF.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t163.
    t155 = zcl_lnt_st_combi_module=>seq( i_first = t157 i_second = t160 i_rest = t163 ).
    IF t155 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t154 ?= t155.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154 IS NOT BOUND.
        TRY.
            t168 ?= t155.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t154 = t168->source( ).
        ENDIF.
        IF t154 IS NOT BOUND.
          CREATE OBJECT t154.
          t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->oval = t155.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t154 TO t9->items.
    t9->save( ).
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t174.
    t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t174->sval = |SUBMATCHES|.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t177->cval = t178.
    ENDIF.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t180.
    t172 = zcl_lnt_st_combi_module=>seq( i_first = t174 i_second = t177 i_rest = t180 ).
    IF t172 IS BOUND.
      DATA t185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t171 ?= t172.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t171 IS NOT BOUND.
        TRY.
            t185 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t185 IS BOUND.
          t171 = t185->source( ).
        ENDIF.
        IF t171 IS NOT BOUND.
          CREATE OBJECT t171.
          t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t171->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t171 TO t9->items.
    t9->save( ).
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t191.
    t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t191->sval = |SUBMATCHES|.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t195) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t195 IS BOUND.
      CREATE OBJECT t194.
      t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t194->cval = t195.
    ENDIF.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t196.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t200) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t200 IS BOUND.
      CREATE OBJECT t199.
      t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t199->cval = t200.
    ENDIF.
    t196->load( ).
    APPEND t199 TO t196->items.
    t196->save( ).
    t189 = zcl_lnt_st_combi_module=>seq( i_first = t191 i_second = t194 i_rest = t196 ).
    IF t189 IS BOUND.
      DATA t205 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t188 ?= t189.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t188 IS NOT BOUND.
        TRY.
            t205 ?= t189.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t205 IS BOUND.
          t188 = t205->source( ).
        ENDIF.
        IF t188 IS NOT BOUND.
          CREATE OBJECT t188.
          t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t188->oval = t189.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t188 TO t9->items.
    t9->save( ).
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t211.
    t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t211->sval = |SUBMATCHES|.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t217) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t217 IS BOUND.
      CREATE OBJECT t216.
      t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t216->cval = t217.
    ENDIF.
    t215 = zcl_lnt_st_combi_module=>plus( i_first = t216 ).
    IF t215 IS BOUND.
      DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t214 ?= t215.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t214 IS NOT BOUND.
        TRY.
            t218 ?= t215.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t218 IS BOUND.
          t214 = t218->source( ).
        ENDIF.
        IF t214 IS NOT BOUND.
          CREATE OBJECT t214.
          t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t214->oval = t215.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t221.
    t209 = zcl_lnt_st_combi_module=>seq( i_first = t211 i_second = t214 i_rest = t221 ).
    IF t209 IS BOUND.
      DATA t226 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t208 ?= t209.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t208 IS NOT BOUND.
        TRY.
            t226 ?= t209.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t226 IS BOUND.
          t208 = t226->source( ).
        ENDIF.
        IF t208 IS NOT BOUND.
          CREATE OBJECT t208.
          t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t208->oval = t209.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t208 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>per( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t235.
    t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t235->sval = |SECTION LENGTH|.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t239) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t239 IS BOUND.
      CREATE OBJECT t238.
      t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t238->cval = t239.
    ENDIF.
    DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t240.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t243.
    t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t243->sval = |OF|.
    t240->load( ).
    APPEND t243 TO t240->items.
    t240->save( ).
    t232 = zcl_lnt_st_combi_module=>seq( i_first = t235 i_second = t238 i_rest = t240 ).
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t253 TYPE REF TO zif_lnt_statement_runnable.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t257.
    t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t257->sval = |TABLE|.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t260.
    t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t260->sval = |SECTION OFFSET|.
    DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t262.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t232 IS BOUND.
      DATA t267 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t265 ?= t232.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t265 IS NOT BOUND.
        TRY.
            t267 ?= t232.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t267 IS BOUND.
          t265 = t267->source( ).
        ENDIF.
        IF t265 IS NOT BOUND.
          CREATE OBJECT t265.
          t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t265->oval = t232.
        ENDIF.
      ENDIF.
    ENDIF.
    t262->load( ).
    APPEND t265 TO t262->items.
    t262->save( ).
    t255 = zcl_lnt_st_combi_module=>alt_prio( i_first = t257 i_second = t260 i_rest = t262 ).
    IF t255 IS BOUND.
      DATA t273 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t254 ?= t255.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t254 IS NOT BOUND.
        TRY.
            t273 ?= t255.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t273 IS BOUND.
          t254 = t273->source( ).
        ENDIF.
        IF t254 IS NOT BOUND.
          CREATE OBJECT t254.
          t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t254->oval = t255.
        ENDIF.
      ENDIF.
    ENDIF.
    t253 = zcl_lnt_st_combi_module=>opt_prio( i_first = t254 ).
    IF t253 IS BOUND.
      DATA t275 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t252 ?= t253.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t252 IS NOT BOUND.
        TRY.
            t275 ?= t253.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t275 IS BOUND.
          t252 = t275->source( ).
        ENDIF.
        IF t252 IS NOT BOUND.
          CREATE OBJECT t252.
          t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t252->oval = t253.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t279) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t279 IS BOUND.
      CREATE OBJECT t278.
      t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t278->cval = t279.
    ENDIF.
    DATA t281 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t281.
    t249 = zcl_lnt_st_combi_module=>seq( i_first = t252 i_second = t278 i_rest = t281 ).
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t289.
    t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t289->sval = |FIND|.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t293 TYPE REF TO zif_lnt_statement_runnable.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t297.
    t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t297->sval = |FIRST OCCURRENCE OF|.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t300.
    t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t300->sval = |ALL OCCURRENCES OF|.
    DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t303.
    t295 = zcl_lnt_st_combi_module=>alt_prio( i_first = t297 i_second = t300 i_rest = t303 ).
    IF t295 IS BOUND.
      DATA t308 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t294 ?= t295.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t294 IS NOT BOUND.
        TRY.
            t308 ?= t295.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t308 IS BOUND.
          t294 = t308->source( ).
        ENDIF.
        IF t294 IS NOT BOUND.
          CREATE OBJECT t294.
          t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t294->oval = t295.
        ENDIF.
      ENDIF.
    ENDIF.
    t293 = zcl_lnt_st_combi_module=>opt( i_first = t294 ).
    IF t293 IS BOUND.
      DATA t310 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t292 ?= t293.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t292 IS NOT BOUND.
        TRY.
            t310 ?= t293.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t310 IS BOUND.
          t292 = t310->source( ).
        ENDIF.
        IF t292 IS NOT BOUND.
          CREATE OBJECT t292.
          t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t292->oval = t293.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t312.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t316) = zlnt_runtime_desc_78196487750d=>zlnt_member_d176_70730c0e7184.
    IF t316 IS BOUND.
      CREATE OBJECT t315.
      t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t315->cval = t316.
    ENDIF.
    t312->load( ).
    APPEND t315 TO t312->items.
    t312->save( ).
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t319) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t319 IS BOUND.
      CREATE OBJECT t318.
      t318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t318->cval = t319.
    ENDIF.
    t312->load( ).
    APPEND t318 TO t312->items.
    t312->save( ).
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t321.
    t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t321->sval = |IN|.
    t312->load( ).
    APPEND t321 TO t312->items.
    t312->save( ).
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t249 IS BOUND.
      DATA t326 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t324 ?= t249.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t324 IS NOT BOUND.
        TRY.
            t326 ?= t249.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t326 IS BOUND.
          t324 = t326->source( ).
        ENDIF.
        IF t324 IS NOT BOUND.
          CREATE OBJECT t324.
          t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t324->oval = t249.
        ENDIF.
      ENDIF.
    ENDIF.
    t312->load( ).
    APPEND t324 TO t312->items.
    t312->save( ).
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t330 TYPE REF TO zif_lnt_statement_runnable.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t333 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t331 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t331 IS NOT BOUND.
        TRY.
            t333 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t333 IS BOUND.
          t331 = t333->source( ).
        ENDIF.
        IF t331 IS NOT BOUND.
          CREATE OBJECT t331.
          t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t331->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t330 = zcl_lnt_st_combi_module=>opt( i_first = t331 ).
    IF t330 IS BOUND.
      DATA t335 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t329 ?= t330.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t329 IS NOT BOUND.
        TRY.
            t335 ?= t330.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t335 IS BOUND.
          t329 = t335->source( ).
        ENDIF.
        IF t329 IS NOT BOUND.
          CREATE OBJECT t329.
          t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t329->oval = t330.
        ENDIF.
      ENDIF.
    ENDIF.
    t312->load( ).
    APPEND t329 TO t312->items.
    t312->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t289 i_second = t292 i_rest = t312 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d499_147142f52ef0.
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
