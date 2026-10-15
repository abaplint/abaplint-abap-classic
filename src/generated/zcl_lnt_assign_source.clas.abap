* TS: src/abap/2_statements/expressions/assign_source.ts:10:1 AssignSource
CLASS zcl_lnt_assign_source DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_assign_source IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |COMPONENT|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    CLEAR t10.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t18.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t18 = zcl_lnt_version_module=>release_b8cd.
    DATA(t19) = |v740sp02|.
    t17 = t18->get( p0 = t19 ).
    t16 = t17.
    CLEAR t15.
    IF t16 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t20.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      CLEAR t20.
      t21 = t16.
      TRY.
          t15 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t20 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t15 = t20->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t22.
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t22->cval = t23.
    ENDIF.
    DATA t24 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t24.
    DATA(t25) = abap_true.
    IF t25 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA(t30) = |OpenABAP|.
        DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t31->has = abap_true.
        t31->value = t30.
        t28 = t31.
      ELSE.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        t28 = t32.
      ENDIF.
      t27 = t28.
      t26 = NEW zcl_lnt_iver_options( i_also = t27 ).
      CREATE OBJECT t26->zlnt_view_ownkeys_b0e8086400eb.
      t26->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t33 ).
      ENDIF.
      CREATE OBJECT t26->zlnt_json_ownkeys_70e5fd461788.
      t26->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t34) = |also|.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
      ENDIF.
      t24 = t26.
    ELSE.
      DATA t36 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t36.
      t24 = t36.
    ENDIF.
    t14 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t15 i_first = t22 i_opts = t24 ).
    CLEAR t13.
    IF t14 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t37.
      DATA t38 TYPE REF TO object.
      CLEAR t38.
      CLEAR t37.
      t38 = t14.
      TRY.
          t13 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t37 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t13 = t37->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t14.
        ENDIF.
      ENDIF.
    ENDIF.
    t12 = t13.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t40.
    CREATE OBJECT t40.
    t39 = t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA(t42) = t9.
    DATA(t43) = t12.
    DATA(t44) = t39.
    t41 = zcl_lnt_st_combi_module=>alt( i_first = t42 i_second = t43 i_rest = t44 ).
    t8 = t41.
    CLEAR t7.
    IF t8 IS BOUND.
      DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t45.
      DATA t46 TYPE REF TO object.
      CLEAR t46.
      CLEAR t45.
      t46 = t8.
      TRY.
          t7 ?= t46.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t45 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t45 IS BOUND.
          t7 = t45->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    t6 = t7.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t48.
    CREATE OBJECT t48.
    t47 = t48.
    DATA(t49) = t47.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = |OF STRUCTURE|.
    CLEAR t50.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = t51.
    t49->load( ).
    APPEND t50 TO t49->items.
    t49->save( ).
    DATA(t52) = t47.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t53.
    IF t54 IS BOUND.
      CREATE OBJECT t53.
      t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t53->cval = t54.
    ENDIF.
    t52->load( ).
    APPEND t53 TO t52->items.
    t52->save( ).
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA(t56) = t3.
    DATA(t57) = t6.
    DATA(t58) = t47.
    t55 = zcl_lnt_st_combi_module=>seq( i_first = t56 i_second = t57 i_rest = t58 ).
    t2 = t55.
    t1 = t2.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA(t61) = |KeyUser|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = |TABLE FIELD|.
    CLEAR t65.
    CREATE OBJECT t65.
    t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t65->sval = t66.
    t64 = t65.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t71.
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t71->cval = t72.
    ENDIF.
    t70 = t71.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t74.
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t74->cval = t75.
    ENDIF.
    t73 = t74.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    CREATE OBJECT t77.
    t76 = t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA(t79) = t70.
    DATA(t80) = t73.
    DATA(t81) = t76.
    t78 = zcl_lnt_st_combi_module=>alt( i_first = t79 i_second = t80 i_rest = t81 ).
    t69 = t78.
    CLEAR t68.
    IF t69 IS BOUND.
      DATA t82 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t82.
      DATA t83 TYPE REF TO object.
      CLEAR t83.
      CLEAR t82.
      t83 = t69.
      TRY.
          t68 ?= t83.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t82 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t82 IS BOUND.
          t68 = t82->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    t67 = t68.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t85.
    CREATE OBJECT t85.
    t84 = t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA(t87) = t64.
    DATA(t88) = t67.
    DATA(t89) = t84.
    t86 = zcl_lnt_st_combi_module=>seq( i_first = t87 i_second = t88 i_rest = t89 ).
    t63 = t86.
    CLEAR t62.
    IF t63 IS BOUND.
      DATA t90 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t90.
      DATA t91 TYPE REF TO object.
      CLEAR t91.
      CLEAR t90.
      t91 = t63.
      TRY.
          t62 ?= t91.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t90 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t90 IS BOUND.
          t62 = t90->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    t60 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t61 i_first = t62 ).
    t59 = t60.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d25_a168ca012db7bd.
    t96 = zcl_lnt_st_combi_module=>tok( i_t = t97 ).
    CLEAR t95.
    IF t96 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t98.
      DATA t99 TYPE REF TO object.
      CLEAR t99.
      CLEAR t98.
      t99 = t96.
      TRY.
          t95 ?= t99.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t98 ?= t96.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t95 = t98->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t96.
        ENDIF.
      ENDIF.
    ENDIF.
    t94 = t95.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA(t103) = |KeyUser|.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d35_f5313aa9b79ded.
    t105 = zcl_lnt_st_combi_module=>tok( i_t = t106 ).
    CLEAR t104.
    IF t105 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t107.
      DATA t108 TYPE REF TO object.
      CLEAR t108.
      CLEAR t107.
      t108 = t105.
      TRY.
          t104 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t104 IS NOT BOUND.
        TRY.
            t107 ?= t105.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t104 = t107->source( ).
        ENDIF.
        IF t104 IS NOT BOUND.
          CREATE OBJECT t104.
          t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t104->oval = t105.
        ENDIF.
      ENDIF.
    ENDIF.
    t102 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t103 i_first = t104 ).
    CLEAR t101.
    IF t102 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t109.
      DATA t110 TYPE REF TO object.
      CLEAR t110.
      CLEAR t109.
      t110 = t102.
      TRY.
          t101 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t109 ?= t102.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t101 = t109->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t102.
        ENDIF.
      ENDIF.
    ENDIF.
    t100 = t101.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t112.
    CREATE OBJECT t112.
    t111 = t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA(t114) = t94.
    DATA(t115) = t100.
    DATA(t116) = t111.
    t113 = zcl_lnt_st_combi_module=>alt( i_first = t114 i_second = t115 i_rest = t116 ).
    t93 = t113.
    t92 = t93.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t117.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t121.
    DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d25_a168ca012db7bd.
    t121 = zcl_lnt_st_combi_module=>tok( i_t = t122 ).
    CLEAR t120.
    IF t121 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t123.
      DATA t124 TYPE REF TO object.
      CLEAR t124.
      CLEAR t123.
      t124 = t121.
      TRY.
          t120 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t123 ?= t121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t120 = t123->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t121.
        ENDIF.
      ENDIF.
    ENDIF.
    t119 = t120.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA(t128) = zlnt_runtime_desc_78196487750d=>zlnt_member_d35_f5313aa9b79ded.
    t127 = zcl_lnt_st_combi_module=>tok( i_t = t128 ).
    CLEAR t126.
    IF t127 IS BOUND.
      DATA t129 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t129.
      DATA t130 TYPE REF TO object.
      CLEAR t130.
      CLEAR t129.
      t130 = t127.
      TRY.
          t126 ?= t130.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t129 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t129 IS BOUND.
          t126 = t129->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t125 = t126.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t132.
    CREATE OBJECT t132.
    t131 = t132.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA(t134) = t119.
    DATA(t135) = t125.
    DATA(t136) = t131.
    t133 = zcl_lnt_st_combi_module=>alt( i_first = t134 i_second = t135 i_rest = t136 ).
    t118 = t133.
    t117 = t118.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t143.
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t143->cval = t144.
    ENDIF.
    t142 = t143.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA(t152) = t92.
    CLEAR t151.
    IF t152 IS BOUND.
      DATA t153 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t153.
      DATA t154 TYPE REF TO object.
      CLEAR t154.
      CLEAR t153.
      t154 = t152.
      TRY.
          t151 ?= t154.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t151 IS NOT BOUND.
        TRY.
            t153 ?= t152.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t153 IS BOUND.
          t151 = t153->source( ).
        ENDIF.
        IF t151 IS NOT BOUND.
          CREATE OBJECT t151.
          t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t151->oval = t152.
        ENDIF.
      ENDIF.
    ENDIF.
    t150 = t151.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA(t157) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t156.
    IF t157 IS BOUND.
      CREATE OBJECT t156.
      t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t156->cval = t157.
    ENDIF.
    t155 = t156.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t159.
    CREATE OBJECT t159.
    t158 = t159.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t160.
    DATA(t161) = t150.
    DATA(t162) = t155.
    DATA(t163) = t158.
    t160 = zcl_lnt_st_combi_module=>seq( i_first = t161 i_second = t162 i_rest = t163 ).
    t149 = t160.
    CLEAR t148.
    IF t149 IS BOUND.
      DATA t164 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t164.
      DATA t165 TYPE REF TO object.
      CLEAR t165.
      CLEAR t164.
      t165 = t149.
      TRY.
          t148 ?= t165.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t148 IS NOT BOUND.
        TRY.
            t164 ?= t149.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t164 IS BOUND.
          t148 = t164->source( ).
        ENDIF.
        IF t148 IS NOT BOUND.
          CREATE OBJECT t148.
          t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t148->oval = t149.
        ENDIF.
      ENDIF.
    ENDIF.
    t147 = zcl_lnt_st_combi_module=>opt( i_first = t148 ).
    CLEAR t146.
    IF t147 IS BOUND.
      DATA t166 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t166.
      DATA t167 TYPE REF TO object.
      CLEAR t167.
      CLEAR t166.
      t167 = t147.
      TRY.
          t146 ?= t167.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t146 IS NOT BOUND.
        TRY.
            t166 ?= t147.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t166 IS BOUND.
          t146 = t166->source( ).
        ENDIF.
        IF t146 IS NOT BOUND.
          CREATE OBJECT t146.
          t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t146->oval = t147.
        ENDIF.
      ENDIF.
    ENDIF.
    t145 = t146.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t168.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t169.
    CREATE OBJECT t169.
    t168 = t169.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t170.
    DATA(t171) = t142.
    DATA(t172) = t145.
    DATA(t173) = t168.
    t170 = zcl_lnt_st_combi_module=>seq( i_first = t171 i_second = t172 i_rest = t173 ).
    t141 = t170.
    CLEAR t140.
    IF t141 IS BOUND.
      DATA t174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t174.
      DATA t175 TYPE REF TO object.
      CLEAR t175.
      CLEAR t174.
      t175 = t141.
      TRY.
          t140 ?= t175.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t174 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t174 IS BOUND.
          t140 = t174->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    t139 = t140.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = t1.
    CLEAR t177.
    IF t178 IS BOUND.
      DATA t179 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t179.
      DATA t180 TYPE REF TO object.
      CLEAR t180.
      CLEAR t179.
      t180 = t178.
      TRY.
          t177 ?= t180.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t177 IS NOT BOUND.
        TRY.
            t179 ?= t178.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t179 IS BOUND.
          t177 = t179->source( ).
        ENDIF.
        IF t177 IS NOT BOUND.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t177->oval = t178.
        ENDIF.
      ENDIF.
    ENDIF.
    t176 = t177.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t182.
    CREATE OBJECT t182.
    t181 = t182.
    DATA(t183) = t181.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA(t185) = t59.
    CLEAR t184.
    IF t185 IS BOUND.
      DATA t186 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t186.
      DATA t187 TYPE REF TO object.
      CLEAR t187.
      CLEAR t186.
      t187 = t185.
      TRY.
          t184 ?= t187.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t184 IS NOT BOUND.
        TRY.
            t186 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t186 IS BOUND.
          t184 = t186->source( ).
        ENDIF.
        IF t184 IS NOT BOUND.
          CREATE OBJECT t184.
          t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t184->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t183->load( ).
    APPEND t184 TO t183->items.
    t183->save( ).
    DATA(t188) = t181.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t190.
    DATA(t191) = |KeyUser|.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA(t196) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t195.
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t195->cval = t196.
    ENDIF.
    t194 = t195.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA(t204) = t117.
    CLEAR t203.
    IF t204 IS BOUND.
      DATA t205 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t205.
      DATA t206 TYPE REF TO object.
      CLEAR t206.
      CLEAR t205.
      t206 = t204.
      TRY.
          t203 ?= t206.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t203 IS NOT BOUND.
        TRY.
            t205 ?= t204.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t205 IS BOUND.
          t203 = t205->source( ).
        ENDIF.
        IF t203 IS NOT BOUND.
          CREATE OBJECT t203.
          t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t203->oval = t204.
        ENDIF.
      ENDIF.
    ENDIF.
    t202 = t203.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t209.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA(t212) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    CLEAR t211.
    IF t212 IS BOUND.
      CREATE OBJECT t211.
      t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t211->cval = t212.
    ENDIF.
    t210 = t211.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA(t215) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t214.
    IF t215 IS BOUND.
      CREATE OBJECT t214.
      t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t214->cval = t215.
    ENDIF.
    t213 = t214.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t217.
    CREATE OBJECT t217.
    t216 = t217.
    DATA t218 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t218.
    DATA(t219) = t210.
    DATA(t220) = t213.
    DATA(t221) = t216.
    t218 = zcl_lnt_st_combi_module=>alt( i_first = t219 i_second = t220 i_rest = t221 ).
    t209 = t218.
    CLEAR t208.
    IF t209 IS BOUND.
      DATA t222 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t222.
      DATA t223 TYPE REF TO object.
      CLEAR t223.
      CLEAR t222.
      t223 = t209.
      TRY.
          t208 ?= t223.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t208 IS NOT BOUND.
        TRY.
            t222 ?= t209.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t222 IS BOUND.
          t208 = t222->source( ).
        ENDIF.
        IF t208 IS NOT BOUND.
          CREATE OBJECT t208.
          t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t208->oval = t209.
        ENDIF.
      ENDIF.
    ENDIF.
    t207 = t208.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t224.
    DATA t225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t225.
    CREATE OBJECT t225.
    t224 = t225.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t226.
    DATA(t227) = t202.
    DATA(t228) = t207.
    DATA(t229) = t224.
    t226 = zcl_lnt_st_combi_module=>seq( i_first = t227 i_second = t228 i_rest = t229 ).
    t201 = t226.
    CLEAR t200.
    IF t201 IS BOUND.
      DATA t230 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t230.
      DATA t231 TYPE REF TO object.
      CLEAR t231.
      CLEAR t230.
      t231 = t201.
      TRY.
          t200 ?= t231.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t230 ?= t201.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t230 IS BOUND.
          t200 = t230->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t201.
        ENDIF.
      ENDIF.
    ENDIF.
    t199 = zcl_lnt_st_combi_module=>opt( i_first = t200 ).
    CLEAR t198.
    IF t199 IS BOUND.
      DATA t232 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t232.
      DATA t233 TYPE REF TO object.
      CLEAR t233.
      CLEAR t232.
      t233 = t199.
      TRY.
          t198 ?= t233.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t198 IS NOT BOUND.
        TRY.
            t232 ?= t199.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t232 IS BOUND.
          t198 = t232->source( ).
        ENDIF.
        IF t198 IS NOT BOUND.
          CREATE OBJECT t198.
          t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t198->oval = t199.
        ENDIF.
      ENDIF.
    ENDIF.
    t197 = t198.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t235.
    CREATE OBJECT t235.
    t234 = t235.
    DATA t236 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t236.
    DATA(t237) = t194.
    DATA(t238) = t197.
    DATA(t239) = t234.
    t236 = zcl_lnt_st_combi_module=>seq( i_first = t237 i_second = t238 i_rest = t239 ).
    t193 = t236.
    CLEAR t192.
    IF t193 IS BOUND.
      DATA t240 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t240.
      DATA t241 TYPE REF TO object.
      CLEAR t241.
      CLEAR t240.
      t241 = t193.
      TRY.
          t192 ?= t241.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t192 IS NOT BOUND.
        TRY.
            t240 ?= t193.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t240 IS BOUND.
          t192 = t240->source( ).
        ENDIF.
        IF t192 IS NOT BOUND.
          CREATE OBJECT t192.
          t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t192->oval = t193.
        ENDIF.
      ENDIF.
    ENDIF.
    t190 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t191 i_first = t192 ).
    CLEAR t189.
    IF t190 IS BOUND.
      DATA t242 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t242.
      DATA t243 TYPE REF TO object.
      CLEAR t243.
      CLEAR t242.
      t243 = t190.
      TRY.
          t189 ?= t243.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t242 ?= t190.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t242 IS BOUND.
          t189 = t242->source( ).
        ENDIF.
        IF t189 IS NOT BOUND.
          CREATE OBJECT t189.
          t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t189->oval = t190.
        ENDIF.
      ENDIF.
    ENDIF.
    t188->load( ).
    APPEND t189 TO t188->items.
    t188->save( ).
    DATA t244 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t244.
    DATA(t245) = t139.
    DATA(t246) = t176.
    DATA(t247) = t181.
    t244 = zcl_lnt_st_combi_module=>alt( i_first = t245 i_second = t246 i_rest = t247 ).
    t138 = t244.
    t137 = t138.
    DATA(t248) = t137.
    result = t248.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca.
  ENDMETHOD.
ENDCLASS.
