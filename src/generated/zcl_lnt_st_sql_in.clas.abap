* TS: src/abap/2_statements/expressions/sql_in.ts:9:1 SQLIn
CLASS zcl_lnt_st_sql_in DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_sql_in IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zcl_lnt_st_sql_source.
    t1 = NEW zcl_lnt_st_sql_source( ).
    DATA t3 TYPE REF TO zcl_lnt_sql_source_no_space.
    t3 = NEW zcl_lnt_sql_source_no_space( ).
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090.
    t9 = zcl_lnt_st_combi_module=>tok( i_t = t10 ).
    IF t9 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t12 TYPE REF TO object.
      t12 = t9.
      TRY.
          t8 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t8 IS NOT BOUND.
        TRY.
            t11 ?= t9.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t8 = t11->source( ).
        ENDIF.
        IF t8 IS NOT BOUND.
          CREATE OBJECT t8.
          t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t8->oval = t9.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zcl_lnt_abap_release.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    DATA t22 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t22 = zcl_lnt_version_module=>release_b8cd.
    DATA(t23) = |v740sp05|.
    t21 = t22->get( p0 = t23 ).
    t20 = t21.
    IF t20 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t20.
      TRY.
          t19 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t19 IS NOT BOUND.
        TRY.
            t24 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t19 = t24->source( ).
        ENDIF.
        IF t19 IS NOT BOUND.
          CREATE OBJECT t19.
          t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t19->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t29 TYPE REF TO object.
      t29 = t3.
      TRY.
          t26 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t28 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t26 = t28->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t3.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_iver_options.
    DATA t32 TYPE REF TO zcl_lnt_iver_options.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t36) = |OpenABAP|.
    DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t37->has = abap_true.
    t37->value = t36.
    t33 = t37.
    t32 = NEW zcl_lnt_iver_options( i_also = t33 ).
    CREATE OBJECT t32->zlnt_view_ownkeys_b0e8086400eb.
    t32->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t32->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t39 ).
    CREATE OBJECT t32->zlnt_json_ownkeys_70e5fd461788.
    t32->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t40) = |also|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t32->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    t30 = t32.
    t18 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t19 i_first = t26 i_opts = t30 ).
    IF t18 IS BOUND.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t44 TYPE REF TO object.
      t44 = t18.
      TRY.
          t17 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t43 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS BOUND.
          t17 = t43->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t48 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t49 TYPE REF TO object.
      t49 = t1.
      TRY.
          t46 ?= t49.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t48 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t48 IS BOUND.
          t46 = t48->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    t52 = zcl_lnt_st_combi_module=>alt( i_first = t17 i_second = t46 i_rest = t51 ).
    t15 = t52.
    IF t15 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t57 TYPE REF TO object.
      t57 = t15.
      TRY.
          t14 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t56 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t14 = t56->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t59.
    t58 = t59.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = |,|.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = t67.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t72 TYPE REF TO object.
      t72 = t1.
      TRY.
          t69 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t71 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t69 = t71->source( ).
        ENDIF.
        IF t69 IS NOT BOUND.
          CREATE OBJECT t69.
          t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t69->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t66 i_second = t69 i_rest = t74 ).
    t64 = t75.
    IF t64 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t80 TYPE REF TO object.
      t80 = t64.
      TRY.
          t63 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t79 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t63 = t79->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    t62 = zcl_lnt_st_combi_module=>star_prio( i_first = t63 ).
    IF t62 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t82 TYPE REF TO object.
      t82 = t62.
      TRY.
          t61 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t81 ?= t62.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t61 = t81->source( ).
        ENDIF.
        IF t61 IS NOT BOUND.
          CREATE OBJECT t61.
          t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t61->oval = t62.
        ENDIF.
      ENDIF.
    ENDIF.
    t58->load( ).
    APPEND t61 TO t58->items.
    t58->save( ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t88 = zcl_lnt_st_combi_module=>tok( i_t = t89 ).
    IF t88 IS BOUND.
      DATA t90 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t91 TYPE REF TO object.
      t91 = t88.
      TRY.
          t87 ?= t91.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t87 IS NOT BOUND.
        TRY.
            t90 ?= t88.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t90 IS BOUND.
          t87 = t90->source( ).
        ENDIF.
        IF t87 IS NOT BOUND.
          CREATE OBJECT t87.
          t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t87->oval = t88.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t95) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t94 = zcl_lnt_st_combi_module=>tok( i_t = t95 ).
    IF t94 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t97 TYPE REF TO object.
      t97 = t94.
      TRY.
          t93 ?= t97.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t96 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t93 = t96->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t99.
    t98 = t99.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t102 = zcl_lnt_st_combi_module=>tok( i_t = t103 ).
    IF t102 IS BOUND.
      DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t105 TYPE REF TO object.
      t105 = t102.
      TRY.
          t101 ?= t105.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t104 ?= t102.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t104 IS BOUND.
          t101 = t104->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t102.
        ENDIF.
      ENDIF.
    ENDIF.
    t98->load( ).
    APPEND t101 TO t98->items.
    t98->save( ).
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    t106 = zcl_lnt_st_combi_module=>alt_prio( i_first = t87 i_second = t93 i_rest = t98 ).
    t85 = t106.
    IF t85 IS BOUND.
      DATA t110 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t111 TYPE REF TO object.
      t111 = t85.
      TRY.
          t84 ?= t111.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t110 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t110 IS BOUND.
          t84 = t110->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    t58->load( ).
    APPEND t84 TO t58->items.
    t58->save( ).
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    t112 = zcl_lnt_st_combi_module=>seq( i_first = t8 i_second = t14 i_rest = t58 ).
    t5 = t112.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t120 = zcl_lnt_st_combi_module=>tok( i_t = t121 ).
    IF t120 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t123 TYPE REF TO object.
      t123 = t120.
      TRY.
          t119 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t119 IS NOT BOUND.
        TRY.
            t122 ?= t120.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t119 = t122->source( ).
        ENDIF.
        IF t119 IS NOT BOUND.
          CREATE OBJECT t119.
          t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t119->oval = t120.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t128 TYPE REF TO object.
      t128 = t1.
      TRY.
          t125 ?= t128.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t125 IS NOT BOUND.
        TRY.
            t127 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS BOUND.
          t125 = t127->source( ).
        ENDIF.
        IF t125 IS NOT BOUND.
          CREATE OBJECT t125.
          t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t125->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t130.
    t129 = t130.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t138) = |,|.
    CREATE OBJECT t137.
    t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t137->sval = t138.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t146 TYPE REF TO object.
      t146 = t3.
      TRY.
          t143 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t145 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t143 = t145->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t3.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t151 TYPE REF TO object.
      t151 = t1.
      TRY.
          t148 ?= t151.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t148 IS NOT BOUND.
        TRY.
            t150 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t148 = t150->source( ).
        ENDIF.
        IF t148 IS NOT BOUND.
          CREATE OBJECT t148.
          t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t148->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    t154 = zcl_lnt_st_combi_module=>alt_prio( i_first = t143 i_second = t148 i_rest = t153 ).
    t141 = t154.
    IF t141 IS BOUND.
      DATA t158 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t159 TYPE REF TO object.
      t159 = t141.
      TRY.
          t140 ?= t159.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t158 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t158 IS BOUND.
          t140 = t158->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t161.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    t162 = zcl_lnt_st_combi_module=>seq( i_first = t137 i_second = t140 i_rest = t161 ).
    t135 = t162.
    IF t135 IS BOUND.
      DATA t166 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t167 TYPE REF TO object.
      t167 = t135.
      TRY.
          t134 ?= t167.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t134 IS NOT BOUND.
        TRY.
            t166 ?= t135.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t166 IS BOUND.
          t134 = t166->source( ).
        ENDIF.
        IF t134 IS NOT BOUND.
          CREATE OBJECT t134.
          t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t134->oval = t135.
        ENDIF.
      ENDIF.
    ENDIF.
    t133 = zcl_lnt_st_combi_module=>star_prio( i_first = t134 ).
    IF t133 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t169 TYPE REF TO object.
      t169 = t133.
      TRY.
          t132 ?= t169.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS NOT BOUND.
        TRY.
            t168 ?= t133.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t132 = t168->source( ).
        ENDIF.
        IF t132 IS NOT BOUND.
          CREATE OBJECT t132.
          t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t132->oval = t133.
        ENDIF.
      ENDIF.
    ENDIF.
    t129->load( ).
    APPEND t132 TO t129->items.
    t129->save( ).
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t176) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t175 = zcl_lnt_st_combi_module=>tok( i_t = t176 ).
    IF t175 IS BOUND.
      DATA t177 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t178 TYPE REF TO object.
      t178 = t175.
      TRY.
          t174 ?= t178.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t177 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t177 IS BOUND.
          t174 = t177->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t182) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t181 = zcl_lnt_st_combi_module=>tok( i_t = t182 ).
    IF t181 IS BOUND.
      DATA t183 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t184 TYPE REF TO object.
      t184 = t181.
      TRY.
          t180 ?= t184.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t180 IS NOT BOUND.
        TRY.
            t183 ?= t181.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t183 IS BOUND.
          t180 = t183->source( ).
        ENDIF.
        IF t180 IS NOT BOUND.
          CREATE OBJECT t180.
          t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t180->oval = t181.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t186.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    t187 = zcl_lnt_st_combi_module=>alt_prio( i_first = t174 i_second = t180 i_rest = t186 ).
    t172 = t187.
    IF t172 IS BOUND.
      DATA t191 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t192 TYPE REF TO object.
      t192 = t172.
      TRY.
          t171 ?= t192.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t171 IS NOT BOUND.
        TRY.
            t191 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t191 IS BOUND.
          t171 = t191->source( ).
        ENDIF.
        IF t171 IS NOT BOUND.
          CREATE OBJECT t171.
          t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t171->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    t129->load( ).
    APPEND t171 TO t129->items.
    t129->save( ).
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    t193 = zcl_lnt_st_combi_module=>seq( i_first = t119 i_second = t125 i_rest = t129 ).
    t116 = t193.
    DATA t197 TYPE REF TO zif_lnt_statement_runnable.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t200 TYPE REF TO zcl_lnt_abap_release.
    DATA t201 TYPE REF TO zcl_lnt_abap_release.
    DATA t202 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t202 = zcl_lnt_version_module=>release_b8cd.
    DATA(t203) = |v740sp02|.
    t201 = t202->get( p0 = t203 ).
    t200 = t201.
    IF t200 IS BOUND.
      DATA t204 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t205 TYPE REF TO object.
      t205 = t200.
      TRY.
          t199 ?= t205.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t199 IS NOT BOUND.
        TRY.
            t204 ?= t200.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t204 IS BOUND.
          t199 = t204->source( ).
        ENDIF.
        IF t199 IS NOT BOUND.
          CREATE OBJECT t199.
          t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t199->oval = t200.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t116 IS BOUND.
      DATA t208 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t209 TYPE REF TO object.
      t209 = t116.
      TRY.
          t206 ?= t209.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t206 IS NOT BOUND.
        TRY.
            t208 ?= t116.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t208 IS BOUND.
          t206 = t208->source( ).
        ENDIF.
        IF t206 IS NOT BOUND.
          CREATE OBJECT t206.
          t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t206->oval = t116.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t210 TYPE REF TO zcl_lnt_iver_options.
    DATA t212 TYPE REF TO zcl_lnt_iver_options.
    DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t216) = |OpenABAP|.
    DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t217->has = abap_true.
    t217->value = t216.
    t213 = t217.
    t212 = NEW zcl_lnt_iver_options( i_also = t213 ).
    CREATE OBJECT t212->zlnt_view_ownkeys_b0e8086400eb.
    t212->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t212->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t219 ).
    CREATE OBJECT t212->zlnt_json_ownkeys_70e5fd461788.
    t212->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t220) = |also|.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t212->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
    t210 = t212.
    t198 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t199 i_first = t206 i_opts = t210 ).
    t197 = t198.
    DATA t223 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    t223 = zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t229) = |(|.
    CREATE OBJECT t228.
    t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t228->sval = t229.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t232) = |SELECT|.
    CREATE OBJECT t231.
    t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t231->sval = t232.
    DATA t233 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t234.
    t233 = t234.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    DATA t238 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t239 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t242) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t242->has = abap_true.
    t242->value = abap_false.
    t239 = t242.
    t237 = zcl_lnt_select_core_module=>build_select_core( i_allow_into = t238 i_allow_order_by = t239 ).
    IF t237 IS BOUND.
      DATA t244 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t245 TYPE REF TO object.
      t245 = t237.
      TRY.
          t236 ?= t245.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t236 IS NOT BOUND.
        TRY.
            t244 ?= t237.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t244 IS BOUND.
          t236 = t244->source( ).
        ENDIF.
        IF t236 IS NOT BOUND.
          CREATE OBJECT t236.
          t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t236->oval = t237.
        ENDIF.
      ENDIF.
    ENDIF.
    t233->load( ).
    APPEND t236 TO t233->items.
    t233->save( ).
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t248) = |)|.
    CREATE OBJECT t247.
    t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t247->sval = t248.
    t233->load( ).
    APPEND t247 TO t233->items.
    t233->save( ).
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    t249 = zcl_lnt_st_combi_module=>seq( i_first = t228 i_second = t231 i_rest = t233 ).
    t225 = t249.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t257) = |IN|.
    CREATE OBJECT t256.
    t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t256->sval = t257.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t223 IS BOUND.
      CREATE OBJECT t262.
      t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t262->cval = t223.
    ENDIF.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t225 IS BOUND.
      DATA t267 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t268 TYPE REF TO object.
      t268 = t225.
      TRY.
          t265 ?= t268.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t265 IS NOT BOUND.
        TRY.
            t267 ?= t225.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t267 IS BOUND.
          t265 = t267->source( ).
        ENDIF.
        IF t265 IS NOT BOUND.
          CREATE OBJECT t265.
          t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t265->oval = t225.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t270.
    t269 = t270.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5 IS BOUND.
      DATA t274 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t275 TYPE REF TO object.
      t275 = t5.
      TRY.
          t272 ?= t275.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t272 IS NOT BOUND.
        TRY.
            t274 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t274 IS BOUND.
          t272 = t274->source( ).
        ENDIF.
        IF t272 IS NOT BOUND.
          CREATE OBJECT t272.
          t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t272->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t269->load( ).
    APPEND t272 TO t269->items.
    t269->save( ).
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t197 IS BOUND.
      DATA t279 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t280 TYPE REF TO object.
      t280 = t197.
      TRY.
          t277 ?= t280.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t277 IS NOT BOUND.
        TRY.
            t279 ?= t197.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t279 IS BOUND.
          t277 = t279->source( ).
        ENDIF.
        IF t277 IS NOT BOUND.
          CREATE OBJECT t277.
          t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t277->oval = t197.
        ENDIF.
      ENDIF.
    ENDIF.
    t269->load( ).
    APPEND t277 TO t269->items.
    t269->save( ).
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t283) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    IF t283 IS BOUND.
      CREATE OBJECT t282.
      t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t282->cval = t283.
    ENDIF.
    t269->load( ).
    APPEND t282 TO t269->items.
    t269->save( ).
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    t284 = zcl_lnt_st_combi_module=>alt_prio( i_first = t262 i_second = t265 i_rest = t269 ).
    t260 = t284.
    IF t260 IS BOUND.
      DATA t288 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t289 TYPE REF TO object.
      t289 = t260.
      TRY.
          t259 ?= t289.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t259 IS NOT BOUND.
        TRY.
            t288 ?= t260.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t288 IS BOUND.
          t259 = t288->source( ).
        ENDIF.
        IF t259 IS NOT BOUND.
          CREATE OBJECT t259.
          t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t259->oval = t260.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t291.
    DATA t292 TYPE REF TO zif_lnt_statement_runnable.
    t292 = zcl_lnt_st_combi_module=>seq( i_first = t256 i_second = t259 i_rest = t291 ).
    result = t292.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d299_0ba2c1ef340d.
  ENDMETHOD.
ENDCLASS.
