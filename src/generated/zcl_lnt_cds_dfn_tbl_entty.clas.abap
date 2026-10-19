* TS: src/cds/expressions/cds_define_table_entity.ts:7:1 CDSDefineTableEntity
CLASS zcl_lnt_cds_dfn_tbl_entty DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_dfn_tbl_entty IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1106_b030da4153fc.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t3->cval = t4.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>plus( i_first = t3 ).
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t9 IS BOUND.
      CREATE OBJECT t8.
      t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t8->cval = t9.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t16.
    t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t16->sval = |,|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t19->cval = t20.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t22.
    t14 = zcl_lnt_st_combi_module=>seq( i_first = t16 i_second = t19 i_rest = t22 ).
    IF t14 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t28 TYPE REF TO object.
      t28 = t14.
      TRY.
          t13 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t27 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t13 = t27->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t14.
        ENDIF.
      ENDIF.
    ENDIF.
    t12 = zcl_lnt_st_combi_module=>star( i_first = t13 ).
    IF t12 IS BOUND.
      DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t30 TYPE REF TO object.
      t30 = t12.
      TRY.
          t11 ?= t30.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11 IS NOT BOUND.
        TRY.
            t29 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t29 IS BOUND.
          t11 = t29->source( ).
        ENDIF.
        IF t11 IS NOT BOUND.
          CREATE OBJECT t11.
          t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = |,|.
    t35 = zcl_lnt_st_combi_module=>opt( i_first = t36 ).
    IF t35 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t39 TYPE REF TO object.
      t39 = t35.
      TRY.
          t34 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t34 IS NOT BOUND.
        TRY.
            t38 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t34 = t38->source( ).
        ENDIF.
        IF t34 IS NOT BOUND.
          CREATE OBJECT t34.
          t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t34->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    t31->load( ).
    APPEND t34 TO t31->items.
    t31->save( ).
    t5 = zcl_lnt_st_combi_module=>seq( i_first = t8 i_second = t11 i_rest = t31 ).
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    t48 = zcl_lnt_st_combi_module=>str( i_s = |\{| ).
    IF t48 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t51 TYPE REF TO object.
      t51 = t48.
      TRY.
          t47 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t50 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t47 = t50->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t56.
    t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t56->sval = |*|.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t62 TYPE REF TO object.
      t62 = t5.
      TRY.
          t59 ?= t62.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t61 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t59 = t61->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t64.
    t54 = zcl_lnt_st_combi_module=>alt_prio( i_first = t56 i_second = t59 i_rest = t64 ).
    IF t54 IS BOUND.
      DATA t69 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t70 TYPE REF TO object.
      t70 = t54.
      TRY.
          t53 ?= t70.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t69 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t69 IS BOUND.
          t53 = t69->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t71.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    t75 = zcl_lnt_st_combi_module=>str( i_s = |\}| ).
    IF t75 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t78 TYPE REF TO object.
      t78 = t75.
      TRY.
          t74 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t77 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t74 = t77->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    t71->load( ).
    APPEND t74 TO t71->items.
    t71->save( ).
    t44 = zcl_lnt_st_combi_module=>seq( i_first = t47 i_second = t53 i_rest = t71 ).
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t86.
    t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t86->sval = |AS|.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t89.
    t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t89->sval = |SELECT|.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t91.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t94.
    t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t94->sval = |FROM|.
    t91->load( ).
    APPEND t94 TO t91->items.
    t91->save( ).
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t98) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    IF t98 IS BOUND.
      CREATE OBJECT t97.
      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t97->cval = t98.
    ENDIF.
    t91->load( ).
    APPEND t97 TO t91->items.
    t91->save( ).
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1108_9ad6b30e9664.
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t102->cval = t103.
    ENDIF.
    t101 = zcl_lnt_st_combi_module=>star( i_first = t102 ).
    IF t101 IS BOUND.
      DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t105 TYPE REF TO object.
      t105 = t101.
      TRY.
          t100 ?= t105.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t100 IS NOT BOUND.
        TRY.
            t104 ?= t101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t104 IS BOUND.
          t100 = t104->source( ).
        ENDIF.
        IF t100 IS NOT BOUND.
          CREATE OBJECT t100.
          t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t100->oval = t101.
        ENDIF.
      ENDIF.
    ENDIF.
    t91->load( ).
    APPEND t100 TO t91->items.
    t91->save( ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t113) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1096_358eab8a400f.
    IF t113 IS BOUND.
      CREATE OBJECT t112.
      t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t112->cval = t113.
    ENDIF.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t116) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t115->cval = t116.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    t110 = zcl_lnt_st_combi_module=>alt_prio( i_first = t112 i_second = t115 i_rest = t118 ).
    IF t110 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t124 TYPE REF TO object.
      t124 = t110.
      TRY.
          t109 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t109 IS NOT BOUND.
        TRY.
            t123 ?= t110.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t109 = t123->source( ).
        ENDIF.
        IF t109 IS NOT BOUND.
          CREATE OBJECT t109.
          t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t109->oval = t110.
        ENDIF.
      ENDIF.
    ENDIF.
    t108 = zcl_lnt_st_combi_module=>star( i_first = t109 ).
    IF t108 IS BOUND.
      DATA t125 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t126 TYPE REF TO object.
      t126 = t108.
      TRY.
          t107 ?= t126.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t125 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t125 IS BOUND.
          t107 = t125->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    t91->load( ).
    APPEND t107 TO t91->items.
    t91->save( ).
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44 IS BOUND.
      DATA t132 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t133 TYPE REF TO object.
      t133 = t44.
      TRY.
          t130 ?= t133.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t130 IS NOT BOUND.
        TRY.
            t132 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t132 IS BOUND.
          t130 = t132->source( ).
        ENDIF.
        IF t130 IS NOT BOUND.
          CREATE OBJECT t130.
          t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t130->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    t129 = zcl_lnt_st_combi_module=>opt( i_first = t130 ).
    IF t129 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t135 TYPE REF TO object.
      t135 = t129.
      TRY.
          t128 ?= t135.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t128 IS NOT BOUND.
        TRY.
            t134 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t128 = t134->source( ).
        ENDIF.
        IF t128 IS NOT BOUND.
          CREATE OBJECT t128.
          t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t128->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    t91->load( ).
    APPEND t128 TO t91->items.
    t91->save( ).
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t140) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1104_02fd7d49de66.
    IF t140 IS BOUND.
      CREATE OBJECT t139.
      t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t139->cval = t140.
    ENDIF.
    t138 = zcl_lnt_st_combi_module=>opt_prio( i_first = t139 ).
    IF t138 IS BOUND.
      DATA t141 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t142 TYPE REF TO object.
      t142 = t138.
      TRY.
          t137 ?= t142.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t141 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t141 IS BOUND.
          t137 = t141->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t138.
        ENDIF.
      ENDIF.
    ENDIF.
    t91->load( ).
    APPEND t137 TO t91->items.
    t91->save( ).
    t83 = zcl_lnt_st_combi_module=>seq( i_first = t86 i_second = t89 i_rest = t91 ).
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t152) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t152 IS BOUND.
      CREATE OBJECT t151.
      t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t151->cval = t152.
    ENDIF.
    t150 = zcl_lnt_st_combi_module=>star( i_first = t151 ).
    IF t150 IS BOUND.
      DATA t153 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t154 TYPE REF TO object.
      t154 = t150.
      TRY.
          t149 ?= t154.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t149 IS NOT BOUND.
        TRY.
            t153 ?= t150.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t153 IS BOUND.
          t149 = t153->source( ).
        ENDIF.
        IF t149 IS NOT BOUND.
          CREATE OBJECT t149.
          t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t149->oval = t150.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t158.
    t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t158->sval = |DEFINE|.
    t157 = zcl_lnt_st_combi_module=>opt( i_first = t158 ).
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
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t162.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t167.
    t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t167->sval = |ROOT|.
    t166 = zcl_lnt_st_combi_module=>opt( i_first = t167 ).
    IF t166 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t170 TYPE REF TO object.
      t170 = t166.
      TRY.
          t165 ?= t170.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t165 IS NOT BOUND.
        TRY.
            t169 ?= t166.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t165 = t169->source( ).
        ENDIF.
        IF t165 IS NOT BOUND.
          CREATE OBJECT t165.
          t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t165->oval = t166.
        ENDIF.
      ENDIF.
    ENDIF.
    t162->load( ).
    APPEND t165 TO t162->items.
    t162->save( ).
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t172.
    t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t172->sval = |TABLE|.
    t162->load( ).
    APPEND t172 TO t162->items.
    t162->save( ).
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t175.
    t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t175->sval = |ENTITY|.
    t162->load( ).
    APPEND t175 TO t162->items.
    t162->save( ).
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t179) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t179 IS BOUND.
      CREATE OBJECT t178.
      t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t178->cval = t179.
    ENDIF.
    t162->load( ).
    APPEND t178 TO t162->items.
    t162->save( ).
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t184) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1097_1528186a58df.
    IF t184 IS BOUND.
      CREATE OBJECT t183.
      t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t183->cval = t184.
    ENDIF.
    t182 = zcl_lnt_st_combi_module=>opt( i_first = t183 ).
    IF t182 IS BOUND.
      DATA t185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t186 TYPE REF TO object.
      t186 = t182.
      TRY.
          t181 ?= t186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t181 IS NOT BOUND.
        TRY.
            t185 ?= t182.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t185 IS BOUND.
          t181 = t185->source( ).
        ENDIF.
        IF t181 IS NOT BOUND.
          CREATE OBJECT t181.
          t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t181->oval = t182.
        ENDIF.
      ENDIF.
    ENDIF.
    t162->load( ).
    APPEND t181 TO t162->items.
    t162->save( ).
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    t195 = zcl_lnt_st_combi_module=>str( i_s = |\{| ).
    IF t195 IS BOUND.
      DATA t197 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t198 TYPE REF TO object.
      t198 = t195.
      TRY.
          t194 ?= t198.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t194 IS NOT BOUND.
        TRY.
            t197 ?= t195.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t197 IS BOUND.
          t194 = t197->source( ).
        ENDIF.
        IF t194 IS NOT BOUND.
          CREATE OBJECT t194.
          t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t194->oval = t195.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t202 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t203 TYPE REF TO object.
      t203 = t1.
      TRY.
          t200 ?= t203.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t202 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t202 IS BOUND.
          t200 = t202->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t204.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t208 TYPE REF TO zif_lnt_statement_runnable.
    t208 = zcl_lnt_st_combi_module=>str( i_s = |\}| ).
    IF t208 IS BOUND.
      DATA t210 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t211 TYPE REF TO object.
      t211 = t208.
      TRY.
          t207 ?= t211.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t207 IS NOT BOUND.
        TRY.
            t210 ?= t208.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t210 IS BOUND.
          t207 = t210->source( ).
        ENDIF.
        IF t207 IS NOT BOUND.
          CREATE OBJECT t207.
          t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t207->oval = t208.
        ENDIF.
      ENDIF.
    ENDIF.
    t204->load( ).
    APPEND t207 TO t204->items.
    t204->save( ).
    t192 = zcl_lnt_st_combi_module=>seq( i_first = t194 i_second = t200 i_rest = t204 ).
    IF t192 IS BOUND.
      DATA t216 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t217 TYPE REF TO object.
      t217 = t192.
      TRY.
          t191 ?= t217.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t191 IS NOT BOUND.
        TRY.
            t216 ?= t192.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t216 IS BOUND.
          t191 = t216->source( ).
        ENDIF.
        IF t191 IS NOT BOUND.
          CREATE OBJECT t191.
          t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t191->oval = t192.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t83 IS BOUND.
      DATA t221 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t222 TYPE REF TO object.
      t222 = t83.
      TRY.
          t219 ?= t222.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t219 IS NOT BOUND.
        TRY.
            t221 ?= t83.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t221 IS BOUND.
          t219 = t221->source( ).
        ENDIF.
        IF t219 IS NOT BOUND.
          CREATE OBJECT t219.
          t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t219->oval = t83.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t224.
    t189 = zcl_lnt_st_combi_module=>alt_prio( i_first = t191 i_second = t219 i_rest = t224 ).
    IF t189 IS BOUND.
      DATA t229 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t230 TYPE REF TO object.
      t230 = t189.
      TRY.
          t188 ?= t230.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t188 IS NOT BOUND.
        TRY.
            t229 ?= t189.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t229 IS BOUND.
          t188 = t229->source( ).
        ENDIF.
        IF t188 IS NOT BOUND.
          CREATE OBJECT t188.
          t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t188->oval = t189.
        ENDIF.
      ENDIF.
    ENDIF.
    t162->load( ).
    APPEND t188 TO t162->items.
    t162->save( ).
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t234.
    t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t234->sval = |;|.
    t233 = zcl_lnt_st_combi_module=>opt( i_first = t234 ).
    IF t233 IS BOUND.
      DATA t236 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t237 TYPE REF TO object.
      t237 = t233.
      TRY.
          t232 ?= t237.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t232 IS NOT BOUND.
        TRY.
            t236 ?= t233.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t236 IS BOUND.
          t232 = t236->source( ).
        ENDIF.
        IF t232 IS NOT BOUND.
          CREATE OBJECT t232.
          t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t232->oval = t233.
        ENDIF.
      ENDIF.
    ENDIF.
    t162->load( ).
    APPEND t232 TO t162->items.
    t162->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t149 i_second = t156 i_rest = t162 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1109_6169e67f9e50.
  ENDMETHOD.
ENDCLASS.
