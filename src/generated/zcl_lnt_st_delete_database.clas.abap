* TS: src/abap/2_statements/statements/delete_database.ts:8:1 DeleteDatabase
CLASS zcl_lnt_st_delete_database DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_delete_database IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |WHERE|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t8 = zcl_lnt_st_combi_module=>alt_prio( i_first = t10 i_second = t13 i_rest = t16 ).
    IF t8 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t22 TYPE REF TO object.
      t22 = t8.
      TRY.
          t7 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t21 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t7 = t21->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t24 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t32 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v764| ).
    IF t32 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t37 TYPE REF TO object.
      t37 = t32.
      TRY.
          t31 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t36 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t31 = t36->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d268_bc2d6eaf7263.
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t44->cval = t45.
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d340_8d8d1acca482.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    t48 = zcl_lnt_st_combi_module=>opt_prio( i_first = t49 ).
    IF t48 IS BOUND.
      DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t52 TYPE REF TO object.
      t52 = t48.
      TRY.
          t47 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t51 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS BOUND.
          t47 = t51->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t54.
    t42 = zcl_lnt_st_combi_module=>seq( i_first = t44 i_second = t47 i_rest = t54 ).
    IF t42 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t60 TYPE REF TO object.
      t60 = t42.
      TRY.
          t41 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t59 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t41 = t59->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d340_8d8d1acca482.
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d268_bc2d6eaf7263.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t70->cval = t71.
    ENDIF.
    t69 = zcl_lnt_st_combi_module=>opt_prio( i_first = t70 ).
    IF t69 IS BOUND.
      DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t73 TYPE REF TO object.
      t73 = t69.
      TRY.
          t68 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t72 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS BOUND.
          t68 = t72->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t75.
    t63 = zcl_lnt_st_combi_module=>seq( i_first = t65 i_second = t68 i_rest = t75 ).
    IF t63 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t81 TYPE REF TO object.
      t81 = t63.
      TRY.
          t62 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t80 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t62 = t80->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    t39 = zcl_lnt_st_combi_module=>alt_prio( i_first = t41 i_second = t62 i_rest = t83 ).
    IF t39 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t89 TYPE REF TO object.
      t89 = t39.
      TRY.
          t38 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS NOT BOUND.
        TRY.
            t88 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t38 = t88->source( ).
        ENDIF.
        IF t38 IS NOT BOUND.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t38->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t90 TYPE REF TO zcl_lnt_iver_options.
    t29 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t31 i_first = t38 i_opts = t90 ).
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t94 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v764| ).
    IF t94 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t99 TYPE REF TO object.
      t99 = t94.
      TRY.
          t93 ?= t99.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t98 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t93 = t98->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t104) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
    IF t104 IS BOUND.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t103->cval = t104.
    ENDIF.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t110 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t111 TYPE REF TO object.
      t111 = t29.
      TRY.
          t108 ?= t111.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t108 IS NOT BOUND.
        TRY.
            t110 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t110 IS BOUND.
          t108 = t110->source( ).
        ENDIF.
        IF t108 IS NOT BOUND.
          CREATE OBJECT t108.
          t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t108->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t107 = zcl_lnt_st_combi_module=>opt_prio( i_first = t108 ).
    IF t107 IS BOUND.
      DATA t112 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t113 TYPE REF TO object.
      t113 = t107.
      TRY.
          t106 ?= t113.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t106 IS NOT BOUND.
        TRY.
            t112 ?= t107.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t112 IS BOUND.
          t106 = t112->source( ).
        ENDIF.
        IF t106 IS NOT BOUND.
          CREATE OBJECT t106.
          t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t106->oval = t107.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t115.
    t101 = zcl_lnt_st_combi_module=>seq( i_first = t103 i_second = t106 i_rest = t115 ).
    IF t101 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t121 TYPE REF TO object.
      t121 = t101.
      TRY.
          t100 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t100 IS NOT BOUND.
        TRY.
            t120 ?= t101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t100 = t120->source( ).
        ENDIF.
        IF t100 IS NOT BOUND.
          CREATE OBJECT t100.
          t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t100->oval = t101.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t122 TYPE REF TO zcl_lnt_iver_options.
    t91 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t93 i_first = t100 i_opts = t122 ).
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t91 IS BOUND.
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t131 TYPE REF TO object.
      t131 = t91.
      TRY.
          t128 ?= t131.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t128 IS NOT BOUND.
        TRY.
            t130 ?= t91.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t130 IS BOUND.
          t128 = t130->source( ).
        ENDIF.
        IF t128 IS NOT BOUND.
          CREATE OBJECT t128.
          t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t128->oval = t91.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t135 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t136 TYPE REF TO object.
      t136 = t29.
      TRY.
          t133 ?= t136.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t133 IS NOT BOUND.
        TRY.
            t135 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t135 IS BOUND.
          t133 = t135->source( ).
        ENDIF.
        IF t133 IS NOT BOUND.
          CREATE OBJECT t133.
          t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t133->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t138.
    t126 = zcl_lnt_st_combi_module=>alt_prio( i_first = t128 i_second = t133 i_rest = t138 ).
    IF t126 IS BOUND.
      DATA t143 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t144 TYPE REF TO object.
      t144 = t126.
      TRY.
          t125 ?= t144.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t125 IS NOT BOUND.
        TRY.
            t143 ?= t126.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t143 IS BOUND.
          t125 = t143->source( ).
        ENDIF.
        IF t125 IS NOT BOUND.
          CREATE OBJECT t125.
          t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t125->oval = t126.
        ENDIF.
      ENDIF.
    ENDIF.
    t123 = zcl_lnt_st_combi_module=>opt_prio( i_first = t125 ).
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t148.
    t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t148->sval = |FROM|.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t152) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    IF t152 IS BOUND.
      CREATE OBJECT t151.
      t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t151->cval = t152.
    ENDIF.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t159) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    IF t159 IS BOUND.
      CREATE OBJECT t158.
      t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t158->cval = t159.
    ENDIF.
    t157 = zcl_lnt_st_combi_module=>opt_prio( i_first = t158 ).
    IF t157 IS BOUND.
      DATA t160 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t161 TYPE REF TO object.
      t161 = t157.
      TRY.
          t156 ?= t161.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t156 IS NOT BOUND.
        TRY.
            t160 ?= t157.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t160 IS BOUND.
          t156 = t160->source( ).
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
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t166) = zlnt_runtime_desc_78196487750d=>zlnt_member_d155_5eb73ae6c401.
    IF t166 IS BOUND.
      CREATE OBJECT t165.
      t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t165->cval = t166.
    ENDIF.
    t164 = zcl_lnt_st_combi_module=>opt_prio( i_first = t165 ).
    IF t164 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t168 TYPE REF TO object.
      t168 = t164.
      TRY.
          t163 ?= t168.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t163 IS NOT BOUND.
        TRY.
            t167 ?= t164.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t163 = t167->source( ).
        ENDIF.
        IF t163 IS NOT BOUND.
          CREATE OBJECT t163.
          t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t163->oval = t164.
        ENDIF.
      ENDIF.
    ENDIF.
    t153->load( ).
    APPEND t163 TO t153->items.
    t153->save( ).
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t175 TYPE REF TO object.
      t175 = t1.
      TRY.
          t172 ?= t175.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t172 IS NOT BOUND.
        TRY.
            t174 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t174 IS BOUND.
          t172 = t174->source( ).
        ENDIF.
        IF t172 IS NOT BOUND.
          CREATE OBJECT t172.
          t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t172->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t171 = zcl_lnt_st_combi_module=>opt( i_first = t172 ).
    IF t171 IS BOUND.
      DATA t176 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t177 TYPE REF TO object.
      t177 = t171.
      TRY.
          t170 ?= t177.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t170 IS NOT BOUND.
        TRY.
            t176 ?= t171.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t176 IS BOUND.
          t170 = t176->source( ).
        ENDIF.
        IF t170 IS NOT BOUND.
          CREATE OBJECT t170.
          t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t170->oval = t171.
        ENDIF.
      ENDIF.
    ENDIF.
    t153->load( ).
    APPEND t170 TO t153->items.
    t153->save( ).
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t123 IS BOUND.
      DATA t181 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t182 TYPE REF TO object.
      t182 = t123.
      TRY.
          t179 ?= t182.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t179 IS NOT BOUND.
        TRY.
            t181 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t181 IS BOUND.
          t179 = t181->source( ).
        ENDIF.
        IF t179 IS NOT BOUND.
          CREATE OBJECT t179.
          t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t179->oval = t123.
        ENDIF.
      ENDIF.
    ENDIF.
    t153->load( ).
    APPEND t179 TO t153->items.
    t153->save( ).
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t187) = zlnt_runtime_desc_78196487750d=>zlnt_member_d311_e91cc88fe129.
    IF t187 IS BOUND.
      CREATE OBJECT t186.
      t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t186->cval = t187.
    ENDIF.
    t185 = zcl_lnt_st_combi_module=>opt_prio( i_first = t186 ).
    IF t185 IS BOUND.
      DATA t188 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t189 TYPE REF TO object.
      t189 = t185.
      TRY.
          t184 ?= t189.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t184 IS NOT BOUND.
        TRY.
            t188 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t188 IS BOUND.
          t184 = t188->source( ).
        ENDIF.
        IF t184 IS NOT BOUND.
          CREATE OBJECT t184.
          t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t184->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t153->load( ).
    APPEND t184 TO t153->items.
    t153->save( ).
    t145 = zcl_lnt_st_combi_module=>seq( i_first = t148 i_second = t151 i_rest = t153 ).
    DATA t194 TYPE REF TO zif_lnt_statement_runnable.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t197.
    t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t197->sval = |FROM|.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t202.
    t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t202->sval = |TABLE|.
    t201 = zcl_lnt_st_combi_module=>opt( i_first = t202 ).
    IF t201 IS BOUND.
      DATA t204 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t205 TYPE REF TO object.
      t205 = t201.
      TRY.
          t200 ?= t205.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t204 ?= t201.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t204 IS BOUND.
          t200 = t204->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t201.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t206.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t210) = zlnt_runtime_desc_78196487750d=>zlnt_member_d297_8dd76b8d3d10.
    IF t210 IS BOUND.
      CREATE OBJECT t209.
      t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t209->cval = t210.
    ENDIF.
    t206->load( ).
    APPEND t209 TO t206->items.
    t206->save( ).
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t215) = zlnt_runtime_desc_78196487750d=>zlnt_member_d332_d01031496384.
    IF t215 IS BOUND.
      CREATE OBJECT t214.
      t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t214->cval = t215.
    ENDIF.
    t213 = zcl_lnt_st_combi_module=>opt_prio( i_first = t214 ).
    IF t213 IS BOUND.
      DATA t216 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t217 TYPE REF TO object.
      t217 = t213.
      TRY.
          t212 ?= t217.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t212 IS NOT BOUND.
        TRY.
            t216 ?= t213.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t216 IS BOUND.
          t212 = t216->source( ).
        ENDIF.
        IF t212 IS NOT BOUND.
          CREATE OBJECT t212.
          t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t212->oval = t213.
        ENDIF.
      ENDIF.
    ENDIF.
    t206->load( ).
    APPEND t212 TO t206->items.
    t206->save( ).
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t222) = zlnt_runtime_desc_78196487750d=>zlnt_member_d339_ea6d392265d6.
    IF t222 IS BOUND.
      CREATE OBJECT t221.
      t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t221->cval = t222.
    ENDIF.
    t220 = zcl_lnt_st_combi_module=>opt_prio( i_first = t221 ).
    IF t220 IS BOUND.
      DATA t223 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t224 TYPE REF TO object.
      t224 = t220.
      TRY.
          t219 ?= t224.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t219 IS NOT BOUND.
        TRY.
            t223 ?= t220.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t223 IS BOUND.
          t219 = t223->source( ).
        ENDIF.
        IF t219 IS NOT BOUND.
          CREATE OBJECT t219.
          t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t219->oval = t220.
        ENDIF.
      ENDIF.
    ENDIF.
    t206->load( ).
    APPEND t219 TO t206->items.
    t206->save( ).
    t194 = zcl_lnt_st_combi_module=>seq( i_first = t197 i_second = t200 i_rest = t206 ).
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t233) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    IF t233 IS BOUND.
      CREATE OBJECT t232.
      t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t232->cval = t233.
    ENDIF.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t236 TYPE REF TO zif_lnt_statement_runnable.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t238) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    IF t238 IS BOUND.
      CREATE OBJECT t237.
      t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t237->cval = t238.
    ENDIF.
    t236 = zcl_lnt_st_combi_module=>opt_prio( i_first = t237 ).
    IF t236 IS BOUND.
      DATA t239 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t240 TYPE REF TO object.
      t240 = t236.
      TRY.
          t235 ?= t240.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t235 IS NOT BOUND.
        TRY.
            t239 ?= t236.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t239 IS BOUND.
          t235 = t239->source( ).
        ENDIF.
        IF t235 IS NOT BOUND.
          CREATE OBJECT t235.
          t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t235->oval = t236.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t241.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t245 TYPE REF TO zif_lnt_statement_runnable.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t247) = zlnt_runtime_desc_78196487750d=>zlnt_member_d155_5eb73ae6c401.
    IF t247 IS BOUND.
      CREATE OBJECT t246.
      t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t246->cval = t247.
    ENDIF.
    t245 = zcl_lnt_st_combi_module=>opt_prio( i_first = t246 ).
    IF t245 IS BOUND.
      DATA t248 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t249 TYPE REF TO object.
      t249 = t245.
      TRY.
          t244 ?= t249.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t244 IS NOT BOUND.
        TRY.
            t248 ?= t245.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t248 IS BOUND.
          t244 = t248->source( ).
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
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t252 TYPE REF TO zif_lnt_statement_runnable.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t194 IS BOUND.
      DATA t255 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t256 TYPE REF TO object.
      t256 = t194.
      TRY.
          t253 ?= t256.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t253 IS NOT BOUND.
        TRY.
            t255 ?= t194.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t255 IS BOUND.
          t253 = t255->source( ).
        ENDIF.
        IF t253 IS NOT BOUND.
          CREATE OBJECT t253.
          t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t253->oval = t194.
        ENDIF.
      ENDIF.
    ENDIF.
    t252 = zcl_lnt_st_combi_module=>opt_prio( i_first = t253 ).
    IF t252 IS BOUND.
      DATA t257 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t258 TYPE REF TO object.
      t258 = t252.
      TRY.
          t251 ?= t258.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t251 IS NOT BOUND.
        TRY.
            t257 ?= t252.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t257 IS BOUND.
          t251 = t257->source( ).
        ENDIF.
        IF t251 IS NOT BOUND.
          CREATE OBJECT t251.
          t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t251->oval = t252.
        ENDIF.
      ENDIF.
    ENDIF.
    t241->load( ).
    APPEND t251 TO t241->items.
    t241->save( ).
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t261 TYPE REF TO zif_lnt_statement_runnable.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t263) = zlnt_runtime_desc_78196487750d=>zlnt_member_d311_e91cc88fe129.
    IF t263 IS BOUND.
      CREATE OBJECT t262.
      t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t262->cval = t263.
    ENDIF.
    t261 = zcl_lnt_st_combi_module=>opt_prio( i_first = t262 ).
    IF t261 IS BOUND.
      DATA t264 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t265 TYPE REF TO object.
      t265 = t261.
      TRY.
          t260 ?= t265.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t260 IS NOT BOUND.
        TRY.
            t264 ?= t261.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t264 IS BOUND.
          t260 = t264->source( ).
        ENDIF.
        IF t260 IS NOT BOUND.
          CREATE OBJECT t260.
          t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t260->oval = t261.
        ENDIF.
      ENDIF.
    ENDIF.
    t241->load( ).
    APPEND t260 TO t241->items.
    t241->save( ).
    t229 = zcl_lnt_st_combi_module=>seq( i_first = t232 i_second = t235 i_rest = t241 ).
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t273.
    t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t273->sval = |DELETE|.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t277 TYPE REF TO zif_lnt_statement_runnable.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t145 IS BOUND.
      DATA t281 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t282 TYPE REF TO object.
      t282 = t145.
      TRY.
          t279 ?= t282.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t279 IS NOT BOUND.
        TRY.
            t281 ?= t145.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t281 IS BOUND.
          t279 = t281->source( ).
        ENDIF.
        IF t279 IS NOT BOUND.
          CREATE OBJECT t279.
          t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t279->oval = t145.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t229 IS BOUND.
      DATA t286 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t287 TYPE REF TO object.
      t287 = t229.
      TRY.
          t284 ?= t287.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t284 IS NOT BOUND.
        TRY.
            t286 ?= t229.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t286 IS BOUND.
          t284 = t286->source( ).
        ENDIF.
        IF t284 IS NOT BOUND.
          CREATE OBJECT t284.
          t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t284->oval = t229.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t289.
    t277 = zcl_lnt_st_combi_module=>alt_prio( i_first = t279 i_second = t284 i_rest = t289 ).
    IF t277 IS BOUND.
      DATA t294 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t295 TYPE REF TO object.
      t295 = t277.
      TRY.
          t276 ?= t295.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t276 IS NOT BOUND.
        TRY.
            t294 ?= t277.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t294 IS BOUND.
          t276 = t294->source( ).
        ENDIF.
        IF t276 IS NOT BOUND.
          CREATE OBJECT t276.
          t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t276->oval = t277.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t297 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t297.
    t270 = zcl_lnt_st_combi_module=>seq( i_first = t273 i_second = t276 i_rest = t297 ).
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t270 IS BOUND.
      DATA t306 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t307 TYPE REF TO object.
      t307 = t270.
      TRY.
          t304 ?= t307.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t304 IS NOT BOUND.
        TRY.
            t306 ?= t270.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t306 IS BOUND.
          t304 = t306->source( ).
        ENDIF.
        IF t304 IS NOT BOUND.
          CREATE OBJECT t304.
          t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t304->oval = t270.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t304 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d442_7bcff8928bf7.
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
