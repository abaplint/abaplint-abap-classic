* TS: src/abap/2_statements/expressions/field_chain.ts:7:1 FieldChain
CLASS zcl_lnt_st_field_chain DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_field_chain IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d25_a168ca012db7bd.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t8 TYPE REF TO object.
      t8 = t5.
      TRY.
          t4 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t7 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t4 = t7->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d99_35801e5718dec9.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t10 i_rest = t13 ).
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t22 = zcl_lnt_st_combi_module=>tok( i_t = t23 ).
    IF t22 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t22.
      TRY.
          t21 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t24 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t21 = t24->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d100_553f73368b64.
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    t28 = zcl_lnt_st_combi_module=>opt_prio( i_first = t29 ).
    IF t28 IS BOUND.
      DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t32 TYPE REF TO object.
      t32 = t28.
      TRY.
          t27 ?= t32.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t31 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t31 IS BOUND.
          t27 = t31->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t34.
    t18 = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t27 i_rest = t34 ).
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d113_956a697889b2.
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t44->cval = t45.
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = CAST zif_lnt_statement_runnable( zcl_lnt_dynamic_access_module=>dyn_attr( ) ).
    IF t48 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t50 TYPE REF TO object.
      t50 = t48.
      TRY.
          t47 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t49 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t47 = t49->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t57 TYPE REF TO object.
      t57 = t1.
      TRY.
          t54 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t56 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t54 = t56->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t51->load( ).
    APPEND t54 TO t51->items.
    t51->save( ).
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d103_04a0f92dd4f1.
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    t64 = zcl_lnt_st_combi_module=>opt_prio( i_first = t65 ).
    t61->load( ).
    APPEND t64 TO t61->items.
    t61->save( ).
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t69->cval = t70.
    ENDIF.
    t68 = zcl_lnt_st_combi_module=>opt_prio( i_first = t69 ).
    t61->load( ).
    APPEND t68 TO t61->items.
    t61->save( ).
    t60 = zcl_lnt_dynamic_access_module=>dyn_comp( i_inside = t61 ).
    IF t60 IS BOUND.
      DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t74 TYPE REF TO object.
      t74 = t60.
      TRY.
          t59 ?= t74.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t73 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t73 IS BOUND.
          t59 = t73->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    t51->load( ).
    APPEND t59 TO t51->items.
    t51->save( ).
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t79 TYPE REF TO object.
      t79 = t18.
      TRY.
          t76 ?= t79.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t78 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t76 = t78->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t51->load( ).
    APPEND t76 TO t51->items.
    t51->save( ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d13_724b547adff3ae.
    t82 = zcl_lnt_st_combi_module=>tok( i_t = t83 ).
    IF t82 IS BOUND.
      DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t85 TYPE REF TO object.
      t85 = t82.
      TRY.
          t81 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t81 IS NOT BOUND.
        TRY.
            t84 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t84 IS BOUND.
          t81 = t84->source( ).
        ENDIF.
        IF t81 IS NOT BOUND.
          CREATE OBJECT t81.
          t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t81->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    t51->load( ).
    APPEND t81 TO t51->items.
    t51->save( ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    t51->load( ).
    APPEND t87 TO t51->items.
    t51->save( ).
    t42 = zcl_lnt_st_combi_module=>alt_prio( i_first = t44 i_second = t47 i_rest = t51 ).
    IF t42 IS BOUND.
      DATA t93 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t94 TYPE REF TO object.
      t94 = t42.
      TRY.
          t41 ?= t94.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t93 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t93 IS BOUND.
          t41 = t93->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    t39 = zcl_lnt_st_combi_module=>star( i_first = t41 ).
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t99) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t98->cval = t99.
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d35_f5313aa9b79ded.
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
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t106.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d99_35801e5718dec9.
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t109->cval = t110.
    ENDIF.
    t106->load( ).
    APPEND t109 TO t106->items.
    t106->save( ).
    t95 = zcl_lnt_st_combi_module=>seq( i_first = t98 i_second = t101 i_rest = t106 ).
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t95 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t121 TYPE REF TO object.
      t121 = t95.
      TRY.
          t118 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t120 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t118 = t120->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t124) = zlnt_runtime_desc_78196487750d=>zlnt_member_d169_f7493de77386.
    IF t124 IS BOUND.
      CREATE OBJECT t123.
      t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t123->cval = t124.
    ENDIF.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t125.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d170_d4b536f00e50.
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t128->cval = t129.
    ENDIF.
    t125->load( ).
    APPEND t128 TO t125->items.
    t125->save( ).
    t115 = zcl_lnt_st_combi_module=>alt_prio( i_first = t118 i_second = t123 i_rest = t125 ).
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t139) = zlnt_runtime_desc_78196487750d=>zlnt_member_d23_6b4b88957b2c9e.
    t138 = zcl_lnt_st_combi_module=>tok( i_t = t139 ).
    IF t138 IS BOUND.
      DATA t140 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t141 TYPE REF TO object.
      t141 = t138.
      TRY.
          t137 ?= t141.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t140 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t140 IS BOUND.
          t137 = t140->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t138.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t149) = zlnt_runtime_desc_78196487750d=>zlnt_member_d102_cb65ad2c1bba.
    IF t149 IS BOUND.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t148->cval = t149.
    ENDIF.
    t147 = zcl_lnt_st_combi_module=>opt_prio( i_first = t148 ).
    IF t147 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t151 TYPE REF TO object.
      t151 = t147.
      TRY.
          t146 ?= t151.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t146 IS NOT BOUND.
        TRY.
            t150 ?= t147.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t146 = t150->source( ).
        ENDIF.
        IF t146 IS NOT BOUND.
          CREATE OBJECT t146.
          t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t146->oval = t147.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t156) = zlnt_runtime_desc_78196487750d=>zlnt_member_d103_04a0f92dd4f1.
    IF t156 IS BOUND.
      CREATE OBJECT t155.
      t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t155->cval = t156.
    ENDIF.
    t154 = zcl_lnt_st_combi_module=>opt_prio( i_first = t155 ).
    IF t154 IS BOUND.
      DATA t157 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t158 TYPE REF TO object.
      t158 = t154.
      TRY.
          t153 ?= t158.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t157 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t157 IS BOUND.
          t153 = t157->source( ).
        ENDIF.
        IF t153 IS NOT BOUND.
          CREATE OBJECT t153.
          t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t153->oval = t154.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t159.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t165) = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
    IF t165 IS BOUND.
      CREATE OBJECT t164.
      t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t164->cval = t165.
    ENDIF.
    t163 = zcl_lnt_st_combi_module=>opt_prio( i_first = t164 ).
    IF t163 IS BOUND.
      DATA t166 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t167 TYPE REF TO object.
      t167 = t163.
      TRY.
          t162 ?= t167.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t162 IS NOT BOUND.
        TRY.
            t166 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t166 IS BOUND.
          t162 = t166->source( ).
        ENDIF.
        IF t162 IS NOT BOUND.
          CREATE OBJECT t162.
          t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t162->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    t159->load( ).
    APPEND t162 TO t159->items.
    t159->save( ).
    t144 = zcl_lnt_st_combi_module=>seq( i_first = t146 i_second = t153 i_rest = t159 ).
    IF t144 IS BOUND.
      DATA t172 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t173 TYPE REF TO object.
      t173 = t144.
      TRY.
          t143 ?= t173.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t172 ?= t144.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t172 IS BOUND.
          t143 = t172->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t144.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t175.
    t134 = zcl_lnt_st_combi_module=>alt_prio( i_first = t137 i_second = t143 i_rest = t175 ).
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t115 IS BOUND.
      DATA t185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t186 TYPE REF TO object.
      t186 = t115.
      TRY.
          t183 ?= t186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t183 IS NOT BOUND.
        TRY.
            t185 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t185 IS BOUND.
          t183 = t185->source( ).
        ENDIF.
        IF t183 IS NOT BOUND.
          CREATE OBJECT t183.
          t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t183->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t39 IS BOUND.
      DATA t190 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t191 TYPE REF TO object.
      t191 = t39.
      TRY.
          t188 ?= t191.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t188 IS NOT BOUND.
        TRY.
            t190 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t190 IS BOUND.
          t188 = t190->source( ).
        ENDIF.
        IF t188 IS NOT BOUND.
          CREATE OBJECT t188.
          t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t188->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t192.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t134 IS BOUND.
      DATA t197 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t198 TYPE REF TO object.
      t198 = t134.
      TRY.
          t195 ?= t198.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t195 IS NOT BOUND.
        TRY.
            t197 ?= t134.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t197 IS BOUND.
          t195 = t197->source( ).
        ENDIF.
        IF t195 IS NOT BOUND.
          CREATE OBJECT t195.
          t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t195->oval = t134.
        ENDIF.
      ENDIF.
    ENDIF.
    t192->load( ).
    APPEND t195 TO t192->items.
    t192->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t183 i_second = t188 i_rest = t192 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
  ENDMETHOD.
ENDCLASS.
