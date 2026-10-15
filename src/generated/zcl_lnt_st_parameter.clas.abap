* TS: src/abap/2_statements/statements/parameter.ts:7:1 Parameter
CLASS zcl_lnt_st_parameter DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_parameter IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |PARAMETER|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = |PARAMETERS|.
    CLEAR t7.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t11.
    DATA(t12) = t3.
    DATA(t13) = t6.
    DATA(t14) = t9.
    t11 = zcl_lnt_st_combi_module=>alt_prio( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = |DEFAULT|.
    CLEAR t18.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    CLEAR t24.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    CLEAR t27.
    IF t28 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t27->cval = t28.
    ENDIF.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    CREATE OBJECT t30.
    t29 = t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA(t32) = t23.
    DATA(t33) = t26.
    DATA(t34) = t29.
    t31 = zcl_lnt_st_combi_module=>alt_prio( i_first = t32 i_second = t33 i_rest = t34 ).
    t22 = t31.
    CLEAR t21.
    IF t22 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t35.
      DATA t36 TYPE REF TO object.
      CLEAR t36.
      CLEAR t35.
      t36 = t22.
      TRY.
          t21 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t35 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t21 = t35->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    t20 = t21.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    CREATE OBJECT t38.
    t37 = t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA(t40) = t17.
    DATA(t41) = t20.
    DATA(t42) = t37.
    t39 = zcl_lnt_st_combi_module=>seq( i_first = t40 i_second = t41 i_rest = t42 ).
    t16 = t39.
    t15 = t16.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = |RADIOBUTTON GROUP|.
    CLEAR t46.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d247_a74410852a3d.
    CLEAR t49.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    CREATE OBJECT t52.
    t51 = t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA(t54) = t45.
    DATA(t55) = t48.
    DATA(t56) = t51.
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t55 i_rest = t56 ).
    t44 = t53.
    t43 = t44.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = |TYPE|.
    CLEAR t63.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = t64.
    t62 = t63.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = |LIKE|.
    CLEAR t66.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = t67.
    t65 = t66.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t69.
    CREATE OBJECT t69.
    t68 = t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA(t71) = t62.
    DATA(t72) = t65.
    DATA(t73) = t68.
    t70 = zcl_lnt_st_combi_module=>alt_prio( i_first = t71 i_second = t72 i_rest = t73 ).
    t61 = t70.
    CLEAR t60.
    IF t61 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t74.
      DATA t75 TYPE REF TO object.
      CLEAR t75.
      CLEAR t74.
      t75 = t61.
      TRY.
          t60 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t74 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t60 = t74->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    t59 = t60.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    CLEAR t80.
    IF t81 IS BOUND.
      CREATE OBJECT t80.
      t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t80->cval = t81.
    ENDIF.
    t79 = t80.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA(t84) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t83.
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t83->cval = t84.
    ENDIF.
    t82 = t83.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t86.
    CREATE OBJECT t86.
    t85 = t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA(t88) = t79.
    DATA(t89) = t82.
    DATA(t90) = t85.
    t87 = zcl_lnt_st_combi_module=>alt_prio( i_first = t88 i_second = t89 i_rest = t90 ).
    t78 = t87.
    CLEAR t77.
    IF t78 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t91.
      DATA t92 TYPE REF TO object.
      CLEAR t92.
      CLEAR t91.
      t92 = t78.
      TRY.
          t77 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t77 IS NOT BOUND.
        TRY.
            t91 ?= t78.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t77 = t91->source( ).
        ENDIF.
        IF t77 IS NOT BOUND.
          CREATE OBJECT t77.
          t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t77->oval = t78.
        ENDIF.
      ENDIF.
    ENDIF.
    t76 = t77.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t94.
    CREATE OBJECT t94.
    t93 = t94.
    DATA(t95) = t93.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = zlnt_runtime_desc_78196487750d=>zlnt_member_d103_04a0f92dd4f1.
    CLEAR t98.
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t98->cval = t99.
    ENDIF.
    t97 = zcl_lnt_st_combi_module=>opt_prio( i_first = t98 ).
    CLEAR t96.
    IF t97 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t100.
      DATA t101 TYPE REF TO object.
      CLEAR t101.
      CLEAR t100.
      t101 = t97.
      TRY.
          t96 ?= t101.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t96 IS NOT BOUND.
        TRY.
            t100 ?= t97.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t96 = t100->source( ).
        ENDIF.
        IF t96 IS NOT BOUND.
          CREATE OBJECT t96.
          t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t96->oval = t97.
        ENDIF.
      ENDIF.
    ENDIF.
    t95->load( ).
    APPEND t96 TO t95->items.
    t95->save( ).
    DATA(t102) = t93.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
    CLEAR t105.
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t105->cval = t106.
    ENDIF.
    t104 = zcl_lnt_st_combi_module=>opt_prio( i_first = t105 ).
    CLEAR t103.
    IF t104 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t107.
      DATA t108 TYPE REF TO object.
      CLEAR t108.
      CLEAR t107.
      t108 = t104.
      TRY.
          t103 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t107 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t103 = t107->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    t102->load( ).
    APPEND t103 TO t102->items.
    t102->save( ).
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA(t110) = t59.
    DATA(t111) = t76.
    DATA(t112) = t93.
    t109 = zcl_lnt_st_combi_module=>seq( i_first = t110 i_second = t111 i_rest = t112 ).
    t58 = t109.
    t57 = t58.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = |MEMORY ID|.
    CLEAR t116.
    CREATE OBJECT t116.
    t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t116->sval = t117.
    t115 = t116.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA(t120) = zlnt_runtime_desc_78196487750d=>zlnt_member_d248_d62fd91017f7.
    CLEAR t119.
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t119->cval = t120.
    ENDIF.
    t118 = t119.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t122.
    CREATE OBJECT t122.
    t121 = t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA(t124) = t115.
    DATA(t125) = t118.
    DATA(t126) = t121.
    t123 = zcl_lnt_st_combi_module=>seq( i_first = t124 i_second = t125 i_rest = t126 ).
    t114 = t123.
    t113 = t114.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
    DATA(t129) = |AS LISTBOX|.
    t128 = zcl_lnt_st_combi_module=>str( i_s = t129 ).
    t127 = t128.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA(t134) = |USER-COMMAND|.
    CLEAR t133.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = t134.
    t132 = t133.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t138.
    DATA(t139) = `^[\w\?\/]+$`.
    DATA(t140) = `^[A-Za-z0-9_\?\/]+$`.
    DATA(t141) = ||.
    CREATE OBJECT t138 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t140 flags = t141.
    t138->source = t139.
    t137 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t138 ).
    CLEAR t136.
    IF t137 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t142.
      DATA t143 TYPE REF TO object.
      CLEAR t143.
      CLEAR t142.
      t143 = t137.
      TRY.
          t136 ?= t143.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t136 IS NOT BOUND.
        TRY.
            t142 ?= t137.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t136 = t142->source( ).
        ENDIF.
        IF t136 IS NOT BOUND.
          CREATE OBJECT t136.
          t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t136->oval = t137.
        ENDIF.
      ENDIF.
    ENDIF.
    t135 = t136.
    DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t145.
    CREATE OBJECT t145.
    t144 = t145.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t146.
    DATA(t147) = t132.
    DATA(t148) = t135.
    DATA(t149) = t144.
    t146 = zcl_lnt_st_combi_module=>seq( i_first = t147 i_second = t148 i_rest = t149 ).
    t131 = t146.
    t130 = t131.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t150.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA(t154) = |MODIF ID|.
    CLEAR t153.
    CREATE OBJECT t153.
    t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t153->sval = t154.
    t152 = t153.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA(t157) = zlnt_runtime_desc_78196487750d=>zlnt_member_d238_a05d3ab5e106.
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
    DATA(t161) = t152.
    DATA(t162) = t155.
    DATA(t163) = t158.
    t160 = zcl_lnt_st_combi_module=>seq( i_first = t161 i_second = t162 i_rest = t163 ).
    t151 = t160.
    t150 = t151.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA(t168) = |VISIBLE LENGTH|.
    CLEAR t167.
    CREATE OBJECT t167.
    t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t167->sval = t168.
    t166 = t167.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA(t171) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    CLEAR t170.
    IF t171 IS BOUND.
      CREATE OBJECT t170.
      t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t170->cval = t171.
    ENDIF.
    t169 = t170.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t173.
    CREATE OBJECT t173.
    t172 = t173.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA(t175) = t166.
    DATA(t176) = t169.
    DATA(t177) = t172.
    t174 = zcl_lnt_st_combi_module=>seq( i_first = t175 i_second = t176 i_rest = t177 ).
    t165 = t174.
    t164 = t165.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t178.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA(t182) = |LENGTH|.
    CLEAR t181.
    CREATE OBJECT t181.
    t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t181->sval = t182.
    t180 = t181.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA(t185) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    CLEAR t184.
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t184->cval = t185.
    ENDIF.
    t183 = t184.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t187.
    CREATE OBJECT t187.
    t186 = t187.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t188.
    DATA(t189) = t180.
    DATA(t190) = t183.
    DATA(t191) = t186.
    t188 = zcl_lnt_st_combi_module=>seq( i_first = t189 i_second = t190 i_rest = t191 ).
    t179 = t188.
    t178 = t179.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA(t196) = |MATCHCODE OBJECT|.
    CLEAR t195.
    CREATE OBJECT t195.
    t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t195->sval = t196.
    t194 = t195.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA(t199) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    CLEAR t198.
    IF t199 IS BOUND.
      CREATE OBJECT t198.
      t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t198->cval = t199.
    ENDIF.
    t197 = t198.
    DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t201.
    CREATE OBJECT t201.
    t200 = t201.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t202.
    DATA(t203) = t194.
    DATA(t204) = t197.
    DATA(t205) = t200.
    t202 = zcl_lnt_st_combi_module=>seq( i_first = t203 i_second = t204 i_rest = t205 ).
    t193 = t202.
    t192 = t193.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA(t210) = |DECIMALS|.
    CLEAR t209.
    CREATE OBJECT t209.
    t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t209->sval = t210.
    t208 = t209.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA(t213) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t212.
    IF t213 IS BOUND.
      CREATE OBJECT t212.
      t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t212->cval = t213.
    ENDIF.
    t211 = t212.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t215.
    CREATE OBJECT t215.
    t214 = t215.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA(t217) = t208.
    DATA(t218) = t211.
    DATA(t219) = t214.
    t216 = zcl_lnt_st_combi_module=>seq( i_first = t217 i_second = t218 i_rest = t219 ).
    t207 = t216.
    t206 = t207.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA(t224) = |FOR TABLE|.
    CLEAR t223.
    CREATE OBJECT t223.
    t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t223->sval = t224.
    t222 = t223.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA(t227) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    CLEAR t226.
    IF t227 IS BOUND.
      CREATE OBJECT t226.
      t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t226->cval = t227.
    ENDIF.
    t225 = t226.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t228.
    DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t229.
    CREATE OBJECT t229.
    t228 = t229.
    DATA(t230) = t228.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA(t234) = |VALUE-REQUEST|.
    CLEAR t233.
    CREATE OBJECT t233.
    t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t233->sval = t234.
    t232 = zcl_lnt_st_combi_module=>opt( i_first = t233 ).
    CLEAR t231.
    IF t232 IS BOUND.
      DATA t235 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t235.
      DATA t236 TYPE REF TO object.
      CLEAR t236.
      CLEAR t235.
      t236 = t232.
      TRY.
          t231 ?= t236.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t231 IS NOT BOUND.
        TRY.
            t235 ?= t232.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t235 IS BOUND.
          t231 = t235->source( ).
        ENDIF.
        IF t231 IS NOT BOUND.
          CREATE OBJECT t231.
          t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t231->oval = t232.
        ENDIF.
      ENDIF.
    ENDIF.
    t230->load( ).
    APPEND t231 TO t230->items.
    t230->save( ).
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t237.
    DATA(t238) = t222.
    DATA(t239) = t225.
    DATA(t240) = t228.
    t237 = zcl_lnt_st_combi_module=>seq( i_first = t238 i_second = t239 i_rest = t240 ).
    t221 = t237.
    t220 = t221.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t241.
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = t57.
    CLEAR t244.
    IF t245 IS BOUND.
      DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t246.
      DATA t247 TYPE REF TO object.
      CLEAR t247.
      CLEAR t246.
      t247 = t245.
      TRY.
          t244 ?= t247.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t244 IS NOT BOUND.
        TRY.
            t246 ?= t245.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t246 IS BOUND.
          t244 = t246->source( ).
        ENDIF.
        IF t244 IS NOT BOUND.
          CREATE OBJECT t244.
          t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t244->oval = t245.
        ENDIF.
      ENDIF.
    ENDIF.
    t243 = t244.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA(t250) = t15.
    CLEAR t249.
    IF t250 IS BOUND.
      DATA t251 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t251.
      DATA t252 TYPE REF TO object.
      CLEAR t252.
      CLEAR t251.
      t252 = t250.
      TRY.
          t249 ?= t252.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t251 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t251 IS BOUND.
          t249 = t251->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    t248 = t249.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t254.
    CREATE OBJECT t254.
    t253 = t254.
    DATA(t255) = t253.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA(t257) = |OBLIGATORY|.
    CLEAR t256.
    CREATE OBJECT t256.
    t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t256->sval = t257.
    t255->load( ).
    APPEND t256 TO t255->items.
    t255->save( ).
    DATA(t258) = t253.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    DATA(t260) = t192.
    CLEAR t259.
    IF t260 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t261.
      DATA t262 TYPE REF TO object.
      CLEAR t262.
      CLEAR t261.
      t262 = t260.
      TRY.
          t259 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t259 IS NOT BOUND.
        TRY.
            t261 ?= t260.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t259 = t261->source( ).
        ENDIF.
        IF t259 IS NOT BOUND.
          CREATE OBJECT t259.
          t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t259->oval = t260.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t259 TO t258->items.
    t258->save( ).
    DATA(t263) = t253.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    DATA(t265) = t130.
    CLEAR t264.
    IF t265 IS BOUND.
      DATA t266 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t266.
      DATA t267 TYPE REF TO object.
      CLEAR t267.
      CLEAR t266.
      t267 = t265.
      TRY.
          t264 ?= t267.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t264 IS NOT BOUND.
        TRY.
            t266 ?= t265.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS BOUND.
          t264 = t266->source( ).
        ENDIF.
        IF t264 IS NOT BOUND.
          CREATE OBJECT t264.
          t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t264->oval = t265.
        ENDIF.
      ENDIF.
    ENDIF.
    t263->load( ).
    APPEND t264 TO t263->items.
    t263->save( ).
    DATA(t268) = t253.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA(t270) = t178.
    CLEAR t269.
    IF t270 IS BOUND.
      DATA t271 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t271.
      DATA t272 TYPE REF TO object.
      CLEAR t272.
      CLEAR t271.
      t272 = t270.
      TRY.
          t269 ?= t272.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t269 IS NOT BOUND.
        TRY.
            t271 ?= t270.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t271 IS BOUND.
          t269 = t271->source( ).
        ENDIF.
        IF t269 IS NOT BOUND.
          CREATE OBJECT t269.
          t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t269->oval = t270.
        ENDIF.
      ENDIF.
    ENDIF.
    t268->load( ).
    APPEND t269 TO t268->items.
    t268->save( ).
    DATA(t273) = t253.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA(t275) = t206.
    CLEAR t274.
    IF t275 IS BOUND.
      DATA t276 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t276.
      DATA t277 TYPE REF TO object.
      CLEAR t277.
      CLEAR t276.
      t277 = t275.
      TRY.
          t274 ?= t277.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t274 IS NOT BOUND.
        TRY.
            t276 ?= t275.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t276 IS BOUND.
          t274 = t276->source( ).
        ENDIF.
        IF t274 IS NOT BOUND.
          CREATE OBJECT t274.
          t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t274->oval = t275.
        ENDIF.
      ENDIF.
    ENDIF.
    t273->load( ).
    APPEND t274 TO t273->items.
    t273->save( ).
    DATA(t278) = t253.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    DATA(t280) = t43.
    CLEAR t279.
    IF t280 IS BOUND.
      DATA t281 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t281.
      DATA t282 TYPE REF TO object.
      CLEAR t282.
      CLEAR t281.
      t282 = t280.
      TRY.
          t279 ?= t282.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t279 IS NOT BOUND.
        TRY.
            t281 ?= t280.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t281 IS BOUND.
          t279 = t281->source( ).
        ENDIF.
        IF t279 IS NOT BOUND.
          CREATE OBJECT t279.
          t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t279->oval = t280.
        ENDIF.
      ENDIF.
    ENDIF.
    t278->load( ).
    APPEND t279 TO t278->items.
    t278->save( ).
    DATA(t283) = t253.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    DATA(t285) = t113.
    CLEAR t284.
    IF t285 IS BOUND.
      DATA t286 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t286.
      DATA t287 TYPE REF TO object.
      CLEAR t287.
      CLEAR t286.
      t287 = t285.
      TRY.
          t284 ?= t287.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t284 IS NOT BOUND.
        TRY.
            t286 ?= t285.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t286 IS BOUND.
          t284 = t286->source( ).
        ENDIF.
        IF t284 IS NOT BOUND.
          CREATE OBJECT t284.
          t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t284->oval = t285.
        ENDIF.
      ENDIF.
    ENDIF.
    t283->load( ).
    APPEND t284 TO t283->items.
    t283->save( ).
    DATA(t288) = t253.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA(t290) = t150.
    CLEAR t289.
    IF t290 IS BOUND.
      DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t291.
      DATA t292 TYPE REF TO object.
      CLEAR t292.
      CLEAR t291.
      t292 = t290.
      TRY.
          t289 ?= t292.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t289 IS NOT BOUND.
        TRY.
            t291 ?= t290.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t291 IS BOUND.
          t289 = t291->source( ).
        ENDIF.
        IF t289 IS NOT BOUND.
          CREATE OBJECT t289.
          t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t289->oval = t290.
        ENDIF.
      ENDIF.
    ENDIF.
    t288->load( ).
    APPEND t289 TO t288->items.
    t288->save( ).
    DATA(t293) = t253.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t294.
    DATA(t295) = t127.
    CLEAR t294.
    IF t295 IS BOUND.
      DATA t296 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t296.
      DATA t297 TYPE REF TO object.
      CLEAR t297.
      CLEAR t296.
      t297 = t295.
      TRY.
          t294 ?= t297.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t294 IS NOT BOUND.
        TRY.
            t296 ?= t295.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t296 IS BOUND.
          t294 = t296->source( ).
        ENDIF.
        IF t294 IS NOT BOUND.
          CREATE OBJECT t294.
          t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t294->oval = t295.
        ENDIF.
      ENDIF.
    ENDIF.
    t293->load( ).
    APPEND t294 TO t293->items.
    t293->save( ).
    DATA(t298) = t253.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA(t300) = t164.
    CLEAR t299.
    IF t300 IS BOUND.
      DATA t301 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t301.
      DATA t302 TYPE REF TO object.
      CLEAR t302.
      CLEAR t301.
      t302 = t300.
      TRY.
          t299 ?= t302.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t299 IS NOT BOUND.
        TRY.
            t301 ?= t300.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t301 IS BOUND.
          t299 = t301->source( ).
        ENDIF.
        IF t299 IS NOT BOUND.
          CREATE OBJECT t299.
          t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t299->oval = t300.
        ENDIF.
      ENDIF.
    ENDIF.
    t298->load( ).
    APPEND t299 TO t298->items.
    t298->save( ).
    DATA(t303) = t253.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA(t305) = t220.
    CLEAR t304.
    IF t305 IS BOUND.
      DATA t306 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t306.
      DATA t307 TYPE REF TO object.
      CLEAR t307.
      CLEAR t306.
      t307 = t305.
      TRY.
          t304 ?= t307.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t304 IS NOT BOUND.
        TRY.
            t306 ?= t305.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t306 IS BOUND.
          t304 = t306->source( ).
        ENDIF.
        IF t304 IS NOT BOUND.
          CREATE OBJECT t304.
          t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t304->oval = t305.
        ENDIF.
      ENDIF.
    ENDIF.
    t303->load( ).
    APPEND t304 TO t303->items.
    t303->save( ).
    DATA(t308) = t253.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA(t310) = |VALUE CHECK|.
    CLEAR t309.
    CREATE OBJECT t309.
    t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t309->sval = t310.
    t308->load( ).
    APPEND t309 TO t308->items.
    t308->save( ).
    DATA(t311) = t253.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA(t313) = |NO-DISPLAY|.
    CLEAR t312.
    CREATE OBJECT t312.
    t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t312->sval = t313.
    t311->load( ).
    APPEND t312 TO t311->items.
    t311->save( ).
    DATA(t314) = t253.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA(t316) = |AS CHECKBOX|.
    CLEAR t315.
    CREATE OBJECT t315.
    t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t315->sval = t316.
    t314->load( ).
    APPEND t315 TO t314->items.
    t314->save( ).
    DATA(t317) = t253.
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t318.
    DATA(t319) = |LOWER CASE|.
    CLEAR t318.
    CREATE OBJECT t318.
    t318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t318->sval = t319.
    t317->load( ).
    APPEND t318 TO t317->items.
    t317->save( ).
    DATA t320 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t320.
    DATA(t321) = t243.
    DATA(t322) = t248.
    DATA(t323) = t253.
    t320 = zcl_lnt_st_combi_module=>per( i_first = t321 i_second = t322 i_rest = t323 ).
    t242 = t320.
    t241 = t242.
    DATA t324 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t324.
    DATA t325 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t325.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t326.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t327.
    DATA(t328) = t1.
    CLEAR t327.
    IF t328 IS BOUND.
      DATA t329 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t329.
      DATA t330 TYPE REF TO object.
      CLEAR t330.
      CLEAR t329.
      t330 = t328.
      TRY.
          t327 ?= t330.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t327 IS NOT BOUND.
        TRY.
            t329 ?= t328.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t329 IS BOUND.
          t327 = t329->source( ).
        ENDIF.
        IF t327 IS NOT BOUND.
          CREATE OBJECT t327.
          t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t327->oval = t328.
        ENDIF.
      ENDIF.
    ENDIF.
    t326 = t327.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t331.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA(t333) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    CLEAR t332.
    IF t333 IS BOUND.
      CREATE OBJECT t332.
      t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t332->cval = t333.
    ENDIF.
    t331 = t332.
    DATA t334 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t335.
    CREATE OBJECT t335.
    t334 = t335.
    DATA(t336) = t334.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA t338 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    DATA(t340) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
    CLEAR t339.
    IF t340 IS BOUND.
      CREATE OBJECT t339.
      t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t339->cval = t340.
    ENDIF.
    t338 = zcl_lnt_st_combi_module=>opt( i_first = t339 ).
    CLEAR t337.
    IF t338 IS BOUND.
      DATA t341 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t341.
      DATA t342 TYPE REF TO object.
      CLEAR t342.
      CLEAR t341.
      t342 = t338.
      TRY.
          t337 ?= t342.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t337 IS NOT BOUND.
        TRY.
            t341 ?= t338.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t341 IS BOUND.
          t337 = t341->source( ).
        ENDIF.
        IF t337 IS NOT BOUND.
          CREATE OBJECT t337.
          t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t337->oval = t338.
        ENDIF.
      ENDIF.
    ENDIF.
    t336->load( ).
    APPEND t337 TO t336->items.
    t336->save( ).
    DATA(t343) = t334.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA t345 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t345.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t346.
    DATA(t347) = t241.
    CLEAR t346.
    IF t347 IS BOUND.
      DATA t348 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t348.
      DATA t349 TYPE REF TO object.
      CLEAR t349.
      CLEAR t348.
      t349 = t347.
      TRY.
          t346 ?= t349.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t346 IS NOT BOUND.
        TRY.
            t348 ?= t347.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t348 IS BOUND.
          t346 = t348->source( ).
        ENDIF.
        IF t346 IS NOT BOUND.
          CREATE OBJECT t346.
          t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t346->oval = t347.
        ENDIF.
      ENDIF.
    ENDIF.
    t345 = zcl_lnt_st_combi_module=>opt( i_first = t346 ).
    CLEAR t344.
    IF t345 IS BOUND.
      DATA t350 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t350.
      DATA t351 TYPE REF TO object.
      CLEAR t351.
      CLEAR t350.
      t351 = t345.
      TRY.
          t344 ?= t351.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t344 IS NOT BOUND.
        TRY.
            t350 ?= t345.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t350 IS BOUND.
          t344 = t350->source( ).
        ENDIF.
        IF t344 IS NOT BOUND.
          CREATE OBJECT t344.
          t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t344->oval = t345.
        ENDIF.
      ENDIF.
    ENDIF.
    t343->load( ).
    APPEND t344 TO t343->items.
    t343->save( ).
    DATA t352 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t352.
    DATA(t353) = t326.
    DATA(t354) = t331.
    DATA(t355) = t334.
    t352 = zcl_lnt_st_combi_module=>seq( i_first = t353 i_second = t354 i_rest = t355 ).
    t325 = t352.
    t324 = t325.
    DATA t356 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t356.
    DATA(t357) = |Cloud|.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t358.
    DATA(t359) = t324.
    CLEAR t358.
    IF t359 IS BOUND.
      DATA t360 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t360.
      DATA t361 TYPE REF TO object.
      CLEAR t361.
      CLEAR t360.
      t361 = t359.
      TRY.
          t358 ?= t361.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t358 IS NOT BOUND.
        TRY.
            t360 ?= t359.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t360 IS BOUND.
          t358 = t360->source( ).
        ENDIF.
        IF t358 IS NOT BOUND.
          CREATE OBJECT t358.
          t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t358->oval = t359.
        ENDIF.
      ENDIF.
    ENDIF.
    t356 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t357 i_first = t358 ).
    result = t356.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d572_46882accee86.
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
