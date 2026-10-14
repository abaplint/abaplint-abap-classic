* TS: src/abap/2_statements/expressions/sql_function.ts.module module
CLASS zcl_lnt_sql_function_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CONSTANTS variadic TYPE i VALUE -1.
    CLASS-DATA sql_function_defs TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA sql_named_function_defs TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA sql_spatial_function_defs TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA sql_spatial_aggregate_defs TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA zlnt_builtin_init_070f1fc1b1a8 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_916c47d62a99.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_function_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_916c47d62a99.
    IF zlnt_builtin_init_070f1fc1b1a8 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_070f1fc1b1a8 = abap_true.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA t5 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t5.
    DATA(t6) = |abs|.
    DATA(t7) = CONV int8( 1 ).
    DATA t8 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t10.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t10 = zcl_lnt_version_module=>release_b8cd.
    DATA(t11) = |v740sp05|.
    t9 = t10->get( p0 = t11 ).
    t8 = t9.
    t5 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t6 i_f1 = t7 i_f2 = t8 ).
    APPEND t5 TO t4->items.
    DATA(t12) = t2.
    DATA t13 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t13.
    DATA(t14) = |ceil|.
    DATA(t15) = CONV int8( 1 ).
    DATA t16 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t18.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t18 = zcl_lnt_version_module=>release_b8cd.
    DATA(t19) = |v740sp05|.
    t17 = t18->get( p0 = t19 ).
    t16 = t17.
    t13 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t14 i_f1 = t15 i_f2 = t16 ).
    APPEND t13 TO t12->items.
    DATA(t20) = t2.
    DATA t21 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t21.
    DATA(t22) = |floor|.
    DATA(t23) = CONV int8( 1 ).
    DATA t24 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t26.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t26 = zcl_lnt_version_module=>release_b8cd.
    DATA(t27) = |v740sp05|.
    t25 = t26->get( p0 = t27 ).
    t24 = t25.
    t21 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t22 i_f1 = t23 i_f2 = t24 ).
    APPEND t21 TO t20->items.
    DATA(t28) = t2.
    DATA t29 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t29.
    DATA(t30) = |div|.
    DATA(t31) = CONV int8( 2 ).
    DATA t32 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t34.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t34 = zcl_lnt_version_module=>release_b8cd.
    DATA(t35) = |v740sp05|.
    t33 = t34->get( p0 = t35 ).
    t32 = t33.
    t29 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t30 i_f1 = t31 i_f2 = t32 ).
    APPEND t29 TO t28->items.
    DATA(t36) = t2.
    DATA t37 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t37.
    DATA(t38) = |mod|.
    DATA(t39) = CONV int8( 2 ).
    DATA t40 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t40.
    DATA t41 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t42.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t42 = zcl_lnt_version_module=>release_b8cd.
    DATA(t43) = |v740sp05|.
    t41 = t42->get( p0 = t43 ).
    t40 = t41.
    t37 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t38 i_f1 = t39 i_f2 = t40 ).
    APPEND t37 TO t36->items.
    DATA(t44) = t2.
    DATA t45 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t45.
    DATA(t46) = |coalesce|.
    DATA t47 TYPE int8.
    DATA(t48) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t47 = t48.
    DATA t49 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t49.
    DATA t50 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t51.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t51 = zcl_lnt_version_module=>release_b8cd.
    DATA(t52) = |v740sp05|.
    t50 = t51->get( p0 = t52 ).
    t49 = t50.
    t45 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t46 i_f1 = t47 i_f2 = t49 ).
    APPEND t45 TO t44->items.
    DATA(t53) = t2.
    DATA t54 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t54.
    DATA(t55) = |concat|.
    DATA(t56) = CONV int8( 2 ).
    DATA t57 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t57.
    DATA t58 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t59.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t59 = zcl_lnt_version_module=>release_b8cd.
    DATA(t60) = |v750|.
    t58 = t59->get( p0 = t60 ).
    t57 = t58.
    t54 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t55 i_f1 = t56 i_f2 = t57 ).
    APPEND t54 TO t53->items.
    DATA(t61) = t2.
    DATA t62 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t62.
    DATA(t63) = |length|.
    DATA(t64) = CONV int8( 1 ).
    DATA t65 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t65.
    DATA t66 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t67.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t67 = zcl_lnt_version_module=>release_b8cd.
    DATA(t68) = |v750|.
    t66 = t67->get( p0 = t68 ).
    t65 = t66.
    t62 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t63 i_f1 = t64 i_f2 = t65 ).
    APPEND t62 TO t61->items.
    DATA(t69) = t2.
    DATA t70 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t70.
    DATA(t71) = |ltrim|.
    DATA(t72) = CONV int8( 2 ).
    DATA t73 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t73.
    DATA t74 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t75.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t75 = zcl_lnt_version_module=>release_b8cd.
    DATA(t76) = |v750|.
    t74 = t75->get( p0 = t76 ).
    t73 = t74.
    t70 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t71 i_f1 = t72 i_f2 = t73 ).
    APPEND t70 TO t69->items.
    DATA(t77) = t2.
    DATA t78 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t78.
    DATA(t79) = |rtrim|.
    DATA(t80) = CONV int8( 2 ).
    DATA t81 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t81.
    DATA t82 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t83.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t83 = zcl_lnt_version_module=>release_b8cd.
    DATA(t84) = |v750|.
    t82 = t83->get( p0 = t84 ).
    t81 = t82.
    t78 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t79 i_f1 = t80 i_f2 = t81 ).
    APPEND t78 TO t77->items.
    DATA(t85) = t2.
    DATA t86 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t86.
    DATA(t87) = |right|.
    DATA(t88) = CONV int8( 2 ).
    DATA t89 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t89.
    DATA t90 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t91.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t91 = zcl_lnt_version_module=>release_b8cd.
    DATA(t92) = |v750|.
    t90 = t91->get( p0 = t92 ).
    t89 = t90.
    t86 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t87 i_f1 = t88 i_f2 = t89 ).
    APPEND t86 TO t85->items.
    DATA(t93) = t2.
    DATA t94 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t94.
    DATA(t95) = |replace|.
    DATA(t96) = CONV int8( 3 ).
    DATA t97 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t97.
    DATA t98 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t99.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t99 = zcl_lnt_version_module=>release_b8cd.
    DATA(t100) = |v750|.
    t98 = t99->get( p0 = t100 ).
    t97 = t98.
    t94 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t95 i_f1 = t96 i_f2 = t97 ).
    APPEND t94 TO t93->items.
    DATA(t101) = t2.
    DATA t102 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t102.
    DATA(t103) = |round|.
    DATA(t104) = CONV int8( 2 ).
    DATA t105 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t105.
    DATA t106 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t107.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t107 = zcl_lnt_version_module=>release_b8cd.
    DATA(t108) = |v750|.
    t106 = t107->get( p0 = t108 ).
    t105 = t106.
    t102 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t103 i_f1 = t104 i_f2 = t105 ).
    APPEND t102 TO t101->items.
    DATA(t109) = t2.
    DATA t110 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t110.
    DATA(t111) = |substring|.
    DATA(t112) = CONV int8( 3 ).
    DATA t113 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t113.
    DATA t114 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t115.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t115 = zcl_lnt_version_module=>release_b8cd.
    DATA(t116) = |v750|.
    t114 = t115->get( p0 = t116 ).
    t113 = t114.
    t110 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t111 i_f1 = t112 i_f2 = t113 ).
    APPEND t110 TO t109->items.
    DATA(t117) = t2.
    DATA t118 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t118.
    DATA(t119) = |lpad|.
    DATA(t120) = CONV int8( 3 ).
    DATA t121 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t121.
    DATA t122 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t123.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t123 = zcl_lnt_version_module=>release_b8cd.
    DATA(t124) = |v750|.
    t122 = t123->get( p0 = t124 ).
    t121 = t122.
    t118 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t119 i_f1 = t120 i_f2 = t121 ).
    APPEND t118 TO t117->items.
    DATA(t125) = t2.
    DATA t126 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t126.
    DATA(t127) = |instr|.
    DATA(t128) = CONV int8( 2 ).
    DATA t129 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t129.
    DATA t130 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t131.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t131 = zcl_lnt_version_module=>release_b8cd.
    DATA(t132) = |v750|.
    t130 = t131->get( p0 = t132 ).
    t129 = t130.
    t126 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t127 i_f1 = t128 i_f2 = t129 ).
    APPEND t126 TO t125->items.
    DATA(t133) = t2.
    DATA t134 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t134.
    DATA(t135) = |concat_with_space|.
    DATA(t136) = CONV int8( 3 ).
    DATA t137 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t137.
    DATA t138 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t139.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t139 = zcl_lnt_version_module=>release_b8cd.
    DATA(t140) = |v751|.
    t138 = t139->get( p0 = t140 ).
    t137 = t138.
    t134 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t135 i_f1 = t136 i_f2 = t137 ).
    APPEND t134 TO t133->items.
    DATA(t141) = t2.
    DATA t142 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t142.
    DATA(t143) = |rpad|.
    DATA(t144) = CONV int8( 3 ).
    DATA t145 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t145.
    DATA t146 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t147.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t147 = zcl_lnt_version_module=>release_b8cd.
    DATA(t148) = |v751|.
    t146 = t147->get( p0 = t148 ).
    t145 = t146.
    t142 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t143 i_f1 = t144 i_f2 = t145 ).
    APPEND t142 TO t141->items.
    DATA(t149) = t2.
    DATA t150 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t150.
    DATA(t151) = |left|.
    DATA(t152) = CONV int8( 2 ).
    DATA t153 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t153.
    DATA t154 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t155.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t155 = zcl_lnt_version_module=>release_b8cd.
    DATA(t156) = |v751|.
    t154 = t155->get( p0 = t156 ).
    t153 = t154.
    t150 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t151 i_f1 = t152 i_f2 = t153 ).
    APPEND t150 TO t149->items.
    DATA(t157) = t2.
    DATA t158 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t158.
    DATA(t159) = |lower|.
    DATA(t160) = CONV int8( 1 ).
    DATA t161 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t161.
    DATA t162 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t163.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t163 = zcl_lnt_version_module=>release_b8cd.
    DATA(t164) = |v751|.
    t162 = t163->get( p0 = t164 ).
    t161 = t162.
    t158 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t159 i_f1 = t160 i_f2 = t161 ).
    APPEND t158 TO t157->items.
    DATA(t165) = t2.
    DATA t166 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t166.
    DATA(t167) = |upper|.
    DATA(t168) = CONV int8( 1 ).
    DATA t169 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t169.
    DATA t170 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t171.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t171 = zcl_lnt_version_module=>release_b8cd.
    DATA(t172) = |v751|.
    t170 = t171->get( p0 = t172 ).
    t169 = t170.
    t166 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t167 i_f1 = t168 i_f2 = t169 ).
    APPEND t166 TO t165->items.
    DATA(t173) = t2.
    DATA t174 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t174.
    DATA(t175) = |division|.
    DATA(t176) = CONV int8( 3 ).
    DATA t177 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t177.
    DATA t178 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t179.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t179 = zcl_lnt_version_module=>release_b8cd.
    DATA(t180) = |v751|.
    t178 = t179->get( p0 = t180 ).
    t177 = t178.
    t174 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t175 i_f1 = t176 i_f2 = t177 ).
    APPEND t174 TO t173->items.
    DATA(t181) = t2.
    DATA t182 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t182.
    DATA(t183) = |bintohex|.
    DATA(t184) = CONV int8( 1 ).
    DATA t185 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t185.
    DATA t186 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t187.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t187 = zcl_lnt_version_module=>release_b8cd.
    DATA(t188) = |v752|.
    t186 = t187->get( p0 = t188 ).
    t185 = t186.
    t182 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t183 i_f1 = t184 i_f2 = t185 ).
    APPEND t182 TO t181->items.
    DATA(t189) = t2.
    DATA t190 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t190.
    DATA(t191) = |hextobin|.
    DATA(t192) = CONV int8( 1 ).
    DATA t193 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t193.
    DATA t194 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t195.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t195 = zcl_lnt_version_module=>release_b8cd.
    DATA(t196) = |v752|.
    t194 = t195->get( p0 = t196 ).
    t193 = t194.
    t190 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t191 i_f1 = t192 i_f2 = t193 ).
    APPEND t190 TO t189->items.
    DATA(t197) = t2.
    DATA t198 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t198.
    DATA(t199) = |dats_is_valid|.
    DATA(t200) = CONV int8( 1 ).
    DATA t201 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t201.
    DATA t202 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t203.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t203 = zcl_lnt_version_module=>release_b8cd.
    DATA(t204) = |v754|.
    t202 = t203->get( p0 = t204 ).
    t201 = t202.
    t198 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t199 i_f1 = t200 i_f2 = t201 ).
    APPEND t198 TO t197->items.
    DATA(t205) = t2.
    DATA t206 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t206.
    DATA(t207) = |dats_days_between|.
    DATA(t208) = CONV int8( 2 ).
    DATA t209 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t209.
    DATA t210 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t211.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t211 = zcl_lnt_version_module=>release_b8cd.
    DATA(t212) = |v754|.
    t210 = t211->get( p0 = t212 ).
    t209 = t210.
    t206 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t207 i_f1 = t208 i_f2 = t209 ).
    APPEND t206 TO t205->items.
    DATA(t213) = t2.
    DATA t214 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t214.
    DATA(t215) = |dats_add_days|.
    DATA(t216) = CONV int8( 2 ).
    DATA t217 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t217.
    DATA t218 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t218.
    DATA t219 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t219.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t219 = zcl_lnt_version_module=>release_b8cd.
    DATA(t220) = |v754|.
    t218 = t219->get( p0 = t220 ).
    t217 = t218.
    t214 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t215 i_f1 = t216 i_f2 = t217 ).
    APPEND t214 TO t213->items.
    DATA(t221) = t2.
    DATA t222 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t222.
    DATA(t223) = |dats_add_months|.
    DATA(t224) = CONV int8( 2 ).
    DATA t225 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t225.
    DATA t226 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t227.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t227 = zcl_lnt_version_module=>release_b8cd.
    DATA(t228) = |v754|.
    t226 = t227->get( p0 = t228 ).
    t225 = t226.
    t222 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t223 i_f1 = t224 i_f2 = t225 ).
    APPEND t222 TO t221->items.
    DATA(t229) = t2.
    DATA t230 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t230.
    DATA(t231) = |uuid|.
    DATA(t232) = CONV int8( 0 ).
    DATA t233 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t233.
    DATA t234 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t235.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t235 = zcl_lnt_version_module=>release_b8cd.
    DATA(t236) = |v754|.
    t234 = t235->get( p0 = t236 ).
    t233 = t234.
    t230 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t231 i_f1 = t232 i_f2 = t233 ).
    APPEND t230 TO t229->items.
    DATA(t237) = t2.
    DATA t238 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t238.
    DATA(t239) = |utcl_current|.
    DATA(t240) = CONV int8( 0 ).
    DATA t241 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t241.
    DATA t242 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t243.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t243 = zcl_lnt_version_module=>release_b8cd.
    DATA(t244) = |v754|.
    t242 = t243->get( p0 = t244 ).
    t241 = t242.
    t238 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t239 i_f1 = t240 i_f2 = t241 ).
    APPEND t238 TO t237->items.
    DATA(t245) = t2.
    DATA t246 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t246.
    DATA(t247) = |tstmp_current_utctimestamp|.
    DATA(t248) = CONV int8( 0 ).
    DATA t249 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t249.
    DATA t250 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t251.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t251 = zcl_lnt_version_module=>release_b8cd.
    DATA(t252) = |v757|.
    t250 = t251->get( p0 = t252 ).
    t249 = t250.
    t246 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t247 i_f1 = t248 i_f2 = t249 ).
    APPEND t246 TO t245->items.
    DATA(t253) = t2.
    DATA t254 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t254.
    DATA(t255) = |tstmp_is_valid|.
    DATA(t256) = CONV int8( 1 ).
    DATA t257 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t257.
    DATA t258 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t259.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t259 = zcl_lnt_version_module=>release_b8cd.
    DATA(t260) = |v757|.
    t258 = t259->get( p0 = t260 ).
    t257 = t258.
    t254 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t255 i_f1 = t256 i_f2 = t257 ).
    APPEND t254 TO t253->items.
    DATA(t261) = t2.
    DATA t262 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t262.
    DATA(t263) = |tims_is_valid|.
    DATA(t264) = CONV int8( 1 ).
    DATA t265 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t265.
    DATA t266 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t266.
    DATA t267 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t267.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t267 = zcl_lnt_version_module=>release_b8cd.
    DATA(t268) = |v757|.
    t266 = t267->get( p0 = t268 ).
    t265 = t266.
    t262 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t263 i_f1 = t264 i_f2 = t265 ).
    APPEND t262 TO t261->items.
    DATA(t269) = t2.
    DATA t270 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t270.
    DATA(t271) = |utcl_add_seconds|.
    DATA(t272) = CONV int8( 2 ).
    DATA t273 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t273.
    DATA t274 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t275.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t275 = zcl_lnt_version_module=>release_b8cd.
    DATA(t276) = |v757|.
    t274 = t275->get( p0 = t276 ).
    t273 = t274.
    t270 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t271 i_f1 = t272 i_f2 = t273 ).
    APPEND t270 TO t269->items.
    DATA(t277) = t2.
    DATA t278 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t278.
    DATA(t279) = |utcl_seconds_between|.
    DATA(t280) = CONV int8( 2 ).
    DATA t281 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t281.
    DATA t282 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t282.
    DATA t283 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t283.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t283 = zcl_lnt_version_module=>release_b8cd.
    DATA(t284) = |v757|.
    t282 = t283->get( p0 = t284 ).
    t281 = t282.
    t278 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t279 i_f1 = t280 i_f2 = t281 ).
    APPEND t278 TO t277->items.
    DATA(t285) = t2.
    DATA t286 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t286.
    DATA(t287) = |datn_days_between|.
    DATA(t288) = CONV int8( 2 ).
    DATA t289 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t289.
    DATA t290 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t290.
    DATA t291 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t291.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t291 = zcl_lnt_version_module=>release_b8cd.
    DATA(t292) = |v757|.
    t290 = t291->get( p0 = t292 ).
    t289 = t290.
    t286 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t287 i_f1 = t288 i_f2 = t289 ).
    APPEND t286 TO t285->items.
    DATA(t293) = t2.
    DATA t294 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t294.
    DATA(t295) = |datn_add_days|.
    DATA(t296) = CONV int8( 2 ).
    DATA t297 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t297.
    DATA t298 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t298.
    DATA t299 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t299.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t299 = zcl_lnt_version_module=>release_b8cd.
    DATA(t300) = |v757|.
    t298 = t299->get( p0 = t300 ).
    t297 = t298.
    t294 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t295 i_f1 = t296 i_f2 = t297 ).
    APPEND t294 TO t293->items.
    DATA(t301) = t2.
    DATA t302 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t302.
    DATA(t303) = |datn_add_months|.
    DATA(t304) = CONV int8( 2 ).
    DATA t305 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t305.
    DATA t306 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t306.
    DATA t307 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t307.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t307 = zcl_lnt_version_module=>release_b8cd.
    DATA(t308) = |v757|.
    t306 = t307->get( p0 = t308 ).
    t305 = t306.
    t302 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t303 i_f1 = t304 i_f2 = t305 ).
    APPEND t302 TO t301->items.
    DATA(t309) = t2.
    DATA t310 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t310.
    DATA(t311) = |as_geo_json|.
    DATA(t312) = CONV int8( 1 ).
    DATA t313 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t313.
    DATA t314 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t314.
    DATA t315 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t315.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t315 = zcl_lnt_version_module=>release_b8cd.
    DATA(t316) = |v757|.
    t314 = t315->get( p0 = t316 ).
    t313 = t314.
    t310 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t311 i_f1 = t312 i_f2 = t313 ).
    APPEND t310 TO t309->items.
    DATA(t317) = t2.
    DATA t318 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t318.
    DATA(t319) = |allow_precision_loss|.
    DATA(t320) = CONV int8( 1 ).
    DATA t321 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t321.
    DATA t322 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t322.
    DATA t323 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t323.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t323 = zcl_lnt_version_module=>release_b8cd.
    DATA(t324) = |v757|.
    t322 = t323->get( p0 = t324 ).
    t321 = t322.
    t318 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t319 i_f1 = t320 i_f2 = t321 ).
    APPEND t318 TO t317->items.
    DATA(t325) = t2.
    DATA t326 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t326.
    DATA(t327) = |to_clob|.
    DATA(t328) = CONV int8( 1 ).
    DATA t329 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t329.
    DATA t330 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t330.
    DATA t331 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t331.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t331 = zcl_lnt_version_module=>release_b8cd.
    DATA(t332) = |v757|.
    t330 = t331->get( p0 = t332 ).
    t329 = t330.
    t326 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t327 i_f1 = t328 i_f2 = t329 ).
    APPEND t326 TO t325->items.
    DATA(t333) = t2.
    DATA t334 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t334.
    DATA(t335) = |to_blob|.
    DATA(t336) = CONV int8( 1 ).
    DATA t337 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t337.
    DATA t338 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t339.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t339 = zcl_lnt_version_module=>release_b8cd.
    DATA(t340) = |v757|.
    t338 = t339->get( p0 = t340 ).
    t337 = t338.
    t334 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t335 i_f1 = t336 i_f2 = t337 ).
    APPEND t334 TO t333->items.
    DATA(t341) = t2.
    DATA t342 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t342.
    DATA(t343) = |grouping|.
    DATA(t344) = CONV int8( 1 ).
    DATA t345 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t345.
    DATA t346 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t346.
    DATA t347 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t347.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t347 = zcl_lnt_version_module=>release_b8cd.
    DATA(t348) = |v757|.
    t346 = t347->get( p0 = t348 ).
    t345 = t346.
    t342 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t343 i_f1 = t344 i_f2 = t345 ).
    APPEND t342 TO t341->items.
    DATA(t349) = t2.
    DATA t350 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t350.
    DATA(t351) = |extract_year|.
    DATA(t352) = CONV int8( 1 ).
    DATA t353 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t353.
    DATA t354 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t354.
    DATA t355 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t355.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t355 = zcl_lnt_version_module=>release_b8cd.
    DATA(t356) = |v758|.
    t354 = t355->get( p0 = t356 ).
    t353 = t354.
    t350 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t351 i_f1 = t352 i_f2 = t353 ).
    APPEND t350 TO t349->items.
    DATA(t357) = t2.
    DATA t358 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t358.
    DATA(t359) = |extract_month|.
    DATA(t360) = CONV int8( 1 ).
    DATA t361 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t361.
    DATA t362 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t362.
    DATA t363 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t363.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t363 = zcl_lnt_version_module=>release_b8cd.
    DATA(t364) = |v758|.
    t362 = t363->get( p0 = t364 ).
    t361 = t362.
    t358 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t359 i_f1 = t360 i_f2 = t361 ).
    APPEND t358 TO t357->items.
    DATA(t365) = t2.
    DATA t366 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t366.
    DATA(t367) = |extract_day|.
    DATA(t368) = CONV int8( 1 ).
    DATA t369 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t369.
    DATA t370 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t370.
    DATA t371 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t371.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t371 = zcl_lnt_version_module=>release_b8cd.
    DATA(t372) = |v758|.
    t370 = t371->get( p0 = t372 ).
    t369 = t370.
    t366 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t367 i_f1 = t368 i_f2 = t369 ).
    APPEND t366 TO t365->items.
    DATA(t373) = t2.
    DATA t374 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t374.
    DATA(t375) = |extract_hour|.
    DATA(t376) = CONV int8( 1 ).
    DATA t377 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t377.
    DATA t378 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t378.
    DATA t379 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t379.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t379 = zcl_lnt_version_module=>release_b8cd.
    DATA(t380) = |v758|.
    t378 = t379->get( p0 = t380 ).
    t377 = t378.
    t374 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t375 i_f1 = t376 i_f2 = t377 ).
    APPEND t374 TO t373->items.
    DATA(t381) = t2.
    DATA t382 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t382.
    DATA(t383) = |extract_minute|.
    DATA(t384) = CONV int8( 1 ).
    DATA t385 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t385.
    DATA t386 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t386.
    DATA t387 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t387.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t387 = zcl_lnt_version_module=>release_b8cd.
    DATA(t388) = |v758|.
    t386 = t387->get( p0 = t388 ).
    t385 = t386.
    t382 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t383 i_f1 = t384 i_f2 = t385 ).
    APPEND t382 TO t381->items.
    DATA(t389) = t2.
    DATA t390 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t390.
    DATA(t391) = |extract_second|.
    DATA(t392) = CONV int8( 1 ).
    DATA t393 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t393.
    DATA t394 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t394.
    DATA t395 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t395.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t395 = zcl_lnt_version_module=>release_b8cd.
    DATA(t396) = |v758|.
    t394 = t395->get( p0 = t396 ).
    t393 = t394.
    t390 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t391 i_f1 = t392 i_f2 = t393 ).
    APPEND t390 TO t389->items.
    DATA(t397) = t2.
    DATA t398 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t398.
    DATA(t399) = |days_between|.
    DATA(t400) = CONV int8( 2 ).
    DATA t401 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t401.
    DATA t402 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t402.
    DATA t403 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t403.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t403 = zcl_lnt_version_module=>release_b8cd.
    DATA(t404) = |v758|.
    t402 = t403->get( p0 = t404 ).
    t401 = t402.
    t398 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t399 i_f1 = t400 i_f2 = t401 ).
    APPEND t398 TO t397->items.
    DATA(t405) = t2.
    DATA t406 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t406.
    DATA(t407) = |add_days|.
    DATA(t408) = CONV int8( 2 ).
    DATA t409 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t409.
    DATA t410 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t410.
    DATA t411 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t411.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t411 = zcl_lnt_version_module=>release_b8cd.
    DATA(t412) = |v758|.
    t410 = t411->get( p0 = t412 ).
    t409 = t410.
    t406 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t407 i_f1 = t408 i_f2 = t409 ).
    APPEND t406 TO t405->items.
    DATA(t413) = t2.
    DATA t414 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t414.
    DATA(t415) = |add_months|.
    DATA(t416) = CONV int8( 2 ).
    DATA t417 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t417.
    DATA t418 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t418.
    DATA t419 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t419.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t419 = zcl_lnt_version_module=>release_b8cd.
    DATA(t420) = |v758|.
    t418 = t419->get( p0 = t420 ).
    t417 = t418.
    t414 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t415 i_f1 = t416 i_f2 = t417 ).
    APPEND t414 TO t413->items.
    DATA(t421) = t2.
    DATA t422 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t422.
    DATA(t423) = |monthname|.
    DATA(t424) = CONV int8( 1 ).
    DATA t425 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t425.
    DATA t426 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t426.
    DATA t427 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t427.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t427 = zcl_lnt_version_module=>release_b8cd.
    DATA(t428) = |v758|.
    t426 = t427->get( p0 = t428 ).
    t425 = t426.
    t422 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t423 i_f1 = t424 i_f2 = t425 ).
    APPEND t422 TO t421->items.
    DATA(t429) = t2.
    DATA t430 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t430.
    DATA(t431) = |dayname|.
    DATA(t432) = CONV int8( 1 ).
    DATA t433 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t433.
    DATA t434 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t434.
    DATA t435 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t435.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t435 = zcl_lnt_version_module=>release_b8cd.
    DATA(t436) = |v758|.
    t434 = t435->get( p0 = t436 ).
    t433 = t434.
    t430 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t431 i_f1 = t432 i_f2 = t433 ).
    APPEND t430 TO t429->items.
    DATA(t437) = t2.
    DATA t438 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t438.
    DATA(t439) = |initcap|.
    DATA(t440) = CONV int8( 1 ).
    DATA t441 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t441.
    DATA t442 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t442.
    DATA t443 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t443.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t443 = zcl_lnt_version_module=>release_b8cd.
    DATA(t444) = |v758|.
    t442 = t443->get( p0 = t444 ).
    t441 = t442.
    t438 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t439 i_f1 = t440 i_f2 = t441 ).
    APPEND t438 TO t437->items.
    DATA(t445) = t2.
    DATA t446 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t446.
    DATA(t447) = |is_valid|.
    DATA(t448) = CONV int8( 1 ).
    DATA t449 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t449.
    DATA t450 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t450.
    DATA t451 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t451.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t451 = zcl_lnt_version_module=>release_b8cd.
    DATA(t452) = |v758|.
    t450 = t451->get( p0 = t452 ).
    t449 = t450.
    t446 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t447 i_f1 = t448 i_f2 = t449 ).
    APPEND t446 TO t445->items.
    DATA(t453) = t2.
    DATA t454 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t454.
    DATA(t455) = |weekday|.
    DATA(t456) = CONV int8( 1 ).
    DATA t457 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t457.
    DATA t458 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t458.
    DATA t459 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t459.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t459 = zcl_lnt_version_module=>release_b8cd.
    DATA(t460) = |v758|.
    t458 = t459->get( p0 = t460 ).
    t457 = t458.
    t454 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t455 i_f1 = t456 i_f2 = t457 ).
    APPEND t454 TO t453->items.
    DATA(t461) = t2.
    DATA t462 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t462.
    DATA(t463) = |locate|.
    DATA t464 TYPE int8.
    DATA(t465) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t464 = t465.
    DATA t466 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t466.
    DATA t467 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t467.
    DATA t468 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t468.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t468 = zcl_lnt_version_module=>release_b8cd.
    DATA(t469) = |v758|.
    t467 = t468->get( p0 = t469 ).
    t466 = t467.
    t462 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t463 i_f1 = t464 i_f2 = t466 ).
    APPEND t462 TO t461->items.
    DATA(t470) = t2.
    DATA t471 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t471.
    DATA(t472) = |greatest|.
    DATA t473 TYPE int8.
    DATA(t474) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t473 = t474.
    DATA t475 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t475.
    DATA t476 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t476.
    DATA t477 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t477.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t477 = zcl_lnt_version_module=>release_b8cd.
    DATA(t478) = |v758|.
    t476 = t477->get( p0 = t478 ).
    t475 = t476.
    t471 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t472 i_f1 = t473 i_f2 = t475 ).
    APPEND t471 TO t470->items.
    DATA(t479) = t2.
    DATA t480 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t480.
    DATA(t481) = |least|.
    DATA t482 TYPE int8.
    DATA(t483) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t482 = t483.
    DATA t484 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t484.
    DATA t485 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t485.
    DATA t486 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t486.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t486 = zcl_lnt_version_module=>release_b8cd.
    DATA(t487) = |v758|.
    t485 = t486->get( p0 = t487 ).
    t484 = t485.
    t480 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t481 i_f1 = t482 i_f2 = t484 ).
    APPEND t480 TO t479->items.
    DATA(t488) = t2.
    DATA t489 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t489.
    DATA(t490) = |hierarchy_composite_id|.
    DATA t491 TYPE int8.
    DATA(t492) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t491 = t492.
    DATA t493 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t493.
    DATA t494 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t494.
    DATA t495 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t495.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t495 = zcl_lnt_version_module=>release_b8cd.
    DATA(t496) = |v758|.
    t494 = t495->get( p0 = t496 ).
    t493 = t494.
    t489 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t490 i_f1 = t491 i_f2 = t493 ).
    APPEND t489 TO t488->items.
    DATA(t497) = t2.
    DATA t498 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t498.
    DATA(t499) = |sin|.
    DATA(t500) = CONV int8( 1 ).
    DATA t501 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t501.
    DATA t502 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t502.
    DATA t503 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t503.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t503 = zcl_lnt_version_module=>release_b8cd.
    DATA(t504) = |v758|.
    t502 = t503->get( p0 = t504 ).
    t501 = t502.
    t498 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t499 i_f1 = t500 i_f2 = t501 ).
    APPEND t498 TO t497->items.
    DATA(t505) = t2.
    DATA t506 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t506.
    DATA(t507) = |cos|.
    DATA(t508) = CONV int8( 1 ).
    DATA t509 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t509.
    DATA t510 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t510.
    DATA t511 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t511.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t511 = zcl_lnt_version_module=>release_b8cd.
    DATA(t512) = |v758|.
    t510 = t511->get( p0 = t512 ).
    t509 = t510.
    t506 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t507 i_f1 = t508 i_f2 = t509 ).
    APPEND t506 TO t505->items.
    DATA(t513) = t2.
    DATA t514 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t514.
    DATA(t515) = |tan|.
    DATA(t516) = CONV int8( 1 ).
    DATA t517 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t517.
    DATA t518 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t518.
    DATA t519 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t519.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t519 = zcl_lnt_version_module=>release_b8cd.
    DATA(t520) = |v758|.
    t518 = t519->get( p0 = t520 ).
    t517 = t518.
    t514 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t515 i_f1 = t516 i_f2 = t517 ).
    APPEND t514 TO t513->items.
    DATA(t521) = t2.
    DATA t522 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t522.
    DATA(t523) = |asin|.
    DATA(t524) = CONV int8( 1 ).
    DATA t525 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t525.
    DATA t526 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t526.
    DATA t527 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t527.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t527 = zcl_lnt_version_module=>release_b8cd.
    DATA(t528) = |v758|.
    t526 = t527->get( p0 = t528 ).
    t525 = t526.
    t522 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t523 i_f1 = t524 i_f2 = t525 ).
    APPEND t522 TO t521->items.
    DATA(t529) = t2.
    DATA t530 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t530.
    DATA(t531) = |acos|.
    DATA(t532) = CONV int8( 1 ).
    DATA t533 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t533.
    DATA t534 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t534.
    DATA t535 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t535.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t535 = zcl_lnt_version_module=>release_b8cd.
    DATA(t536) = |v758|.
    t534 = t535->get( p0 = t536 ).
    t533 = t534.
    t530 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t531 i_f1 = t532 i_f2 = t533 ).
    APPEND t530 TO t529->items.
    DATA(t537) = t2.
    DATA t538 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t538.
    DATA(t539) = |atan|.
    DATA(t540) = CONV int8( 1 ).
    DATA t541 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t541.
    DATA t542 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t542.
    DATA t543 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t543.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t543 = zcl_lnt_version_module=>release_b8cd.
    DATA(t544) = |v758|.
    t542 = t543->get( p0 = t544 ).
    t541 = t542.
    t538 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t539 i_f1 = t540 i_f2 = t541 ).
    APPEND t538 TO t537->items.
    DATA(t545) = t2.
    DATA t546 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t546.
    DATA(t547) = |sinh|.
    DATA(t548) = CONV int8( 1 ).
    DATA t549 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t549.
    DATA t550 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t550.
    DATA t551 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t551.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t551 = zcl_lnt_version_module=>release_b8cd.
    DATA(t552) = |v758|.
    t550 = t551->get( p0 = t552 ).
    t549 = t550.
    t546 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t547 i_f1 = t548 i_f2 = t549 ).
    APPEND t546 TO t545->items.
    DATA(t553) = t2.
    DATA t554 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t554.
    DATA(t555) = |cosh|.
    DATA(t556) = CONV int8( 1 ).
    DATA t557 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t557.
    DATA t558 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t558.
    DATA t559 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t559.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t559 = zcl_lnt_version_module=>release_b8cd.
    DATA(t560) = |v758|.
    t558 = t559->get( p0 = t560 ).
    t557 = t558.
    t554 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t555 i_f1 = t556 i_f2 = t557 ).
    APPEND t554 TO t553->items.
    DATA(t561) = t2.
    DATA t562 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t562.
    DATA(t563) = |tanh|.
    DATA(t564) = CONV int8( 1 ).
    DATA t565 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t565.
    DATA t566 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t566.
    DATA t567 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t567.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t567 = zcl_lnt_version_module=>release_b8cd.
    DATA(t568) = |v758|.
    t566 = t567->get( p0 = t568 ).
    t565 = t566.
    t562 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t563 i_f1 = t564 i_f2 = t565 ).
    APPEND t562 TO t561->items.
    DATA(t569) = t2.
    DATA t570 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t570.
    DATA(t571) = |sqrt|.
    DATA(t572) = CONV int8( 1 ).
    DATA t573 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t573.
    DATA t574 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t574.
    DATA t575 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t575.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t575 = zcl_lnt_version_module=>release_b8cd.
    DATA(t576) = |v758|.
    t574 = t575->get( p0 = t576 ).
    t573 = t574.
    t570 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t571 i_f1 = t572 i_f2 = t573 ).
    APPEND t570 TO t569->items.
    DATA(t577) = t2.
    DATA t578 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t578.
    DATA(t579) = |power|.
    DATA(t580) = CONV int8( 2 ).
    DATA t581 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t581.
    DATA t582 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t582.
    DATA t583 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t583.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t583 = zcl_lnt_version_module=>release_b8cd.
    DATA(t584) = |v758|.
    t582 = t583->get( p0 = t584 ).
    t581 = t582.
    t578 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t579 i_f1 = t580 i_f2 = t581 ).
    APPEND t578 TO t577->items.
    DATA(t585) = t2.
    DATA t586 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t586.
    DATA(t587) = |exp|.
    DATA(t588) = CONV int8( 1 ).
    DATA t589 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t589.
    DATA t590 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t590.
    DATA t591 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t591.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t591 = zcl_lnt_version_module=>release_b8cd.
    DATA(t592) = |v758|.
    t590 = t591->get( p0 = t592 ).
    t589 = t590.
    t586 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t587 i_f1 = t588 i_f2 = t589 ).
    APPEND t586 TO t585->items.
    DATA(t593) = t2.
    DATA t594 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t594.
    DATA(t595) = |ln|.
    DATA(t596) = CONV int8( 1 ).
    DATA t597 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t597.
    DATA t598 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t598.
    DATA t599 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t599.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t599 = zcl_lnt_version_module=>release_b8cd.
    DATA(t600) = |v758|.
    t598 = t599->get( p0 = t600 ).
    t597 = t598.
    t594 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t595 i_f1 = t596 i_f2 = t597 ).
    APPEND t594 TO t593->items.
    DATA(t601) = t2.
    DATA t602 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t602.
    DATA(t603) = |log10|.
    DATA(t604) = CONV int8( 1 ).
    DATA t605 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t605.
    DATA t606 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t606.
    DATA t607 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t607.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t607 = zcl_lnt_version_module=>release_b8cd.
    DATA(t608) = |v758|.
    t606 = t607->get( p0 = t608 ).
    t605 = t606.
    t602 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t603 i_f1 = t604 i_f2 = t605 ).
    APPEND t602 TO t601->items.
    DATA(t609) = t2.
    DATA t610 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t610.
    DATA(t611) = |log|.
    DATA(t612) = CONV int8( 2 ).
    DATA t613 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t613.
    DATA t614 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t614.
    DATA t615 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t615.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t615 = zcl_lnt_version_module=>release_b8cd.
    DATA(t616) = |v758|.
    t614 = t615->get( p0 = t616 ).
    t613 = t614.
    t610 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t611 i_f1 = t612 i_f2 = t613 ).
    APPEND t610 TO t609->items.
    DATA(t617) = t2.
    DATA t618 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t618.
    DATA(t619) = |utctolocal|.
    DATA(t620) = CONV int8( 2 ).
    DATA t621 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t621.
    DATA t622 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t622.
    DATA t623 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t623.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t623 = zcl_lnt_version_module=>release_b8cd.
    DATA(t624) = |v758|.
    t622 = t623->get( p0 = t624 ).
    t621 = t622.
    t618 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t619 i_f1 = t620 i_f2 = t621 ).
    APPEND t618 TO t617->items.
    DATA(t625) = t2.
    DATA t626 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t626.
    DATA(t627) = |localtoutc|.
    DATA(t628) = CONV int8( 2 ).
    DATA t629 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t629.
    DATA t630 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t630.
    DATA t631 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t631.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t631 = zcl_lnt_version_module=>release_b8cd.
    DATA(t632) = |v758|.
    t630 = t631->get( p0 = t632 ).
    t629 = t630.
    t626 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t627 i_f1 = t628 i_f2 = t629 ).
    APPEND t626 TO t625->items.
    DATA(t633) = t2.
    DATA t634 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t634.
    DATA(t635) = |is_masked|.
    DATA(t636) = CONV int8( 1 ).
    DATA t637 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t637.
    DATA t638 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t638.
    DATA t639 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t639.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t639 = zcl_lnt_version_module=>release_b8cd.
    DATA(t640) = |v758|.
    t638 = t639->get( p0 = t640 ).
    t637 = t638.
    t634 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t635 i_f1 = t636 i_f2 = t637 ).
    APPEND t634 TO t633->items.
    DATA(t641) = t2.
    t1 = t641.
    zcl_lnt_sql_function_module=>sql_function_defs = t1.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    DATA t642 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t642.
    DATA t643 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t644 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t644.
    t643 = t644.
    DATA(t645) = t643.
    DATA t646 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t646.
    DATA(t647) = |abap_user_timezone|.
    DATA t648 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t648.
    DATA t649 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t649.
    DATA t650 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t650.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t650 = zcl_lnt_version_module=>release_b8cd.
    DATA(t651) = |v757|.
    t649 = t650->get( p0 = t651 ).
    t648 = t649.
    DATA t652 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t652.
    DATA t653 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t654 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t654.
    t653 = t654.
    DATA(t655) = t653.
    DATA t656 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t656.
    DATA(t657) = |user|.
    DATA(t658) = |any|.
    DATA t659 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t659.
    DATA(t660) = abap_true.
    IF t660 = abap_true.
      DATA(t661) = abap_true.
      DATA(t662) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t662->has = abap_true.
      t662->value = t661.
      t659 = t662.
    ELSE.
      DATA t663 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t663.
      t659 = t663.
    ENDIF.
    t656 = NEW zcl_lnt_sql_named_param( i_name = t657 i_value = t658 i_optional = t659 ).
    APPEND t656 TO t655->items.
    DATA(t664) = t653.
    DATA t665 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t665.
    DATA(t666) = |client|.
    DATA(t667) = |any|.
    DATA t668 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t668.
    DATA(t669) = abap_true.
    IF t669 = abap_true.
      DATA(t670) = abap_true.
      DATA(t671) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t671->has = abap_true.
      t671->value = t670.
      t668 = t671.
    ELSE.
      DATA t672 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t672.
      t668 = t672.
    ENDIF.
    t665 = NEW zcl_lnt_sql_named_param( i_name = t666 i_value = t667 i_optional = t668 ).
    APPEND t665 TO t664->items.
    DATA(t673) = t653.
    DATA t674 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t674.
    DATA(t675) = |on_error|.
    DATA(t676) = |abap_only|.
    DATA t677 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t677.
    DATA(t678) = abap_true.
    IF t678 = abap_true.
      DATA(t679) = abap_true.
      DATA(t680) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t680->has = abap_true.
      t680->value = t679.
      t677 = t680.
    ELSE.
      DATA t681 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t681.
      t677 = t681.
    ENDIF.
    t674 = NEW zcl_lnt_sql_named_param( i_name = t675 i_value = t676 i_optional = t677 ).
    APPEND t674 TO t673->items.
    DATA(t682) = t653.
    t652 = t682.
    t646 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t647 i_f1 = t648 i_f2 = t652 ).
    APPEND t646 TO t645->items.
    DATA(t683) = t643.
    DATA t684 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t684.
    DATA(t685) = |abap_system_timezone|.
    DATA t686 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t686.
    DATA t687 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t687.
    DATA t688 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t688.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t688 = zcl_lnt_version_module=>release_b8cd.
    DATA(t689) = |v757|.
    t687 = t688->get( p0 = t689 ).
    t686 = t687.
    DATA t690 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t690.
    DATA t691 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t692 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t692.
    t691 = t692.
    DATA(t693) = t691.
    DATA t694 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t694.
    DATA(t695) = |client|.
    DATA(t696) = |any|.
    DATA t697 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t697.
    DATA(t698) = abap_true.
    IF t698 = abap_true.
      DATA(t699) = abap_true.
      DATA(t700) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t700->has = abap_true.
      t700->value = t699.
      t697 = t700.
    ELSE.
      DATA t701 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t701.
      t697 = t701.
    ENDIF.
    t694 = NEW zcl_lnt_sql_named_param( i_name = t695 i_value = t696 i_optional = t697 ).
    APPEND t694 TO t693->items.
    DATA(t702) = t691.
    DATA t703 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t703.
    DATA(t704) = |on_error|.
    DATA(t705) = |abap_only|.
    DATA t706 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t706.
    DATA(t707) = abap_true.
    IF t707 = abap_true.
      DATA(t708) = abap_true.
      DATA(t709) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t709->has = abap_true.
      t709->value = t708.
      t706 = t709.
    ELSE.
      DATA t710 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t710.
      t706 = t710.
    ENDIF.
    t703 = NEW zcl_lnt_sql_named_param( i_name = t704 i_value = t705 i_optional = t706 ).
    APPEND t703 TO t702->items.
    DATA(t711) = t691.
    t690 = t711.
    t684 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t685 i_f1 = t686 i_f2 = t690 ).
    APPEND t684 TO t683->items.
    DATA(t712) = t643.
    DATA t713 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t713.
    DATA(t714) = |dats_tims_to_tstmp|.
    DATA t715 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t715.
    DATA t716 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t716.
    DATA t717 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t717.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t717 = zcl_lnt_version_module=>release_b8cd.
    DATA(t718) = |v757|.
    t716 = t717->get( p0 = t718 ).
    t715 = t716.
    DATA t719 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t719.
    DATA t720 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t721 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t721.
    t720 = t721.
    DATA(t722) = t720.
    DATA t723 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t724) = |date|.
    DATA(t725) = |any|.
    DATA t726 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t726.
    t723 = NEW zcl_lnt_sql_named_param( i_name = t724 i_value = t725 i_optional = t726 ).
    APPEND t723 TO t722->items.
    DATA(t727) = t720.
    DATA t728 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t729) = |time|.
    DATA(t730) = |any|.
    DATA t731 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t731.
    t728 = NEW zcl_lnt_sql_named_param( i_name = t729 i_value = t730 i_optional = t731 ).
    APPEND t728 TO t727->items.
    DATA(t732) = t720.
    DATA t733 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t734) = |tzone|.
    DATA(t735) = |any|.
    DATA t736 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t736.
    t733 = NEW zcl_lnt_sql_named_param( i_name = t734 i_value = t735 i_optional = t736 ).
    APPEND t733 TO t732->items.
    DATA(t737) = t720.
    DATA t738 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t738.
    DATA(t739) = |client|.
    DATA(t740) = |any|.
    DATA t741 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t741.
    DATA(t742) = abap_true.
    IF t742 = abap_true.
      DATA(t743) = abap_true.
      DATA(t744) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t744->has = abap_true.
      t744->value = t743.
      t741 = t744.
    ELSE.
      DATA t745 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t745.
      t741 = t745.
    ENDIF.
    t738 = NEW zcl_lnt_sql_named_param( i_name = t739 i_value = t740 i_optional = t741 ).
    APPEND t738 TO t737->items.
    DATA(t746) = t720.
    DATA t747 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t747.
    DATA(t748) = |on_error|.
    DATA(t749) = |abap_only|.
    DATA t750 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t750.
    DATA(t751) = abap_true.
    IF t751 = abap_true.
      DATA(t752) = abap_true.
      DATA(t753) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t753->has = abap_true.
      t753->value = t752.
      t750 = t753.
    ELSE.
      DATA t754 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t754.
      t750 = t754.
    ENDIF.
    t747 = NEW zcl_lnt_sql_named_param( i_name = t748 i_value = t749 i_optional = t750 ).
    APPEND t747 TO t746->items.
    DATA(t755) = t720.
    t719 = t755.
    t713 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t714 i_f1 = t715 i_f2 = t719 ).
    APPEND t713 TO t712->items.
    DATA(t756) = t643.
    DATA t757 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t757.
    DATA(t758) = |tstmp_add_seconds|.
    DATA t759 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t759.
    DATA t760 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t760.
    DATA t761 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t761.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t761 = zcl_lnt_version_module=>release_b8cd.
    DATA(t762) = |v757|.
    t760 = t761->get( p0 = t762 ).
    t759 = t760.
    DATA t763 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t763.
    DATA t764 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t765 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t765.
    t764 = t765.
    DATA(t766) = t764.
    DATA t767 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t768) = |tstmp|.
    DATA(t769) = |any|.
    DATA t770 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t770.
    t767 = NEW zcl_lnt_sql_named_param( i_name = t768 i_value = t769 i_optional = t770 ).
    APPEND t767 TO t766->items.
    DATA(t771) = t764.
    DATA t772 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t773) = |seconds|.
    DATA(t774) = |any|.
    DATA t775 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t775.
    t772 = NEW zcl_lnt_sql_named_param( i_name = t773 i_value = t774 i_optional = t775 ).
    APPEND t772 TO t771->items.
    DATA(t776) = t764.
    DATA t777 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t777.
    DATA(t778) = |on_error|.
    DATA(t779) = |abap_only|.
    DATA t780 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t780.
    DATA(t781) = abap_true.
    IF t781 = abap_true.
      DATA(t782) = abap_true.
      DATA(t783) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t783->has = abap_true.
      t783->value = t782.
      t780 = t783.
    ELSE.
      DATA t784 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t784.
      t780 = t784.
    ENDIF.
    t777 = NEW zcl_lnt_sql_named_param( i_name = t778 i_value = t779 i_optional = t780 ).
    APPEND t777 TO t776->items.
    DATA(t785) = t764.
    t763 = t785.
    t757 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t758 i_f1 = t759 i_f2 = t763 ).
    APPEND t757 TO t756->items.
    DATA(t786) = t643.
    DATA t787 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t787.
    DATA(t788) = |tstmp_seconds_between|.
    DATA t789 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t789.
    DATA t790 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t790.
    DATA t791 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t791.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t791 = zcl_lnt_version_module=>release_b8cd.
    DATA(t792) = |v757|.
    t790 = t791->get( p0 = t792 ).
    t789 = t790.
    DATA t793 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t793.
    DATA t794 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t795 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t795.
    t794 = t795.
    DATA(t796) = t794.
    DATA t797 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t798) = |tstmp1|.
    DATA(t799) = |any|.
    DATA t800 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t800.
    t797 = NEW zcl_lnt_sql_named_param( i_name = t798 i_value = t799 i_optional = t800 ).
    APPEND t797 TO t796->items.
    DATA(t801) = t794.
    DATA t802 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t803) = |tstmp2|.
    DATA(t804) = |any|.
    DATA t805 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t805.
    t802 = NEW zcl_lnt_sql_named_param( i_name = t803 i_value = t804 i_optional = t805 ).
    APPEND t802 TO t801->items.
    DATA(t806) = t794.
    DATA t807 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t807.
    DATA(t808) = |on_error|.
    DATA(t809) = |abap_only|.
    DATA t810 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t810.
    DATA(t811) = abap_true.
    IF t811 = abap_true.
      DATA(t812) = abap_true.
      DATA(t813) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t813->has = abap_true.
      t813->value = t812.
      t810 = t813.
    ELSE.
      DATA t814 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t814.
      t810 = t814.
    ENDIF.
    t807 = NEW zcl_lnt_sql_named_param( i_name = t808 i_value = t809 i_optional = t810 ).
    APPEND t807 TO t806->items.
    DATA(t815) = t794.
    t793 = t815.
    t787 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t788 i_f1 = t789 i_f2 = t793 ).
    APPEND t787 TO t786->items.
    DATA(t816) = t643.
    DATA t817 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t817.
    DATA(t818) = |tstmp_to_dats|.
    DATA t819 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t819.
    DATA t820 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t820.
    DATA t821 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t821.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t821 = zcl_lnt_version_module=>release_b8cd.
    DATA(t822) = |v757|.
    t820 = t821->get( p0 = t822 ).
    t819 = t820.
    DATA t823 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t823.
    DATA t824 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t825 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t825.
    t824 = t825.
    DATA(t826) = t824.
    DATA t827 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t828) = |tstmp|.
    DATA(t829) = |any|.
    DATA t830 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t830.
    t827 = NEW zcl_lnt_sql_named_param( i_name = t828 i_value = t829 i_optional = t830 ).
    APPEND t827 TO t826->items.
    DATA(t831) = t824.
    DATA t832 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t832.
    DATA(t833) = |tzone|.
    DATA(t834) = |any|.
    DATA t835 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t835.
    DATA(t836) = abap_true.
    IF t836 = abap_true.
      DATA(t837) = abap_true.
      DATA(t838) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t838->has = abap_true.
      t838->value = t837.
      t835 = t838.
    ELSE.
      DATA t839 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t839.
      t835 = t839.
    ENDIF.
    t832 = NEW zcl_lnt_sql_named_param( i_name = t833 i_value = t834 i_optional = t835 ).
    APPEND t832 TO t831->items.
    DATA(t840) = t824.
    DATA t841 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t841.
    DATA(t842) = |client|.
    DATA(t843) = |any|.
    DATA t844 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t844.
    DATA(t845) = abap_true.
    IF t845 = abap_true.
      DATA(t846) = abap_true.
      DATA(t847) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t847->has = abap_true.
      t847->value = t846.
      t844 = t847.
    ELSE.
      DATA t848 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t848.
      t844 = t848.
    ENDIF.
    t841 = NEW zcl_lnt_sql_named_param( i_name = t842 i_value = t843 i_optional = t844 ).
    APPEND t841 TO t840->items.
    DATA(t849) = t824.
    DATA t850 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t850.
    DATA(t851) = |on_error|.
    DATA(t852) = |abap_only|.
    DATA t853 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t853.
    DATA(t854) = abap_true.
    IF t854 = abap_true.
      DATA(t855) = abap_true.
      DATA(t856) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t856->has = abap_true.
      t856->value = t855.
      t853 = t856.
    ELSE.
      DATA t857 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t857.
      t853 = t857.
    ENDIF.
    t850 = NEW zcl_lnt_sql_named_param( i_name = t851 i_value = t852 i_optional = t853 ).
    APPEND t850 TO t849->items.
    DATA(t858) = t824.
    t823 = t858.
    t817 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t818 i_f1 = t819 i_f2 = t823 ).
    APPEND t817 TO t816->items.
    DATA(t859) = t643.
    DATA t860 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t860.
    DATA(t861) = |tstmp_to_tims|.
    DATA t862 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t862.
    DATA t863 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t863.
    DATA t864 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t864.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t864 = zcl_lnt_version_module=>release_b8cd.
    DATA(t865) = |v757|.
    t863 = t864->get( p0 = t865 ).
    t862 = t863.
    DATA t866 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t866.
    DATA t867 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t868 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t868.
    t867 = t868.
    DATA(t869) = t867.
    DATA t870 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t871) = |tstmp|.
    DATA(t872) = |any|.
    DATA t873 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t873.
    t870 = NEW zcl_lnt_sql_named_param( i_name = t871 i_value = t872 i_optional = t873 ).
    APPEND t870 TO t869->items.
    DATA(t874) = t867.
    DATA t875 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t875.
    DATA(t876) = |tzone|.
    DATA(t877) = |any|.
    DATA t878 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t878.
    DATA(t879) = abap_true.
    IF t879 = abap_true.
      DATA(t880) = abap_true.
      DATA(t881) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t881->has = abap_true.
      t881->value = t880.
      t878 = t881.
    ELSE.
      DATA t882 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t882.
      t878 = t882.
    ENDIF.
    t875 = NEW zcl_lnt_sql_named_param( i_name = t876 i_value = t877 i_optional = t878 ).
    APPEND t875 TO t874->items.
    DATA(t883) = t867.
    DATA t884 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t884.
    DATA(t885) = |client|.
    DATA(t886) = |any|.
    DATA t887 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t887.
    DATA(t888) = abap_true.
    IF t888 = abap_true.
      DATA(t889) = abap_true.
      DATA(t890) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t890->has = abap_true.
      t890->value = t889.
      t887 = t890.
    ELSE.
      DATA t891 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t891.
      t887 = t891.
    ENDIF.
    t884 = NEW zcl_lnt_sql_named_param( i_name = t885 i_value = t886 i_optional = t887 ).
    APPEND t884 TO t883->items.
    DATA(t892) = t867.
    DATA t893 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t893.
    DATA(t894) = |on_error|.
    DATA(t895) = |abap_only|.
    DATA t896 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t896.
    DATA(t897) = abap_true.
    IF t897 = abap_true.
      DATA(t898) = abap_true.
      DATA(t899) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t899->has = abap_true.
      t899->value = t898.
      t896 = t899.
    ELSE.
      DATA t900 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t900.
      t896 = t900.
    ENDIF.
    t893 = NEW zcl_lnt_sql_named_param( i_name = t894 i_value = t895 i_optional = t896 ).
    APPEND t893 TO t892->items.
    DATA(t901) = t867.
    t866 = t901.
    t860 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t861 i_f1 = t862 i_f2 = t866 ).
    APPEND t860 TO t859->items.
    DATA(t902) = t643.
    DATA t903 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t903.
    DATA(t904) = |tstmp_to_dst|.
    DATA t905 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t905.
    DATA t906 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t906.
    DATA t907 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t907.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t907 = zcl_lnt_version_module=>release_b8cd.
    DATA(t908) = |v757|.
    t906 = t907->get( p0 = t908 ).
    t905 = t906.
    DATA t909 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t909.
    DATA t910 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t911 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t911.
    t910 = t911.
    DATA(t912) = t910.
    DATA t913 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t914) = |tstmp|.
    DATA(t915) = |any|.
    DATA t916 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t916.
    t913 = NEW zcl_lnt_sql_named_param( i_name = t914 i_value = t915 i_optional = t916 ).
    APPEND t913 TO t912->items.
    DATA(t917) = t910.
    DATA t918 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t918.
    DATA(t919) = |tzone|.
    DATA(t920) = |any|.
    DATA t921 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t921.
    DATA(t922) = abap_true.
    IF t922 = abap_true.
      DATA(t923) = abap_true.
      DATA(t924) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t924->has = abap_true.
      t924->value = t923.
      t921 = t924.
    ELSE.
      DATA t925 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t925.
      t921 = t925.
    ENDIF.
    t918 = NEW zcl_lnt_sql_named_param( i_name = t919 i_value = t920 i_optional = t921 ).
    APPEND t918 TO t917->items.
    DATA(t926) = t910.
    DATA t927 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t927.
    DATA(t928) = |client|.
    DATA(t929) = |any|.
    DATA t930 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t930.
    DATA(t931) = abap_true.
    IF t931 = abap_true.
      DATA(t932) = abap_true.
      DATA(t933) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t933->has = abap_true.
      t933->value = t932.
      t930 = t933.
    ELSE.
      DATA t934 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t934.
      t930 = t934.
    ENDIF.
    t927 = NEW zcl_lnt_sql_named_param( i_name = t928 i_value = t929 i_optional = t930 ).
    APPEND t927 TO t926->items.
    DATA(t935) = t910.
    DATA t936 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t936.
    DATA(t937) = |on_error|.
    DATA(t938) = |abap_only|.
    DATA t939 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t939.
    DATA(t940) = abap_true.
    IF t940 = abap_true.
      DATA(t941) = abap_true.
      DATA(t942) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t942->has = abap_true.
      t942->value = t941.
      t939 = t942.
    ELSE.
      DATA t943 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t943.
      t939 = t943.
    ENDIF.
    t936 = NEW zcl_lnt_sql_named_param( i_name = t937 i_value = t938 i_optional = t939 ).
    APPEND t936 TO t935->items.
    DATA(t944) = t910.
    t909 = t944.
    t903 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t904 i_f1 = t905 i_f2 = t909 ).
    APPEND t903 TO t902->items.
    DATA(t945) = t643.
    DATA t946 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t946.
    DATA(t947) = |tstmpl_to_utcl|.
    DATA t948 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t948.
    DATA t949 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t949.
    DATA t950 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t950.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t950 = zcl_lnt_version_module=>release_b8cd.
    DATA(t951) = |v757|.
    t949 = t950->get( p0 = t951 ).
    t948 = t949.
    DATA t952 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t952.
    DATA t953 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t954 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t954.
    t953 = t954.
    DATA(t955) = t953.
    DATA t956 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t957) = |tstmpl|.
    DATA(t958) = |any|.
    DATA t959 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t959.
    t956 = NEW zcl_lnt_sql_named_param( i_name = t957 i_value = t958 i_optional = t959 ).
    APPEND t956 TO t955->items.
    DATA(t960) = t953.
    DATA t961 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t961.
    DATA(t962) = |on_error|.
    DATA(t963) = |abap_only|.
    DATA t964 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t964.
    DATA(t965) = abap_true.
    IF t965 = abap_true.
      DATA(t966) = abap_true.
      DATA(t967) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t967->has = abap_true.
      t967->value = t966.
      t964 = t967.
    ELSE.
      DATA t968 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t968.
      t964 = t968.
    ENDIF.
    t961 = NEW zcl_lnt_sql_named_param( i_name = t962 i_value = t963 i_optional = t964 ).
    APPEND t961 TO t960->items.
    DATA(t969) = t953.
    DATA t970 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t970.
    DATA(t971) = |on_initial|.
    DATA(t972) = |abap_only|.
    DATA t973 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t973.
    DATA(t974) = abap_true.
    IF t974 = abap_true.
      DATA(t975) = abap_true.
      DATA(t976) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t976->has = abap_true.
      t976->value = t975.
      t973 = t976.
    ELSE.
      DATA t977 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t977.
      t973 = t977.
    ENDIF.
    t970 = NEW zcl_lnt_sql_named_param( i_name = t971 i_value = t972 i_optional = t973 ).
    APPEND t970 TO t969->items.
    DATA(t978) = t953.
    t952 = t978.
    t946 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t947 i_f1 = t948 i_f2 = t952 ).
    APPEND t946 TO t945->items.
    DATA(t979) = t643.
    DATA t980 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t980.
    DATA(t981) = |tstmpl_from_utcl|.
    DATA t982 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t982.
    DATA t983 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t983.
    DATA t984 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t984.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t984 = zcl_lnt_version_module=>release_b8cd.
    DATA(t985) = |v757|.
    t983 = t984->get( p0 = t985 ).
    t982 = t983.
    DATA t986 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t986.
    DATA t987 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t988 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t988.
    t987 = t988.
    DATA(t989) = t987.
    DATA t990 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t991) = |utcl|.
    DATA(t992) = |any|.
    DATA t993 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t993.
    t990 = NEW zcl_lnt_sql_named_param( i_name = t991 i_value = t992 i_optional = t993 ).
    APPEND t990 TO t989->items.
    DATA(t994) = t987.
    DATA t995 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t995.
    DATA(t996) = |on_null|.
    DATA(t997) = |abap_only|.
    DATA t998 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t998.
    DATA(t999) = abap_true.
    IF t999 = abap_true.
      DATA(t1000) = abap_true.
      DATA(t1001) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1001->has = abap_true.
      t1001->value = t1000.
      t998 = t1001.
    ELSE.
      DATA t1002 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1002.
      t998 = t1002.
    ENDIF.
    t995 = NEW zcl_lnt_sql_named_param( i_name = t996 i_value = t997 i_optional = t998 ).
    APPEND t995 TO t994->items.
    DATA(t1003) = t987.
    t986 = t1003.
    t980 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t981 i_f1 = t982 i_f2 = t986 ).
    APPEND t980 TO t979->items.
    DATA(t1004) = t643.
    DATA t1005 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1005.
    DATA(t1006) = |dats_to_datn|.
    DATA t1007 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1007.
    DATA t1008 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1008.
    DATA t1009 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1009.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1009 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1010) = |v757|.
    t1008 = t1009->get( p0 = t1010 ).
    t1007 = t1008.
    DATA t1011 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1011.
    DATA t1012 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1013 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1013.
    t1012 = t1013.
    DATA(t1014) = t1012.
    DATA t1015 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1016) = |dats|.
    DATA(t1017) = |any|.
    DATA t1018 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1018.
    t1015 = NEW zcl_lnt_sql_named_param( i_name = t1016 i_value = t1017 i_optional = t1018 ).
    APPEND t1015 TO t1014->items.
    DATA(t1019) = t1012.
    DATA t1020 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1020.
    DATA(t1021) = |on_error|.
    DATA(t1022) = |abap_only|.
    DATA t1023 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1023.
    DATA(t1024) = abap_true.
    IF t1024 = abap_true.
      DATA(t1025) = abap_true.
      DATA(t1026) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1026->has = abap_true.
      t1026->value = t1025.
      t1023 = t1026.
    ELSE.
      DATA t1027 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1027.
      t1023 = t1027.
    ENDIF.
    t1020 = NEW zcl_lnt_sql_named_param( i_name = t1021 i_value = t1022 i_optional = t1023 ).
    APPEND t1020 TO t1019->items.
    DATA(t1028) = t1012.
    DATA t1029 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1029.
    DATA(t1030) = |on_initial|.
    DATA(t1031) = |abap_only|.
    DATA t1032 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1032.
    DATA(t1033) = abap_true.
    IF t1033 = abap_true.
      DATA(t1034) = abap_true.
      DATA(t1035) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1035->has = abap_true.
      t1035->value = t1034.
      t1032 = t1035.
    ELSE.
      DATA t1036 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1036.
      t1032 = t1036.
    ENDIF.
    t1029 = NEW zcl_lnt_sql_named_param( i_name = t1030 i_value = t1031 i_optional = t1032 ).
    APPEND t1029 TO t1028->items.
    DATA(t1037) = t1012.
    t1011 = t1037.
    t1005 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1006 i_f1 = t1007 i_f2 = t1011 ).
    APPEND t1005 TO t1004->items.
    DATA(t1038) = t643.
    DATA t1039 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1039.
    DATA(t1040) = |dats_from_datn|.
    DATA t1041 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1041.
    DATA t1042 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1042.
    DATA t1043 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1043.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1043 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1044) = |v757|.
    t1042 = t1043->get( p0 = t1044 ).
    t1041 = t1042.
    DATA t1045 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1045.
    DATA t1046 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1047 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1047.
    t1046 = t1047.
    DATA(t1048) = t1046.
    DATA t1049 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1050) = |datn|.
    DATA(t1051) = |any|.
    DATA t1052 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1052.
    t1049 = NEW zcl_lnt_sql_named_param( i_name = t1050 i_value = t1051 i_optional = t1052 ).
    APPEND t1049 TO t1048->items.
    DATA(t1053) = t1046.
    DATA t1054 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1054.
    DATA(t1055) = |on_null|.
    DATA(t1056) = |abap_only|.
    DATA t1057 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1057.
    DATA(t1058) = abap_true.
    IF t1058 = abap_true.
      DATA(t1059) = abap_true.
      DATA(t1060) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1060->has = abap_true.
      t1060->value = t1059.
      t1057 = t1060.
    ELSE.
      DATA t1061 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1061.
      t1057 = t1061.
    ENDIF.
    t1054 = NEW zcl_lnt_sql_named_param( i_name = t1055 i_value = t1056 i_optional = t1057 ).
    APPEND t1054 TO t1053->items.
    DATA(t1062) = t1046.
    t1045 = t1062.
    t1039 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1040 i_f1 = t1041 i_f2 = t1045 ).
    APPEND t1039 TO t1038->items.
    DATA(t1063) = t643.
    DATA t1064 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1064.
    DATA(t1065) = |tims_to_timn|.
    DATA t1066 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1066.
    DATA t1067 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1067.
    DATA t1068 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1068.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1068 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1069) = |v757|.
    t1067 = t1068->get( p0 = t1069 ).
    t1066 = t1067.
    DATA t1070 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1070.
    DATA t1071 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1072 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1072.
    t1071 = t1072.
    DATA(t1073) = t1071.
    DATA t1074 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1075) = |tims|.
    DATA(t1076) = |any|.
    DATA t1077 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1077.
    t1074 = NEW zcl_lnt_sql_named_param( i_name = t1075 i_value = t1076 i_optional = t1077 ).
    APPEND t1074 TO t1073->items.
    DATA(t1078) = t1071.
    DATA t1079 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1079.
    DATA(t1080) = |on_error|.
    DATA(t1081) = |abap_only|.
    DATA t1082 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1082.
    DATA(t1083) = abap_true.
    IF t1083 = abap_true.
      DATA(t1084) = abap_true.
      DATA(t1085) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1085->has = abap_true.
      t1085->value = t1084.
      t1082 = t1085.
    ELSE.
      DATA t1086 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1086.
      t1082 = t1086.
    ENDIF.
    t1079 = NEW zcl_lnt_sql_named_param( i_name = t1080 i_value = t1081 i_optional = t1082 ).
    APPEND t1079 TO t1078->items.
    DATA(t1087) = t1071.
    t1070 = t1087.
    t1064 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1065 i_f1 = t1066 i_f2 = t1070 ).
    APPEND t1064 TO t1063->items.
    DATA(t1088) = t643.
    DATA t1089 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1089.
    DATA(t1090) = |tims_from_timn|.
    DATA t1091 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1091.
    DATA t1092 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1092.
    DATA t1093 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1093.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1093 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1094) = |v757|.
    t1092 = t1093->get( p0 = t1094 ).
    t1091 = t1092.
    DATA t1095 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1095.
    DATA t1096 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1097 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1097.
    t1096 = t1097.
    DATA(t1098) = t1096.
    DATA t1099 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1100) = |timn|.
    DATA(t1101) = |any|.
    DATA t1102 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1102.
    t1099 = NEW zcl_lnt_sql_named_param( i_name = t1100 i_value = t1101 i_optional = t1102 ).
    APPEND t1099 TO t1098->items.
    DATA(t1103) = t1096.
    DATA t1104 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1104.
    DATA(t1105) = |on_null|.
    DATA(t1106) = |abap_only|.
    DATA t1107 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1107.
    DATA(t1108) = abap_true.
    IF t1108 = abap_true.
      DATA(t1109) = abap_true.
      DATA(t1110) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1110->has = abap_true.
      t1110->value = t1109.
      t1107 = t1110.
    ELSE.
      DATA t1111 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1111.
      t1107 = t1111.
    ENDIF.
    t1104 = NEW zcl_lnt_sql_named_param( i_name = t1105 i_value = t1106 i_optional = t1107 ).
    APPEND t1104 TO t1103->items.
    DATA(t1112) = t1096.
    t1095 = t1112.
    t1089 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1090 i_f1 = t1091 i_f2 = t1095 ).
    APPEND t1089 TO t1088->items.
    DATA(t1113) = t643.
    DATA t1114 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1114.
    DATA(t1115) = |currency_conversion|.
    DATA t1116 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1116.
    DATA t1117 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1117.
    DATA t1118 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1118.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1118 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1119) = |v757|.
    t1117 = t1118->get( p0 = t1119 ).
    t1116 = t1117.
    DATA t1120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1120.
    DATA t1121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1122.
    t1121 = t1122.
    DATA(t1123) = t1121.
    DATA t1124 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1125) = |amount|.
    DATA(t1126) = |any|.
    DATA t1127 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1127.
    t1124 = NEW zcl_lnt_sql_named_param( i_name = t1125 i_value = t1126 i_optional = t1127 ).
    APPEND t1124 TO t1123->items.
    DATA(t1128) = t1121.
    DATA t1129 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1130) = |source_currency|.
    DATA(t1131) = |any|.
    DATA t1132 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1132.
    t1129 = NEW zcl_lnt_sql_named_param( i_name = t1130 i_value = t1131 i_optional = t1132 ).
    APPEND t1129 TO t1128->items.
    DATA(t1133) = t1121.
    DATA t1134 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1135) = |target_currency|.
    DATA(t1136) = |any|.
    DATA t1137 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1137.
    t1134 = NEW zcl_lnt_sql_named_param( i_name = t1135 i_value = t1136 i_optional = t1137 ).
    APPEND t1134 TO t1133->items.
    DATA(t1138) = t1121.
    DATA t1139 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1140) = |exchange_rate_date|.
    DATA(t1141) = |any|.
    DATA t1142 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1142.
    t1139 = NEW zcl_lnt_sql_named_param( i_name = t1140 i_value = t1141 i_optional = t1142 ).
    APPEND t1139 TO t1138->items.
    DATA(t1143) = t1121.
    DATA t1144 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1144.
    DATA(t1145) = |exchange_rate_type|.
    DATA(t1146) = |any|.
    DATA t1147 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1147.
    DATA(t1148) = abap_true.
    IF t1148 = abap_true.
      DATA(t1149) = abap_true.
      DATA(t1150) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1150->has = abap_true.
      t1150->value = t1149.
      t1147 = t1150.
    ELSE.
      DATA t1151 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1151.
      t1147 = t1151.
    ENDIF.
    t1144 = NEW zcl_lnt_sql_named_param( i_name = t1145 i_value = t1146 i_optional = t1147 ).
    APPEND t1144 TO t1143->items.
    DATA(t1152) = t1121.
    DATA t1153 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1153.
    DATA(t1154) = |client|.
    DATA(t1155) = |any|.
    DATA t1156 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1156.
    DATA(t1157) = abap_true.
    IF t1157 = abap_true.
      DATA(t1158) = abap_true.
      DATA(t1159) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1159->has = abap_true.
      t1159->value = t1158.
      t1156 = t1159.
    ELSE.
      DATA t1160 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1160.
      t1156 = t1160.
    ENDIF.
    t1153 = NEW zcl_lnt_sql_named_param( i_name = t1154 i_value = t1155 i_optional = t1156 ).
    APPEND t1153 TO t1152->items.
    DATA(t1161) = t1121.
    DATA t1162 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1162.
    DATA(t1163) = |round|.
    DATA(t1164) = |abap_only|.
    DATA t1165 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1165.
    DATA(t1166) = abap_true.
    IF t1166 = abap_true.
      DATA(t1167) = abap_true.
      DATA(t1168) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1168->has = abap_true.
      t1168->value = t1167.
      t1165 = t1168.
    ELSE.
      DATA t1169 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1169.
      t1165 = t1169.
    ENDIF.
    t1162 = NEW zcl_lnt_sql_named_param( i_name = t1163 i_value = t1164 i_optional = t1165 ).
    APPEND t1162 TO t1161->items.
    DATA(t1170) = t1121.
    DATA t1171 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1171.
    DATA(t1172) = |decimal_shift|.
    DATA(t1173) = |abap_only|.
    DATA t1174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1174.
    DATA(t1175) = abap_true.
    IF t1175 = abap_true.
      DATA(t1176) = abap_true.
      DATA(t1177) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1177->has = abap_true.
      t1177->value = t1176.
      t1174 = t1177.
    ELSE.
      DATA t1178 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1178.
      t1174 = t1178.
    ENDIF.
    t1171 = NEW zcl_lnt_sql_named_param( i_name = t1172 i_value = t1173 i_optional = t1174 ).
    APPEND t1171 TO t1170->items.
    DATA(t1179) = t1121.
    DATA t1180 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1180.
    DATA(t1181) = |decimal_shift_back|.
    DATA(t1182) = |abap_only|.
    DATA t1183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1183.
    DATA(t1184) = abap_true.
    IF t1184 = abap_true.
      DATA(t1185) = abap_true.
      DATA(t1186) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1186->has = abap_true.
      t1186->value = t1185.
      t1183 = t1186.
    ELSE.
      DATA t1187 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1187.
      t1183 = t1187.
    ENDIF.
    t1180 = NEW zcl_lnt_sql_named_param( i_name = t1181 i_value = t1182 i_optional = t1183 ).
    APPEND t1180 TO t1179->items.
    DATA(t1188) = t1121.
    DATA t1189 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1189.
    DATA(t1190) = |on_error|.
    DATA(t1191) = |abap_only|.
    DATA t1192 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1192.
    DATA(t1193) = abap_true.
    IF t1193 = abap_true.
      DATA(t1194) = abap_true.
      DATA(t1195) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1195->has = abap_true.
      t1195->value = t1194.
      t1192 = t1195.
    ELSE.
      DATA t1196 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1196.
      t1192 = t1196.
    ENDIF.
    t1189 = NEW zcl_lnt_sql_named_param( i_name = t1190 i_value = t1191 i_optional = t1192 ).
    APPEND t1189 TO t1188->items.
    DATA(t1197) = t1121.
    t1120 = t1197.
    t1114 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1115 i_f1 = t1116 i_f2 = t1120 ).
    APPEND t1114 TO t1113->items.
    DATA(t1198) = t643.
    DATA t1199 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1199.
    DATA(t1200) = |unit_conversion|.
    DATA t1201 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1201.
    DATA t1202 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1202.
    DATA t1203 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1203.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1203 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1204) = |v758|.
    t1202 = t1203->get( p0 = t1204 ).
    t1201 = t1202.
    DATA t1205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1205.
    DATA t1206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1207.
    t1206 = t1207.
    DATA(t1208) = t1206.
    DATA t1209 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1210) = |quantity|.
    DATA(t1211) = |any|.
    DATA t1212 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1212.
    t1209 = NEW zcl_lnt_sql_named_param( i_name = t1210 i_value = t1211 i_optional = t1212 ).
    APPEND t1209 TO t1208->items.
    DATA(t1213) = t1206.
    DATA t1214 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1215) = |source_unit|.
    DATA(t1216) = |any|.
    DATA t1217 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1217.
    t1214 = NEW zcl_lnt_sql_named_param( i_name = t1215 i_value = t1216 i_optional = t1217 ).
    APPEND t1214 TO t1213->items.
    DATA(t1218) = t1206.
    DATA t1219 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1220) = |target_unit|.
    DATA(t1221) = |any|.
    DATA t1222 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1222.
    t1219 = NEW zcl_lnt_sql_named_param( i_name = t1220 i_value = t1221 i_optional = t1222 ).
    APPEND t1219 TO t1218->items.
    DATA(t1223) = t1206.
    DATA t1224 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1224.
    DATA(t1225) = |client|.
    DATA(t1226) = |any|.
    DATA t1227 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1227.
    DATA(t1228) = abap_true.
    IF t1228 = abap_true.
      DATA(t1229) = abap_true.
      DATA(t1230) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1230->has = abap_true.
      t1230->value = t1229.
      t1227 = t1230.
    ELSE.
      DATA t1231 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1231.
      t1227 = t1231.
    ENDIF.
    t1224 = NEW zcl_lnt_sql_named_param( i_name = t1225 i_value = t1226 i_optional = t1227 ).
    APPEND t1224 TO t1223->items.
    DATA(t1232) = t1206.
    DATA t1233 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1233.
    DATA(t1234) = |on_error|.
    DATA(t1235) = |abap_only|.
    DATA t1236 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1236.
    DATA(t1237) = abap_true.
    IF t1237 = abap_true.
      DATA(t1238) = abap_true.
      DATA(t1239) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1239->has = abap_true.
      t1239->value = t1238.
      t1236 = t1239.
    ELSE.
      DATA t1240 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1240.
      t1236 = t1240.
    ENDIF.
    t1233 = NEW zcl_lnt_sql_named_param( i_name = t1234 i_value = t1235 i_optional = t1236 ).
    APPEND t1233 TO t1232->items.
    DATA(t1241) = t1206.
    t1205 = t1241.
    t1199 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1200 i_f1 = t1201 i_f2 = t1205 ).
    APPEND t1199 TO t1198->items.
    DATA(t1242) = t643.
    DATA t1243 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1243.
    DATA(t1244) = |curr_to_decfloat_amount|.
    DATA t1245 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1245.
    DATA t1246 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1246.
    DATA t1247 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1247.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1247 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1248) = |v758|.
    t1246 = t1247->get( p0 = t1248 ).
    t1245 = t1246.
    DATA t1249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1251.
    t1250 = t1251.
    DATA(t1252) = t1250.
    DATA t1253 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1254) = |curr|.
    DATA(t1255) = |any|.
    DATA t1256 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1256.
    t1253 = NEW zcl_lnt_sql_named_param( i_name = t1254 i_value = t1255 i_optional = t1256 ).
    APPEND t1253 TO t1252->items.
    DATA(t1257) = t1250.
    DATA t1258 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1259) = |cuky|.
    DATA(t1260) = |any|.
    DATA t1261 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1261.
    t1258 = NEW zcl_lnt_sql_named_param( i_name = t1259 i_value = t1260 i_optional = t1261 ).
    APPEND t1258 TO t1257->items.
    DATA(t1262) = t1250.
    t1249 = t1262.
    t1243 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1244 i_f1 = t1245 i_f2 = t1249 ).
    APPEND t1243 TO t1242->items.
    DATA(t1263) = t643.
    DATA t1264 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1264.
    DATA(t1265) = |lang_to_char|.
    DATA t1266 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1266.
    DATA t1267 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1267.
    DATA t1268 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1268.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1268 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1269) = |v758|.
    t1267 = t1268->get( p0 = t1269 ).
    t1266 = t1267.
    DATA t1270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1271 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1272.
    t1271 = t1272.
    DATA(t1273) = t1271.
    DATA t1274 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1275) = |lang|.
    DATA(t1276) = |any|.
    DATA t1277 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1277.
    t1274 = NEW zcl_lnt_sql_named_param( i_name = t1275 i_value = t1276 i_optional = t1277 ).
    APPEND t1274 TO t1273->items.
    DATA(t1278) = t1271.
    t1270 = t1278.
    t1264 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1265 i_f1 = t1266 i_f2 = t1270 ).
    APPEND t1264 TO t1263->items.
    DATA(t1279) = t643.
    DATA t1280 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1280.
    DATA(t1281) = |ipow|.
    DATA t1282 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1282.
    DATA t1283 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1283.
    DATA t1284 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1284.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1284 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1285) = |v758|.
    t1283 = t1284->get( p0 = t1285 ).
    t1282 = t1283.
    DATA t1286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1287 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1288 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1288.
    t1287 = t1288.
    DATA(t1289) = t1287.
    DATA t1290 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1291) = |base|.
    DATA(t1292) = |any|.
    DATA t1293 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1293.
    t1290 = NEW zcl_lnt_sql_named_param( i_name = t1291 i_value = t1292 i_optional = t1293 ).
    APPEND t1290 TO t1289->items.
    DATA(t1294) = t1287.
    DATA t1295 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1296) = |exp|.
    DATA(t1297) = |any|.
    DATA t1298 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1298.
    t1295 = NEW zcl_lnt_sql_named_param( i_name = t1296 i_value = t1297 i_optional = t1298 ).
    APPEND t1295 TO t1294->items.
    DATA(t1299) = t1287.
    t1286 = t1299.
    t1280 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1281 i_f1 = t1282 i_f2 = t1286 ).
    APPEND t1280 TO t1279->items.
    DATA(t1300) = t643.
    t642 = t1300.
    zcl_lnt_sql_function_module=>sql_named_function_defs = t642.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    DATA t1301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1301.
    DATA t1302 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1303.
    t1302 = t1303.
    DATA(t1304) = t1302.
    DATA t1305 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1305.
    DATA(t1306) = |st_new_point|.
    DATA t1307 TYPE int8.
    DATA(t1308) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1307 = t1308.
    DATA t1309 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1309.
    DATA t1310 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1310.
    DATA t1311 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1311.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1311 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1312) = |v915|.
    t1310 = t1311->get( p0 = t1312 ).
    t1309 = t1310.
    t1305 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1306 i_f1 = t1307 i_f2 = t1309 ).
    APPEND t1305 TO t1304->items.
    DATA(t1313) = t1302.
    DATA t1314 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1314.
    DATA(t1315) = |st_new_pointz|.
    DATA t1316 TYPE int8.
    DATA(t1317) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1316 = t1317.
    DATA t1318 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1318.
    DATA t1319 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1319.
    DATA t1320 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1320.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1320 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1321) = |v915|.
    t1319 = t1320->get( p0 = t1321 ).
    t1318 = t1319.
    t1314 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1315 i_f1 = t1316 i_f2 = t1318 ).
    APPEND t1314 TO t1313->items.
    DATA(t1322) = t1302.
    DATA t1323 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1323.
    DATA(t1324) = |st_new_pointm|.
    DATA t1325 TYPE int8.
    DATA(t1326) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1325 = t1326.
    DATA t1327 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1327.
    DATA t1328 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1328.
    DATA t1329 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1329.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1329 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1330) = |v915|.
    t1328 = t1329->get( p0 = t1330 ).
    t1327 = t1328.
    t1323 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1324 i_f1 = t1325 i_f2 = t1327 ).
    APPEND t1323 TO t1322->items.
    DATA(t1331) = t1302.
    DATA t1332 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1332.
    DATA(t1333) = |st_new_pointzm|.
    DATA t1334 TYPE int8.
    DATA(t1335) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1334 = t1335.
    DATA t1336 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1336.
    DATA t1337 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1337.
    DATA t1338 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1338.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1338 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1339) = |v915|.
    t1337 = t1338->get( p0 = t1339 ).
    t1336 = t1337.
    t1332 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1333 i_f1 = t1334 i_f2 = t1336 ).
    APPEND t1332 TO t1331->items.
    DATA(t1340) = t1302.
    DATA t1341 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1341.
    DATA(t1342) = |st_new_linestring|.
    DATA t1343 TYPE int8.
    DATA(t1344) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1343 = t1344.
    DATA t1345 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1345.
    DATA t1346 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1346.
    DATA t1347 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1347.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1347 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1348) = |v915|.
    t1346 = t1347->get( p0 = t1348 ).
    t1345 = t1346.
    t1341 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1342 i_f1 = t1343 i_f2 = t1345 ).
    APPEND t1341 TO t1340->items.
    DATA(t1349) = t1302.
    DATA t1350 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1350.
    DATA(t1351) = |st_new_multilinestring|.
    DATA t1352 TYPE int8.
    DATA(t1353) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1352 = t1353.
    DATA t1354 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1354.
    DATA t1355 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1355.
    DATA t1356 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1356.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1356 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1357) = |v915|.
    t1355 = t1356->get( p0 = t1357 ).
    t1354 = t1355.
    t1350 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1351 i_f1 = t1352 i_f2 = t1354 ).
    APPEND t1350 TO t1349->items.
    DATA(t1358) = t1302.
    DATA t1359 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1359.
    DATA(t1360) = |st_new_polygon|.
    DATA t1361 TYPE int8.
    DATA(t1362) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1361 = t1362.
    DATA t1363 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1363.
    DATA t1364 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1364.
    DATA t1365 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1365.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1365 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1366) = |v915|.
    t1364 = t1365->get( p0 = t1366 ).
    t1363 = t1364.
    t1359 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1360 i_f1 = t1361 i_f2 = t1363 ).
    APPEND t1359 TO t1358->items.
    DATA(t1367) = t1302.
    DATA t1368 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1368.
    DATA(t1369) = |st_new_multipolygon|.
    DATA t1370 TYPE int8.
    DATA(t1371) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1370 = t1371.
    DATA t1372 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1372.
    DATA t1373 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1373.
    DATA t1374 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1374.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1374 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1375) = |v915|.
    t1373 = t1374->get( p0 = t1375 ).
    t1372 = t1373.
    t1368 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1369 i_f1 = t1370 i_f2 = t1372 ).
    APPEND t1368 TO t1367->items.
    DATA(t1376) = t1302.
    DATA t1377 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1377.
    DATA(t1378) = |st_new_multipoint|.
    DATA t1379 TYPE int8.
    DATA(t1380) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1379 = t1380.
    DATA t1381 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1381.
    DATA t1382 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1382.
    DATA t1383 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1383.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1383 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1384) = |v915|.
    t1382 = t1383->get( p0 = t1384 ).
    t1381 = t1382.
    t1377 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1378 i_f1 = t1379 i_f2 = t1381 ).
    APPEND t1377 TO t1376->items.
    DATA(t1385) = t1302.
    DATA t1386 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1386.
    DATA(t1387) = |st_new_circularstring|.
    DATA t1388 TYPE int8.
    DATA(t1389) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1388 = t1389.
    DATA t1390 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1390.
    DATA t1391 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1391.
    DATA t1392 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1392.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1392 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1393) = |v915|.
    t1391 = t1392->get( p0 = t1393 ).
    t1390 = t1391.
    t1386 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1387 i_f1 = t1388 i_f2 = t1390 ).
    APPEND t1386 TO t1385->items.
    DATA(t1394) = t1302.
    DATA t1395 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1395.
    DATA(t1396) = |st_new_geometrycollection|.
    DATA t1397 TYPE int8.
    DATA(t1398) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1397 = t1398.
    DATA t1399 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1399.
    DATA t1400 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1400.
    DATA t1401 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1401.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1401 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1402) = |v915|.
    t1400 = t1401->get( p0 = t1402 ).
    t1399 = t1400.
    t1395 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1396 i_f1 = t1397 i_f2 = t1399 ).
    APPEND t1395 TO t1394->items.
    DATA(t1403) = t1302.
    DATA t1404 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1404.
    DATA(t1405) = |st_srid|.
    DATA t1406 TYPE int8.
    DATA(t1407) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1406 = t1407.
    DATA t1408 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1408.
    DATA t1409 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1409.
    DATA t1410 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1410.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1410 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1411) = |v915|.
    t1409 = t1410->get( p0 = t1411 ).
    t1408 = t1409.
    t1404 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1405 i_f1 = t1406 i_f2 = t1408 ).
    APPEND t1404 TO t1403->items.
    DATA(t1412) = t1302.
    DATA t1413 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1413.
    DATA(t1414) = |st_relate|.
    DATA t1415 TYPE int8.
    DATA(t1416) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1415 = t1416.
    DATA t1417 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1417.
    DATA t1418 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1418.
    DATA t1419 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1419.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1419 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1420) = |v915|.
    t1418 = t1419->get( p0 = t1420 ).
    t1417 = t1418.
    t1413 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1414 i_f1 = t1415 i_f2 = t1417 ).
    APPEND t1413 TO t1412->items.
    DATA(t1421) = t1302.
    DATA t1422 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1422.
    DATA(t1423) = |st_geomfromtext|.
    DATA t1424 TYPE int8.
    DATA(t1425) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1424 = t1425.
    DATA t1426 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1426.
    DATA t1427 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1427.
    DATA t1428 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1428.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1428 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1429) = |v915|.
    t1427 = t1428->get( p0 = t1429 ).
    t1426 = t1427.
    t1422 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1423 i_f1 = t1424 i_f2 = t1426 ).
    APPEND t1422 TO t1421->items.
    DATA(t1430) = t1302.
    DATA t1431 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1431.
    DATA(t1432) = |st_geomfromwkt|.
    DATA t1433 TYPE int8.
    DATA(t1434) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1433 = t1434.
    DATA t1435 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1435.
    DATA t1436 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1436.
    DATA t1437 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1437.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1437 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1438) = |v915|.
    t1436 = t1437->get( p0 = t1438 ).
    t1435 = t1436.
    t1431 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1432 i_f1 = t1433 i_f2 = t1435 ).
    APPEND t1431 TO t1430->items.
    DATA(t1439) = t1302.
    DATA t1440 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1440.
    DATA(t1441) = |st_geomfromewkt|.
    DATA t1442 TYPE int8.
    DATA(t1443) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1442 = t1443.
    DATA t1444 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1444.
    DATA t1445 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1445.
    DATA t1446 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1446.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1446 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1447) = |v915|.
    t1445 = t1446->get( p0 = t1447 ).
    t1444 = t1445.
    t1440 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1441 i_f1 = t1442 i_f2 = t1444 ).
    APPEND t1440 TO t1439->items.
    DATA(t1448) = t1302.
    DATA t1449 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1449.
    DATA(t1450) = |st_geomfromwkb|.
    DATA t1451 TYPE int8.
    DATA(t1452) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1451 = t1452.
    DATA t1453 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1453.
    DATA t1454 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1454.
    DATA t1455 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1455.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1455 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1456) = |v915|.
    t1454 = t1455->get( p0 = t1456 ).
    t1453 = t1454.
    t1449 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1450 i_f1 = t1451 i_f2 = t1453 ).
    APPEND t1449 TO t1448->items.
    DATA(t1457) = t1302.
    DATA t1458 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1458.
    DATA(t1459) = |st_geomfromewkb|.
    DATA t1460 TYPE int8.
    DATA(t1461) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1460 = t1461.
    DATA t1462 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1462.
    DATA t1463 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1463.
    DATA t1464 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1464.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1464 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1465) = |v915|.
    t1463 = t1464->get( p0 = t1465 ).
    t1462 = t1463.
    t1458 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1459 i_f1 = t1460 i_f2 = t1462 ).
    APPEND t1458 TO t1457->items.
    DATA(t1466) = t1302.
    DATA t1467 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1467.
    DATA(t1468) = |st_geomfromgeojson|.
    DATA t1469 TYPE int8.
    DATA(t1470) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1469 = t1470.
    DATA t1471 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1471.
    DATA t1472 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1472.
    DATA t1473 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1473.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1473 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1474) = |v915|.
    t1472 = t1473->get( p0 = t1474 ).
    t1471 = t1472.
    t1467 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1468 i_f1 = t1469 i_f2 = t1471 ).
    APPEND t1467 TO t1466->items.
    DATA(t1475) = t1302.
    DATA t1476 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1476.
    DATA(t1477) = |st_geomfromesrijson|.
    DATA t1478 TYPE int8.
    DATA(t1479) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1478 = t1479.
    DATA t1480 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1480.
    DATA t1481 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1481.
    DATA t1482 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1482.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1482 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1483) = |v915|.
    t1481 = t1482->get( p0 = t1483 ).
    t1480 = t1481.
    t1476 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1477 i_f1 = t1478 i_f2 = t1480 ).
    APPEND t1476 TO t1475->items.
    DATA(t1484) = t1302.
    DATA t1485 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1485.
    DATA(t1486) = |st_geomfromgeohash|.
    DATA t1487 TYPE int8.
    DATA(t1488) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1487 = t1488.
    DATA t1489 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1489.
    DATA t1490 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1490.
    DATA t1491 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1491.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1491 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1492) = |v915|.
    t1490 = t1491->get( p0 = t1492 ).
    t1489 = t1490.
    t1485 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1486 i_f1 = t1487 i_f2 = t1489 ).
    APPEND t1485 TO t1484->items.
    DATA(t1493) = t1302.
    DATA t1494 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1494.
    DATA(t1495) = |st_pointfromtext|.
    DATA t1496 TYPE int8.
    DATA(t1497) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1496 = t1497.
    DATA t1498 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1498.
    DATA t1499 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1499.
    DATA t1500 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1500.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1500 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1501) = |v915|.
    t1499 = t1500->get( p0 = t1501 ).
    t1498 = t1499.
    t1494 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1495 i_f1 = t1496 i_f2 = t1498 ).
    APPEND t1494 TO t1493->items.
    DATA(t1502) = t1302.
    DATA t1503 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1503.
    DATA(t1504) = |st_pointfromgeohash|.
    DATA t1505 TYPE int8.
    DATA(t1506) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1505 = t1506.
    DATA t1507 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1507.
    DATA t1508 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1508.
    DATA t1509 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1509.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1509 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1510) = |v915|.
    t1508 = t1509->get( p0 = t1510 ).
    t1507 = t1508.
    t1503 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1504 i_f1 = t1505 i_f2 = t1507 ).
    APPEND t1503 TO t1502->items.
    DATA(t1511) = t1302.
    DATA t1512 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1512.
    DATA(t1513) = |st_makeline|.
    DATA t1514 TYPE int8.
    DATA(t1515) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1514 = t1515.
    DATA t1516 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1516.
    DATA t1517 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1517.
    DATA t1518 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1518.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1518 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1519) = |v915|.
    t1517 = t1518->get( p0 = t1519 ).
    t1516 = t1517.
    t1512 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1513 i_f1 = t1514 i_f2 = t1516 ).
    APPEND t1512 TO t1511->items.
    DATA(t1520) = t1302.
    DATA t1521 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1521.
    DATA(t1522) = |st_makepolygon|.
    DATA t1523 TYPE int8.
    DATA(t1524) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1523 = t1524.
    DATA t1525 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1525.
    DATA t1526 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1526.
    DATA t1527 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1527.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1527 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1528) = |v915|.
    t1526 = t1527->get( p0 = t1528 ).
    t1525 = t1526.
    t1521 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1522 i_f1 = t1523 i_f2 = t1525 ).
    APPEND t1521 TO t1520->items.
    DATA(t1529) = t1302.
    DATA t1530 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1530.
    DATA(t1531) = |st_x|.
    DATA t1532 TYPE int8.
    DATA(t1533) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1532 = t1533.
    DATA t1534 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1534.
    DATA t1535 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1535.
    DATA t1536 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1536.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1536 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1537) = |v915|.
    t1535 = t1536->get( p0 = t1537 ).
    t1534 = t1535.
    t1530 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1531 i_f1 = t1532 i_f2 = t1534 ).
    APPEND t1530 TO t1529->items.
    DATA(t1538) = t1302.
    DATA t1539 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1539.
    DATA(t1540) = |st_y|.
    DATA t1541 TYPE int8.
    DATA(t1542) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1541 = t1542.
    DATA t1543 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1543.
    DATA t1544 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1544.
    DATA t1545 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1545.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1545 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1546) = |v915|.
    t1544 = t1545->get( p0 = t1546 ).
    t1543 = t1544.
    t1539 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1540 i_f1 = t1541 i_f2 = t1543 ).
    APPEND t1539 TO t1538->items.
    DATA(t1547) = t1302.
    DATA t1548 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1548.
    DATA(t1549) = |st_z|.
    DATA t1550 TYPE int8.
    DATA(t1551) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1550 = t1551.
    DATA t1552 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1552.
    DATA t1553 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1553.
    DATA t1554 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1554.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1554 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1555) = |v915|.
    t1553 = t1554->get( p0 = t1555 ).
    t1552 = t1553.
    t1548 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1549 i_f1 = t1550 i_f2 = t1552 ).
    APPEND t1548 TO t1547->items.
    DATA(t1556) = t1302.
    DATA t1557 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1557.
    DATA(t1558) = |st_m|.
    DATA t1559 TYPE int8.
    DATA(t1560) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1559 = t1560.
    DATA t1561 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1561.
    DATA t1562 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1562.
    DATA t1563 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1563.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1563 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1564) = |v915|.
    t1562 = t1563->get( p0 = t1564 ).
    t1561 = t1562.
    t1557 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1558 i_f1 = t1559 i_f2 = t1561 ).
    APPEND t1557 TO t1556->items.
    DATA(t1565) = t1302.
    DATA t1566 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1566.
    DATA(t1567) = |st_xmax|.
    DATA t1568 TYPE int8.
    DATA(t1569) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1568 = t1569.
    DATA t1570 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1570.
    DATA t1571 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1571.
    DATA t1572 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1572.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1572 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1573) = |v915|.
    t1571 = t1572->get( p0 = t1573 ).
    t1570 = t1571.
    t1566 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1567 i_f1 = t1568 i_f2 = t1570 ).
    APPEND t1566 TO t1565->items.
    DATA(t1574) = t1302.
    DATA t1575 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1575.
    DATA(t1576) = |st_xmin|.
    DATA t1577 TYPE int8.
    DATA(t1578) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1577 = t1578.
    DATA t1579 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1579.
    DATA t1580 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1580.
    DATA t1581 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1581.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1581 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1582) = |v915|.
    t1580 = t1581->get( p0 = t1582 ).
    t1579 = t1580.
    t1575 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1576 i_f1 = t1577 i_f2 = t1579 ).
    APPEND t1575 TO t1574->items.
    DATA(t1583) = t1302.
    DATA t1584 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1584.
    DATA(t1585) = |st_ymax|.
    DATA t1586 TYPE int8.
    DATA(t1587) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1586 = t1587.
    DATA t1588 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1588.
    DATA t1589 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1589.
    DATA t1590 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1590.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1590 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1591) = |v915|.
    t1589 = t1590->get( p0 = t1591 ).
    t1588 = t1589.
    t1584 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1585 i_f1 = t1586 i_f2 = t1588 ).
    APPEND t1584 TO t1583->items.
    DATA(t1592) = t1302.
    DATA t1593 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1593.
    DATA(t1594) = |st_ymin|.
    DATA t1595 TYPE int8.
    DATA(t1596) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1595 = t1596.
    DATA t1597 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1597.
    DATA t1598 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1598.
    DATA t1599 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1599.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1599 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1600) = |v915|.
    t1598 = t1599->get( p0 = t1600 ).
    t1597 = t1598.
    t1593 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1594 i_f1 = t1595 i_f2 = t1597 ).
    APPEND t1593 TO t1592->items.
    DATA(t1601) = t1302.
    DATA t1602 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1602.
    DATA(t1603) = |st_zmax|.
    DATA t1604 TYPE int8.
    DATA(t1605) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1604 = t1605.
    DATA t1606 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1606.
    DATA t1607 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1607.
    DATA t1608 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1608.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1608 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1609) = |v915|.
    t1607 = t1608->get( p0 = t1609 ).
    t1606 = t1607.
    t1602 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1603 i_f1 = t1604 i_f2 = t1606 ).
    APPEND t1602 TO t1601->items.
    DATA(t1610) = t1302.
    DATA t1611 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1611.
    DATA(t1612) = |st_zmin|.
    DATA t1613 TYPE int8.
    DATA(t1614) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1613 = t1614.
    DATA t1615 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1615.
    DATA t1616 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1616.
    DATA t1617 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1617.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1617 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1618) = |v915|.
    t1616 = t1617->get( p0 = t1618 ).
    t1615 = t1616.
    t1611 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1612 i_f1 = t1613 i_f2 = t1615 ).
    APPEND t1611 TO t1610->items.
    DATA(t1619) = t1302.
    DATA t1620 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1620.
    DATA(t1621) = |st_mmax|.
    DATA t1622 TYPE int8.
    DATA(t1623) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1622 = t1623.
    DATA t1624 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1624.
    DATA t1625 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1625.
    DATA t1626 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1626.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1626 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1627) = |v915|.
    t1625 = t1626->get( p0 = t1627 ).
    t1624 = t1625.
    t1620 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1621 i_f1 = t1622 i_f2 = t1624 ).
    APPEND t1620 TO t1619->items.
    DATA(t1628) = t1302.
    DATA t1629 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1629.
    DATA(t1630) = |st_mmin|.
    DATA t1631 TYPE int8.
    DATA(t1632) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1631 = t1632.
    DATA t1633 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1633.
    DATA t1634 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1634.
    DATA t1635 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1635.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1635 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1636) = |v915|.
    t1634 = t1635->get( p0 = t1636 ).
    t1633 = t1634.
    t1629 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1630 i_f1 = t1631 i_f2 = t1633 ).
    APPEND t1629 TO t1628->items.
    DATA(t1637) = t1302.
    DATA t1638 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1638.
    DATA(t1639) = |st_area|.
    DATA t1640 TYPE int8.
    DATA(t1641) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1640 = t1641.
    DATA t1642 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1642.
    DATA t1643 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1643.
    DATA t1644 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1644.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1644 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1645) = |v915|.
    t1643 = t1644->get( p0 = t1645 ).
    t1642 = t1643.
    t1638 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1639 i_f1 = t1640 i_f2 = t1642 ).
    APPEND t1638 TO t1637->items.
    DATA(t1646) = t1302.
    DATA t1647 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1647.
    DATA(t1648) = |st_length|.
    DATA t1649 TYPE int8.
    DATA(t1650) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1649 = t1650.
    DATA t1651 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1651.
    DATA t1652 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1652.
    DATA t1653 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1653.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1653 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1654) = |v915|.
    t1652 = t1653->get( p0 = t1654 ).
    t1651 = t1652.
    t1647 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1648 i_f1 = t1649 i_f2 = t1651 ).
    APPEND t1647 TO t1646->items.
    DATA(t1655) = t1302.
    DATA t1656 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1656.
    DATA(t1657) = |st_perimeter|.
    DATA t1658 TYPE int8.
    DATA(t1659) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1658 = t1659.
    DATA t1660 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1660.
    DATA t1661 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1661.
    DATA t1662 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1662.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1662 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1663) = |v915|.
    t1661 = t1662->get( p0 = t1663 ).
    t1660 = t1661.
    t1656 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1657 i_f1 = t1658 i_f2 = t1660 ).
    APPEND t1656 TO t1655->items.
    DATA(t1664) = t1302.
    DATA t1665 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1665.
    DATA(t1666) = |st_dimension|.
    DATA t1667 TYPE int8.
    DATA(t1668) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1667 = t1668.
    DATA t1669 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1669.
    DATA t1670 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1670.
    DATA t1671 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1671.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1671 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1672) = |v915|.
    t1670 = t1671->get( p0 = t1672 ).
    t1669 = t1670.
    t1665 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1666 i_f1 = t1667 i_f2 = t1669 ).
    APPEND t1665 TO t1664->items.
    DATA(t1673) = t1302.
    DATA t1674 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1674.
    DATA(t1675) = |st_coorddim|.
    DATA t1676 TYPE int8.
    DATA(t1677) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1676 = t1677.
    DATA t1678 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1678.
    DATA t1679 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1679.
    DATA t1680 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1680.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1680 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1681) = |v915|.
    t1679 = t1680->get( p0 = t1681 ).
    t1678 = t1679.
    t1674 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1675 i_f1 = t1676 i_f2 = t1678 ).
    APPEND t1674 TO t1673->items.
    DATA(t1682) = t1302.
    DATA t1683 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1683.
    DATA(t1684) = |st_geometrytype|.
    DATA t1685 TYPE int8.
    DATA(t1686) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1685 = t1686.
    DATA t1687 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1687.
    DATA t1688 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1688.
    DATA t1689 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1689.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1689 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1690) = |v915|.
    t1688 = t1689->get( p0 = t1690 ).
    t1687 = t1688.
    t1683 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1684 i_f1 = t1685 i_f2 = t1687 ).
    APPEND t1683 TO t1682->items.
    DATA(t1691) = t1302.
    DATA t1692 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1692.
    DATA(t1693) = |st_isempty|.
    DATA t1694 TYPE int8.
    DATA(t1695) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1694 = t1695.
    DATA t1696 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1696.
    DATA t1697 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1697.
    DATA t1698 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1698.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1698 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1699) = |v915|.
    t1697 = t1698->get( p0 = t1699 ).
    t1696 = t1697.
    t1692 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1693 i_f1 = t1694 i_f2 = t1696 ).
    APPEND t1692 TO t1691->items.
    DATA(t1700) = t1302.
    DATA t1701 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1701.
    DATA(t1702) = |st_issimple|.
    DATA t1703 TYPE int8.
    DATA(t1704) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1703 = t1704.
    DATA t1705 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1705.
    DATA t1706 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1706.
    DATA t1707 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1707.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1707 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1708) = |v915|.
    t1706 = t1707->get( p0 = t1708 ).
    t1705 = t1706.
    t1701 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1702 i_f1 = t1703 i_f2 = t1705 ).
    APPEND t1701 TO t1700->items.
    DATA(t1709) = t1302.
    DATA t1710 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1710.
    DATA(t1711) = |st_isclosed|.
    DATA t1712 TYPE int8.
    DATA(t1713) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1712 = t1713.
    DATA t1714 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1714.
    DATA t1715 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1715.
    DATA t1716 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1716.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1716 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1717) = |v915|.
    t1715 = t1716->get( p0 = t1717 ).
    t1714 = t1715.
    t1710 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1711 i_f1 = t1712 i_f2 = t1714 ).
    APPEND t1710 TO t1709->items.
    DATA(t1718) = t1302.
    DATA t1719 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1719.
    DATA(t1720) = |st_isring|.
    DATA t1721 TYPE int8.
    DATA(t1722) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1721 = t1722.
    DATA t1723 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1723.
    DATA t1724 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1724.
    DATA t1725 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1725.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1725 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1726) = |v915|.
    t1724 = t1725->get( p0 = t1726 ).
    t1723 = t1724.
    t1719 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1720 i_f1 = t1721 i_f2 = t1723 ).
    APPEND t1719 TO t1718->items.
    DATA(t1727) = t1302.
    DATA t1728 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1728.
    DATA(t1729) = |st_isvalid|.
    DATA t1730 TYPE int8.
    DATA(t1731) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1730 = t1731.
    DATA t1732 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1732.
    DATA t1733 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1733.
    DATA t1734 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1734.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1734 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1735) = |v915|.
    t1733 = t1734->get( p0 = t1735 ).
    t1732 = t1733.
    t1728 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1729 i_f1 = t1730 i_f2 = t1732 ).
    APPEND t1728 TO t1727->items.
    DATA(t1736) = t1302.
    DATA t1737 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1737.
    DATA(t1738) = |st_isvalidtrajectory|.
    DATA t1739 TYPE int8.
    DATA(t1740) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1739 = t1740.
    DATA t1741 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1741.
    DATA t1742 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1742.
    DATA t1743 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1743.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1743 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1744) = |v915|.
    t1742 = t1743->get( p0 = t1744 ).
    t1741 = t1742.
    t1737 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1738 i_f1 = t1739 i_f2 = t1741 ).
    APPEND t1737 TO t1736->items.
    DATA(t1745) = t1302.
    DATA t1746 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1746.
    DATA(t1747) = |st_is3d|.
    DATA t1748 TYPE int8.
    DATA(t1749) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1748 = t1749.
    DATA t1750 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1750.
    DATA t1751 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1751.
    DATA t1752 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1752.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1752 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1753) = |v915|.
    t1751 = t1752->get( p0 = t1753 ).
    t1750 = t1751.
    t1746 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1747 i_f1 = t1748 i_f2 = t1750 ).
    APPEND t1746 TO t1745->items.
    DATA(t1754) = t1302.
    DATA t1755 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1755.
    DATA(t1756) = |st_ismeasured|.
    DATA t1757 TYPE int8.
    DATA(t1758) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1757 = t1758.
    DATA t1759 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1759.
    DATA t1760 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1760.
    DATA t1761 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1761.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1761 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1762) = |v915|.
    t1760 = t1761->get( p0 = t1762 ).
    t1759 = t1760.
    t1755 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1756 i_f1 = t1757 i_f2 = t1759 ).
    APPEND t1755 TO t1754->items.
    DATA(t1763) = t1302.
    DATA t1764 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1764.
    DATA(t1765) = |st_invalidreason|.
    DATA t1766 TYPE int8.
    DATA(t1767) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1766 = t1767.
    DATA t1768 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1768.
    DATA t1769 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1769.
    DATA t1770 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1770.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1770 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1771) = |v915|.
    t1769 = t1770->get( p0 = t1771 ).
    t1768 = t1769.
    t1764 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1765 i_f1 = t1766 i_f2 = t1768 ).
    APPEND t1764 TO t1763->items.
    DATA(t1772) = t1302.
    DATA t1773 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1773.
    DATA(t1774) = |st_numpoints|.
    DATA t1775 TYPE int8.
    DATA(t1776) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1775 = t1776.
    DATA t1777 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1777.
    DATA t1778 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1778.
    DATA t1779 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1779.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1779 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1780) = |v915|.
    t1778 = t1779->get( p0 = t1780 ).
    t1777 = t1778.
    t1773 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1774 i_f1 = t1775 i_f2 = t1777 ).
    APPEND t1773 TO t1772->items.
    DATA(t1781) = t1302.
    DATA t1782 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1782.
    DATA(t1783) = |st_numgeometries|.
    DATA t1784 TYPE int8.
    DATA(t1785) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1784 = t1785.
    DATA t1786 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1786.
    DATA t1787 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1787.
    DATA t1788 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1788.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1788 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1789) = |v915|.
    t1787 = t1788->get( p0 = t1789 ).
    t1786 = t1787.
    t1782 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1783 i_f1 = t1784 i_f2 = t1786 ).
    APPEND t1782 TO t1781->items.
    DATA(t1790) = t1302.
    DATA t1791 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1791.
    DATA(t1792) = |st_numinteriorring|.
    DATA t1793 TYPE int8.
    DATA(t1794) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1793 = t1794.
    DATA t1795 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1795.
    DATA t1796 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1796.
    DATA t1797 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1797.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1797 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1798) = |v915|.
    t1796 = t1797->get( p0 = t1798 ).
    t1795 = t1796.
    t1791 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1792 i_f1 = t1793 i_f2 = t1795 ).
    APPEND t1791 TO t1790->items.
    DATA(t1799) = t1302.
    DATA t1800 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1800.
    DATA(t1801) = |st_numinteriorrings|.
    DATA t1802 TYPE int8.
    DATA(t1803) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1802 = t1803.
    DATA t1804 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1804.
    DATA t1805 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1805.
    DATA t1806 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1806.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1806 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1807) = |v915|.
    t1805 = t1806->get( p0 = t1807 ).
    t1804 = t1805.
    t1800 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1801 i_f1 = t1802 i_f2 = t1804 ).
    APPEND t1800 TO t1799->items.
    DATA(t1808) = t1302.
    DATA t1809 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1809.
    DATA(t1810) = |st_envelope|.
    DATA t1811 TYPE int8.
    DATA(t1812) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1811 = t1812.
    DATA t1813 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1813.
    DATA t1814 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1814.
    DATA t1815 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1815.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1815 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1816) = |v915|.
    t1814 = t1815->get( p0 = t1816 ).
    t1813 = t1814.
    t1809 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1810 i_f1 = t1811 i_f2 = t1813 ).
    APPEND t1809 TO t1808->items.
    DATA(t1817) = t1302.
    DATA t1818 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1818.
    DATA(t1819) = |st_boundary|.
    DATA t1820 TYPE int8.
    DATA(t1821) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1820 = t1821.
    DATA t1822 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1822.
    DATA t1823 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1823.
    DATA t1824 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1824.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1824 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1825) = |v915|.
    t1823 = t1824->get( p0 = t1825 ).
    t1822 = t1823.
    t1818 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1819 i_f1 = t1820 i_f2 = t1822 ).
    APPEND t1818 TO t1817->items.
    DATA(t1826) = t1302.
    DATA t1827 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1827.
    DATA(t1828) = |st_exteriorring|.
    DATA t1829 TYPE int8.
    DATA(t1830) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1829 = t1830.
    DATA t1831 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1831.
    DATA t1832 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1832.
    DATA t1833 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1833.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1833 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1834) = |v915|.
    t1832 = t1833->get( p0 = t1834 ).
    t1831 = t1832.
    t1827 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1828 i_f1 = t1829 i_f2 = t1831 ).
    APPEND t1827 TO t1826->items.
    DATA(t1835) = t1302.
    DATA t1836 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1836.
    DATA(t1837) = |st_startpoint|.
    DATA t1838 TYPE int8.
    DATA(t1839) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1838 = t1839.
    DATA t1840 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1840.
    DATA t1841 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1841.
    DATA t1842 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1842.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1842 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1843) = |v915|.
    t1841 = t1842->get( p0 = t1843 ).
    t1840 = t1841.
    t1836 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1837 i_f1 = t1838 i_f2 = t1840 ).
    APPEND t1836 TO t1835->items.
    DATA(t1844) = t1302.
    DATA t1845 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1845.
    DATA(t1846) = |st_endpoint|.
    DATA t1847 TYPE int8.
    DATA(t1848) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1847 = t1848.
    DATA t1849 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1849.
    DATA t1850 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1850.
    DATA t1851 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1851.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1851 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1852) = |v915|.
    t1850 = t1851->get( p0 = t1852 ).
    t1849 = t1850.
    t1845 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1846 i_f1 = t1847 i_f2 = t1849 ).
    APPEND t1845 TO t1844->items.
    DATA(t1853) = t1302.
    DATA t1854 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1854.
    DATA(t1855) = |st_centroid|.
    DATA t1856 TYPE int8.
    DATA(t1857) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1856 = t1857.
    DATA t1858 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1858.
    DATA t1859 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1859.
    DATA t1860 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1860.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1860 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1861) = |v915|.
    t1859 = t1860->get( p0 = t1861 ).
    t1858 = t1859.
    t1854 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1855 i_f1 = t1856 i_f2 = t1858 ).
    APPEND t1854 TO t1853->items.
    DATA(t1862) = t1302.
    DATA t1863 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1863.
    DATA(t1864) = |st_pointonsurface|.
    DATA t1865 TYPE int8.
    DATA(t1866) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1865 = t1866.
    DATA t1867 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1867.
    DATA t1868 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1868.
    DATA t1869 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1869.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1869 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1870) = |v915|.
    t1868 = t1869->get( p0 = t1870 ).
    t1867 = t1868.
    t1863 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1864 i_f1 = t1865 i_f2 = t1867 ).
    APPEND t1863 TO t1862->items.
    DATA(t1871) = t1302.
    DATA t1872 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1872.
    DATA(t1873) = |st_convexhull|.
    DATA t1874 TYPE int8.
    DATA(t1875) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1874 = t1875.
    DATA t1876 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1876.
    DATA t1877 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1877.
    DATA t1878 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1878.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1878 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1879) = |v915|.
    t1877 = t1878->get( p0 = t1879 ).
    t1876 = t1877.
    t1872 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1873 i_f1 = t1874 i_f2 = t1876 ).
    APPEND t1872 TO t1871->items.
    DATA(t1880) = t1302.
    DATA t1881 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1881.
    DATA(t1882) = |st_concavehull|.
    DATA t1883 TYPE int8.
    DATA(t1884) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1883 = t1884.
    DATA t1885 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1885.
    DATA t1886 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1886.
    DATA t1887 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1887.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1887 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1888) = |v915|.
    t1886 = t1887->get( p0 = t1888 ).
    t1885 = t1886.
    t1881 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1882 i_f1 = t1883 i_f2 = t1885 ).
    APPEND t1881 TO t1880->items.
    DATA(t1889) = t1302.
    DATA t1890 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1890.
    DATA(t1891) = |st_reverse|.
    DATA t1892 TYPE int8.
    DATA(t1893) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1892 = t1893.
    DATA t1894 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1894.
    DATA t1895 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1895.
    DATA t1896 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1896.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1896 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1897) = |v915|.
    t1895 = t1896->get( p0 = t1897 ).
    t1894 = t1895.
    t1890 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1891 i_f1 = t1892 i_f2 = t1894 ).
    APPEND t1890 TO t1889->items.
    DATA(t1898) = t1302.
    DATA t1899 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1899.
    DATA(t1900) = |st_force2d|.
    DATA t1901 TYPE int8.
    DATA(t1902) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1901 = t1902.
    DATA t1903 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1903.
    DATA t1904 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1904.
    DATA t1905 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1905.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1905 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1906) = |v915|.
    t1904 = t1905->get( p0 = t1906 ).
    t1903 = t1904.
    t1899 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1900 i_f1 = t1901 i_f2 = t1903 ).
    APPEND t1899 TO t1898->items.
    DATA(t1907) = t1302.
    DATA t1908 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1908.
    DATA(t1909) = |st_force3dz|.
    DATA t1910 TYPE int8.
    DATA(t1911) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1910 = t1911.
    DATA t1912 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1912.
    DATA t1913 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1913.
    DATA t1914 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1914.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1914 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1915) = |v915|.
    t1913 = t1914->get( p0 = t1915 ).
    t1912 = t1913.
    t1908 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1909 i_f1 = t1910 i_f2 = t1912 ).
    APPEND t1908 TO t1907->items.
    DATA(t1916) = t1302.
    DATA t1917 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1917.
    DATA(t1918) = |st_force3dm|.
    DATA t1919 TYPE int8.
    DATA(t1920) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1919 = t1920.
    DATA t1921 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1921.
    DATA t1922 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1922.
    DATA t1923 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1923.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1923 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1924) = |v915|.
    t1922 = t1923->get( p0 = t1924 ).
    t1921 = t1922.
    t1917 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1918 i_f1 = t1919 i_f2 = t1921 ).
    APPEND t1917 TO t1916->items.
    DATA(t1925) = t1302.
    DATA t1926 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1926.
    DATA(t1927) = |st_force4d|.
    DATA t1928 TYPE int8.
    DATA(t1929) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1928 = t1929.
    DATA t1930 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1930.
    DATA t1931 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1931.
    DATA t1932 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1932.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1932 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1933) = |v915|.
    t1931 = t1932->get( p0 = t1933 ).
    t1930 = t1931.
    t1926 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1927 i_f1 = t1928 i_f2 = t1930 ).
    APPEND t1926 TO t1925->items.
    DATA(t1934) = t1302.
    DATA t1935 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1935.
    DATA(t1936) = |st_makevalid|.
    DATA t1937 TYPE int8.
    DATA(t1938) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1937 = t1938.
    DATA t1939 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1939.
    DATA t1940 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1940.
    DATA t1941 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1941.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1941 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1942) = |v915|.
    t1940 = t1941->get( p0 = t1942 ).
    t1939 = t1940.
    t1935 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1936 i_f1 = t1937 i_f2 = t1939 ).
    APPEND t1935 TO t1934->items.
    DATA(t1943) = t1302.
    DATA t1944 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1944.
    DATA(t1945) = |st_geohash|.
    DATA t1946 TYPE int8.
    DATA(t1947) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1946 = t1947.
    DATA t1948 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1948.
    DATA t1949 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1949.
    DATA t1950 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1950.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1950 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1951) = |v915|.
    t1949 = t1950->get( p0 = t1951 ).
    t1948 = t1949.
    t1944 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1945 i_f1 = t1946 i_f2 = t1948 ).
    APPEND t1944 TO t1943->items.
    DATA(t1952) = t1302.
    DATA t1953 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1953.
    DATA(t1954) = |st_aswkt|.
    DATA t1955 TYPE int8.
    DATA(t1956) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1955 = t1956.
    DATA t1957 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1957.
    DATA t1958 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1958.
    DATA t1959 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1959.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1959 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1960) = |v915|.
    t1958 = t1959->get( p0 = t1960 ).
    t1957 = t1958.
    t1953 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1954 i_f1 = t1955 i_f2 = t1957 ).
    APPEND t1953 TO t1952->items.
    DATA(t1961) = t1302.
    DATA t1962 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1962.
    DATA(t1963) = |st_aswkb|.
    DATA t1964 TYPE int8.
    DATA(t1965) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1964 = t1965.
    DATA t1966 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1966.
    DATA t1967 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1967.
    DATA t1968 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1968.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1968 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1969) = |v915|.
    t1967 = t1968->get( p0 = t1969 ).
    t1966 = t1967.
    t1962 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1963 i_f1 = t1964 i_f2 = t1966 ).
    APPEND t1962 TO t1961->items.
    DATA(t1970) = t1302.
    DATA t1971 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1971.
    DATA(t1972) = |st_asewkt|.
    DATA t1973 TYPE int8.
    DATA(t1974) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1973 = t1974.
    DATA t1975 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1975.
    DATA t1976 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1976.
    DATA t1977 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1977.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1977 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1978) = |v915|.
    t1976 = t1977->get( p0 = t1978 ).
    t1975 = t1976.
    t1971 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1972 i_f1 = t1973 i_f2 = t1975 ).
    APPEND t1971 TO t1970->items.
    DATA(t1979) = t1302.
    DATA t1980 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1980.
    DATA(t1981) = |st_asewkb|.
    DATA t1982 TYPE int8.
    DATA(t1983) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1982 = t1983.
    DATA t1984 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1984.
    DATA t1985 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1985.
    DATA t1986 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1986.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1986 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1987) = |v915|.
    t1985 = t1986->get( p0 = t1987 ).
    t1984 = t1985.
    t1980 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1981 i_f1 = t1982 i_f2 = t1984 ).
    APPEND t1980 TO t1979->items.
    DATA(t1988) = t1302.
    DATA t1989 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1989.
    DATA(t1990) = |st_asbinary|.
    DATA t1991 TYPE int8.
    DATA(t1992) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1991 = t1992.
    DATA t1993 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1993.
    DATA t1994 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1994.
    DATA t1995 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1995.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1995 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1996) = |v915|.
    t1994 = t1995->get( p0 = t1996 ).
    t1993 = t1994.
    t1989 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1990 i_f1 = t1991 i_f2 = t1993 ).
    APPEND t1989 TO t1988->items.
    DATA(t1997) = t1302.
    DATA t1998 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1998.
    DATA(t1999) = |st_astext|.
    DATA t2000 TYPE int8.
    DATA(t2001) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2000 = t2001.
    DATA t2002 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2002.
    DATA t2003 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2003.
    DATA t2004 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2004.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2004 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2005) = |v915|.
    t2003 = t2004->get( p0 = t2005 ).
    t2002 = t2003.
    t1998 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1999 i_f1 = t2000 i_f2 = t2002 ).
    APPEND t1998 TO t1997->items.
    DATA(t2006) = t1302.
    DATA t2007 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2007.
    DATA(t2008) = |st_asgeojson|.
    DATA t2009 TYPE int8.
    DATA(t2010) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2009 = t2010.
    DATA t2011 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2011.
    DATA t2012 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2012.
    DATA t2013 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2013.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2013 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2014) = |v915|.
    t2012 = t2013->get( p0 = t2014 ).
    t2011 = t2012.
    t2007 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2008 i_f1 = t2009 i_f2 = t2011 ).
    APPEND t2007 TO t2006->items.
    DATA(t2015) = t1302.
    DATA t2016 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2016.
    DATA(t2017) = |st_asesrijson|.
    DATA t2018 TYPE int8.
    DATA(t2019) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2018 = t2019.
    DATA t2020 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2020.
    DATA t2021 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2021.
    DATA t2022 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2022.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2022 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2023) = |v915|.
    t2021 = t2022->get( p0 = t2023 ).
    t2020 = t2021.
    t2016 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2017 i_f1 = t2018 i_f2 = t2020 ).
    APPEND t2016 TO t2015->items.
    DATA(t2024) = t1302.
    DATA t2025 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2025.
    DATA(t2026) = |st_assvg|.
    DATA t2027 TYPE int8.
    DATA(t2028) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2027 = t2028.
    DATA t2029 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2029.
    DATA t2030 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2030.
    DATA t2031 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2031.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2031 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2032) = |v915|.
    t2030 = t2031->get( p0 = t2032 ).
    t2029 = t2030.
    t2025 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2026 i_f1 = t2027 i_f2 = t2029 ).
    APPEND t2025 TO t2024->items.
    DATA(t2033) = t1302.
    DATA t2034 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2034.
    DATA(t2035) = |st_distance|.
    DATA t2036 TYPE int8.
    DATA(t2037) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2036 = t2037.
    DATA t2038 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2038.
    DATA t2039 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2039.
    DATA t2040 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2040.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2040 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2041) = |v915|.
    t2039 = t2040->get( p0 = t2041 ).
    t2038 = t2039.
    t2034 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2035 i_f1 = t2036 i_f2 = t2038 ).
    APPEND t2034 TO t2033->items.
    DATA(t2042) = t1302.
    DATA t2043 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2043.
    DATA(t2044) = |st_withindistance|.
    DATA t2045 TYPE int8.
    DATA(t2046) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2045 = t2046.
    DATA t2047 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2047.
    DATA t2048 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2048.
    DATA t2049 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2049.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2049 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2050) = |v915|.
    t2048 = t2049->get( p0 = t2050 ).
    t2047 = t2048.
    t2043 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2044 i_f1 = t2045 i_f2 = t2047 ).
    APPEND t2043 TO t2042->items.
    DATA(t2051) = t1302.
    DATA t2052 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2052.
    DATA(t2053) = |st_contains|.
    DATA t2054 TYPE int8.
    DATA(t2055) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2054 = t2055.
    DATA t2056 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2056.
    DATA t2057 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2057.
    DATA t2058 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2058.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2058 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2059) = |v915|.
    t2057 = t2058->get( p0 = t2059 ).
    t2056 = t2057.
    t2052 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2053 i_f1 = t2054 i_f2 = t2056 ).
    APPEND t2052 TO t2051->items.
    DATA(t2060) = t1302.
    DATA t2061 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2061.
    DATA(t2062) = |st_covers|.
    DATA t2063 TYPE int8.
    DATA(t2064) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2063 = t2064.
    DATA t2065 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2065.
    DATA t2066 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2066.
    DATA t2067 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2067.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2067 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2068) = |v915|.
    t2066 = t2067->get( p0 = t2068 ).
    t2065 = t2066.
    t2061 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2062 i_f1 = t2063 i_f2 = t2065 ).
    APPEND t2061 TO t2060->items.
    DATA(t2069) = t1302.
    DATA t2070 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2070.
    DATA(t2071) = |st_coveredby|.
    DATA t2072 TYPE int8.
    DATA(t2073) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2072 = t2073.
    DATA t2074 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2074.
    DATA t2075 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2075.
    DATA t2076 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2076.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2076 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2077) = |v915|.
    t2075 = t2076->get( p0 = t2077 ).
    t2074 = t2075.
    t2070 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2071 i_f1 = t2072 i_f2 = t2074 ).
    APPEND t2070 TO t2069->items.
    DATA(t2078) = t1302.
    DATA t2079 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2079.
    DATA(t2080) = |st_crosses|.
    DATA t2081 TYPE int8.
    DATA(t2082) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2081 = t2082.
    DATA t2083 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2083.
    DATA t2084 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2084.
    DATA t2085 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2085.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2085 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2086) = |v915|.
    t2084 = t2085->get( p0 = t2086 ).
    t2083 = t2084.
    t2079 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2080 i_f1 = t2081 i_f2 = t2083 ).
    APPEND t2079 TO t2078->items.
    DATA(t2087) = t1302.
    DATA t2088 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2088.
    DATA(t2089) = |st_disjoint|.
    DATA t2090 TYPE int8.
    DATA(t2091) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2090 = t2091.
    DATA t2092 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2092.
    DATA t2093 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2093.
    DATA t2094 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2094.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2094 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2095) = |v915|.
    t2093 = t2094->get( p0 = t2095 ).
    t2092 = t2093.
    t2088 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2089 i_f1 = t2090 i_f2 = t2092 ).
    APPEND t2088 TO t2087->items.
    DATA(t2096) = t1302.
    DATA t2097 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2097.
    DATA(t2098) = |st_equals|.
    DATA t2099 TYPE int8.
    DATA(t2100) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2099 = t2100.
    DATA t2101 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2101.
    DATA t2102 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2102.
    DATA t2103 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2103.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2103 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2104) = |v915|.
    t2102 = t2103->get( p0 = t2104 ).
    t2101 = t2102.
    t2097 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2098 i_f1 = t2099 i_f2 = t2101 ).
    APPEND t2097 TO t2096->items.
    DATA(t2105) = t1302.
    DATA t2106 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2106.
    DATA(t2107) = |st_orderingequals|.
    DATA t2108 TYPE int8.
    DATA(t2109) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2108 = t2109.
    DATA t2110 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2110.
    DATA t2111 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2111.
    DATA t2112 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2112.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2112 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2113) = |v915|.
    t2111 = t2112->get( p0 = t2113 ).
    t2110 = t2111.
    t2106 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2107 i_f1 = t2108 i_f2 = t2110 ).
    APPEND t2106 TO t2105->items.
    DATA(t2114) = t1302.
    DATA t2115 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2115.
    DATA(t2116) = |st_intersects|.
    DATA t2117 TYPE int8.
    DATA(t2118) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2117 = t2118.
    DATA t2119 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2119.
    DATA t2120 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2120.
    DATA t2121 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2121.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2121 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2122) = |v915|.
    t2120 = t2121->get( p0 = t2122 ).
    t2119 = t2120.
    t2115 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2116 i_f1 = t2117 i_f2 = t2119 ).
    APPEND t2115 TO t2114->items.
    DATA(t2123) = t1302.
    DATA t2124 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2124.
    DATA(t2125) = |st_intersectsfilter|.
    DATA t2126 TYPE int8.
    DATA(t2127) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2126 = t2127.
    DATA t2128 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2128.
    DATA t2129 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2129.
    DATA t2130 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2130.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2130 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2131) = |v915|.
    t2129 = t2130->get( p0 = t2131 ).
    t2128 = t2129.
    t2124 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2125 i_f1 = t2126 i_f2 = t2128 ).
    APPEND t2124 TO t2123->items.
    DATA(t2132) = t1302.
    DATA t2133 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2133.
    DATA(t2134) = |st_intersectsrect|.
    DATA t2135 TYPE int8.
    DATA(t2136) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2135 = t2136.
    DATA t2137 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2137.
    DATA t2138 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2138.
    DATA t2139 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2139.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2139 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2140) = |v915|.
    t2138 = t2139->get( p0 = t2140 ).
    t2137 = t2138.
    t2133 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2134 i_f1 = t2135 i_f2 = t2137 ).
    APPEND t2133 TO t2132->items.
    DATA(t2141) = t1302.
    DATA t2142 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2142.
    DATA(t2143) = |st_intersectsrectplanar|.
    DATA t2144 TYPE int8.
    DATA(t2145) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2144 = t2145.
    DATA t2146 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2146.
    DATA t2147 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2147.
    DATA t2148 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2148.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2148 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2149) = |v915|.
    t2147 = t2148->get( p0 = t2149 ).
    t2146 = t2147.
    t2142 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2143 i_f1 = t2144 i_f2 = t2146 ).
    APPEND t2142 TO t2141->items.
    DATA(t2150) = t1302.
    DATA t2151 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2151.
    DATA(t2152) = |st_overlaps|.
    DATA t2153 TYPE int8.
    DATA(t2154) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2153 = t2154.
    DATA t2155 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2155.
    DATA t2156 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2156.
    DATA t2157 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2157.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2157 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2158) = |v915|.
    t2156 = t2157->get( p0 = t2158 ).
    t2155 = t2156.
    t2151 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2152 i_f1 = t2153 i_f2 = t2155 ).
    APPEND t2151 TO t2150->items.
    DATA(t2159) = t1302.
    DATA t2160 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2160.
    DATA(t2161) = |st_touches|.
    DATA t2162 TYPE int8.
    DATA(t2163) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2162 = t2163.
    DATA t2164 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2164.
    DATA t2165 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2165.
    DATA t2166 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2166.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2166 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2167) = |v915|.
    t2165 = t2166->get( p0 = t2167 ).
    t2164 = t2165.
    t2160 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2161 i_f1 = t2162 i_f2 = t2164 ).
    APPEND t2160 TO t2159->items.
    DATA(t2168) = t1302.
    DATA t2169 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2169.
    DATA(t2170) = |st_within|.
    DATA t2171 TYPE int8.
    DATA(t2172) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2171 = t2172.
    DATA t2173 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2173.
    DATA t2174 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2174.
    DATA t2175 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2175.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2175 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2176) = |v915|.
    t2174 = t2175->get( p0 = t2176 ).
    t2173 = t2174.
    t2169 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2170 i_f1 = t2171 i_f2 = t2173 ).
    APPEND t2169 TO t2168->items.
    DATA(t2177) = t1302.
    DATA t2178 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2178.
    DATA(t2179) = |st_intersection|.
    DATA t2180 TYPE int8.
    DATA(t2181) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2180 = t2181.
    DATA t2182 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2182.
    DATA t2183 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2183.
    DATA t2184 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2184.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2184 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2185) = |v915|.
    t2183 = t2184->get( p0 = t2185 ).
    t2182 = t2183.
    t2178 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2179 i_f1 = t2180 i_f2 = t2182 ).
    APPEND t2178 TO t2177->items.
    DATA(t2186) = t1302.
    DATA t2187 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2187.
    DATA(t2188) = |st_union|.
    DATA t2189 TYPE int8.
    DATA(t2190) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2189 = t2190.
    DATA t2191 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2191.
    DATA t2192 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2192.
    DATA t2193 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2193.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2193 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2194) = |v915|.
    t2192 = t2193->get( p0 = t2194 ).
    t2191 = t2192.
    t2187 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2188 i_f1 = t2189 i_f2 = t2191 ).
    APPEND t2187 TO t2186->items.
    DATA(t2195) = t1302.
    DATA t2196 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2196.
    DATA(t2197) = |st_difference|.
    DATA t2198 TYPE int8.
    DATA(t2199) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2198 = t2199.
    DATA t2200 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2200.
    DATA t2201 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2201.
    DATA t2202 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2202.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2202 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2203) = |v915|.
    t2201 = t2202->get( p0 = t2203 ).
    t2200 = t2201.
    t2196 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2197 i_f1 = t2198 i_f2 = t2200 ).
    APPEND t2196 TO t2195->items.
    DATA(t2204) = t1302.
    DATA t2205 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2205.
    DATA(t2206) = |st_symdifference|.
    DATA t2207 TYPE int8.
    DATA(t2208) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2207 = t2208.
    DATA t2209 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2209.
    DATA t2210 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2210.
    DATA t2211 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2211.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2211 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2212) = |v915|.
    t2210 = t2211->get( p0 = t2212 ).
    t2209 = t2210.
    t2205 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2206 i_f1 = t2207 i_f2 = t2209 ).
    APPEND t2205 TO t2204->items.
    DATA(t2213) = t1302.
    DATA t2214 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2214.
    DATA(t2215) = |st_collect|.
    DATA t2216 TYPE int8.
    DATA(t2217) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2216 = t2217.
    DATA t2218 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2218.
    DATA t2219 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2219.
    DATA t2220 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2220.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2220 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2221) = |v915|.
    t2219 = t2220->get( p0 = t2221 ).
    t2218 = t2219.
    t2214 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2215 i_f1 = t2216 i_f2 = t2218 ).
    APPEND t2214 TO t2213->items.
    DATA(t2222) = t1302.
    DATA t2223 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2223.
    DATA(t2224) = |st_buffer|.
    DATA t2225 TYPE int8.
    DATA(t2226) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2225 = t2226.
    DATA t2227 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2227.
    DATA t2228 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2228.
    DATA t2229 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2229.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2229 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2230) = |v915|.
    t2228 = t2229->get( p0 = t2230 ).
    t2227 = t2228.
    t2223 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2224 i_f1 = t2225 i_f2 = t2227 ).
    APPEND t2223 TO t2222->items.
    DATA(t2231) = t1302.
    DATA t2232 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2232.
    DATA(t2233) = |st_transform|.
    DATA t2234 TYPE int8.
    DATA(t2235) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2234 = t2235.
    DATA t2236 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2236.
    DATA t2237 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2237.
    DATA t2238 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2238.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2238 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2239) = |v915|.
    t2237 = t2238->get( p0 = t2239 ).
    t2236 = t2237.
    t2232 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2233 i_f1 = t2234 i_f2 = t2236 ).
    APPEND t2232 TO t2231->items.
    DATA(t2240) = t1302.
    DATA t2241 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2241.
    DATA(t2242) = |st_rotate|.
    DATA t2243 TYPE int8.
    DATA(t2244) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2243 = t2244.
    DATA t2245 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2245.
    DATA t2246 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2246.
    DATA t2247 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2247.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2247 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2248) = |v915|.
    t2246 = t2247->get( p0 = t2248 ).
    t2245 = t2246.
    t2241 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2242 i_f1 = t2243 i_f2 = t2245 ).
    APPEND t2241 TO t2240->items.
    DATA(t2249) = t1302.
    DATA t2250 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2250.
    DATA(t2251) = |st_scale|.
    DATA t2252 TYPE int8.
    DATA(t2253) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2252 = t2253.
    DATA t2254 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2254.
    DATA t2255 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2255.
    DATA t2256 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2256.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2256 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2257) = |v915|.
    t2255 = t2256->get( p0 = t2257 ).
    t2254 = t2255.
    t2250 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2251 i_f1 = t2252 i_f2 = t2254 ).
    APPEND t2250 TO t2249->items.
    DATA(t2258) = t1302.
    DATA t2259 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2259.
    DATA(t2260) = |st_translate|.
    DATA t2261 TYPE int8.
    DATA(t2262) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2261 = t2262.
    DATA t2263 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2263.
    DATA t2264 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2264.
    DATA t2265 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2265.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2265 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2266) = |v915|.
    t2264 = t2265->get( p0 = t2266 ).
    t2263 = t2264.
    t2259 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2260 i_f1 = t2261 i_f2 = t2263 ).
    APPEND t2259 TO t2258->items.
    DATA(t2267) = t1302.
    DATA t2268 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2268.
    DATA(t2269) = |st_translate3d|.
    DATA t2270 TYPE int8.
    DATA(t2271) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2270 = t2271.
    DATA t2272 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2272.
    DATA t2273 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2273.
    DATA t2274 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2274.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2274 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2275) = |v915|.
    t2273 = t2274->get( p0 = t2275 ).
    t2272 = t2273.
    t2268 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2269 i_f1 = t2270 i_f2 = t2272 ).
    APPEND t2268 TO t2267->items.
    DATA(t2276) = t1302.
    DATA t2277 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2277.
    DATA(t2278) = |st_simplify|.
    DATA t2279 TYPE int8.
    DATA(t2280) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2279 = t2280.
    DATA t2281 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2281.
    DATA t2282 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2282.
    DATA t2283 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2283.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2283 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2284) = |v915|.
    t2282 = t2283->get( p0 = t2284 ).
    t2281 = t2282.
    t2277 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2278 i_f1 = t2279 i_f2 = t2281 ).
    APPEND t2277 TO t2276->items.
    DATA(t2285) = t1302.
    DATA t2286 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2286.
    DATA(t2287) = |st_snaptogrid|.
    DATA t2288 TYPE int8.
    DATA(t2289) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2288 = t2289.
    DATA t2290 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2290.
    DATA t2291 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2291.
    DATA t2292 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2292.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2292 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2293) = |v915|.
    t2291 = t2292->get( p0 = t2293 ).
    t2290 = t2291.
    t2286 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2287 i_f1 = t2288 i_f2 = t2290 ).
    APPEND t2286 TO t2285->items.
    DATA(t2294) = t1302.
    DATA t2295 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2295.
    DATA(t2296) = |st_addmeasure|.
    DATA t2297 TYPE int8.
    DATA(t2298) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2297 = t2298.
    DATA t2299 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2299.
    DATA t2300 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2300.
    DATA t2301 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2301.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2301 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2302) = |v915|.
    t2300 = t2301->get( p0 = t2302 ).
    t2299 = t2300.
    t2295 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2296 i_f1 = t2297 i_f2 = t2299 ).
    APPEND t2295 TO t2294->items.
    DATA(t2303) = t1302.
    DATA t2304 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2304.
    DATA(t2305) = |st_addpoint|.
    DATA t2306 TYPE int8.
    DATA(t2307) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2306 = t2307.
    DATA t2308 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2308.
    DATA t2309 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2309.
    DATA t2310 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2310.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2310 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2311) = |v915|.
    t2309 = t2310->get( p0 = t2311 ).
    t2308 = t2309.
    t2304 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2305 i_f1 = t2306 i_f2 = t2308 ).
    APPEND t2304 TO t2303->items.
    DATA(t2312) = t1302.
    DATA t2313 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2313.
    DATA(t2314) = |st_removepoint|.
    DATA t2315 TYPE int8.
    DATA(t2316) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2315 = t2316.
    DATA t2317 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2317.
    DATA t2318 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2318.
    DATA t2319 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2319.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2319 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2320) = |v915|.
    t2318 = t2319->get( p0 = t2320 ).
    t2317 = t2318.
    t2313 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2314 i_f1 = t2315 i_f2 = t2317 ).
    APPEND t2313 TO t2312->items.
    DATA(t2321) = t1302.
    DATA t2322 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2322.
    DATA(t2323) = |st_pointn|.
    DATA t2324 TYPE int8.
    DATA(t2325) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2324 = t2325.
    DATA t2326 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2326.
    DATA t2327 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2327.
    DATA t2328 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2328.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2328 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2329) = |v915|.
    t2327 = t2328->get( p0 = t2329 ).
    t2326 = t2327.
    t2322 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2323 i_f1 = t2324 i_f2 = t2326 ).
    APPEND t2322 TO t2321->items.
    DATA(t2330) = t1302.
    DATA t2331 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2331.
    DATA(t2332) = |st_geometryn|.
    DATA t2333 TYPE int8.
    DATA(t2334) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2333 = t2334.
    DATA t2335 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2335.
    DATA t2336 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2336.
    DATA t2337 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2337.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2337 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2338) = |v915|.
    t2336 = t2337->get( p0 = t2338 ).
    t2335 = t2336.
    t2331 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2332 i_f1 = t2333 i_f2 = t2335 ).
    APPEND t2331 TO t2330->items.
    DATA(t2339) = t1302.
    DATA t2340 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2340.
    DATA(t2341) = |st_interiorringn|.
    DATA t2342 TYPE int8.
    DATA(t2343) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2342 = t2343.
    DATA t2344 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2344.
    DATA t2345 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2345.
    DATA t2346 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2346.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2346 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2347) = |v915|.
    t2345 = t2346->get( p0 = t2347 ).
    t2344 = t2345.
    t2340 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2341 i_f1 = t2342 i_f2 = t2344 ).
    APPEND t2340 TO t2339->items.
    DATA(t2348) = t1302.
    DATA t2349 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2349.
    DATA(t2350) = |st_lineinterpolatepoint|.
    DATA t2351 TYPE int8.
    DATA(t2352) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2351 = t2352.
    DATA t2353 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2353.
    DATA t2354 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2354.
    DATA t2355 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2355.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2355 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2356) = |v915|.
    t2354 = t2355->get( p0 = t2356 ).
    t2353 = t2354.
    t2349 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2350 i_f1 = t2351 i_f2 = t2353 ).
    APPEND t2349 TO t2348->items.
    DATA(t2357) = t1302.
    DATA t2358 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2358.
    DATA(t2359) = |st_linelocatepoint|.
    DATA t2360 TYPE int8.
    DATA(t2361) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2360 = t2361.
    DATA t2362 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2362.
    DATA t2363 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2363.
    DATA t2364 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2364.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2364 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2365) = |v915|.
    t2363 = t2364->get( p0 = t2365 ).
    t2362 = t2363.
    t2358 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2359 i_f1 = t2360 i_f2 = t2362 ).
    APPEND t2358 TO t2357->items.
    DATA(t2366) = t1302.
    DATA t2367 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2367.
    DATA(t2368) = |st_linesubstring|.
    DATA t2369 TYPE int8.
    DATA(t2370) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2369 = t2370.
    DATA t2371 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2371.
    DATA t2372 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2372.
    DATA t2373 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2373.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2373 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2374) = |v915|.
    t2372 = t2373->get( p0 = t2374 ).
    t2371 = t2372.
    t2367 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2368 i_f1 = t2369 i_f2 = t2371 ).
    APPEND t2367 TO t2366->items.
    DATA(t2375) = t1302.
    DATA t2376 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2376.
    DATA(t2377) = |st_locatealong|.
    DATA t2378 TYPE int8.
    DATA(t2379) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2378 = t2379.
    DATA t2380 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2380.
    DATA t2381 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2381.
    DATA t2382 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2382.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2382 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2383) = |v915|.
    t2381 = t2382->get( p0 = t2383 ).
    t2380 = t2381.
    t2376 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2377 i_f1 = t2378 i_f2 = t2380 ).
    APPEND t2376 TO t2375->items.
    DATA(t2384) = t1302.
    DATA t2385 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2385.
    DATA(t2386) = |st_locatebetween|.
    DATA t2387 TYPE int8.
    DATA(t2388) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2387 = t2388.
    DATA t2389 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2389.
    DATA t2390 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2390.
    DATA t2391 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2391.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2391 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2392) = |v915|.
    t2390 = t2391->get( p0 = t2392 ).
    t2389 = t2390.
    t2385 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2386 i_f1 = t2387 i_f2 = t2389 ).
    APPEND t2385 TO t2384->items.
    DATA(t2393) = t1302.
    DATA t2394 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2394.
    DATA(t2395) = |st_alphashape|.
    DATA t2396 TYPE int8.
    DATA(t2397) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2396 = t2397.
    DATA t2398 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2398.
    DATA t2399 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2399.
    DATA t2400 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2400.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2400 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2401) = |v915|.
    t2399 = t2400->get( p0 = t2401 ).
    t2398 = t2399.
    t2394 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2395 i_f1 = t2396 i_f2 = t2398 ).
    APPEND t2394 TO t2393->items.
    DATA(t2402) = t1302.
    DATA t2403 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2403.
    DATA(t2404) = |st_alphashapearea|.
    DATA t2405 TYPE int8.
    DATA(t2406) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2405 = t2406.
    DATA t2407 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2407.
    DATA t2408 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2408.
    DATA t2409 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2409.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2409 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2410) = |v915|.
    t2408 = t2409->get( p0 = t2410 ).
    t2407 = t2408.
    t2403 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2404 i_f1 = t2405 i_f2 = t2407 ).
    APPEND t2403 TO t2402->items.
    DATA(t2411) = t1302.
    DATA t2412 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2412.
    DATA(t2413) = |st_alphashapeedge|.
    DATA t2414 TYPE int8.
    DATA(t2415) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2414 = t2415.
    DATA t2416 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2416.
    DATA t2417 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2417.
    DATA t2418 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2418.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2418 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2419) = |v915|.
    t2417 = t2418->get( p0 = t2419 ).
    t2416 = t2417.
    t2412 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2413 i_f1 = t2414 i_f2 = t2416 ).
    APPEND t2412 TO t2411->items.
    DATA(t2420) = t1302.
    DATA t2421 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2421.
    DATA(t2422) = |st_closestpointofapproach|.
    DATA t2423 TYPE int8.
    DATA(t2424) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2423 = t2424.
    DATA t2425 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2425.
    DATA t2426 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2426.
    DATA t2427 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2427.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2427 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2428) = |v915|.
    t2426 = t2427->get( p0 = t2428 ).
    t2425 = t2426.
    t2421 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2422 i_f1 = t2423 i_f2 = t2425 ).
    APPEND t2421 TO t2420->items.
    DATA(t2429) = t1302.
    DATA t2430 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2430.
    DATA(t2431) = |st_frechetdistance|.
    DATA t2432 TYPE int8.
    DATA(t2433) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2432 = t2433.
    DATA t2434 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2434.
    DATA t2435 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2435.
    DATA t2436 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2436.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2436 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2437) = |v915|.
    t2435 = t2436->get( p0 = t2437 ).
    t2434 = t2435.
    t2430 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2431 i_f1 = t2432 i_f2 = t2434 ).
    APPEND t2430 TO t2429->items.
    DATA(t2438) = t1302.
    DATA t2439 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2439.
    DATA(t2440) = |st_hausdorffdistance|.
    DATA t2441 TYPE int8.
    DATA(t2442) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2441 = t2442.
    DATA t2443 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2443.
    DATA t2444 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2444.
    DATA t2445 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2445.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2445 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2446) = |v915|.
    t2444 = t2445->get( p0 = t2446 ).
    t2443 = t2444.
    t2439 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2440 i_f1 = t2441 i_f2 = t2443 ).
    APPEND t2439 TO t2438->items.
    DATA(t2447) = t1302.
    DATA t2448 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2448.
    DATA(t2449) = |st_3dlength|.
    DATA t2450 TYPE int8.
    DATA(t2451) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2450 = t2451.
    DATA t2452 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2452.
    DATA t2453 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2453.
    DATA t2454 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2454.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2454 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2455) = |v915|.
    t2453 = t2454->get( p0 = t2455 ).
    t2452 = t2453.
    t2448 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2449 i_f1 = t2450 i_f2 = t2452 ).
    APPEND t2448 TO t2447->items.
    DATA(t2456) = t1302.
    DATA t2457 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2457.
    DATA(t2458) = |st_asmvtgeom|.
    DATA t2459 TYPE int8.
    DATA(t2460) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2459 = t2460.
    DATA t2461 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2461.
    DATA t2462 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2462.
    DATA t2463 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2463.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2463 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2464) = |v915|.
    t2462 = t2463->get( p0 = t2464 ).
    t2461 = t2462.
    t2457 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2458 i_f1 = t2459 i_f2 = t2461 ).
    APPEND t2457 TO t2456->items.
    DATA(t2465) = t1302.
    t1301 = t2465.
    zcl_lnt_sql_function_module=>sql_spatial_function_defs = t1301.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    DATA t2466 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2466.
    DATA t2467 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2468 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2468.
    t2467 = t2468.
    DATA(t2469) = t2467.
    DATA t2470 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2470.
    DATA(t2471) = |st_assvgaggr|.
    DATA t2472 TYPE int8.
    DATA(t2473) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2472 = t2473.
    DATA t2474 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2474.
    DATA t2475 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2475.
    DATA t2476 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2476.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2476 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2477) = |v915|.
    t2475 = t2476->get( p0 = t2477 ).
    t2474 = t2475.
    t2470 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2471 i_f1 = t2472 i_f2 = t2474 ).
    APPEND t2470 TO t2469->items.
    DATA(t2478) = t2467.
    DATA t2479 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2479.
    DATA(t2480) = |st_collectaggr|.
    DATA t2481 TYPE int8.
    DATA(t2482) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2481 = t2482.
    DATA t2483 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2483.
    DATA t2484 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2484.
    DATA t2485 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2485.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2485 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2486) = |v915|.
    t2484 = t2485->get( p0 = t2486 ).
    t2483 = t2484.
    t2479 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2480 i_f1 = t2481 i_f2 = t2483 ).
    APPEND t2479 TO t2478->items.
    DATA(t2487) = t2467.
    DATA t2488 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2488.
    DATA(t2489) = |st_concavehullaggr|.
    DATA t2490 TYPE int8.
    DATA(t2491) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2490 = t2491.
    DATA t2492 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2492.
    DATA t2493 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2493.
    DATA t2494 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2494.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2494 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2495) = |v915|.
    t2493 = t2494->get( p0 = t2495 ).
    t2492 = t2493.
    t2488 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2489 i_f1 = t2490 i_f2 = t2492 ).
    APPEND t2488 TO t2487->items.
    DATA(t2496) = t2467.
    DATA t2497 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2497.
    DATA(t2498) = |st_convexhullaggr|.
    DATA t2499 TYPE int8.
    DATA(t2500) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2499 = t2500.
    DATA t2501 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2501.
    DATA t2502 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2502.
    DATA t2503 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2503.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2503 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2504) = |v915|.
    t2502 = t2503->get( p0 = t2504 ).
    t2501 = t2502.
    t2497 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2498 i_f1 = t2499 i_f2 = t2501 ).
    APPEND t2497 TO t2496->items.
    DATA(t2505) = t2467.
    DATA t2506 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2506.
    DATA(t2507) = |st_envelopeaggr|.
    DATA t2508 TYPE int8.
    DATA(t2509) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2508 = t2509.
    DATA t2510 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2510.
    DATA t2511 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2511.
    DATA t2512 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2512.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2512 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2513) = |v915|.
    t2511 = t2512->get( p0 = t2513 ).
    t2510 = t2511.
    t2506 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2507 i_f1 = t2508 i_f2 = t2510 ).
    APPEND t2506 TO t2505->items.
    DATA(t2514) = t2467.
    DATA t2515 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2515.
    DATA(t2516) = |st_intersectionaggr|.
    DATA t2517 TYPE int8.
    DATA(t2518) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2517 = t2518.
    DATA t2519 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2519.
    DATA t2520 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2520.
    DATA t2521 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2521.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2521 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2522) = |v915|.
    t2520 = t2521->get( p0 = t2522 ).
    t2519 = t2520.
    t2515 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2516 i_f1 = t2517 i_f2 = t2519 ).
    APPEND t2515 TO t2514->items.
    DATA(t2523) = t2467.
    DATA t2524 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2524.
    DATA(t2525) = |st_unionaggr|.
    DATA t2526 TYPE int8.
    DATA(t2527) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2526 = t2527.
    DATA t2528 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2528.
    DATA t2529 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2529.
    DATA t2530 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2530.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2530 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2531) = |v915|.
    t2529 = t2530->get( p0 = t2531 ).
    t2528 = t2529.
    t2524 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2525 i_f1 = t2526 i_f2 = t2528 ).
    APPEND t2524 TO t2523->items.
    DATA(t2532) = t2467.
    DATA t2533 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2533.
    DATA(t2534) = |st_alphashapeaggr|.
    DATA t2535 TYPE int8.
    DATA(t2536) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2535 = t2536.
    DATA t2537 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2537.
    DATA t2538 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2538.
    DATA t2539 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2539.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2539 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2540) = |v915|.
    t2538 = t2539->get( p0 = t2540 ).
    t2537 = t2538.
    t2533 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2534 i_f1 = t2535 i_f2 = t2537 ).
    APPEND t2533 TO t2532->items.
    DATA(t2541) = t2467.
    DATA t2542 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2542.
    DATA(t2543) = |st_alphashapeareaaggr|.
    DATA t2544 TYPE int8.
    DATA(t2545) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2544 = t2545.
    DATA t2546 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2546.
    DATA t2547 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2547.
    DATA t2548 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2548.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2548 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2549) = |v915|.
    t2547 = t2548->get( p0 = t2549 ).
    t2546 = t2547.
    t2542 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2543 i_f1 = t2544 i_f2 = t2546 ).
    APPEND t2542 TO t2541->items.
    DATA(t2550) = t2467.
    DATA t2551 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2551.
    DATA(t2552) = |st_alphashapeedgeaggr|.
    DATA t2553 TYPE int8.
    DATA(t2554) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2553 = t2554.
    DATA t2555 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2555.
    DATA t2556 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2556.
    DATA t2557 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2557.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2557 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2558) = |v915|.
    t2556 = t2557->get( p0 = t2558 ).
    t2555 = t2556.
    t2551 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2552 i_f1 = t2553 i_f2 = t2555 ).
    APPEND t2551 TO t2550->items.
    DATA(t2559) = t2467.
    t2466 = t2559.
    zcl_lnt_sql_function_module=>sql_spatial_aggregate_defs = t2466.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1845_f4109fc9ef62.
  ENDMETHOD.
ENDCLASS.
