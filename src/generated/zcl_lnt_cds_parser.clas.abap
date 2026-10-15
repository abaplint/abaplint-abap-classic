* TS: src/cds/cds_parser.ts:11:1 CDSParser
CLASS zcl_lnt_cds_parser DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS parse IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_parser IMPLEMENTATION.
  METHOD parse.
    DATA(t1) = i_file.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zif_lnt_file.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zif_lnt_file.
    CLEAR t12.
    DATA(t13) = t1.
    t12 = t13.
    t11 = zcl_lnt_cds_lexer=>run( i_file = t12 ).
    t10 = t11.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    CREATE OBJECT t16.
    t15 = t16.
    DATA(t17) = t10.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t18.
    DATA t19 TYPE REF TO object.
    CLEAR t19.
    DATA(t20) = VALUE i( ).
    DO.
      t17->load( ).
      IF t20 >= lines( t17->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t17->items INDEX t20 + 1 INTO t19.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t18.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t19.
        DATA t22 TYPE REF TO object.
        CLEAR t22.
        t22 = t21->as_ref( ).
        t18 ?= t22.
      ELSE.
        t18 ?= t19.
      ENDIF.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t18.
      t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_lx_comment ).
      t23 = xsdbool( t24 = abap_false ).
      IF t23 = abap_true.
        DATA(t26) = t15.
        DATA(t27) = t18.
        t26->load( ).
        APPEND t27 TO t26->items.
        t26->save( ).
      ENDIF.
    ENDDO.
    DATA(t28) = t15.
    t14 = t28.
    t10 = t14.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    DATA(t31) = NEW zcl_lnt_cds_define_view( ).
    DATA(t32) = t10.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t34.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t34 = zcl_lnt_version_module=>default_release.
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
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t30 = zcl_lnt_combi=>run( i_runnable = t31 i_tokens = t32 i_version_or_release = t33 i_language_version_0e1d = t37 ).
    t29 = t30.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t40.
    DATA(t41) = t29.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    t42 = t43.
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = t40.
    IF t45 IS INITIAL.
      t44 = abap_true.
    ENDIF.
    t39 = t44.
    t38 = t39.
    IF t39 = abap_false.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = VALUE abap_bool( ).
      DATA t48 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t49.
      DATA(t50) = t29.
      t49 = t50.
      DATA t51 TYPE REF TO object.
      CLEAR t51.
      t49->load( ).
      CLEAR t51.
      READ TABLE t49->items INDEX 1 INTO t51.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      CLEAR t48.
      IF t51 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t52 ?= t51.
        DATA t53 TYPE REF TO object.
        CLEAR t53.
        t53 = t52->as_ref( ).
        t48 ?= t53.
      ELSE.
        t48 ?= t51.
      ENDIF.
      t47 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_expression_node ).
      t46 = xsdbool( t47 = abap_false ).
      t38 = t46.
    ENDIF.
    IF t38 = abap_true.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t54.
      DATA(t55) = NEW zcl_lnt_cds_define_abstract( ).
      DATA(t56) = t10.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      DATA t58 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t58.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t58 = zcl_lnt_version_module=>default_release.
      CLEAR t57.
      IF t58 IS BOUND.
        DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t59.
        DATA t60 TYPE REF TO object.
        CLEAR t60.
        CLEAR t59.
        t60 = t58.
        TRY.
            t57 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS NOT BOUND.
          TRY.
              t59 ?= t58.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t59 IS BOUND.
            t57 = t59->source( ).
          ENDIF.
          IF t57 IS NOT BOUND.
            CREATE OBJECT t57.
            t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t57->oval = t58.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t61.
      t54 = zcl_lnt_combi=>run( i_runnable = t55 i_tokens = t56 i_version_or_release = t57 i_language_version_0e1d = t61 ).
      t29 = t54.
    ENDIF.
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = VALUE abap_bool( ).
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t64.
    DATA(t65) = t29.
    t64 = t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    t66 = t67.
    DATA(t68) = VALUE abap_bool( ).
    DATA(t69) = t64.
    IF t69 IS INITIAL.
      t68 = abap_true.
    ENDIF.
    t63 = t68.
    t62 = t63.
    IF t63 = abap_false.
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = VALUE abap_bool( ).
      DATA t72 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t72.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t73.
      DATA(t74) = t29.
      t73 = t74.
      DATA t75 TYPE REF TO object.
      CLEAR t75.
      t73->load( ).
      CLEAR t75.
      READ TABLE t73->items INDEX 1 INTO t75.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      CLEAR t72.
      IF t75 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t76 ?= t75.
        DATA t77 TYPE REF TO object.
        CLEAR t77.
        t77 = t76->as_ref( ).
        t72 ?= t77.
      ELSE.
        t72 ?= t75.
      ENDIF.
      t71 = xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_expression_node ).
      t70 = xsdbool( t71 = abap_false ).
      t62 = t70.
    ENDIF.
    IF t62 = abap_true.
      DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t78.
      DATA(t79) = NEW zcl_lnt_cds_define_projection( ).
      DATA(t80) = t10.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      DATA t82 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t82.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t82 = zcl_lnt_version_module=>default_release.
      CLEAR t81.
      IF t82 IS BOUND.
        DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t83.
        DATA t84 TYPE REF TO object.
        CLEAR t84.
        CLEAR t83.
        t84 = t82.
        TRY.
            t81 ?= t84.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS NOT BOUND.
          TRY.
              t83 ?= t82.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t83 IS BOUND.
            t81 = t83->source( ).
          ENDIF.
          IF t81 IS NOT BOUND.
            CREATE OBJECT t81.
            t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t81->oval = t82.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t85.
      t78 = zcl_lnt_combi=>run( i_runnable = t79 i_tokens = t80 i_version_or_release = t81 i_language_version_0e1d = t85 ).
      t29 = t78.
    ENDIF.
    DATA(t86) = VALUE abap_bool( ).
    DATA(t87) = VALUE abap_bool( ).
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t88.
    DATA(t89) = t29.
    t88 = t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    t90 = t91.
    DATA(t92) = VALUE abap_bool( ).
    DATA(t93) = t88.
    IF t93 IS INITIAL.
      t92 = abap_true.
    ENDIF.
    t87 = t92.
    t86 = t87.
    IF t87 = abap_false.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = VALUE abap_bool( ).
      DATA t96 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t96.
      DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t97.
      DATA(t98) = t29.
      t97 = t98.
      DATA t99 TYPE REF TO object.
      CLEAR t99.
      t97->load( ).
      CLEAR t99.
      READ TABLE t97->items INDEX 1 INTO t99.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      CLEAR t96.
      IF t99 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t100 ?= t99.
        DATA t101 TYPE REF TO object.
        CLEAR t101.
        t101 = t100->as_ref( ).
        t96 ?= t101.
      ELSE.
        t96 ?= t99.
      ENDIF.
      t95 = xsdbool( t96 IS BOUND AND t96 IS INSTANCE OF zcl_lnt_expression_node ).
      t94 = xsdbool( t95 = abap_false ).
      t86 = t94.
    ENDIF.
    IF t86 = abap_true.
      DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t102.
      DATA(t103) = NEW zcl_lnt_cds_annotate( ).
      DATA(t104) = t10.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      DATA t106 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t106.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t106 = zcl_lnt_version_module=>default_release.
      CLEAR t105.
      IF t106 IS BOUND.
        DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t107.
        DATA t108 TYPE REF TO object.
        CLEAR t108.
        CLEAR t107.
        t108 = t106.
        TRY.
            t105 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS NOT BOUND.
          TRY.
              t107 ?= t106.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t107 IS BOUND.
            t105 = t107->source( ).
          ENDIF.
          IF t105 IS NOT BOUND.
            CREATE OBJECT t105.
            t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t105->oval = t106.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t109.
      t102 = zcl_lnt_combi=>run( i_runnable = t103 i_tokens = t104 i_version_or_release = t105 i_language_version_0e1d = t109 ).
      t29 = t102.
    ENDIF.
    DATA(t110) = VALUE abap_bool( ).
    DATA(t111) = VALUE abap_bool( ).
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t112.
    DATA(t113) = t29.
    t112 = t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    t114 = t115.
    DATA(t116) = VALUE abap_bool( ).
    DATA(t117) = t112.
    IF t117 IS INITIAL.
      t116 = abap_true.
    ENDIF.
    t111 = t116.
    t110 = t111.
    IF t111 = abap_false.
      DATA(t118) = VALUE abap_bool( ).
      DATA(t119) = VALUE abap_bool( ).
      DATA t120 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t120.
      DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t121.
      DATA(t122) = t29.
      t121 = t122.
      DATA t123 TYPE REF TO object.
      CLEAR t123.
      t121->load( ).
      CLEAR t123.
      READ TABLE t121->items INDEX 1 INTO t123.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      CLEAR t120.
      IF t123 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t124 ?= t123.
        DATA t125 TYPE REF TO object.
        CLEAR t125.
        t125 = t124->as_ref( ).
        t120 ?= t125.
      ELSE.
        t120 ?= t123.
      ENDIF.
      t119 = xsdbool( t120 IS BOUND AND t120 IS INSTANCE OF zcl_lnt_expression_node ).
      t118 = xsdbool( t119 = abap_false ).
      t110 = t118.
    ENDIF.
    IF t110 = abap_true.
      DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t126.
      DATA(t127) = NEW zcl_lnt_cds_define_custom( ).
      DATA(t128) = t10.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      DATA t130 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t130.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t130 = zcl_lnt_version_module=>default_release.
      CLEAR t129.
      IF t130 IS BOUND.
        DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t131.
        DATA t132 TYPE REF TO object.
        CLEAR t132.
        CLEAR t131.
        t132 = t130.
        TRY.
            t129 ?= t132.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t129 IS NOT BOUND.
          TRY.
              t131 ?= t130.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t131 IS BOUND.
            t129 = t131->source( ).
          ENDIF.
          IF t129 IS NOT BOUND.
            CREATE OBJECT t129.
            t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t129->oval = t130.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t133.
      t126 = zcl_lnt_combi=>run( i_runnable = t127 i_tokens = t128 i_version_or_release = t129 i_language_version_0e1d = t133 ).
      t29 = t126.
    ENDIF.
    DATA(t134) = VALUE abap_bool( ).
    DATA(t135) = VALUE abap_bool( ).
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t136.
    DATA(t137) = t29.
    t136 = t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    t138 = t139.
    DATA(t140) = VALUE abap_bool( ).
    DATA(t141) = t136.
    IF t141 IS INITIAL.
      t140 = abap_true.
    ENDIF.
    t135 = t140.
    t134 = t135.
    IF t135 = abap_false.
      DATA(t142) = VALUE abap_bool( ).
      DATA(t143) = VALUE abap_bool( ).
      DATA t144 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t144.
      DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t145.
      DATA(t146) = t29.
      t145 = t146.
      DATA t147 TYPE REF TO object.
      CLEAR t147.
      t145->load( ).
      CLEAR t147.
      READ TABLE t145->items INDEX 1 INTO t147.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      CLEAR t144.
      IF t147 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t148 ?= t147.
        DATA t149 TYPE REF TO object.
        CLEAR t149.
        t149 = t148->as_ref( ).
        t144 ?= t149.
      ELSE.
        t144 ?= t147.
      ENDIF.
      t143 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_expression_node ).
      t142 = xsdbool( t143 = abap_false ).
      t134 = t142.
    ENDIF.
    IF t134 = abap_true.
      DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t150.
      DATA(t151) = NEW zcl_lnt_cds_dfn_tbl_fnctn( ).
      DATA(t152) = t10.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      DATA t154 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t154.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t154 = zcl_lnt_version_module=>default_release.
      CLEAR t153.
      IF t154 IS BOUND.
        DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t155.
        DATA t156 TYPE REF TO object.
        CLEAR t156.
        CLEAR t155.
        t156 = t154.
        TRY.
            t153 ?= t156.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t153 IS NOT BOUND.
          TRY.
              t155 ?= t154.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t155 IS BOUND.
            t153 = t155->source( ).
          ENDIF.
          IF t153 IS NOT BOUND.
            CREATE OBJECT t153.
            t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t153->oval = t154.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t157.
      t150 = zcl_lnt_combi=>run( i_runnable = t151 i_tokens = t152 i_version_or_release = t153 i_language_version_0e1d = t157 ).
      t29 = t150.
    ENDIF.
    DATA(t158) = VALUE abap_bool( ).
    DATA(t159) = VALUE abap_bool( ).
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t160.
    DATA(t161) = t29.
    t160 = t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    t162 = t163.
    DATA(t164) = VALUE abap_bool( ).
    DATA(t165) = t160.
    IF t165 IS INITIAL.
      t164 = abap_true.
    ENDIF.
    t159 = t164.
    t158 = t159.
    IF t159 = abap_false.
      DATA(t166) = VALUE abap_bool( ).
      DATA(t167) = VALUE abap_bool( ).
      DATA t168 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t168.
      DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t169.
      DATA(t170) = t29.
      t169 = t170.
      DATA t171 TYPE REF TO object.
      CLEAR t171.
      t169->load( ).
      CLEAR t171.
      READ TABLE t169->items INDEX 1 INTO t171.
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t172.
      CLEAR t168.
      IF t171 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t172 ?= t171.
        DATA t173 TYPE REF TO object.
        CLEAR t173.
        t173 = t172->as_ref( ).
        t168 ?= t173.
      ELSE.
        t168 ?= t171.
      ENDIF.
      t167 = xsdbool( t168 IS BOUND AND t168 IS INSTANCE OF zcl_lnt_expression_node ).
      t166 = xsdbool( t167 = abap_false ).
      t158 = t166.
    ENDIF.
    IF t158 = abap_true.
      DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t174.
      DATA(t175) = NEW zcl_lnt_cds_extend_view( ).
      DATA(t176) = t10.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      DATA t178 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t178.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t178 = zcl_lnt_version_module=>default_release.
      CLEAR t177.
      IF t178 IS BOUND.
        DATA t179 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t179.
        DATA t180 TYPE REF TO object.
        CLEAR t180.
        CLEAR t179.
        t180 = t178.
        TRY.
            t177 ?= t180.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t177 IS NOT BOUND.
          TRY.
              t179 ?= t178.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t179 IS BOUND.
            t177 = t179->source( ).
          ENDIF.
          IF t177 IS NOT BOUND.
            CREATE OBJECT t177.
            t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t177->oval = t178.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t181.
      t174 = zcl_lnt_combi=>run( i_runnable = t175 i_tokens = t176 i_version_or_release = t177 i_language_version_0e1d = t181 ).
      t29 = t174.
    ENDIF.
    DATA(t182) = VALUE abap_bool( ).
    DATA(t183) = VALUE abap_bool( ).
    DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t184.
    DATA(t185) = t29.
    t184 = t185.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    t186 = t187.
    DATA(t188) = VALUE abap_bool( ).
    DATA(t189) = t184.
    IF t189 IS INITIAL.
      t188 = abap_true.
    ENDIF.
    t183 = t188.
    t182 = t183.
    IF t183 = abap_false.
      DATA(t190) = VALUE abap_bool( ).
      DATA(t191) = VALUE abap_bool( ).
      DATA t192 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t192.
      DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t193.
      DATA(t194) = t29.
      t193 = t194.
      DATA t195 TYPE REF TO object.
      CLEAR t195.
      t193->load( ).
      CLEAR t195.
      READ TABLE t193->items INDEX 1 INTO t195.
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t196.
      CLEAR t192.
      IF t195 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t196 ?= t195.
        DATA t197 TYPE REF TO object.
        CLEAR t197.
        t197 = t196->as_ref( ).
        t192 ?= t197.
      ELSE.
        t192 ?= t195.
      ENDIF.
      t191 = xsdbool( t192 IS BOUND AND t192 IS INSTANCE OF zcl_lnt_expression_node ).
      t190 = xsdbool( t191 = abap_false ).
      t182 = t190.
    ENDIF.
    IF t182 = abap_true.
      DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t198.
      DATA(t199) = NEW zcl_lnt_cds_define_hierarchy( ).
      DATA(t200) = t10.
      DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t201.
      DATA t202 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t202.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t202 = zcl_lnt_version_module=>default_release.
      CLEAR t201.
      IF t202 IS BOUND.
        DATA t203 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t203.
        DATA t204 TYPE REF TO object.
        CLEAR t204.
        CLEAR t203.
        t204 = t202.
        TRY.
            t201 ?= t204.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t201 IS NOT BOUND.
          TRY.
              t203 ?= t202.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t203 IS BOUND.
            t201 = t203->source( ).
          ENDIF.
          IF t201 IS NOT BOUND.
            CREATE OBJECT t201.
            t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t201->oval = t202.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t205.
      t198 = zcl_lnt_combi=>run( i_runnable = t199 i_tokens = t200 i_version_or_release = t201 i_language_version_0e1d = t205 ).
      t29 = t198.
    ENDIF.
    DATA(t206) = VALUE abap_bool( ).
    DATA(t207) = VALUE abap_bool( ).
    DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t208.
    DATA(t209) = t29.
    t208 = t209.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    t210 = t211.
    DATA(t212) = VALUE abap_bool( ).
    DATA(t213) = t208.
    IF t213 IS INITIAL.
      t212 = abap_true.
    ENDIF.
    t207 = t212.
    t206 = t207.
    IF t207 = abap_false.
      DATA(t214) = VALUE abap_bool( ).
      DATA(t215) = VALUE abap_bool( ).
      DATA t216 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t216.
      DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t217.
      DATA(t218) = t29.
      t217 = t218.
      DATA t219 TYPE REF TO object.
      CLEAR t219.
      t217->load( ).
      CLEAR t219.
      READ TABLE t217->items INDEX 1 INTO t219.
      DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t220.
      CLEAR t216.
      IF t219 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t220 ?= t219.
        DATA t221 TYPE REF TO object.
        CLEAR t221.
        t221 = t220->as_ref( ).
        t216 ?= t221.
      ELSE.
        t216 ?= t219.
      ENDIF.
      t215 = xsdbool( t216 IS BOUND AND t216 IS INSTANCE OF zcl_lnt_expression_node ).
      t214 = xsdbool( t215 = abap_false ).
      t206 = t214.
    ENDIF.
    IF t206 = abap_true.
      DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t222.
      DATA(t223) = NEW zcl_lnt_cds_dfn_extrnl_entty( ).
      DATA(t224) = t10.
      DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t225.
      DATA t226 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t226.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t226 = zcl_lnt_version_module=>default_release.
      CLEAR t225.
      IF t226 IS BOUND.
        DATA t227 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t227.
        DATA t228 TYPE REF TO object.
        CLEAR t228.
        CLEAR t227.
        t228 = t226.
        TRY.
            t225 ?= t228.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS NOT BOUND.
          TRY.
              t227 ?= t226.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t227 IS BOUND.
            t225 = t227->source( ).
          ENDIF.
          IF t225 IS NOT BOUND.
            CREATE OBJECT t225.
            t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t225->oval = t226.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t229.
      t222 = zcl_lnt_combi=>run( i_runnable = t223 i_tokens = t224 i_version_or_release = t225 i_language_version_0e1d = t229 ).
      t29 = t222.
    ENDIF.
    DATA(t230) = VALUE abap_bool( ).
    DATA(t231) = VALUE abap_bool( ).
    DATA t232 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t232.
    DATA(t233) = t29.
    t232 = t233.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    t234 = t235.
    DATA(t236) = VALUE abap_bool( ).
    DATA(t237) = t232.
    IF t237 IS INITIAL.
      t236 = abap_true.
    ENDIF.
    t231 = t236.
    t230 = t231.
    IF t231 = abap_false.
      DATA(t238) = VALUE abap_bool( ).
      DATA(t239) = VALUE abap_bool( ).
      DATA t240 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t240.
      DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t241.
      DATA(t242) = t29.
      t241 = t242.
      DATA t243 TYPE REF TO object.
      CLEAR t243.
      t241->load( ).
      CLEAR t243.
      READ TABLE t241->items INDEX 1 INTO t243.
      DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t244.
      CLEAR t240.
      IF t243 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t244 ?= t243.
        DATA t245 TYPE REF TO object.
        CLEAR t245.
        t245 = t244->as_ref( ).
        t240 ?= t245.
      ELSE.
        t240 ?= t243.
      ENDIF.
      t239 = xsdbool( t240 IS BOUND AND t240 IS INSTANCE OF zcl_lnt_expression_node ).
      t238 = xsdbool( t239 = abap_false ).
      t230 = t238.
    ENDIF.
    IF t230 = abap_true.
      DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t246.
      DATA(t247) = NEW zcl_lnt_cds_dfn_tbl_entty( ).
      DATA(t248) = t10.
      DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t249.
      DATA t250 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t250.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t250 = zcl_lnt_version_module=>default_release.
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
      DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t253.
      t246 = zcl_lnt_combi=>run( i_runnable = t247 i_tokens = t248 i_version_or_release = t249 i_language_version_0e1d = t253 ).
      t29 = t246.
    ENDIF.
    DATA(t254) = VALUE abap_bool( ).
    DATA(t255) = VALUE abap_bool( ).
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t256.
    DATA(t257) = t29.
    t256 = t257.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    t258 = t259.
    DATA(t260) = VALUE abap_bool( ).
    DATA(t261) = t256.
    IF t261 IS INITIAL.
      t260 = abap_true.
    ENDIF.
    t255 = t260.
    t254 = t255.
    IF t255 = abap_false.
      DATA(t262) = VALUE abap_bool( ).
      DATA(t263) = VALUE abap_bool( ).
      DATA t264 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t264.
      DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t265.
      DATA(t266) = t29.
      t265 = t266.
      DATA t267 TYPE REF TO object.
      CLEAR t267.
      t265->load( ).
      CLEAR t267.
      READ TABLE t265->items INDEX 1 INTO t267.
      DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t268.
      CLEAR t264.
      IF t267 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t268 ?= t267.
        DATA t269 TYPE REF TO object.
        CLEAR t269.
        t269 = t268->as_ref( ).
        t264 ?= t269.
      ELSE.
        t264 ?= t267.
      ENDIF.
      t263 = xsdbool( t264 IS BOUND AND t264 IS INSTANCE OF zcl_lnt_expression_node ).
      t262 = xsdbool( t263 = abap_false ).
      t254 = t262.
    ENDIF.
    IF t254 = abap_true.
      DATA t270 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t270.
      result = t270.
      RETURN.
    ENDIF.
    DATA t271 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t271.
    DATA(t272) = abap_true.
    IF t272 = abap_true.
      DATA t273 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t273.
      DATA t274 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t274.
      DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t275.
      DATA(t276) = t29.
      t275 = t276.
      DATA t277 TYPE REF TO object.
      CLEAR t277.
      t275->load( ).
      CLEAR t277.
      READ TABLE t275->items INDEX 1 INTO t277.
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t278.
      CLEAR t274.
      IF t277 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t278 ?= t277.
        DATA t279 TYPE REF TO object.
        CLEAR t279.
        t279 = t278->as_ref( ).
        t274 ?= t279.
      ELSE.
        t274 ?= t277.
      ENDIF.
      DATA t280 TYPE REF TO object.
      CLEAR t280.
      t280 = t274.
      t273 ?= t280.
      t271 = t273.
    ELSE.
      DATA t281 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t281.
      t271 = t281.
    ENDIF.
    result = t271.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1073_c7888841318b.
  ENDMETHOD.
ENDCLASS.
