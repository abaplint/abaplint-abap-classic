* TS: src/cds/expressions/cds_define_view.ts:9:1 CDSDefineView
CLASS zcl_lnt_cds_define_view DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_define_view IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |(|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t18) = |,|.
    CREATE OBJECT t17.
    t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t17->sval = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    t24 = zcl_lnt_st_combi_module=>seq( i_first = t17 i_second = t20 i_rest = t23 ).
    t15 = t24.
    IF t15 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t29 TYPE REF TO object.
      t29 = t15.
      TRY.
          t14 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t28 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t14 = t28->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t13 = zcl_lnt_st_combi_module=>star( i_first = t14 ).
    IF t13 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t31 TYPE REF TO object.
      t31 = t13.
      TRY.
          t12 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS NOT BOUND.
        TRY.
            t30 ?= t13.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t12 = t30->source( ).
        ENDIF.
        IF t12 IS NOT BOUND.
          CREATE OBJECT t12.
          t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t12->oval = t13.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = |)|.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = t34.
    t9->load( ).
    APPEND t33 TO t9->items.
    t9->save( ).
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    t35 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t9 ).
    t1 = t35.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1111_638cac4e89ac.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1112_606bcf340c7d.
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t45->cval = t46.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    t49 = zcl_lnt_st_combi_module=>alt_prio( i_first = t42 i_second = t45 i_rest = t48 ).
    t39 = t49.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = |UNION|.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = t62.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = |ALL|.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = t67.
    t65 = zcl_lnt_st_combi_module=>opt( i_first = t66 ).
    IF t65 IS BOUND.
      DATA t68 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t69 TYPE REF TO object.
      t69 = t65.
      TRY.
          t64 ?= t69.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t64 IS NOT BOUND.
        TRY.
            t68 ?= t65.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t68 IS BOUND.
          t64 = t68->source( ).
        ENDIF.
        IF t64 IS NOT BOUND.
          CREATE OBJECT t64.
          t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t64->oval = t65.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t71.
    t70 = t71.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t39 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t76 TYPE REF TO object.
      t76 = t39.
      TRY.
          t73 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t75 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t73 = t75->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    t70->load( ).
    APPEND t73 TO t70->items.
    t70->save( ).
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    t77 = zcl_lnt_st_combi_module=>seq( i_first = t61 i_second = t64 i_rest = t70 ).
    t59 = t77.
    IF t59 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t82 TYPE REF TO object.
      t82 = t59.
      TRY.
          t58 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t58 IS NOT BOUND.
        TRY.
            t81 ?= t59.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t58 = t81->source( ).
        ENDIF.
        IF t58 IS NOT BOUND.
          CREATE OBJECT t58.
          t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t58->oval = t59.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t88) = |EXCEPT|.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = t88.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t39 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t93 TYPE REF TO object.
      t93 = t39.
      TRY.
          t90 ?= t93.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t90 IS NOT BOUND.
        TRY.
            t92 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS BOUND.
          t90 = t92->source( ).
        ENDIF.
        IF t90 IS NOT BOUND.
          CREATE OBJECT t90.
          t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t90->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    t96 = zcl_lnt_st_combi_module=>seq( i_first = t87 i_second = t90 i_rest = t95 ).
    t85 = t96.
    IF t85 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t101 TYPE REF TO object.
      t101 = t85.
      TRY.
          t84 ?= t101.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t100 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t84 = t100->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t103.
    t102 = t103.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t109) = |INTERSECT|.
    CREATE OBJECT t108.
    t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t108->sval = t109.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t39 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t114 TYPE REF TO object.
      t114 = t39.
      TRY.
          t111 ?= t114.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t113 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t111 = t113->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t116.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    t117 = zcl_lnt_st_combi_module=>seq( i_first = t108 i_second = t111 i_rest = t116 ).
    t106 = t117.
    IF t106 IS BOUND.
      DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t122 TYPE REF TO object.
      t122 = t106.
      TRY.
          t105 ?= t122.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t121 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS BOUND.
          t105 = t121->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    t102->load( ).
    APPEND t105 TO t102->items.
    t102->save( ).
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    t123 = zcl_lnt_st_combi_module=>alt_prio( i_first = t58 i_second = t84 i_rest = t102 ).
    t56 = t123.
    IF t56 IS BOUND.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t128 TYPE REF TO object.
      t128 = t56.
      TRY.
          t55 ?= t128.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t127 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS BOUND.
          t55 = t127->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t56.
        ENDIF.
      ENDIF.
    ENDIF.
    t54 = zcl_lnt_st_combi_module=>star( i_first = t55 ).
    t53 = t54.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t136) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1111_638cac4e89ac.
    IF t136 IS BOUND.
      CREATE OBJECT t135.
      t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t135->cval = t136.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t53 IS BOUND.
      DATA t140 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t141 TYPE REF TO object.
      t141 = t53.
      TRY.
          t138 ?= t141.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138 IS NOT BOUND.
        TRY.
            t140 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t140 IS BOUND.
          t138 = t140->source( ).
        ENDIF.
        IF t138 IS NOT BOUND.
          CREATE OBJECT t138.
          t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    t144 = zcl_lnt_st_combi_module=>seq( i_first = t135 i_second = t138 i_rest = t143 ).
    t133 = t144.
    IF t133 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t149 TYPE REF TO object.
      t149 = t133.
      TRY.
          t132 ?= t149.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS NOT BOUND.
        TRY.
            t148 ?= t133.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t132 = t148->source( ).
        ENDIF.
        IF t132 IS NOT BOUND.
          CREATE OBJECT t132.
          t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t132->oval = t133.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t155) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1112_606bcf340c7d.
    IF t155 IS BOUND.
      CREATE OBJECT t154.
      t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t154->cval = t155.
    ENDIF.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t53 IS BOUND.
      DATA t159 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t160 TYPE REF TO object.
      t160 = t53.
      TRY.
          t157 ?= t160.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t159 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t159 IS BOUND.
          t157 = t159->source( ).
        ENDIF.
        IF t157 IS NOT BOUND.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t157->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t162.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    t163 = zcl_lnt_st_combi_module=>seq( i_first = t154 i_second = t157 i_rest = t162 ).
    t152 = t163.
    IF t152 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t168 TYPE REF TO object.
      t168 = t152.
      TRY.
          t151 ?= t168.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t151 IS NOT BOUND.
        TRY.
            t167 ?= t152.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t151 = t167->source( ).
        ENDIF.
        IF t151 IS NOT BOUND.
          CREATE OBJECT t151.
          t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t151->oval = t152.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t170.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    t171 = zcl_lnt_st_combi_module=>alt_prio( i_first = t132 i_second = t151 i_rest = t170 ).
    t129 = t171.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t180) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t180 IS BOUND.
      CREATE OBJECT t179.
      t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t179->cval = t180.
    ENDIF.
    t178 = zcl_lnt_st_combi_module=>star( i_first = t179 ).
    IF t178 IS BOUND.
      DATA t181 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t182 TYPE REF TO object.
      t182 = t178.
      TRY.
          t177 ?= t182.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t177 IS NOT BOUND.
        TRY.
            t181 ?= t178.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t181 IS BOUND.
          t177 = t181->source( ).
        ENDIF.
        IF t177 IS NOT BOUND.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t177->oval = t178.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t187) = |DEFINE|.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = t187.
    t185 = zcl_lnt_st_combi_module=>opt( i_first = t186 ).
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
    DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t191.
    t190 = t191.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t194 TYPE REF TO zif_lnt_statement_runnable.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t196) = |ROOT|.
    CREATE OBJECT t195.
    t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t195->sval = t196.
    t194 = zcl_lnt_st_combi_module=>opt( i_first = t195 ).
    IF t194 IS BOUND.
      DATA t197 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t198 TYPE REF TO object.
      t198 = t194.
      TRY.
          t193 ?= t198.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t193 IS NOT BOUND.
        TRY.
            t197 ?= t194.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t197 IS BOUND.
          t193 = t197->source( ).
        ENDIF.
        IF t193 IS NOT BOUND.
          CREATE OBJECT t193.
          t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t193->oval = t194.
        ENDIF.
      ENDIF.
    ENDIF.
    t190->load( ).
    APPEND t193 TO t190->items.
    t190->save( ).
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t203) = |WRITABLE|.
    CREATE OBJECT t202.
    t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t202->sval = t203.
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
    t190->load( ).
    APPEND t200 TO t190->items.
    t190->save( ).
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t208) = |VIEW|.
    CREATE OBJECT t207.
    t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t207->sval = t208.
    t190->load( ).
    APPEND t207 TO t190->items.
    t190->save( ).
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t213 TYPE REF TO zcl_lnt_abap_release.
    DATA t214 TYPE REF TO zcl_lnt_abap_release.
    DATA t215 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t215 = zcl_lnt_version_module=>release_b8cd.
    DATA(t216) = |v755|.
    t214 = t215->get( p0 = t216 ).
    t213 = t214.
    IF t213 IS BOUND.
      DATA t217 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t218 TYPE REF TO object.
      t218 = t213.
      TRY.
          t212 ?= t218.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t212 IS NOT BOUND.
        TRY.
            t217 ?= t213.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t217 IS BOUND.
          t212 = t217->source( ).
        ENDIF.
        IF t212 IS NOT BOUND.
          CREATE OBJECT t212.
          t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t212->oval = t213.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t222) = |ENTITY|.
    CREATE OBJECT t221.
    t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t221->sval = t222.
    t220 = zcl_lnt_st_combi_module=>opt( i_first = t221 ).
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
    DATA t225 TYPE REF TO zcl_lnt_iver_options.
    t211 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t212 i_first = t219 i_opts = t225 ).
    IF t211 IS BOUND.
      DATA t226 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t227 TYPE REF TO object.
      t227 = t211.
      TRY.
          t210 ?= t227.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t210 IS NOT BOUND.
        TRY.
            t226 ?= t211.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t226 IS BOUND.
          t210 = t226->source( ).
        ENDIF.
        IF t210 IS NOT BOUND.
          CREATE OBJECT t210.
          t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t210->oval = t211.
        ENDIF.
      ENDIF.
    ENDIF.
    t190->load( ).
    APPEND t210 TO t190->items.
    t190->save( ).
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t230) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t230 IS BOUND.
      CREATE OBJECT t229.
      t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t229->cval = t230.
    ENDIF.
    t190->load( ).
    APPEND t229 TO t190->items.
    t190->save( ).
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t236 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t237 TYPE REF TO object.
      t237 = t1.
      TRY.
          t234 ?= t237.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t234 IS NOT BOUND.
        TRY.
            t236 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t236 IS BOUND.
          t234 = t236->source( ).
        ENDIF.
        IF t234 IS NOT BOUND.
          CREATE OBJECT t234.
          t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t234->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t233 = zcl_lnt_st_combi_module=>opt( i_first = t234 ).
    IF t233 IS BOUND.
      DATA t238 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t239 TYPE REF TO object.
      t239 = t233.
      TRY.
          t232 ?= t239.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t232 IS NOT BOUND.
        TRY.
            t238 ?= t233.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t238 IS BOUND.
          t232 = t238->source( ).
        ENDIF.
        IF t232 IS NOT BOUND.
          CREATE OBJECT t232.
          t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t232->oval = t233.
        ENDIF.
      ENDIF.
    ENDIF.
    t190->load( ).
    APPEND t232 TO t190->items.
    t190->save( ).
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t244) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1097_1528186a58df.
    IF t244 IS BOUND.
      CREATE OBJECT t243.
      t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t243->cval = t244.
    ENDIF.
    t242 = zcl_lnt_st_combi_module=>opt( i_first = t243 ).
    IF t242 IS BOUND.
      DATA t245 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t246 TYPE REF TO object.
      t246 = t242.
      TRY.
          t241 ?= t246.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t241 IS NOT BOUND.
        TRY.
            t245 ?= t242.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t245 IS BOUND.
          t241 = t245->source( ).
        ENDIF.
        IF t241 IS NOT BOUND.
          CREATE OBJECT t241.
          t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t241->oval = t242.
        ENDIF.
      ENDIF.
    ENDIF.
    t190->load( ).
    APPEND t241 TO t190->items.
    t190->save( ).
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t249) = |AS|.
    CREATE OBJECT t248.
    t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t248->sval = t249.
    t190->load( ).
    APPEND t248 TO t190->items.
    t190->save( ).
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129 IS BOUND.
      DATA t253 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t254 TYPE REF TO object.
      t254 = t129.
      TRY.
          t251 ?= t254.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t251 IS NOT BOUND.
        TRY.
            t253 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t253 IS BOUND.
          t251 = t253->source( ).
        ENDIF.
        IF t251 IS NOT BOUND.
          CREATE OBJECT t251.
          t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t251->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    t190->load( ).
    APPEND t251 TO t190->items.
    t190->save( ).
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t257 TYPE REF TO zif_lnt_statement_runnable.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t259 TYPE REF TO zif_lnt_statement_runnable.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t262) = |WITH|.
    CREATE OBJECT t261.
    t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t261->sval = t262.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t265) = |HIERARCHY|.
    CREATE OBJECT t264.
    t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t264->sval = t265.
    DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t267.
    t266 = t267.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t270) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t270 IS BOUND.
      CREATE OBJECT t269.
      t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t269->cval = t270.
    ENDIF.
    t266->load( ).
    APPEND t269 TO t266->items.
    t266->save( ).
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    t271 = zcl_lnt_st_combi_module=>seq( i_first = t261 i_second = t264 i_rest = t266 ).
    t259 = t271.
    IF t259 IS BOUND.
      DATA t275 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t276 TYPE REF TO object.
      t276 = t259.
      TRY.
          t258 ?= t276.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t258 IS NOT BOUND.
        TRY.
            t275 ?= t259.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t275 IS BOUND.
          t258 = t275->source( ).
        ENDIF.
        IF t258 IS NOT BOUND.
          CREATE OBJECT t258.
          t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t258->oval = t259.
        ENDIF.
      ENDIF.
    ENDIF.
    t257 = zcl_lnt_st_combi_module=>opt( i_first = t258 ).
    IF t257 IS BOUND.
      DATA t277 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t278 TYPE REF TO object.
      t278 = t257.
      TRY.
          t256 ?= t278.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t256 IS NOT BOUND.
        TRY.
            t277 ?= t257.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t277 IS BOUND.
          t256 = t277->source( ).
        ENDIF.
        IF t256 IS NOT BOUND.
          CREATE OBJECT t256.
          t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t256->oval = t257.
        ENDIF.
      ENDIF.
    ENDIF.
    t190->load( ).
    APPEND t256 TO t190->items.
    t190->save( ).
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t283) = |;|.
    CREATE OBJECT t282.
    t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t282->sval = t283.
    t281 = zcl_lnt_st_combi_module=>opt( i_first = t282 ).
    IF t281 IS BOUND.
      DATA t284 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t285 TYPE REF TO object.
      t285 = t281.
      TRY.
          t280 ?= t285.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t280 IS NOT BOUND.
        TRY.
            t284 ?= t281.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t284 IS BOUND.
          t280 = t284->source( ).
        ENDIF.
        IF t280 IS NOT BOUND.
          CREATE OBJECT t280.
          t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t280->oval = t281.
        ENDIF.
      ENDIF.
    ENDIF.
    t190->load( ).
    APPEND t280 TO t190->items.
    t190->save( ).
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    t286 = zcl_lnt_st_combi_module=>seq( i_first = t177 i_second = t184 i_rest = t190 ).
    result = t286.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1113_ec8d8af5209a.
  ENDMETHOD.
ENDCLASS.
