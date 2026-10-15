* TS: src/abap/2_statements/statements/selectoption.ts:7:1 SelectOption
CLASS zcl_lnt_st_select_option DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_select_option IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    CLEAR t4.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
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
    t11 = zcl_lnt_st_combi_module=>alt( i_first = t12 i_second = t13 i_rest = t14 ).
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
    DATA(t19) = |TO|.
    CLEAR t18.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = t1.
    CLEAR t21.
    IF t22 IS BOUND.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      CLEAR t23.
      t24 = t22.
      TRY.
          t21 ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t23 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t21 = t23->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    t20 = t21.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    DATA(t28) = t17.
    DATA(t29) = t20.
    DATA(t30) = t25.
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t16 = t27.
    t15 = t16.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA(t35) = |DEFAULT|.
    CLEAR t34.
    CREATE OBJECT t34.
    t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t34->sval = t35.
    t33 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA(t38) = t1.
    CLEAR t37.
    IF t38 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t39.
      DATA t40 TYPE REF TO object.
      CLEAR t40.
      CLEAR t39.
      t40 = t38.
      TRY.
          t37 ?= t40.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t37 IS NOT BOUND.
        TRY.
            t39 ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t37 = t39->source( ).
        ENDIF.
        IF t37 IS NOT BOUND.
          CREATE OBJECT t37.
          t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t37->oval = t38.
        ENDIF.
      ENDIF.
    ENDIF.
    t36 = t37.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t42.
    CREATE OBJECT t42.
    t41 = t42.
    DATA(t43) = t41.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = t15.
    CLEAR t46.
    IF t47 IS BOUND.
      DATA t48 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t48.
      DATA t49 TYPE REF TO object.
      CLEAR t49.
      CLEAR t48.
      t49 = t47.
      TRY.
          t46 ?= t49.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t48 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t48 IS BOUND.
          t46 = t48->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    t45 = zcl_lnt_st_combi_module=>opt( i_first = t46 ).
    CLEAR t44.
    IF t45 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t50.
      DATA t51 TYPE REF TO object.
      CLEAR t51.
      CLEAR t50.
      t51 = t45.
      TRY.
          t44 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t44 IS NOT BOUND.
        TRY.
            t50 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t44 = t50->source( ).
        ENDIF.
        IF t44 IS NOT BOUND.
          CREATE OBJECT t44.
          t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t44->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    t43->load( ).
    APPEND t44 TO t43->items.
    t43->save( ).
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA(t53) = t33.
    DATA(t54) = t36.
    DATA(t55) = t41.
    t52 = zcl_lnt_st_combi_module=>seq( i_first = t53 i_second = t54 i_rest = t55 ).
    t32 = t52.
    t31 = t32.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = |OPTION|.
    CLEAR t59.
    CREATE OBJECT t59.
    t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t59->sval = t60.
    t58 = t59.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = |CP|.
    CLEAR t65.
    CREATE OBJECT t65.
    t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t65->sval = t66.
    t64 = t65.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    CLEAR t68.
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t68->cval = t69.
    ENDIF.
    t67 = t68.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t71.
    CREATE OBJECT t71.
    t70 = t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA(t73) = t64.
    DATA(t74) = t67.
    DATA(t75) = t70.
    t72 = zcl_lnt_st_combi_module=>alt( i_first = t73 i_second = t74 i_rest = t75 ).
    t63 = t72.
    CLEAR t62.
    IF t63 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t76.
      DATA t77 TYPE REF TO object.
      CLEAR t77.
      CLEAR t76.
      t77 = t63.
      TRY.
          t62 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t76 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t62 = t76->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    t61 = t62.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    CREATE OBJECT t79.
    t78 = t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA(t81) = t58.
    DATA(t82) = t61.
    DATA(t83) = t78.
    t80 = zcl_lnt_st_combi_module=>seq( i_first = t81 i_second = t82 i_rest = t83 ).
    t57 = t80.
    t56 = t57.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = |SIGN|.
    CLEAR t87.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = t88.
    t86 = t87.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    CLEAR t90.
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t90->cval = t91.
    ENDIF.
    t89 = t90.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t93.
    CREATE OBJECT t93.
    t92 = t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA(t95) = t86.
    DATA(t96) = t89.
    DATA(t97) = t92.
    t94 = zcl_lnt_st_combi_module=>seq( i_first = t95 i_second = t96 i_rest = t97 ).
    t85 = t94.
    t84 = t85.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = |MEMORY ID|.
    CLEAR t101.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = t102.
    t100 = t101.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d248_d62fd91017f7.
    CLEAR t104.
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t104->cval = t105.
    ENDIF.
    t103 = t104.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t107.
    CREATE OBJECT t107.
    t106 = t107.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA(t109) = t100.
    DATA(t110) = t103.
    DATA(t111) = t106.
    t108 = zcl_lnt_st_combi_module=>seq( i_first = t109 i_second = t110 i_rest = t111 ).
    t99 = t108.
    t98 = t99.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = |MATCHCODE OBJECT|.
    CLEAR t115.
    CREATE OBJECT t115.
    t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t115->sval = t116.
    t114 = t115.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
    CLEAR t118.
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t118->cval = t119.
    ENDIF.
    t117 = t118.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t121.
    CREATE OBJECT t121.
    t120 = t121.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA(t123) = t114.
    DATA(t124) = t117.
    DATA(t125) = t120.
    t122 = zcl_lnt_st_combi_module=>seq( i_first = t123 i_second = t124 i_rest = t125 ).
    t113 = t122.
    t112 = t113.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = |MODIF ID|.
    CLEAR t129.
    CREATE OBJECT t129.
    t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t129->sval = t130.
    t128 = t129.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d238_a05d3ab5e106.
    CLEAR t132.
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t132->cval = t133.
    ENDIF.
    t131 = t132.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t135.
    CREATE OBJECT t135.
    t134 = t135.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t136.
    DATA(t137) = t128.
    DATA(t138) = t131.
    DATA(t139) = t134.
    t136 = zcl_lnt_st_combi_module=>seq( i_first = t137 i_second = t138 i_rest = t139 ).
    t127 = t136.
    t126 = t127.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = |VISIBLE LENGTH|.
    CLEAR t143.
    CREATE OBJECT t143.
    t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t143->sval = t144.
    t142 = t143.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t146.
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t146->cval = t147.
    ENDIF.
    t145 = t146.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t149.
    CREATE OBJECT t149.
    t148 = t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t150.
    DATA(t151) = t142.
    DATA(t152) = t145.
    DATA(t153) = t148.
    t150 = zcl_lnt_st_combi_module=>seq( i_first = t151 i_second = t152 i_rest = t153 ).
    t141 = t150.
    t140 = t141.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = t31.
    CLEAR t157.
    IF t158 IS BOUND.
      DATA t159 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t159.
      DATA t160 TYPE REF TO object.
      CLEAR t160.
      CLEAR t159.
      t160 = t158.
      TRY.
          t157 ?= t160.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t159 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t159 IS BOUND.
          t157 = t159->source( ).
        ENDIF.
        IF t157 IS NOT BOUND.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t157->oval = t158.
        ENDIF.
      ENDIF.
    ENDIF.
    t156 = t157.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA(t163) = t56.
    CLEAR t162.
    IF t163 IS BOUND.
      DATA t164 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t164.
      DATA t165 TYPE REF TO object.
      CLEAR t165.
      CLEAR t164.
      t165 = t163.
      TRY.
          t162 ?= t165.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t162 IS NOT BOUND.
        TRY.
            t164 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t164 IS BOUND.
          t162 = t164->source( ).
        ENDIF.
        IF t162 IS NOT BOUND.
          CREATE OBJECT t162.
          t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t162->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    t161 = t162.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t167.
    CREATE OBJECT t167.
    t166 = t167.
    DATA(t168) = t166.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA(t170) = t84.
    CLEAR t169.
    IF t170 IS BOUND.
      DATA t171 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t171.
      DATA t172 TYPE REF TO object.
      CLEAR t172.
      CLEAR t171.
      t172 = t170.
      TRY.
          t169 ?= t172.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t169 IS NOT BOUND.
        TRY.
            t171 ?= t170.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t171 IS BOUND.
          t169 = t171->source( ).
        ENDIF.
        IF t169 IS NOT BOUND.
          CREATE OBJECT t169.
          t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t169->oval = t170.
        ENDIF.
      ENDIF.
    ENDIF.
    t168->load( ).
    APPEND t169 TO t168->items.
    t168->save( ).
    DATA(t173) = t166.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = t98.
    CLEAR t174.
    IF t175 IS BOUND.
      DATA t176 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t176.
      DATA t177 TYPE REF TO object.
      CLEAR t177.
      CLEAR t176.
      t177 = t175.
      TRY.
          t174 ?= t177.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t176 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t176 IS BOUND.
          t174 = t176->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    t173->load( ).
    APPEND t174 TO t173->items.
    t173->save( ).
    DATA(t178) = t166.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA(t180) = t112.
    CLEAR t179.
    IF t180 IS BOUND.
      DATA t181 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t181.
      DATA t182 TYPE REF TO object.
      CLEAR t182.
      CLEAR t181.
      t182 = t180.
      TRY.
          t179 ?= t182.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t179 IS NOT BOUND.
        TRY.
            t181 ?= t180.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t181 IS BOUND.
          t179 = t181->source( ).
        ENDIF.
        IF t179 IS NOT BOUND.
          CREATE OBJECT t179.
          t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t179->oval = t180.
        ENDIF.
      ENDIF.
    ENDIF.
    t178->load( ).
    APPEND t179 TO t178->items.
    t178->save( ).
    DATA(t183) = t166.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA(t185) = t140.
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
    DATA(t188) = t166.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA(t190) = t126.
    CLEAR t189.
    IF t190 IS BOUND.
      DATA t191 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t191.
      DATA t192 TYPE REF TO object.
      CLEAR t192.
      CLEAR t191.
      t192 = t190.
      TRY.
          t189 ?= t192.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t191 ?= t190.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t191 IS BOUND.
          t189 = t191->source( ).
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
    DATA(t193) = t166.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA(t195) = |NO DATABASE SELECTION|.
    CLEAR t194.
    CREATE OBJECT t194.
    t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t194->sval = t195.
    t193->load( ).
    APPEND t194 TO t193->items.
    t193->save( ).
    DATA(t196) = t166.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = |LOWER CASE|.
    CLEAR t197.
    CREATE OBJECT t197.
    t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t197->sval = t198.
    t196->load( ).
    APPEND t197 TO t196->items.
    t196->save( ).
    DATA(t199) = t166.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA(t201) = |NO-EXTENSION|.
    CLEAR t200.
    CREATE OBJECT t200.
    t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t200->sval = t201.
    t199->load( ).
    APPEND t200 TO t199->items.
    t199->save( ).
    DATA(t202) = t166.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA(t204) = |NO INTERVALS|.
    CLEAR t203.
    CREATE OBJECT t203.
    t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t203->sval = t204.
    t202->load( ).
    APPEND t203 TO t202->items.
    t202->save( ).
    DATA(t205) = t166.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA(t207) = |NO-DISPLAY|.
    CLEAR t206.
    CREATE OBJECT t206.
    t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t206->sval = t207.
    t205->load( ).
    APPEND t206 TO t205->items.
    t205->save( ).
    DATA(t208) = t166.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA(t210) = |OBLIGATORY|.
    CLEAR t209.
    CREATE OBJECT t209.
    t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t209->sval = t210.
    t208->load( ).
    APPEND t209 TO t208->items.
    t208->save( ).
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t211.
    DATA(t212) = t156.
    DATA(t213) = t161.
    DATA(t214) = t166.
    t211 = zcl_lnt_st_combi_module=>per( i_first = t212 i_second = t213 i_rest = t214 ).
    t155 = t211.
    t154 = t155.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t215.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA(t219) = |SELECT-OPTIONS|.
    CLEAR t218.
    CREATE OBJECT t218.
    t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t218->sval = t219.
    t217 = t218.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA(t222) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    CLEAR t221.
    IF t222 IS BOUND.
      CREATE OBJECT t221.
      t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t221->cval = t222.
    ENDIF.
    t220 = t221.
    DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t223.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t224.
    CREATE OBJECT t224.
    t223 = t224.
    DATA(t225) = t223.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA(t227) = |FOR|.
    CLEAR t226.
    CREATE OBJECT t226.
    t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t226->sval = t227.
    t225->load( ).
    APPEND t226 TO t225->items.
    t225->save( ).
    DATA(t228) = t223.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA(t233) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    CLEAR t232.
    IF t233 IS BOUND.
      CREATE OBJECT t232.
      t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t232->cval = t233.
    ENDIF.
    t231 = t232.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA(t236) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t235.
    IF t236 IS BOUND.
      CREATE OBJECT t235.
      t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t235->cval = t236.
    ENDIF.
    t234 = t235.
    DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t238.
    CREATE OBJECT t238.
    t237 = t238.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t239.
    DATA(t240) = t231.
    DATA(t241) = t234.
    DATA(t242) = t237.
    t239 = zcl_lnt_st_combi_module=>alt( i_first = t240 i_second = t241 i_rest = t242 ).
    t230 = t239.
    CLEAR t229.
    IF t230 IS BOUND.
      DATA t243 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t243.
      DATA t244 TYPE REF TO object.
      CLEAR t244.
      CLEAR t243.
      t244 = t230.
      TRY.
          t229 ?= t244.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t229 IS NOT BOUND.
        TRY.
            t243 ?= t230.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t243 IS BOUND.
          t229 = t243->source( ).
        ENDIF.
        IF t229 IS NOT BOUND.
          CREATE OBJECT t229.
          t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t229->oval = t230.
        ENDIF.
      ENDIF.
    ENDIF.
    t228->load( ).
    APPEND t229 TO t228->items.
    t228->save( ).
    DATA(t245) = t223.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA(t249) = t154.
    CLEAR t248.
    IF t249 IS BOUND.
      DATA t250 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t250.
      DATA t251 TYPE REF TO object.
      CLEAR t251.
      CLEAR t250.
      t251 = t249.
      TRY.
          t248 ?= t251.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t248 IS NOT BOUND.
        TRY.
            t250 ?= t249.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t250 IS BOUND.
          t248 = t250->source( ).
        ENDIF.
        IF t248 IS NOT BOUND.
          CREATE OBJECT t248.
          t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t248->oval = t249.
        ENDIF.
      ENDIF.
    ENDIF.
    t247 = zcl_lnt_st_combi_module=>opt( i_first = t248 ).
    CLEAR t246.
    IF t247 IS BOUND.
      DATA t252 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t252.
      DATA t253 TYPE REF TO object.
      CLEAR t253.
      CLEAR t252.
      t253 = t247.
      TRY.
          t246 ?= t253.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t252 ?= t247.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t252 IS BOUND.
          t246 = t252->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t247.
        ENDIF.
      ENDIF.
    ENDIF.
    t245->load( ).
    APPEND t246 TO t245->items.
    t245->save( ).
    DATA t254 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t254.
    DATA(t255) = t217.
    DATA(t256) = t220.
    DATA(t257) = t223.
    t254 = zcl_lnt_st_combi_module=>seq( i_first = t255 i_second = t256 i_rest = t257 ).
    t216 = t254.
    t215 = t216.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t258.
    DATA(t259) = |Cloud|.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA(t261) = t215.
    CLEAR t260.
    IF t261 IS BOUND.
      DATA t262 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t262.
      DATA t263 TYPE REF TO object.
      CLEAR t263.
      CLEAR t262.
      t263 = t261.
      TRY.
          t260 ?= t263.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t260 IS NOT BOUND.
        TRY.
            t262 ?= t261.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t262 IS BOUND.
          t260 = t262->source( ).
        ENDIF.
        IF t260 IS NOT BOUND.
          CREATE OBJECT t260.
          t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t260->oval = t261.
        ENDIF.
      ENDIF.
    ENDIF.
    t258 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t259 i_first = t260 ).
    result = t258.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d614_0af6a2346fc7.
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
