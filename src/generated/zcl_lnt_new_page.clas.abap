* TS: src/abap/2_statements/statements/new_page.ts:7:1 NewPage
CLASS zcl_lnt_new_page DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_new_page IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |LINE-SIZE|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t7.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
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
    t11 = zcl_lnt_st_combi_module=>seq( i_first = t12 i_second = t13 i_rest = t14 ).
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
    DATA(t19) = |PRINT|.
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
    DATA(t25) = |OFF|.
    CLEAR t24.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = t25.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = |ON|.
    CLEAR t27.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = t28.
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
    t31 = zcl_lnt_st_combi_module=>alt( i_first = t32 i_second = t33 i_rest = t34 ).
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
    DATA(t47) = |PARAMETERS|.
    CLEAR t46.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    DATA(t61) = |DESTINATION|.
    CLEAR t60.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = t61.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t63.
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    t62 = t63.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t66.
    CREATE OBJECT t66.
    t65 = t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA(t68) = t59.
    DATA(t69) = t62.
    DATA(t70) = t65.
    t67 = zcl_lnt_st_combi_module=>seq( i_first = t68 i_second = t69 i_rest = t70 ).
    t58 = t67.
    t57 = t58.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = |ARCHIVE PARAMETERS|.
    CLEAR t74.
    CREATE OBJECT t74.
    t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t74->sval = t75.
    t73 = t74.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t77.
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t77->cval = t78.
    ENDIF.
    t76 = t77.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t80.
    CREATE OBJECT t80.
    t79 = t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA(t82) = t73.
    DATA(t83) = t76.
    DATA(t84) = t79.
    t81 = zcl_lnt_st_combi_module=>seq( i_first = t82 i_second = t83 i_rest = t84 ).
    t72 = t81.
    t71 = t72.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA(t89) = |LINE-COUNT|.
    CLEAR t88.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = t89.
    t87 = t88.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t91.
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t91->cval = t92.
    ENDIF.
    t90 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t94.
    CREATE OBJECT t94.
    t93 = t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA(t96) = t87.
    DATA(t97) = t90.
    DATA(t98) = t93.
    t95 = zcl_lnt_st_combi_module=>seq( i_first = t96 i_second = t97 i_rest = t98 ).
    t86 = t95.
    t85 = t86.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = |COVER TEXT|.
    CLEAR t102.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = t103.
    t101 = t102.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t105.
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t105->cval = t106.
    ENDIF.
    t104 = t105.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t108.
    CREATE OBJECT t108.
    t107 = t108.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA(t110) = t101.
    DATA(t111) = t104.
    DATA(t112) = t107.
    t109 = zcl_lnt_st_combi_module=>seq( i_first = t110 i_second = t111 i_rest = t112 ).
    t100 = t109.
    t99 = t100.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = |SAP COVER PAGE|.
    CLEAR t116.
    CREATE OBJECT t116.
    t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t116->sval = t117.
    t115 = t116.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA(t120) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA(t131) = |IMMEDIATELY|.
    CLEAR t130.
    CREATE OBJECT t130.
    t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t130->sval = t131.
    t129 = t130.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t133.
    IF t134 IS BOUND.
      CREATE OBJECT t133.
      t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t133->cval = t134.
    ENDIF.
    t132 = t133.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t136.
    CREATE OBJECT t136.
    t135 = t136.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA(t138) = t129.
    DATA(t139) = t132.
    DATA(t140) = t135.
    t137 = zcl_lnt_st_combi_module=>seq( i_first = t138 i_second = t139 i_rest = t140 ).
    t128 = t137.
    t127 = t128.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA(t145) = |COPIES|.
    CLEAR t144.
    CREATE OBJECT t144.
    t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t144->sval = t145.
    t143 = t144.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA(t148) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t147.
    IF t148 IS BOUND.
      CREATE OBJECT t147.
      t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t147->cval = t148.
    ENDIF.
    t146 = t147.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t150.
    CREATE OBJECT t150.
    t149 = t150.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t151.
    DATA(t152) = t143.
    DATA(t153) = t146.
    DATA(t154) = t149.
    t151 = zcl_lnt_st_combi_module=>seq( i_first = t152 i_second = t153 i_rest = t154 ).
    t142 = t151.
    t141 = t142.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA(t159) = |KEEP IN SPOOL|.
    CLEAR t158.
    CREATE OBJECT t158.
    t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t158->sval = t159.
    t157 = t158.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA(t162) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t161.
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t161->cval = t162.
    ENDIF.
    t160 = t161.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t164.
    CREATE OBJECT t164.
    t163 = t164.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA(t166) = t157.
    DATA(t167) = t160.
    DATA(t168) = t163.
    t165 = zcl_lnt_st_combi_module=>seq( i_first = t166 i_second = t167 i_rest = t168 ).
    t156 = t165.
    t155 = t156.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA(t173) = |LAYOUT|.
    CLEAR t172.
    CREATE OBJECT t172.
    t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t172->sval = t173.
    t171 = t172.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA(t176) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t175.
    IF t176 IS BOUND.
      CREATE OBJECT t175.
      t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t175->cval = t176.
    ENDIF.
    t174 = t175.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t178.
    CREATE OBJECT t178.
    t177 = t178.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t179.
    DATA(t180) = t171.
    DATA(t181) = t174.
    DATA(t182) = t177.
    t179 = zcl_lnt_st_combi_module=>seq( i_first = t180 i_second = t181 i_rest = t182 ).
    t170 = t179.
    t169 = t170.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA(t187) = |LIST AUTHORITY|.
    CLEAR t186.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = t187.
    t185 = t186.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA(t190) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t189.
    IF t190 IS BOUND.
      CREATE OBJECT t189.
      t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t189->cval = t190.
    ENDIF.
    t188 = t189.
    DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t192.
    CREATE OBJECT t192.
    t191 = t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA(t194) = t185.
    DATA(t195) = t188.
    DATA(t196) = t191.
    t193 = zcl_lnt_st_combi_module=>seq( i_first = t194 i_second = t195 i_rest = t196 ).
    t184 = t193.
    t183 = t184.
    DATA t197 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA(t201) = |DEPARTMENT|.
    CLEAR t200.
    CREATE OBJECT t200.
    t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t200->sval = t201.
    t199 = t200.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA(t204) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t203.
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t203->cval = t204.
    ENDIF.
    t202 = t203.
    DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t206.
    CREATE OBJECT t206.
    t205 = t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA(t208) = t199.
    DATA(t209) = t202.
    DATA(t210) = t205.
    t207 = zcl_lnt_st_combi_module=>seq( i_first = t208 i_second = t209 i_rest = t210 ).
    t198 = t207.
    t197 = t198.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t211.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA(t215) = |RECEIVER|.
    CLEAR t214.
    CREATE OBJECT t214.
    t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t214->sval = t215.
    t213 = t214.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA(t218) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t217.
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t217->cval = t218.
    ENDIF.
    t216 = t217.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t220.
    CREATE OBJECT t220.
    t219 = t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA(t222) = t213.
    DATA(t223) = t216.
    DATA(t224) = t219.
    t221 = zcl_lnt_st_combi_module=>seq( i_first = t222 i_second = t223 i_rest = t224 ).
    t212 = t221.
    t211 = t212.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t225.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA(t229) = |LIST DATASET|.
    CLEAR t228.
    CREATE OBJECT t228.
    t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t228->sval = t229.
    t227 = t228.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA(t232) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t231.
    IF t232 IS BOUND.
      CREATE OBJECT t231.
      t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t231->cval = t232.
    ENDIF.
    t230 = t231.
    DATA t233 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t234.
    CREATE OBJECT t234.
    t233 = t234.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t235.
    DATA(t236) = t227.
    DATA(t237) = t230.
    DATA(t238) = t233.
    t235 = zcl_lnt_st_combi_module=>seq( i_first = t236 i_second = t237 i_rest = t238 ).
    t226 = t235.
    t225 = t226.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t239.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    DATA(t243) = |LIST NAME|.
    CLEAR t242.
    CREATE OBJECT t242.
    t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t242->sval = t243.
    t241 = t242.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA(t246) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t245.
    IF t246 IS BOUND.
      CREATE OBJECT t245.
      t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t245->cval = t246.
    ENDIF.
    t244 = t245.
    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t248.
    CREATE OBJECT t248.
    t247 = t248.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t249.
    DATA(t250) = t241.
    DATA(t251) = t244.
    DATA(t252) = t247.
    t249 = zcl_lnt_st_combi_module=>seq( i_first = t250 i_second = t251 i_rest = t252 ).
    t240 = t249.
    t239 = t240.
    DATA t253 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t253.
    DATA t254 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t254.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA(t257) = |NEW LIST IDENTIFICATION|.
    CLEAR t256.
    CREATE OBJECT t256.
    t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t256->sval = t257.
    t255 = t256.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    DATA(t260) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t259.
    IF t260 IS BOUND.
      CREATE OBJECT t259.
      t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t259->cval = t260.
    ENDIF.
    t258 = t259.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t261.
    DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t262.
    CREATE OBJECT t262.
    t261 = t262.
    DATA t263 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t263.
    DATA(t264) = t255.
    DATA(t265) = t258.
    DATA(t266) = t261.
    t263 = zcl_lnt_st_combi_module=>seq( i_first = t264 i_second = t265 i_rest = t266 ).
    t254 = t263.
    t253 = t254.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t267.
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t268.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA(t271) = |NEW-PAGE|.
    CLEAR t270.
    CREATE OBJECT t270.
    t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t270->sval = t271.
    t269 = t270.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t276.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t278.
    DATA(t279) = t15.
    CLEAR t278.
    IF t279 IS BOUND.
      DATA t280 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t280.
      DATA t281 TYPE REF TO object.
      CLEAR t281.
      CLEAR t280.
      t281 = t279.
      TRY.
          t278 ?= t281.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t278 IS NOT BOUND.
        TRY.
            t280 ?= t279.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t280 IS BOUND.
          t278 = t280->source( ).
        ENDIF.
        IF t278 IS NOT BOUND.
          CREATE OBJECT t278.
          t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t278->oval = t279.
        ENDIF.
      ENDIF.
    ENDIF.
    t277 = t278.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t284.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA(t287) = |NO-TITLE|.
    CLEAR t286.
    CREATE OBJECT t286.
    t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t286->sval = t287.
    t285 = t286.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t288.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA(t290) = |WITH-TITLE|.
    CLEAR t289.
    CREATE OBJECT t289.
    t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t289->sval = t290.
    t288 = t289.
    DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t291.
    DATA t292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t292.
    CREATE OBJECT t292.
    t291 = t292.
    DATA t293 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t293.
    DATA(t294) = t285.
    DATA(t295) = t288.
    DATA(t296) = t291.
    t293 = zcl_lnt_st_combi_module=>alt( i_first = t294 i_second = t295 i_rest = t296 ).
    t284 = t293.
    CLEAR t283.
    IF t284 IS BOUND.
      DATA t297 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t297.
      DATA t298 TYPE REF TO object.
      CLEAR t298.
      CLEAR t297.
      t298 = t284.
      TRY.
          t283 ?= t298.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t283 IS NOT BOUND.
        TRY.
            t297 ?= t284.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t297 IS BOUND.
          t283 = t297->source( ).
        ENDIF.
        IF t283 IS NOT BOUND.
          CREATE OBJECT t283.
          t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t283->oval = t284.
        ENDIF.
      ENDIF.
    ENDIF.
    t282 = t283.
    DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t299.
    DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t300.
    CREATE OBJECT t300.
    t299 = t300.
    DATA(t301) = t299.
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t302.
    DATA t303 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t303.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA(t306) = |NO-HEADING|.
    CLEAR t305.
    CREATE OBJECT t305.
    t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t305->sval = t306.
    t304 = t305.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA(t309) = |WITH-HEADING|.
    CLEAR t308.
    CREATE OBJECT t308.
    t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t308->sval = t309.
    t307 = t308.
    DATA t310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t310.
    DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t311.
    CREATE OBJECT t311.
    t310 = t311.
    DATA t312 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t312.
    DATA(t313) = t304.
    DATA(t314) = t307.
    DATA(t315) = t310.
    t312 = zcl_lnt_st_combi_module=>alt( i_first = t313 i_second = t314 i_rest = t315 ).
    t303 = t312.
    CLEAR t302.
    IF t303 IS BOUND.
      DATA t316 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t316.
      DATA t317 TYPE REF TO object.
      CLEAR t317.
      CLEAR t316.
      t317 = t303.
      TRY.
          t302 ?= t317.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t302 IS NOT BOUND.
        TRY.
            t316 ?= t303.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t316 IS BOUND.
          t302 = t316->source( ).
        ENDIF.
        IF t302 IS NOT BOUND.
          CREATE OBJECT t302.
          t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t302->oval = t303.
        ENDIF.
      ENDIF.
    ENDIF.
    t301->load( ).
    APPEND t302 TO t301->items.
    t301->save( ).
    DATA(t318) = t299.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t319.
    DATA(t320) = |NO DIALOG|.
    CLEAR t319.
    CREATE OBJECT t319.
    t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t319->sval = t320.
    t318->load( ).
    APPEND t319 TO t318->items.
    t318->save( ).
    DATA(t321) = t299.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA(t323) = |NO-TOPOFPAGE|.
    CLEAR t322.
    CREATE OBJECT t322.
    t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t322->sval = t323.
    t321->load( ).
    APPEND t322 TO t321->items.
    t321->save( ).
    DATA(t324) = t299.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA(t326) = t43.
    CLEAR t325.
    IF t326 IS BOUND.
      DATA t327 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t327.
      DATA t328 TYPE REF TO object.
      CLEAR t328.
      CLEAR t327.
      t328 = t326.
      TRY.
          t325 ?= t328.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t325 IS NOT BOUND.
        TRY.
            t327 ?= t326.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t327 IS BOUND.
          t325 = t327->source( ).
        ENDIF.
        IF t325 IS NOT BOUND.
          CREATE OBJECT t325.
          t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t325->oval = t326.
        ENDIF.
      ENDIF.
    ENDIF.
    t324->load( ).
    APPEND t325 TO t324->items.
    t324->save( ).
    DATA(t329) = t299.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    DATA(t331) = t183.
    CLEAR t330.
    IF t331 IS BOUND.
      DATA t332 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t332.
      DATA t333 TYPE REF TO object.
      CLEAR t333.
      CLEAR t332.
      t333 = t331.
      TRY.
          t330 ?= t333.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t330 IS NOT BOUND.
        TRY.
            t332 ?= t331.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t332 IS BOUND.
          t330 = t332->source( ).
        ENDIF.
        IF t330 IS NOT BOUND.
          CREATE OBJECT t330.
          t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t330->oval = t331.
        ENDIF.
      ENDIF.
    ENDIF.
    t329->load( ).
    APPEND t330 TO t329->items.
    t329->save( ).
    DATA(t334) = t299.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA(t336) = t127.
    CLEAR t335.
    IF t336 IS BOUND.
      DATA t337 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t337.
      DATA t338 TYPE REF TO object.
      CLEAR t338.
      CLEAR t337.
      t338 = t336.
      TRY.
          t335 ?= t338.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t335 IS NOT BOUND.
        TRY.
            t337 ?= t336.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t337 IS BOUND.
          t335 = t337->source( ).
        ENDIF.
        IF t335 IS NOT BOUND.
          CREATE OBJECT t335.
          t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t335->oval = t336.
        ENDIF.
      ENDIF.
    ENDIF.
    t334->load( ).
    APPEND t335 TO t334->items.
    t334->save( ).
    DATA(t339) = t299.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA(t341) = t225.
    CLEAR t340.
    IF t341 IS BOUND.
      DATA t342 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t342.
      DATA t343 TYPE REF TO object.
      CLEAR t343.
      CLEAR t342.
      t343 = t341.
      TRY.
          t340 ?= t343.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t340 IS NOT BOUND.
        TRY.
            t342 ?= t341.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t342 IS BOUND.
          t340 = t342->source( ).
        ENDIF.
        IF t340 IS NOT BOUND.
          CREATE OBJECT t340.
          t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t340->oval = t341.
        ENDIF.
      ENDIF.
    ENDIF.
    t339->load( ).
    APPEND t340 TO t339->items.
    t339->save( ).
    DATA(t344) = t299.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    DATA(t346) = t113.
    CLEAR t345.
    IF t346 IS BOUND.
      DATA t347 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t347.
      DATA t348 TYPE REF TO object.
      CLEAR t348.
      CLEAR t347.
      t348 = t346.
      TRY.
          t345 ?= t348.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t345 IS NOT BOUND.
        TRY.
            t347 ?= t346.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t347 IS BOUND.
          t345 = t347->source( ).
        ENDIF.
        IF t345 IS NOT BOUND.
          CREATE OBJECT t345.
          t345->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t345->oval = t346.
        ENDIF.
      ENDIF.
    ENDIF.
    t344->load( ).
    APPEND t345 TO t344->items.
    t344->save( ).
    DATA(t349) = t299.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA(t351) = t253.
    CLEAR t350.
    IF t351 IS BOUND.
      DATA t352 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t352.
      DATA t353 TYPE REF TO object.
      CLEAR t353.
      CLEAR t352.
      t353 = t351.
      TRY.
          t350 ?= t353.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t350 IS NOT BOUND.
        TRY.
            t352 ?= t351.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t352 IS BOUND.
          t350 = t352->source( ).
        ENDIF.
        IF t350 IS NOT BOUND.
          CREATE OBJECT t350.
          t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t350->oval = t351.
        ENDIF.
      ENDIF.
    ENDIF.
    t349->load( ).
    APPEND t350 TO t349->items.
    t349->save( ).
    DATA(t354) = t299.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t355.
    DATA(t356) = t155.
    CLEAR t355.
    IF t356 IS BOUND.
      DATA t357 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t357.
      DATA t358 TYPE REF TO object.
      CLEAR t358.
      CLEAR t357.
      t358 = t356.
      TRY.
          t355 ?= t358.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t355 IS NOT BOUND.
        TRY.
            t357 ?= t356.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t357 IS BOUND.
          t355 = t357->source( ).
        ENDIF.
        IF t355 IS NOT BOUND.
          CREATE OBJECT t355.
          t355->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t355->oval = t356.
        ENDIF.
      ENDIF.
    ENDIF.
    t354->load( ).
    APPEND t355 TO t354->items.
    t354->save( ).
    DATA(t359) = t299.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t360.
    DATA(t361) = t197.
    CLEAR t360.
    IF t361 IS BOUND.
      DATA t362 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t362.
      DATA t363 TYPE REF TO object.
      CLEAR t363.
      CLEAR t362.
      t363 = t361.
      TRY.
          t360 ?= t363.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t360 IS NOT BOUND.
        TRY.
            t362 ?= t361.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t362 IS BOUND.
          t360 = t362->source( ).
        ENDIF.
        IF t360 IS NOT BOUND.
          CREATE OBJECT t360.
          t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t360->oval = t361.
        ENDIF.
      ENDIF.
    ENDIF.
    t359->load( ).
    APPEND t360 TO t359->items.
    t359->save( ).
    DATA(t364) = t299.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA(t366) = t239.
    CLEAR t365.
    IF t366 IS BOUND.
      DATA t367 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t367.
      DATA t368 TYPE REF TO object.
      CLEAR t368.
      CLEAR t367.
      t368 = t366.
      TRY.
          t365 ?= t368.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t365 IS NOT BOUND.
        TRY.
            t367 ?= t366.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t367 IS BOUND.
          t365 = t367->source( ).
        ENDIF.
        IF t365 IS NOT BOUND.
          CREATE OBJECT t365.
          t365->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t365->oval = t366.
        ENDIF.
      ENDIF.
    ENDIF.
    t364->load( ).
    APPEND t365 TO t364->items.
    t364->save( ).
    DATA(t369) = t299.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    DATA(t371) = t169.
    CLEAR t370.
    IF t371 IS BOUND.
      DATA t372 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t372.
      DATA t373 TYPE REF TO object.
      CLEAR t373.
      CLEAR t372.
      t373 = t371.
      TRY.
          t370 ?= t373.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t370 IS NOT BOUND.
        TRY.
            t372 ?= t371.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t372 IS BOUND.
          t370 = t372->source( ).
        ENDIF.
        IF t370 IS NOT BOUND.
          CREATE OBJECT t370.
          t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t370->oval = t371.
        ENDIF.
      ENDIF.
    ENDIF.
    t369->load( ).
    APPEND t370 TO t369->items.
    t369->save( ).
    DATA(t374) = t299.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t375.
    DATA(t376) = t57.
    CLEAR t375.
    IF t376 IS BOUND.
      DATA t377 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t377.
      DATA t378 TYPE REF TO object.
      CLEAR t378.
      CLEAR t377.
      t378 = t376.
      TRY.
          t375 ?= t378.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t375 IS NOT BOUND.
        TRY.
            t377 ?= t376.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t377 IS BOUND.
          t375 = t377->source( ).
        ENDIF.
        IF t375 IS NOT BOUND.
          CREATE OBJECT t375.
          t375->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t375->oval = t376.
        ENDIF.
      ENDIF.
    ENDIF.
    t374->load( ).
    APPEND t375 TO t374->items.
    t374->save( ).
    DATA(t379) = t299.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t380.
    DATA(t381) = t211.
    CLEAR t380.
    IF t381 IS BOUND.
      DATA t382 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t382.
      DATA t383 TYPE REF TO object.
      CLEAR t383.
      CLEAR t382.
      t383 = t381.
      TRY.
          t380 ?= t383.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t380 IS NOT BOUND.
        TRY.
            t382 ?= t381.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t382 IS BOUND.
          t380 = t382->source( ).
        ENDIF.
        IF t380 IS NOT BOUND.
          CREATE OBJECT t380.
          t380->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t380->oval = t381.
        ENDIF.
      ENDIF.
    ENDIF.
    t379->load( ).
    APPEND t380 TO t379->items.
    t379->save( ).
    DATA(t384) = t299.
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t385.
    DATA(t386) = t141.
    CLEAR t385.
    IF t386 IS BOUND.
      DATA t387 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t387.
      DATA t388 TYPE REF TO object.
      CLEAR t388.
      CLEAR t387.
      t388 = t386.
      TRY.
          t385 ?= t388.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t385 IS NOT BOUND.
        TRY.
            t387 ?= t386.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t387 IS BOUND.
          t385 = t387->source( ).
        ENDIF.
        IF t385 IS NOT BOUND.
          CREATE OBJECT t385.
          t385->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t385->oval = t386.
        ENDIF.
      ENDIF.
    ENDIF.
    t384->load( ).
    APPEND t385 TO t384->items.
    t384->save( ).
    DATA(t389) = t299.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t390.
    DATA(t391) = t99.
    CLEAR t390.
    IF t391 IS BOUND.
      DATA t392 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t392.
      DATA t393 TYPE REF TO object.
      CLEAR t393.
      CLEAR t392.
      t393 = t391.
      TRY.
          t390 ?= t393.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t390 IS NOT BOUND.
        TRY.
            t392 ?= t391.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t392 IS BOUND.
          t390 = t392->source( ).
        ENDIF.
        IF t390 IS NOT BOUND.
          CREATE OBJECT t390.
          t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t390->oval = t391.
        ENDIF.
      ENDIF.
    ENDIF.
    t389->load( ).
    APPEND t390 TO t389->items.
    t389->save( ).
    DATA(t394) = t299.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t395.
    DATA(t396) = t71.
    CLEAR t395.
    IF t396 IS BOUND.
      DATA t397 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t397.
      DATA t398 TYPE REF TO object.
      CLEAR t398.
      CLEAR t397.
      t398 = t396.
      TRY.
          t395 ?= t398.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t395 IS NOT BOUND.
        TRY.
            t397 ?= t396.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t397 IS BOUND.
          t395 = t397->source( ).
        ENDIF.
        IF t395 IS NOT BOUND.
          CREATE OBJECT t395.
          t395->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t395->oval = t396.
        ENDIF.
      ENDIF.
    ENDIF.
    t394->load( ).
    APPEND t395 TO t394->items.
    t394->save( ).
    DATA(t399) = t299.
    DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t400.
    DATA(t401) = |NEW-SECTION|.
    CLEAR t400.
    CREATE OBJECT t400.
    t400->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t400->sval = t401.
    t399->load( ).
    APPEND t400 TO t399->items.
    t399->save( ).
    DATA(t402) = t299.
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t403.
    DATA(t404) = t85.
    CLEAR t403.
    IF t404 IS BOUND.
      DATA t405 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t405.
      DATA t406 TYPE REF TO object.
      CLEAR t406.
      CLEAR t405.
      t406 = t404.
      TRY.
          t403 ?= t406.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t403 IS NOT BOUND.
        TRY.
            t405 ?= t404.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t405 IS BOUND.
          t403 = t405->source( ).
        ENDIF.
        IF t403 IS NOT BOUND.
          CREATE OBJECT t403.
          t403->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t403->oval = t404.
        ENDIF.
      ENDIF.
    ENDIF.
    t402->load( ).
    APPEND t403 TO t402->items.
    t402->save( ).
    DATA(t407) = t299.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t408.
    DATA(t409) = t1.
    CLEAR t408.
    IF t409 IS BOUND.
      DATA t410 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t410.
      DATA t411 TYPE REF TO object.
      CLEAR t411.
      CLEAR t410.
      t411 = t409.
      TRY.
          t408 ?= t411.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t408 IS NOT BOUND.
        TRY.
            t410 ?= t409.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t410 IS BOUND.
          t408 = t410->source( ).
        ENDIF.
        IF t408 IS NOT BOUND.
          CREATE OBJECT t408.
          t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t408->oval = t409.
        ENDIF.
      ENDIF.
    ENDIF.
    t407->load( ).
    APPEND t408 TO t407->items.
    t407->save( ).
    DATA t412 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t412.
    DATA(t413) = t277.
    DATA(t414) = t282.
    DATA(t415) = t299.
    t412 = zcl_lnt_st_combi_module=>per( i_first = t413 i_second = t414 i_rest = t415 ).
    t276 = t412.
    CLEAR t275.
    IF t276 IS BOUND.
      DATA t416 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t416.
      DATA t417 TYPE REF TO object.
      CLEAR t417.
      CLEAR t416.
      t417 = t276.
      TRY.
          t275 ?= t417.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t275 IS NOT BOUND.
        TRY.
            t416 ?= t276.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t416 IS BOUND.
          t275 = t416->source( ).
        ENDIF.
        IF t275 IS NOT BOUND.
          CREATE OBJECT t275.
          t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t275->oval = t276.
        ENDIF.
      ENDIF.
    ENDIF.
    t274 = zcl_lnt_st_combi_module=>opt( i_first = t275 ).
    CLEAR t273.
    IF t274 IS BOUND.
      DATA t418 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t418.
      DATA t419 TYPE REF TO object.
      CLEAR t419.
      CLEAR t418.
      t419 = t274.
      TRY.
          t273 ?= t419.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t273 IS NOT BOUND.
        TRY.
            t418 ?= t274.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t418 IS BOUND.
          t273 = t418->source( ).
        ENDIF.
        IF t273 IS NOT BOUND.
          CREATE OBJECT t273.
          t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t273->oval = t274.
        ENDIF.
      ENDIF.
    ENDIF.
    t272 = t273.
    DATA t420 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t420.
    DATA t421 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t421.
    CREATE OBJECT t421.
    t420 = t421.
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t422.
    DATA(t423) = t269.
    DATA(t424) = t272.
    DATA(t425) = t420.
    t422 = zcl_lnt_st_combi_module=>seq( i_first = t423 i_second = t424 i_rest = t425 ).
    t268 = t422.
    t267 = t268.
    DATA t426 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t426.
    DATA(t427) = |Cloud|.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t428.
    DATA(t429) = t267.
    CLEAR t428.
    IF t429 IS BOUND.
      DATA t430 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t430.
      DATA t431 TYPE REF TO object.
      CLEAR t431.
      CLEAR t430.
      t431 = t429.
      TRY.
          t428 ?= t431.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t428 IS NOT BOUND.
        TRY.
            t430 ?= t429.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t430 IS BOUND.
          t428 = t430->source( ).
        ENDIF.
        IF t428 IS NOT BOUND.
          CREATE OBJECT t428.
          t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t428->oval = t429.
        ENDIF.
      ENDIF.
    ENDIF.
    t426 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t427 i_first = t428 ).
    result = t426.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d565_243825abe528.
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
