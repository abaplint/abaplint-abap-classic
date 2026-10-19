* TS: src/abap/2_statements/expressions/sql_from_source.ts:12:1 SQLFromSource
CLASS zcl_lnt_sql_from_source DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_from_source IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    DATA t5 TYPE REF TO zcl_lnt_abap_release.
    DATA t6 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t6 = zcl_lnt_version_module=>release_b8cd.
    DATA(t7) = |v752|.
    t5 = t6->get( p0 = t7 ).
    t4 = t5.
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
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
    t14 = zcl_lnt_st_combi_module=>tok( i_t = t15 ).
    IF t14 IS BOUND.
      DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t17 TYPE REF TO object.
      t17 = t14.
      TRY.
          t13 ?= t17.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t16 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t16 IS BOUND.
          t13 = t16->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t14.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t19->cval = t20.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    t23 = zcl_lnt_st_combi_module=>seq( i_first = t13 i_second = t19 i_rest = t22 ).
    t11 = t23.
    IF t11 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t28 TYPE REF TO object.
      t28 = t11.
      TRY.
          t10 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t27 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t10 = t27->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t29 TYPE REF TO zcl_lnt_iver_options.
    DATA t31 TYPE REF TO zcl_lnt_iver_options.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t35) = |OpenABAP|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    t32 = t36.
    t31 = NEW zcl_lnt_iver_options( i_also = t32 ).
    CREATE OBJECT t31->zlnt_view_ownkeys_b0e8086400eb.
    t31->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t38 ).
    CREATE OBJECT t31->zlnt_json_ownkeys_70e5fd461788.
    t31->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t39) = |also|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    t29 = t31.
    t2 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t10 i_opts = t29 ).
    t1 = t2.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t46) = |AS|.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t45->sval = t46.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t48->cval = t49.
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    t52 = zcl_lnt_st_combi_module=>seq( i_first = t45 i_second = t48 i_rest = t51 ).
    t42 = t52.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t59 TYPE REF TO zcl_lnt_abap_release.
    DATA t60 TYPE REF TO zcl_lnt_abap_release.
    DATA t61 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t61 = zcl_lnt_version_module=>release_b8cd.
    DATA(t62) = |v752|.
    t60 = t61->get( p0 = t62 ).
    t59 = t60.
    IF t59 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t64 TYPE REF TO object.
      t64 = t59.
      TRY.
          t58 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t58 IS NOT BOUND.
        TRY.
            t63 ?= t59.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t58 = t63->source( ).
        ENDIF.
        IF t58 IS NOT BOUND.
          CREATE OBJECT t58.
          t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t58->oval = t59.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t69) = |WITH|.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = t69.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2.
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t71->cval = t72.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t68 i_second = t71 i_rest = t74 ).
    t66 = t75.
    IF t66 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t80 TYPE REF TO object.
      t80 = t66.
      TRY.
          t65 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t65 IS NOT BOUND.
        TRY.
            t79 ?= t66.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t65 = t79->source( ).
        ENDIF.
        IF t65 IS NOT BOUND.
          CREATE OBJECT t65.
          t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t65->oval = t66.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t81 TYPE REF TO zcl_lnt_iver_options.
    t57 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t58 i_first = t65 i_opts = t81 ).
    t56 = t57.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zcl_lnt_abap_release.
    DATA t88 TYPE REF TO zcl_lnt_abap_release.
    DATA t89 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t89 = zcl_lnt_version_module=>release_b8cd.
    DATA(t90) = |v796|.
    t88 = t89->get( p0 = t90 ).
    t87 = t88.
    IF t87 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t92 TYPE REF TO object.
      t92 = t87.
      TRY.
          t86 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t91 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t86 = t91->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = zlnt_runtime_desc_78196487750d=>zlnt_member_d323_2cd6e0020229.
    IF t94 IS BOUND.
      CREATE OBJECT t93.
      t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t93->cval = t94.
    ENDIF.
    DATA t95 TYPE REF TO zcl_lnt_iver_options.
    t85 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t86 i_first = t93 i_opts = t95 ).
    IF t85 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t97 TYPE REF TO object.
      t97 = t85.
      TRY.
          t84 ?= t97.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t96 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t84 = t96->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    t83 = zcl_lnt_st_combi_module=>opt_prio( i_first = t84 ).
    t82 = t83.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zcl_lnt_abap_release.
    DATA t104 TYPE REF TO zcl_lnt_abap_release.
    DATA t105 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t105 = zcl_lnt_version_module=>release_b8cd.
    DATA(t106) = |v913|.
    t104 = t105->get( p0 = t106 ).
    t103 = t104.
    IF t103 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t108 TYPE REF TO object.
      t108 = t103.
      TRY.
          t102 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t102 IS NOT BOUND.
        TRY.
            t107 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t102 = t107->source( ).
        ENDIF.
        IF t102 IS NOT BOUND.
          CREATE OBJECT t102.
          t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t102->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d312_76c7dcb129d0.
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t109->cval = t110.
    ENDIF.
    DATA t111 TYPE REF TO zcl_lnt_iver_options.
    t101 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t102 i_first = t109 i_opts = t111 ).
    IF t101 IS BOUND.
      DATA t112 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t113 TYPE REF TO object.
      t113 = t101.
      TRY.
          t100 ?= t113.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t100 IS NOT BOUND.
        TRY.
            t112 ?= t101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t112 IS BOUND.
          t100 = t112->source( ).
        ENDIF.
        IF t100 IS NOT BOUND.
          CREATE OBJECT t100.
          t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t100->oval = t101.
        ENDIF.
      ENDIF.
    ENDIF.
    t99 = zcl_lnt_st_combi_module=>opt_prio( i_first = t100 ).
    t98 = t99.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t118) = |KeyUser|.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t120) = NEW zcl_lnt_sql_path_for_entity( ).
    DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t122 TYPE REF TO object.
    t122 = t120.
    TRY.
        t119 ?= t122.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t119 IS NOT BOUND.
      TRY.
          t121 ?= t120.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t121 IS BOUND.
        t119 = t121->source( ).
      ENDIF.
      IF t119 IS NOT BOUND.
        CREATE OBJECT t119.
        t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t119->oval = t120.
      ENDIF.
    ENDIF.
    t117 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t118 i_first = t119 ).
    IF t117 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t124 TYPE REF TO object.
      t124 = t117.
      TRY.
          t116 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t116 IS NOT BOUND.
        TRY.
            t123 ?= t117.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t116 = t123->source( ).
        ENDIF.
        IF t116 IS NOT BOUND.
          CREATE OBJECT t116.
          t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t116->oval = t117.
        ENDIF.
      ENDIF.
    ENDIF.
    t115 = zcl_lnt_st_combi_module=>opt_prio( i_first = t116 ).
    t114 = t115.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t131) = NEW zcl_lnt_sql_hrrchy_aggrgt( ).
    DATA t132 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t133 TYPE REF TO object.
    t133 = t131.
    TRY.
        t130 ?= t133.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t130 IS NOT BOUND.
      TRY.
          t132 ?= t131.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS BOUND.
        t130 = t132->source( ).
      ENDIF.
      IF t130 IS NOT BOUND.
        CREATE OBJECT t130.
        t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t130->oval = t131.
      ENDIF.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t136) = NEW zcl_lnt_sql_hierarchy_accessor( ).
    DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t138 TYPE REF TO object.
    t138 = t136.
    TRY.
        t135 ?= t138.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t135 IS NOT BOUND.
      TRY.
          t137 ?= t136.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS BOUND.
        t135 = t137->source( ).
      ENDIF.
      IF t135 IS NOT BOUND.
        CREATE OBJECT t135.
        t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t135->oval = t136.
      ENDIF.
    ENDIF.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t140.
    t139 = t140.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t143) = NEW zcl_lnt_sql_hierarchy_source( ).
    DATA t144 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t145 TYPE REF TO object.
    t145 = t143.
    TRY.
        t142 ?= t145.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t142 IS NOT BOUND.
      TRY.
          t144 ?= t143.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t144 IS BOUND.
        t142 = t144->source( ).
      ENDIF.
      IF t142 IS NOT BOUND.
        CREATE OBJECT t142.
        t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t142->oval = t143.
      ENDIF.
    ENDIF.
    t139->load( ).
    APPEND t142 TO t139->items.
    t139->save( ).
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t151) = zlnt_runtime_desc_78196487750d=>zlnt_member_d290_f492e89b83f5.
    IF t151 IS BOUND.
      CREATE OBJECT t150.
      t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t150->cval = t151.
    ENDIF.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t114 IS BOUND.
      DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t156 TYPE REF TO object.
      t156 = t114.
      TRY.
          t153 ?= t156.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t155 ?= t114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t155 IS BOUND.
          t153 = t155->source( ).
        ENDIF.
        IF t153 IS NOT BOUND.
          CREATE OBJECT t153.
          t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t153->oval = t114.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t158.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    t159 = zcl_lnt_st_combi_module=>seq( i_first = t150 i_second = t153 i_rest = t158 ).
    t148 = t159.
    IF t148 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t164 TYPE REF TO object.
      t164 = t148.
      TRY.
          t147 ?= t164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t147 IS NOT BOUND.
        TRY.
            t163 ?= t148.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t147 = t163->source( ).
        ENDIF.
        IF t147 IS NOT BOUND.
          CREATE OBJECT t147.
          t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t147->oval = t148.
        ENDIF.
      ENDIF.
    ENDIF.
    t139->load( ).
    APPEND t147 TO t139->items.
    t139->save( ).
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t170 TYPE REF TO zcl_lnt_st_database_table.
    DATA t171 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t174) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t174->has = abap_true.
    t174->value = abap_true.
    t171 = t174.
    t170 = NEW zcl_lnt_st_database_table( i_no_dynamic = t171 ).
    DATA t176 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t177 TYPE REF TO object.
    t177 = t170.
    TRY.
        t169 ?= t177.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t169 IS NOT BOUND.
      TRY.
          t176 ?= t170.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t176 IS BOUND.
        t169 = t176->source( ).
      ENDIF.
      IF t169 IS NOT BOUND.
        CREATE OBJECT t169.
        t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t169->oval = t170.
      ENDIF.
    ENDIF.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t182) = zlnt_runtime_desc_78196487750d=>zlnt_member_d296_6b49712a4964.
    IF t182 IS BOUND.
      CREATE OBJECT t181.
      t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t181->cval = t182.
    ENDIF.
    t180 = zcl_lnt_st_combi_module=>opt_prio( i_first = t181 ).
    IF t180 IS BOUND.
      DATA t183 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t184 TYPE REF TO object.
      t184 = t180.
      TRY.
          t179 ?= t184.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t179 IS NOT BOUND.
        TRY.
            t183 ?= t180.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t183 IS BOUND.
          t179 = t183->source( ).
        ENDIF.
        IF t179 IS NOT BOUND.
          CREATE OBJECT t179.
          t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t179->oval = t180.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t186.
    t185 = t186.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t114 IS BOUND.
      DATA t190 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t191 TYPE REF TO object.
      t191 = t114.
      TRY.
          t188 ?= t191.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t188 IS NOT BOUND.
        TRY.
            t190 ?= t114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t190 IS BOUND.
          t188 = t190->source( ).
        ENDIF.
        IF t188 IS NOT BOUND.
          CREATE OBJECT t188.
          t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t188->oval = t114.
        ENDIF.
      ENDIF.
    ENDIF.
    t185->load( ).
    APPEND t188 TO t185->items.
    t185->save( ).
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    t192 = zcl_lnt_st_combi_module=>seq( i_first = t169 i_second = t179 i_rest = t185 ).
    t167 = t192.
    IF t167 IS BOUND.
      DATA t196 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t197 TYPE REF TO object.
      t197 = t167.
      TRY.
          t166 ?= t197.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t166 IS NOT BOUND.
        TRY.
            t196 ?= t167.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t196 IS BOUND.
          t166 = t196->source( ).
        ENDIF.
        IF t166 IS NOT BOUND.
          CREATE OBJECT t166.
          t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t166->oval = t167.
        ENDIF.
      ENDIF.
    ENDIF.
    t139->load( ).
    APPEND t166 TO t139->items.
    t139->save( ).
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t201 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t202 TYPE REF TO object.
      t202 = t1.
      TRY.
          t199 ?= t202.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t199 IS NOT BOUND.
        TRY.
            t201 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t201 IS BOUND.
          t199 = t201->source( ).
        ENDIF.
        IF t199 IS NOT BOUND.
          CREATE OBJECT t199.
          t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t199->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t139->load( ).
    APPEND t199 TO t139->items.
    t139->save( ).
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    t203 = zcl_lnt_st_combi_module=>alt_prio( i_first = t130 i_second = t135 i_rest = t139 ).
    t128 = t203.
    IF t128 IS BOUND.
      DATA t207 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t208 TYPE REF TO object.
      t208 = t128.
      TRY.
          t127 ?= t208.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t127 IS NOT BOUND.
        TRY.
            t207 ?= t128.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t207 IS BOUND.
          t127 = t207->source( ).
        ENDIF.
        IF t127 IS NOT BOUND.
          CREATE OBJECT t127.
          t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t127->oval = t128.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t82 IS BOUND.
      DATA t212 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t213 TYPE REF TO object.
      t213 = t82.
      TRY.
          t210 ?= t213.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t210 IS NOT BOUND.
        TRY.
            t212 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t212 IS BOUND.
          t210 = t212->source( ).
        ENDIF.
        IF t210 IS NOT BOUND.
          CREATE OBJECT t210.
          t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t210->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t215.
    t214 = t215.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t218 TYPE REF TO zif_lnt_statement_runnable.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t56 IS BOUND.
      DATA t221 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t222 TYPE REF TO object.
      t222 = t56.
      TRY.
          t219 ?= t222.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t219 IS NOT BOUND.
        TRY.
            t221 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t221 IS BOUND.
          t219 = t221->source( ).
        ENDIF.
        IF t219 IS NOT BOUND.
          CREATE OBJECT t219.
          t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t219->oval = t56.
        ENDIF.
      ENDIF.
    ENDIF.
    t218 = zcl_lnt_st_combi_module=>opt_prio( i_first = t219 ).
    IF t218 IS BOUND.
      DATA t223 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t224 TYPE REF TO object.
      t224 = t218.
      TRY.
          t217 ?= t224.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t217 IS NOT BOUND.
        TRY.
            t223 ?= t218.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t223 IS BOUND.
          t217 = t223->source( ).
        ENDIF.
        IF t217 IS NOT BOUND.
          CREATE OBJECT t217.
          t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t217->oval = t218.
        ENDIF.
      ENDIF.
    ENDIF.
    t214->load( ).
    APPEND t217 TO t214->items.
    t214->save( ).
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t227 TYPE REF TO zif_lnt_statement_runnable.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42 IS BOUND.
      DATA t230 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t231 TYPE REF TO object.
      t231 = t42.
      TRY.
          t228 ?= t231.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t228 IS NOT BOUND.
        TRY.
            t230 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t230 IS BOUND.
          t228 = t230->source( ).
        ENDIF.
        IF t228 IS NOT BOUND.
          CREATE OBJECT t228.
          t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t228->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    t227 = zcl_lnt_st_combi_module=>opt_prio( i_first = t228 ).
    IF t227 IS BOUND.
      DATA t232 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t233 TYPE REF TO object.
      t233 = t227.
      TRY.
          t226 ?= t233.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t226 IS NOT BOUND.
        TRY.
            t232 ?= t227.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t232 IS BOUND.
          t226 = t232->source( ).
        ENDIF.
        IF t226 IS NOT BOUND.
          CREATE OBJECT t226.
          t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t226->oval = t227.
        ENDIF.
      ENDIF.
    ENDIF.
    t214->load( ).
    APPEND t226 TO t214->items.
    t214->save( ).
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t98 IS BOUND.
      DATA t237 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t238 TYPE REF TO object.
      t238 = t98.
      TRY.
          t235 ?= t238.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t235 IS NOT BOUND.
        TRY.
            t237 ?= t98.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t237 IS BOUND.
          t235 = t237->source( ).
        ENDIF.
        IF t235 IS NOT BOUND.
          CREATE OBJECT t235.
          t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t235->oval = t98.
        ENDIF.
      ENDIF.
    ENDIF.
    t214->load( ).
    APPEND t235 TO t214->items.
    t214->save( ).
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    t239 = zcl_lnt_st_combi_module=>seq( i_first = t127 i_second = t210 i_rest = t214 ).
    result = t239.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d321_17502cdda795.
  ENDMETHOD.
ENDCLASS.
