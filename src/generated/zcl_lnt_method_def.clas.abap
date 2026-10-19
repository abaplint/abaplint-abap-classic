* TS: src/abap/2_statements/statements/method_def.ts:9:1 MethodDef
CLASS zcl_lnt_method_def DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_method_def IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp08| ).
    IF t4 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t9 TYPE REF TO object.
      t9 = t4.
      TRY.
          t3 ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t8 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t3 = t8->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t13.
    t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t13->sval = |DEFAULT|.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t19.
    t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t19->sval = |FAIL|.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = |IGNORE|.
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
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    t11 = zcl_lnt_st_combi_module=>seq( i_first = t13 i_second = t16 i_rest = t33 ).
    IF t11 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t39 TYPE REF TO object.
      t39 = t11.
      TRY.
          t10 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t38 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t10 = t38->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t42 TYPE REF TO zcl_lnt_iver_options.
    DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t47->has = abap_true.
    t47->value = |OpenABAP|.
    t42 = NEW zcl_lnt_iver_options( i_also = t47 ).
    CREATE OBJECT t42->zlnt_view_ownkeys_b0e8086400eb.
    t42->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t49 ).
    CREATE OBJECT t42->zlnt_json_ownkeys_70e5fd461788.
    t42->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t51 ).
    t1 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t10 i_opts = t42 ).
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = |FINAL|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t67 TYPE REF TO object.
      t67 = t1.
      TRY.
          t64 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t64 IS NOT BOUND.
        TRY.
            t66 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t64 = t66->source( ).
        ENDIF.
        IF t64 IS NOT BOUND.
          CREATE OBJECT t64.
          t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t64->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t68.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d87_b6ca272efa9462.
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t71->cval = t72.
    ENDIF.
    t68->load( ).
    APPEND t71 TO t68->items.
    t68->save( ).
    t59 = zcl_lnt_st_combi_module=>alt_prio( i_first = t61 i_second = t64 i_rest = t68 ).
    IF t59 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t78 TYPE REF TO object.
      t78 = t59.
      TRY.
          t58 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t58 IS NOT BOUND.
        TRY.
            t77 ?= t59.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t58 = t77->source( ).
        ENDIF.
        IF t58 IS NOT BOUND.
          CREATE OBJECT t58.
          t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t58->oval = t59.
        ENDIF.
      ENDIF.
    ENDIF.
    t57 = zcl_lnt_st_combi_module=>opt_prio( i_first = t58 ).
    IF t57 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t80 TYPE REF TO object.
      t80 = t57.
      TRY.
          t56 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t79 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t56 = t79->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d232_18850346ba57.
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t84->cval = t85.
    ENDIF.
    t83 = zcl_lnt_st_combi_module=>opt_prio( i_first = t84 ).
    IF t83 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t87 TYPE REF TO object.
      t87 = t83.
      TRY.
          t82 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t86 ?= t83.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t82 = t86->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t83.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t88.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = zlnt_runtime_desc_78196487750d=>zlnt_member_d231_5616e0c1afc0.
    IF t94 IS BOUND.
      CREATE OBJECT t93.
      t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t93->cval = t94.
    ENDIF.
    t92 = zcl_lnt_st_combi_module=>opt_prio( i_first = t93 ).
    IF t92 IS BOUND.
      DATA t95 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t96 TYPE REF TO object.
      t96 = t92.
      TRY.
          t91 ?= t96.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t91 IS NOT BOUND.
        TRY.
            t95 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t95 IS BOUND.
          t91 = t95->source( ).
        ENDIF.
        IF t91 IS NOT BOUND.
          CREATE OBJECT t91.
          t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t91->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    t88->load( ).
    APPEND t91 TO t88->items.
    t88->save( ).
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d227_3477e061b4c4.
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t100->cval = t101.
    ENDIF.
    t99 = zcl_lnt_st_combi_module=>opt_prio( i_first = t100 ).
    IF t99 IS BOUND.
      DATA t102 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t103 TYPE REF TO object.
      t103 = t99.
      TRY.
          t98 ?= t103.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t98 IS NOT BOUND.
        TRY.
            t102 ?= t99.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t102 IS BOUND.
          t98 = t102->source( ).
        ENDIF.
        IF t98 IS NOT BOUND.
          CREATE OBJECT t98.
          t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t98->oval = t99.
        ENDIF.
      ENDIF.
    ENDIF.
    t88->load( ).
    APPEND t98 TO t88->items.
    t88->save( ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca.
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t107->cval = t108.
    ENDIF.
    t106 = zcl_lnt_st_combi_module=>opt_prio( i_first = t107 ).
    IF t106 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t110 TYPE REF TO object.
      t110 = t106.
      TRY.
          t105 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t109 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t105 = t109->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    t88->load( ).
    APPEND t105 TO t88->items.
    t88->save( ).
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d233_66b4b8df8ddb.
    IF t118 IS BOUND.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t117->cval = t118.
    ENDIF.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t124) = zlnt_runtime_desc_78196487750d=>zlnt_member_d229_3a5c1215c384.
    IF t124 IS BOUND.
      CREATE OBJECT t123.
      t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t123->cval = t124.
    ENDIF.
    t121 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t123 ).
    IF t121 IS BOUND.
      DATA t125 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t126 TYPE REF TO object.
      t126 = t121.
      TRY.
          t120 ?= t126.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t125 ?= t121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t125 IS BOUND.
          t120 = t125->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t121.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t128.
    t115 = zcl_lnt_st_combi_module=>alt_prio( i_first = t117 i_second = t120 i_rest = t128 ).
    IF t115 IS BOUND.
      DATA t133 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t134 TYPE REF TO object.
      t134 = t115.
      TRY.
          t114 ?= t134.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t133 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t133 IS BOUND.
          t114 = t133->source( ).
        ENDIF.
        IF t114 IS NOT BOUND.
          CREATE OBJECT t114.
          t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t114->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    t113 = zcl_lnt_st_combi_module=>opt_prio( i_first = t114 ).
    IF t113 IS BOUND.
      DATA t135 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t136 TYPE REF TO object.
      t136 = t113.
      TRY.
          t112 ?= t136.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t135 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t135 IS BOUND.
          t112 = t135->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    t88->load( ).
    APPEND t112 TO t88->items.
    t88->save( ).
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t56 i_second = t82 i_rest = t88 ).
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d87_b6ca272efa9462.
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t146->cval = t147.
    ENDIF.
    t145 = zcl_lnt_st_combi_module=>opt_prio( i_first = t146 ).
    IF t145 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t149 TYPE REF TO object.
      t149 = t145.
      TRY.
          t144 ?= t149.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t144 IS NOT BOUND.
        TRY.
            t148 ?= t145.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t144 = t148->source( ).
        ENDIF.
        IF t144 IS NOT BOUND.
          CREATE OBJECT t144.
          t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t144->oval = t145.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t151.
    t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t151->sval = |FOR TESTING|.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t162) = zlnt_runtime_desc_78196487750d=>zlnt_member_d233_66b4b8df8ddb.
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t161->cval = t162.
    ENDIF.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t168) = zlnt_runtime_desc_78196487750d=>zlnt_member_d229_3a5c1215c384.
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t167->cval = t168.
    ENDIF.
    t165 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t167 ).
    IF t165 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t170 TYPE REF TO object.
      t170 = t165.
      TRY.
          t164 ?= t170.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t164 IS NOT BOUND.
        TRY.
            t169 ?= t165.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t164 = t169->source( ).
        ENDIF.
        IF t164 IS NOT BOUND.
          CREATE OBJECT t164.
          t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t164->oval = t165.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t172.
    t159 = zcl_lnt_st_combi_module=>alt_prio( i_first = t161 i_second = t164 i_rest = t172 ).
    IF t159 IS BOUND.
      DATA t177 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t178 TYPE REF TO object.
      t178 = t159.
      TRY.
          t158 ?= t178.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t158 IS NOT BOUND.
        TRY.
            t177 ?= t159.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t177 IS BOUND.
          t158 = t177->source( ).
        ENDIF.
        IF t158 IS NOT BOUND.
          CREATE OBJECT t158.
          t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t158->oval = t159.
        ENDIF.
      ENDIF.
    ENDIF.
    t157 = zcl_lnt_st_combi_module=>opt_prio( i_first = t158 ).
    IF t157 IS BOUND.
      DATA t179 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t180 TYPE REF TO object.
      t180 = t157.
      TRY.
          t156 ?= t180.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t156 IS NOT BOUND.
        TRY.
            t179 ?= t157.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t179 IS BOUND.
          t156 = t179->source( ).
        ENDIF.
        IF t156 IS NOT BOUND.
          CREATE OBJECT t156.
          t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t156->oval = t157.
        ENDIF.
      ENDIF.
    ENDIF.
    t153->load( ).
    APPEND t156 TO t153->items.
    t153->save( ).
    t141 = zcl_lnt_st_combi_module=>seq( i_first = t144 i_second = t151 i_rest = t153 ).
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t188.
    t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t188->sval = |RESULT|.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t192) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t192 IS BOUND.
      CREATE OBJECT t191.
      t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t191->cval = t192.
    ENDIF.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t194.
    t185 = zcl_lnt_st_combi_module=>seq( i_first = t188 i_second = t191 i_rest = t194 ).
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t202.
    t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t202->sval = |LINK|.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t206) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
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
    t216->sval = |FULL|.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t220) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t220 IS BOUND.
      CREATE OBJECT t219.
      t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t219->cval = t220.
    ENDIF.
    DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t222.
    t213 = zcl_lnt_st_combi_module=>seq( i_first = t216 i_second = t219 i_rest = t222 ).
    DATA t227 TYPE REF TO zif_lnt_statement_runnable.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t233.
    t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t233->sval = |FOR ACTION|.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t237) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t237 IS BOUND.
      CREATE OBJECT t236.
      t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t236->cval = t237.
    ENDIF.
    DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t238.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185 IS BOUND.
      DATA t245 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t246 TYPE REF TO object.
      t246 = t185.
      TRY.
          t243 ?= t246.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t243 IS NOT BOUND.
        TRY.
            t245 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t245 IS BOUND.
          t243 = t245->source( ).
        ENDIF.
        IF t243 IS NOT BOUND.
          CREATE OBJECT t243.
          t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t243->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t242 = zcl_lnt_st_combi_module=>opt_prio( i_first = t243 ).
    IF t242 IS BOUND.
      DATA t247 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t248 TYPE REF TO object.
      t248 = t242.
      TRY.
          t241 ?= t248.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t241 IS NOT BOUND.
        TRY.
            t247 ?= t242.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t247 IS BOUND.
          t241 = t247->source( ).
        ENDIF.
        IF t241 IS NOT BOUND.
          CREATE OBJECT t241.
          t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t241->oval = t242.
        ENDIF.
      ENDIF.
    ENDIF.
    t238->load( ).
    APPEND t241 TO t238->items.
    t238->save( ).
    t231 = zcl_lnt_st_combi_module=>seq( i_first = t233 i_second = t236 i_rest = t238 ).
    IF t231 IS BOUND.
      DATA t253 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t254 TYPE REF TO object.
      t254 = t231.
      TRY.
          t230 ?= t254.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t230 IS NOT BOUND.
        TRY.
            t253 ?= t231.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t253 IS BOUND.
          t230 = t253->source( ).
        ENDIF.
        IF t230 IS NOT BOUND.
          CREATE OBJECT t230.
          t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t230->oval = t231.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t257 TYPE REF TO zif_lnt_statement_runnable.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t259.
    t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t259->sval = |FOR CREATE|.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t263 TYPE REF TO zif_lnt_statement_runnable.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t266) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t266 IS BOUND.
      CREATE OBJECT t265.
      t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t265->cval = t266.
    ENDIF.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t269) = zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0.
    IF t269 IS BOUND.
      CREATE OBJECT t268.
      t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t268->cval = t269.
    ENDIF.
    DATA t271 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t271.
    t263 = zcl_lnt_st_combi_module=>alt( i_first = t265 i_second = t268 i_rest = t271 ).
    IF t263 IS BOUND.
      DATA t276 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t277 TYPE REF TO object.
      t277 = t263.
      TRY.
          t262 ?= t277.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t262 IS NOT BOUND.
        TRY.
            t276 ?= t263.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t276 IS BOUND.
          t262 = t276->source( ).
        ENDIF.
        IF t262 IS NOT BOUND.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t262->oval = t263.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t279.
    t257 = zcl_lnt_st_combi_module=>seq( i_first = t259 i_second = t262 i_rest = t279 ).
    IF t257 IS BOUND.
      DATA t284 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t285 TYPE REF TO object.
      t285 = t257.
      TRY.
          t256 ?= t285.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t256 IS NOT BOUND.
        TRY.
            t284 ?= t257.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t284 IS BOUND.
          t256 = t284->source( ).
        ENDIF.
        IF t256 IS NOT BOUND.
          CREATE OBJECT t256.
          t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t256->oval = t257.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t286.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t292.
    t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t292->sval = |FOR DELETE|.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t296) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t296 IS BOUND.
      CREATE OBJECT t295.
      t295->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t295->cval = t296.
    ENDIF.
    DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t298.
    t290 = zcl_lnt_st_combi_module=>seq( i_first = t292 i_second = t295 i_rest = t298 ).
    IF t290 IS BOUND.
      DATA t303 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t304 TYPE REF TO object.
      t304 = t290.
      TRY.
          t289 ?= t304.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t289 IS NOT BOUND.
        TRY.
            t303 ?= t290.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t303 IS BOUND.
          t289 = t303->source( ).
        ENDIF.
        IF t289 IS NOT BOUND.
          CREATE OBJECT t289.
          t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t289->oval = t290.
        ENDIF.
      ENDIF.
    ENDIF.
    t286->load( ).
    APPEND t289 TO t286->items.
    t286->save( ).
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t309.
    t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t309->sval = |FOR UPDATE|.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t313) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t313 IS BOUND.
      CREATE OBJECT t312.
      t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t312->cval = t313.
    ENDIF.
    DATA t315 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t315.
    t307 = zcl_lnt_st_combi_module=>seq( i_first = t309 i_second = t312 i_rest = t315 ).
    IF t307 IS BOUND.
      DATA t320 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t321 TYPE REF TO object.
      t321 = t307.
      TRY.
          t306 ?= t321.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t306 IS NOT BOUND.
        TRY.
            t320 ?= t307.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t320 IS BOUND.
          t306 = t320->source( ).
        ENDIF.
        IF t306 IS NOT BOUND.
          CREATE OBJECT t306.
          t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t306->oval = t307.
        ENDIF.
      ENDIF.
    ENDIF.
    t286->load( ).
    APPEND t306 TO t286->items.
    t286->save( ).
    t227 = zcl_lnt_st_combi_module=>alt( i_first = t230 i_second = t256 i_rest = t286 ).
    DATA t326 TYPE REF TO zif_lnt_statement_runnable.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t329.
    t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t329->sval = |FOR READ|.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t336) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t336 IS BOUND.
      CREATE OBJECT t335.
      t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t335->cval = t336.
    ENDIF.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t339) = zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0.
    IF t339 IS BOUND.
      CREATE OBJECT t338.
      t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t338->cval = t339.
    ENDIF.
    DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t341.
    t333 = zcl_lnt_st_combi_module=>alt( i_first = t335 i_second = t338 i_rest = t341 ).
    IF t333 IS BOUND.
      DATA t346 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t347 TYPE REF TO object.
      t347 = t333.
      TRY.
          t332 ?= t347.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t332 IS NOT BOUND.
        TRY.
            t346 ?= t333.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t346 IS BOUND.
          t332 = t346->source( ).
        ENDIF.
        IF t332 IS NOT BOUND.
          CREATE OBJECT t332.
          t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t332->oval = t333.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t348.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t352 TYPE REF TO zif_lnt_statement_runnable.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t213 IS BOUND.
      DATA t355 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t356 TYPE REF TO object.
      t356 = t213.
      TRY.
          t353 ?= t356.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t353 IS NOT BOUND.
        TRY.
            t355 ?= t213.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t355 IS BOUND.
          t353 = t355->source( ).
        ENDIF.
        IF t353 IS NOT BOUND.
          CREATE OBJECT t353.
          t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t353->oval = t213.
        ENDIF.
      ENDIF.
    ENDIF.
    t352 = zcl_lnt_st_combi_module=>opt_prio( i_first = t353 ).
    IF t352 IS BOUND.
      DATA t357 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t358 TYPE REF TO object.
      t358 = t352.
      TRY.
          t351 ?= t358.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t351 IS NOT BOUND.
        TRY.
            t357 ?= t352.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t357 IS BOUND.
          t351 = t357->source( ).
        ENDIF.
        IF t351 IS NOT BOUND.
          CREATE OBJECT t351.
          t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t351->oval = t352.
        ENDIF.
      ENDIF.
    ENDIF.
    t348->load( ).
    APPEND t351 TO t348->items.
    t348->save( ).
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185 IS BOUND.
      DATA t362 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t363 TYPE REF TO object.
      t363 = t185.
      TRY.
          t360 ?= t363.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t360 IS NOT BOUND.
        TRY.
            t362 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t362 IS BOUND.
          t360 = t362->source( ).
        ENDIF.
        IF t360 IS NOT BOUND.
          CREATE OBJECT t360.
          t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t360->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t348->load( ).
    APPEND t360 TO t348->items.
    t348->save( ).
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t366 TYPE REF TO zif_lnt_statement_runnable.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t199 IS BOUND.
      DATA t369 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t370 TYPE REF TO object.
      t370 = t199.
      TRY.
          t367 ?= t370.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t367 IS NOT BOUND.
        TRY.
            t369 ?= t199.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t369 IS BOUND.
          t367 = t369->source( ).
        ENDIF.
        IF t367 IS NOT BOUND.
          CREATE OBJECT t367.
          t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t367->oval = t199.
        ENDIF.
      ENDIF.
    ENDIF.
    t366 = zcl_lnt_st_combi_module=>opt_prio( i_first = t367 ).
    IF t366 IS BOUND.
      DATA t371 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t372 TYPE REF TO object.
      t372 = t366.
      TRY.
          t365 ?= t372.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t365 IS NOT BOUND.
        TRY.
            t371 ?= t366.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t371 IS BOUND.
          t365 = t371->source( ).
        ENDIF.
        IF t365 IS NOT BOUND.
          CREATE OBJECT t365.
          t365->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t365->oval = t366.
        ENDIF.
      ENDIF.
    ENDIF.
    t348->load( ).
    APPEND t365 TO t348->items.
    t348->save( ).
    t326 = zcl_lnt_st_combi_module=>seq( i_first = t329 i_second = t332 i_rest = t348 ).
    DATA t377 TYPE REF TO zif_lnt_statement_runnable.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t380.
    t380->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t380->sval = |FOR FUNCTION|.
    DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t384) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t384 IS BOUND.
      CREATE OBJECT t383.
      t383->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t383->cval = t384.
    ENDIF.
    DATA t385 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t385.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185 IS BOUND.
      DATA t390 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t391 TYPE REF TO object.
      t391 = t185.
      TRY.
          t388 ?= t391.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t388 IS NOT BOUND.
        TRY.
            t390 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t390 IS BOUND.
          t388 = t390->source( ).
        ENDIF.
        IF t388 IS NOT BOUND.
          CREATE OBJECT t388.
          t388->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t388->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t385->load( ).
    APPEND t388 TO t385->items.
    t385->save( ).
    t377 = zcl_lnt_st_combi_module=>seq( i_first = t380 i_second = t383 i_rest = t385 ).
    DATA t396 TYPE REF TO zif_lnt_statement_runnable.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t399.
    t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t399->sval = |REFERENCE|.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t403 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t404) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t403 = zcl_lnt_st_combi_module=>tok( i_t = t404 ).
    IF t403 IS BOUND.
      DATA t405 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t406 TYPE REF TO object.
      t406 = t403.
      TRY.
          t402 ?= t406.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t402 IS NOT BOUND.
        TRY.
            t405 ?= t403.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t405 IS BOUND.
          t402 = t405->source( ).
        ENDIF.
        IF t402 IS NOT BOUND.
          CREATE OBJECT t402.
          t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t402->oval = t403.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t407 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t407.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t411) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t411 IS BOUND.
      CREATE OBJECT t410.
      t410->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t410->cval = t411.
    ENDIF.
    t407->load( ).
    APPEND t410 TO t407->items.
    t407->save( ).
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t414 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t415) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t414 = zcl_lnt_st_combi_module=>tok( i_t = t415 ).
    IF t414 IS BOUND.
      DATA t416 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t417 TYPE REF TO object.
      t417 = t414.
      TRY.
          t413 ?= t417.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t413 IS NOT BOUND.
        TRY.
            t416 ?= t414.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t416 IS BOUND.
          t413 = t416->source( ).
        ENDIF.
        IF t413 IS NOT BOUND.
          CREATE OBJECT t413.
          t413->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t413->oval = t414.
        ENDIF.
      ENDIF.
    ENDIF.
    t407->load( ).
    APPEND t413 TO t407->items.
    t407->save( ).
    t396 = zcl_lnt_st_combi_module=>seq( i_first = t399 i_second = t402 i_rest = t407 ).
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t426 TYPE REF TO zif_lnt_statement_runnable.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396 IS BOUND.
      DATA t430 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t431 TYPE REF TO object.
      t431 = t396.
      TRY.
          t428 ?= t431.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t428 IS NOT BOUND.
        TRY.
            t430 ?= t396.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t430 IS BOUND.
          t428 = t430->source( ).
        ENDIF.
        IF t428 IS NOT BOUND.
          CREATE OBJECT t428.
          t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t428->oval = t396.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t434) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t434 IS BOUND.
      CREATE OBJECT t433.
      t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t433->cval = t434.
    ENDIF.
    DATA t436 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t436.
    t426 = zcl_lnt_st_combi_module=>alt_prio( i_first = t428 i_second = t433 i_rest = t436 ).
    IF t426 IS BOUND.
      DATA t441 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t442 TYPE REF TO object.
      t442 = t426.
      TRY.
          t425 ?= t442.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t425 IS NOT BOUND.
        TRY.
            t441 ?= t426.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t441 IS BOUND.
          t425 = t441->source( ).
        ENDIF.
        IF t425 IS NOT BOUND.
          CREATE OBJECT t425.
          t425->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t425->oval = t426.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t444.
    t444->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t444->sval = |FOR|.
    DATA t446 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t446.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t450) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t450 IS BOUND.
      CREATE OBJECT t449.
      t449->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t449->cval = t450.
    ENDIF.
    t446->load( ).
    APPEND t449 TO t446->items.
    t446->save( ).
    t422 = zcl_lnt_st_combi_module=>seq( i_first = t425 i_second = t444 i_rest = t446 ).
    DATA t455 TYPE REF TO zif_lnt_statement_runnable.
    DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t459 TYPE REF TO zif_lnt_statement_runnable.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t460.
    t460->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t460->sval = |FINAL|.
    t459 = zcl_lnt_st_combi_module=>opt_prio( i_first = t460 ).
    IF t459 IS BOUND.
      DATA t462 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t463 TYPE REF TO object.
      t463 = t459.
      TRY.
          t458 ?= t463.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t458 IS NOT BOUND.
        TRY.
            t462 ?= t459.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t462 IS BOUND.
          t458 = t462->source( ).
        ENDIF.
        IF t458 IS NOT BOUND.
          CREATE OBJECT t458.
          t458->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t458->oval = t459.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t465.
    t465->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t465->sval = |FOR ENTITY EVENT|.
    DATA t467 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t467.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t471 TYPE REF TO zif_lnt_statement_runnable.
    DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t472.
    t472->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t472->sval = |IMPORTING|.
    t471 = zcl_lnt_st_combi_module=>opt_prio( i_first = t472 ).
    IF t471 IS BOUND.
      DATA t474 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t475 TYPE REF TO object.
      t475 = t471.
      TRY.
          t470 ?= t475.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t470 IS NOT BOUND.
        TRY.
            t474 ?= t471.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t474 IS BOUND.
          t470 = t474->source( ).
        ENDIF.
        IF t470 IS NOT BOUND.
          CREATE OBJECT t470.
          t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t470->oval = t471.
        ENDIF.
      ENDIF.
    ENDIF.
    t467->load( ).
    APPEND t470 TO t467->items.
    t467->save( ).
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t478 TYPE REF TO zif_lnt_statement_runnable.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t422 IS BOUND.
      DATA t481 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t482 TYPE REF TO object.
      t482 = t422.
      TRY.
          t479 ?= t482.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t479 IS NOT BOUND.
        TRY.
            t481 ?= t422.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t481 IS BOUND.
          t479 = t481->source( ).
        ENDIF.
        IF t479 IS NOT BOUND.
          CREATE OBJECT t479.
          t479->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t479->oval = t422.
        ENDIF.
      ENDIF.
    ENDIF.
    t478 = zcl_lnt_st_combi_module=>plus( i_first = t479 ).
    IF t478 IS BOUND.
      DATA t483 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t484 TYPE REF TO object.
      t484 = t478.
      TRY.
          t477 ?= t484.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t477 IS NOT BOUND.
        TRY.
            t483 ?= t478.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t483 IS BOUND.
          t477 = t483->source( ).
        ENDIF.
        IF t477 IS NOT BOUND.
          CREATE OBJECT t477.
          t477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t477->oval = t478.
        ENDIF.
      ENDIF.
    ENDIF.
    t467->load( ).
    APPEND t477 TO t467->items.
    t467->save( ).
    t455 = zcl_lnt_st_combi_module=>seq( i_first = t458 i_second = t465 i_rest = t467 ).
    DATA t489 TYPE REF TO zif_lnt_statement_runnable.
    DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t492.
    t492->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t492->sval = |DDL OBJECT OPTIONS CDS SESSION CLIENT REQUIRED|.
    DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t496 TYPE REF TO zif_lnt_statement_runnable.
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t498.
    t498->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t498->sval = |TABLE FUNCTION|.
    DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t502) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t502 IS BOUND.
      CREATE OBJECT t501.
      t501->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t501->cval = t502.
    ENDIF.
    DATA t504 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t504.
    t496 = zcl_lnt_st_combi_module=>seq( i_first = t498 i_second = t501 i_rest = t504 ).
    IF t496 IS BOUND.
      DATA t509 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t510 TYPE REF TO object.
      t510 = t496.
      TRY.
          t495 ?= t510.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t495 IS NOT BOUND.
        TRY.
            t509 ?= t496.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t509 IS BOUND.
          t495 = t509->source( ).
        ENDIF.
        IF t495 IS NOT BOUND.
          CREATE OBJECT t495.
          t495->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t495->oval = t496.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t511 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t511.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t515 TYPE REF TO zif_lnt_statement_runnable.
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t517.
    t517->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t517->sval = |VALIDATE ON SAVE IMPORTING|.
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t521) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t521 IS BOUND.
      CREATE OBJECT t520.
      t520->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t520->cval = t521.
    ENDIF.
    DATA t522 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t522.
    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t525.
    t525->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t525->sval = |FOR|.
    t522->load( ).
    APPEND t525 TO t522->items.
    t522->save( ).
    DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t529) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t529 IS BOUND.
      CREATE OBJECT t528.
      t528->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t528->cval = t529.
    ENDIF.
    t522->load( ).
    APPEND t528 TO t522->items.
    t522->save( ).
    t515 = zcl_lnt_st_combi_module=>seq( i_first = t517 i_second = t520 i_rest = t522 ).
    IF t515 IS BOUND.
      DATA t534 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t535 TYPE REF TO object.
      t535 = t515.
      TRY.
          t514 ?= t535.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t514 IS NOT BOUND.
        TRY.
            t534 ?= t515.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t534 IS BOUND.
          t514 = t534->source( ).
        ENDIF.
        IF t514 IS NOT BOUND.
          CREATE OBJECT t514.
          t514->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t514->oval = t515.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t514 TO t511->items.
    t511->save( ).
    DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t538 TYPE REF TO zif_lnt_statement_runnable.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t540.
    t540->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t540->sval = |MODIFY|.
    DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t544 TYPE REF TO zif_lnt_statement_runnable.
    DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t545.
    t545->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t545->sval = |IMPORTING|.
    t544 = zcl_lnt_st_combi_module=>opt( i_first = t545 ).
    IF t544 IS BOUND.
      DATA t547 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t548 TYPE REF TO object.
      t548 = t544.
      TRY.
          t543 ?= t548.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t543 IS NOT BOUND.
        TRY.
            t547 ?= t544.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t547 IS BOUND.
          t543 = t547->source( ).
        ENDIF.
        IF t543 IS NOT BOUND.
          CREATE OBJECT t543.
          t543->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t543->oval = t544.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t549 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t549.
    DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t553 TYPE REF TO zif_lnt_statement_runnable.
    DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t555 TYPE REF TO zif_lnt_statement_runnable.
    DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t558) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t558 IS BOUND.
      CREATE OBJECT t557.
      t557->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t557->cval = t558.
    ENDIF.
    DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t227 IS BOUND.
      DATA t562 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t563 TYPE REF TO object.
      t563 = t227.
      TRY.
          t560 ?= t563.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t560 IS NOT BOUND.
        TRY.
            t562 ?= t227.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t562 IS BOUND.
          t560 = t562->source( ).
        ENDIF.
        IF t560 IS NOT BOUND.
          CREATE OBJECT t560.
          t560->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t560->oval = t227.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t565 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t565.
    t555 = zcl_lnt_st_combi_module=>seq( i_first = t557 i_second = t560 i_rest = t565 ).
    IF t555 IS BOUND.
      DATA t570 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t571 TYPE REF TO object.
      t571 = t555.
      TRY.
          t554 ?= t571.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t554 IS NOT BOUND.
        TRY.
            t570 ?= t555.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t570 IS BOUND.
          t554 = t570->source( ).
        ENDIF.
        IF t554 IS NOT BOUND.
          CREATE OBJECT t554.
          t554->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t554->oval = t555.
        ENDIF.
      ENDIF.
    ENDIF.
    t553 = zcl_lnt_st_combi_module=>plus( i_first = t554 ).
    IF t553 IS BOUND.
      DATA t572 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t573 TYPE REF TO object.
      t573 = t553.
      TRY.
          t552 ?= t573.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t552 IS NOT BOUND.
        TRY.
            t572 ?= t553.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t572 IS BOUND.
          t552 = t572->source( ).
        ENDIF.
        IF t552 IS NOT BOUND.
          CREATE OBJECT t552.
          t552->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t552->oval = t553.
        ENDIF.
      ENDIF.
    ENDIF.
    t549->load( ).
    APPEND t552 TO t549->items.
    t549->save( ).
    t538 = zcl_lnt_st_combi_module=>seq( i_first = t540 i_second = t543 i_rest = t549 ).
    IF t538 IS BOUND.
      DATA t578 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t579 TYPE REF TO object.
      t579 = t538.
      TRY.
          t537 ?= t579.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t537 IS NOT BOUND.
        TRY.
            t578 ?= t538.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t578 IS BOUND.
          t537 = t578->source( ).
        ENDIF.
        IF t537 IS NOT BOUND.
          CREATE OBJECT t537.
          t537->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t537->oval = t538.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t537 TO t511->items.
    t511->save( ).
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t582 TYPE REF TO zif_lnt_statement_runnable.
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t584.
    t584->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t584->sval = |PRECHECK IMPORTING|.
    DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t588) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t588 IS BOUND.
      CREATE OBJECT t587.
      t587->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t587->cval = t588.
    ENDIF.
    DATA t589 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t589.
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t227 IS BOUND.
      DATA t594 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t595 TYPE REF TO object.
      t595 = t227.
      TRY.
          t592 ?= t595.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t592 IS NOT BOUND.
        TRY.
            t594 ?= t227.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t594 IS BOUND.
          t592 = t594->source( ).
        ENDIF.
        IF t592 IS NOT BOUND.
          CREATE OBJECT t592.
          t592->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t592->oval = t227.
        ENDIF.
      ENDIF.
    ENDIF.
    t589->load( ).
    APPEND t592 TO t589->items.
    t589->save( ).
    t582 = zcl_lnt_st_combi_module=>seq( i_first = t584 i_second = t587 i_rest = t589 ).
    IF t582 IS BOUND.
      DATA t600 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t601 TYPE REF TO object.
      t601 = t582.
      TRY.
          t581 ?= t601.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t581 IS NOT BOUND.
        TRY.
            t600 ?= t582.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t600 IS BOUND.
          t581 = t600->source( ).
        ENDIF.
        IF t581 IS NOT BOUND.
          CREATE OBJECT t581.
          t581->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t581->oval = t582.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t581 TO t511->items.
    t511->save( ).
    DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t604 TYPE REF TO zif_lnt_statement_runnable.
    DATA t606 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t606.
    t606->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t606->sval = |DETERMINATION|.
    DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t610) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t610 IS BOUND.
      CREATE OBJECT t609.
      t609->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t609->cval = t610.
    ENDIF.
    DATA t611 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t611.
    DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t614.
    t614->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t614->sval = |IMPORTING|.
    t611->load( ).
    APPEND t614 TO t611->items.
    t611->save( ).
    DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t618) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t618 IS BOUND.
      CREATE OBJECT t617.
      t617->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t617->cval = t618.
    ENDIF.
    t611->load( ).
    APPEND t617 TO t611->items.
    t611->save( ).
    DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t620.
    t620->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t620->sval = |FOR|.
    t611->load( ).
    APPEND t620 TO t611->items.
    t611->save( ).
    DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t624) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t624 IS BOUND.
      CREATE OBJECT t623.
      t623->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t623->cval = t624.
    ENDIF.
    t611->load( ).
    APPEND t623 TO t611->items.
    t611->save( ).
    t604 = zcl_lnt_st_combi_module=>seq( i_first = t606 i_second = t609 i_rest = t611 ).
    IF t604 IS BOUND.
      DATA t629 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t630 TYPE REF TO object.
      t630 = t604.
      TRY.
          t603 ?= t630.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t603 IS NOT BOUND.
        TRY.
            t629 ?= t604.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t629 IS BOUND.
          t603 = t629->source( ).
        ENDIF.
        IF t603 IS NOT BOUND.
          CREATE OBJECT t603.
          t603->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t603->oval = t604.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t603 TO t511->items.
    t511->save( ).
    DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t633 TYPE REF TO zif_lnt_statement_runnable.
    DATA t635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t635.
    t635->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t635->sval = |VALIDATION|.
    DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t639) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t639 IS BOUND.
      CREATE OBJECT t638.
      t638->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t638->cval = t639.
    ENDIF.
    DATA t640 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t640.
    DATA t643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t643.
    t643->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t643->sval = |IMPORTING|.
    t640->load( ).
    APPEND t643 TO t640->items.
    t640->save( ).
    DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t647) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t647 IS BOUND.
      CREATE OBJECT t646.
      t646->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t646->cval = t647.
    ENDIF.
    t640->load( ).
    APPEND t646 TO t640->items.
    t640->save( ).
    DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t649.
    t649->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t649->sval = |FOR|.
    t640->load( ).
    APPEND t649 TO t640->items.
    t640->save( ).
    DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t653) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t653 IS BOUND.
      CREATE OBJECT t652.
      t652->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t652->cval = t653.
    ENDIF.
    t640->load( ).
    APPEND t652 TO t640->items.
    t640->save( ).
    t633 = zcl_lnt_st_combi_module=>seq( i_first = t635 i_second = t638 i_rest = t640 ).
    IF t633 IS BOUND.
      DATA t658 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t659 TYPE REF TO object.
      t659 = t633.
      TRY.
          t632 ?= t659.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t632 IS NOT BOUND.
        TRY.
            t658 ?= t633.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t658 IS BOUND.
          t632 = t658->source( ).
        ENDIF.
        IF t632 IS NOT BOUND.
          CREATE OBJECT t632.
          t632->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t632->oval = t633.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t632 TO t511->items.
    t511->save( ).
    DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t662 TYPE REF TO zif_lnt_statement_runnable.
    DATA t664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t664.
    t664->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t664->sval = |NUMBERING IMPORTING|.
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t668) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t668 IS BOUND.
      CREATE OBJECT t667.
      t667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t667->cval = t668.
    ENDIF.
    DATA t669 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t669.
    DATA t672 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t227 IS BOUND.
      DATA t674 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t675 TYPE REF TO object.
      t675 = t227.
      TRY.
          t672 ?= t675.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t672 IS NOT BOUND.
        TRY.
            t674 ?= t227.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t674 IS BOUND.
          t672 = t674->source( ).
        ENDIF.
        IF t672 IS NOT BOUND.
          CREATE OBJECT t672.
          t672->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t672->oval = t227.
        ENDIF.
      ENDIF.
    ENDIF.
    t669->load( ).
    APPEND t672 TO t669->items.
    t669->save( ).
    t662 = zcl_lnt_st_combi_module=>seq( i_first = t664 i_second = t667 i_rest = t669 ).
    IF t662 IS BOUND.
      DATA t680 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t681 TYPE REF TO object.
      t681 = t662.
      TRY.
          t661 ?= t681.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t661 IS NOT BOUND.
        TRY.
            t680 ?= t662.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t680 IS BOUND.
          t661 = t680->source( ).
        ENDIF.
        IF t661 IS NOT BOUND.
          CREATE OBJECT t661.
          t661->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t661->oval = t662.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t661 TO t511->items.
    t511->save( ).
    DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t684 TYPE REF TO zif_lnt_statement_runnable.
    DATA t686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t686.
    t686->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t686->sval = |READ IMPORTING|.
    DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t690) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t690 IS BOUND.
      CREATE OBJECT t689.
      t689->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t689->cval = t690.
    ENDIF.
    DATA t691 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t691.
    DATA t694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t695 TYPE REF TO zif_lnt_statement_runnable.
    DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t326 IS BOUND.
      DATA t699 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t700 TYPE REF TO object.
      t700 = t326.
      TRY.
          t697 ?= t700.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t697 IS NOT BOUND.
        TRY.
            t699 ?= t326.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t699 IS BOUND.
          t697 = t699->source( ).
        ENDIF.
        IF t697 IS NOT BOUND.
          CREATE OBJECT t697.
          t697->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t697->oval = t326.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t377 IS BOUND.
      DATA t704 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t705 TYPE REF TO object.
      t705 = t377.
      TRY.
          t702 ?= t705.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t702 IS NOT BOUND.
        TRY.
            t704 ?= t377.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t704 IS BOUND.
          t702 = t704->source( ).
        ENDIF.
        IF t702 IS NOT BOUND.
          CREATE OBJECT t702.
          t702->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t702->oval = t377.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t707 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t707.
    t695 = zcl_lnt_st_combi_module=>alt_prio( i_first = t697 i_second = t702 i_rest = t707 ).
    IF t695 IS BOUND.
      DATA t712 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t713 TYPE REF TO object.
      t713 = t695.
      TRY.
          t694 ?= t713.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t694 IS NOT BOUND.
        TRY.
            t712 ?= t695.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t712 IS BOUND.
          t694 = t712->source( ).
        ENDIF.
        IF t694 IS NOT BOUND.
          CREATE OBJECT t694.
          t694->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t694->oval = t695.
        ENDIF.
      ENDIF.
    ENDIF.
    t691->load( ).
    APPEND t694 TO t691->items.
    t691->save( ).
    t684 = zcl_lnt_st_combi_module=>seq( i_first = t686 i_second = t689 i_rest = t691 ).
    IF t684 IS BOUND.
      DATA t718 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t719 TYPE REF TO object.
      t719 = t684.
      TRY.
          t683 ?= t719.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t683 IS NOT BOUND.
        TRY.
            t718 ?= t684.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t718 IS BOUND.
          t683 = t718->source( ).
        ENDIF.
        IF t683 IS NOT BOUND.
          CREATE OBJECT t683.
          t683->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t683->oval = t684.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t683 TO t511->items.
    t511->save( ).
    DATA t721 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t722 TYPE REF TO zif_lnt_statement_runnable.
    DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t724.
    t724->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t724->sval = |FEATURES IMPORTING|.
    DATA t727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t728) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t728 IS BOUND.
      CREATE OBJECT t727.
      t727->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t727->cval = t728.
    ENDIF.
    DATA t729 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t729.
    DATA t732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t732.
    t732->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t732->sval = |REQUEST|.
    t729->load( ).
    APPEND t732 TO t729->items.
    t729->save( ).
    DATA t735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t736) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t736 IS BOUND.
      CREATE OBJECT t735.
      t735->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t735->cval = t736.
    ENDIF.
    t729->load( ).
    APPEND t735 TO t729->items.
    t729->save( ).
    DATA t738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t738.
    t738->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t738->sval = |FOR|.
    t729->load( ).
    APPEND t738 TO t729->items.
    t729->save( ).
    DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t742) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t742 IS BOUND.
      CREATE OBJECT t741.
      t741->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t741->cval = t742.
    ENDIF.
    t729->load( ).
    APPEND t741 TO t729->items.
    t729->save( ).
    DATA t744 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185 IS BOUND.
      DATA t746 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t747 TYPE REF TO object.
      t747 = t185.
      TRY.
          t744 ?= t747.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t744 IS NOT BOUND.
        TRY.
            t746 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t746 IS BOUND.
          t744 = t746->source( ).
        ENDIF.
        IF t744 IS NOT BOUND.
          CREATE OBJECT t744.
          t744->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t744->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t729->load( ).
    APPEND t744 TO t729->items.
    t729->save( ).
    t722 = zcl_lnt_st_combi_module=>seq( i_first = t724 i_second = t727 i_rest = t729 ).
    IF t722 IS BOUND.
      DATA t752 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t753 TYPE REF TO object.
      t753 = t722.
      TRY.
          t721 ?= t753.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t721 IS NOT BOUND.
        TRY.
            t752 ?= t722.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t752 IS BOUND.
          t721 = t752->source( ).
        ENDIF.
        IF t721 IS NOT BOUND.
          CREATE OBJECT t721.
          t721->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t721->oval = t722.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t721 TO t511->items.
    t511->save( ).
    DATA t755 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t756 TYPE REF TO zif_lnt_statement_runnable.
    DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t758.
    t758->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t758->sval = |BEHAVIOR IMPORTING|.
    DATA t761 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t762) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t762 IS BOUND.
      CREATE OBJECT t761.
      t761->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t761->cval = t762.
    ENDIF.
    DATA t763 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t763.
    DATA t766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t766.
    t766->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t766->sval = |FOR CREATE|.
    t763->load( ).
    APPEND t766 TO t763->items.
    t763->save( ).
    DATA t769 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t770) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t770 IS BOUND.
      CREATE OBJECT t769.
      t769->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t769->cval = t770.
    ENDIF.
    t763->load( ).
    APPEND t769 TO t763->items.
    t763->save( ).
    DATA t772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t773) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t773 IS BOUND.
      CREATE OBJECT t772.
      t772->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t772->cval = t773.
    ENDIF.
    t763->load( ).
    APPEND t772 TO t763->items.
    t763->save( ).
    DATA t775 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t775.
    t775->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t775->sval = |FOR UPDATE|.
    t763->load( ).
    APPEND t775 TO t763->items.
    t763->save( ).
    DATA t778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t779) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t779 IS BOUND.
      CREATE OBJECT t778.
      t778->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t778->cval = t779.
    ENDIF.
    t763->load( ).
    APPEND t778 TO t763->items.
    t763->save( ).
    DATA t781 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t782) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t782 IS BOUND.
      CREATE OBJECT t781.
      t781->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t781->cval = t782.
    ENDIF.
    t763->load( ).
    APPEND t781 TO t763->items.
    t763->save( ).
    DATA t784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t784.
    t784->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t784->sval = |FOR DELETE|.
    t763->load( ).
    APPEND t784 TO t763->items.
    t763->save( ).
    DATA t787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t788) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t788 IS BOUND.
      CREATE OBJECT t787.
      t787->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t787->cval = t788.
    ENDIF.
    t763->load( ).
    APPEND t787 TO t763->items.
    t763->save( ).
    t756 = zcl_lnt_st_combi_module=>seq( i_first = t758 i_second = t761 i_rest = t763 ).
    IF t756 IS BOUND.
      DATA t793 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t794 TYPE REF TO object.
      t794 = t756.
      TRY.
          t755 ?= t794.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t755 IS NOT BOUND.
        TRY.
            t793 ?= t756.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t793 IS BOUND.
          t755 = t793->source( ).
        ENDIF.
        IF t755 IS NOT BOUND.
          CREATE OBJECT t755.
          t755->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t755->oval = t756.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t755 TO t511->items.
    t511->save( ).
    DATA t796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t797 TYPE REF TO zif_lnt_statement_runnable.
    DATA t799 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t799.
    t799->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t799->sval = |BEHAVIOR IMPORTING|.
    DATA t802 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t803) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t803 IS BOUND.
      CREATE OBJECT t802.
      t802->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t802->cval = t803.
    ENDIF.
    DATA t804 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t804.
    DATA t807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t807.
    t807->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t807->sval = |FOR READ|.
    t804->load( ).
    APPEND t807 TO t804->items.
    t804->save( ).
    DATA t810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t811) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t811 IS BOUND.
      CREATE OBJECT t810.
      t810->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t810->cval = t811.
    ENDIF.
    t804->load( ).
    APPEND t810 TO t804->items.
    t804->save( ).
    DATA t813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185 IS BOUND.
      DATA t815 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t816 TYPE REF TO object.
      t816 = t185.
      TRY.
          t813 ?= t816.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t813 IS NOT BOUND.
        TRY.
            t815 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t815 IS BOUND.
          t813 = t815->source( ).
        ENDIF.
        IF t813 IS NOT BOUND.
          CREATE OBJECT t813.
          t813->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t813->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t804->load( ).
    APPEND t813 TO t804->items.
    t804->save( ).
    t797 = zcl_lnt_st_combi_module=>seq( i_first = t799 i_second = t802 i_rest = t804 ).
    IF t797 IS BOUND.
      DATA t821 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t822 TYPE REF TO object.
      t822 = t797.
      TRY.
          t796 ?= t822.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t796 IS NOT BOUND.
        TRY.
            t821 ?= t797.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t821 IS BOUND.
          t796 = t821->source( ).
        ENDIF.
        IF t796 IS NOT BOUND.
          CREATE OBJECT t796.
          t796->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t796->oval = t797.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t796 TO t511->items.
    t511->save( ).
    DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t825 TYPE REF TO zif_lnt_statement_runnable.
    DATA t827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t827.
    t827->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t827->sval = |BEHAVIOR IMPORTING|.
    DATA t830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t831) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t831 IS BOUND.
      CREATE OBJECT t830.
      t830->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t830->cval = t831.
    ENDIF.
    DATA t832 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t832.
    DATA t835 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t835.
    t835->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t835->sval = |FOR UPDATE|.
    t832->load( ).
    APPEND t835 TO t832->items.
    t832->save( ).
    DATA t838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t839) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t839 IS BOUND.
      CREATE OBJECT t838.
      t838->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t838->cval = t839.
    ENDIF.
    t832->load( ).
    APPEND t838 TO t832->items.
    t832->save( ).
    t825 = zcl_lnt_st_combi_module=>seq( i_first = t827 i_second = t830 i_rest = t832 ).
    IF t825 IS BOUND.
      DATA t844 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t845 TYPE REF TO object.
      t845 = t825.
      TRY.
          t824 ?= t845.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t824 IS NOT BOUND.
        TRY.
            t844 ?= t825.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t844 IS BOUND.
          t824 = t844->source( ).
        ENDIF.
        IF t824 IS NOT BOUND.
          CREATE OBJECT t824.
          t824->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t824->oval = t825.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t824 TO t511->items.
    t511->save( ).
    DATA t847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t848 TYPE REF TO zif_lnt_statement_runnable.
    DATA t850 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t851 TYPE REF TO zif_lnt_statement_runnable.
    DATA t853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t853.
    t853->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t853->sval = |BEHAVIOR|.
    DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t856.
    t856->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t856->sval = |LOCK|.
    DATA t859 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t859.
    t851 = zcl_lnt_st_combi_module=>alt( i_first = t853 i_second = t856 i_rest = t859 ).
    IF t851 IS BOUND.
      DATA t864 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t865 TYPE REF TO object.
      t865 = t851.
      TRY.
          t850 ?= t865.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t850 IS NOT BOUND.
        TRY.
            t864 ?= t851.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t864 IS BOUND.
          t850 = t864->source( ).
        ENDIF.
        IF t850 IS NOT BOUND.
          CREATE OBJECT t850.
          t850->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t850->oval = t851.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t867.
    t867->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t867->sval = |IMPORTING|.
    DATA t869 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t869.
    DATA t872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t873) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t873 IS BOUND.
      CREATE OBJECT t872.
      t872->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t872->cval = t873.
    ENDIF.
    t869->load( ).
    APPEND t872 TO t869->items.
    t869->save( ).
    DATA t875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t875.
    t875->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t875->sval = |FOR LOCK|.
    t869->load( ).
    APPEND t875 TO t869->items.
    t869->save( ).
    DATA t878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t879) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t879 IS BOUND.
      CREATE OBJECT t878.
      t878->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t878->cval = t879.
    ENDIF.
    t869->load( ).
    APPEND t878 TO t869->items.
    t869->save( ).
    t848 = zcl_lnt_st_combi_module=>seq( i_first = t850 i_second = t867 i_rest = t869 ).
    IF t848 IS BOUND.
      DATA t884 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t885 TYPE REF TO object.
      t885 = t848.
      TRY.
          t847 ?= t885.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t847 IS NOT BOUND.
        TRY.
            t884 ?= t848.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t884 IS BOUND.
          t847 = t884->source( ).
        ENDIF.
        IF t847 IS NOT BOUND.
          CREATE OBJECT t847.
          t847->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t847->oval = t848.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t847 TO t511->items.
    t511->save( ).
    DATA t887 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t888 TYPE REF TO zif_lnt_statement_runnable.
    DATA t890 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t890.
    t890->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t890->sval = |DETERMINE|.
    DATA t893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t894 TYPE REF TO zif_lnt_statement_runnable.
    DATA t896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t896.
    t896->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t896->sval = |ON MODIFY|.
    DATA t899 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t899.
    t899->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t899->sval = |ON SAVE|.
    DATA t902 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t902.
    t894 = zcl_lnt_st_combi_module=>alt( i_first = t896 i_second = t899 i_rest = t902 ).
    IF t894 IS BOUND.
      DATA t907 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t908 TYPE REF TO object.
      t908 = t894.
      TRY.
          t893 ?= t908.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t893 IS NOT BOUND.
        TRY.
            t907 ?= t894.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t907 IS BOUND.
          t893 = t907->source( ).
        ENDIF.
        IF t893 IS NOT BOUND.
          CREATE OBJECT t893.
          t893->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t893->oval = t894.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t909 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t909.
    DATA t912 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t912.
    t912->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t912->sval = |IMPORTING|.
    t909->load( ).
    APPEND t912 TO t909->items.
    t909->save( ).
    DATA t915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t916) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t916 IS BOUND.
      CREATE OBJECT t915.
      t915->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t915->cval = t916.
    ENDIF.
    t909->load( ).
    APPEND t915 TO t909->items.
    t909->save( ).
    DATA t918 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t918.
    t918->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t918->sval = |FOR|.
    t909->load( ).
    APPEND t918 TO t909->items.
    t909->save( ).
    DATA t921 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t922) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t922 IS BOUND.
      CREATE OBJECT t921.
      t921->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t921->cval = t922.
    ENDIF.
    t909->load( ).
    APPEND t921 TO t909->items.
    t909->save( ).
    t888 = zcl_lnt_st_combi_module=>seq( i_first = t890 i_second = t893 i_rest = t909 ).
    IF t888 IS BOUND.
      DATA t927 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t928 TYPE REF TO object.
      t928 = t888.
      TRY.
          t887 ?= t928.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t887 IS NOT BOUND.
        TRY.
            t927 ?= t888.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t927 IS BOUND.
          t887 = t927->source( ).
        ENDIF.
        IF t887 IS NOT BOUND.
          CREATE OBJECT t887.
          t887->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t887->oval = t888.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t887 TO t511->items.
    t511->save( ).
    DATA t930 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t931 TYPE REF TO zif_lnt_statement_runnable.
    DATA t933 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t933.
    t933->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t933->sval = |GLOBAL AUTHORIZATION IMPORTING REQUEST|.
    DATA t936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t937) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t937 IS BOUND.
      CREATE OBJECT t936.
      t936->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t936->cval = t937.
    ENDIF.
    DATA t938 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t938.
    DATA t941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t941.
    t941->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t941->sval = |FOR|.
    t938->load( ).
    APPEND t941 TO t938->items.
    t938->save( ).
    DATA t944 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t945) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t945 IS BOUND.
      CREATE OBJECT t944.
      t944->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t944->cval = t945.
    ENDIF.
    t938->load( ).
    APPEND t944 TO t938->items.
    t938->save( ).
    DATA t947 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185 IS BOUND.
      DATA t949 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t950 TYPE REF TO object.
      t950 = t185.
      TRY.
          t947 ?= t950.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t947 IS NOT BOUND.
        TRY.
            t949 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t949 IS BOUND.
          t947 = t949->source( ).
        ENDIF.
        IF t947 IS NOT BOUND.
          CREATE OBJECT t947.
          t947->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t947->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t938->load( ).
    APPEND t947 TO t938->items.
    t938->save( ).
    t931 = zcl_lnt_st_combi_module=>seq( i_first = t933 i_second = t936 i_rest = t938 ).
    IF t931 IS BOUND.
      DATA t955 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t956 TYPE REF TO object.
      t956 = t931.
      TRY.
          t930 ?= t956.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t930 IS NOT BOUND.
        TRY.
            t955 ?= t931.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t955 IS BOUND.
          t930 = t955->source( ).
        ENDIF.
        IF t930 IS NOT BOUND.
          CREATE OBJECT t930.
          t930->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t930->oval = t931.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t930 TO t511->items.
    t511->save( ).
    DATA t958 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t959 TYPE REF TO zif_lnt_statement_runnable.
    DATA t961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t961.
    t961->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t961->sval = |GLOBAL FEATURES IMPORTING REQUEST|.
    DATA t964 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t965) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t965 IS BOUND.
      CREATE OBJECT t964.
      t964->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t964->cval = t965.
    ENDIF.
    DATA t966 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t966.
    DATA t969 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t969.
    t969->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t969->sval = |FOR|.
    t966->load( ).
    APPEND t969 TO t966->items.
    t966->save( ).
    DATA t972 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t973) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t973 IS BOUND.
      CREATE OBJECT t972.
      t972->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t972->cval = t973.
    ENDIF.
    t966->load( ).
    APPEND t972 TO t966->items.
    t966->save( ).
    DATA t975 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185 IS BOUND.
      DATA t977 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t978 TYPE REF TO object.
      t978 = t185.
      TRY.
          t975 ?= t978.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t975 IS NOT BOUND.
        TRY.
            t977 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t977 IS BOUND.
          t975 = t977->source( ).
        ENDIF.
        IF t975 IS NOT BOUND.
          CREATE OBJECT t975.
          t975->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t975->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t966->load( ).
    APPEND t975 TO t966->items.
    t966->save( ).
    t959 = zcl_lnt_st_combi_module=>seq( i_first = t961 i_second = t964 i_rest = t966 ).
    IF t959 IS BOUND.
      DATA t983 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t984 TYPE REF TO object.
      t984 = t959.
      TRY.
          t958 ?= t984.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t958 IS NOT BOUND.
        TRY.
            t983 ?= t959.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t983 IS BOUND.
          t958 = t983->source( ).
        ENDIF.
        IF t958 IS NOT BOUND.
          CREATE OBJECT t958.
          t958->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t958->oval = t959.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t958 TO t511->items.
    t511->save( ).
    DATA t986 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t987 TYPE REF TO zif_lnt_statement_runnable.
    DATA t989 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t990 TYPE REF TO zif_lnt_statement_runnable.
    DATA t992 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t993 TYPE REF TO zif_lnt_statement_runnable.
    DATA t994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t994.
    t994->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t994->sval = |INSTANCE|.
    t993 = zcl_lnt_st_combi_module=>opt( i_first = t994 ).
    IF t993 IS BOUND.
      DATA t996 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t997 TYPE REF TO object.
      t997 = t993.
      TRY.
          t992 ?= t997.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t992 IS NOT BOUND.
        TRY.
            t996 ?= t993.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t996 IS BOUND.
          t992 = t996->source( ).
        ENDIF.
        IF t992 IS NOT BOUND.
          CREATE OBJECT t992.
          t992->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t992->oval = t993.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t999 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t999.
    t999->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t999->sval = |AUTHORIZATION IMPORTING|.
    DATA t1002 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1002.
    t990 = zcl_lnt_st_combi_module=>seq( i_first = t992 i_second = t999 i_rest = t1002 ).
    IF t990 IS BOUND.
      DATA t1007 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1008 TYPE REF TO object.
      t1008 = t990.
      TRY.
          t989 ?= t1008.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t989 IS NOT BOUND.
        TRY.
            t1007 ?= t990.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1007 IS BOUND.
          t989 = t1007->source( ).
        ENDIF.
        IF t989 IS NOT BOUND.
          CREATE OBJECT t989.
          t989->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t989->oval = t990.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1011) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t1011 IS BOUND.
      CREATE OBJECT t1010.
      t1010->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1010->cval = t1011.
    ENDIF.
    DATA t1012 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1012.
    DATA t1015 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1015.
    t1015->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1015->sval = |REQUEST|.
    t1012->load( ).
    APPEND t1015 TO t1012->items.
    t1012->save( ).
    DATA t1018 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1019) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t1019 IS BOUND.
      CREATE OBJECT t1018.
      t1018->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1018->cval = t1019.
    ENDIF.
    t1012->load( ).
    APPEND t1018 TO t1012->items.
    t1012->save( ).
    DATA t1021 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1021.
    t1021->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1021->sval = |FOR|.
    t1012->load( ).
    APPEND t1021 TO t1012->items.
    t1012->save( ).
    DATA t1024 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1025) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t1025 IS BOUND.
      CREATE OBJECT t1024.
      t1024->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1024->cval = t1025.
    ENDIF.
    t1012->load( ).
    APPEND t1024 TO t1012->items.
    t1012->save( ).
    DATA t1027 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185 IS BOUND.
      DATA t1029 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1030 TYPE REF TO object.
      t1030 = t185.
      TRY.
          t1027 ?= t1030.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1027 IS NOT BOUND.
        TRY.
            t1029 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1029 IS BOUND.
          t1027 = t1029->source( ).
        ENDIF.
        IF t1027 IS NOT BOUND.
          CREATE OBJECT t1027.
          t1027->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1027->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t1012->load( ).
    APPEND t1027 TO t1012->items.
    t1012->save( ).
    t987 = zcl_lnt_st_combi_module=>seq( i_first = t989 i_second = t1010 i_rest = t1012 ).
    IF t987 IS BOUND.
      DATA t1035 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1036 TYPE REF TO object.
      t1036 = t987.
      TRY.
          t986 ?= t1036.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t986 IS NOT BOUND.
        TRY.
            t1035 ?= t987.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1035 IS BOUND.
          t986 = t1035->source( ).
        ENDIF.
        IF t986 IS NOT BOUND.
          CREATE OBJECT t986.
          t986->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t986->oval = t987.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t986 TO t511->items.
    t511->save( ).
    DATA t1038 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1039 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1041 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1041.
    t1041->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1041->sval = |INSTANCE FEATURES IMPORTING|.
    DATA t1044 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1045) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t1045 IS BOUND.
      CREATE OBJECT t1044.
      t1044->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1044->cval = t1045.
    ENDIF.
    DATA t1046 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1046.
    DATA t1049 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1049.
    t1049->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1049->sval = |REQUEST|.
    t1046->load( ).
    APPEND t1049 TO t1046->items.
    t1046->save( ).
    DATA t1052 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1053) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    IF t1053 IS BOUND.
      CREATE OBJECT t1052.
      t1052->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1052->cval = t1053.
    ENDIF.
    t1046->load( ).
    APPEND t1052 TO t1046->items.
    t1046->save( ).
    DATA t1055 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1055.
    t1055->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1055->sval = |FOR|.
    t1046->load( ).
    APPEND t1055 TO t1046->items.
    t1046->save( ).
    DATA t1058 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1059) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t1059 IS BOUND.
      CREATE OBJECT t1058.
      t1058->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1058->cval = t1059.
    ENDIF.
    t1046->load( ).
    APPEND t1058 TO t1046->items.
    t1046->save( ).
    DATA t1061 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185 IS BOUND.
      DATA t1063 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1064 TYPE REF TO object.
      t1064 = t185.
      TRY.
          t1061 ?= t1064.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1061 IS NOT BOUND.
        TRY.
            t1063 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1063 IS BOUND.
          t1061 = t1063->source( ).
        ENDIF.
        IF t1061 IS NOT BOUND.
          CREATE OBJECT t1061.
          t1061->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1061->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t1046->load( ).
    APPEND t1061 TO t1046->items.
    t1046->save( ).
    t1039 = zcl_lnt_st_combi_module=>seq( i_first = t1041 i_second = t1044 i_rest = t1046 ).
    IF t1039 IS BOUND.
      DATA t1069 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1070 TYPE REF TO object.
      t1070 = t1039.
      TRY.
          t1038 ?= t1070.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1038 IS NOT BOUND.
        TRY.
            t1069 ?= t1039.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1069 IS BOUND.
          t1038 = t1069->source( ).
        ENDIF.
        IF t1038 IS NOT BOUND.
          CREATE OBJECT t1038.
          t1038->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1038->oval = t1039.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t1038 TO t511->items.
    t511->save( ).
    t489 = zcl_lnt_st_combi_module=>alt_prio( i_first = t492 i_second = t495 i_rest = t511 ).
    DATA t1075 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1078 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1079 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1081 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1081.
    t1081->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1081->sval = |AMDP OPTIONS|.
    DATA t1084 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1085 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1086 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1086.
    t1086->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1086->sval = |READ-ONLY|.
    t1085 = zcl_lnt_st_combi_module=>opt_prio( i_first = t1086 ).
    IF t1085 IS BOUND.
      DATA t1088 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1089 TYPE REF TO object.
      t1089 = t1085.
      TRY.
          t1084 ?= t1089.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1084 IS NOT BOUND.
        TRY.
            t1088 ?= t1085.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1088 IS BOUND.
          t1084 = t1088->source( ).
        ENDIF.
        IF t1084 IS NOT BOUND.
          CREATE OBJECT t1084.
          t1084->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1084->oval = t1085.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1090 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1090.
    DATA t1093 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1093.
    t1093->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1093->sval = |CDS SESSION CLIENT|.
    t1090->load( ).
    APPEND t1093 TO t1090->items.
    t1090->save( ).
    DATA t1096 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1097 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1099 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1099.
    t1099->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1099->sval = |CURRENT|.
    DATA t1102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1102.
    t1102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1102->sval = |DEPENDENT|.
    DATA t1105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1105.
    t1097 = zcl_lnt_st_combi_module=>alt( i_first = t1099 i_second = t1102 i_rest = t1105 ).
    IF t1097 IS BOUND.
      DATA t1110 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1111 TYPE REF TO object.
      t1111 = t1097.
      TRY.
          t1096 ?= t1111.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1096 IS NOT BOUND.
        TRY.
            t1110 ?= t1097.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1110 IS BOUND.
          t1096 = t1110->source( ).
        ENDIF.
        IF t1096 IS NOT BOUND.
          CREATE OBJECT t1096.
          t1096->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1096->oval = t1097.
        ENDIF.
      ENDIF.
    ENDIF.
    t1090->load( ).
    APPEND t1096 TO t1090->items.
    t1090->save( ).
    DATA t1113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1114 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1116) = zlnt_runtime_desc_78196487750d=>zlnt_member_d232_18850346ba57.
    IF t1116 IS BOUND.
      CREATE OBJECT t1115.
      t1115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1115->cval = t1116.
    ENDIF.
    t1114 = zcl_lnt_st_combi_module=>opt_prio( i_first = t1115 ).
    IF t1114 IS BOUND.
      DATA t1117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1118 TYPE REF TO object.
      t1118 = t1114.
      TRY.
          t1113 ?= t1118.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1113 IS NOT BOUND.
        TRY.
            t1117 ?= t1114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1117 IS BOUND.
          t1113 = t1117->source( ).
        ENDIF.
        IF t1113 IS NOT BOUND.
          CREATE OBJECT t1113.
          t1113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1113->oval = t1114.
        ENDIF.
      ENDIF.
    ENDIF.
    t1090->load( ).
    APPEND t1113 TO t1090->items.
    t1090->save( ).
    DATA t1120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1121 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1123) = zlnt_runtime_desc_78196487750d=>zlnt_member_d231_5616e0c1afc0.
    IF t1123 IS BOUND.
      CREATE OBJECT t1122.
      t1122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1122->cval = t1123.
    ENDIF.
    t1121 = zcl_lnt_st_combi_module=>opt_prio( i_first = t1122 ).
    IF t1121 IS BOUND.
      DATA t1124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1125 TYPE REF TO object.
      t1125 = t1121.
      TRY.
          t1120 ?= t1125.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1120 IS NOT BOUND.
        TRY.
            t1124 ?= t1121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1124 IS BOUND.
          t1120 = t1124->source( ).
        ENDIF.
        IF t1120 IS NOT BOUND.
          CREATE OBJECT t1120.
          t1120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1120->oval = t1121.
        ENDIF.
      ENDIF.
    ENDIF.
    t1090->load( ).
    APPEND t1120 TO t1090->items.
    t1090->save( ).
    DATA t1127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1128 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d233_66b4b8df8ddb.
    IF t1130 IS BOUND.
      CREATE OBJECT t1129.
      t1129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1129->cval = t1130.
    ENDIF.
    t1128 = zcl_lnt_st_combi_module=>opt_prio( i_first = t1129 ).
    IF t1128 IS BOUND.
      DATA t1131 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1132 TYPE REF TO object.
      t1132 = t1128.
      TRY.
          t1127 ?= t1132.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1127 IS NOT BOUND.
        TRY.
            t1131 ?= t1128.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1131 IS BOUND.
          t1127 = t1131->source( ).
        ENDIF.
        IF t1127 IS NOT BOUND.
          CREATE OBJECT t1127.
          t1127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1127->oval = t1128.
        ENDIF.
      ENDIF.
    ENDIF.
    t1090->load( ).
    APPEND t1127 TO t1090->items.
    t1090->save( ).
    t1079 = zcl_lnt_st_combi_module=>seq( i_first = t1081 i_second = t1084 i_rest = t1090 ).
    IF t1079 IS BOUND.
      DATA t1137 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1138 TYPE REF TO object.
      t1138 = t1079.
      TRY.
          t1078 ?= t1138.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1078 IS NOT BOUND.
        TRY.
            t1137 ?= t1079.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1137 IS BOUND.
          t1078 = t1137->source( ).
        ENDIF.
        IF t1078 IS NOT BOUND.
          CREATE OBJECT t1078.
          t1078->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1078->oval = t1079.
        ENDIF.
      ENDIF.
    ENDIF.
    t1075 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t1078 ).
    DATA t1139 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1143 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1145.
    t1145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1145->sval = |CLASS-METHODS|.
    DATA t1148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1148.
    t1148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1148->sval = |METHODS|.
    DATA t1151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1151.
    t1143 = zcl_lnt_st_combi_module=>alt_prio( i_first = t1145 i_second = t1148 i_rest = t1151 ).
    IF t1143 IS BOUND.
      DATA t1156 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1157 TYPE REF TO object.
      t1157 = t1143.
      TRY.
          t1142 ?= t1157.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1142 IS NOT BOUND.
        TRY.
            t1156 ?= t1143.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1156 IS BOUND.
          t1142 = t1156->source( ).
        ENDIF.
        IF t1142 IS NOT BOUND.
          CREATE OBJECT t1142.
          t1142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1142->oval = t1143.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1160) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
    IF t1160 IS BOUND.
      CREATE OBJECT t1159.
      t1159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1159->cval = t1160.
    ENDIF.
    DATA t1161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1161.
    DATA t1164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1165 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1168 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1171 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1173) = zlnt_runtime_desc_78196487750d=>zlnt_member_d87_b6ca272efa9462.
    IF t1173 IS BOUND.
      CREATE OBJECT t1172.
      t1172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1172->cval = t1173.
    ENDIF.
    t1171 = zcl_lnt_st_combi_module=>opt_prio( i_first = t1172 ).
    IF t1171 IS BOUND.
      DATA t1174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1175 TYPE REF TO object.
      t1175 = t1171.
      TRY.
          t1170 ?= t1175.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1170 IS NOT BOUND.
        TRY.
            t1174 ?= t1171.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1174 IS BOUND.
          t1170 = t1174->source( ).
        ENDIF.
        IF t1170 IS NOT BOUND.
          CREATE OBJECT t1170.
          t1170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1170->oval = t1171.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1178 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t1181 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1182 TYPE REF TO object.
      t1182 = t1.
      TRY.
          t1179 ?= t1182.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1179 IS NOT BOUND.
        TRY.
            t1181 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1181 IS BOUND.
          t1179 = t1181->source( ).
        ENDIF.
        IF t1179 IS NOT BOUND.
          CREATE OBJECT t1179.
          t1179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1179->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t1178 = zcl_lnt_st_combi_module=>opt_prio( i_first = t1179 ).
    IF t1178 IS BOUND.
      DATA t1183 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1184 TYPE REF TO object.
      t1184 = t1178.
      TRY.
          t1177 ?= t1184.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1177 IS NOT BOUND.
        TRY.
            t1183 ?= t1178.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1183 IS BOUND.
          t1177 = t1183->source( ).
        ENDIF.
        IF t1177 IS NOT BOUND.
          CREATE OBJECT t1177.
          t1177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1177->oval = t1178.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1185.
    DATA t1188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1189) = zlnt_runtime_desc_78196487750d=>zlnt_member_d165_590ae906b133.
    IF t1189 IS BOUND.
      CREATE OBJECT t1188.
      t1188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1188->cval = t1189.
    ENDIF.
    t1185->load( ).
    APPEND t1188 TO t1185->items.
    t1185->save( ).
    t1168 = zcl_lnt_st_combi_module=>seq( i_first = t1170 i_second = t1177 i_rest = t1185 ).
    IF t1168 IS BOUND.
      DATA t1194 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1195 TYPE REF TO object.
      t1195 = t1168.
      TRY.
          t1167 ?= t1195.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1167 IS NOT BOUND.
        TRY.
            t1194 ?= t1168.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1194 IS BOUND.
          t1167 = t1194->source( ).
        ENDIF.
        IF t1167 IS NOT BOUND.
          CREATE OBJECT t1167.
          t1167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1167->oval = t1168.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t53 IS BOUND.
      DATA t1199 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1200 TYPE REF TO object.
      t1200 = t53.
      TRY.
          t1197 ?= t1200.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1197 IS NOT BOUND.
        TRY.
            t1199 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1199 IS BOUND.
          t1197 = t1199->source( ).
        ENDIF.
        IF t1197 IS NOT BOUND.
          CREATE OBJECT t1197.
          t1197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1197->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1201.
    DATA t1204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t141 IS BOUND.
      DATA t1206 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1207 TYPE REF TO object.
      t1207 = t141.
      TRY.
          t1204 ?= t1207.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1204 IS NOT BOUND.
        TRY.
            t1206 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1206 IS BOUND.
          t1204 = t1206->source( ).
        ENDIF.
        IF t1204 IS NOT BOUND.
          CREATE OBJECT t1204.
          t1204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1204->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    t1201->load( ).
    APPEND t1204 TO t1201->items.
    t1201->save( ).
    DATA t1209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1210 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1213 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1215.
    t1215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1215->sval = |FOR|.
    DATA t1218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t489 IS BOUND.
      DATA t1220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1221 TYPE REF TO object.
      t1221 = t489.
      TRY.
          t1218 ?= t1221.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1218 IS NOT BOUND.
        TRY.
            t1220 ?= t489.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1220 IS BOUND.
          t1218 = t1220->source( ).
        ENDIF.
        IF t1218 IS NOT BOUND.
          CREATE OBJECT t1218.
          t1218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1218->oval = t489.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1223.
    t1213 = zcl_lnt_st_combi_module=>seq( i_first = t1215 i_second = t1218 i_rest = t1223 ).
    IF t1213 IS BOUND.
      DATA t1228 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1229 TYPE REF TO object.
      t1229 = t1213.
      TRY.
          t1212 ?= t1229.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1212 IS NOT BOUND.
        TRY.
            t1228 ?= t1213.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1228 IS BOUND.
          t1212 = t1228->source( ).
        ENDIF.
        IF t1212 IS NOT BOUND.
          CREATE OBJECT t1212.
          t1212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1212->oval = t1213.
        ENDIF.
      ENDIF.
    ENDIF.
    t1210 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t1212 ).
    IF t1210 IS BOUND.
      DATA t1230 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1231 TYPE REF TO object.
      t1231 = t1210.
      TRY.
          t1209 ?= t1231.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1209 IS NOT BOUND.
        TRY.
            t1230 ?= t1210.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1230 IS BOUND.
          t1209 = t1230->source( ).
        ENDIF.
        IF t1209 IS NOT BOUND.
          CREATE OBJECT t1209.
          t1209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1209->oval = t1210.
        ENDIF.
      ENDIF.
    ENDIF.
    t1201->load( ).
    APPEND t1209 TO t1201->items.
    t1201->save( ).
    DATA t1233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1075 IS BOUND.
      DATA t1235 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1236 TYPE REF TO object.
      t1236 = t1075.
      TRY.
          t1233 ?= t1236.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1233 IS NOT BOUND.
        TRY.
            t1235 ?= t1075.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1235 IS BOUND.
          t1233 = t1235->source( ).
        ENDIF.
        IF t1233 IS NOT BOUND.
          CREATE OBJECT t1233.
          t1233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1233->oval = t1075.
        ENDIF.
      ENDIF.
    ENDIF.
    t1201->load( ).
    APPEND t1233 TO t1201->items.
    t1201->save( ).
    DATA t1238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1238.
    t1238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1238->sval = |NOT AT END OF MODE|.
    t1201->load( ).
    APPEND t1238 TO t1201->items.
    t1201->save( ).
    DATA t1241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1242 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1244) = zlnt_runtime_desc_78196487750d=>zlnt_member_d252_17c445ac4167.
    IF t1244 IS BOUND.
      CREATE OBJECT t1243.
      t1243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1243->cval = t1244.
    ENDIF.
    t1242 = zcl_lnt_st_combi_module=>opt_prio( i_first = t1243 ).
    IF t1242 IS BOUND.
      DATA t1245 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1246 TYPE REF TO object.
      t1246 = t1242.
      TRY.
          t1241 ?= t1246.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1241 IS NOT BOUND.
        TRY.
            t1245 ?= t1242.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1245 IS BOUND.
          t1241 = t1245->source( ).
        ENDIF.
        IF t1241 IS NOT BOUND.
          CREATE OBJECT t1241.
          t1241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1241->oval = t1242.
        ENDIF.
      ENDIF.
    ENDIF.
    t1201->load( ).
    APPEND t1241 TO t1201->items.
    t1201->save( ).
    t1165 = zcl_lnt_st_combi_module=>alt( i_first = t1167 i_second = t1197 i_rest = t1201 ).
    IF t1165 IS BOUND.
      DATA t1251 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1252 TYPE REF TO object.
      t1252 = t1165.
      TRY.
          t1164 ?= t1252.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1164 IS NOT BOUND.
        TRY.
            t1251 ?= t1165.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1251 IS BOUND.
          t1164 = t1251->source( ).
        ENDIF.
        IF t1164 IS NOT BOUND.
          CREATE OBJECT t1164.
          t1164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1164->oval = t1165.
        ENDIF.
      ENDIF.
    ENDIF.
    t1161->load( ).
    APPEND t1164 TO t1161->items.
    t1161->save( ).
    t1139 = zcl_lnt_st_combi_module=>seq( i_first = t1142 i_second = t1159 i_rest = t1161 ).
    DATA t1260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1261 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1263.
    t1263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1263->sval = |METHODS|.
    DATA t1266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1267) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
    IF t1267 IS BOUND.
      CREATE OBJECT t1266.
      t1266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1266->cval = t1267.
    ENDIF.
    DATA t1268 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1268.
    DATA t1271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1272 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t455 IS BOUND.
      DATA t1276 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1277 TYPE REF TO object.
      t1277 = t455.
      TRY.
          t1274 ?= t1277.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1274 IS NOT BOUND.
        TRY.
            t1276 ?= t455.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1276 IS BOUND.
          t1274 = t1276->source( ).
        ENDIF.
        IF t1274 IS NOT BOUND.
          CREATE OBJECT t1274.
          t1274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1274->oval = t455.
        ENDIF.
      ENDIF.
    ENDIF.
    t1272 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t1274 ).
    IF t1272 IS BOUND.
      DATA t1278 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1279 TYPE REF TO object.
      t1279 = t1272.
      TRY.
          t1271 ?= t1279.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1271 IS NOT BOUND.
        TRY.
            t1278 ?= t1272.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1278 IS BOUND.
          t1271 = t1278->source( ).
        ENDIF.
        IF t1271 IS NOT BOUND.
          CREATE OBJECT t1271.
          t1271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1271->oval = t1272.
        ENDIF.
      ENDIF.
    ENDIF.
    t1268->load( ).
    APPEND t1271 TO t1268->items.
    t1268->save( ).
    t1261 = zcl_lnt_st_combi_module=>seq( i_first = t1263 i_second = t1266 i_rest = t1268 ).
    IF t1261 IS BOUND.
      DATA t1284 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1285 TYPE REF TO object.
      t1285 = t1261.
      TRY.
          t1260 ?= t1285.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1260 IS NOT BOUND.
        TRY.
            t1284 ?= t1261.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1284 IS BOUND.
          t1260 = t1284->source( ).
        ENDIF.
        IF t1260 IS NOT BOUND.
          CREATE OBJECT t1260.
          t1260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1260->oval = t1261.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1139 IS BOUND.
      DATA t1289 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t1290 TYPE REF TO object.
      t1290 = t1139.
      TRY.
          t1287 ?= t1290.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1287 IS NOT BOUND.
        TRY.
            t1289 ?= t1139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1289 IS BOUND.
          t1287 = t1289->source( ).
        ENDIF.
        IF t1287 IS NOT BOUND.
          CREATE OBJECT t1287.
          t1287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1287->oval = t1139.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1292.
    result = zcl_lnt_st_combi_module=>alt( i_first = t1260 i_second = t1287 i_rest = t1292 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
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
