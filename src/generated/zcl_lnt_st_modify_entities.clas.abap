* TS: src/abap/2_statements/statements/modify_entities.ts:7:1 ModifyEntities
CLASS zcl_lnt_st_modify_entities DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_modify_entities IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |WITH|.
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
    DATA(t19) = |FIELDS (|.
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
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    CLEAR t23.
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    t22 = zcl_lnt_st_combi_module=>plus( i_first = t23 ).
    CLEAR t21.
    IF t22 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      CLEAR t25.
      t26 = t22.
      TRY.
          t21 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t25 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t21 = t25->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    t20 = t21.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    CREATE OBJECT t28.
    t27 = t28.
    DATA(t29) = t27.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = |)|.
    CLEAR t30.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = t31.
    t29->load( ).
    APPEND t30 TO t29->items.
    t29->save( ).
    DATA(t32) = t27.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = t1.
    CLEAR t33.
    IF t34 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t35.
      DATA t36 TYPE REF TO object.
      CLEAR t36.
      CLEAR t35.
      t36 = t34.
      TRY.
          t33 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t35 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t33 = t35->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    t32->load( ).
    APPEND t33 TO t32->items.
    t32->save( ).
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA(t38) = t17.
    DATA(t39) = t20.
    DATA(t40) = t27.
    t37 = zcl_lnt_st_combi_module=>seq( i_first = t38 i_second = t39 i_rest = t40 ).
    t16 = t37.
    t15 = t16.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA(t45) = |BY|.
    CLEAR t44.
    CREATE OBJECT t44.
    t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t44->sval = t45.
    t43 = t44.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    CLEAR t47.
    IF t48 IS BOUND.
      CREATE OBJECT t47.
      t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t47->cval = t48.
    ENDIF.
    t46 = t47.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    CREATE OBJECT t50.
    t49 = t50.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t51.
    DATA(t52) = t43.
    DATA(t53) = t46.
    DATA(t54) = t49.
    t51 = zcl_lnt_st_combi_module=>seq( i_first = t52 i_second = t53 i_rest = t54 ).
    t42 = t51.
    t41 = t42.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA(t59) = |RELATING TO|.
    CLEAR t58.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = t59.
    t57 = t58.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t61.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    t60 = t61.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t64.
    CREATE OBJECT t64.
    t63 = t64.
    DATA(t65) = t63.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = |BY|.
    CLEAR t66.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = t67.
    t65->load( ).
    APPEND t66 TO t65->items.
    t65->save( ).
    DATA(t68) = t63.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t69.
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t69->cval = t70.
    ENDIF.
    t68->load( ).
    APPEND t69 TO t68->items.
    t68->save( ).
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA(t72) = t57.
    DATA(t73) = t60.
    DATA(t74) = t63.
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t72 i_second = t73 i_rest = t74 ).
    t56 = t71.
    t55 = t56.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = |EXECUTE|.
    CLEAR t78.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = t79.
    t77 = t78.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t81.
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    t80 = t81.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t84.
    CREATE OBJECT t84.
    t83 = t84.
    DATA(t85) = t83.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = |FROM|.
    CLEAR t86.
    CREATE OBJECT t86.
    t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t86->sval = t87.
    t85->load( ).
    APPEND t86 TO t85->items.
    t85->save( ).
    DATA(t88) = t83.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA(t90) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t89.
    IF t90 IS BOUND.
      CREATE OBJECT t89.
      t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t89->cval = t90.
    ENDIF.
    t88->load( ).
    APPEND t89 TO t88->items.
    t88->save( ).
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA(t92) = t77.
    DATA(t93) = t80.
    DATA(t94) = t83.
    t91 = zcl_lnt_st_combi_module=>seq( i_first = t92 i_second = t93 i_rest = t94 ).
    t76 = t91.
    t75 = t76.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = |CREATE|.
    CLEAR t98.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = t99.
    t97 = t98.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA(t104) = t41.
    CLEAR t103.
    IF t104 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t105.
      DATA t106 TYPE REF TO object.
      CLEAR t106.
      CLEAR t105.
      t106 = t104.
      TRY.
          t103 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t105 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t103 = t105->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    t102 = zcl_lnt_st_combi_module=>opt( i_first = t103 ).
    CLEAR t101.
    IF t102 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t107.
      DATA t108 TYPE REF TO object.
      CLEAR t108.
      CLEAR t107.
      t108 = t102.
      TRY.
          t101 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t107 ?= t102.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t101 = t107->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t102.
        ENDIF.
      ENDIF.
    ENDIF.
    t100 = t101.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t110.
    CREATE OBJECT t110.
    t109 = t110.
    DATA(t111) = t109.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA(t113) = |FROM|.
    CLEAR t112.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = t113.
    t111->load( ).
    APPEND t112 TO t111->items.
    t111->save( ).
    DATA(t114) = t109.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t115.
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t115->cval = t116.
    ENDIF.
    t114->load( ).
    APPEND t115 TO t114->items.
    t114->save( ).
    DATA(t117) = t109.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA(t121) = t55.
    CLEAR t120.
    IF t121 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t122.
      DATA t123 TYPE REF TO object.
      CLEAR t123.
      CLEAR t122.
      t123 = t121.
      TRY.
          t120 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t122 ?= t121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t120 = t122->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t121.
        ENDIF.
      ENDIF.
    ENDIF.
    t119 = zcl_lnt_st_combi_module=>opt( i_first = t120 ).
    CLEAR t118.
    IF t119 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t124.
      DATA t125 TYPE REF TO object.
      CLEAR t125.
      CLEAR t124.
      t125 = t119.
      TRY.
          t118 ?= t125.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t124 ?= t119.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t118 = t124->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t119.
        ENDIF.
      ENDIF.
    ENDIF.
    t117->load( ).
    APPEND t118 TO t117->items.
    t117->save( ).
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA(t127) = t97.
    DATA(t128) = t100.
    DATA(t129) = t109.
    t126 = zcl_lnt_st_combi_module=>seq( i_first = t127 i_second = t128 i_rest = t129 ).
    t96 = t126.
    t95 = t96.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA(t134) = |UPDATE FROM|.
    CLEAR t133.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = t134.
    t132 = t133.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA(t137) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t136.
    IF t137 IS BOUND.
      CREATE OBJECT t136.
      t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t136->cval = t137.
    ENDIF.
    t135 = t136.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t139.
    CREATE OBJECT t139.
    t138 = t139.
    DATA(t140) = t138.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = t55.
    CLEAR t143.
    IF t144 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t145.
      DATA t146 TYPE REF TO object.
      CLEAR t146.
      CLEAR t145.
      t146 = t144.
      TRY.
          t143 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t145 ?= t144.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t143 = t145->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t144.
        ENDIF.
      ENDIF.
    ENDIF.
    t142 = zcl_lnt_st_combi_module=>opt( i_first = t143 ).
    CLEAR t141.
    IF t142 IS BOUND.
      DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t147.
      DATA t148 TYPE REF TO object.
      CLEAR t148.
      CLEAR t147.
      t148 = t142.
      TRY.
          t141 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t141 IS NOT BOUND.
        TRY.
            t147 ?= t142.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t147 IS BOUND.
          t141 = t147->source( ).
        ENDIF.
        IF t141 IS NOT BOUND.
          CREATE OBJECT t141.
          t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t141->oval = t142.
        ENDIF.
      ENDIF.
    ENDIF.
    t140->load( ).
    APPEND t141 TO t140->items.
    t140->save( ).
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA(t150) = t132.
    DATA(t151) = t135.
    DATA(t152) = t138.
    t149 = zcl_lnt_st_combi_module=>seq( i_first = t150 i_second = t151 i_rest = t152 ).
    t131 = t149.
    t130 = t131.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA(t157) = |DELETE FROM|.
    CLEAR t156.
    CREATE OBJECT t156.
    t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t156->sval = t157.
    t155 = t156.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA(t160) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t159.
    IF t160 IS BOUND.
      CREATE OBJECT t159.
      t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t159->cval = t160.
    ENDIF.
    t158 = t159.
    DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t162.
    CREATE OBJECT t162.
    t161 = t162.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t163.
    DATA(t164) = t155.
    DATA(t165) = t158.
    DATA(t166) = t161.
    t163 = zcl_lnt_st_combi_module=>seq( i_first = t164 i_second = t165 i_rest = t166 ).
    t154 = t163.
    t153 = t154.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t167.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t168.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA(t171) = |UPDATE|.
    CLEAR t170.
    CREATE OBJECT t170.
    t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t170->sval = t171.
    t169 = t170.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA(t174) = t15.
    CLEAR t173.
    IF t174 IS BOUND.
      DATA t175 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t175.
      DATA t176 TYPE REF TO object.
      CLEAR t176.
      CLEAR t175.
      t176 = t174.
      TRY.
          t173 ?= t176.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t173 IS NOT BOUND.
        TRY.
            t175 ?= t174.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t175 IS BOUND.
          t173 = t175->source( ).
        ENDIF.
        IF t173 IS NOT BOUND.
          CREATE OBJECT t173.
          t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t173->oval = t174.
        ENDIF.
      ENDIF.
    ENDIF.
    t172 = t173.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t178.
    CREATE OBJECT t178.
    t177 = t178.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t179.
    DATA(t180) = t169.
    DATA(t181) = t172.
    DATA(t182) = t177.
    t179 = zcl_lnt_st_combi_module=>seq( i_first = t180 i_second = t181 i_rest = t182 ).
    t168 = t179.
    t167 = t168.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA(t187) = |UPDATE SET FIELDS WITH|.
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
    DATA(t201) = t183.
    CLEAR t200.
    IF t201 IS BOUND.
      DATA t202 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t202.
      DATA t203 TYPE REF TO object.
      CLEAR t203.
      CLEAR t202.
      t203 = t201.
      TRY.
          t200 ?= t203.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t202 ?= t201.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t202 IS BOUND.
          t200 = t202->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t201.
        ENDIF.
      ENDIF.
    ENDIF.
    t199 = t200.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t206.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA(t209) = |CREATE SET FIELDS WITH|.
    CLEAR t208.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = t209.
    t207 = t208.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA(t212) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t211.
    IF t212 IS BOUND.
      CREATE OBJECT t211.
      t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t211->cval = t212.
    ENDIF.
    t210 = t211.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t214.
    CREATE OBJECT t214.
    t213 = t214.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t215.
    DATA(t216) = t207.
    DATA(t217) = t210.
    DATA(t218) = t213.
    t215 = zcl_lnt_st_combi_module=>seq( i_first = t216 i_second = t217 i_rest = t218 ).
    t206 = t215.
    CLEAR t205.
    IF t206 IS BOUND.
      DATA t219 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t219.
      DATA t220 TYPE REF TO object.
      CLEAR t220.
      CLEAR t219.
      t220 = t206.
      TRY.
          t205 ?= t220.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t205 IS NOT BOUND.
        TRY.
            t219 ?= t206.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t219 IS BOUND.
          t205 = t219->source( ).
        ENDIF.
        IF t205 IS NOT BOUND.
          CREATE OBJECT t205.
          t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t205->oval = t206.
        ENDIF.
      ENDIF.
    ENDIF.
    t204 = t205.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t222.
    CREATE OBJECT t222.
    t221 = t222.
    DATA(t223) = t221.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA(t225) = t167.
    CLEAR t224.
    IF t225 IS BOUND.
      DATA t226 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t226.
      DATA t227 TYPE REF TO object.
      CLEAR t227.
      CLEAR t226.
      t227 = t225.
      TRY.
          t224 ?= t227.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t224 IS NOT BOUND.
        TRY.
            t226 ?= t225.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t226 IS BOUND.
          t224 = t226->source( ).
        ENDIF.
        IF t224 IS NOT BOUND.
          CREATE OBJECT t224.
          t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t224->oval = t225.
        ENDIF.
      ENDIF.
    ENDIF.
    t223->load( ).
    APPEND t224 TO t223->items.
    t223->save( ).
    DATA(t228) = t221.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA(t230) = t153.
    CLEAR t229.
    IF t230 IS BOUND.
      DATA t231 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t231.
      DATA t232 TYPE REF TO object.
      CLEAR t232.
      CLEAR t231.
      t232 = t230.
      TRY.
          t229 ?= t232.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t229 IS NOT BOUND.
        TRY.
            t231 ?= t230.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t231 IS BOUND.
          t229 = t231->source( ).
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
    DATA(t233) = t221.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA(t235) = t130.
    CLEAR t234.
    IF t235 IS BOUND.
      DATA t236 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t236.
      DATA t237 TYPE REF TO object.
      CLEAR t237.
      CLEAR t236.
      t237 = t235.
      TRY.
          t234 ?= t237.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t234 IS NOT BOUND.
        TRY.
            t236 ?= t235.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t236 IS BOUND.
          t234 = t236->source( ).
        ENDIF.
        IF t234 IS NOT BOUND.
          CREATE OBJECT t234.
          t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t234->oval = t235.
        ENDIF.
      ENDIF.
    ENDIF.
    t233->load( ).
    APPEND t234 TO t233->items.
    t233->save( ).
    DATA(t238) = t221.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA(t240) = t95.
    CLEAR t239.
    IF t240 IS BOUND.
      DATA t241 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t241.
      DATA t242 TYPE REF TO object.
      CLEAR t242.
      CLEAR t241.
      t242 = t240.
      TRY.
          t239 ?= t242.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t239 IS NOT BOUND.
        TRY.
            t241 ?= t240.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t241 IS BOUND.
          t239 = t241->source( ).
        ENDIF.
        IF t239 IS NOT BOUND.
          CREATE OBJECT t239.
          t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t239->oval = t240.
        ENDIF.
      ENDIF.
    ENDIF.
    t238->load( ).
    APPEND t239 TO t238->items.
    t238->save( ).
    DATA(t243) = t221.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = t75.
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
    t243->load( ).
    APPEND t244 TO t243->items.
    t243->save( ).
    DATA(t248) = t221.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA(t253) = |CREATE|.
    CLEAR t252.
    CREATE OBJECT t252.
    t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t252->sval = t253.
    t251 = t252.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA t256 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t256.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA(t258) = t41.
    CLEAR t257.
    IF t258 IS BOUND.
      DATA t259 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t259.
      DATA t260 TYPE REF TO object.
      CLEAR t260.
      CLEAR t259.
      t260 = t258.
      TRY.
          t257 ?= t260.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t257 IS NOT BOUND.
        TRY.
            t259 ?= t258.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t259 IS BOUND.
          t257 = t259->source( ).
        ENDIF.
        IF t257 IS NOT BOUND.
          CREATE OBJECT t257.
          t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t257->oval = t258.
        ENDIF.
      ENDIF.
    ENDIF.
    t256 = zcl_lnt_st_combi_module=>opt( i_first = t257 ).
    CLEAR t255.
    IF t256 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t261.
      DATA t262 TYPE REF TO object.
      CLEAR t262.
      CLEAR t261.
      t262 = t256.
      TRY.
          t255 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t255 IS NOT BOUND.
        TRY.
            t261 ?= t256.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t255 = t261->source( ).
        ENDIF.
        IF t255 IS NOT BOUND.
          CREATE OBJECT t255.
          t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t255->oval = t256.
        ENDIF.
      ENDIF.
    ENDIF.
    t254 = t255.
    DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t263.
    DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t264.
    CREATE OBJECT t264.
    t263 = t264.
    DATA(t265) = t263.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA(t269) = |AUTO FILL CID|.
    CLEAR t268.
    CREATE OBJECT t268.
    t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t268->sval = t269.
    t267 = zcl_lnt_st_combi_module=>opt_prio( i_first = t268 ).
    CLEAR t266.
    IF t267 IS BOUND.
      DATA t270 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t270.
      DATA t271 TYPE REF TO object.
      CLEAR t271.
      CLEAR t270.
      t271 = t267.
      TRY.
          t266 ?= t271.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t266 IS NOT BOUND.
        TRY.
            t270 ?= t267.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t270 IS BOUND.
          t266 = t270->source( ).
        ENDIF.
        IF t266 IS NOT BOUND.
          CREATE OBJECT t266.
          t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t266->oval = t267.
        ENDIF.
      ENDIF.
    ENDIF.
    t265->load( ).
    APPEND t266 TO t265->items.
    t265->save( ).
    DATA(t272) = t263.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA(t277) = t1.
    CLEAR t276.
    IF t277 IS BOUND.
      DATA t278 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t278.
      DATA t279 TYPE REF TO object.
      CLEAR t279.
      CLEAR t278.
      t279 = t277.
      TRY.
          t276 ?= t279.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t276 IS NOT BOUND.
        TRY.
            t278 ?= t277.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t278 IS BOUND.
          t276 = t278->source( ).
        ENDIF.
        IF t276 IS NOT BOUND.
          CREATE OBJECT t276.
          t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t276->oval = t277.
        ENDIF.
      ENDIF.
    ENDIF.
    t275 = t276.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    DATA(t282) = t15.
    CLEAR t281.
    IF t282 IS BOUND.
      DATA t283 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t283.
      DATA t284 TYPE REF TO object.
      CLEAR t284.
      CLEAR t283.
      t284 = t282.
      TRY.
          t281 ?= t284.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t281 IS NOT BOUND.
        TRY.
            t283 ?= t282.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t283 IS BOUND.
          t281 = t283->source( ).
        ENDIF.
        IF t281 IS NOT BOUND.
          CREATE OBJECT t281.
          t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t281->oval = t282.
        ENDIF.
      ENDIF.
    ENDIF.
    t280 = t281.
    DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t286.
    CREATE OBJECT t286.
    t285 = t286.
    DATA t287 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t287.
    DATA(t288) = t275.
    DATA(t289) = t280.
    DATA(t290) = t285.
    t287 = zcl_lnt_st_combi_module=>alt_prio( i_first = t288 i_second = t289 i_rest = t290 ).
    t274 = t287.
    CLEAR t273.
    IF t274 IS BOUND.
      DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t291.
      DATA t292 TYPE REF TO object.
      CLEAR t292.
      CLEAR t291.
      t292 = t274.
      TRY.
          t273 ?= t292.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t273 IS NOT BOUND.
        TRY.
            t291 ?= t274.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t291 IS BOUND.
          t273 = t291->source( ).
        ENDIF.
        IF t273 IS NOT BOUND.
          CREATE OBJECT t273.
          t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t273->oval = t274.
        ENDIF.
      ENDIF.
    ENDIF.
    t272->load( ).
    APPEND t273 TO t272->items.
    t272->save( ).
    DATA t293 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t293.
    DATA(t294) = t251.
    DATA(t295) = t254.
    DATA(t296) = t263.
    t293 = zcl_lnt_st_combi_module=>seq( i_first = t294 i_second = t295 i_rest = t296 ).
    t250 = t293.
    CLEAR t249.
    IF t250 IS BOUND.
      DATA t297 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t297.
      DATA t298 TYPE REF TO object.
      CLEAR t298.
      CLEAR t297.
      t298 = t250.
      TRY.
          t249 ?= t298.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t297 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t297 IS BOUND.
          t249 = t297->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    t248->load( ).
    APPEND t249 TO t248->items.
    t248->save( ).
    DATA t299 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t299.
    DATA(t300) = t199.
    DATA(t301) = t204.
    DATA(t302) = t221.
    t299 = zcl_lnt_st_combi_module=>alt( i_first = t300 i_second = t301 i_rest = t302 ).
    t198 = t299.
    t197 = t198.
    DATA t303 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t303.
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA(t307) = |FAILED|.
    CLEAR t306.
    CREATE OBJECT t306.
    t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t306->sval = t307.
    t305 = t306.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA(t310) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t309.
    IF t310 IS BOUND.
      CREATE OBJECT t309.
      t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t309->cval = t310.
    ENDIF.
    t308 = t309.
    DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t311.
    DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t312.
    CREATE OBJECT t312.
    t311 = t312.
    DATA t313 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t313.
    DATA(t314) = t305.
    DATA(t315) = t308.
    DATA(t316) = t311.
    t313 = zcl_lnt_st_combi_module=>seq( i_first = t314 i_second = t315 i_rest = t316 ).
    t304 = t313.
    t303 = t304.
    DATA t317 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t317.
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t318.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t319.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    DATA(t321) = |RESULT|.
    CLEAR t320.
    CREATE OBJECT t320.
    t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t320->sval = t321.
    t319 = t320.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t323.
    DATA(t324) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t323.
    IF t324 IS BOUND.
      CREATE OBJECT t323.
      t323->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t323->cval = t324.
    ENDIF.
    t322 = t323.
    DATA t325 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t325.
    DATA t326 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t326.
    CREATE OBJECT t326.
    t325 = t326.
    DATA t327 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t327.
    DATA(t328) = t319.
    DATA(t329) = t322.
    DATA(t330) = t325.
    t327 = zcl_lnt_st_combi_module=>seq( i_first = t328 i_second = t329 i_rest = t330 ).
    t318 = t327.
    t317 = t318.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t331.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t332.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    DATA(t335) = |MAPPED|.
    CLEAR t334.
    CREATE OBJECT t334.
    t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t334->sval = t335.
    t333 = t334.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t336.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA(t338) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t337.
    IF t338 IS BOUND.
      CREATE OBJECT t337.
      t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t337->cval = t338.
    ENDIF.
    t336 = t337.
    DATA t339 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t339.
    DATA t340 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t340.
    CREATE OBJECT t340.
    t339 = t340.
    DATA t341 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t341.
    DATA(t342) = t333.
    DATA(t343) = t336.
    DATA(t344) = t339.
    t341 = zcl_lnt_st_combi_module=>seq( i_first = t342 i_second = t343 i_rest = t344 ).
    t332 = t341.
    t331 = t332.
    DATA t345 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t345.
    DATA t346 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t346.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t347.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t348.
    DATA(t349) = |REPORTED|.
    CLEAR t348.
    CREATE OBJECT t348.
    t348->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t348->sval = t349.
    t347 = t348.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA(t352) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t351.
    IF t352 IS BOUND.
      CREATE OBJECT t351.
      t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t351->cval = t352.
    ENDIF.
    t350 = t351.
    DATA t353 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t353.
    DATA t354 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t354.
    CREATE OBJECT t354.
    t353 = t354.
    DATA t355 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t355.
    DATA(t356) = t347.
    DATA(t357) = t350.
    DATA(t358) = t353.
    t355 = zcl_lnt_st_combi_module=>seq( i_first = t356 i_second = t357 i_rest = t358 ).
    t346 = t355.
    t345 = t346.
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t359.
    DATA t360 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t360.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t361.
    DATA t362 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t362.
    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t363.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t364.
    DATA(t365) = t303.
    CLEAR t364.
    IF t365 IS BOUND.
      DATA t366 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t366.
      DATA t367 TYPE REF TO object.
      CLEAR t367.
      CLEAR t366.
      t367 = t365.
      TRY.
          t364 ?= t367.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t364 IS NOT BOUND.
        TRY.
            t366 ?= t365.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t366 IS BOUND.
          t364 = t366->source( ).
        ENDIF.
        IF t364 IS NOT BOUND.
          CREATE OBJECT t364.
          t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t364->oval = t365.
        ENDIF.
      ENDIF.
    ENDIF.
    t363 = t364.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t368.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA(t370) = t317.
    CLEAR t369.
    IF t370 IS BOUND.
      DATA t371 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t371.
      DATA t372 TYPE REF TO object.
      CLEAR t372.
      CLEAR t371.
      t372 = t370.
      TRY.
          t369 ?= t372.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t369 IS NOT BOUND.
        TRY.
            t371 ?= t370.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t371 IS BOUND.
          t369 = t371->source( ).
        ENDIF.
        IF t369 IS NOT BOUND.
          CREATE OBJECT t369.
          t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t369->oval = t370.
        ENDIF.
      ENDIF.
    ENDIF.
    t368 = t369.
    DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t373.
    DATA t374 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t374.
    CREATE OBJECT t374.
    t373 = t374.
    DATA(t375) = t373.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t376.
    DATA(t377) = t331.
    CLEAR t376.
    IF t377 IS BOUND.
      DATA t378 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t378.
      DATA t379 TYPE REF TO object.
      CLEAR t379.
      CLEAR t378.
      t379 = t377.
      TRY.
          t376 ?= t379.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t376 IS NOT BOUND.
        TRY.
            t378 ?= t377.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t378 IS BOUND.
          t376 = t378->source( ).
        ENDIF.
        IF t376 IS NOT BOUND.
          CREATE OBJECT t376.
          t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t376->oval = t377.
        ENDIF.
      ENDIF.
    ENDIF.
    t375->load( ).
    APPEND t376 TO t375->items.
    t375->save( ).
    DATA(t380) = t373.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    DATA(t382) = t345.
    CLEAR t381.
    IF t382 IS BOUND.
      DATA t383 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t383.
      DATA t384 TYPE REF TO object.
      CLEAR t384.
      CLEAR t383.
      t384 = t382.
      TRY.
          t381 ?= t384.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t381 IS NOT BOUND.
        TRY.
            t383 ?= t382.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t383 IS BOUND.
          t381 = t383->source( ).
        ENDIF.
        IF t381 IS NOT BOUND.
          CREATE OBJECT t381.
          t381->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t381->oval = t382.
        ENDIF.
      ENDIF.
    ENDIF.
    t380->load( ).
    APPEND t381 TO t380->items.
    t380->save( ).
    DATA t385 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t385.
    DATA(t386) = t363.
    DATA(t387) = t368.
    DATA(t388) = t373.
    t385 = zcl_lnt_st_combi_module=>per( i_first = t386 i_second = t387 i_rest = t388 ).
    t362 = t385.
    CLEAR t361.
    IF t362 IS BOUND.
      DATA t389 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t389.
      DATA t390 TYPE REF TO object.
      CLEAR t390.
      CLEAR t389.
      t390 = t362.
      TRY.
          t361 ?= t390.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t361 IS NOT BOUND.
        TRY.
            t389 ?= t362.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t389 IS BOUND.
          t361 = t389->source( ).
        ENDIF.
        IF t361 IS NOT BOUND.
          CREATE OBJECT t361.
          t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t361->oval = t362.
        ENDIF.
      ENDIF.
    ENDIF.
    t360 = zcl_lnt_st_combi_module=>opt_prio( i_first = t361 ).
    t359 = t360.
    DATA t391 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t391.
    DATA t392 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t392.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t393.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA t395 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t395.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t396.
    DATA(t397) = |AUGMENTING|.
    CLEAR t396.
    CREATE OBJECT t396.
    t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t396->sval = t397.
    t395 = zcl_lnt_st_combi_module=>opt_prio( i_first = t396 ).
    CLEAR t394.
    IF t395 IS BOUND.
      DATA t398 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t398.
      DATA t399 TYPE REF TO object.
      CLEAR t399.
      CLEAR t398.
      t399 = t395.
      TRY.
          t394 ?= t399.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t394 IS NOT BOUND.
        TRY.
            t398 ?= t395.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t398 IS BOUND.
          t394 = t398->source( ).
        ENDIF.
        IF t394 IS NOT BOUND.
          CREATE OBJECT t394.
          t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t394->oval = t395.
        ENDIF.
      ENDIF.
    ENDIF.
    t393 = t394.
    DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t400.
    DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t401.
    DATA(t402) = |ENTITIES OF|.
    CLEAR t401.
    CREATE OBJECT t401.
    t401->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t401->sval = t402.
    t400 = t401.
    DATA t403 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t403.
    DATA t404 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t404.
    CREATE OBJECT t404.
    t403 = t404.
    DATA(t405) = t403.
    DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t406.
    DATA(t407) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t406.
    IF t407 IS BOUND.
      CREATE OBJECT t406.
      t406->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t406->cval = t407.
    ENDIF.
    t405->load( ).
    APPEND t406 TO t405->items.
    t405->save( ).
    DATA(t408) = t403.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t409.
    DATA t410 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t410.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t411.
    DATA(t412) = |IN LOCAL MODE|.
    CLEAR t411.
    CREATE OBJECT t411.
    t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t411->sval = t412.
    t410 = zcl_lnt_st_combi_module=>opt( i_first = t411 ).
    CLEAR t409.
    IF t410 IS BOUND.
      DATA t413 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t413.
      DATA t414 TYPE REF TO object.
      CLEAR t414.
      CLEAR t413.
      t414 = t410.
      TRY.
          t409 ?= t414.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t409 IS NOT BOUND.
        TRY.
            t413 ?= t410.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t413 IS BOUND.
          t409 = t413->source( ).
        ENDIF.
        IF t409 IS NOT BOUND.
          CREATE OBJECT t409.
          t409->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t409->oval = t410.
        ENDIF.
      ENDIF.
    ENDIF.
    t408->load( ).
    APPEND t409 TO t408->items.
    t408->save( ).
    DATA(t415) = t403.
    DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t416.
    DATA t417 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t417.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t418.
    DATA t419 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t419.
    DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t420.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t421.
    DATA(t422) = |ENTITY|.
    CLEAR t421.
    CREATE OBJECT t421.
    t421->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t421->sval = t422.
    t420 = t421.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t423.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t424.
    DATA(t425) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t424.
    IF t425 IS BOUND.
      CREATE OBJECT t424.
      t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t424->cval = t425.
    ENDIF.
    t423 = t424.
    DATA t426 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t426.
    DATA t427 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t427.
    CREATE OBJECT t427.
    t426 = t427.
    DATA(t428) = t426.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA t430 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t430.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t431.
    DATA(t432) = t197.
    CLEAR t431.
    IF t432 IS BOUND.
      DATA t433 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t433.
      DATA t434 TYPE REF TO object.
      CLEAR t434.
      CLEAR t433.
      t434 = t432.
      TRY.
          t431 ?= t434.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t431 IS NOT BOUND.
        TRY.
            t433 ?= t432.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t433 IS BOUND.
          t431 = t433->source( ).
        ENDIF.
        IF t431 IS NOT BOUND.
          CREATE OBJECT t431.
          t431->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t431->oval = t432.
        ENDIF.
      ENDIF.
    ENDIF.
    t430 = zcl_lnt_st_combi_module=>plus( i_first = t431 ).
    CLEAR t429.
    IF t430 IS BOUND.
      DATA t435 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t435.
      DATA t436 TYPE REF TO object.
      CLEAR t436.
      CLEAR t435.
      t436 = t430.
      TRY.
          t429 ?= t436.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t429 IS NOT BOUND.
        TRY.
            t435 ?= t430.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t435 IS BOUND.
          t429 = t435->source( ).
        ENDIF.
        IF t429 IS NOT BOUND.
          CREATE OBJECT t429.
          t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t429->oval = t430.
        ENDIF.
      ENDIF.
    ENDIF.
    t428->load( ).
    APPEND t429 TO t428->items.
    t428->save( ).
    DATA t437 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t437.
    DATA(t438) = t420.
    DATA(t439) = t423.
    DATA(t440) = t426.
    t437 = zcl_lnt_st_combi_module=>seq( i_first = t438 i_second = t439 i_rest = t440 ).
    t419 = t437.
    CLEAR t418.
    IF t419 IS BOUND.
      DATA t441 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t441.
      DATA t442 TYPE REF TO object.
      CLEAR t442.
      CLEAR t441.
      t442 = t419.
      TRY.
          t418 ?= t442.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t418 IS NOT BOUND.
        TRY.
            t441 ?= t419.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t441 IS BOUND.
          t418 = t441->source( ).
        ENDIF.
        IF t418 IS NOT BOUND.
          CREATE OBJECT t418.
          t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t418->oval = t419.
        ENDIF.
      ENDIF.
    ENDIF.
    t417 = zcl_lnt_st_combi_module=>plus_prio( i_first = t418 ).
    CLEAR t416.
    IF t417 IS BOUND.
      DATA t443 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t443.
      DATA t444 TYPE REF TO object.
      CLEAR t444.
      CLEAR t443.
      t444 = t417.
      TRY.
          t416 ?= t444.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t416 IS NOT BOUND.
        TRY.
            t443 ?= t417.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t443 IS BOUND.
          t416 = t443->source( ).
        ENDIF.
        IF t416 IS NOT BOUND.
          CREATE OBJECT t416.
          t416->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t416->oval = t417.
        ENDIF.
      ENDIF.
    ENDIF.
    t415->load( ).
    APPEND t416 TO t415->items.
    t415->save( ).
    DATA t445 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t445.
    DATA(t446) = t393.
    DATA(t447) = t400.
    DATA(t448) = t403.
    t445 = zcl_lnt_st_combi_module=>seq( i_first = t446 i_second = t447 i_rest = t448 ).
    t392 = t445.
    t391 = t392.
    DATA t449 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t449.
    DATA t450 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t450.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t451.
    DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t452.
    DATA(t453) = |ENTITIES|.
    CLEAR t452.
    CREATE OBJECT t452.
    t452->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t452->sval = t453.
    t451 = t452.
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t454.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t455.
    DATA t456 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t456.
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t457.
    DATA t458 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t458.
    DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t459.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t460.
    DATA(t461) = |IN LOCAL MODE|.
    CLEAR t460.
    CREATE OBJECT t460.
    t460->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t460->sval = t461.
    t459 = t460.
    DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t462.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t463.
    DATA t464 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t464.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t465.
    DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t466.
    DATA t467 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t467.
    DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t468.
    DATA(t469) = |FORWARDING|.
    CLEAR t468.
    CREATE OBJECT t468.
    t468->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t468->sval = t469.
    t467 = zcl_lnt_st_combi_module=>opt( i_first = t468 ).
    CLEAR t466.
    IF t467 IS BOUND.
      DATA t470 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t470.
      DATA t471 TYPE REF TO object.
      CLEAR t471.
      CLEAR t470.
      t471 = t467.
      TRY.
          t466 ?= t471.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t466 IS NOT BOUND.
        TRY.
            t470 ?= t467.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t470 IS BOUND.
          t466 = t470->source( ).
        ENDIF.
        IF t466 IS NOT BOUND.
          CREATE OBJECT t466.
          t466->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t466->oval = t467.
        ENDIF.
      ENDIF.
    ENDIF.
    t465 = t466.
    DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t472.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t473.
    DATA(t474) = |PRIVILEGED|.
    CLEAR t473.
    CREATE OBJECT t473.
    t473->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t473->sval = t474.
    t472 = t473.
    DATA t475 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t475.
    DATA t476 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t476.
    CREATE OBJECT t476.
    t475 = t476.
    DATA t477 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t477.
    DATA(t478) = t465.
    DATA(t479) = t472.
    DATA(t480) = t475.
    t477 = zcl_lnt_st_combi_module=>seq( i_first = t478 i_second = t479 i_rest = t480 ).
    t464 = t477.
    CLEAR t463.
    IF t464 IS BOUND.
      DATA t481 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t481.
      DATA t482 TYPE REF TO object.
      CLEAR t482.
      CLEAR t481.
      t482 = t464.
      TRY.
          t463 ?= t482.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t463 IS NOT BOUND.
        TRY.
            t481 ?= t464.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t481 IS BOUND.
          t463 = t481->source( ).
        ENDIF.
        IF t463 IS NOT BOUND.
          CREATE OBJECT t463.
          t463->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t463->oval = t464.
        ENDIF.
      ENDIF.
    ENDIF.
    t462 = t463.
    DATA t483 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t483.
    DATA t484 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t484.
    CREATE OBJECT t484.
    t483 = t484.
    DATA t485 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t485.
    DATA(t486) = t459.
    DATA(t487) = t462.
    DATA(t488) = t483.
    t485 = zcl_lnt_st_combi_module=>alt_prio( i_first = t486 i_second = t487 i_rest = t488 ).
    t458 = t485.
    CLEAR t457.
    IF t458 IS BOUND.
      DATA t489 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t489.
      DATA t490 TYPE REF TO object.
      CLEAR t490.
      CLEAR t489.
      t490 = t458.
      TRY.
          t457 ?= t490.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t457 IS NOT BOUND.
        TRY.
            t489 ?= t458.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t489 IS BOUND.
          t457 = t489->source( ).
        ENDIF.
        IF t457 IS NOT BOUND.
          CREATE OBJECT t457.
          t457->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t457->oval = t458.
        ENDIF.
      ENDIF.
    ENDIF.
    t456 = zcl_lnt_st_combi_module=>opt_prio( i_first = t457 ).
    CLEAR t455.
    IF t456 IS BOUND.
      DATA t491 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t491.
      DATA t492 TYPE REF TO object.
      CLEAR t492.
      CLEAR t491.
      t492 = t456.
      TRY.
          t455 ?= t492.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t455 IS NOT BOUND.
        TRY.
            t491 ?= t456.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t491 IS BOUND.
          t455 = t491->source( ).
        ENDIF.
        IF t455 IS NOT BOUND.
          CREATE OBJECT t455.
          t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t455->oval = t456.
        ENDIF.
      ENDIF.
    ENDIF.
    t454 = t455.
    DATA t493 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t493.
    DATA t494 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t494.
    CREATE OBJECT t494.
    t493 = t494.
    DATA(t495) = t493.
    DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t496.
    DATA(t497) = |OPERATIONS|.
    CLEAR t496.
    CREATE OBJECT t496.
    t496->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t496->sval = t497.
    t495->load( ).
    APPEND t496 TO t495->items.
    t495->save( ).
    DATA(t498) = t493.
    DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t499.
    DATA(t500) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t499.
    IF t500 IS BOUND.
      CREATE OBJECT t499.
      t499->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t499->cval = t500.
    ENDIF.
    t498->load( ).
    APPEND t499 TO t498->items.
    t498->save( ).
    DATA t501 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t501.
    DATA(t502) = t451.
    DATA(t503) = t454.
    DATA(t504) = t493.
    t501 = zcl_lnt_st_combi_module=>seq( i_first = t502 i_second = t503 i_rest = t504 ).
    t450 = t501.
    t449 = t450.
    DATA t505 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t505.
    DATA t506 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t506.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t507.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t508.
    DATA(t509) = |CREATE|.
    CLEAR t508.
    CREATE OBJECT t508.
    t508->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t508->sval = t509.
    t507 = t508.
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t510.
    DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t511.
    DATA(t512) = t15.
    CLEAR t511.
    IF t512 IS BOUND.
      DATA t513 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t513.
      DATA t514 TYPE REF TO object.
      CLEAR t514.
      CLEAR t513.
      t514 = t512.
      TRY.
          t511 ?= t514.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t511 IS NOT BOUND.
        TRY.
            t513 ?= t512.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t513 IS BOUND.
          t511 = t513->source( ).
        ENDIF.
        IF t511 IS NOT BOUND.
          CREATE OBJECT t511.
          t511->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t511->oval = t512.
        ENDIF.
      ENDIF.
    ENDIF.
    t510 = t511.
    DATA t515 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t515.
    DATA t516 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t516.
    CREATE OBJECT t516.
    t515 = t516.
    DATA(t517) = t515.
    DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t518.
    DATA t519 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t519.
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t520.
    DATA t521 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t521.
    DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t522.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t523.
    DATA(t524) = |CREATE BY|.
    CLEAR t523.
    CREATE OBJECT t523.
    t523->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t523->sval = t524.
    t522 = t523.
    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t525.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t526.
    DATA(t527) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    CLEAR t526.
    IF t527 IS BOUND.
      CREATE OBJECT t526.
      t526->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t526->cval = t527.
    ENDIF.
    t525 = t526.
    DATA t528 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t528.
    DATA t529 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t529.
    CREATE OBJECT t529.
    t528 = t529.
    DATA(t530) = t528.
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t531.
    DATA(t532) = t15.
    CLEAR t531.
    IF t532 IS BOUND.
      DATA t533 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t533.
      DATA t534 TYPE REF TO object.
      CLEAR t534.
      CLEAR t533.
      t534 = t532.
      TRY.
          t531 ?= t534.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t531 IS NOT BOUND.
        TRY.
            t533 ?= t532.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t533 IS BOUND.
          t531 = t533->source( ).
        ENDIF.
        IF t531 IS NOT BOUND.
          CREATE OBJECT t531.
          t531->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t531->oval = t532.
        ENDIF.
      ENDIF.
    ENDIF.
    t530->load( ).
    APPEND t531 TO t530->items.
    t530->save( ).
    DATA t535 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t535.
    DATA(t536) = t522.
    DATA(t537) = t525.
    DATA(t538) = t528.
    t535 = zcl_lnt_st_combi_module=>seq( i_first = t536 i_second = t537 i_rest = t538 ).
    t521 = t535.
    CLEAR t520.
    IF t521 IS BOUND.
      DATA t539 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t539.
      DATA t540 TYPE REF TO object.
      CLEAR t540.
      CLEAR t539.
      t540 = t521.
      TRY.
          t520 ?= t540.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t520 IS NOT BOUND.
        TRY.
            t539 ?= t521.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t539 IS BOUND.
          t520 = t539->source( ).
        ENDIF.
        IF t520 IS NOT BOUND.
          CREATE OBJECT t520.
          t520->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t520->oval = t521.
        ENDIF.
      ENDIF.
    ENDIF.
    t519 = zcl_lnt_st_combi_module=>opt( i_first = t520 ).
    CLEAR t518.
    IF t519 IS BOUND.
      DATA t541 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t541.
      DATA t542 TYPE REF TO object.
      CLEAR t542.
      CLEAR t541.
      t542 = t519.
      TRY.
          t518 ?= t542.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t518 IS NOT BOUND.
        TRY.
            t541 ?= t519.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t541 IS BOUND.
          t518 = t541->source( ).
        ENDIF.
        IF t518 IS NOT BOUND.
          CREATE OBJECT t518.
          t518->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t518->oval = t519.
        ENDIF.
      ENDIF.
    ENDIF.
    t517->load( ).
    APPEND t518 TO t517->items.
    t517->save( ).
    DATA t543 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t543.
    DATA(t544) = t507.
    DATA(t545) = t510.
    DATA(t546) = t515.
    t543 = zcl_lnt_st_combi_module=>seq( i_first = t544 i_second = t545 i_rest = t546 ).
    t506 = t543.
    t505 = t506.
    DATA t547 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t547.
    DATA t548 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t548.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t549.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t550.
    DATA(t551) = |CREATE BY|.
    CLEAR t550.
    CREATE OBJECT t550.
    t550->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t550->sval = t551.
    t549 = t550.
    DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t552.
    DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t553.
    DATA(t554) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    CLEAR t553.
    IF t554 IS BOUND.
      CREATE OBJECT t553.
      t553->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t553->cval = t554.
    ENDIF.
    t552 = t553.
    DATA t555 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t555.
    DATA t556 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t556.
    CREATE OBJECT t556.
    t555 = t556.
    DATA(t557) = t555.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t558.
    DATA(t559) = t15.
    CLEAR t558.
    IF t559 IS BOUND.
      DATA t560 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t560.
      DATA t561 TYPE REF TO object.
      CLEAR t561.
      CLEAR t560.
      t561 = t559.
      TRY.
          t558 ?= t561.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t558 IS NOT BOUND.
        TRY.
            t560 ?= t559.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t560 IS BOUND.
          t558 = t560->source( ).
        ENDIF.
        IF t558 IS NOT BOUND.
          CREATE OBJECT t558.
          t558->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t558->oval = t559.
        ENDIF.
      ENDIF.
    ENDIF.
    t557->load( ).
    APPEND t558 TO t557->items.
    t557->save( ).
    DATA t562 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t562.
    DATA(t563) = t549.
    DATA(t564) = t552.
    DATA(t565) = t555.
    t562 = zcl_lnt_st_combi_module=>seq( i_first = t563 i_second = t564 i_rest = t565 ).
    t548 = t562.
    t547 = t548.
    DATA t566 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t566.
    DATA t567 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t567.
    DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t568.
    DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t569.
    DATA(t570) = |CREATE FROM|.
    CLEAR t569.
    CREATE OBJECT t569.
    t569->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t569->sval = t570.
    t568 = t569.
    DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t571.
    DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t572.
    DATA(t573) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t572.
    IF t573 IS BOUND.
      CREATE OBJECT t572.
      t572->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t572->cval = t573.
    ENDIF.
    t571 = t572.
    DATA t574 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t574.
    DATA t575 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t575.
    CREATE OBJECT t575.
    t574 = t575.
    DATA(t576) = t574.
    DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t577.
    DATA t578 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t578.
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t579.
    DATA t580 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t580.
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t581.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t582.
    DATA(t583) = |CREATE BY|.
    CLEAR t582.
    CREATE OBJECT t582.
    t582->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t582->sval = t583.
    t581 = t582.
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t584.
    DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t585.
    DATA(t586) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    CLEAR t585.
    IF t586 IS BOUND.
      CREATE OBJECT t585.
      t585->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t585->cval = t586.
    ENDIF.
    t584 = t585.
    DATA t587 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t587.
    DATA t588 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t588.
    CREATE OBJECT t588.
    t587 = t588.
    DATA(t589) = t587.
    DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t590.
    DATA(t591) = |FROM|.
    CLEAR t590.
    CREATE OBJECT t590.
    t590->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t590->sval = t591.
    t589->load( ).
    APPEND t590 TO t589->items.
    t589->save( ).
    DATA(t592) = t587.
    DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t593.
    DATA(t594) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t593.
    IF t594 IS BOUND.
      CREATE OBJECT t593.
      t593->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t593->cval = t594.
    ENDIF.
    t592->load( ).
    APPEND t593 TO t592->items.
    t592->save( ).
    DATA t595 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t595.
    DATA(t596) = t581.
    DATA(t597) = t584.
    DATA(t598) = t587.
    t595 = zcl_lnt_st_combi_module=>seq( i_first = t596 i_second = t597 i_rest = t598 ).
    t580 = t595.
    CLEAR t579.
    IF t580 IS BOUND.
      DATA t599 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t599.
      DATA t600 TYPE REF TO object.
      CLEAR t600.
      CLEAR t599.
      t600 = t580.
      TRY.
          t579 ?= t600.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t579 IS NOT BOUND.
        TRY.
            t599 ?= t580.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t599 IS BOUND.
          t579 = t599->source( ).
        ENDIF.
        IF t579 IS NOT BOUND.
          CREATE OBJECT t579.
          t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t579->oval = t580.
        ENDIF.
      ENDIF.
    ENDIF.
    t578 = zcl_lnt_st_combi_module=>plus( i_first = t579 ).
    CLEAR t577.
    IF t578 IS BOUND.
      DATA t601 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t601.
      DATA t602 TYPE REF TO object.
      CLEAR t602.
      CLEAR t601.
      t602 = t578.
      TRY.
          t577 ?= t602.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t577 IS NOT BOUND.
        TRY.
            t601 ?= t578.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t601 IS BOUND.
          t577 = t601->source( ).
        ENDIF.
        IF t577 IS NOT BOUND.
          CREATE OBJECT t577.
          t577->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t577->oval = t578.
        ENDIF.
      ENDIF.
    ENDIF.
    t576->load( ).
    APPEND t577 TO t576->items.
    t576->save( ).
    DATA t603 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t603.
    DATA(t604) = t568.
    DATA(t605) = t571.
    DATA(t606) = t574.
    t603 = zcl_lnt_st_combi_module=>seq( i_first = t604 i_second = t605 i_rest = t606 ).
    t567 = t603.
    t566 = t567.
    DATA t607 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t607.
    DATA t608 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t608.
    DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t609.
    DATA t610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t610.
    DATA(t611) = |ENTITY|.
    CLEAR t610.
    CREATE OBJECT t610.
    t610->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t610->sval = t611.
    t609 = t610.
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t612.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t613.
    DATA t614 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t614.
    DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t615.
    DATA(t616) = |IN LOCAL MODE|.
    CLEAR t615.
    CREATE OBJECT t615.
    t615->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t615->sval = t616.
    t614 = zcl_lnt_st_combi_module=>opt( i_first = t615 ).
    CLEAR t613.
    IF t614 IS BOUND.
      DATA t617 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t617.
      DATA t618 TYPE REF TO object.
      CLEAR t618.
      CLEAR t617.
      t618 = t614.
      TRY.
          t613 ?= t618.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t613 IS NOT BOUND.
        TRY.
            t617 ?= t614.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t617 IS BOUND.
          t613 = t617->source( ).
        ENDIF.
        IF t613 IS NOT BOUND.
          CREATE OBJECT t613.
          t613->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t613->oval = t614.
        ENDIF.
      ENDIF.
    ENDIF.
    t612 = t613.
    DATA t619 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t619.
    DATA t620 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t620.
    CREATE OBJECT t620.
    t619 = t620.
    DATA(t621) = t619.
    DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t622.
    DATA t623 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t623.
    DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t624.
    DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t625.
    DATA(t626) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t625.
    IF t626 IS BOUND.
      CREATE OBJECT t625.
      t625->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t625->cval = t626.
    ENDIF.
    t624 = t625.
    DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t627.
    DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t628.
    DATA(t629) = zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0.
    CLEAR t628.
    IF t629 IS BOUND.
      CREATE OBJECT t628.
      t628->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t628->cval = t629.
    ENDIF.
    t627 = t628.
    DATA t630 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t630.
    DATA t631 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t631.
    CREATE OBJECT t631.
    t630 = t631.
    DATA t632 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t632.
    DATA(t633) = t624.
    DATA(t634) = t627.
    DATA(t635) = t630.
    t632 = zcl_lnt_st_combi_module=>alt( i_first = t633 i_second = t634 i_rest = t635 ).
    t623 = t632.
    CLEAR t622.
    IF t623 IS BOUND.
      DATA t636 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t636.
      DATA t637 TYPE REF TO object.
      CLEAR t637.
      CLEAR t636.
      t637 = t623.
      TRY.
          t622 ?= t637.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t622 IS NOT BOUND.
        TRY.
            t636 ?= t623.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t636 IS BOUND.
          t622 = t636->source( ).
        ENDIF.
        IF t622 IS NOT BOUND.
          CREATE OBJECT t622.
          t622->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t622->oval = t623.
        ENDIF.
      ENDIF.
    ENDIF.
    t621->load( ).
    APPEND t622 TO t621->items.
    t621->save( ).
    DATA(t638) = t619.
    DATA t639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t639.
    DATA t640 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t640.
    DATA t641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t641.
    DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t642.
    DATA(t643) = t75.
    CLEAR t642.
    IF t643 IS BOUND.
      DATA t644 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t644.
      DATA t645 TYPE REF TO object.
      CLEAR t645.
      CLEAR t644.
      t645 = t643.
      TRY.
          t642 ?= t645.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t642 IS NOT BOUND.
        TRY.
            t644 ?= t643.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t644 IS BOUND.
          t642 = t644->source( ).
        ENDIF.
        IF t642 IS NOT BOUND.
          CREATE OBJECT t642.
          t642->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t642->oval = t643.
        ENDIF.
      ENDIF.
    ENDIF.
    t641 = t642.
    DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t646.
    DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t647.
    DATA(t648) = t95.
    CLEAR t647.
    IF t648 IS BOUND.
      DATA t649 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t649.
      DATA t650 TYPE REF TO object.
      CLEAR t650.
      CLEAR t649.
      t650 = t648.
      TRY.
          t647 ?= t650.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t647 IS NOT BOUND.
        TRY.
            t649 ?= t648.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t649 IS BOUND.
          t647 = t649->source( ).
        ENDIF.
        IF t647 IS NOT BOUND.
          CREATE OBJECT t647.
          t647->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t647->oval = t648.
        ENDIF.
      ENDIF.
    ENDIF.
    t646 = t647.
    DATA t651 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t651.
    DATA t652 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t652.
    CREATE OBJECT t652.
    t651 = t652.
    DATA(t653) = t651.
    DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t654.
    DATA(t655) = t167.
    CLEAR t654.
    IF t655 IS BOUND.
      DATA t656 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t656.
      DATA t657 TYPE REF TO object.
      CLEAR t657.
      CLEAR t656.
      t657 = t655.
      TRY.
          t654 ?= t657.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t654 IS NOT BOUND.
        TRY.
            t656 ?= t655.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t656 IS BOUND.
          t654 = t656->source( ).
        ENDIF.
        IF t654 IS NOT BOUND.
          CREATE OBJECT t654.
          t654->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t654->oval = t655.
        ENDIF.
      ENDIF.
    ENDIF.
    t653->load( ).
    APPEND t654 TO t653->items.
    t653->save( ).
    DATA(t658) = t651.
    DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t659.
    DATA(t660) = t153.
    CLEAR t659.
    IF t660 IS BOUND.
      DATA t661 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t661.
      DATA t662 TYPE REF TO object.
      CLEAR t662.
      CLEAR t661.
      t662 = t660.
      TRY.
          t659 ?= t662.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t659 IS NOT BOUND.
        TRY.
            t661 ?= t660.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t661 IS BOUND.
          t659 = t661->source( ).
        ENDIF.
        IF t659 IS NOT BOUND.
          CREATE OBJECT t659.
          t659->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t659->oval = t660.
        ENDIF.
      ENDIF.
    ENDIF.
    t658->load( ).
    APPEND t659 TO t658->items.
    t658->save( ).
    DATA(t663) = t651.
    DATA t664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t664.
    DATA(t665) = t183.
    CLEAR t664.
    IF t665 IS BOUND.
      DATA t666 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t666.
      DATA t667 TYPE REF TO object.
      CLEAR t667.
      CLEAR t666.
      t667 = t665.
      TRY.
          t664 ?= t667.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t664 IS NOT BOUND.
        TRY.
            t666 ?= t665.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t666 IS BOUND.
          t664 = t666->source( ).
        ENDIF.
        IF t664 IS NOT BOUND.
          CREATE OBJECT t664.
          t664->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t664->oval = t665.
        ENDIF.
      ENDIF.
    ENDIF.
    t663->load( ).
    APPEND t664 TO t663->items.
    t663->save( ).
    DATA(t668) = t651.
    DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t669.
    DATA(t670) = t130.
    CLEAR t669.
    IF t670 IS BOUND.
      DATA t671 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t671.
      DATA t672 TYPE REF TO object.
      CLEAR t672.
      CLEAR t671.
      t672 = t670.
      TRY.
          t669 ?= t672.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t669 IS NOT BOUND.
        TRY.
            t671 ?= t670.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t671 IS BOUND.
          t669 = t671->source( ).
        ENDIF.
        IF t669 IS NOT BOUND.
          CREATE OBJECT t669.
          t669->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t669->oval = t670.
        ENDIF.
      ENDIF.
    ENDIF.
    t668->load( ).
    APPEND t669 TO t668->items.
    t668->save( ).
    DATA(t673) = t651.
    DATA t674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t674.
    DATA(t675) = t505.
    CLEAR t674.
    IF t675 IS BOUND.
      DATA t676 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t676.
      DATA t677 TYPE REF TO object.
      CLEAR t677.
      CLEAR t676.
      t677 = t675.
      TRY.
          t674 ?= t677.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t674 IS NOT BOUND.
        TRY.
            t676 ?= t675.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t676 IS BOUND.
          t674 = t676->source( ).
        ENDIF.
        IF t674 IS NOT BOUND.
          CREATE OBJECT t674.
          t674->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t674->oval = t675.
        ENDIF.
      ENDIF.
    ENDIF.
    t673->load( ).
    APPEND t674 TO t673->items.
    t673->save( ).
    DATA(t678) = t651.
    DATA t679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t679.
    DATA(t680) = t547.
    CLEAR t679.
    IF t680 IS BOUND.
      DATA t681 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t681.
      DATA t682 TYPE REF TO object.
      CLEAR t682.
      CLEAR t681.
      t682 = t680.
      TRY.
          t679 ?= t682.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t679 IS NOT BOUND.
        TRY.
            t681 ?= t680.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t681 IS BOUND.
          t679 = t681->source( ).
        ENDIF.
        IF t679 IS NOT BOUND.
          CREATE OBJECT t679.
          t679->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t679->oval = t680.
        ENDIF.
      ENDIF.
    ENDIF.
    t678->load( ).
    APPEND t679 TO t678->items.
    t678->save( ).
    DATA(t683) = t651.
    DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t684.
    DATA(t685) = t566.
    CLEAR t684.
    IF t685 IS BOUND.
      DATA t686 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t686.
      DATA t687 TYPE REF TO object.
      CLEAR t687.
      CLEAR t686.
      t687 = t685.
      TRY.
          t684 ?= t687.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t684 IS NOT BOUND.
        TRY.
            t686 ?= t685.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t686 IS BOUND.
          t684 = t686->source( ).
        ENDIF.
        IF t684 IS NOT BOUND.
          CREATE OBJECT t684.
          t684->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t684->oval = t685.
        ENDIF.
      ENDIF.
    ENDIF.
    t683->load( ).
    APPEND t684 TO t683->items.
    t683->save( ).
    DATA t688 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t688.
    DATA(t689) = t641.
    DATA(t690) = t646.
    DATA(t691) = t651.
    t688 = zcl_lnt_st_combi_module=>alt( i_first = t689 i_second = t690 i_rest = t691 ).
    t640 = t688.
    CLEAR t639.
    IF t640 IS BOUND.
      DATA t692 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t692.
      DATA t693 TYPE REF TO object.
      CLEAR t693.
      CLEAR t692.
      t693 = t640.
      TRY.
          t639 ?= t693.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t639 IS NOT BOUND.
        TRY.
            t692 ?= t640.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t692 IS BOUND.
          t639 = t692->source( ).
        ENDIF.
        IF t639 IS NOT BOUND.
          CREATE OBJECT t639.
          t639->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t639->oval = t640.
        ENDIF.
      ENDIF.
    ENDIF.
    t638->load( ).
    APPEND t639 TO t638->items.
    t638->save( ).
    DATA t694 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t694.
    DATA(t695) = t609.
    DATA(t696) = t612.
    DATA(t697) = t619.
    t694 = zcl_lnt_st_combi_module=>seq( i_first = t695 i_second = t696 i_rest = t697 ).
    t608 = t694.
    t607 = t608.
    DATA t698 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t698.
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t699.
    DATA t700 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t700.
    DATA t701 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t701.
    DATA t702 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t702.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t702 = zcl_lnt_version_module=>release_b8cd.
    DATA(t703) = |v754|.
    t701 = t702->get( p0 = t703 ).
    t700 = t701.
    CLEAR t699.
    IF t700 IS BOUND.
      DATA t704 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t704.
      DATA t705 TYPE REF TO object.
      CLEAR t705.
      CLEAR t704.
      t705 = t700.
      TRY.
          t699 ?= t705.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t699 IS NOT BOUND.
        TRY.
            t704 ?= t700.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t704 IS BOUND.
          t699 = t704->source( ).
        ENDIF.
        IF t699 IS NOT BOUND.
          CREATE OBJECT t699.
          t699->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t699->oval = t700.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t706.
    DATA t707 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t707.
    DATA t708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t708.
    DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t709.
    DATA(t710) = |MODIFY|.
    CLEAR t709.
    CREATE OBJECT t709.
    t709->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t709->sval = t710.
    t708 = t709.
    DATA t711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t711.
    DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t712.
    DATA t713 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t713.
    DATA t714 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t714.
    DATA t715 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t715.
    DATA(t716) = t391.
    CLEAR t715.
    IF t716 IS BOUND.
      DATA t717 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t717.
      DATA t718 TYPE REF TO object.
      CLEAR t718.
      CLEAR t717.
      t718 = t716.
      TRY.
          t715 ?= t718.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t715 IS NOT BOUND.
        TRY.
            t717 ?= t716.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t717 IS BOUND.
          t715 = t717->source( ).
        ENDIF.
        IF t715 IS NOT BOUND.
          CREATE OBJECT t715.
          t715->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t715->oval = t716.
        ENDIF.
      ENDIF.
    ENDIF.
    t714 = t715.
    DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t719.
    DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t720.
    DATA(t721) = t449.
    CLEAR t720.
    IF t721 IS BOUND.
      DATA t722 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t722.
      DATA t723 TYPE REF TO object.
      CLEAR t723.
      CLEAR t722.
      t723 = t721.
      TRY.
          t720 ?= t723.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t720 IS NOT BOUND.
        TRY.
            t722 ?= t721.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t722 IS BOUND.
          t720 = t722->source( ).
        ENDIF.
        IF t720 IS NOT BOUND.
          CREATE OBJECT t720.
          t720->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t720->oval = t721.
        ENDIF.
      ENDIF.
    ENDIF.
    t719 = t720.
    DATA t724 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t724.
    DATA t725 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t725.
    CREATE OBJECT t725.
    t724 = t725.
    DATA(t726) = t724.
    DATA t727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t727.
    DATA(t728) = t607.
    CLEAR t727.
    IF t728 IS BOUND.
      DATA t729 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t729.
      DATA t730 TYPE REF TO object.
      CLEAR t730.
      CLEAR t729.
      t730 = t728.
      TRY.
          t727 ?= t730.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t727 IS NOT BOUND.
        TRY.
            t729 ?= t728.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t729 IS BOUND.
          t727 = t729->source( ).
        ENDIF.
        IF t727 IS NOT BOUND.
          CREATE OBJECT t727.
          t727->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t727->oval = t728.
        ENDIF.
      ENDIF.
    ENDIF.
    t726->load( ).
    APPEND t727 TO t726->items.
    t726->save( ).
    DATA t731 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t731.
    DATA(t732) = t714.
    DATA(t733) = t719.
    DATA(t734) = t724.
    t731 = zcl_lnt_st_combi_module=>alt( i_first = t732 i_second = t733 i_rest = t734 ).
    t713 = t731.
    CLEAR t712.
    IF t713 IS BOUND.
      DATA t735 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t735.
      DATA t736 TYPE REF TO object.
      CLEAR t736.
      CLEAR t735.
      t736 = t713.
      TRY.
          t712 ?= t736.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t712 IS NOT BOUND.
        TRY.
            t735 ?= t713.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t735 IS BOUND.
          t712 = t735->source( ).
        ENDIF.
        IF t712 IS NOT BOUND.
          CREATE OBJECT t712.
          t712->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t712->oval = t713.
        ENDIF.
      ENDIF.
    ENDIF.
    t711 = t712.
    DATA t737 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t737.
    DATA t738 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t738.
    CREATE OBJECT t738.
    t737 = t738.
    DATA(t739) = t737.
    DATA t740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t740.
    DATA(t741) = t359.
    CLEAR t740.
    IF t741 IS BOUND.
      DATA t742 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t742.
      DATA t743 TYPE REF TO object.
      CLEAR t743.
      CLEAR t742.
      t743 = t741.
      TRY.
          t740 ?= t743.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t740 IS NOT BOUND.
        TRY.
            t742 ?= t741.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t742 IS BOUND.
          t740 = t742->source( ).
        ENDIF.
        IF t740 IS NOT BOUND.
          CREATE OBJECT t740.
          t740->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t740->oval = t741.
        ENDIF.
      ENDIF.
    ENDIF.
    t739->load( ).
    APPEND t740 TO t739->items.
    t739->save( ).
    DATA t744 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t744.
    DATA(t745) = t708.
    DATA(t746) = t711.
    DATA(t747) = t737.
    t744 = zcl_lnt_st_combi_module=>seq( i_first = t745 i_second = t746 i_rest = t747 ).
    t707 = t744.
    CLEAR t706.
    IF t707 IS BOUND.
      DATA t748 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t748.
      DATA t749 TYPE REF TO object.
      CLEAR t749.
      CLEAR t748.
      t749 = t707.
      TRY.
          t706 ?= t749.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t706 IS NOT BOUND.
        TRY.
            t748 ?= t707.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t748 IS BOUND.
          t706 = t748->source( ).
        ENDIF.
        IF t706 IS NOT BOUND.
          CREATE OBJECT t706.
          t706->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t706->oval = t707.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t750 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t750.
    DATA(t751) = abap_true.
    IF t751 = abap_true.
      DATA t752 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t752.
      DATA t753 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t753.
      DATA t754 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t754.
      DATA(t755) = abap_true.
      IF t755 = abap_true.
        DATA(t756) = |OpenABAP|.
        DATA(t757) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t757->has = abap_true.
        t757->value = t756.
        t754 = t757.
      ELSE.
        DATA t758 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t758.
        t754 = t758.
      ENDIF.
      t753 = t754.
      t752 = NEW zcl_lnt_iver_options( i_also = t753 ).
      CREATE OBJECT t752->zlnt_view_ownkeys_b0e8086400eb.
      t752->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t759.
      IF t752->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t752->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t759 ).
      ENDIF.
      CREATE OBJECT t752->zlnt_json_ownkeys_70e5fd461788.
      t752->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t760) = |also|.
      DATA t761 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t761.
      IF t752->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t752->zlnt_json_ownkeys_70e5fd461788->put( p0 = t760 p1 = t761 ).
      ENDIF.
      t750 = t752.
    ELSE.
      DATA t762 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t762.
      t750 = t762.
    ENDIF.
    t698 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t699 i_first = t706 i_opts = t750 ).
    result = t698.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d556_7450efba98d4.
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
