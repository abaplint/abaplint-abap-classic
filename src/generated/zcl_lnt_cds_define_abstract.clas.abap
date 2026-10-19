* TS: src/cds/expressions/cds_define_abstract.ts:6:1 CDSDefineAbstract
CLASS zcl_lnt_cds_define_abstract DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_define_abstract IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t6->cval = t7.
    ENDIF.
    t5 = zcl_lnt_st_combi_module=>star( i_first = t6 ).
    IF t5 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t9 TYPE REF TO object.
      t9 = t5.
      TRY.
          t4 ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t8 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t4 = t8->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    t14 = zcl_lnt_st_combi_module=>str( i_s = |KEY| ).
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
    t12 = zcl_lnt_st_combi_module=>opt_prio( i_first = t13 ).
    IF t12 IS BOUND.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t19 TYPE REF TO object.
      t19 = t12.
      TRY.
          t11 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11 IS NOT BOUND.
        TRY.
            t18 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t11 = t18->source( ).
        ENDIF.
        IF t11 IS NOT BOUND.
          CREATE OBJECT t11.
          t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    t20->load( ).
    APPEND t23 TO t20->items.
    t20->save( ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = |:|.
    t20->load( ).
    APPEND t26 TO t20->items.
    t20->save( ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    t20->load( ).
    APPEND t29 TO t20->items.
    t20->save( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |;|.
    t20->load( ).
    APPEND t32 TO t20->items.
    t20->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t11 i_rest = t20 ).
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t43->cval = t44.
    ENDIF.
    t42 = zcl_lnt_st_combi_module=>star( i_first = t43 ).
    IF t42 IS BOUND.
      DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t46 TYPE REF TO object.
      t46 = t42.
      TRY.
          t41 ?= t46.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t45 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t45 IS BOUND.
          t41 = t45->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t48->cval = t49.
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t50.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t53.
    t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t53->sval = |:|.
    t50->load( ).
    APPEND t53 TO t50->items.
    t50->save( ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1096_358eab8a400f.
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t59->cval = t60.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t65.
    t57 = zcl_lnt_st_combi_module=>alt( i_first = t59 i_second = t62 i_rest = t65 ).
    IF t57 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t71 TYPE REF TO object.
      t71 = t57.
      TRY.
          t56 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t70 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t56 = t70->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t50->load( ).
    APPEND t56 TO t50->items.
    t50->save( ).
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = |;|.
    t50->load( ).
    APPEND t73 TO t50->items.
    t50->save( ).
    t38 = zcl_lnt_st_combi_module=>seq( i_first = t41 i_second = t48 i_rest = t50 ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t84) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t83->cval = t84.
    ENDIF.
    t82 = zcl_lnt_st_combi_module=>star( i_first = t83 ).
    IF t82 IS BOUND.
      DATA t85 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t86 TYPE REF TO object.
      t86 = t82.
      TRY.
          t81 ?= t86.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t81 IS NOT BOUND.
        TRY.
            t85 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t85 IS BOUND.
          t81 = t85->source( ).
        ENDIF.
        IF t81 IS NOT BOUND.
          CREATE OBJECT t81.
          t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t81->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t90.
    t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t90->sval = |DEFINE|.
    t89 = zcl_lnt_st_combi_module=>opt( i_first = t90 ).
    IF t89 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t93 TYPE REF TO object.
      t93 = t89.
      TRY.
          t88 ?= t93.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t92 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS BOUND.
          t88 = t92->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t94.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t99.
    t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t99->sval = |ROOT|.
    t98 = zcl_lnt_st_combi_module=>opt( i_first = t99 ).
    IF t98 IS BOUND.
      DATA t101 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t102 TYPE REF TO object.
      t102 = t98.
      TRY.
          t97 ?= t102.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t97 IS NOT BOUND.
        TRY.
            t101 ?= t98.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t101 IS BOUND.
          t97 = t101->source( ).
        ENDIF.
        IF t97 IS NOT BOUND.
          CREATE OBJECT t97.
          t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t97->oval = t98.
        ENDIF.
      ENDIF.
    ENDIF.
    t94->load( ).
    APPEND t97 TO t94->items.
    t94->save( ).
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = |ABSTRACT|.
    t94->load( ).
    APPEND t104 TO t94->items.
    t94->save( ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = |ENTITY|.
    t94->load( ).
    APPEND t107 TO t94->items.
    t94->save( ).
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t110->cval = t111.
    ENDIF.
    t94->load( ).
    APPEND t110 TO t94->items.
    t94->save( ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t116) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1097_1528186a58df.
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t115->cval = t116.
    ENDIF.
    t114 = zcl_lnt_st_combi_module=>opt( i_first = t115 ).
    IF t114 IS BOUND.
      DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t118 TYPE REF TO object.
      t118 = t114.
      TRY.
          t113 ?= t118.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t117 ?= t114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t117 IS BOUND.
          t113 = t117->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t114.
        ENDIF.
      ENDIF.
    ENDIF.
    t94->load( ).
    APPEND t113 TO t94->items.
    t94->save( ).
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    t121 = zcl_lnt_st_combi_module=>str( i_s = |\{| ).
    IF t121 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t124 TYPE REF TO object.
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
    t94->load( ).
    APPEND t120 TO t94->items.
    t94->save( ).
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t133 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t134 TYPE REF TO object.
      t134 = t1.
      TRY.
          t131 ?= t134.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t133 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t133 IS BOUND.
          t131 = t133->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t38 IS BOUND.
      DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t139 TYPE REF TO object.
      t139 = t38.
      TRY.
          t136 ?= t139.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t136 IS NOT BOUND.
        TRY.
            t138 ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t138 IS BOUND.
          t136 = t138->source( ).
        ENDIF.
        IF t136 IS NOT BOUND.
          CREATE OBJECT t136.
          t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t136->oval = t38.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t141.
    t129 = zcl_lnt_st_combi_module=>alt( i_first = t131 i_second = t136 i_rest = t141 ).
    IF t129 IS BOUND.
      DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t147 TYPE REF TO object.
      t147 = t129.
      TRY.
          t128 ?= t147.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t128 IS NOT BOUND.
        TRY.
            t146 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t146 IS BOUND.
          t128 = t146->source( ).
        ENDIF.
        IF t128 IS NOT BOUND.
          CREATE OBJECT t128.
          t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t128->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    t127 = zcl_lnt_st_combi_module=>plus( i_first = t128 ).
    IF t127 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t149 TYPE REF TO object.
      t149 = t127.
      TRY.
          t126 ?= t149.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t148 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t126 = t148->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t94->load( ).
    APPEND t126 TO t94->items.
    t94->save( ).
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    t152 = zcl_lnt_st_combi_module=>str( i_s = |\}| ).
    IF t152 IS BOUND.
      DATA t154 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t155 TYPE REF TO object.
      t155 = t152.
      TRY.
          t151 ?= t155.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t151 IS NOT BOUND.
        TRY.
            t154 ?= t152.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t154 IS BOUND.
          t151 = t154->source( ).
        ENDIF.
        IF t151 IS NOT BOUND.
          CREATE OBJECT t151.
          t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t151->oval = t152.
        ENDIF.
      ENDIF.
    ENDIF.
    t94->load( ).
    APPEND t151 TO t94->items.
    t94->save( ).
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t159.
    t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t159->sval = |;|.
    t158 = zcl_lnt_st_combi_module=>opt( i_first = t159 ).
    IF t158 IS BOUND.
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t162 TYPE REF TO object.
      t162 = t158.
      TRY.
          t157 ?= t162.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t161 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t157 = t161->source( ).
        ENDIF.
        IF t157 IS NOT BOUND.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t157->oval = t158.
        ENDIF.
      ENDIF.
    ENDIF.
    t94->load( ).
    APPEND t157 TO t94->items.
    t94->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t81 i_second = t88 i_rest = t94 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1098_d8ec791aea73.
  ENDMETHOD.
ENDCLASS.
