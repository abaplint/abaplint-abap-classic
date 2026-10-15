* TS: src/abap/2_statements/statements/update_database.ts:8:1 UpdateDatabase
CLASS zcl_lnt_st_update_database DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_update_database IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d316_43ef1bb28f89.
    CLEAR t4.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA(t15) = |,|.
    CLEAR t14.
    CREATE OBJECT t14.
    t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t14->sval = t15.
    t13 = zcl_lnt_st_combi_module=>opt( i_first = t14 ).
    CLEAR t12.
    IF t13 IS BOUND.
      DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t16.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      CLEAR t16.
      t17 = t13.
      TRY.
          t12 ?= t17.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS NOT BOUND.
        TRY.
            t16 ?= t13.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t16 IS BOUND.
          t12 = t16->source( ).
        ENDIF.
        IF t12 IS NOT BOUND.
          CREATE OBJECT t12.
          t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t12->oval = t13.
        ENDIF.
      ENDIF.
    ENDIF.
    t11 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d316_43ef1bb28f89.
    CLEAR t19.
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t19->cval = t20.
    ENDIF.
    t18 = t19.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    CREATE OBJECT t22.
    t21 = t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA(t24) = t11.
    DATA(t25) = t18.
    DATA(t26) = t21.
    t23 = zcl_lnt_st_combi_module=>seq( i_first = t24 i_second = t25 i_rest = t26 ).
    t10 = t23.
    CLEAR t9.
    IF t10 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      CLEAR t27.
      t28 = t10.
      TRY.
          t9 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t27 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t9 = t27->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t10.
        ENDIF.
      ENDIF.
    ENDIF.
    t8 = zcl_lnt_st_combi_module=>star( i_first = t9 ).
    CLEAR t7.
    IF t8 IS BOUND.
      DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t29.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      CLEAR t29.
      t30 = t8.
      TRY.
          t7 ?= t30.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t29 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t29 IS BOUND.
          t7 = t29->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    t6 = t7.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    CREATE OBJECT t32.
    t31 = t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA(t34) = t3.
    DATA(t35) = t6.
    DATA(t36) = t31.
    t33 = zcl_lnt_st_combi_module=>seq( i_first = t34 i_second = t35 i_rest = t36 ).
    t2 = t33.
    t1 = t2.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA(t41) = |SET|.
    CLEAR t40.
    CREATE OBJECT t40.
    t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t40->sval = t41.
    t39 = t40.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = t1.
    CLEAR t46.
    IF t47 IS BOUND.
      DATA t48 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t48.
      DATA t49 TYPE REF TO object.
      CLEAR t49.
      CLEAR t48.
      t49 = t47.
      TRY.
          t46 ?= t49.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t48 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t48 IS BOUND.
          t46 = t48->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    t45 = t46.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t51.
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t51->cval = t52.
    ENDIF.
    t50 = t51.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t54.
    CREATE OBJECT t54.
    t53 = t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA(t56) = t45.
    DATA(t57) = t50.
    DATA(t58) = t53.
    t55 = zcl_lnt_st_combi_module=>alt( i_first = t56 i_second = t57 i_rest = t58 ).
    t44 = t55.
    CLEAR t43.
    IF t44 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t59.
      DATA t60 TYPE REF TO object.
      CLEAR t60.
      CLEAR t59.
      t60 = t44.
      TRY.
          t43 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t43 IS NOT BOUND.
        TRY.
            t59 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t43 = t59->source( ).
        ENDIF.
        IF t43 IS NOT BOUND.
          CREATE OBJECT t43.
          t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t43->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    t42 = t43.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t62.
    CREATE OBJECT t62.
    t61 = t62.
    DATA(t63) = t61.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = |WHERE|.
    CLEAR t69.
    CREATE OBJECT t69.
    t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t69->sval = t70.
    t68 = t69.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    CLEAR t72.
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t72->cval = t73.
    ENDIF.
    t71 = t72.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    CREATE OBJECT t75.
    t74 = t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA(t77) = t68.
    DATA(t78) = t71.
    DATA(t79) = t74.
    t76 = zcl_lnt_st_combi_module=>seq( i_first = t77 i_second = t78 i_rest = t79 ).
    t67 = t76.
    CLEAR t66.
    IF t67 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t80.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      CLEAR t80.
      t81 = t67.
      TRY.
          t66 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t80 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t66 = t80->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    t65 = zcl_lnt_st_combi_module=>opt( i_first = t66 ).
    CLEAR t64.
    IF t65 IS BOUND.
      DATA t82 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t82.
      DATA t83 TYPE REF TO object.
      CLEAR t83.
      CLEAR t82.
      t83 = t65.
      TRY.
          t64 ?= t83.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t64 IS NOT BOUND.
        TRY.
            t82 ?= t65.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t82 IS BOUND.
          t64 = t82->source( ).
        ENDIF.
        IF t64 IS NOT BOUND.
          CREATE OBJECT t64.
          t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t64->oval = t65.
        ENDIF.
      ENDIF.
    ENDIF.
    t63->load( ).
    APPEND t64 TO t63->items.
    t63->save( ).
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA(t85) = t39.
    DATA(t86) = t42.
    DATA(t87) = t61.
    t84 = zcl_lnt_st_combi_module=>seq( i_first = t85 i_second = t86 i_rest = t87 ).
    t38 = t84.
    t37 = t38.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = |INDICATORS SET STRUCTURE|.
    CLEAR t91.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = t92.
    t90 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = zlnt_runtime_desc_78196487750d=>zlnt_member_d100_553f73368b64.
    CLEAR t94.
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t94->cval = t95.
    ENDIF.
    t93 = t94.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t97.
    CREATE OBJECT t97.
    t96 = t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA(t99) = t90.
    DATA(t100) = t93.
    DATA(t101) = t96.
    t98 = zcl_lnt_st_combi_module=>seq( i_first = t99 i_second = t100 i_rest = t101 ).
    t89 = t98.
    t88 = t89.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t108.
    DATA t109 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t110.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t110 = zcl_lnt_version_module=>release_b8cd.
    DATA(t111) = |v915|.
    t109 = t110->get( p0 = t111 ).
    t108 = t109.
    CLEAR t107.
    IF t108 IS BOUND.
      DATA t112 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t112.
      DATA t113 TYPE REF TO object.
      CLEAR t113.
      CLEAR t112.
      t113 = t108.
      TRY.
          t107 ?= t113.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t112 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t112 IS BOUND.
          t107 = t112->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d332_d01031496384.
    CLEAR t114.
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t114->cval = t115.
    ENDIF.
    DATA t116 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t116.
    t106 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t107 i_first = t114 i_opts = t116 ).
    CLEAR t105.
    IF t106 IS BOUND.
      DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t117.
      DATA t118 TYPE REF TO object.
      CLEAR t118.
      CLEAR t117.
      t118 = t106.
      TRY.
          t105 ?= t118.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t117 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t117 IS BOUND.
          t105 = t117->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    t104 = t105.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t123.
    DATA t124 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t125.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t125 = zcl_lnt_version_module=>release_b8cd.
    DATA(t126) = |v755|.
    t124 = t125->get( p0 = t126 ).
    t123 = t124.
    CLEAR t122.
    IF t123 IS BOUND.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t127.
      DATA t128 TYPE REF TO object.
      CLEAR t128.
      CLEAR t127.
      t128 = t123.
      TRY.
          t122 ?= t128.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t122 IS NOT BOUND.
        TRY.
            t127 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS BOUND.
          t122 = t127->source( ).
        ENDIF.
        IF t122 IS NOT BOUND.
          CREATE OBJECT t122.
          t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t122->oval = t123.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = t88.
    CLEAR t129.
    IF t130 IS BOUND.
      DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t131.
      DATA t132 TYPE REF TO object.
      CLEAR t132.
      CLEAR t131.
      t132 = t130.
      TRY.
          t129 ?= t132.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t131 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t131 IS BOUND.
          t129 = t131->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t133 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t133.
    t121 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t122 i_first = t129 i_opts = t133 ).
    CLEAR t120.
    IF t121 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t134.
      DATA t135 TYPE REF TO object.
      CLEAR t135.
      CLEAR t134.
      t135 = t121.
      TRY.
          t120 ?= t135.
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
    t119 = t120.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t137.
    CREATE OBJECT t137.
    t136 = t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA(t139) = t104.
    DATA(t140) = t119.
    DATA(t141) = t136.
    t138 = zcl_lnt_st_combi_module=>alt_prio( i_first = t139 i_second = t140 i_rest = t141 ).
    t103 = t138.
    t102 = t103.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t142.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA(t146) = |FROM|.
    CLEAR t145.
    CREATE OBJECT t145.
    t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t145->sval = t146.
    t144 = t145.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA(t151) = |TABLE|.
    CLEAR t150.
    CREATE OBJECT t150.
    t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t150->sval = t151.
    t149 = zcl_lnt_st_combi_module=>opt( i_first = t150 ).
    CLEAR t148.
    IF t149 IS BOUND.
      DATA t152 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t152.
      DATA t153 TYPE REF TO object.
      CLEAR t153.
      CLEAR t152.
      t153 = t149.
      TRY.
          t148 ?= t153.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t148 IS NOT BOUND.
        TRY.
            t152 ?= t149.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t152 IS BOUND.
          t148 = t152->source( ).
        ENDIF.
        IF t148 IS NOT BOUND.
          CREATE OBJECT t148.
          t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t148->oval = t149.
        ENDIF.
      ENDIF.
    ENDIF.
    t147 = t148.
    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t155.
    CREATE OBJECT t155.
    t154 = t155.
    DATA(t156) = t154.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    CLEAR t157.
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    t156->load( ).
    APPEND t157 TO t156->items.
    t156->save( ).
    DATA(t159) = t154.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA(t163) = t102.
    CLEAR t162.
    IF t163 IS BOUND.
      DATA t164 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t164.
      DATA t165 TYPE REF TO object.
      CLEAR t165.
      CLEAR t164.
      t165 = t163.
      TRY.
          t162 ?= t165.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t162 IS NOT BOUND.
        TRY.
            t164 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t164 IS BOUND.
          t162 = t164->source( ).
        ENDIF.
        IF t162 IS NOT BOUND.
          CREATE OBJECT t162.
          t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t162->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    t161 = zcl_lnt_st_combi_module=>opt_prio( i_first = t162 ).
    CLEAR t160.
    IF t161 IS BOUND.
      DATA t166 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t166.
      DATA t167 TYPE REF TO object.
      CLEAR t167.
      CLEAR t166.
      t167 = t161.
      TRY.
          t160 ?= t167.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t160 IS NOT BOUND.
        TRY.
            t166 ?= t161.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t166 IS BOUND.
          t160 = t166->source( ).
        ENDIF.
        IF t160 IS NOT BOUND.
          CREATE OBJECT t160.
          t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t160->oval = t161.
        ENDIF.
      ENDIF.
    ENDIF.
    t159->load( ).
    APPEND t160 TO t159->items.
    t159->save( ).
    DATA(t168) = t154.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA(t172) = zlnt_runtime_desc_78196487750d=>zlnt_member_d339_ea6d392265d6.
    CLEAR t171.
    IF t172 IS BOUND.
      CREATE OBJECT t171.
      t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t171->cval = t172.
    ENDIF.
    t170 = zcl_lnt_st_combi_module=>opt_prio( i_first = t171 ).
    CLEAR t169.
    IF t170 IS BOUND.
      DATA t173 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t173.
      DATA t174 TYPE REF TO object.
      CLEAR t174.
      CLEAR t173.
      t174 = t170.
      TRY.
          t169 ?= t174.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t169 IS NOT BOUND.
        TRY.
            t173 ?= t170.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t173 IS BOUND.
          t169 = t173->source( ).
        ENDIF.
        IF t169 IS NOT BOUND.
          CREATE OBJECT t169.
          t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t169->oval = t170.
        ENDIF.
      ENDIF.
    ENDIF.
    t168->load( ).
    APPEND t169 TO t168->items.
    t168->save( ).
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t175.
    DATA(t176) = t144.
    DATA(t177) = t147.
    DATA(t178) = t154.
    t175 = zcl_lnt_st_combi_module=>seq( i_first = t176 i_second = t177 i_rest = t178 ).
    t143 = t175.
    t142 = t143.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t179.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA(t183) = |UPDATE|.
    CLEAR t182.
    CREATE OBJECT t182.
    t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t182->sval = t183.
    t181 = t182.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA(t186) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    CLEAR t185.
    IF t186 IS BOUND.
      CREATE OBJECT t185.
      t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t185->cval = t186.
    ENDIF.
    t184 = t185.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t188.
    CREATE OBJECT t188.
    t187 = t188.
    DATA(t189) = t187.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA(t193) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    CLEAR t192.
    IF t193 IS BOUND.
      CREATE OBJECT t192.
      t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t192->cval = t193.
    ENDIF.
    t191 = zcl_lnt_st_combi_module=>opt( i_first = t192 ).
    CLEAR t190.
    IF t191 IS BOUND.
      DATA t194 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t194.
      DATA t195 TYPE REF TO object.
      CLEAR t195.
      CLEAR t194.
      t195 = t191.
      TRY.
          t190 ?= t195.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t190 IS NOT BOUND.
        TRY.
            t194 ?= t191.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t194 IS BOUND.
          t190 = t194->source( ).
        ENDIF.
        IF t190 IS NOT BOUND.
          CREATE OBJECT t190.
          t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t190->oval = t191.
        ENDIF.
      ENDIF.
    ENDIF.
    t189->load( ).
    APPEND t190 TO t189->items.
    t189->save( ).
    DATA(t196) = t187.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA(t200) = zlnt_runtime_desc_78196487750d=>zlnt_member_d155_5eb73ae6c401.
    CLEAR t199.
    IF t200 IS BOUND.
      CREATE OBJECT t199.
      t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t199->cval = t200.
    ENDIF.
    t198 = zcl_lnt_st_combi_module=>opt( i_first = t199 ).
    CLEAR t197.
    IF t198 IS BOUND.
      DATA t201 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t201.
      DATA t202 TYPE REF TO object.
      CLEAR t202.
      CLEAR t201.
      t202 = t198.
      TRY.
          t197 ?= t202.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t197 IS NOT BOUND.
        TRY.
            t201 ?= t198.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t201 IS BOUND.
          t197 = t201->source( ).
        ENDIF.
        IF t197 IS NOT BOUND.
          CREATE OBJECT t197.
          t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t197->oval = t198.
        ENDIF.
      ENDIF.
    ENDIF.
    t196->load( ).
    APPEND t197 TO t196->items.
    t196->save( ).
    DATA(t203) = t187.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA(t210) = t142.
    CLEAR t209.
    IF t210 IS BOUND.
      DATA t211 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t211.
      DATA t212 TYPE REF TO object.
      CLEAR t212.
      CLEAR t211.
      t212 = t210.
      TRY.
          t209 ?= t212.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t209 IS NOT BOUND.
        TRY.
            t211 ?= t210.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t211 IS BOUND.
          t209 = t211->source( ).
        ENDIF.
        IF t209 IS NOT BOUND.
          CREATE OBJECT t209.
          t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t209->oval = t210.
        ENDIF.
      ENDIF.
    ENDIF.
    t208 = t209.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA(t215) = t37.
    CLEAR t214.
    IF t215 IS BOUND.
      DATA t216 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t216.
      DATA t217 TYPE REF TO object.
      CLEAR t217.
      CLEAR t216.
      t217 = t215.
      TRY.
          t214 ?= t217.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t214 IS NOT BOUND.
        TRY.
            t216 ?= t215.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t216 IS BOUND.
          t214 = t216->source( ).
        ENDIF.
        IF t214 IS NOT BOUND.
          CREATE OBJECT t214.
          t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t214->oval = t215.
        ENDIF.
      ENDIF.
    ENDIF.
    t213 = t214.
    DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t218.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t219.
    CREATE OBJECT t219.
    t218 = t219.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t220.
    DATA(t221) = t208.
    DATA(t222) = t213.
    DATA(t223) = t218.
    t220 = zcl_lnt_st_combi_module=>alt( i_first = t221 i_second = t222 i_rest = t223 ).
    t207 = t220.
    CLEAR t206.
    IF t207 IS BOUND.
      DATA t224 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t224.
      DATA t225 TYPE REF TO object.
      CLEAR t225.
      CLEAR t224.
      t225 = t207.
      TRY.
          t206 ?= t225.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t206 IS NOT BOUND.
        TRY.
            t224 ?= t207.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t224 IS BOUND.
          t206 = t224->source( ).
        ENDIF.
        IF t206 IS NOT BOUND.
          CREATE OBJECT t206.
          t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t206->oval = t207.
        ENDIF.
      ENDIF.
    ENDIF.
    t205 = zcl_lnt_st_combi_module=>opt( i_first = t206 ).
    CLEAR t204.
    IF t205 IS BOUND.
      DATA t226 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t226.
      DATA t227 TYPE REF TO object.
      CLEAR t227.
      CLEAR t226.
      t227 = t205.
      TRY.
          t204 ?= t227.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t204 IS NOT BOUND.
        TRY.
            t226 ?= t205.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t226 IS BOUND.
          t204 = t226->source( ).
        ENDIF.
        IF t204 IS NOT BOUND.
          CREATE OBJECT t204.
          t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t204->oval = t205.
        ENDIF.
      ENDIF.
    ENDIF.
    t203->load( ).
    APPEND t204 TO t203->items.
    t203->save( ).
    DATA(t228) = t187.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA(t232) = zlnt_runtime_desc_78196487750d=>zlnt_member_d311_e91cc88fe129.
    CLEAR t231.
    IF t232 IS BOUND.
      CREATE OBJECT t231.
      t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t231->cval = t232.
    ENDIF.
    t230 = zcl_lnt_st_combi_module=>opt_prio( i_first = t231 ).
    CLEAR t229.
    IF t230 IS BOUND.
      DATA t233 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t233.
      DATA t234 TYPE REF TO object.
      CLEAR t234.
      CLEAR t233.
      t234 = t230.
      TRY.
          t229 ?= t234.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t229 IS NOT BOUND.
        TRY.
            t233 ?= t230.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t233 IS BOUND.
          t229 = t233->source( ).
        ENDIF.
        IF t229 IS NOT BOUND.
          CREATE OBJECT t229.
          t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t229->oval = t230.
        ENDIF.
      ENDIF.
    ENDIF.
    t228->load( ).
    APPEND t229 TO t228->items.
    t228->save( ).
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t235.
    DATA(t236) = t181.
    DATA(t237) = t184.
    DATA(t238) = t187.
    t235 = zcl_lnt_st_combi_module=>seq( i_first = t236 i_second = t237 i_rest = t238 ).
    t180 = t235.
    t179 = t180.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t239.
    DATA(t240) = |KeyUser|.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA(t242) = t179.
    CLEAR t241.
    IF t242 IS BOUND.
      DATA t243 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t243.
      DATA t244 TYPE REF TO object.
      CLEAR t244.
      CLEAR t243.
      t244 = t242.
      TRY.
          t241 ?= t244.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t241 IS NOT BOUND.
        TRY.
            t243 ?= t242.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t243 IS BOUND.
          t241 = t243->source( ).
        ENDIF.
        IF t241 IS NOT BOUND.
          CREATE OBJECT t241.
          t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t241->oval = t242.
        ENDIF.
      ENDIF.
    ENDIF.
    t239 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t240 i_first = t241 ).
    result = t239.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d676_4264b2ce5dbc.
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
