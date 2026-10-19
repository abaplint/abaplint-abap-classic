* TS: src/abap/2_statements/statements/report.ts:8:1 Report
CLASS zcl_lnt_report DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_report IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t8 TYPE REF TO object.
      t8 = t5.
      TRY.
          t4 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t7 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t4 = t7->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t19 = zcl_lnt_st_combi_module=>tok( i_t = t20 ).
    IF t19 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t22 TYPE REF TO object.
      t22 = t19.
      TRY.
          t18 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t21 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t18 = t21->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t25 = zcl_lnt_st_combi_module=>tok( i_t = t26 ).
    IF t25 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t28 TYPE REF TO object.
      t28 = t25.
      TRY.
          t24 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t27 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t24 = t27->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    t16 = zcl_lnt_st_combi_module=>alt( i_first = t18 i_second = t24 i_rest = t30 ).
    IF t16 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t36 TYPE REF TO object.
      t36 = t16.
      TRY.
          t15 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t35 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t15 = t35->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t10 i_rest = t12 ).
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    t41 = zcl_lnt_st_combi_module=>str( i_s = |NO STANDARD PAGE HEADING| ).
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = |LINE-SIZE|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t50->cval = t51.
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t53.
    t44 = zcl_lnt_st_combi_module=>seq( i_first = t47 i_second = t50 i_rest = t53 ).
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = |LINE-COUNT|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t64->cval = t65.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t74 TYPE REF TO object.
      t74 = t1.
      TRY.
          t71 ?= t74.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t73 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t73 IS BOUND.
          t71 = t73->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t70 = zcl_lnt_st_combi_module=>opt( i_first = t71 ).
    IF t70 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t76 TYPE REF TO object.
      t76 = t70.
      TRY.
          t69 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t75 ?= t70.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t69 = t75->source( ).
        ENDIF.
        IF t69 IS NOT BOUND.
          CREATE OBJECT t69.
          t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t69->oval = t70.
        ENDIF.
      ENDIF.
    ENDIF.
    t66->load( ).
    APPEND t69 TO t66->items.
    t66->save( ).
    t58 = zcl_lnt_st_combi_module=>seq( i_first = t61 i_second = t64 i_rest = t66 ).
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = |MESSAGE-ID|.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d215_80780944ec3f.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t90.
    t81 = zcl_lnt_st_combi_module=>seq( i_first = t84 i_second = t87 i_rest = t90 ).
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = |USING DATABASE|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t102) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t101->cval = t102.
    ENDIF.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t104.
    t95 = zcl_lnt_st_combi_module=>seq( i_first = t98 i_second = t101 i_rest = t104 ).
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = |REPORT|.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39.
    IF t118 IS BOUND.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t117->cval = t118.
    ENDIF.
    t116 = zcl_lnt_st_combi_module=>opt( i_first = t117 ).
    IF t116 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t120 TYPE REF TO object.
      t120 = t116.
      TRY.
          t115 ?= t120.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t119 ?= t116.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t115 = t119->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t116.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t121.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41 IS BOUND.
      DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t132 TYPE REF TO object.
      t132 = t41.
      TRY.
          t129 ?= t132.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t131 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t131 IS BOUND.
          t129 = t131->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44 IS BOUND.
      DATA t136 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t137 TYPE REF TO object.
      t137 = t44.
      TRY.
          t134 ?= t137.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t134 IS NOT BOUND.
        TRY.
            t136 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t136 IS BOUND.
          t134 = t136->source( ).
        ENDIF.
        IF t134 IS NOT BOUND.
          CREATE OBJECT t134.
          t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t134->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t138.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t58 IS BOUND.
      DATA t143 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t144 TYPE REF TO object.
      t144 = t58.
      TRY.
          t141 ?= t144.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t141 IS NOT BOUND.
        TRY.
            t143 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t143 IS BOUND.
          t141 = t143->source( ).
        ENDIF.
        IF t141 IS NOT BOUND.
          CREATE OBJECT t141.
          t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t141->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    t138->load( ).
    APPEND t141 TO t138->items.
    t138->save( ).
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t95 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t149 TYPE REF TO object.
      t149 = t95.
      TRY.
          t146 ?= t149.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t146 IS NOT BOUND.
        TRY.
            t148 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t146 = t148->source( ).
        ENDIF.
        IF t146 IS NOT BOUND.
          CREATE OBJECT t146.
          t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t146->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    t138->load( ).
    APPEND t146 TO t138->items.
    t138->save( ).
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t81 IS BOUND.
      DATA t153 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t154 TYPE REF TO object.
      t154 = t81.
      TRY.
          t151 ?= t154.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t151 IS NOT BOUND.
        TRY.
            t153 ?= t81.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t153 IS BOUND.
          t151 = t153->source( ).
        ENDIF.
        IF t151 IS NOT BOUND.
          CREATE OBJECT t151.
          t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t151->oval = t81.
        ENDIF.
      ENDIF.
    ENDIF.
    t138->load( ).
    APPEND t151 TO t138->items.
    t138->save( ).
    t127 = zcl_lnt_st_combi_module=>per( i_first = t129 i_second = t134 i_rest = t138 ).
    IF t127 IS BOUND.
      DATA t159 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t160 TYPE REF TO object.
      t160 = t127.
      TRY.
          t126 ?= t160.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t159 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t159 IS BOUND.
          t126 = t159->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t125 = zcl_lnt_st_combi_module=>opt( i_first = t126 ).
    IF t125 IS BOUND.
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t162 TYPE REF TO object.
      t162 = t125.
      TRY.
          t124 ?= t162.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t124 IS NOT BOUND.
        TRY.
            t161 ?= t125.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t124 = t161->source( ).
        ENDIF.
        IF t124 IS NOT BOUND.
          CREATE OBJECT t124.
          t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t124->oval = t125.
        ENDIF.
      ENDIF.
    ENDIF.
    t121->load( ).
    APPEND t124 TO t121->items.
    t121->save( ).
    t109 = zcl_lnt_st_combi_module=>seq( i_first = t112 i_second = t115 i_rest = t121 ).
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t109 IS BOUND.
      DATA t171 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t172 TYPE REF TO object.
      t172 = t109.
      TRY.
          t169 ?= t172.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t169 IS NOT BOUND.
        TRY.
            t171 ?= t109.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t171 IS BOUND.
          t169 = t171->source( ).
        ENDIF.
        IF t169 IS NOT BOUND.
          CREATE OBJECT t169.
          t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t169->oval = t109.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t169 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d601_ac953f6bd165.
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
