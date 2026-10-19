* TS: src/abap/2_statements/expressions/compare.ts:7:1 Compare
CLASS zcl_lnt_st_compare DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_compare IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    t11 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t10 ).
    t1 = t11.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090.
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
    IF t1 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t27 TYPE REF TO object.
      t27 = t1.
      TRY.
          t24 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t26 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t24 = t26->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    t28 = t29.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t37) = |,|.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = t37.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t42 TYPE REF TO object.
      t42 = t1.
      TRY.
          t39 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t39 IS NOT BOUND.
        TRY.
            t41 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t39 = t41->source( ).
        ENDIF.
        IF t39 IS NOT BOUND.
          CREATE OBJECT t39.
          t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t39->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    t45 = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t39 i_rest = t44 ).
    t34 = t45.
    IF t34 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t50 TYPE REF TO object.
      t50 = t34.
      TRY.
          t33 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t49 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t33 = t49->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    t32 = zcl_lnt_st_combi_module=>plus( i_first = t33 ).
    IF t32 IS BOUND.
      DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t52 TYPE REF TO object.
      t52 = t32.
      TRY.
          t31 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t51 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS BOUND.
          t31 = t51->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    t28->load( ).
    APPEND t31 TO t28->items.
    t28->save( ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t55 = zcl_lnt_st_combi_module=>tok( i_t = t56 ).
    IF t55 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t58 TYPE REF TO object.
      t58 = t55.
      TRY.
          t54 ?= t58.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t57 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t54 = t57->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    t28->load( ).
    APPEND t54 TO t28->items.
    t28->save( ).
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    t59 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t24 i_rest = t28 ).
    t15 = t59.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t69) = |NOT|.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = t69.
    t67 = zcl_lnt_st_combi_module=>opt_prio( i_first = t68 ).
    IF t67 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t71 TYPE REF TO object.
      t71 = t67.
      TRY.
          t66 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t70 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t66 = t70->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = |IN|.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = t74.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t76.
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t87 TYPE REF TO object.
      t87 = t15.
      TRY.
          t84 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t86 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t84 = t86->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    t90 = zcl_lnt_st_combi_module=>alt_prio( i_first = t81 i_second = t84 i_rest = t89 ).
    t79 = t90.
    IF t79 IS BOUND.
      DATA t94 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t95 TYPE REF TO object.
      t95 = t79.
      TRY.
          t78 ?= t95.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t78 IS NOT BOUND.
        TRY.
            t94 ?= t79.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t94 IS BOUND.
          t78 = t94->source( ).
        ENDIF.
        IF t78 IS NOT BOUND.
          CREATE OBJECT t78.
          t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t78->oval = t79.
        ENDIF.
      ENDIF.
    ENDIF.
    t75->load( ).
    APPEND t78 TO t75->items.
    t75->save( ).
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    t96 = zcl_lnt_st_combi_module=>seq( i_first = t66 i_second = t73 i_rest = t75 ).
    t63 = t96.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t104) = |IS|.
    CREATE OBJECT t103.
    t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t103->sval = t104.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t109) = |NOT|.
    CREATE OBJECT t108.
    t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t108->sval = t109.
    t107 = zcl_lnt_st_combi_module=>opt_prio( i_first = t108 ).
    IF t107 IS BOUND.
      DATA t110 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t111 TYPE REF TO object.
      t111 = t107.
      TRY.
          t106 ?= t111.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t106 IS NOT BOUND.
        TRY.
            t110 ?= t107.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t110 IS BOUND.
          t106 = t110->source( ).
        ENDIF.
        IF t106 IS NOT BOUND.
          CREATE OBJECT t106.
          t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t106->oval = t107.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t113.
    t112 = t113.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = |SUPPLIED|.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = t119.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t122) = |BOUND|.
    CREATE OBJECT t121.
    t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t121->sval = t122.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t124.
    t123 = t124.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t129 TYPE REF TO zcl_lnt_abap_release.
    DATA t130 TYPE REF TO zcl_lnt_abap_release.
    DATA t131 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t131 = zcl_lnt_version_module=>release_b8cd.
    DATA(t132) = |v750|.
    t130 = t131->get( p0 = t132 ).
    t129 = t130.
    IF t129 IS BOUND.
      DATA t133 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t134 TYPE REF TO object.
      t134 = t129.
      TRY.
          t128 ?= t134.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t128 IS NOT BOUND.
        TRY.
            t133 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t133 IS BOUND.
          t128 = t133->source( ).
        ENDIF.
        IF t128 IS NOT BOUND.
          CREATE OBJECT t128.
          t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t128->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t139) = |INSTANCE OF|.
    CREATE OBJECT t138.
    t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t138->sval = t139.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t142) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    IF t142 IS BOUND.
      CREATE OBJECT t141.
      t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t141->cval = t142.
    ENDIF.
    DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t144.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    t145 = zcl_lnt_st_combi_module=>seq( i_first = t138 i_second = t141 i_rest = t144 ).
    t136 = t145.
    IF t136 IS BOUND.
      DATA t149 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t150 TYPE REF TO object.
      t150 = t136.
      TRY.
          t135 ?= t150.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t135 IS NOT BOUND.
        TRY.
            t149 ?= t136.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t149 IS BOUND.
          t135 = t149->source( ).
        ENDIF.
        IF t135 IS NOT BOUND.
          CREATE OBJECT t135.
          t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t135->oval = t136.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t151 TYPE REF TO zcl_lnt_iver_options.
    DATA t153 TYPE REF TO zcl_lnt_iver_options.
    DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t157) = |OpenABAP|.
    DATA(t158) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t158->has = abap_true.
    t158->value = t157.
    t154 = t158.
    t153 = NEW zcl_lnt_iver_options( i_also = t154 ).
    CREATE OBJECT t153->zlnt_view_ownkeys_b0e8086400eb.
    t153->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t160 ).
    CREATE OBJECT t153->zlnt_json_ownkeys_70e5fd461788.
    t153->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t161) = |also|.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
    t151 = t153.
    t127 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t128 i_first = t135 i_opts = t151 ).
    IF t127 IS BOUND.
      DATA t164 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t165 TYPE REF TO object.
      t165 = t127.
      TRY.
          t126 ?= t165.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t164 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t164 IS BOUND.
          t126 = t164->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t123->load( ).
    APPEND t126 TO t123->items.
    t123->save( ).
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t168) = |REQUESTED|.
    CREATE OBJECT t167.
    t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t167->sval = t168.
    t123->load( ).
    APPEND t167 TO t123->items.
    t123->save( ).
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t171) = |INITIAL|.
    CREATE OBJECT t170.
    t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t170->sval = t171.
    t123->load( ).
    APPEND t170 TO t123->items.
    t123->save( ).
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    t172 = zcl_lnt_st_combi_module=>alt_prio( i_first = t118 i_second = t121 i_rest = t123 ).
    t116 = t172.
    IF t116 IS BOUND.
      DATA t176 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t177 TYPE REF TO object.
      t177 = t116.
      TRY.
          t115 ?= t177.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t176 ?= t116.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t176 IS BOUND.
          t115 = t176->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t116.
        ENDIF.
      ENDIF.
    ENDIF.
    t112->load( ).
    APPEND t115 TO t112->items.
    t112->save( ).
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    t178 = zcl_lnt_st_combi_module=>seq( i_first = t103 i_second = t106 i_rest = t112 ).
    t100 = t178.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t188) = |NOT|.
    CREATE OBJECT t187.
    t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t187->sval = t188.
    t186 = zcl_lnt_st_combi_module=>opt_prio( i_first = t187 ).
    IF t186 IS BOUND.
      DATA t189 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t190 TYPE REF TO object.
      t190 = t186.
      TRY.
          t185 ?= t190.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t189 ?= t186.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t189 IS BOUND.
          t185 = t189->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t186.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t193) = |BETWEEN|.
    CREATE OBJECT t192.
    t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t192->sval = t193.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t195 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t195.
    t194 = t195.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t198) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t198 IS BOUND.
      CREATE OBJECT t197.
      t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t197->cval = t198.
    ENDIF.
    t194->load( ).
    APPEND t197 TO t194->items.
    t194->save( ).
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t201) = |AND|.
    CREATE OBJECT t200.
    t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t200->sval = t201.
    t194->load( ).
    APPEND t200 TO t194->items.
    t194->save( ).
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t204) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t203->cval = t204.
    ENDIF.
    t194->load( ).
    APPEND t203 TO t194->items.
    t194->save( ).
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    t205 = zcl_lnt_st_combi_module=>seq( i_first = t185 i_second = t192 i_rest = t194 ).
    t182 = t205.
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t212 TYPE REF TO zcl_lnt_abap_release.
    DATA t213 TYPE REF TO zcl_lnt_abap_release.
    DATA t214 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t214 = zcl_lnt_version_module=>release_b8cd.
    DATA(t215) = |v740sp08|.
    t213 = t214->get( p0 = t215 ).
    t212 = t213.
    IF t212 IS BOUND.
      DATA t216 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t217 TYPE REF TO object.
      t217 = t212.
      TRY.
          t211 ?= t217.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t211 IS NOT BOUND.
        TRY.
            t216 ?= t212.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t216 IS BOUND.
          t211 = t216->source( ).
        ENDIF.
        IF t211 IS NOT BOUND.
          CREATE OBJECT t211.
          t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t211->oval = t212.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t219) = zlnt_runtime_desc_78196487750d=>zlnt_member_d122_32972f7bb68e.
    IF t219 IS BOUND.
      CREATE OBJECT t218.
      t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t218->cval = t219.
    ENDIF.
    DATA t220 TYPE REF TO zcl_lnt_iver_options.
    DATA t222 TYPE REF TO zcl_lnt_iver_options.
    DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t226) = |OpenABAP|.
    DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t227->has = abap_true.
    t227->value = t226.
    t223 = t227.
    t222 = NEW zcl_lnt_iver_options( i_also = t223 ).
    CREATE OBJECT t222->zlnt_view_ownkeys_b0e8086400eb.
    t222->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t229 ).
    CREATE OBJECT t222->zlnt_json_ownkeys_70e5fd461788.
    t222->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t230) = |also|.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t230 p1 = t231 ).
    t220 = t222.
    t210 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t211 i_first = t218 i_opts = t220 ).
    t209 = t210.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t237) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t237 IS BOUND.
      CREATE OBJECT t236.
      t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t236->cval = t237.
    ENDIF.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t243 TYPE REF TO zif_lnt_statement_runnable.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t246) = zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e.
    IF t246 IS BOUND.
      CREATE OBJECT t245.
      t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t245->cval = t246.
    ENDIF.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t249) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t249 IS BOUND.
      CREATE OBJECT t248.
      t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t248->cval = t249.
    ENDIF.
    DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t251.
    DATA t252 TYPE REF TO zif_lnt_statement_runnable.
    t252 = zcl_lnt_st_combi_module=>seq( i_first = t245 i_second = t248 i_rest = t251 ).
    t243 = t252.
    IF t243 IS BOUND.
      DATA t256 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t257 TYPE REF TO object.
      t257 = t243.
      TRY.
          t242 ?= t257.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t242 IS NOT BOUND.
        TRY.
            t256 ?= t243.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t256 IS BOUND.
          t242 = t256->source( ).
        ENDIF.
        IF t242 IS NOT BOUND.
          CREATE OBJECT t242.
          t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t242->oval = t243.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t63 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t262 TYPE REF TO object.
      t262 = t63.
      TRY.
          t259 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t259 IS NOT BOUND.
        TRY.
            t261 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t259 = t261->source( ).
        ENDIF.
        IF t259 IS NOT BOUND.
          CREATE OBJECT t259.
          t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t259->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t264.
    t263 = t264.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182 IS BOUND.
      DATA t268 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t269 TYPE REF TO object.
      t269 = t182.
      TRY.
          t266 ?= t269.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t266 IS NOT BOUND.
        TRY.
            t268 ?= t182.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t268 IS BOUND.
          t266 = t268->source( ).
        ENDIF.
        IF t266 IS NOT BOUND.
          CREATE OBJECT t266.
          t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t266->oval = t182.
        ENDIF.
      ENDIF.
    ENDIF.
    t263->load( ).
    APPEND t266 TO t263->items.
    t263->save( ).
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t100 IS BOUND.
      DATA t273 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t274 TYPE REF TO object.
      t274 = t100.
      TRY.
          t271 ?= t274.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t271 IS NOT BOUND.
        TRY.
            t273 ?= t100.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t273 IS BOUND.
          t271 = t273->source( ).
        ENDIF.
        IF t271 IS NOT BOUND.
          CREATE OBJECT t271.
          t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t271->oval = t100.
        ENDIF.
      ENDIF.
    ENDIF.
    t263->load( ).
    APPEND t271 TO t263->items.
    t263->save( ).
    DATA t275 TYPE REF TO zif_lnt_statement_runnable.
    t275 = zcl_lnt_st_combi_module=>alt_prio( i_first = t242 i_second = t259 i_rest = t263 ).
    t240 = t275.
    IF t240 IS BOUND.
      DATA t279 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t280 TYPE REF TO object.
      t280 = t240.
      TRY.
          t239 ?= t280.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t239 IS NOT BOUND.
        TRY.
            t279 ?= t240.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t279 IS BOUND.
          t239 = t279->source( ).
        ENDIF.
        IF t239 IS NOT BOUND.
          CREATE OBJECT t239.
          t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t239->oval = t240.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t282 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t282.
    DATA t283 TYPE REF TO zif_lnt_statement_runnable.
    t283 = zcl_lnt_st_combi_module=>seq( i_first = t236 i_second = t239 i_rest = t282 ).
    t233 = t283.
    DATA t287 TYPE REF TO zif_lnt_statement_runnable.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t291) = zlnt_runtime_desc_78196487750d=>zlnt_member_d124_1ce9c8f13c80.
    IF t291 IS BOUND.
      CREATE OBJECT t290.
      t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t290->cval = t291.
    ENDIF.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t294) = |IS|.
    CREATE OBJECT t293.
    t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t293->sval = t294.
    DATA t295 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t296 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t296.
    t295 = t296.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t299 TYPE REF TO zif_lnt_statement_runnable.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t301) = |NOT|.
    CREATE OBJECT t300.
    t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t300->sval = t301.
    t299 = zcl_lnt_st_combi_module=>opt_prio( i_first = t300 ).
    IF t299 IS BOUND.
      DATA t302 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t303 TYPE REF TO object.
      t303 = t299.
      TRY.
          t298 ?= t303.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t298 IS NOT BOUND.
        TRY.
            t302 ?= t299.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t302 IS BOUND.
          t298 = t302->source( ).
        ENDIF.
        IF t298 IS NOT BOUND.
          CREATE OBJECT t298.
          t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t298->oval = t299.
        ENDIF.
      ENDIF.
    ENDIF.
    t295->load( ).
    APPEND t298 TO t295->items.
    t295->save( ).
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t306) = |ASSIGNED|.
    CREATE OBJECT t305.
    t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t305->sval = t306.
    t295->load( ).
    APPEND t305 TO t295->items.
    t295->save( ).
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    t307 = zcl_lnt_st_combi_module=>seq( i_first = t290 i_second = t293 i_rest = t295 ).
    t287 = t307.
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t315 TYPE REF TO zif_lnt_statement_runnable.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t317) = |NOT|.
    CREATE OBJECT t316.
    t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t316->sval = t317.
    t315 = zcl_lnt_st_combi_module=>opt( i_first = t316 ).
    IF t315 IS BOUND.
      DATA t318 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t319 TYPE REF TO object.
      t319 = t315.
      TRY.
          t314 ?= t319.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t314 IS NOT BOUND.
        TRY.
            t318 ?= t315.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t318 IS BOUND.
          t314 = t318->source( ).
        ENDIF.
        IF t314 IS NOT BOUND.
          CREATE OBJECT t314.
          t314->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t314->oval = t315.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t322 TYPE REF TO zif_lnt_statement_runnable.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t233 IS BOUND.
      DATA t326 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t327 TYPE REF TO object.
      t327 = t233.
      TRY.
          t324 ?= t327.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t324 IS NOT BOUND.
        TRY.
            t326 ?= t233.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t326 IS BOUND.
          t324 = t326->source( ).
        ENDIF.
        IF t324 IS NOT BOUND.
          CREATE OBJECT t324.
          t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t324->oval = t233.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t209 IS BOUND.
      DATA t331 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t332 TYPE REF TO object.
      t332 = t209.
      TRY.
          t329 ?= t332.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t329 IS NOT BOUND.
        TRY.
            t331 ?= t209.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t331 IS BOUND.
          t329 = t331->source( ).
        ENDIF.
        IF t329 IS NOT BOUND.
          CREATE OBJECT t329.
          t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t329->oval = t209.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t333 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t334 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t334.
    t333 = t334.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t287 IS BOUND.
      DATA t338 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t339 TYPE REF TO object.
      t339 = t287.
      TRY.
          t336 ?= t339.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t336 IS NOT BOUND.
        TRY.
            t338 ?= t287.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t338 IS BOUND.
          t336 = t338->source( ).
        ENDIF.
        IF t336 IS NOT BOUND.
          CREATE OBJECT t336.
          t336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t336->oval = t287.
        ENDIF.
      ENDIF.
    ENDIF.
    t333->load( ).
    APPEND t336 TO t333->items.
    t333->save( ).
    DATA t340 TYPE REF TO zif_lnt_statement_runnable.
    t340 = zcl_lnt_st_combi_module=>alt_prio( i_first = t324 i_second = t329 i_rest = t333 ).
    t322 = t340.
    IF t322 IS BOUND.
      DATA t344 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t345 TYPE REF TO object.
      t345 = t322.
      TRY.
          t321 ?= t345.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t321 IS NOT BOUND.
        TRY.
            t344 ?= t322.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t344 IS BOUND.
          t321 = t344->source( ).
        ENDIF.
        IF t321 IS NOT BOUND.
          CREATE OBJECT t321.
          t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t321->oval = t322.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t347.
    DATA t348 TYPE REF TO zif_lnt_statement_runnable.
    t348 = zcl_lnt_st_combi_module=>seq( i_first = t314 i_second = t321 i_rest = t347 ).
    result = t348.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e.
  ENDMETHOD.
ENDCLASS.
