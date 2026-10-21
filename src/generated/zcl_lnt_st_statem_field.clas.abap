* TS: src/abap/2_statements/statements/field.ts:8:1 Field
CLASS zcl_lnt_st_statem_field DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_statem_field IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |ON INPUT|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |ON REQUEST|.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |ON CHAIN-REQUEST|.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = |ON CHAIN-INPUT|.
    t9->load( ).
    APPEND t15 TO t9->items.
    t9->save( ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |AT CURSOR-SELECTION|.
    t9->load( ).
    APPEND t18 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>alt( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = |MODULE|.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t30->cval = t31.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t37 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t37 IS NOT BOUND.
        TRY.
            t39 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t37 = t39->source( ).
        ENDIF.
        IF t37 IS NOT BOUND.
          CREATE OBJECT t37.
          t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t37->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t36 = zcl_lnt_st_combi_module=>opt( i_first = t37 ).
    IF t36 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t35 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t41 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t35 = t41->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t32->load( ).
    APPEND t35 TO t32->items.
    t32->save( ).
    t24 = zcl_lnt_st_combi_module=>seq( i_first = t27 i_second = t30 i_rest = t32 ).
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t50 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t50 IS NOT BOUND.
        TRY.
            t52 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t50 = t52->source( ).
        ENDIF.
        IF t50 IS NOT BOUND.
          CREATE OBJECT t50.
          t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t50->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = |MODULE|.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t57.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t60->cval = t61.
    ENDIF.
    t57->load( ).
    APPEND t60 TO t57->items.
    t57->save( ).
    t47 = zcl_lnt_st_combi_module=>seq( i_first = t50 i_second = t55 i_rest = t57 ).
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t69.
    t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t69->sval = |VALUES|.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090.
    t73 = zcl_lnt_st_combi_module=>tok( i_t = t74 ).
    IF t73 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t72 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t72 IS NOT BOUND.
        TRY.
            t75 ?= t73.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t72 = t75->source( ).
        ENDIF.
        IF t72 IS NOT BOUND.
          CREATE OBJECT t72.
          t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t72->oval = t73.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t77.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t80.
    t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t80->sval = |BETWEEN|.
    t77->load( ).
    APPEND t80 TO t77->items.
    t77->save( ).
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t84) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t83->cval = t84.
    ENDIF.
    t77->load( ).
    APPEND t83 TO t77->items.
    t77->save( ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t86.
    t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t86->sval = |AND|.
    t77->load( ).
    APPEND t86 TO t77->items.
    t77->save( ).
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t90) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t90 IS BOUND.
      CREATE OBJECT t89.
      t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t89->cval = t90.
    ENDIF.
    t77->load( ).
    APPEND t89 TO t77->items.
    t77->save( ).
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t94) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t93 = zcl_lnt_st_combi_module=>tok( i_t = t94 ).
    IF t93 IS BOUND.
      DATA t95 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t92 ?= t93.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t92 IS NOT BOUND.
        TRY.
            t95 ?= t93.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t95 IS BOUND.
          t92 = t95->source( ).
        ENDIF.
        IF t92 IS NOT BOUND.
          CREATE OBJECT t92.
          t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t92->oval = t93.
        ENDIF.
      ENDIF.
    ENDIF.
    t77->load( ).
    APPEND t92 TO t77->items.
    t77->save( ).
    t66 = zcl_lnt_st_combi_module=>seq( i_first = t69 i_second = t72 i_rest = t77 ).
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = |WITH|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t110->cval = t111.
    ENDIF.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t113->cval = t114.
    ENDIF.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t116.
    t108 = zcl_lnt_st_combi_module=>alt_prio( i_first = t110 i_second = t113 i_rest = t116 ).
    IF t108 IS BOUND.
      DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t107 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t121 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS BOUND.
          t107 = t121->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t124.
    t101 = zcl_lnt_st_combi_module=>seq( i_first = t104 i_second = t107 i_rest = t124 ).
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t132->cval = t133.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t135.
    t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t135->sval = |=|.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t137.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t141) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t140->cval = t141.
    ENDIF.
    t137->load( ).
    APPEND t140 TO t137->items.
    t137->save( ).
    t129 = zcl_lnt_st_combi_module=>seq( i_first = t132 i_second = t135 i_rest = t137 ).
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129 IS BOUND.
      DATA t151 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t149 ?= t129.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t149 IS NOT BOUND.
        TRY.
            t151 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t151 IS BOUND.
          t149 = t151->source( ).
        ENDIF.
        IF t149 IS NOT BOUND.
          CREATE OBJECT t149.
          t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t149->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t159.
    t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t159->sval = |AND|.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129 IS BOUND.
      DATA t164 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t162 ?= t129.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t162 IS NOT BOUND.
        TRY.
            t164 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t164 IS BOUND.
          t162 = t164->source( ).
        ENDIF.
        IF t162 IS NOT BOUND.
          CREATE OBJECT t162.
          t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t162->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t167.
    t157 = zcl_lnt_st_combi_module=>seq( i_first = t159 i_second = t162 i_rest = t167 ).
    IF t157 IS BOUND.
      DATA t172 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t156 ?= t157.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t156 IS NOT BOUND.
        TRY.
            t172 ?= t157.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t172 IS BOUND.
          t156 = t172->source( ).
        ENDIF.
        IF t156 IS NOT BOUND.
          CREATE OBJECT t156.
          t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t156->oval = t157.
        ENDIF.
      ENDIF.
    ENDIF.
    t155 = zcl_lnt_st_combi_module=>star_prio( i_first = t156 ).
    IF t155 IS BOUND.
      DATA t174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t154 ?= t155.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154 IS NOT BOUND.
        TRY.
            t174 ?= t155.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t174 IS BOUND.
          t154 = t174->source( ).
        ENDIF.
        IF t154 IS NOT BOUND.
          CREATE OBJECT t154.
          t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->oval = t155.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t177.
    t146 = zcl_lnt_st_combi_module=>seq( i_first = t149 i_second = t154 i_rest = t177 ).
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t185.
    t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t185->sval = |INTO|.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t189) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t189 IS BOUND.
      CREATE OBJECT t188.
      t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t188->cval = t189.
    ENDIF.
    DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t191.
    t182 = zcl_lnt_st_combi_module=>seq( i_first = t185 i_second = t188 i_rest = t191 ).
    DATA t196 TYPE REF TO zif_lnt_statement_runnable.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t199.
    t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t199->sval = |SELECT * FROM|.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t203) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t203 IS BOUND.
      CREATE OBJECT t202.
      t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t202->cval = t203.
    ENDIF.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t204.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t207.
    t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t207->sval = |WHERE|.
    t204->load( ).
    APPEND t207 TO t204->items.
    t204->save( ).
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t146 IS BOUND.
      DATA t212 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t210 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t210 IS NOT BOUND.
        TRY.
            t212 ?= t146.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t212 IS BOUND.
          t210 = t212->source( ).
        ENDIF.
        IF t210 IS NOT BOUND.
          CREATE OBJECT t210.
          t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t210->oval = t146.
        ENDIF.
      ENDIF.
    ENDIF.
    t204->load( ).
    APPEND t210 TO t204->items.
    t204->save( ).
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182 IS BOUND.
      DATA t219 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t217 ?= t182.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t217 IS NOT BOUND.
        TRY.
            t219 ?= t182.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t219 IS BOUND.
          t217 = t219->source( ).
        ENDIF.
        IF t217 IS NOT BOUND.
          CREATE OBJECT t217.
          t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t217->oval = t182.
        ENDIF.
      ENDIF.
    ENDIF.
    t216 = zcl_lnt_st_combi_module=>opt( i_first = t217 ).
    IF t216 IS BOUND.
      DATA t221 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t215 ?= t216.
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
    t204->load( ).
    APPEND t215 TO t204->items.
    t204->save( ).
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t226.
    t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t226->sval = |WHENEVER NOT FOUND SEND ERRORMESSAGE|.
    t225 = zcl_lnt_st_combi_module=>opt( i_first = t226 ).
    IF t225 IS BOUND.
      DATA t228 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t224 ?= t225.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t224 IS NOT BOUND.
        TRY.
            t228 ?= t225.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t228 IS BOUND.
          t224 = t228->source( ).
        ENDIF.
        IF t224 IS NOT BOUND.
          CREATE OBJECT t224.
          t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t224->oval = t225.
        ENDIF.
      ENDIF.
    ENDIF.
    t204->load( ).
    APPEND t224 TO t204->items.
    t204->save( ).
    t196 = zcl_lnt_st_combi_module=>seq( i_first = t199 i_second = t202 i_rest = t204 ).
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t237.
    t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t237->sval = |FIELD|.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t241) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t241 IS BOUND.
      CREATE OBJECT t240.
      t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t240->cval = t241.
    ENDIF.
    DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t242.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t24 IS BOUND.
      DATA t252 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t250 ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t250 IS NOT BOUND.
        TRY.
            t252 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t252 IS BOUND.
          t250 = t252->source( ).
        ENDIF.
        IF t250 IS NOT BOUND.
          CREATE OBJECT t250.
          t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t250->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t47 IS BOUND.
      DATA t257 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t255 ?= t47.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t255 IS NOT BOUND.
        TRY.
            t257 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t257 IS BOUND.
          t255 = t257->source( ).
        ENDIF.
        IF t255 IS NOT BOUND.
          CREATE OBJECT t255.
          t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t255->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t259.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t66 IS BOUND.
      DATA t264 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t262 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t262 IS NOT BOUND.
        TRY.
            t264 ?= t66.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t264 IS BOUND.
          t262 = t264->source( ).
        ENDIF.
        IF t262 IS NOT BOUND.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t262->oval = t66.
        ENDIF.
      ENDIF.
    ENDIF.
    t259->load( ).
    APPEND t262 TO t259->items.
    t259->save( ).
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t101 IS BOUND.
      DATA t269 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t267 ?= t101.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t267 IS NOT BOUND.
        TRY.
            t269 ?= t101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t269 IS BOUND.
          t267 = t269->source( ).
        ENDIF.
        IF t267 IS NOT BOUND.
          CREATE OBJECT t267.
          t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t267->oval = t101.
        ENDIF.
      ENDIF.
    ENDIF.
    t259->load( ).
    APPEND t267 TO t259->items.
    t259->save( ).
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t196 IS BOUND.
      DATA t274 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t272 ?= t196.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t272 IS NOT BOUND.
        TRY.
            t274 ?= t196.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t274 IS BOUND.
          t272 = t274->source( ).
        ENDIF.
        IF t272 IS NOT BOUND.
          CREATE OBJECT t272.
          t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t272->oval = t196.
        ENDIF.
      ENDIF.
    ENDIF.
    t259->load( ).
    APPEND t272 TO t259->items.
    t259->save( ).
    t248 = zcl_lnt_st_combi_module=>alt_prio( i_first = t250 i_second = t255 i_rest = t259 ).
    IF t248 IS BOUND.
      DATA t280 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t247 ?= t248.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t247 IS NOT BOUND.
        TRY.
            t280 ?= t248.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t280 IS BOUND.
          t247 = t280->source( ).
        ENDIF.
        IF t247 IS NOT BOUND.
          CREATE OBJECT t247.
          t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t247->oval = t248.
        ENDIF.
      ENDIF.
    ENDIF.
    t246 = zcl_lnt_st_combi_module=>opt( i_first = t247 ).
    IF t246 IS BOUND.
      DATA t282 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t245 ?= t246.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t282 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t282 IS BOUND.
          t245 = t282->source( ).
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
    t234 = zcl_lnt_st_combi_module=>seq( i_first = t237 i_second = t240 i_rest = t242 ).
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t234 IS BOUND.
      DATA t292 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t290 ?= t234.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t290 IS NOT BOUND.
        TRY.
            t292 ?= t234.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t292 IS BOUND.
          t290 = t292->source( ).
        ENDIF.
        IF t290 IS NOT BOUND.
          CREATE OBJECT t290.
          t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t290->oval = t234.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t290 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d495_455bba123ac8.
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
