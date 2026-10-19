* TS: src/cds/expressions/cds_define_external_entity.ts:5:1 CDSDefineExternalEntity
CLASS zcl_lnt_cds_dfn_extrnl_entty DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_dfn_extrnl_entty IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t9 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^"(?:[^"]\|"")*"$| flags = ||.
    t8 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t9 ).
    IF t8 IS BOUND.
      DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t13 TYPE REF TO object.
      t13 = t8.
      TRY.
          t7 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t12 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t12 IS BOUND.
          t7 = t12->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    t1 = zcl_lnt_st_combi_module=>alt( i_first = t4 i_second = t7 i_rest = t15 ).
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = |EXTERNAL|.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = |NAME|.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t34 TYPE REF TO object.
      t34 = t1.
      TRY.
          t31 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t33 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t31 = t33->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t28->load( ).
    APPEND t31 TO t28->items.
    t28->save( ).
    t20 = zcl_lnt_st_combi_module=>seq( i_first = t23 i_second = t26 i_rest = t28 ).
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t44.
    t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t44->sval = |NOT NULL|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = |NULL|.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t50.
    t42 = zcl_lnt_st_combi_module=>alt( i_first = t44 i_second = t47 i_rest = t50 ).
    IF t42 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t56 TYPE REF TO object.
      t56 = t42.
      TRY.
          t41 ?= t56.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t55 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t41 = t55->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    t39 = zcl_lnt_st_combi_module=>opt_prio( i_first = t41 ).
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    t61 = zcl_lnt_st_combi_module=>star( i_first = t62 ).
    IF t61 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t65 TYPE REF TO object.
      t65 = t61.
      TRY.
          t60 ?= t65.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t64 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t60 = t64->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    t70 = zcl_lnt_st_combi_module=>str( i_s = |KEY| ).
    IF t70 IS BOUND.
      DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t73 TYPE REF TO object.
      t73 = t70.
      TRY.
          t69 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t72 ?= t70.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS BOUND.
          t69 = t72->source( ).
        ENDIF.
        IF t69 IS NOT BOUND.
          CREATE OBJECT t69.
          t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t69->oval = t70.
        ENDIF.
      ENDIF.
    ENDIF.
    t68 = zcl_lnt_st_combi_module=>opt_prio( i_first = t69 ).
    IF t68 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t75 TYPE REF TO object.
      t75 = t68.
      TRY.
          t67 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t67 IS NOT BOUND.
        TRY.
            t74 ?= t68.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t67 = t74->source( ).
        ENDIF.
        IF t67 IS NOT BOUND.
          CREATE OBJECT t67.
          t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t67->oval = t68.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t76.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t80) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t79->cval = t80.
    ENDIF.
    t76->load( ).
    APPEND t79 TO t76->items.
    t76->save( ).
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t82.
    t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t82->sval = |:|.
    t76->load( ).
    APPEND t82 TO t76->items.
    t76->save( ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t85->cval = t86.
    ENDIF.
    t76->load( ).
    APPEND t85 TO t76->items.
    t76->save( ).
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t39 IS BOUND.
      DATA t90 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t91 TYPE REF TO object.
      t91 = t39.
      TRY.
          t88 ?= t91.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t90 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t90 IS BOUND.
          t88 = t90->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    t76->load( ).
    APPEND t88 TO t76->items.
    t76->save( ).
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t98 TYPE REF TO object.
      t98 = t20.
      TRY.
          t95 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t97 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t95 = t97->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    t94 = zcl_lnt_st_combi_module=>opt_prio( i_first = t95 ).
    IF t94 IS BOUND.
      DATA t99 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t100 TYPE REF TO object.
      t100 = t94.
      TRY.
          t93 ?= t100.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t99 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t99 IS BOUND.
          t93 = t99->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    t76->load( ).
    APPEND t93 TO t76->items.
    t76->save( ).
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = |;|.
    t76->load( ).
    APPEND t102 TO t76->items.
    t76->save( ).
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t67 i_rest = t76 ).
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t113->cval = t114.
    ENDIF.
    t112 = zcl_lnt_st_combi_module=>star( i_first = t113 ).
    IF t112 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t116 TYPE REF TO object.
      t116 = t112.
      TRY.
          t111 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t115 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t111 = t115->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t118->cval = t119.
    ENDIF.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t120.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = |:|.
    t120->load( ).
    APPEND t123 TO t120->items.
    t120->save( ).
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1096_358eab8a400f.
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t129->cval = t130.
    ENDIF.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t132->cval = t133.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t135.
    t127 = zcl_lnt_st_combi_module=>alt( i_first = t129 i_second = t132 i_rest = t135 ).
    IF t127 IS BOUND.
      DATA t140 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t141 TYPE REF TO object.
      t141 = t127.
      TRY.
          t126 ?= t141.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t140 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t140 IS BOUND.
          t126 = t140->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t120->load( ).
    APPEND t126 TO t120->items.
    t120->save( ).
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t143.
    t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t143->sval = |;|.
    t120->load( ).
    APPEND t143 TO t120->items.
    t120->save( ).
    t108 = zcl_lnt_st_combi_module=>seq( i_first = t111 i_second = t118 i_rest = t120 ).
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t156 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t157 TYPE REF TO object.
      t157 = t57.
      TRY.
          t154 ?= t157.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154 IS NOT BOUND.
        TRY.
            t156 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t156 IS BOUND.
          t154 = t156->source( ).
        ENDIF.
        IF t154 IS NOT BOUND.
          CREATE OBJECT t154.
          t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t108 IS BOUND.
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t162 TYPE REF TO object.
      t162 = t108.
      TRY.
          t159 ?= t162.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t161 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t159 = t161->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t164.
    t152 = zcl_lnt_st_combi_module=>alt( i_first = t154 i_second = t159 i_rest = t164 ).
    IF t152 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t170 TYPE REF TO object.
      t170 = t152.
      TRY.
          t151 ?= t170.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t151 IS NOT BOUND.
        TRY.
            t169 ?= t152.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t151 = t169->source( ).
        ENDIF.
        IF t151 IS NOT BOUND.
          CREATE OBJECT t151.
          t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t151->oval = t152.
        ENDIF.
      ENDIF.
    ENDIF.
    t149 = zcl_lnt_st_combi_module=>plus( i_first = t151 ).
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t176.
    t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t176->sval = |WRITABLE|.
    t175 = zcl_lnt_st_combi_module=>opt( i_first = t176 ).
    IF t175 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t179 TYPE REF TO object.
      t179 = t175.
      TRY.
          t174 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t178 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t174 = t178->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t181.
    t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t181->sval = |EXTERNAL|.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t183.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = |ENTITY|.
    t183->load( ).
    APPEND t186 TO t183->items.
    t183->save( ).
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t190) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t190 IS BOUND.
      CREATE OBJECT t189.
      t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t189->cval = t190.
    ENDIF.
    t183->load( ).
    APPEND t189 TO t183->items.
    t183->save( ).
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20 IS BOUND.
      DATA t196 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t197 TYPE REF TO object.
      t197 = t20.
      TRY.
          t194 ?= t197.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t194 IS NOT BOUND.
        TRY.
            t196 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t196 IS BOUND.
          t194 = t196->source( ).
        ENDIF.
        IF t194 IS NOT BOUND.
          CREATE OBJECT t194.
          t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t194->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    t193 = zcl_lnt_st_combi_module=>opt( i_first = t194 ).
    IF t193 IS BOUND.
      DATA t198 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t199 TYPE REF TO object.
      t199 = t193.
      TRY.
          t192 ?= t199.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t192 IS NOT BOUND.
        TRY.
            t198 ?= t193.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t198 IS BOUND.
          t192 = t198->source( ).
        ENDIF.
        IF t192 IS NOT BOUND.
          CREATE OBJECT t192.
          t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t192->oval = t193.
        ENDIF.
      ENDIF.
    ENDIF.
    t183->load( ).
    APPEND t192 TO t183->items.
    t183->save( ).
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t204) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1097_1528186a58df.
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t203->cval = t204.
    ENDIF.
    t202 = zcl_lnt_st_combi_module=>opt( i_first = t203 ).
    IF t202 IS BOUND.
      DATA t205 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t206 TYPE REF TO object.
      t206 = t202.
      TRY.
          t201 ?= t206.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t201 IS NOT BOUND.
        TRY.
            t205 ?= t202.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t205 IS BOUND.
          t201 = t205->source( ).
        ENDIF.
        IF t201 IS NOT BOUND.
          CREATE OBJECT t201.
          t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t201->oval = t202.
        ENDIF.
      ENDIF.
    ENDIF.
    t183->load( ).
    APPEND t201 TO t183->items.
    t183->save( ).
    t171 = zcl_lnt_st_combi_module=>seq( i_first = t174 i_second = t181 i_rest = t183 ).
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t214.
    t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t214->sval = |STATIC|.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t217.
    t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t217->sval = |ENTITY|.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t219.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t223) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t223 IS BOUND.
      CREATE OBJECT t222.
      t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t222->cval = t223.
    ENDIF.
    t219->load( ).
    APPEND t222 TO t219->items.
    t219->save( ).
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20 IS BOUND.
      DATA t229 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t230 TYPE REF TO object.
      t230 = t20.
      TRY.
          t227 ?= t230.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t227 IS NOT BOUND.
        TRY.
            t229 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t229 IS BOUND.
          t227 = t229->source( ).
        ENDIF.
        IF t227 IS NOT BOUND.
          CREATE OBJECT t227.
          t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t227->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    t226 = zcl_lnt_st_combi_module=>opt( i_first = t227 ).
    IF t226 IS BOUND.
      DATA t231 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t232 TYPE REF TO object.
      t232 = t226.
      TRY.
          t225 ?= t232.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t225 IS NOT BOUND.
        TRY.
            t231 ?= t226.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t231 IS BOUND.
          t225 = t231->source( ).
        ENDIF.
        IF t225 IS NOT BOUND.
          CREATE OBJECT t225.
          t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t225->oval = t226.
        ENDIF.
      ENDIF.
    ENDIF.
    t219->load( ).
    APPEND t225 TO t219->items.
    t219->save( ).
    t211 = zcl_lnt_st_combi_module=>seq( i_first = t214 i_second = t217 i_rest = t219 ).
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t242) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t242 IS BOUND.
      CREATE OBJECT t241.
      t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t241->cval = t242.
    ENDIF.
    t240 = zcl_lnt_st_combi_module=>star( i_first = t241 ).
    IF t240 IS BOUND.
      DATA t243 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t244 TYPE REF TO object.
      t244 = t240.
      TRY.
          t239 ?= t244.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t239 IS NOT BOUND.
        TRY.
            t243 ?= t240.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t243 IS BOUND.
          t239 = t243->source( ).
        ENDIF.
        IF t239 IS NOT BOUND.
          CREATE OBJECT t239.
          t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t239->oval = t240.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t248.
    t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t248->sval = |DEFINE|.
    t247 = zcl_lnt_st_combi_module=>opt( i_first = t248 ).
    IF t247 IS BOUND.
      DATA t250 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t251 TYPE REF TO object.
      t251 = t247.
      TRY.
          t246 ?= t251.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t250 ?= t247.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t250 IS BOUND.
          t246 = t250->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t247.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t252 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t252.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t256 TYPE REF TO zif_lnt_statement_runnable.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t257.
    t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t257->sval = |ROOT|.
    t256 = zcl_lnt_st_combi_module=>opt( i_first = t257 ).
    IF t256 IS BOUND.
      DATA t259 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t260 TYPE REF TO object.
      t260 = t256.
      TRY.
          t255 ?= t260.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t255 IS NOT BOUND.
        TRY.
            t259 ?= t256.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t259 IS BOUND.
          t255 = t259->source( ).
        ENDIF.
        IF t255 IS NOT BOUND.
          CREATE OBJECT t255.
          t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t255->oval = t256.
        ENDIF.
      ENDIF.
    ENDIF.
    t252->load( ).
    APPEND t255 TO t252->items.
    t252->save( ).
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t263 TYPE REF TO zif_lnt_statement_runnable.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t171 IS BOUND.
      DATA t267 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t268 TYPE REF TO object.
      t268 = t171.
      TRY.
          t265 ?= t268.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t265 IS NOT BOUND.
        TRY.
            t267 ?= t171.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t267 IS BOUND.
          t265 = t267->source( ).
        ENDIF.
        IF t265 IS NOT BOUND.
          CREATE OBJECT t265.
          t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t265->oval = t171.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t211 IS BOUND.
      DATA t272 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t273 TYPE REF TO object.
      t273 = t211.
      TRY.
          t270 ?= t273.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t270 IS NOT BOUND.
        TRY.
            t272 ?= t211.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t272 IS BOUND.
          t270 = t272->source( ).
        ENDIF.
        IF t270 IS NOT BOUND.
          CREATE OBJECT t270.
          t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t270->oval = t211.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t275.
    t263 = zcl_lnt_st_combi_module=>alt( i_first = t265 i_second = t270 i_rest = t275 ).
    IF t263 IS BOUND.
      DATA t280 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t281 TYPE REF TO object.
      t281 = t263.
      TRY.
          t262 ?= t281.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t262 IS NOT BOUND.
        TRY.
            t280 ?= t263.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t280 IS BOUND.
          t262 = t280->source( ).
        ENDIF.
        IF t262 IS NOT BOUND.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t262->oval = t263.
        ENDIF.
      ENDIF.
    ENDIF.
    t252->load( ).
    APPEND t262 TO t252->items.
    t252->save( ).
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    t284 = zcl_lnt_st_combi_module=>str( i_s = |\{| ).
    IF t284 IS BOUND.
      DATA t286 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t287 TYPE REF TO object.
      t287 = t284.
      TRY.
          t283 ?= t287.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t283 IS NOT BOUND.
        TRY.
            t286 ?= t284.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t286 IS BOUND.
          t283 = t286->source( ).
        ENDIF.
        IF t283 IS NOT BOUND.
          CREATE OBJECT t283.
          t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t283->oval = t284.
        ENDIF.
      ENDIF.
    ENDIF.
    t252->load( ).
    APPEND t283 TO t252->items.
    t252->save( ).
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t149 IS BOUND.
      DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t292 TYPE REF TO object.
      t292 = t149.
      TRY.
          t289 ?= t292.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t289 IS NOT BOUND.
        TRY.
            t291 ?= t149.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t291 IS BOUND.
          t289 = t291->source( ).
        ENDIF.
        IF t289 IS NOT BOUND.
          CREATE OBJECT t289.
          t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t289->oval = t149.
        ENDIF.
      ENDIF.
    ENDIF.
    t252->load( ).
    APPEND t289 TO t252->items.
    t252->save( ).
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    t295 = zcl_lnt_st_combi_module=>str( i_s = |\}| ).
    IF t295 IS BOUND.
      DATA t297 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t298 TYPE REF TO object.
      t298 = t295.
      TRY.
          t294 ?= t298.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t294 IS NOT BOUND.
        TRY.
            t297 ?= t295.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t297 IS BOUND.
          t294 = t297->source( ).
        ENDIF.
        IF t294 IS NOT BOUND.
          CREATE OBJECT t294.
          t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t294->oval = t295.
        ENDIF.
      ENDIF.
    ENDIF.
    t252->load( ).
    APPEND t294 TO t252->items.
    t252->save( ).
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t301 TYPE REF TO zif_lnt_statement_runnable.
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t303 TYPE REF TO zif_lnt_statement_runnable.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t305.
    t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t305->sval = |WITH|.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t308.
    t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t308->sval = |FEDERATED|.
    DATA t310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t310.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t313.
    t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t313->sval = |DATA|.
    t310->load( ).
    APPEND t313 TO t310->items.
    t310->save( ).
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t317 TYPE REF TO zif_lnt_statement_runnable.
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t319 TYPE REF TO zif_lnt_statement_runnable.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t322 TYPE REF TO zif_lnt_statement_runnable.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t324.
    t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t324->sval = |PROVIDED|.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t327.
    t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t327->sval = |AT|.
    DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t329.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t332.
    t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t332->sval = |RUNTIME|.
    t329->load( ).
    APPEND t332 TO t329->items.
    t329->save( ).
    t322 = zcl_lnt_st_combi_module=>seq( i_first = t324 i_second = t327 i_rest = t329 ).
    IF t322 IS BOUND.
      DATA t338 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t339 TYPE REF TO object.
      t339 = t322.
      TRY.
          t321 ?= t339.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t321 IS NOT BOUND.
        TRY.
            t338 ?= t322.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t338 IS BOUND.
          t321 = t338->source( ).
        ENDIF.
        IF t321 IS NOT BOUND.
          CREATE OBJECT t321.
          t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t321->oval = t322.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t342 TYPE REF TO zif_lnt_statement_runnable.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t344.
    t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t344->sval = |PROVIDED|.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t347.
    t347->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t347->sval = |BY|.
    DATA t349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t349.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t353) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t353 IS BOUND.
      CREATE OBJECT t352.
      t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t352->cval = t353.
    ENDIF.
    t349->load( ).
    APPEND t352 TO t349->items.
    t349->save( ).
    t342 = zcl_lnt_st_combi_module=>seq( i_first = t344 i_second = t347 i_rest = t349 ).
    IF t342 IS BOUND.
      DATA t358 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t359 TYPE REF TO object.
      t359 = t342.
      TRY.
          t341 ?= t359.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t341 IS NOT BOUND.
        TRY.
            t358 ?= t342.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t358 IS BOUND.
          t341 = t358->source( ).
        ENDIF.
        IF t341 IS NOT BOUND.
          CREATE OBJECT t341.
          t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t341->oval = t342.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t361.
    t319 = zcl_lnt_st_combi_module=>alt( i_first = t321 i_second = t341 i_rest = t361 ).
    IF t319 IS BOUND.
      DATA t366 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t367 TYPE REF TO object.
      t367 = t319.
      TRY.
          t318 ?= t367.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t318 IS NOT BOUND.
        TRY.
            t366 ?= t319.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t366 IS BOUND.
          t318 = t366->source( ).
        ENDIF.
        IF t318 IS NOT BOUND.
          CREATE OBJECT t318.
          t318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t318->oval = t319.
        ENDIF.
      ENDIF.
    ENDIF.
    t317 = zcl_lnt_st_combi_module=>opt_prio( i_first = t318 ).
    IF t317 IS BOUND.
      DATA t368 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t369 TYPE REF TO object.
      t369 = t317.
      TRY.
          t316 ?= t369.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t316 IS NOT BOUND.
        TRY.
            t368 ?= t317.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t368 IS BOUND.
          t316 = t368->source( ).
        ENDIF.
        IF t316 IS NOT BOUND.
          CREATE OBJECT t316.
          t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t316->oval = t317.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t316 TO t310->items.
    t310->save( ).
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t372 TYPE REF TO zif_lnt_statement_runnable.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t374 TYPE REF TO zif_lnt_statement_runnable.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t376.
    t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t376->sval = |ON|.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t379.
    t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t379->sval = |UNLINKED|.
    DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t381.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t385 TYPE REF TO zif_lnt_statement_runnable.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t387.
    t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t387->sval = |FAIL|.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t390.
    t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t390->sval = |IGNORE|.
    DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t393.
    t385 = zcl_lnt_st_combi_module=>alt_prio( i_first = t387 i_second = t390 i_rest = t393 ).
    IF t385 IS BOUND.
      DATA t398 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t399 TYPE REF TO object.
      t399 = t385.
      TRY.
          t384 ?= t399.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t384 IS NOT BOUND.
        TRY.
            t398 ?= t385.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t398 IS BOUND.
          t384 = t398->source( ).
        ENDIF.
        IF t384 IS NOT BOUND.
          CREATE OBJECT t384.
          t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t384->oval = t385.
        ENDIF.
      ENDIF.
    ENDIF.
    t381->load( ).
    APPEND t384 TO t381->items.
    t381->save( ).
    t374 = zcl_lnt_st_combi_module=>seq( i_first = t376 i_second = t379 i_rest = t381 ).
    IF t374 IS BOUND.
      DATA t404 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t405 TYPE REF TO object.
      t405 = t374.
      TRY.
          t373 ?= t405.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t373 IS NOT BOUND.
        TRY.
            t404 ?= t374.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t404 IS BOUND.
          t373 = t404->source( ).
        ENDIF.
        IF t373 IS NOT BOUND.
          CREATE OBJECT t373.
          t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t373->oval = t374.
        ENDIF.
      ENDIF.
    ENDIF.
    t372 = zcl_lnt_st_combi_module=>opt_prio( i_first = t373 ).
    IF t372 IS BOUND.
      DATA t406 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t407 TYPE REF TO object.
      t407 = t372.
      TRY.
          t371 ?= t407.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t371 IS NOT BOUND.
        TRY.
            t406 ?= t372.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t406 IS BOUND.
          t371 = t406->source( ).
        ENDIF.
        IF t371 IS NOT BOUND.
          CREATE OBJECT t371.
          t371->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t371->oval = t372.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t371 TO t310->items.
    t310->save( ).
    t303 = zcl_lnt_st_combi_module=>seq( i_first = t305 i_second = t308 i_rest = t310 ).
    IF t303 IS BOUND.
      DATA t412 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t413 TYPE REF TO object.
      t413 = t303.
      TRY.
          t302 ?= t413.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t302 IS NOT BOUND.
        TRY.
            t412 ?= t303.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t412 IS BOUND.
          t302 = t412->source( ).
        ENDIF.
        IF t302 IS NOT BOUND.
          CREATE OBJECT t302.
          t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t302->oval = t303.
        ENDIF.
      ENDIF.
    ENDIF.
    t301 = zcl_lnt_st_combi_module=>opt( i_first = t302 ).
    IF t301 IS BOUND.
      DATA t414 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t415 TYPE REF TO object.
      t415 = t301.
      TRY.
          t300 ?= t415.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t300 IS NOT BOUND.
        TRY.
            t414 ?= t301.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t414 IS BOUND.
          t300 = t414->source( ).
        ENDIF.
        IF t300 IS NOT BOUND.
          CREATE OBJECT t300.
          t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t300->oval = t301.
        ENDIF.
      ENDIF.
    ENDIF.
    t252->load( ).
    APPEND t300 TO t252->items.
    t252->save( ).
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t418 TYPE REF TO zif_lnt_statement_runnable.
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t419.
    t419->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t419->sval = |;|.
    t418 = zcl_lnt_st_combi_module=>opt( i_first = t419 ).
    IF t418 IS BOUND.
      DATA t421 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t422 TYPE REF TO object.
      t422 = t418.
      TRY.
          t417 ?= t422.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t417 IS NOT BOUND.
        TRY.
            t421 ?= t418.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t421 IS BOUND.
          t417 = t421->source( ).
        ENDIF.
        IF t417 IS NOT BOUND.
          CREATE OBJECT t417.
          t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t417->oval = t418.
        ENDIF.
      ENDIF.
    ENDIF.
    t252->load( ).
    APPEND t417 TO t252->items.
    t252->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t239 i_second = t246 i_rest = t252 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1100_58347daca360.
  ENDMETHOD.
ENDCLASS.
