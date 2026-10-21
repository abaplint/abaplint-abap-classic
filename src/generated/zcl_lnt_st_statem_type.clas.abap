* TS: src/abap/2_statements/statements/type.ts:8:1 Type
CLASS zcl_lnt_st_statem_type DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_statem_type IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d149_69f1f4358f03.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>per( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t21 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v760| ).
    IF t21 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t26 TYPE REF TO object.
      t26 = t21.
      TRY.
          t20 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t25 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t20 = t25->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = |TYPE|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t33->cval = t34.
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t35.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = |CLIENT|.
    t35->load( ).
    APPEND t38 TO t35->items.
    t35->save( ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = |SPECIFIED|.
    t35->load( ).
    APPEND t41 TO t35->items.
    t35->save( ).
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t44->cval = t45.
    ENDIF.
    t35->load( ).
    APPEND t44 TO t35->items.
    t35->save( ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t55) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_kind( ) ).
    IF t55 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t54 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t56 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t54 = t56->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t60) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_columns( ) ).
    IF t60 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t59 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t61 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t59 = t61->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t64.
    t52 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t59 i_rest = t64 ).
    IF t52 IS BOUND.
      DATA t69 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t51 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t51 IS NOT BOUND.
        TRY.
            t69 ?= t52.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t69 IS BOUND.
          t51 = t69->source( ).
        ENDIF.
        IF t51 IS NOT BOUND.
          CREATE OBJECT t51.
          t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t51->oval = t52.
        ENDIF.
      ENDIF.
    ENDIF.
    t50 = zcl_lnt_st_combi_module=>plus( i_first = t51 ).
    IF t50 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t49 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t49 IS NOT BOUND.
        TRY.
            t71 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t49 = t71->source( ).
        ENDIF.
        IF t49 IS NOT BOUND.
          CREATE OBJECT t49.
          t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t49->oval = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    t48 = zcl_lnt_st_combi_module=>opt( i_first = t49 ).
    IF t48 IS BOUND.
      DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t47 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t73 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t73 IS BOUND.
          t47 = t73->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    t35->load( ).
    APPEND t47 TO t35->items.
    t35->save( ).
    t28 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t33 i_rest = t35 ).
    IF t28 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t27 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t79 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t27 = t79->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t81 TYPE REF TO zcl_lnt_iver_options.
    t18 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t20 i_first = t27 i_opts = t81 ).
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t85 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v916| ).
    IF t85 IS BOUND.
      DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t90 TYPE REF TO object.
      t90 = t85.
      TRY.
          t84 ?= t90.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t89 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t89 IS BOUND.
          t84 = t89->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t94.
    t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t94->sval = |TYPE|.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t97.
    t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t97->sval = |ANY|.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t99.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = |STRUCTURE|.
    t99->load( ).
    APPEND t102 TO t99->items.
    t99->save( ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t110.
    t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t110->sval = |CONTAINING|.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t118->cval = t119.
    ENDIF.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t121.
    t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t121->sval = |TYPE|.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t123.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t127) = zlnt_runtime_desc_78196487750d=>zlnt_member_d352_960e530693ff.
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t126->cval = t127.
    ENDIF.
    t123->load( ).
    APPEND t126 TO t123->items.
    t123->save( ).
    t116 = zcl_lnt_st_combi_module=>seq( i_first = t118 i_second = t121 i_rest = t123 ).
    IF t116 IS BOUND.
      DATA t132 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t115 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t132 ?= t116.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t132 IS BOUND.
          t115 = t132->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t116.
        ENDIF.
      ENDIF.
    ENDIF.
    t114 = zcl_lnt_st_combi_module=>plus( i_first = t115 ).
    IF t114 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t113 ?= t114.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t134 ?= t114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t113 = t134->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t114.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t137.
    t108 = zcl_lnt_st_combi_module=>seq( i_first = t110 i_second = t113 i_rest = t137 ).
    IF t108 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t107 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t142 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t107 = t142->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    t106 = zcl_lnt_st_combi_module=>opt( i_first = t107 ).
    IF t106 IS BOUND.
      DATA t144 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t105 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t144 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t144 IS BOUND.
          t105 = t144->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    t99->load( ).
    APPEND t105 TO t99->items.
    t99->save( ).
    t92 = zcl_lnt_st_combi_module=>seq( i_first = t94 i_second = t97 i_rest = t99 ).
    IF t92 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t91 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t91 IS NOT BOUND.
        TRY.
            t150 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t91 = t150->source( ).
        ENDIF.
        IF t91 IS NOT BOUND.
          CREATE OBJECT t91.
          t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t91->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t152 TYPE REF TO zcl_lnt_iver_options.
    t82 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t84 i_first = t91 i_opts = t152 ).
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t157) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t157 IS BOUND.
      CREATE OBJECT t156.
      t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t156->cval = t157.
    ENDIF.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t162) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t161->cval = t162.
    ENDIF.
    t160 = zcl_lnt_st_combi_module=>opt( i_first = t161 ).
    IF t160 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t159 ?= t160.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t163 ?= t160.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t159 = t163->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t160.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t165.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t176 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t176 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v731| ).
    IF t176 IS BOUND.
      DATA t180 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t181 TYPE REF TO object.
      t181 = t176.
      TRY.
          t175 ?= t181.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t175 IS NOT BOUND.
        TRY.
            t180 ?= t176.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t180 IS BOUND.
          t175 = t180->source( ).
        ENDIF.
        IF t175 IS NOT BOUND.
          CREATE OBJECT t175.
          t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t175->oval = t176.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t183) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_handle_type( ) ).
    IF t183 IS BOUND.
      DATA t184 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t182 ?= t183.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t184 ?= t183.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t184 IS BOUND.
          t182 = t184->source( ).
        ENDIF.
        IF t182 IS NOT BOUND.
          CREATE OBJECT t182.
          t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t182->oval = t183.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t186 TYPE REF TO zcl_lnt_iver_options.
    t174 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t175 i_first = t182 i_opts = t186 ).
    IF t174 IS BOUND.
      DATA t187 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t173 ?= t174.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t173 IS NOT BOUND.
        TRY.
            t187 ?= t174.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t187 IS BOUND.
          t173 = t187->source( ).
        ENDIF.
        IF t173 IS NOT BOUND.
          CREATE OBJECT t173.
          t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t173->oval = t174.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t192 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t190 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t190 IS NOT BOUND.
        TRY.
            t192 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t192 IS BOUND.
          t190 = t192->source( ).
        ENDIF.
        IF t190 IS NOT BOUND.
          CREATE OBJECT t190.
          t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t190->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t194.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t82 IS BOUND.
      DATA t199 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t197 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t197 IS NOT BOUND.
        TRY.
            t199 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t199 IS BOUND.
          t197 = t199->source( ).
        ENDIF.
        IF t197 IS NOT BOUND.
          CREATE OBJECT t197.
          t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t197->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    t194->load( ).
    APPEND t197 TO t194->items.
    t194->save( ).
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t207 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t205 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t205 IS NOT BOUND.
        TRY.
            t207 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t207 IS BOUND.
          t205 = t207->source( ).
        ENDIF.
        IF t205 IS NOT BOUND.
          CREATE OBJECT t205.
          t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t205->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t211) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
    IF t211 IS BOUND.
      CREATE OBJECT t210.
      t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t210->cval = t211.
    ENDIF.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t212.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t216) = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
    IF t216 IS BOUND.
      CREATE OBJECT t215.
      t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t215->cval = t216.
    ENDIF.
    t212->load( ).
    APPEND t215 TO t212->items.
    t212->save( ).
    t203 = zcl_lnt_st_combi_module=>alt( i_first = t205 i_second = t210 i_rest = t212 ).
    IF t203 IS BOUND.
      DATA t221 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t202 ?= t203.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t202 IS NOT BOUND.
        TRY.
            t221 ?= t203.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t221 IS BOUND.
          t202 = t221->source( ).
        ENDIF.
        IF t202 IS NOT BOUND.
          CREATE OBJECT t202.
          t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t202->oval = t203.
        ENDIF.
      ENDIF.
    ENDIF.
    t194->load( ).
    APPEND t202 TO t194->items.
    t194->save( ).
    t171 = zcl_lnt_st_combi_module=>alt_prio( i_first = t173 i_second = t190 i_rest = t194 ).
    IF t171 IS BOUND.
      DATA t227 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t170 ?= t171.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t170 IS NOT BOUND.
        TRY.
            t227 ?= t171.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t227 IS BOUND.
          t170 = t227->source( ).
        ENDIF.
        IF t170 IS NOT BOUND.
          CREATE OBJECT t170.
          t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t170->oval = t171.
        ENDIF.
      ENDIF.
    ENDIF.
    t169 = zcl_lnt_st_combi_module=>opt( i_first = t170 ).
    IF t169 IS BOUND.
      DATA t229 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t168 ?= t169.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t168 IS NOT BOUND.
        TRY.
            t229 ?= t169.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t229 IS BOUND.
          t168 = t229->source( ).
        ENDIF.
        IF t168 IS NOT BOUND.
          CREATE OBJECT t168.
          t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t168->oval = t169.
        ENDIF.
      ENDIF.
    ENDIF.
    t165->load( ).
    APPEND t168 TO t165->items.
    t165->save( ).
    t153 = zcl_lnt_st_combi_module=>seq( i_first = t156 i_second = t159 i_rest = t165 ).
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t238 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t238 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v702| ).
    IF t238 IS BOUND.
      DATA t242 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t243 TYPE REF TO object.
      t243 = t238.
      TRY.
          t237 ?= t243.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t237 IS NOT BOUND.
        TRY.
            t242 ?= t238.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t242 IS BOUND.
          t237 = t242->source( ).
        ENDIF.
        IF t237 IS NOT BOUND.
          CREATE OBJECT t237.
          t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t237->oval = t238.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t244.
    t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t244->sval = |BOXED|.
    DATA t246 TYPE REF TO zcl_lnt_iver_options.
    t235 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t237 i_first = t244 i_opts = t246 ).
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t250.
    t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t250->sval = |TYPES|.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t153 IS BOUND.
      DATA t255 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t253 ?= t153.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t253 IS NOT BOUND.
        TRY.
            t255 ?= t153.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t255 IS BOUND.
          t253 = t255->source( ).
        ENDIF.
        IF t253 IS NOT BOUND.
          CREATE OBJECT t253.
          t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t253->oval = t153.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t257.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t261 TYPE REF TO zif_lnt_statement_runnable.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t235 IS BOUND.
      DATA t264 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t262 ?= t235.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t262 IS NOT BOUND.
        TRY.
            t264 ?= t235.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t264 IS BOUND.
          t262 = t264->source( ).
        ENDIF.
        IF t262 IS NOT BOUND.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t262->oval = t235.
        ENDIF.
      ENDIF.
    ENDIF.
    t261 = zcl_lnt_st_combi_module=>opt( i_first = t262 ).
    IF t261 IS BOUND.
      DATA t266 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t260 ?= t261.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t260 IS NOT BOUND.
        TRY.
            t266 ?= t261.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS BOUND.
          t260 = t266->source( ).
        ENDIF.
        IF t260 IS NOT BOUND.
          CREATE OBJECT t260.
          t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t260->oval = t261.
        ENDIF.
      ENDIF.
    ENDIF.
    t257->load( ).
    APPEND t260 TO t257->items.
    t257->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t250 i_second = t253 i_rest = t257 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
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
