* TS: src/abap/2_statements/statements/perform.ts:9:1 Perform
CLASS zcl_lnt_st_perform DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_perform IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |LEVEL|.
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
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |ON COMMIT|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t26 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t28 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t26 = t28->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t25 = zcl_lnt_st_combi_module=>opt( i_first = t26 ).
    IF t25 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t24 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t30 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t24 = t30->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    t19 = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t24 i_rest = t33 ).
    IF t19 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t18 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t38 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t18 = t38->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = |ON ROLLBACK|.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    t15 = zcl_lnt_st_combi_module=>alt( i_first = t18 i_second = t41 i_rest = t44 ).
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t55->cval = t56.
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t59 = zcl_lnt_st_combi_module=>tok( i_t = t60 ).
    IF t59 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t58 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t58 IS NOT BOUND.
        TRY.
            t61 ?= t59.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t58 = t61->source( ).
        ENDIF.
        IF t58 IS NOT BOUND.
          CREATE OBJECT t58.
          t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t58->oval = t59.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t63.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t66->cval = t67.
    ENDIF.
    t63->load( ).
    APPEND t66 TO t63->items.
    t63->save( ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t70 = zcl_lnt_st_combi_module=>tok( i_t = t71 ).
    IF t70 IS BOUND.
      DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t69 ?= t70.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t72 ?= t70.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS BOUND.
          t69 = t72->source( ).
        ENDIF.
        IF t69 IS NOT BOUND.
          CREATE OBJECT t69.
          t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t69->oval = t70.
        ENDIF.
      ENDIF.
    ENDIF.
    t63->load( ).
    APPEND t69 TO t63->items.
    t63->save( ).
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t55 i_second = t58 i_rest = t63 ).
    IF t53 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t52 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t78 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t52 = t78->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    t49 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t52 ).
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t83.
    t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t83->sval = |IN PROGRAM|.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t92) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t91->cval = t92.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t95) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t94->cval = t95.
    ENDIF.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t97.
    t89 = zcl_lnt_st_combi_module=>alt( i_first = t91 i_second = t94 i_rest = t97 ).
    IF t89 IS BOUND.
      DATA t102 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t88 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t102 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t102 IS BOUND.
          t88 = t102->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    t87 = zcl_lnt_st_combi_module=>opt( i_first = t88 ).
    IF t87 IS BOUND.
      DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t86 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t104 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t104 IS BOUND.
          t86 = t104->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t107.
    t80 = zcl_lnt_st_combi_module=>seq( i_first = t83 i_second = t86 i_rest = t107 ).
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    t112 = zcl_lnt_st_combi_module=>str( i_s = |IF FOUND| ).
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t121->cval = t122.
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t124->cval = t125.
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t127.
    t119 = zcl_lnt_st_combi_module=>alt( i_first = t121 i_second = t124 i_rest = t127 ).
    IF t119 IS BOUND.
      DATA t132 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t118 ?= t119.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t132 ?= t119.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t132 IS BOUND.
          t118 = t132->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t119.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t80 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t140 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t142 ?= t80.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t140 = t142->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t80.
        ENDIF.
      ENDIF.
    ENDIF.
    t138 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t140 ).
    IF t138 IS BOUND.
      DATA t144 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t137 ?= t138.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t144 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t144 IS BOUND.
          t137 = t144->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t138.
        ENDIF.
      ENDIF.
    ENDIF.
    t136 = zcl_lnt_st_combi_module=>opt( i_first = t137 ).
    IF t136 IS BOUND.
      DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t135 ?= t136.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t135 IS NOT BOUND.
        TRY.
            t146 ?= t136.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t146 IS BOUND.
          t135 = t146->source( ).
        ENDIF.
        IF t135 IS NOT BOUND.
          CREATE OBJECT t135.
          t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t135->oval = t136.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t149.
    t115 = zcl_lnt_st_combi_module=>seq( i_first = t118 i_second = t135 i_rest = t149 ).
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t112 IS BOUND.
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t159 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t161 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t159 = t161->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t158 = zcl_lnt_st_combi_module=>opt( i_first = t159 ).
    IF t158 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t157 ?= t158.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t163 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t157 = t163->source( ).
        ENDIF.
        IF t157 IS NOT BOUND.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t157->oval = t158.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t169) = zlnt_runtime_desc_78196487750d=>zlnt_member_d244_ecc6d4776dc2.
    IF t169 IS BOUND.
      CREATE OBJECT t168.
      t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t168->cval = t169.
    ENDIF.
    t167 = zcl_lnt_st_combi_module=>opt( i_first = t168 ).
    IF t167 IS BOUND.
      DATA t170 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t166 ?= t167.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t166 IS NOT BOUND.
        TRY.
            t170 ?= t167.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t170 IS BOUND.
          t166 = t170->source( ).
        ENDIF.
        IF t166 IS NOT BOUND.
          CREATE OBJECT t166.
          t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t166->oval = t167.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t172.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d245_8da77b7903ad.
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t177->cval = t178.
    ENDIF.
    t176 = zcl_lnt_st_combi_module=>opt( i_first = t177 ).
    IF t176 IS BOUND.
      DATA t179 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t175 ?= t176.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t175 IS NOT BOUND.
        TRY.
            t179 ?= t176.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t179 IS BOUND.
          t175 = t179->source( ).
        ENDIF.
        IF t175 IS NOT BOUND.
          CREATE OBJECT t175.
          t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t175->oval = t176.
        ENDIF.
      ENDIF.
    ENDIF.
    t172->load( ).
    APPEND t175 TO t172->items.
    t172->save( ).
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t185) = zlnt_runtime_desc_78196487750d=>zlnt_member_d243_4c26f150237d.
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t184->cval = t185.
    ENDIF.
    t183 = zcl_lnt_st_combi_module=>opt( i_first = t184 ).
    IF t183 IS BOUND.
      DATA t186 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t182 ?= t183.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t186 ?= t183.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t186 IS BOUND.
          t182 = t186->source( ).
        ENDIF.
        IF t182 IS NOT BOUND.
          CREATE OBJECT t182.
          t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t182->oval = t183.
        ENDIF.
      ENDIF.
    ENDIF.
    t172->load( ).
    APPEND t182 TO t172->items.
    t172->save( ).
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t112 IS BOUND.
      DATA t193 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t191 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t191 IS NOT BOUND.
        TRY.
            t193 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t193 IS BOUND.
          t191 = t193->source( ).
        ENDIF.
        IF t191 IS NOT BOUND.
          CREATE OBJECT t191.
          t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t191->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t190 = zcl_lnt_st_combi_module=>opt( i_first = t191 ).
    IF t190 IS BOUND.
      DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t189 ?= t190.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t195 ?= t190.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t195 IS BOUND.
          t189 = t195->source( ).
        ENDIF.
        IF t189 IS NOT BOUND.
          CREATE OBJECT t189.
          t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t189->oval = t190.
        ENDIF.
      ENDIF.
    ENDIF.
    t172->load( ).
    APPEND t189 TO t172->items.
    t172->save( ).
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t202 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t200 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t202 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t202 IS BOUND.
          t200 = t202->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t199 = zcl_lnt_st_combi_module=>opt( i_first = t200 ).
    IF t199 IS BOUND.
      DATA t204 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t198 ?= t199.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t198 IS NOT BOUND.
        TRY.
            t204 ?= t199.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t204 IS BOUND.
          t198 = t204->source( ).
        ENDIF.
        IF t198 IS NOT BOUND.
          CREATE OBJECT t198.
          t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t198->oval = t199.
        ENDIF.
      ENDIF.
    ENDIF.
    t172->load( ).
    APPEND t198 TO t172->items.
    t172->save( ).
    t154 = zcl_lnt_st_combi_module=>seq( i_first = t157 i_second = t166 i_rest = t172 ).
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t213.
    t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t213->sval = |OF|.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t219) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    IF t219 IS BOUND.
      CREATE OBJECT t218.
      t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t218->cval = t219.
    ENDIF.
    t217 = zcl_lnt_st_combi_module=>plus( i_first = t218 ).
    IF t217 IS BOUND.
      DATA t220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t216 ?= t217.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t216 IS NOT BOUND.
        TRY.
            t220 ?= t217.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t220 IS BOUND.
          t216 = t220->source( ).
        ENDIF.
        IF t216 IS NOT BOUND.
          CREATE OBJECT t216.
          t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t216->oval = t217.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t223.
    t210 = zcl_lnt_st_combi_module=>seq( i_first = t213 i_second = t216 i_rest = t223 ).
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t231.
    t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t231->sval = |PERFORM|.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t49 IS BOUND.
      DATA t239 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t237 ?= t49.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t237 IS NOT BOUND.
        TRY.
            t239 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t239 IS BOUND.
          t237 = t239->source( ).
        ENDIF.
        IF t237 IS NOT BOUND.
          CREATE OBJECT t237.
          t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t237->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t115 IS BOUND.
      DATA t244 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t242 ?= t115.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t242 IS NOT BOUND.
        TRY.
            t244 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t244 IS BOUND.
          t242 = t244->source( ).
        ENDIF.
        IF t242 IS NOT BOUND.
          CREATE OBJECT t242.
          t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t242->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t247.
    t235 = zcl_lnt_st_combi_module=>alt( i_first = t237 i_second = t242 i_rest = t247 ).
    IF t235 IS BOUND.
      DATA t252 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t234 ?= t235.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t234 IS NOT BOUND.
        TRY.
            t252 ?= t235.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t252 IS BOUND.
          t234 = t252->source( ).
        ENDIF.
        IF t234 IS NOT BOUND.
          CREATE OBJECT t234.
          t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t234->oval = t235.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t254.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t210 IS BOUND.
      DATA t262 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t260 ?= t210.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t260 IS NOT BOUND.
        TRY.
            t262 ?= t210.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t262 IS BOUND.
          t260 = t262->source( ).
        ENDIF.
        IF t260 IS NOT BOUND.
          CREATE OBJECT t260.
          t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t260->oval = t210.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t154 IS BOUND.
      DATA t267 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t265 ?= t154.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t265 IS NOT BOUND.
        TRY.
            t267 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t267 IS BOUND.
          t265 = t267->source( ).
        ENDIF.
        IF t265 IS NOT BOUND.
          CREATE OBJECT t265.
          t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t265->oval = t154.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t270.
    t258 = zcl_lnt_st_combi_module=>alt_prio( i_first = t260 i_second = t265 i_rest = t270 ).
    IF t258 IS BOUND.
      DATA t275 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t257 ?= t258.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t257 IS NOT BOUND.
        TRY.
            t275 ?= t258.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t275 IS BOUND.
          t257 = t275->source( ).
        ENDIF.
        IF t257 IS NOT BOUND.
          CREATE OBJECT t257.
          t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t257->oval = t258.
        ENDIF.
      ENDIF.
    ENDIF.
    t254->load( ).
    APPEND t257 TO t254->items.
    t254->save( ).
    t228 = zcl_lnt_st_combi_module=>seq( i_first = t231 i_second = t234 i_rest = t254 ).
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t228 IS BOUND.
      DATA t285 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t283 ?= t228.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t283 IS NOT BOUND.
        TRY.
            t285 ?= t228.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t285 IS BOUND.
          t283 = t285->source( ).
        ENDIF.
        IF t283 IS NOT BOUND.
          CREATE OBJECT t283.
          t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t283->oval = t228.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t283 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d573_76d229f1cfae.
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
