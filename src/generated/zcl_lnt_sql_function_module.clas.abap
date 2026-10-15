* TS: src/abap/2_statements/expressions/sql_function.ts.module module
CLASS zcl_lnt_sql_function_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CONSTANTS variadic TYPE i VALUE -1.
    CLASS-DATA sql_function_defs TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA sql_named_function_defs TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA sql_spatial_function_defs TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA sql_spatial_aggregate_defs TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA zlnt_builtin_init_070f1fc1b1a8 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_916c47d62a99.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
    DATA(t7) = CONV f( 1 ).
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
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t12) = t2.
    DATA t13 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t13.
    DATA(t14) = |ceil|.
    DATA(t15) = CONV f( 1 ).
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
    t12->load( ).
    APPEND t13 TO t12->items.
    t12->save( ).
    DATA(t20) = t2.
    DATA t21 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t21.
    DATA(t22) = |floor|.
    DATA(t23) = CONV f( 1 ).
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
    t20->load( ).
    APPEND t21 TO t20->items.
    t20->save( ).
    DATA(t28) = t2.
    DATA t29 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t29.
    DATA(t30) = |div|.
    DATA(t31) = CONV f( 2 ).
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
    t28->load( ).
    APPEND t29 TO t28->items.
    t28->save( ).
    DATA(t36) = t2.
    DATA t37 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t37.
    DATA(t38) = |mod|.
    DATA(t39) = CONV f( 2 ).
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
    t36->load( ).
    APPEND t37 TO t36->items.
    t36->save( ).
    DATA(t44) = t2.
    DATA t45 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t45.
    DATA(t46) = |coalesce|.
    DATA t47 TYPE f.
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
    t44->load( ).
    APPEND t45 TO t44->items.
    t44->save( ).
    DATA(t53) = t2.
    DATA t54 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t54.
    DATA(t55) = |concat|.
    DATA(t56) = CONV f( 2 ).
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
    t53->load( ).
    APPEND t54 TO t53->items.
    t53->save( ).
    DATA(t61) = t2.
    DATA t62 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t62.
    DATA(t63) = |length|.
    DATA(t64) = CONV f( 1 ).
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
    t61->load( ).
    APPEND t62 TO t61->items.
    t61->save( ).
    DATA(t69) = t2.
    DATA t70 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t70.
    DATA(t71) = |ltrim|.
    DATA(t72) = CONV f( 2 ).
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
    t69->load( ).
    APPEND t70 TO t69->items.
    t69->save( ).
    DATA(t77) = t2.
    DATA t78 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t78.
    DATA(t79) = |rtrim|.
    DATA(t80) = CONV f( 2 ).
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
    t77->load( ).
    APPEND t78 TO t77->items.
    t77->save( ).
    DATA(t85) = t2.
    DATA t86 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t86.
    DATA(t87) = |right|.
    DATA(t88) = CONV f( 2 ).
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
    t85->load( ).
    APPEND t86 TO t85->items.
    t85->save( ).
    DATA(t93) = t2.
    DATA t94 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t94.
    DATA(t95) = |replace|.
    DATA(t96) = CONV f( 3 ).
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
    t93->load( ).
    APPEND t94 TO t93->items.
    t93->save( ).
    DATA(t101) = t2.
    DATA t102 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t102.
    DATA(t103) = |round|.
    DATA(t104) = CONV f( 2 ).
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
    t101->load( ).
    APPEND t102 TO t101->items.
    t101->save( ).
    DATA(t109) = t2.
    DATA t110 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t110.
    DATA(t111) = |substring|.
    DATA(t112) = CONV f( 3 ).
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
    t109->load( ).
    APPEND t110 TO t109->items.
    t109->save( ).
    DATA(t117) = t2.
    DATA t118 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t118.
    DATA(t119) = |lpad|.
    DATA(t120) = CONV f( 3 ).
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
    t117->load( ).
    APPEND t118 TO t117->items.
    t117->save( ).
    DATA(t125) = t2.
    DATA t126 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t126.
    DATA(t127) = |instr|.
    DATA(t128) = CONV f( 2 ).
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
    t125->load( ).
    APPEND t126 TO t125->items.
    t125->save( ).
    DATA(t133) = t2.
    DATA t134 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t134.
    DATA(t135) = |concat_with_space|.
    DATA(t136) = CONV f( 3 ).
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
    t133->load( ).
    APPEND t134 TO t133->items.
    t133->save( ).
    DATA(t141) = t2.
    DATA t142 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t142.
    DATA(t143) = |rpad|.
    DATA(t144) = CONV f( 3 ).
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
    t141->load( ).
    APPEND t142 TO t141->items.
    t141->save( ).
    DATA(t149) = t2.
    DATA t150 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t150.
    DATA(t151) = |left|.
    DATA(t152) = CONV f( 2 ).
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
    t149->load( ).
    APPEND t150 TO t149->items.
    t149->save( ).
    DATA(t157) = t2.
    DATA t158 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t158.
    DATA(t159) = |lower|.
    DATA(t160) = CONV f( 1 ).
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
    t157->load( ).
    APPEND t158 TO t157->items.
    t157->save( ).
    DATA(t165) = t2.
    DATA t166 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t166.
    DATA(t167) = |upper|.
    DATA(t168) = CONV f( 1 ).
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
    t165->load( ).
    APPEND t166 TO t165->items.
    t165->save( ).
    DATA(t173) = t2.
    DATA t174 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t174.
    DATA(t175) = |division|.
    DATA(t176) = CONV f( 3 ).
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
    t173->load( ).
    APPEND t174 TO t173->items.
    t173->save( ).
    DATA(t181) = t2.
    DATA t182 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t182.
    DATA(t183) = |bintohex|.
    DATA(t184) = CONV f( 1 ).
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
    t181->load( ).
    APPEND t182 TO t181->items.
    t181->save( ).
    DATA(t189) = t2.
    DATA t190 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t190.
    DATA(t191) = |hextobin|.
    DATA(t192) = CONV f( 1 ).
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
    t189->load( ).
    APPEND t190 TO t189->items.
    t189->save( ).
    DATA(t197) = t2.
    DATA t198 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t198.
    DATA(t199) = |dats_is_valid|.
    DATA(t200) = CONV f( 1 ).
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
    t197->load( ).
    APPEND t198 TO t197->items.
    t197->save( ).
    DATA(t205) = t2.
    DATA t206 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t206.
    DATA(t207) = |dats_days_between|.
    DATA(t208) = CONV f( 2 ).
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
    t205->load( ).
    APPEND t206 TO t205->items.
    t205->save( ).
    DATA(t213) = t2.
    DATA t214 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t214.
    DATA(t215) = |dats_add_days|.
    DATA(t216) = CONV f( 2 ).
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
    t213->load( ).
    APPEND t214 TO t213->items.
    t213->save( ).
    DATA(t221) = t2.
    DATA t222 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t222.
    DATA(t223) = |dats_add_months|.
    DATA(t224) = CONV f( 2 ).
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
    t221->load( ).
    APPEND t222 TO t221->items.
    t221->save( ).
    DATA(t229) = t2.
    DATA t230 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t230.
    DATA(t231) = |uuid|.
    DATA(t232) = CONV f( 0 ).
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
    t229->load( ).
    APPEND t230 TO t229->items.
    t229->save( ).
    DATA(t237) = t2.
    DATA t238 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t238.
    DATA(t239) = |utcl_current|.
    DATA(t240) = CONV f( 0 ).
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
    t237->load( ).
    APPEND t238 TO t237->items.
    t237->save( ).
    DATA(t245) = t2.
    DATA t246 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t246.
    DATA(t247) = |tstmp_current_utctimestamp|.
    DATA(t248) = CONV f( 0 ).
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
    t245->load( ).
    APPEND t246 TO t245->items.
    t245->save( ).
    DATA(t253) = t2.
    DATA t254 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t254.
    DATA(t255) = |tstmp_is_valid|.
    DATA(t256) = CONV f( 1 ).
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
    t253->load( ).
    APPEND t254 TO t253->items.
    t253->save( ).
    DATA(t261) = t2.
    DATA t262 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t262.
    DATA(t263) = |tims_is_valid|.
    DATA(t264) = CONV f( 1 ).
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
    t261->load( ).
    APPEND t262 TO t261->items.
    t261->save( ).
    DATA(t269) = t2.
    DATA t270 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t270.
    DATA(t271) = |utcl_add_seconds|.
    DATA(t272) = CONV f( 2 ).
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
    t269->load( ).
    APPEND t270 TO t269->items.
    t269->save( ).
    DATA(t277) = t2.
    DATA t278 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t278.
    DATA(t279) = |utcl_seconds_between|.
    DATA(t280) = CONV f( 2 ).
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
    t277->load( ).
    APPEND t278 TO t277->items.
    t277->save( ).
    DATA(t285) = t2.
    DATA t286 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t286.
    DATA(t287) = |datn_days_between|.
    DATA(t288) = CONV f( 2 ).
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
    t285->load( ).
    APPEND t286 TO t285->items.
    t285->save( ).
    DATA(t293) = t2.
    DATA t294 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t294.
    DATA(t295) = |datn_add_days|.
    DATA(t296) = CONV f( 2 ).
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
    t293->load( ).
    APPEND t294 TO t293->items.
    t293->save( ).
    DATA(t301) = t2.
    DATA t302 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t302.
    DATA(t303) = |datn_add_months|.
    DATA(t304) = CONV f( 2 ).
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
    t301->load( ).
    APPEND t302 TO t301->items.
    t301->save( ).
    DATA(t309) = t2.
    DATA t310 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t310.
    DATA(t311) = |as_geo_json|.
    DATA(t312) = CONV f( 1 ).
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
    t309->load( ).
    APPEND t310 TO t309->items.
    t309->save( ).
    DATA(t317) = t2.
    DATA t318 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t318.
    DATA(t319) = |allow_precision_loss|.
    DATA(t320) = CONV f( 1 ).
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
    t317->load( ).
    APPEND t318 TO t317->items.
    t317->save( ).
    DATA(t325) = t2.
    DATA t326 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t326.
    DATA(t327) = |to_clob|.
    DATA(t328) = CONV f( 1 ).
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
    t325->load( ).
    APPEND t326 TO t325->items.
    t325->save( ).
    DATA(t333) = t2.
    DATA t334 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t334.
    DATA(t335) = |to_blob|.
    DATA(t336) = CONV f( 1 ).
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
    t333->load( ).
    APPEND t334 TO t333->items.
    t333->save( ).
    DATA(t341) = t2.
    DATA t342 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t342.
    DATA(t343) = |grouping|.
    DATA(t344) = CONV f( 1 ).
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
    t341->load( ).
    APPEND t342 TO t341->items.
    t341->save( ).
    DATA(t349) = t2.
    DATA t350 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t350.
    DATA(t351) = |extract_year|.
    DATA(t352) = CONV f( 1 ).
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
    t349->load( ).
    APPEND t350 TO t349->items.
    t349->save( ).
    DATA(t357) = t2.
    DATA t358 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t358.
    DATA(t359) = |extract_month|.
    DATA(t360) = CONV f( 1 ).
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
    t357->load( ).
    APPEND t358 TO t357->items.
    t357->save( ).
    DATA(t365) = t2.
    DATA t366 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t366.
    DATA(t367) = |extract_day|.
    DATA(t368) = CONV f( 1 ).
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
    t365->load( ).
    APPEND t366 TO t365->items.
    t365->save( ).
    DATA(t373) = t2.
    DATA t374 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t374.
    DATA(t375) = |extract_hour|.
    DATA(t376) = CONV f( 1 ).
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
    t373->load( ).
    APPEND t374 TO t373->items.
    t373->save( ).
    DATA(t381) = t2.
    DATA t382 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t382.
    DATA(t383) = |extract_minute|.
    DATA(t384) = CONV f( 1 ).
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
    t381->load( ).
    APPEND t382 TO t381->items.
    t381->save( ).
    DATA(t389) = t2.
    DATA t390 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t390.
    DATA(t391) = |extract_second|.
    DATA(t392) = CONV f( 1 ).
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
    t389->load( ).
    APPEND t390 TO t389->items.
    t389->save( ).
    DATA(t397) = t2.
    DATA t398 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t398.
    DATA(t399) = |days_between|.
    DATA(t400) = CONV f( 2 ).
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
    t397->load( ).
    APPEND t398 TO t397->items.
    t397->save( ).
    DATA(t405) = t2.
    DATA t406 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t406.
    DATA(t407) = |add_days|.
    DATA(t408) = CONV f( 2 ).
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
    t405->load( ).
    APPEND t406 TO t405->items.
    t405->save( ).
    DATA(t413) = t2.
    DATA t414 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t414.
    DATA(t415) = |add_months|.
    DATA(t416) = CONV f( 2 ).
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
    t413->load( ).
    APPEND t414 TO t413->items.
    t413->save( ).
    DATA(t421) = t2.
    DATA t422 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t422.
    DATA(t423) = |monthname|.
    DATA(t424) = CONV f( 1 ).
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
    t421->load( ).
    APPEND t422 TO t421->items.
    t421->save( ).
    DATA(t429) = t2.
    DATA t430 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t430.
    DATA(t431) = |dayname|.
    DATA(t432) = CONV f( 1 ).
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
    t429->load( ).
    APPEND t430 TO t429->items.
    t429->save( ).
    DATA(t437) = t2.
    DATA t438 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t438.
    DATA(t439) = |initcap|.
    DATA(t440) = CONV f( 1 ).
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
    t437->load( ).
    APPEND t438 TO t437->items.
    t437->save( ).
    DATA(t445) = t2.
    DATA t446 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t446.
    DATA(t447) = |is_valid|.
    DATA(t448) = CONV f( 1 ).
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
    t445->load( ).
    APPEND t446 TO t445->items.
    t445->save( ).
    DATA(t453) = t2.
    DATA t454 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t454.
    DATA(t455) = |weekday|.
    DATA(t456) = CONV f( 1 ).
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
    t453->load( ).
    APPEND t454 TO t453->items.
    t453->save( ).
    DATA(t461) = t2.
    DATA t462 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t462.
    DATA(t463) = |locate|.
    DATA t464 TYPE f.
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
    t461->load( ).
    APPEND t462 TO t461->items.
    t461->save( ).
    DATA(t470) = t2.
    DATA t471 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t471.
    DATA(t472) = |greatest|.
    DATA t473 TYPE f.
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
    t470->load( ).
    APPEND t471 TO t470->items.
    t470->save( ).
    DATA(t479) = t2.
    DATA t480 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t480.
    DATA(t481) = |least|.
    DATA t482 TYPE f.
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
    t479->load( ).
    APPEND t480 TO t479->items.
    t479->save( ).
    DATA(t488) = t2.
    DATA t489 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t489.
    DATA(t490) = |hierarchy_composite_id|.
    DATA t491 TYPE f.
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
    t488->load( ).
    APPEND t489 TO t488->items.
    t488->save( ).
    DATA(t497) = t2.
    DATA t498 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t498.
    DATA(t499) = |sin|.
    DATA(t500) = CONV f( 1 ).
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
    t497->load( ).
    APPEND t498 TO t497->items.
    t497->save( ).
    DATA(t505) = t2.
    DATA t506 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t506.
    DATA(t507) = |cos|.
    DATA(t508) = CONV f( 1 ).
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
    t505->load( ).
    APPEND t506 TO t505->items.
    t505->save( ).
    DATA(t513) = t2.
    DATA t514 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t514.
    DATA(t515) = |tan|.
    DATA(t516) = CONV f( 1 ).
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
    t513->load( ).
    APPEND t514 TO t513->items.
    t513->save( ).
    DATA(t521) = t2.
    DATA t522 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t522.
    DATA(t523) = |asin|.
    DATA(t524) = CONV f( 1 ).
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
    t521->load( ).
    APPEND t522 TO t521->items.
    t521->save( ).
    DATA(t529) = t2.
    DATA t530 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t530.
    DATA(t531) = |acos|.
    DATA(t532) = CONV f( 1 ).
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
    t529->load( ).
    APPEND t530 TO t529->items.
    t529->save( ).
    DATA(t537) = t2.
    DATA t538 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t538.
    DATA(t539) = |atan|.
    DATA(t540) = CONV f( 1 ).
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
    t537->load( ).
    APPEND t538 TO t537->items.
    t537->save( ).
    DATA(t545) = t2.
    DATA t546 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t546.
    DATA(t547) = |sinh|.
    DATA(t548) = CONV f( 1 ).
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
    t545->load( ).
    APPEND t546 TO t545->items.
    t545->save( ).
    DATA(t553) = t2.
    DATA t554 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t554.
    DATA(t555) = |cosh|.
    DATA(t556) = CONV f( 1 ).
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
    t553->load( ).
    APPEND t554 TO t553->items.
    t553->save( ).
    DATA(t561) = t2.
    DATA t562 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t562.
    DATA(t563) = |tanh|.
    DATA(t564) = CONV f( 1 ).
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
    t561->load( ).
    APPEND t562 TO t561->items.
    t561->save( ).
    DATA(t569) = t2.
    DATA t570 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t570.
    DATA(t571) = |sqrt|.
    DATA(t572) = CONV f( 1 ).
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
    t569->load( ).
    APPEND t570 TO t569->items.
    t569->save( ).
    DATA(t577) = t2.
    DATA t578 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t578.
    DATA(t579) = |power|.
    DATA(t580) = CONV f( 2 ).
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
    t577->load( ).
    APPEND t578 TO t577->items.
    t577->save( ).
    DATA(t585) = t2.
    DATA t586 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t586.
    DATA(t587) = |exp|.
    DATA(t588) = CONV f( 1 ).
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
    t585->load( ).
    APPEND t586 TO t585->items.
    t585->save( ).
    DATA(t593) = t2.
    DATA t594 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t594.
    DATA(t595) = |ln|.
    DATA(t596) = CONV f( 1 ).
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
    t593->load( ).
    APPEND t594 TO t593->items.
    t593->save( ).
    DATA(t601) = t2.
    DATA t602 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t602.
    DATA(t603) = |log10|.
    DATA(t604) = CONV f( 1 ).
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
    t601->load( ).
    APPEND t602 TO t601->items.
    t601->save( ).
    DATA(t609) = t2.
    DATA t610 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t610.
    DATA(t611) = |log|.
    DATA(t612) = CONV f( 2 ).
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
    t609->load( ).
    APPEND t610 TO t609->items.
    t609->save( ).
    DATA(t617) = t2.
    DATA t618 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t618.
    DATA(t619) = |utctolocal|.
    DATA(t620) = CONV f( 2 ).
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
    t617->load( ).
    APPEND t618 TO t617->items.
    t617->save( ).
    DATA(t625) = t2.
    DATA t626 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t626.
    DATA(t627) = |localtoutc|.
    DATA(t628) = CONV f( 2 ).
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
    t625->load( ).
    APPEND t626 TO t625->items.
    t625->save( ).
    DATA(t633) = t2.
    DATA t634 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t634.
    DATA(t635) = |is_masked|.
    DATA(t636) = CONV f( 1 ).
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
    t633->load( ).
    APPEND t634 TO t633->items.
    t633->save( ).
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
    DATA t657 TYPE string.
    DATA(t658) = |user|.
    t657 = t658.
    DATA t659 TYPE string.
    DATA(t660) = |any|.
    t659 = t660.
    DATA t661 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t661.
    DATA t662 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t662.
    DATA(t663) = abap_true.
    IF t663 = abap_true.
      DATA(t664) = abap_true.
      DATA(t665) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t665->has = abap_true.
      t665->value = t664.
      t662 = t665.
    ELSE.
      DATA t666 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t666.
      t662 = t666.
    ENDIF.
    t661 = t662.
    t656 = NEW zcl_lnt_sql_named_param( i_name = t657 i_value = t659 i_optional = t661 ).
    CREATE OBJECT t656->zlnt_view_ownkeys_b0e8086400eb.
    t656->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t667.
    IF t656->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t656->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t667 ).
    ENDIF.
    DATA t668 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t668.
    IF t656->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t656->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t668 ).
    ENDIF.
    DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t669.
    IF t656->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t656->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t669 ).
    ENDIF.
    CREATE OBJECT t656->zlnt_json_ownkeys_70e5fd461788.
    t656->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t670) = |name|.
    DATA t671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t671.
    IF t656->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t656->zlnt_json_ownkeys_70e5fd461788->put( p0 = t670 p1 = t671 ).
    ENDIF.
    DATA(t672) = |value|.
    DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t673.
    IF t656->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t656->zlnt_json_ownkeys_70e5fd461788->put( p0 = t672 p1 = t673 ).
    ENDIF.
    DATA(t674) = |optional|.
    DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t675.
    IF t656->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t656->zlnt_json_ownkeys_70e5fd461788->put( p0 = t674 p1 = t675 ).
    ENDIF.
    t655->load( ).
    APPEND t656 TO t655->items.
    t655->save( ).
    DATA(t676) = t653.
    DATA t677 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t677.
    DATA t678 TYPE string.
    DATA(t679) = |client|.
    t678 = t679.
    DATA t680 TYPE string.
    DATA(t681) = |any|.
    t680 = t681.
    DATA t682 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t682.
    DATA t683 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t683.
    DATA(t684) = abap_true.
    IF t684 = abap_true.
      DATA(t685) = abap_true.
      DATA(t686) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t686->has = abap_true.
      t686->value = t685.
      t683 = t686.
    ELSE.
      DATA t687 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t687.
      t683 = t687.
    ENDIF.
    t682 = t683.
    t677 = NEW zcl_lnt_sql_named_param( i_name = t678 i_value = t680 i_optional = t682 ).
    CREATE OBJECT t677->zlnt_view_ownkeys_b0e8086400eb.
    t677->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t688.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t688 ).
    ENDIF.
    DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t689.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t689 ).
    ENDIF.
    DATA t690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t690.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t690 ).
    ENDIF.
    CREATE OBJECT t677->zlnt_json_ownkeys_70e5fd461788.
    t677->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t691) = |name|.
    DATA t692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t692.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t691 p1 = t692 ).
    ENDIF.
    DATA(t693) = |value|.
    DATA t694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t694.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t693 p1 = t694 ).
    ENDIF.
    DATA(t695) = |optional|.
    DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t696.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t695 p1 = t696 ).
    ENDIF.
    t676->load( ).
    APPEND t677 TO t676->items.
    t676->save( ).
    DATA(t697) = t653.
    DATA t698 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t698.
    DATA t699 TYPE string.
    DATA(t700) = |on_error|.
    t699 = t700.
    DATA t701 TYPE string.
    DATA(t702) = |abap_only|.
    t701 = t702.
    DATA t703 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t703.
    DATA t704 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t704.
    DATA(t705) = abap_true.
    IF t705 = abap_true.
      DATA(t706) = abap_true.
      DATA(t707) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t707->has = abap_true.
      t707->value = t706.
      t704 = t707.
    ELSE.
      DATA t708 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t708.
      t704 = t708.
    ENDIF.
    t703 = t704.
    t698 = NEW zcl_lnt_sql_named_param( i_name = t699 i_value = t701 i_optional = t703 ).
    CREATE OBJECT t698->zlnt_view_ownkeys_b0e8086400eb.
    t698->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t709.
    IF t698->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t698->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t709 ).
    ENDIF.
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t710.
    IF t698->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t698->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t710 ).
    ENDIF.
    DATA t711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t711.
    IF t698->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t698->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t711 ).
    ENDIF.
    CREATE OBJECT t698->zlnt_json_ownkeys_70e5fd461788.
    t698->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t712) = |name|.
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t713.
    IF t698->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t698->zlnt_json_ownkeys_70e5fd461788->put( p0 = t712 p1 = t713 ).
    ENDIF.
    DATA(t714) = |value|.
    DATA t715 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t715.
    IF t698->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t698->zlnt_json_ownkeys_70e5fd461788->put( p0 = t714 p1 = t715 ).
    ENDIF.
    DATA(t716) = |optional|.
    DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t717.
    IF t698->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t698->zlnt_json_ownkeys_70e5fd461788->put( p0 = t716 p1 = t717 ).
    ENDIF.
    t697->load( ).
    APPEND t698 TO t697->items.
    t697->save( ).
    DATA(t718) = t653.
    t652 = t718.
    t646 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t647 i_f1 = t648 i_f2 = t652 ).
    t645->load( ).
    APPEND t646 TO t645->items.
    t645->save( ).
    DATA(t719) = t643.
    DATA t720 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t720.
    DATA(t721) = |abap_system_timezone|.
    DATA t722 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t722.
    DATA t723 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t723.
    DATA t724 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t724.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t724 = zcl_lnt_version_module=>release_b8cd.
    DATA(t725) = |v757|.
    t723 = t724->get( p0 = t725 ).
    t722 = t723.
    DATA t726 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t726.
    DATA t727 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t728 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t728.
    t727 = t728.
    DATA(t729) = t727.
    DATA t730 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t730.
    DATA t731 TYPE string.
    DATA(t732) = |client|.
    t731 = t732.
    DATA t733 TYPE string.
    DATA(t734) = |any|.
    t733 = t734.
    DATA t735 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t735.
    DATA t736 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t736.
    DATA(t737) = abap_true.
    IF t737 = abap_true.
      DATA(t738) = abap_true.
      DATA(t739) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t739->has = abap_true.
      t739->value = t738.
      t736 = t739.
    ELSE.
      DATA t740 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t740.
      t736 = t740.
    ENDIF.
    t735 = t736.
    t730 = NEW zcl_lnt_sql_named_param( i_name = t731 i_value = t733 i_optional = t735 ).
    CREATE OBJECT t730->zlnt_view_ownkeys_b0e8086400eb.
    t730->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t741.
    IF t730->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t730->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t741 ).
    ENDIF.
    DATA t742 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t742.
    IF t730->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t730->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t742 ).
    ENDIF.
    DATA t743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t743.
    IF t730->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t730->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t743 ).
    ENDIF.
    CREATE OBJECT t730->zlnt_json_ownkeys_70e5fd461788.
    t730->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t744) = |name|.
    DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t745.
    IF t730->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = t744 p1 = t745 ).
    ENDIF.
    DATA(t746) = |value|.
    DATA t747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t747.
    IF t730->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = t746 p1 = t747 ).
    ENDIF.
    DATA(t748) = |optional|.
    DATA t749 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t749.
    IF t730->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = t748 p1 = t749 ).
    ENDIF.
    t729->load( ).
    APPEND t730 TO t729->items.
    t729->save( ).
    DATA(t750) = t727.
    DATA t751 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t751.
    DATA t752 TYPE string.
    DATA(t753) = |on_error|.
    t752 = t753.
    DATA t754 TYPE string.
    DATA(t755) = |abap_only|.
    t754 = t755.
    DATA t756 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t756.
    DATA t757 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t757.
    DATA(t758) = abap_true.
    IF t758 = abap_true.
      DATA(t759) = abap_true.
      DATA(t760) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t760->has = abap_true.
      t760->value = t759.
      t757 = t760.
    ELSE.
      DATA t761 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t761.
      t757 = t761.
    ENDIF.
    t756 = t757.
    t751 = NEW zcl_lnt_sql_named_param( i_name = t752 i_value = t754 i_optional = t756 ).
    CREATE OBJECT t751->zlnt_view_ownkeys_b0e8086400eb.
    t751->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t762 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t762.
    IF t751->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t751->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t762 ).
    ENDIF.
    DATA t763 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t763.
    IF t751->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t751->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t763 ).
    ENDIF.
    DATA t764 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t764.
    IF t751->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t751->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t764 ).
    ENDIF.
    CREATE OBJECT t751->zlnt_json_ownkeys_70e5fd461788.
    t751->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t765) = |name|.
    DATA t766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t766.
    IF t751->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t751->zlnt_json_ownkeys_70e5fd461788->put( p0 = t765 p1 = t766 ).
    ENDIF.
    DATA(t767) = |value|.
    DATA t768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t768.
    IF t751->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t751->zlnt_json_ownkeys_70e5fd461788->put( p0 = t767 p1 = t768 ).
    ENDIF.
    DATA(t769) = |optional|.
    DATA t770 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t770.
    IF t751->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t751->zlnt_json_ownkeys_70e5fd461788->put( p0 = t769 p1 = t770 ).
    ENDIF.
    t750->load( ).
    APPEND t751 TO t750->items.
    t750->save( ).
    DATA(t771) = t727.
    t726 = t771.
    t720 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t721 i_f1 = t722 i_f2 = t726 ).
    t719->load( ).
    APPEND t720 TO t719->items.
    t719->save( ).
    DATA(t772) = t643.
    DATA t773 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t773.
    DATA(t774) = |dats_tims_to_tstmp|.
    DATA t775 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t775.
    DATA t776 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t776.
    DATA t777 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t777.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t777 = zcl_lnt_version_module=>release_b8cd.
    DATA(t778) = |v757|.
    t776 = t777->get( p0 = t778 ).
    t775 = t776.
    DATA t779 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t779.
    DATA t780 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t781 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t781.
    t780 = t781.
    DATA(t782) = t780.
    DATA t783 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t784 TYPE string.
    DATA(t785) = |date|.
    t784 = t785.
    DATA t786 TYPE string.
    DATA(t787) = |any|.
    t786 = t787.
    DATA t788 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t789 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t789.
    t788 = t789.
    t783 = NEW zcl_lnt_sql_named_param( i_name = t784 i_value = t786 i_optional = t788 ).
    CREATE OBJECT t783->zlnt_view_ownkeys_b0e8086400eb.
    t783->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t790.
    IF t783->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t783->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t790 ).
    ENDIF.
    DATA t791 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t791.
    IF t783->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t783->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t791 ).
    ENDIF.
    CREATE OBJECT t783->zlnt_json_ownkeys_70e5fd461788.
    t783->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t792) = |name|.
    DATA t793 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t793.
    IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = t792 p1 = t793 ).
    ENDIF.
    DATA(t794) = |value|.
    DATA t795 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t795.
    IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = t794 p1 = t795 ).
    ENDIF.
    t782->load( ).
    APPEND t783 TO t782->items.
    t782->save( ).
    DATA(t796) = t780.
    DATA t797 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t798 TYPE string.
    DATA(t799) = |time|.
    t798 = t799.
    DATA t800 TYPE string.
    DATA(t801) = |any|.
    t800 = t801.
    DATA t802 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t803 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t803.
    t802 = t803.
    t797 = NEW zcl_lnt_sql_named_param( i_name = t798 i_value = t800 i_optional = t802 ).
    CREATE OBJECT t797->zlnt_view_ownkeys_b0e8086400eb.
    t797->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t804.
    IF t797->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t797->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t804 ).
    ENDIF.
    DATA t805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t805.
    IF t797->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t797->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t805 ).
    ENDIF.
    CREATE OBJECT t797->zlnt_json_ownkeys_70e5fd461788.
    t797->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t806) = |name|.
    DATA t807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t807.
    IF t797->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t797->zlnt_json_ownkeys_70e5fd461788->put( p0 = t806 p1 = t807 ).
    ENDIF.
    DATA(t808) = |value|.
    DATA t809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t809.
    IF t797->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t797->zlnt_json_ownkeys_70e5fd461788->put( p0 = t808 p1 = t809 ).
    ENDIF.
    t796->load( ).
    APPEND t797 TO t796->items.
    t796->save( ).
    DATA(t810) = t780.
    DATA t811 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t812 TYPE string.
    DATA(t813) = |tzone|.
    t812 = t813.
    DATA t814 TYPE string.
    DATA(t815) = |any|.
    t814 = t815.
    DATA t816 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t817 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t817.
    t816 = t817.
    t811 = NEW zcl_lnt_sql_named_param( i_name = t812 i_value = t814 i_optional = t816 ).
    CREATE OBJECT t811->zlnt_view_ownkeys_b0e8086400eb.
    t811->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t818.
    IF t811->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t811->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t818 ).
    ENDIF.
    DATA t819 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t819.
    IF t811->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t811->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t819 ).
    ENDIF.
    CREATE OBJECT t811->zlnt_json_ownkeys_70e5fd461788.
    t811->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t820) = |name|.
    DATA t821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t821.
    IF t811->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t811->zlnt_json_ownkeys_70e5fd461788->put( p0 = t820 p1 = t821 ).
    ENDIF.
    DATA(t822) = |value|.
    DATA t823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t823.
    IF t811->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t811->zlnt_json_ownkeys_70e5fd461788->put( p0 = t822 p1 = t823 ).
    ENDIF.
    t810->load( ).
    APPEND t811 TO t810->items.
    t810->save( ).
    DATA(t824) = t780.
    DATA t825 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t825.
    DATA t826 TYPE string.
    DATA(t827) = |client|.
    t826 = t827.
    DATA t828 TYPE string.
    DATA(t829) = |any|.
    t828 = t829.
    DATA t830 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t830.
    DATA t831 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t831.
    DATA(t832) = abap_true.
    IF t832 = abap_true.
      DATA(t833) = abap_true.
      DATA(t834) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t834->has = abap_true.
      t834->value = t833.
      t831 = t834.
    ELSE.
      DATA t835 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t835.
      t831 = t835.
    ENDIF.
    t830 = t831.
    t825 = NEW zcl_lnt_sql_named_param( i_name = t826 i_value = t828 i_optional = t830 ).
    CREATE OBJECT t825->zlnt_view_ownkeys_b0e8086400eb.
    t825->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t836 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t836.
    IF t825->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t825->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t836 ).
    ENDIF.
    DATA t837 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t837.
    IF t825->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t825->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t837 ).
    ENDIF.
    DATA t838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t838.
    IF t825->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t825->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t838 ).
    ENDIF.
    CREATE OBJECT t825->zlnt_json_ownkeys_70e5fd461788.
    t825->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t839) = |name|.
    DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t840.
    IF t825->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t825->zlnt_json_ownkeys_70e5fd461788->put( p0 = t839 p1 = t840 ).
    ENDIF.
    DATA(t841) = |value|.
    DATA t842 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t842.
    IF t825->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t825->zlnt_json_ownkeys_70e5fd461788->put( p0 = t841 p1 = t842 ).
    ENDIF.
    DATA(t843) = |optional|.
    DATA t844 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t844.
    IF t825->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t825->zlnt_json_ownkeys_70e5fd461788->put( p0 = t843 p1 = t844 ).
    ENDIF.
    t824->load( ).
    APPEND t825 TO t824->items.
    t824->save( ).
    DATA(t845) = t780.
    DATA t846 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t846.
    DATA t847 TYPE string.
    DATA(t848) = |on_error|.
    t847 = t848.
    DATA t849 TYPE string.
    DATA(t850) = |abap_only|.
    t849 = t850.
    DATA t851 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t851.
    DATA t852 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t852.
    DATA(t853) = abap_true.
    IF t853 = abap_true.
      DATA(t854) = abap_true.
      DATA(t855) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t855->has = abap_true.
      t855->value = t854.
      t852 = t855.
    ELSE.
      DATA t856 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t856.
      t852 = t856.
    ENDIF.
    t851 = t852.
    t846 = NEW zcl_lnt_sql_named_param( i_name = t847 i_value = t849 i_optional = t851 ).
    CREATE OBJECT t846->zlnt_view_ownkeys_b0e8086400eb.
    t846->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t857.
    IF t846->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t846->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t857 ).
    ENDIF.
    DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t858.
    IF t846->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t846->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t858 ).
    ENDIF.
    DATA t859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t859.
    IF t846->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t846->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t859 ).
    ENDIF.
    CREATE OBJECT t846->zlnt_json_ownkeys_70e5fd461788.
    t846->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t860) = |name|.
    DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t861.
    IF t846->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t846->zlnt_json_ownkeys_70e5fd461788->put( p0 = t860 p1 = t861 ).
    ENDIF.
    DATA(t862) = |value|.
    DATA t863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t863.
    IF t846->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t846->zlnt_json_ownkeys_70e5fd461788->put( p0 = t862 p1 = t863 ).
    ENDIF.
    DATA(t864) = |optional|.
    DATA t865 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t865.
    IF t846->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t846->zlnt_json_ownkeys_70e5fd461788->put( p0 = t864 p1 = t865 ).
    ENDIF.
    t845->load( ).
    APPEND t846 TO t845->items.
    t845->save( ).
    DATA(t866) = t780.
    t779 = t866.
    t773 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t774 i_f1 = t775 i_f2 = t779 ).
    t772->load( ).
    APPEND t773 TO t772->items.
    t772->save( ).
    DATA(t867) = t643.
    DATA t868 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t868.
    DATA(t869) = |tstmp_add_seconds|.
    DATA t870 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t870.
    DATA t871 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t871.
    DATA t872 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t872.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t872 = zcl_lnt_version_module=>release_b8cd.
    DATA(t873) = |v757|.
    t871 = t872->get( p0 = t873 ).
    t870 = t871.
    DATA t874 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t874.
    DATA t875 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t876 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t876.
    t875 = t876.
    DATA(t877) = t875.
    DATA t878 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t879 TYPE string.
    DATA(t880) = |tstmp|.
    t879 = t880.
    DATA t881 TYPE string.
    DATA(t882) = |any|.
    t881 = t882.
    DATA t883 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t884 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t884.
    t883 = t884.
    t878 = NEW zcl_lnt_sql_named_param( i_name = t879 i_value = t881 i_optional = t883 ).
    CREATE OBJECT t878->zlnt_view_ownkeys_b0e8086400eb.
    t878->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t885 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t885.
    IF t878->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t878->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t885 ).
    ENDIF.
    DATA t886 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t886.
    IF t878->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t878->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t886 ).
    ENDIF.
    CREATE OBJECT t878->zlnt_json_ownkeys_70e5fd461788.
    t878->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t887) = |name|.
    DATA t888 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t888.
    IF t878->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t878->zlnt_json_ownkeys_70e5fd461788->put( p0 = t887 p1 = t888 ).
    ENDIF.
    DATA(t889) = |value|.
    DATA t890 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t890.
    IF t878->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t878->zlnt_json_ownkeys_70e5fd461788->put( p0 = t889 p1 = t890 ).
    ENDIF.
    t877->load( ).
    APPEND t878 TO t877->items.
    t877->save( ).
    DATA(t891) = t875.
    DATA t892 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t893 TYPE string.
    DATA(t894) = |seconds|.
    t893 = t894.
    DATA t895 TYPE string.
    DATA(t896) = |any|.
    t895 = t896.
    DATA t897 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t898 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t898.
    t897 = t898.
    t892 = NEW zcl_lnt_sql_named_param( i_name = t893 i_value = t895 i_optional = t897 ).
    CREATE OBJECT t892->zlnt_view_ownkeys_b0e8086400eb.
    t892->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t899 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t899.
    IF t892->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t892->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t899 ).
    ENDIF.
    DATA t900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t900.
    IF t892->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t892->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t900 ).
    ENDIF.
    CREATE OBJECT t892->zlnt_json_ownkeys_70e5fd461788.
    t892->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t901) = |name|.
    DATA t902 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t902.
    IF t892->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = t901 p1 = t902 ).
    ENDIF.
    DATA(t903) = |value|.
    DATA t904 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t904.
    IF t892->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = t903 p1 = t904 ).
    ENDIF.
    t891->load( ).
    APPEND t892 TO t891->items.
    t891->save( ).
    DATA(t905) = t875.
    DATA t906 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t906.
    DATA t907 TYPE string.
    DATA(t908) = |on_error|.
    t907 = t908.
    DATA t909 TYPE string.
    DATA(t910) = |abap_only|.
    t909 = t910.
    DATA t911 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t911.
    DATA t912 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t912.
    DATA(t913) = abap_true.
    IF t913 = abap_true.
      DATA(t914) = abap_true.
      DATA(t915) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t915->has = abap_true.
      t915->value = t914.
      t912 = t915.
    ELSE.
      DATA t916 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t916.
      t912 = t916.
    ENDIF.
    t911 = t912.
    t906 = NEW zcl_lnt_sql_named_param( i_name = t907 i_value = t909 i_optional = t911 ).
    CREATE OBJECT t906->zlnt_view_ownkeys_b0e8086400eb.
    t906->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t917.
    IF t906->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t906->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t917 ).
    ENDIF.
    DATA t918 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t918.
    IF t906->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t906->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t918 ).
    ENDIF.
    DATA t919 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t919.
    IF t906->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t906->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t919 ).
    ENDIF.
    CREATE OBJECT t906->zlnt_json_ownkeys_70e5fd461788.
    t906->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t920) = |name|.
    DATA t921 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t921.
    IF t906->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t906->zlnt_json_ownkeys_70e5fd461788->put( p0 = t920 p1 = t921 ).
    ENDIF.
    DATA(t922) = |value|.
    DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t923.
    IF t906->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t906->zlnt_json_ownkeys_70e5fd461788->put( p0 = t922 p1 = t923 ).
    ENDIF.
    DATA(t924) = |optional|.
    DATA t925 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t925.
    IF t906->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t906->zlnt_json_ownkeys_70e5fd461788->put( p0 = t924 p1 = t925 ).
    ENDIF.
    t905->load( ).
    APPEND t906 TO t905->items.
    t905->save( ).
    DATA(t926) = t875.
    t874 = t926.
    t868 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t869 i_f1 = t870 i_f2 = t874 ).
    t867->load( ).
    APPEND t868 TO t867->items.
    t867->save( ).
    DATA(t927) = t643.
    DATA t928 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t928.
    DATA(t929) = |tstmp_seconds_between|.
    DATA t930 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t930.
    DATA t931 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t931.
    DATA t932 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t932.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t932 = zcl_lnt_version_module=>release_b8cd.
    DATA(t933) = |v757|.
    t931 = t932->get( p0 = t933 ).
    t930 = t931.
    DATA t934 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t934.
    DATA t935 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t936 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t936.
    t935 = t936.
    DATA(t937) = t935.
    DATA t938 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t939 TYPE string.
    DATA(t940) = |tstmp1|.
    t939 = t940.
    DATA t941 TYPE string.
    DATA(t942) = |any|.
    t941 = t942.
    DATA t943 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t944 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t944.
    t943 = t944.
    t938 = NEW zcl_lnt_sql_named_param( i_name = t939 i_value = t941 i_optional = t943 ).
    CREATE OBJECT t938->zlnt_view_ownkeys_b0e8086400eb.
    t938->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t945 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t945.
    IF t938->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t938->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t945 ).
    ENDIF.
    DATA t946 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t946.
    IF t938->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t938->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t946 ).
    ENDIF.
    CREATE OBJECT t938->zlnt_json_ownkeys_70e5fd461788.
    t938->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t947) = |name|.
    DATA t948 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t948.
    IF t938->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t938->zlnt_json_ownkeys_70e5fd461788->put( p0 = t947 p1 = t948 ).
    ENDIF.
    DATA(t949) = |value|.
    DATA t950 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t950.
    IF t938->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t938->zlnt_json_ownkeys_70e5fd461788->put( p0 = t949 p1 = t950 ).
    ENDIF.
    t937->load( ).
    APPEND t938 TO t937->items.
    t937->save( ).
    DATA(t951) = t935.
    DATA t952 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t953 TYPE string.
    DATA(t954) = |tstmp2|.
    t953 = t954.
    DATA t955 TYPE string.
    DATA(t956) = |any|.
    t955 = t956.
    DATA t957 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t958 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t958.
    t957 = t958.
    t952 = NEW zcl_lnt_sql_named_param( i_name = t953 i_value = t955 i_optional = t957 ).
    CREATE OBJECT t952->zlnt_view_ownkeys_b0e8086400eb.
    t952->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t959 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t959.
    IF t952->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t952->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t959 ).
    ENDIF.
    DATA t960 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t960.
    IF t952->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t952->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t960 ).
    ENDIF.
    CREATE OBJECT t952->zlnt_json_ownkeys_70e5fd461788.
    t952->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t961) = |name|.
    DATA t962 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t962.
    IF t952->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t952->zlnt_json_ownkeys_70e5fd461788->put( p0 = t961 p1 = t962 ).
    ENDIF.
    DATA(t963) = |value|.
    DATA t964 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t964.
    IF t952->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t952->zlnt_json_ownkeys_70e5fd461788->put( p0 = t963 p1 = t964 ).
    ENDIF.
    t951->load( ).
    APPEND t952 TO t951->items.
    t951->save( ).
    DATA(t965) = t935.
    DATA t966 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t966.
    DATA t967 TYPE string.
    DATA(t968) = |on_error|.
    t967 = t968.
    DATA t969 TYPE string.
    DATA(t970) = |abap_only|.
    t969 = t970.
    DATA t971 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t971.
    DATA t972 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t972.
    DATA(t973) = abap_true.
    IF t973 = abap_true.
      DATA(t974) = abap_true.
      DATA(t975) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t975->has = abap_true.
      t975->value = t974.
      t972 = t975.
    ELSE.
      DATA t976 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t976.
      t972 = t976.
    ENDIF.
    t971 = t972.
    t966 = NEW zcl_lnt_sql_named_param( i_name = t967 i_value = t969 i_optional = t971 ).
    CREATE OBJECT t966->zlnt_view_ownkeys_b0e8086400eb.
    t966->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t977 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t977.
    IF t966->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t966->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t977 ).
    ENDIF.
    DATA t978 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t978.
    IF t966->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t966->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t978 ).
    ENDIF.
    DATA t979 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t979.
    IF t966->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t966->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t979 ).
    ENDIF.
    CREATE OBJECT t966->zlnt_json_ownkeys_70e5fd461788.
    t966->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t980) = |name|.
    DATA t981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t981.
    IF t966->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t966->zlnt_json_ownkeys_70e5fd461788->put( p0 = t980 p1 = t981 ).
    ENDIF.
    DATA(t982) = |value|.
    DATA t983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t983.
    IF t966->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t966->zlnt_json_ownkeys_70e5fd461788->put( p0 = t982 p1 = t983 ).
    ENDIF.
    DATA(t984) = |optional|.
    DATA t985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t985.
    IF t966->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t966->zlnt_json_ownkeys_70e5fd461788->put( p0 = t984 p1 = t985 ).
    ENDIF.
    t965->load( ).
    APPEND t966 TO t965->items.
    t965->save( ).
    DATA(t986) = t935.
    t934 = t986.
    t928 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t929 i_f1 = t930 i_f2 = t934 ).
    t927->load( ).
    APPEND t928 TO t927->items.
    t927->save( ).
    DATA(t987) = t643.
    DATA t988 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t988.
    DATA(t989) = |tstmp_to_dats|.
    DATA t990 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t990.
    DATA t991 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t991.
    DATA t992 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t992.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t992 = zcl_lnt_version_module=>release_b8cd.
    DATA(t993) = |v757|.
    t991 = t992->get( p0 = t993 ).
    t990 = t991.
    DATA t994 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t994.
    DATA t995 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t996 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t996.
    t995 = t996.
    DATA(t997) = t995.
    DATA t998 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t999 TYPE string.
    DATA(t1000) = |tstmp|.
    t999 = t1000.
    DATA t1001 TYPE string.
    DATA(t1002) = |any|.
    t1001 = t1002.
    DATA t1003 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1004 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1004.
    t1003 = t1004.
    t998 = NEW zcl_lnt_sql_named_param( i_name = t999 i_value = t1001 i_optional = t1003 ).
    CREATE OBJECT t998->zlnt_view_ownkeys_b0e8086400eb.
    t998->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1005 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1005.
    IF t998->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t998->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1005 ).
    ENDIF.
    DATA t1006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1006.
    IF t998->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t998->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1006 ).
    ENDIF.
    CREATE OBJECT t998->zlnt_json_ownkeys_70e5fd461788.
    t998->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1007) = |name|.
    DATA t1008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1008.
    IF t998->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t998->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1007 p1 = t1008 ).
    ENDIF.
    DATA(t1009) = |value|.
    DATA t1010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1010.
    IF t998->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t998->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1009 p1 = t1010 ).
    ENDIF.
    t997->load( ).
    APPEND t998 TO t997->items.
    t997->save( ).
    DATA(t1011) = t995.
    DATA t1012 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1012.
    DATA t1013 TYPE string.
    DATA(t1014) = |tzone|.
    t1013 = t1014.
    DATA t1015 TYPE string.
    DATA(t1016) = |any|.
    t1015 = t1016.
    DATA t1017 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1017.
    DATA t1018 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1018.
    DATA(t1019) = abap_true.
    IF t1019 = abap_true.
      DATA(t1020) = abap_true.
      DATA(t1021) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1021->has = abap_true.
      t1021->value = t1020.
      t1018 = t1021.
    ELSE.
      DATA t1022 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1022.
      t1018 = t1022.
    ENDIF.
    t1017 = t1018.
    t1012 = NEW zcl_lnt_sql_named_param( i_name = t1013 i_value = t1015 i_optional = t1017 ).
    CREATE OBJECT t1012->zlnt_view_ownkeys_b0e8086400eb.
    t1012->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1023 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1023.
    IF t1012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1023 ).
    ENDIF.
    DATA t1024 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1024.
    IF t1012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1024 ).
    ENDIF.
    DATA t1025 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1025.
    IF t1012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1025 ).
    ENDIF.
    CREATE OBJECT t1012->zlnt_json_ownkeys_70e5fd461788.
    t1012->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1026) = |name|.
    DATA t1027 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1027.
    IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1026 p1 = t1027 ).
    ENDIF.
    DATA(t1028) = |value|.
    DATA t1029 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1029.
    IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1028 p1 = t1029 ).
    ENDIF.
    DATA(t1030) = |optional|.
    DATA t1031 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1031.
    IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1030 p1 = t1031 ).
    ENDIF.
    t1011->load( ).
    APPEND t1012 TO t1011->items.
    t1011->save( ).
    DATA(t1032) = t995.
    DATA t1033 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1033.
    DATA t1034 TYPE string.
    DATA(t1035) = |client|.
    t1034 = t1035.
    DATA t1036 TYPE string.
    DATA(t1037) = |any|.
    t1036 = t1037.
    DATA t1038 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1038.
    DATA t1039 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1039.
    DATA(t1040) = abap_true.
    IF t1040 = abap_true.
      DATA(t1041) = abap_true.
      DATA(t1042) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1042->has = abap_true.
      t1042->value = t1041.
      t1039 = t1042.
    ELSE.
      DATA t1043 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1043.
      t1039 = t1043.
    ENDIF.
    t1038 = t1039.
    t1033 = NEW zcl_lnt_sql_named_param( i_name = t1034 i_value = t1036 i_optional = t1038 ).
    CREATE OBJECT t1033->zlnt_view_ownkeys_b0e8086400eb.
    t1033->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1044 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1044.
    IF t1033->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1033->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1044 ).
    ENDIF.
    DATA t1045 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1045.
    IF t1033->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1033->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1045 ).
    ENDIF.
    DATA t1046 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1046.
    IF t1033->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1033->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1046 ).
    ENDIF.
    CREATE OBJECT t1033->zlnt_json_ownkeys_70e5fd461788.
    t1033->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1047) = |name|.
    DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1048.
    IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1047 p1 = t1048 ).
    ENDIF.
    DATA(t1049) = |value|.
    DATA t1050 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1050.
    IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1049 p1 = t1050 ).
    ENDIF.
    DATA(t1051) = |optional|.
    DATA t1052 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1052.
    IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1051 p1 = t1052 ).
    ENDIF.
    t1032->load( ).
    APPEND t1033 TO t1032->items.
    t1032->save( ).
    DATA(t1053) = t995.
    DATA t1054 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1054.
    DATA t1055 TYPE string.
    DATA(t1056) = |on_error|.
    t1055 = t1056.
    DATA t1057 TYPE string.
    DATA(t1058) = |abap_only|.
    t1057 = t1058.
    DATA t1059 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1059.
    DATA t1060 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1060.
    DATA(t1061) = abap_true.
    IF t1061 = abap_true.
      DATA(t1062) = abap_true.
      DATA(t1063) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1063->has = abap_true.
      t1063->value = t1062.
      t1060 = t1063.
    ELSE.
      DATA t1064 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1064.
      t1060 = t1064.
    ENDIF.
    t1059 = t1060.
    t1054 = NEW zcl_lnt_sql_named_param( i_name = t1055 i_value = t1057 i_optional = t1059 ).
    CREATE OBJECT t1054->zlnt_view_ownkeys_b0e8086400eb.
    t1054->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1065 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1065.
    IF t1054->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1054->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1065 ).
    ENDIF.
    DATA t1066 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1066.
    IF t1054->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1054->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1066 ).
    ENDIF.
    DATA t1067 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1067.
    IF t1054->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1054->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1067 ).
    ENDIF.
    CREATE OBJECT t1054->zlnt_json_ownkeys_70e5fd461788.
    t1054->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1068) = |name|.
    DATA t1069 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1069.
    IF t1054->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1054->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1068 p1 = t1069 ).
    ENDIF.
    DATA(t1070) = |value|.
    DATA t1071 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1071.
    IF t1054->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1054->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1070 p1 = t1071 ).
    ENDIF.
    DATA(t1072) = |optional|.
    DATA t1073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1073.
    IF t1054->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1054->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1072 p1 = t1073 ).
    ENDIF.
    t1053->load( ).
    APPEND t1054 TO t1053->items.
    t1053->save( ).
    DATA(t1074) = t995.
    t994 = t1074.
    t988 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t989 i_f1 = t990 i_f2 = t994 ).
    t987->load( ).
    APPEND t988 TO t987->items.
    t987->save( ).
    DATA(t1075) = t643.
    DATA t1076 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1076.
    DATA(t1077) = |tstmp_to_tims|.
    DATA t1078 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1078.
    DATA t1079 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1079.
    DATA t1080 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1080.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1080 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1081) = |v757|.
    t1079 = t1080->get( p0 = t1081 ).
    t1078 = t1079.
    DATA t1082 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1082.
    DATA t1083 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1084 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1084.
    t1083 = t1084.
    DATA(t1085) = t1083.
    DATA t1086 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1087 TYPE string.
    DATA(t1088) = |tstmp|.
    t1087 = t1088.
    DATA t1089 TYPE string.
    DATA(t1090) = |any|.
    t1089 = t1090.
    DATA t1091 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1092 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1092.
    t1091 = t1092.
    t1086 = NEW zcl_lnt_sql_named_param( i_name = t1087 i_value = t1089 i_optional = t1091 ).
    CREATE OBJECT t1086->zlnt_view_ownkeys_b0e8086400eb.
    t1086->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1093 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1093.
    IF t1086->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1086->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1093 ).
    ENDIF.
    DATA t1094 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1094.
    IF t1086->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1086->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1094 ).
    ENDIF.
    CREATE OBJECT t1086->zlnt_json_ownkeys_70e5fd461788.
    t1086->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1095) = |name|.
    DATA t1096 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1096.
    IF t1086->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1086->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1095 p1 = t1096 ).
    ENDIF.
    DATA(t1097) = |value|.
    DATA t1098 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1098.
    IF t1086->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1086->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1097 p1 = t1098 ).
    ENDIF.
    t1085->load( ).
    APPEND t1086 TO t1085->items.
    t1085->save( ).
    DATA(t1099) = t1083.
    DATA t1100 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1100.
    DATA t1101 TYPE string.
    DATA(t1102) = |tzone|.
    t1101 = t1102.
    DATA t1103 TYPE string.
    DATA(t1104) = |any|.
    t1103 = t1104.
    DATA t1105 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1105.
    DATA t1106 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1106.
    DATA(t1107) = abap_true.
    IF t1107 = abap_true.
      DATA(t1108) = abap_true.
      DATA(t1109) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1109->has = abap_true.
      t1109->value = t1108.
      t1106 = t1109.
    ELSE.
      DATA t1110 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1110.
      t1106 = t1110.
    ENDIF.
    t1105 = t1106.
    t1100 = NEW zcl_lnt_sql_named_param( i_name = t1101 i_value = t1103 i_optional = t1105 ).
    CREATE OBJECT t1100->zlnt_view_ownkeys_b0e8086400eb.
    t1100->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1111.
    IF t1100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1111 ).
    ENDIF.
    DATA t1112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1112.
    IF t1100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1112 ).
    ENDIF.
    DATA t1113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1113.
    IF t1100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1113 ).
    ENDIF.
    CREATE OBJECT t1100->zlnt_json_ownkeys_70e5fd461788.
    t1100->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1114) = |name|.
    DATA t1115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1115.
    IF t1100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1114 p1 = t1115 ).
    ENDIF.
    DATA(t1116) = |value|.
    DATA t1117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1117.
    IF t1100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1116 p1 = t1117 ).
    ENDIF.
    DATA(t1118) = |optional|.
    DATA t1119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1119.
    IF t1100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1118 p1 = t1119 ).
    ENDIF.
    t1099->load( ).
    APPEND t1100 TO t1099->items.
    t1099->save( ).
    DATA(t1120) = t1083.
    DATA t1121 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1121.
    DATA t1122 TYPE string.
    DATA(t1123) = |client|.
    t1122 = t1123.
    DATA t1124 TYPE string.
    DATA(t1125) = |any|.
    t1124 = t1125.
    DATA t1126 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1126.
    DATA t1127 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1127.
    DATA(t1128) = abap_true.
    IF t1128 = abap_true.
      DATA(t1129) = abap_true.
      DATA(t1130) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1130->has = abap_true.
      t1130->value = t1129.
      t1127 = t1130.
    ELSE.
      DATA t1131 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1131.
      t1127 = t1131.
    ENDIF.
    t1126 = t1127.
    t1121 = NEW zcl_lnt_sql_named_param( i_name = t1122 i_value = t1124 i_optional = t1126 ).
    CREATE OBJECT t1121->zlnt_view_ownkeys_b0e8086400eb.
    t1121->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1132.
    IF t1121->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1121->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1132 ).
    ENDIF.
    DATA t1133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1133.
    IF t1121->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1121->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1133 ).
    ENDIF.
    DATA t1134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1134.
    IF t1121->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1121->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1134 ).
    ENDIF.
    CREATE OBJECT t1121->zlnt_json_ownkeys_70e5fd461788.
    t1121->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1135) = |name|.
    DATA t1136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1136.
    IF t1121->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1121->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1135 p1 = t1136 ).
    ENDIF.
    DATA(t1137) = |value|.
    DATA t1138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1138.
    IF t1121->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1121->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1137 p1 = t1138 ).
    ENDIF.
    DATA(t1139) = |optional|.
    DATA t1140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1140.
    IF t1121->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1121->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1139 p1 = t1140 ).
    ENDIF.
    t1120->load( ).
    APPEND t1121 TO t1120->items.
    t1120->save( ).
    DATA(t1141) = t1083.
    DATA t1142 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1142.
    DATA t1143 TYPE string.
    DATA(t1144) = |on_error|.
    t1143 = t1144.
    DATA t1145 TYPE string.
    DATA(t1146) = |abap_only|.
    t1145 = t1146.
    DATA t1147 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1147.
    DATA t1148 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1148.
    DATA(t1149) = abap_true.
    IF t1149 = abap_true.
      DATA(t1150) = abap_true.
      DATA(t1151) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1151->has = abap_true.
      t1151->value = t1150.
      t1148 = t1151.
    ELSE.
      DATA t1152 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1152.
      t1148 = t1152.
    ENDIF.
    t1147 = t1148.
    t1142 = NEW zcl_lnt_sql_named_param( i_name = t1143 i_value = t1145 i_optional = t1147 ).
    CREATE OBJECT t1142->zlnt_view_ownkeys_b0e8086400eb.
    t1142->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1153.
    IF t1142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1153 ).
    ENDIF.
    DATA t1154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1154.
    IF t1142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1154 ).
    ENDIF.
    DATA t1155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1155.
    IF t1142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1155 ).
    ENDIF.
    CREATE OBJECT t1142->zlnt_json_ownkeys_70e5fd461788.
    t1142->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1156) = |name|.
    DATA t1157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1157.
    IF t1142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1156 p1 = t1157 ).
    ENDIF.
    DATA(t1158) = |value|.
    DATA t1159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1159.
    IF t1142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1158 p1 = t1159 ).
    ENDIF.
    DATA(t1160) = |optional|.
    DATA t1161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1161.
    IF t1142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1160 p1 = t1161 ).
    ENDIF.
    t1141->load( ).
    APPEND t1142 TO t1141->items.
    t1141->save( ).
    DATA(t1162) = t1083.
    t1082 = t1162.
    t1076 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1077 i_f1 = t1078 i_f2 = t1082 ).
    t1075->load( ).
    APPEND t1076 TO t1075->items.
    t1075->save( ).
    DATA(t1163) = t643.
    DATA t1164 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1164.
    DATA(t1165) = |tstmp_to_dst|.
    DATA t1166 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1166.
    DATA t1167 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1167.
    DATA t1168 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1168.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1168 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1169) = |v757|.
    t1167 = t1168->get( p0 = t1169 ).
    t1166 = t1167.
    DATA t1170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1170.
    DATA t1171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1172.
    t1171 = t1172.
    DATA(t1173) = t1171.
    DATA t1174 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1175 TYPE string.
    DATA(t1176) = |tstmp|.
    t1175 = t1176.
    DATA t1177 TYPE string.
    DATA(t1178) = |any|.
    t1177 = t1178.
    DATA t1179 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1180 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1180.
    t1179 = t1180.
    t1174 = NEW zcl_lnt_sql_named_param( i_name = t1175 i_value = t1177 i_optional = t1179 ).
    CREATE OBJECT t1174->zlnt_view_ownkeys_b0e8086400eb.
    t1174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1181.
    IF t1174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1181 ).
    ENDIF.
    DATA t1182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1182.
    IF t1174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1182 ).
    ENDIF.
    CREATE OBJECT t1174->zlnt_json_ownkeys_70e5fd461788.
    t1174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1183) = |name|.
    DATA t1184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1184.
    IF t1174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1183 p1 = t1184 ).
    ENDIF.
    DATA(t1185) = |value|.
    DATA t1186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1186.
    IF t1174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1185 p1 = t1186 ).
    ENDIF.
    t1173->load( ).
    APPEND t1174 TO t1173->items.
    t1173->save( ).
    DATA(t1187) = t1171.
    DATA t1188 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1188.
    DATA t1189 TYPE string.
    DATA(t1190) = |tzone|.
    t1189 = t1190.
    DATA t1191 TYPE string.
    DATA(t1192) = |any|.
    t1191 = t1192.
    DATA t1193 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1193.
    DATA t1194 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1194.
    DATA(t1195) = abap_true.
    IF t1195 = abap_true.
      DATA(t1196) = abap_true.
      DATA(t1197) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1197->has = abap_true.
      t1197->value = t1196.
      t1194 = t1197.
    ELSE.
      DATA t1198 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1198.
      t1194 = t1198.
    ENDIF.
    t1193 = t1194.
    t1188 = NEW zcl_lnt_sql_named_param( i_name = t1189 i_value = t1191 i_optional = t1193 ).
    CREATE OBJECT t1188->zlnt_view_ownkeys_b0e8086400eb.
    t1188->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1199.
    IF t1188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1199 ).
    ENDIF.
    DATA t1200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1200.
    IF t1188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1200 ).
    ENDIF.
    DATA t1201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1201.
    IF t1188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1201 ).
    ENDIF.
    CREATE OBJECT t1188->zlnt_json_ownkeys_70e5fd461788.
    t1188->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1202) = |name|.
    DATA t1203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1203.
    IF t1188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1202 p1 = t1203 ).
    ENDIF.
    DATA(t1204) = |value|.
    DATA t1205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1205.
    IF t1188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1204 p1 = t1205 ).
    ENDIF.
    DATA(t1206) = |optional|.
    DATA t1207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1207.
    IF t1188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1206 p1 = t1207 ).
    ENDIF.
    t1187->load( ).
    APPEND t1188 TO t1187->items.
    t1187->save( ).
    DATA(t1208) = t1171.
    DATA t1209 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1209.
    DATA t1210 TYPE string.
    DATA(t1211) = |client|.
    t1210 = t1211.
    DATA t1212 TYPE string.
    DATA(t1213) = |any|.
    t1212 = t1213.
    DATA t1214 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1214.
    DATA t1215 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1215.
    DATA(t1216) = abap_true.
    IF t1216 = abap_true.
      DATA(t1217) = abap_true.
      DATA(t1218) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1218->has = abap_true.
      t1218->value = t1217.
      t1215 = t1218.
    ELSE.
      DATA t1219 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1219.
      t1215 = t1219.
    ENDIF.
    t1214 = t1215.
    t1209 = NEW zcl_lnt_sql_named_param( i_name = t1210 i_value = t1212 i_optional = t1214 ).
    CREATE OBJECT t1209->zlnt_view_ownkeys_b0e8086400eb.
    t1209->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1220.
    IF t1209->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1209->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1220 ).
    ENDIF.
    DATA t1221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1221.
    IF t1209->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1209->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1221 ).
    ENDIF.
    DATA t1222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1222.
    IF t1209->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1209->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1222 ).
    ENDIF.
    CREATE OBJECT t1209->zlnt_json_ownkeys_70e5fd461788.
    t1209->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1223) = |name|.
    DATA t1224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1224.
    IF t1209->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1209->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1223 p1 = t1224 ).
    ENDIF.
    DATA(t1225) = |value|.
    DATA t1226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1226.
    IF t1209->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1209->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1225 p1 = t1226 ).
    ENDIF.
    DATA(t1227) = |optional|.
    DATA t1228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1228.
    IF t1209->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1209->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1227 p1 = t1228 ).
    ENDIF.
    t1208->load( ).
    APPEND t1209 TO t1208->items.
    t1208->save( ).
    DATA(t1229) = t1171.
    DATA t1230 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1230.
    DATA t1231 TYPE string.
    DATA(t1232) = |on_error|.
    t1231 = t1232.
    DATA t1233 TYPE string.
    DATA(t1234) = |abap_only|.
    t1233 = t1234.
    DATA t1235 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1235.
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
    t1235 = t1236.
    t1230 = NEW zcl_lnt_sql_named_param( i_name = t1231 i_value = t1233 i_optional = t1235 ).
    CREATE OBJECT t1230->zlnt_view_ownkeys_b0e8086400eb.
    t1230->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1241.
    IF t1230->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1230->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1241 ).
    ENDIF.
    DATA t1242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1242.
    IF t1230->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1230->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1242 ).
    ENDIF.
    DATA t1243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1243.
    IF t1230->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1230->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1243 ).
    ENDIF.
    CREATE OBJECT t1230->zlnt_json_ownkeys_70e5fd461788.
    t1230->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1244) = |name|.
    DATA t1245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1245.
    IF t1230->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1230->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1244 p1 = t1245 ).
    ENDIF.
    DATA(t1246) = |value|.
    DATA t1247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1247.
    IF t1230->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1230->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1246 p1 = t1247 ).
    ENDIF.
    DATA(t1248) = |optional|.
    DATA t1249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1249.
    IF t1230->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1230->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1248 p1 = t1249 ).
    ENDIF.
    t1229->load( ).
    APPEND t1230 TO t1229->items.
    t1229->save( ).
    DATA(t1250) = t1171.
    t1170 = t1250.
    t1164 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1165 i_f1 = t1166 i_f2 = t1170 ).
    t1163->load( ).
    APPEND t1164 TO t1163->items.
    t1163->save( ).
    DATA(t1251) = t643.
    DATA t1252 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1252.
    DATA(t1253) = |tstmpl_to_utcl|.
    DATA t1254 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1254.
    DATA t1255 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1255.
    DATA t1256 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1256.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1256 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1257) = |v757|.
    t1255 = t1256->get( p0 = t1257 ).
    t1254 = t1255.
    DATA t1258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1258.
    DATA t1259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1260.
    t1259 = t1260.
    DATA(t1261) = t1259.
    DATA t1262 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1263 TYPE string.
    DATA(t1264) = |tstmpl|.
    t1263 = t1264.
    DATA t1265 TYPE string.
    DATA(t1266) = |any|.
    t1265 = t1266.
    DATA t1267 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1268 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1268.
    t1267 = t1268.
    t1262 = NEW zcl_lnt_sql_named_param( i_name = t1263 i_value = t1265 i_optional = t1267 ).
    CREATE OBJECT t1262->zlnt_view_ownkeys_b0e8086400eb.
    t1262->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1269.
    IF t1262->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1262->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1269 ).
    ENDIF.
    DATA t1270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1270.
    IF t1262->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1262->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1270 ).
    ENDIF.
    CREATE OBJECT t1262->zlnt_json_ownkeys_70e5fd461788.
    t1262->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1271) = |name|.
    DATA t1272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1272.
    IF t1262->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1262->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1271 p1 = t1272 ).
    ENDIF.
    DATA(t1273) = |value|.
    DATA t1274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1274.
    IF t1262->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1262->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1273 p1 = t1274 ).
    ENDIF.
    t1261->load( ).
    APPEND t1262 TO t1261->items.
    t1261->save( ).
    DATA(t1275) = t1259.
    DATA t1276 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1276.
    DATA t1277 TYPE string.
    DATA(t1278) = |on_error|.
    t1277 = t1278.
    DATA t1279 TYPE string.
    DATA(t1280) = |abap_only|.
    t1279 = t1280.
    DATA t1281 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1281.
    DATA t1282 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1282.
    DATA(t1283) = abap_true.
    IF t1283 = abap_true.
      DATA(t1284) = abap_true.
      DATA(t1285) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1285->has = abap_true.
      t1285->value = t1284.
      t1282 = t1285.
    ELSE.
      DATA t1286 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1286.
      t1282 = t1286.
    ENDIF.
    t1281 = t1282.
    t1276 = NEW zcl_lnt_sql_named_param( i_name = t1277 i_value = t1279 i_optional = t1281 ).
    CREATE OBJECT t1276->zlnt_view_ownkeys_b0e8086400eb.
    t1276->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1287.
    IF t1276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1287 ).
    ENDIF.
    DATA t1288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1288.
    IF t1276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1288 ).
    ENDIF.
    DATA t1289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1289.
    IF t1276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1289 ).
    ENDIF.
    CREATE OBJECT t1276->zlnt_json_ownkeys_70e5fd461788.
    t1276->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1290) = |name|.
    DATA t1291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1291.
    IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1290 p1 = t1291 ).
    ENDIF.
    DATA(t1292) = |value|.
    DATA t1293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1293.
    IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1292 p1 = t1293 ).
    ENDIF.
    DATA(t1294) = |optional|.
    DATA t1295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1295.
    IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1294 p1 = t1295 ).
    ENDIF.
    t1275->load( ).
    APPEND t1276 TO t1275->items.
    t1275->save( ).
    DATA(t1296) = t1259.
    DATA t1297 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1297.
    DATA t1298 TYPE string.
    DATA(t1299) = |on_initial|.
    t1298 = t1299.
    DATA t1300 TYPE string.
    DATA(t1301) = |abap_only|.
    t1300 = t1301.
    DATA t1302 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1302.
    DATA t1303 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1303.
    DATA(t1304) = abap_true.
    IF t1304 = abap_true.
      DATA(t1305) = abap_true.
      DATA(t1306) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1306->has = abap_true.
      t1306->value = t1305.
      t1303 = t1306.
    ELSE.
      DATA t1307 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1307.
      t1303 = t1307.
    ENDIF.
    t1302 = t1303.
    t1297 = NEW zcl_lnt_sql_named_param( i_name = t1298 i_value = t1300 i_optional = t1302 ).
    CREATE OBJECT t1297->zlnt_view_ownkeys_b0e8086400eb.
    t1297->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1308.
    IF t1297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1308 ).
    ENDIF.
    DATA t1309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1309.
    IF t1297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1309 ).
    ENDIF.
    DATA t1310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1310.
    IF t1297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1310 ).
    ENDIF.
    CREATE OBJECT t1297->zlnt_json_ownkeys_70e5fd461788.
    t1297->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1311) = |name|.
    DATA t1312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1312.
    IF t1297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1311 p1 = t1312 ).
    ENDIF.
    DATA(t1313) = |value|.
    DATA t1314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1314.
    IF t1297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1313 p1 = t1314 ).
    ENDIF.
    DATA(t1315) = |optional|.
    DATA t1316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1316.
    IF t1297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1315 p1 = t1316 ).
    ENDIF.
    t1296->load( ).
    APPEND t1297 TO t1296->items.
    t1296->save( ).
    DATA(t1317) = t1259.
    t1258 = t1317.
    t1252 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1253 i_f1 = t1254 i_f2 = t1258 ).
    t1251->load( ).
    APPEND t1252 TO t1251->items.
    t1251->save( ).
    DATA(t1318) = t643.
    DATA t1319 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1319.
    DATA(t1320) = |tstmpl_from_utcl|.
    DATA t1321 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1321.
    DATA t1322 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1322.
    DATA t1323 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1323.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1323 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1324) = |v757|.
    t1322 = t1323->get( p0 = t1324 ).
    t1321 = t1322.
    DATA t1325 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1325.
    DATA t1326 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1327.
    t1326 = t1327.
    DATA(t1328) = t1326.
    DATA t1329 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1330 TYPE string.
    DATA(t1331) = |utcl|.
    t1330 = t1331.
    DATA t1332 TYPE string.
    DATA(t1333) = |any|.
    t1332 = t1333.
    DATA t1334 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1335 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1335.
    t1334 = t1335.
    t1329 = NEW zcl_lnt_sql_named_param( i_name = t1330 i_value = t1332 i_optional = t1334 ).
    CREATE OBJECT t1329->zlnt_view_ownkeys_b0e8086400eb.
    t1329->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1336.
    IF t1329->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1329->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1336 ).
    ENDIF.
    DATA t1337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1337.
    IF t1329->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1329->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1337 ).
    ENDIF.
    CREATE OBJECT t1329->zlnt_json_ownkeys_70e5fd461788.
    t1329->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1338) = |name|.
    DATA t1339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1339.
    IF t1329->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1329->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1338 p1 = t1339 ).
    ENDIF.
    DATA(t1340) = |value|.
    DATA t1341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1341.
    IF t1329->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1329->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1340 p1 = t1341 ).
    ENDIF.
    t1328->load( ).
    APPEND t1329 TO t1328->items.
    t1328->save( ).
    DATA(t1342) = t1326.
    DATA t1343 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1343.
    DATA t1344 TYPE string.
    DATA(t1345) = |on_null|.
    t1344 = t1345.
    DATA t1346 TYPE string.
    DATA(t1347) = |abap_only|.
    t1346 = t1347.
    DATA t1348 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1348.
    DATA t1349 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1349.
    DATA(t1350) = abap_true.
    IF t1350 = abap_true.
      DATA(t1351) = abap_true.
      DATA(t1352) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1352->has = abap_true.
      t1352->value = t1351.
      t1349 = t1352.
    ELSE.
      DATA t1353 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1353.
      t1349 = t1353.
    ENDIF.
    t1348 = t1349.
    t1343 = NEW zcl_lnt_sql_named_param( i_name = t1344 i_value = t1346 i_optional = t1348 ).
    CREATE OBJECT t1343->zlnt_view_ownkeys_b0e8086400eb.
    t1343->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1354.
    IF t1343->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1354 ).
    ENDIF.
    DATA t1355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1355.
    IF t1343->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1355 ).
    ENDIF.
    DATA t1356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1356.
    IF t1343->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1356 ).
    ENDIF.
    CREATE OBJECT t1343->zlnt_json_ownkeys_70e5fd461788.
    t1343->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1357) = |name|.
    DATA t1358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1358.
    IF t1343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1357 p1 = t1358 ).
    ENDIF.
    DATA(t1359) = |value|.
    DATA t1360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1360.
    IF t1343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1359 p1 = t1360 ).
    ENDIF.
    DATA(t1361) = |optional|.
    DATA t1362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1362.
    IF t1343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1361 p1 = t1362 ).
    ENDIF.
    t1342->load( ).
    APPEND t1343 TO t1342->items.
    t1342->save( ).
    DATA(t1363) = t1326.
    t1325 = t1363.
    t1319 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1320 i_f1 = t1321 i_f2 = t1325 ).
    t1318->load( ).
    APPEND t1319 TO t1318->items.
    t1318->save( ).
    DATA(t1364) = t643.
    DATA t1365 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1365.
    DATA(t1366) = |dats_to_datn|.
    DATA t1367 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1367.
    DATA t1368 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1368.
    DATA t1369 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1369.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1369 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1370) = |v757|.
    t1368 = t1369->get( p0 = t1370 ).
    t1367 = t1368.
    DATA t1371 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1371.
    DATA t1372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1373.
    t1372 = t1373.
    DATA(t1374) = t1372.
    DATA t1375 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1376 TYPE string.
    DATA(t1377) = |dats|.
    t1376 = t1377.
    DATA t1378 TYPE string.
    DATA(t1379) = |any|.
    t1378 = t1379.
    DATA t1380 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1381 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1381.
    t1380 = t1381.
    t1375 = NEW zcl_lnt_sql_named_param( i_name = t1376 i_value = t1378 i_optional = t1380 ).
    CREATE OBJECT t1375->zlnt_view_ownkeys_b0e8086400eb.
    t1375->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1382.
    IF t1375->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1375->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1382 ).
    ENDIF.
    DATA t1383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1383.
    IF t1375->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1375->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1383 ).
    ENDIF.
    CREATE OBJECT t1375->zlnt_json_ownkeys_70e5fd461788.
    t1375->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1384) = |name|.
    DATA t1385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1385.
    IF t1375->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1375->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1384 p1 = t1385 ).
    ENDIF.
    DATA(t1386) = |value|.
    DATA t1387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1387.
    IF t1375->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1375->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1386 p1 = t1387 ).
    ENDIF.
    t1374->load( ).
    APPEND t1375 TO t1374->items.
    t1374->save( ).
    DATA(t1388) = t1372.
    DATA t1389 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1389.
    DATA t1390 TYPE string.
    DATA(t1391) = |on_error|.
    t1390 = t1391.
    DATA t1392 TYPE string.
    DATA(t1393) = |abap_only|.
    t1392 = t1393.
    DATA t1394 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1394.
    DATA t1395 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1395.
    DATA(t1396) = abap_true.
    IF t1396 = abap_true.
      DATA(t1397) = abap_true.
      DATA(t1398) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1398->has = abap_true.
      t1398->value = t1397.
      t1395 = t1398.
    ELSE.
      DATA t1399 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1399.
      t1395 = t1399.
    ENDIF.
    t1394 = t1395.
    t1389 = NEW zcl_lnt_sql_named_param( i_name = t1390 i_value = t1392 i_optional = t1394 ).
    CREATE OBJECT t1389->zlnt_view_ownkeys_b0e8086400eb.
    t1389->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1400.
    IF t1389->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1389->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1400 ).
    ENDIF.
    DATA t1401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1401.
    IF t1389->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1389->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1401 ).
    ENDIF.
    DATA t1402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1402.
    IF t1389->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1389->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1402 ).
    ENDIF.
    CREATE OBJECT t1389->zlnt_json_ownkeys_70e5fd461788.
    t1389->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1403) = |name|.
    DATA t1404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1404.
    IF t1389->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1389->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1403 p1 = t1404 ).
    ENDIF.
    DATA(t1405) = |value|.
    DATA t1406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1406.
    IF t1389->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1389->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1405 p1 = t1406 ).
    ENDIF.
    DATA(t1407) = |optional|.
    DATA t1408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1408.
    IF t1389->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1389->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1407 p1 = t1408 ).
    ENDIF.
    t1388->load( ).
    APPEND t1389 TO t1388->items.
    t1388->save( ).
    DATA(t1409) = t1372.
    DATA t1410 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1410.
    DATA t1411 TYPE string.
    DATA(t1412) = |on_initial|.
    t1411 = t1412.
    DATA t1413 TYPE string.
    DATA(t1414) = |abap_only|.
    t1413 = t1414.
    DATA t1415 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1415.
    DATA t1416 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1416.
    DATA(t1417) = abap_true.
    IF t1417 = abap_true.
      DATA(t1418) = abap_true.
      DATA(t1419) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1419->has = abap_true.
      t1419->value = t1418.
      t1416 = t1419.
    ELSE.
      DATA t1420 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1420.
      t1416 = t1420.
    ENDIF.
    t1415 = t1416.
    t1410 = NEW zcl_lnt_sql_named_param( i_name = t1411 i_value = t1413 i_optional = t1415 ).
    CREATE OBJECT t1410->zlnt_view_ownkeys_b0e8086400eb.
    t1410->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1421.
    IF t1410->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1410->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1421 ).
    ENDIF.
    DATA t1422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1422.
    IF t1410->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1410->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1422 ).
    ENDIF.
    DATA t1423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1423.
    IF t1410->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1410->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1423 ).
    ENDIF.
    CREATE OBJECT t1410->zlnt_json_ownkeys_70e5fd461788.
    t1410->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1424) = |name|.
    DATA t1425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1425.
    IF t1410->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1410->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1424 p1 = t1425 ).
    ENDIF.
    DATA(t1426) = |value|.
    DATA t1427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1427.
    IF t1410->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1410->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1426 p1 = t1427 ).
    ENDIF.
    DATA(t1428) = |optional|.
    DATA t1429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1429.
    IF t1410->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1410->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1428 p1 = t1429 ).
    ENDIF.
    t1409->load( ).
    APPEND t1410 TO t1409->items.
    t1409->save( ).
    DATA(t1430) = t1372.
    t1371 = t1430.
    t1365 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1366 i_f1 = t1367 i_f2 = t1371 ).
    t1364->load( ).
    APPEND t1365 TO t1364->items.
    t1364->save( ).
    DATA(t1431) = t643.
    DATA t1432 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1432.
    DATA(t1433) = |dats_from_datn|.
    DATA t1434 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1434.
    DATA t1435 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1435.
    DATA t1436 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1436.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1436 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1437) = |v757|.
    t1435 = t1436->get( p0 = t1437 ).
    t1434 = t1435.
    DATA t1438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1438.
    DATA t1439 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1440 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1440.
    t1439 = t1440.
    DATA(t1441) = t1439.
    DATA t1442 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1443 TYPE string.
    DATA(t1444) = |datn|.
    t1443 = t1444.
    DATA t1445 TYPE string.
    DATA(t1446) = |any|.
    t1445 = t1446.
    DATA t1447 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1448 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1448.
    t1447 = t1448.
    t1442 = NEW zcl_lnt_sql_named_param( i_name = t1443 i_value = t1445 i_optional = t1447 ).
    CREATE OBJECT t1442->zlnt_view_ownkeys_b0e8086400eb.
    t1442->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1449.
    IF t1442->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1442->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1449 ).
    ENDIF.
    DATA t1450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1450.
    IF t1442->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1442->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1450 ).
    ENDIF.
    CREATE OBJECT t1442->zlnt_json_ownkeys_70e5fd461788.
    t1442->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1451) = |name|.
    DATA t1452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1452.
    IF t1442->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1442->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1451 p1 = t1452 ).
    ENDIF.
    DATA(t1453) = |value|.
    DATA t1454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1454.
    IF t1442->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1442->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1453 p1 = t1454 ).
    ENDIF.
    t1441->load( ).
    APPEND t1442 TO t1441->items.
    t1441->save( ).
    DATA(t1455) = t1439.
    DATA t1456 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1456.
    DATA t1457 TYPE string.
    DATA(t1458) = |on_null|.
    t1457 = t1458.
    DATA t1459 TYPE string.
    DATA(t1460) = |abap_only|.
    t1459 = t1460.
    DATA t1461 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1461.
    DATA t1462 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1462.
    DATA(t1463) = abap_true.
    IF t1463 = abap_true.
      DATA(t1464) = abap_true.
      DATA(t1465) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1465->has = abap_true.
      t1465->value = t1464.
      t1462 = t1465.
    ELSE.
      DATA t1466 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1466.
      t1462 = t1466.
    ENDIF.
    t1461 = t1462.
    t1456 = NEW zcl_lnt_sql_named_param( i_name = t1457 i_value = t1459 i_optional = t1461 ).
    CREATE OBJECT t1456->zlnt_view_ownkeys_b0e8086400eb.
    t1456->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1467.
    IF t1456->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1456->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1467 ).
    ENDIF.
    DATA t1468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1468.
    IF t1456->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1456->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1468 ).
    ENDIF.
    DATA t1469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1469.
    IF t1456->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1456->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1469 ).
    ENDIF.
    CREATE OBJECT t1456->zlnt_json_ownkeys_70e5fd461788.
    t1456->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1470) = |name|.
    DATA t1471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1471.
    IF t1456->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1456->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1470 p1 = t1471 ).
    ENDIF.
    DATA(t1472) = |value|.
    DATA t1473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1473.
    IF t1456->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1456->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1472 p1 = t1473 ).
    ENDIF.
    DATA(t1474) = |optional|.
    DATA t1475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1475.
    IF t1456->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1456->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1474 p1 = t1475 ).
    ENDIF.
    t1455->load( ).
    APPEND t1456 TO t1455->items.
    t1455->save( ).
    DATA(t1476) = t1439.
    t1438 = t1476.
    t1432 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1433 i_f1 = t1434 i_f2 = t1438 ).
    t1431->load( ).
    APPEND t1432 TO t1431->items.
    t1431->save( ).
    DATA(t1477) = t643.
    DATA t1478 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1478.
    DATA(t1479) = |tims_to_timn|.
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
    DATA(t1483) = |v757|.
    t1481 = t1482->get( p0 = t1483 ).
    t1480 = t1481.
    DATA t1484 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1484.
    DATA t1485 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1486 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1486.
    t1485 = t1486.
    DATA(t1487) = t1485.
    DATA t1488 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1489 TYPE string.
    DATA(t1490) = |tims|.
    t1489 = t1490.
    DATA t1491 TYPE string.
    DATA(t1492) = |any|.
    t1491 = t1492.
    DATA t1493 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1494 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1494.
    t1493 = t1494.
    t1488 = NEW zcl_lnt_sql_named_param( i_name = t1489 i_value = t1491 i_optional = t1493 ).
    CREATE OBJECT t1488->zlnt_view_ownkeys_b0e8086400eb.
    t1488->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1495.
    IF t1488->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1488->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1495 ).
    ENDIF.
    DATA t1496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1496.
    IF t1488->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1488->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1496 ).
    ENDIF.
    CREATE OBJECT t1488->zlnt_json_ownkeys_70e5fd461788.
    t1488->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1497) = |name|.
    DATA t1498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1498.
    IF t1488->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1488->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1497 p1 = t1498 ).
    ENDIF.
    DATA(t1499) = |value|.
    DATA t1500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1500.
    IF t1488->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1488->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1499 p1 = t1500 ).
    ENDIF.
    t1487->load( ).
    APPEND t1488 TO t1487->items.
    t1487->save( ).
    DATA(t1501) = t1485.
    DATA t1502 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1502.
    DATA t1503 TYPE string.
    DATA(t1504) = |on_error|.
    t1503 = t1504.
    DATA t1505 TYPE string.
    DATA(t1506) = |abap_only|.
    t1505 = t1506.
    DATA t1507 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1507.
    DATA t1508 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1508.
    DATA(t1509) = abap_true.
    IF t1509 = abap_true.
      DATA(t1510) = abap_true.
      DATA(t1511) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1511->has = abap_true.
      t1511->value = t1510.
      t1508 = t1511.
    ELSE.
      DATA t1512 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1512.
      t1508 = t1512.
    ENDIF.
    t1507 = t1508.
    t1502 = NEW zcl_lnt_sql_named_param( i_name = t1503 i_value = t1505 i_optional = t1507 ).
    CREATE OBJECT t1502->zlnt_view_ownkeys_b0e8086400eb.
    t1502->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1513.
    IF t1502->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1502->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1513 ).
    ENDIF.
    DATA t1514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1514.
    IF t1502->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1502->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1514 ).
    ENDIF.
    DATA t1515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1515.
    IF t1502->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1502->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1515 ).
    ENDIF.
    CREATE OBJECT t1502->zlnt_json_ownkeys_70e5fd461788.
    t1502->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1516) = |name|.
    DATA t1517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1517.
    IF t1502->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1502->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1516 p1 = t1517 ).
    ENDIF.
    DATA(t1518) = |value|.
    DATA t1519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1519.
    IF t1502->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1502->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1518 p1 = t1519 ).
    ENDIF.
    DATA(t1520) = |optional|.
    DATA t1521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1521.
    IF t1502->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1502->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1520 p1 = t1521 ).
    ENDIF.
    t1501->load( ).
    APPEND t1502 TO t1501->items.
    t1501->save( ).
    DATA(t1522) = t1485.
    t1484 = t1522.
    t1478 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1479 i_f1 = t1480 i_f2 = t1484 ).
    t1477->load( ).
    APPEND t1478 TO t1477->items.
    t1477->save( ).
    DATA(t1523) = t643.
    DATA t1524 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1524.
    DATA(t1525) = |tims_from_timn|.
    DATA t1526 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1526.
    DATA t1527 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1527.
    DATA t1528 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1528.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1528 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1529) = |v757|.
    t1527 = t1528->get( p0 = t1529 ).
    t1526 = t1527.
    DATA t1530 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1530.
    DATA t1531 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1532 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1532.
    t1531 = t1532.
    DATA(t1533) = t1531.
    DATA t1534 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1535 TYPE string.
    DATA(t1536) = |timn|.
    t1535 = t1536.
    DATA t1537 TYPE string.
    DATA(t1538) = |any|.
    t1537 = t1538.
    DATA t1539 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1540 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1540.
    t1539 = t1540.
    t1534 = NEW zcl_lnt_sql_named_param( i_name = t1535 i_value = t1537 i_optional = t1539 ).
    CREATE OBJECT t1534->zlnt_view_ownkeys_b0e8086400eb.
    t1534->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1541.
    IF t1534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1541 ).
    ENDIF.
    DATA t1542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1542.
    IF t1534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1542 ).
    ENDIF.
    CREATE OBJECT t1534->zlnt_json_ownkeys_70e5fd461788.
    t1534->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1543) = |name|.
    DATA t1544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1544.
    IF t1534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1543 p1 = t1544 ).
    ENDIF.
    DATA(t1545) = |value|.
    DATA t1546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1546.
    IF t1534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1545 p1 = t1546 ).
    ENDIF.
    t1533->load( ).
    APPEND t1534 TO t1533->items.
    t1533->save( ).
    DATA(t1547) = t1531.
    DATA t1548 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1548.
    DATA t1549 TYPE string.
    DATA(t1550) = |on_null|.
    t1549 = t1550.
    DATA t1551 TYPE string.
    DATA(t1552) = |abap_only|.
    t1551 = t1552.
    DATA t1553 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1553.
    DATA t1554 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1554.
    DATA(t1555) = abap_true.
    IF t1555 = abap_true.
      DATA(t1556) = abap_true.
      DATA(t1557) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1557->has = abap_true.
      t1557->value = t1556.
      t1554 = t1557.
    ELSE.
      DATA t1558 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1558.
      t1554 = t1558.
    ENDIF.
    t1553 = t1554.
    t1548 = NEW zcl_lnt_sql_named_param( i_name = t1549 i_value = t1551 i_optional = t1553 ).
    CREATE OBJECT t1548->zlnt_view_ownkeys_b0e8086400eb.
    t1548->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1559.
    IF t1548->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1548->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1559 ).
    ENDIF.
    DATA t1560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1560.
    IF t1548->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1548->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1560 ).
    ENDIF.
    DATA t1561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1561.
    IF t1548->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1548->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1561 ).
    ENDIF.
    CREATE OBJECT t1548->zlnt_json_ownkeys_70e5fd461788.
    t1548->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1562) = |name|.
    DATA t1563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1563.
    IF t1548->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1548->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1562 p1 = t1563 ).
    ENDIF.
    DATA(t1564) = |value|.
    DATA t1565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1565.
    IF t1548->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1548->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1564 p1 = t1565 ).
    ENDIF.
    DATA(t1566) = |optional|.
    DATA t1567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1567.
    IF t1548->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1548->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1566 p1 = t1567 ).
    ENDIF.
    t1547->load( ).
    APPEND t1548 TO t1547->items.
    t1547->save( ).
    DATA(t1568) = t1531.
    t1530 = t1568.
    t1524 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1525 i_f1 = t1526 i_f2 = t1530 ).
    t1523->load( ).
    APPEND t1524 TO t1523->items.
    t1523->save( ).
    DATA(t1569) = t643.
    DATA t1570 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1570.
    DATA(t1571) = |currency_conversion|.
    DATA t1572 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1572.
    DATA t1573 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1573.
    DATA t1574 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1574.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1574 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1575) = |v757|.
    t1573 = t1574->get( p0 = t1575 ).
    t1572 = t1573.
    DATA t1576 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1576.
    DATA t1577 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1578 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1578.
    t1577 = t1578.
    DATA(t1579) = t1577.
    DATA t1580 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1581 TYPE string.
    DATA(t1582) = |amount|.
    t1581 = t1582.
    DATA t1583 TYPE string.
    DATA(t1584) = |any|.
    t1583 = t1584.
    DATA t1585 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1586 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1586.
    t1585 = t1586.
    t1580 = NEW zcl_lnt_sql_named_param( i_name = t1581 i_value = t1583 i_optional = t1585 ).
    CREATE OBJECT t1580->zlnt_view_ownkeys_b0e8086400eb.
    t1580->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1587.
    IF t1580->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1580->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1587 ).
    ENDIF.
    DATA t1588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1588.
    IF t1580->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1580->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1588 ).
    ENDIF.
    CREATE OBJECT t1580->zlnt_json_ownkeys_70e5fd461788.
    t1580->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1589) = |name|.
    DATA t1590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1590.
    IF t1580->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1580->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1589 p1 = t1590 ).
    ENDIF.
    DATA(t1591) = |value|.
    DATA t1592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1592.
    IF t1580->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1580->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1591 p1 = t1592 ).
    ENDIF.
    t1579->load( ).
    APPEND t1580 TO t1579->items.
    t1579->save( ).
    DATA(t1593) = t1577.
    DATA t1594 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1595 TYPE string.
    DATA(t1596) = |source_currency|.
    t1595 = t1596.
    DATA t1597 TYPE string.
    DATA(t1598) = |any|.
    t1597 = t1598.
    DATA t1599 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1600 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1600.
    t1599 = t1600.
    t1594 = NEW zcl_lnt_sql_named_param( i_name = t1595 i_value = t1597 i_optional = t1599 ).
    CREATE OBJECT t1594->zlnt_view_ownkeys_b0e8086400eb.
    t1594->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1601.
    IF t1594->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1594->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1601 ).
    ENDIF.
    DATA t1602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1602.
    IF t1594->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1594->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1602 ).
    ENDIF.
    CREATE OBJECT t1594->zlnt_json_ownkeys_70e5fd461788.
    t1594->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1603) = |name|.
    DATA t1604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1604.
    IF t1594->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1594->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1603 p1 = t1604 ).
    ENDIF.
    DATA(t1605) = |value|.
    DATA t1606 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1606.
    IF t1594->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1594->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1605 p1 = t1606 ).
    ENDIF.
    t1593->load( ).
    APPEND t1594 TO t1593->items.
    t1593->save( ).
    DATA(t1607) = t1577.
    DATA t1608 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1609 TYPE string.
    DATA(t1610) = |target_currency|.
    t1609 = t1610.
    DATA t1611 TYPE string.
    DATA(t1612) = |any|.
    t1611 = t1612.
    DATA t1613 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1614 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1614.
    t1613 = t1614.
    t1608 = NEW zcl_lnt_sql_named_param( i_name = t1609 i_value = t1611 i_optional = t1613 ).
    CREATE OBJECT t1608->zlnt_view_ownkeys_b0e8086400eb.
    t1608->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1615.
    IF t1608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1615 ).
    ENDIF.
    DATA t1616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1616.
    IF t1608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1616 ).
    ENDIF.
    CREATE OBJECT t1608->zlnt_json_ownkeys_70e5fd461788.
    t1608->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1617) = |name|.
    DATA t1618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1618.
    IF t1608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1617 p1 = t1618 ).
    ENDIF.
    DATA(t1619) = |value|.
    DATA t1620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1620.
    IF t1608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1619 p1 = t1620 ).
    ENDIF.
    t1607->load( ).
    APPEND t1608 TO t1607->items.
    t1607->save( ).
    DATA(t1621) = t1577.
    DATA t1622 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1623 TYPE string.
    DATA(t1624) = |exchange_rate_date|.
    t1623 = t1624.
    DATA t1625 TYPE string.
    DATA(t1626) = |any|.
    t1625 = t1626.
    DATA t1627 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1628 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1628.
    t1627 = t1628.
    t1622 = NEW zcl_lnt_sql_named_param( i_name = t1623 i_value = t1625 i_optional = t1627 ).
    CREATE OBJECT t1622->zlnt_view_ownkeys_b0e8086400eb.
    t1622->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1629.
    IF t1622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1629 ).
    ENDIF.
    DATA t1630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1630.
    IF t1622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1630 ).
    ENDIF.
    CREATE OBJECT t1622->zlnt_json_ownkeys_70e5fd461788.
    t1622->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1631) = |name|.
    DATA t1632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1632.
    IF t1622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1631 p1 = t1632 ).
    ENDIF.
    DATA(t1633) = |value|.
    DATA t1634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1634.
    IF t1622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1633 p1 = t1634 ).
    ENDIF.
    t1621->load( ).
    APPEND t1622 TO t1621->items.
    t1621->save( ).
    DATA(t1635) = t1577.
    DATA t1636 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1636.
    DATA t1637 TYPE string.
    DATA(t1638) = |exchange_rate_type|.
    t1637 = t1638.
    DATA t1639 TYPE string.
    DATA(t1640) = |any|.
    t1639 = t1640.
    DATA t1641 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1641.
    DATA t1642 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1642.
    DATA(t1643) = abap_true.
    IF t1643 = abap_true.
      DATA(t1644) = abap_true.
      DATA(t1645) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1645->has = abap_true.
      t1645->value = t1644.
      t1642 = t1645.
    ELSE.
      DATA t1646 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1646.
      t1642 = t1646.
    ENDIF.
    t1641 = t1642.
    t1636 = NEW zcl_lnt_sql_named_param( i_name = t1637 i_value = t1639 i_optional = t1641 ).
    CREATE OBJECT t1636->zlnt_view_ownkeys_b0e8086400eb.
    t1636->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1647.
    IF t1636->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1636->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1647 ).
    ENDIF.
    DATA t1648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1648.
    IF t1636->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1636->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1648 ).
    ENDIF.
    DATA t1649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1649.
    IF t1636->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1636->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1649 ).
    ENDIF.
    CREATE OBJECT t1636->zlnt_json_ownkeys_70e5fd461788.
    t1636->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1650) = |name|.
    DATA t1651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1651.
    IF t1636->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1636->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1650 p1 = t1651 ).
    ENDIF.
    DATA(t1652) = |value|.
    DATA t1653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1653.
    IF t1636->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1636->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1652 p1 = t1653 ).
    ENDIF.
    DATA(t1654) = |optional|.
    DATA t1655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1655.
    IF t1636->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1636->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1654 p1 = t1655 ).
    ENDIF.
    t1635->load( ).
    APPEND t1636 TO t1635->items.
    t1635->save( ).
    DATA(t1656) = t1577.
    DATA t1657 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1657.
    DATA t1658 TYPE string.
    DATA(t1659) = |client|.
    t1658 = t1659.
    DATA t1660 TYPE string.
    DATA(t1661) = |any|.
    t1660 = t1661.
    DATA t1662 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1662.
    DATA t1663 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1663.
    DATA(t1664) = abap_true.
    IF t1664 = abap_true.
      DATA(t1665) = abap_true.
      DATA(t1666) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1666->has = abap_true.
      t1666->value = t1665.
      t1663 = t1666.
    ELSE.
      DATA t1667 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1667.
      t1663 = t1667.
    ENDIF.
    t1662 = t1663.
    t1657 = NEW zcl_lnt_sql_named_param( i_name = t1658 i_value = t1660 i_optional = t1662 ).
    CREATE OBJECT t1657->zlnt_view_ownkeys_b0e8086400eb.
    t1657->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1668 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1668.
    IF t1657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1668 ).
    ENDIF.
    DATA t1669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1669.
    IF t1657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1669 ).
    ENDIF.
    DATA t1670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1670.
    IF t1657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1670 ).
    ENDIF.
    CREATE OBJECT t1657->zlnt_json_ownkeys_70e5fd461788.
    t1657->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1671) = |name|.
    DATA t1672 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1672.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1671 p1 = t1672 ).
    ENDIF.
    DATA(t1673) = |value|.
    DATA t1674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1674.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1673 p1 = t1674 ).
    ENDIF.
    DATA(t1675) = |optional|.
    DATA t1676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1676.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1675 p1 = t1676 ).
    ENDIF.
    t1656->load( ).
    APPEND t1657 TO t1656->items.
    t1656->save( ).
    DATA(t1677) = t1577.
    DATA t1678 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1678.
    DATA t1679 TYPE string.
    DATA(t1680) = |round|.
    t1679 = t1680.
    DATA t1681 TYPE string.
    DATA(t1682) = |abap_only|.
    t1681 = t1682.
    DATA t1683 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1683.
    DATA t1684 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1684.
    DATA(t1685) = abap_true.
    IF t1685 = abap_true.
      DATA(t1686) = abap_true.
      DATA(t1687) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1687->has = abap_true.
      t1687->value = t1686.
      t1684 = t1687.
    ELSE.
      DATA t1688 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1688.
      t1684 = t1688.
    ENDIF.
    t1683 = t1684.
    t1678 = NEW zcl_lnt_sql_named_param( i_name = t1679 i_value = t1681 i_optional = t1683 ).
    CREATE OBJECT t1678->zlnt_view_ownkeys_b0e8086400eb.
    t1678->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1689.
    IF t1678->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1678->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1689 ).
    ENDIF.
    DATA t1690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1690.
    IF t1678->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1678->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1690 ).
    ENDIF.
    DATA t1691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1691.
    IF t1678->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1678->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1691 ).
    ENDIF.
    CREATE OBJECT t1678->zlnt_json_ownkeys_70e5fd461788.
    t1678->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1692) = |name|.
    DATA t1693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1693.
    IF t1678->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1678->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1692 p1 = t1693 ).
    ENDIF.
    DATA(t1694) = |value|.
    DATA t1695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1695.
    IF t1678->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1678->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1694 p1 = t1695 ).
    ENDIF.
    DATA(t1696) = |optional|.
    DATA t1697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1697.
    IF t1678->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1678->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1696 p1 = t1697 ).
    ENDIF.
    t1677->load( ).
    APPEND t1678 TO t1677->items.
    t1677->save( ).
    DATA(t1698) = t1577.
    DATA t1699 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1699.
    DATA t1700 TYPE string.
    DATA(t1701) = |decimal_shift|.
    t1700 = t1701.
    DATA t1702 TYPE string.
    DATA(t1703) = |abap_only|.
    t1702 = t1703.
    DATA t1704 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1704.
    DATA t1705 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1705.
    DATA(t1706) = abap_true.
    IF t1706 = abap_true.
      DATA(t1707) = abap_true.
      DATA(t1708) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1708->has = abap_true.
      t1708->value = t1707.
      t1705 = t1708.
    ELSE.
      DATA t1709 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1709.
      t1705 = t1709.
    ENDIF.
    t1704 = t1705.
    t1699 = NEW zcl_lnt_sql_named_param( i_name = t1700 i_value = t1702 i_optional = t1704 ).
    CREATE OBJECT t1699->zlnt_view_ownkeys_b0e8086400eb.
    t1699->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1710.
    IF t1699->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1699->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1710 ).
    ENDIF.
    DATA t1711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1711.
    IF t1699->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1699->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1711 ).
    ENDIF.
    DATA t1712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1712.
    IF t1699->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1699->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1712 ).
    ENDIF.
    CREATE OBJECT t1699->zlnt_json_ownkeys_70e5fd461788.
    t1699->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1713) = |name|.
    DATA t1714 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1714.
    IF t1699->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1699->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1713 p1 = t1714 ).
    ENDIF.
    DATA(t1715) = |value|.
    DATA t1716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1716.
    IF t1699->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1699->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1715 p1 = t1716 ).
    ENDIF.
    DATA(t1717) = |optional|.
    DATA t1718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1718.
    IF t1699->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1699->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1717 p1 = t1718 ).
    ENDIF.
    t1698->load( ).
    APPEND t1699 TO t1698->items.
    t1698->save( ).
    DATA(t1719) = t1577.
    DATA t1720 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1720.
    DATA t1721 TYPE string.
    DATA(t1722) = |decimal_shift_back|.
    t1721 = t1722.
    DATA t1723 TYPE string.
    DATA(t1724) = |abap_only|.
    t1723 = t1724.
    DATA t1725 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1725.
    DATA t1726 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1726.
    DATA(t1727) = abap_true.
    IF t1727 = abap_true.
      DATA(t1728) = abap_true.
      DATA(t1729) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1729->has = abap_true.
      t1729->value = t1728.
      t1726 = t1729.
    ELSE.
      DATA t1730 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1730.
      t1726 = t1730.
    ENDIF.
    t1725 = t1726.
    t1720 = NEW zcl_lnt_sql_named_param( i_name = t1721 i_value = t1723 i_optional = t1725 ).
    CREATE OBJECT t1720->zlnt_view_ownkeys_b0e8086400eb.
    t1720->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1731.
    IF t1720->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1720->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1731 ).
    ENDIF.
    DATA t1732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1732.
    IF t1720->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1720->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1732 ).
    ENDIF.
    DATA t1733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1733.
    IF t1720->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1720->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1733 ).
    ENDIF.
    CREATE OBJECT t1720->zlnt_json_ownkeys_70e5fd461788.
    t1720->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1734) = |name|.
    DATA t1735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1735.
    IF t1720->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1720->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1734 p1 = t1735 ).
    ENDIF.
    DATA(t1736) = |value|.
    DATA t1737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1737.
    IF t1720->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1720->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1736 p1 = t1737 ).
    ENDIF.
    DATA(t1738) = |optional|.
    DATA t1739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1739.
    IF t1720->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1720->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1738 p1 = t1739 ).
    ENDIF.
    t1719->load( ).
    APPEND t1720 TO t1719->items.
    t1719->save( ).
    DATA(t1740) = t1577.
    DATA t1741 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1741.
    DATA t1742 TYPE string.
    DATA(t1743) = |on_error|.
    t1742 = t1743.
    DATA t1744 TYPE string.
    DATA(t1745) = |abap_only|.
    t1744 = t1745.
    DATA t1746 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1746.
    DATA t1747 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1747.
    DATA(t1748) = abap_true.
    IF t1748 = abap_true.
      DATA(t1749) = abap_true.
      DATA(t1750) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1750->has = abap_true.
      t1750->value = t1749.
      t1747 = t1750.
    ELSE.
      DATA t1751 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1751.
      t1747 = t1751.
    ENDIF.
    t1746 = t1747.
    t1741 = NEW zcl_lnt_sql_named_param( i_name = t1742 i_value = t1744 i_optional = t1746 ).
    CREATE OBJECT t1741->zlnt_view_ownkeys_b0e8086400eb.
    t1741->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1752 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1752.
    IF t1741->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1741->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1752 ).
    ENDIF.
    DATA t1753 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1753.
    IF t1741->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1741->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1753 ).
    ENDIF.
    DATA t1754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1754.
    IF t1741->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1741->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1754 ).
    ENDIF.
    CREATE OBJECT t1741->zlnt_json_ownkeys_70e5fd461788.
    t1741->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1755) = |name|.
    DATA t1756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1756.
    IF t1741->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1741->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1755 p1 = t1756 ).
    ENDIF.
    DATA(t1757) = |value|.
    DATA t1758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1758.
    IF t1741->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1741->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1757 p1 = t1758 ).
    ENDIF.
    DATA(t1759) = |optional|.
    DATA t1760 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1760.
    IF t1741->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1741->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1759 p1 = t1760 ).
    ENDIF.
    t1740->load( ).
    APPEND t1741 TO t1740->items.
    t1740->save( ).
    DATA(t1761) = t1577.
    t1576 = t1761.
    t1570 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1571 i_f1 = t1572 i_f2 = t1576 ).
    t1569->load( ).
    APPEND t1570 TO t1569->items.
    t1569->save( ).
    DATA(t1762) = t643.
    DATA t1763 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1763.
    DATA(t1764) = |unit_conversion|.
    DATA t1765 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1765.
    DATA t1766 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1766.
    DATA t1767 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1767.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1767 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1768) = |v758|.
    t1766 = t1767->get( p0 = t1768 ).
    t1765 = t1766.
    DATA t1769 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1769.
    DATA t1770 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1771 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1771.
    t1770 = t1771.
    DATA(t1772) = t1770.
    DATA t1773 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1774 TYPE string.
    DATA(t1775) = |quantity|.
    t1774 = t1775.
    DATA t1776 TYPE string.
    DATA(t1777) = |any|.
    t1776 = t1777.
    DATA t1778 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1779 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1779.
    t1778 = t1779.
    t1773 = NEW zcl_lnt_sql_named_param( i_name = t1774 i_value = t1776 i_optional = t1778 ).
    CREATE OBJECT t1773->zlnt_view_ownkeys_b0e8086400eb.
    t1773->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1780.
    IF t1773->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1773->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1780 ).
    ENDIF.
    DATA t1781 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1781.
    IF t1773->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1773->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1781 ).
    ENDIF.
    CREATE OBJECT t1773->zlnt_json_ownkeys_70e5fd461788.
    t1773->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1782) = |name|.
    DATA t1783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1783.
    IF t1773->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1773->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1782 p1 = t1783 ).
    ENDIF.
    DATA(t1784) = |value|.
    DATA t1785 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1785.
    IF t1773->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1773->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1784 p1 = t1785 ).
    ENDIF.
    t1772->load( ).
    APPEND t1773 TO t1772->items.
    t1772->save( ).
    DATA(t1786) = t1770.
    DATA t1787 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1788 TYPE string.
    DATA(t1789) = |source_unit|.
    t1788 = t1789.
    DATA t1790 TYPE string.
    DATA(t1791) = |any|.
    t1790 = t1791.
    DATA t1792 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1793 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1793.
    t1792 = t1793.
    t1787 = NEW zcl_lnt_sql_named_param( i_name = t1788 i_value = t1790 i_optional = t1792 ).
    CREATE OBJECT t1787->zlnt_view_ownkeys_b0e8086400eb.
    t1787->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1794.
    IF t1787->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1787->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1794 ).
    ENDIF.
    DATA t1795 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1795.
    IF t1787->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1787->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1795 ).
    ENDIF.
    CREATE OBJECT t1787->zlnt_json_ownkeys_70e5fd461788.
    t1787->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1796) = |name|.
    DATA t1797 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1797.
    IF t1787->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1787->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1796 p1 = t1797 ).
    ENDIF.
    DATA(t1798) = |value|.
    DATA t1799 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1799.
    IF t1787->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1787->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1798 p1 = t1799 ).
    ENDIF.
    t1786->load( ).
    APPEND t1787 TO t1786->items.
    t1786->save( ).
    DATA(t1800) = t1770.
    DATA t1801 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1802 TYPE string.
    DATA(t1803) = |target_unit|.
    t1802 = t1803.
    DATA t1804 TYPE string.
    DATA(t1805) = |any|.
    t1804 = t1805.
    DATA t1806 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1807 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1807.
    t1806 = t1807.
    t1801 = NEW zcl_lnt_sql_named_param( i_name = t1802 i_value = t1804 i_optional = t1806 ).
    CREATE OBJECT t1801->zlnt_view_ownkeys_b0e8086400eb.
    t1801->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1808.
    IF t1801->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1801->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1808 ).
    ENDIF.
    DATA t1809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1809.
    IF t1801->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1801->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1809 ).
    ENDIF.
    CREATE OBJECT t1801->zlnt_json_ownkeys_70e5fd461788.
    t1801->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1810) = |name|.
    DATA t1811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1811.
    IF t1801->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1801->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1810 p1 = t1811 ).
    ENDIF.
    DATA(t1812) = |value|.
    DATA t1813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1813.
    IF t1801->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1801->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1812 p1 = t1813 ).
    ENDIF.
    t1800->load( ).
    APPEND t1801 TO t1800->items.
    t1800->save( ).
    DATA(t1814) = t1770.
    DATA t1815 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1815.
    DATA t1816 TYPE string.
    DATA(t1817) = |client|.
    t1816 = t1817.
    DATA t1818 TYPE string.
    DATA(t1819) = |any|.
    t1818 = t1819.
    DATA t1820 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1820.
    DATA t1821 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1821.
    DATA(t1822) = abap_true.
    IF t1822 = abap_true.
      DATA(t1823) = abap_true.
      DATA(t1824) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1824->has = abap_true.
      t1824->value = t1823.
      t1821 = t1824.
    ELSE.
      DATA t1825 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1825.
      t1821 = t1825.
    ENDIF.
    t1820 = t1821.
    t1815 = NEW zcl_lnt_sql_named_param( i_name = t1816 i_value = t1818 i_optional = t1820 ).
    CREATE OBJECT t1815->zlnt_view_ownkeys_b0e8086400eb.
    t1815->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1826.
    IF t1815->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1815->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1826 ).
    ENDIF.
    DATA t1827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1827.
    IF t1815->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1815->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1827 ).
    ENDIF.
    DATA t1828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1828.
    IF t1815->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1815->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1828 ).
    ENDIF.
    CREATE OBJECT t1815->zlnt_json_ownkeys_70e5fd461788.
    t1815->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1829) = |name|.
    DATA t1830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1830.
    IF t1815->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1815->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1829 p1 = t1830 ).
    ENDIF.
    DATA(t1831) = |value|.
    DATA t1832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1832.
    IF t1815->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1815->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1831 p1 = t1832 ).
    ENDIF.
    DATA(t1833) = |optional|.
    DATA t1834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1834.
    IF t1815->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1815->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1833 p1 = t1834 ).
    ENDIF.
    t1814->load( ).
    APPEND t1815 TO t1814->items.
    t1814->save( ).
    DATA(t1835) = t1770.
    DATA t1836 TYPE REF TO zcl_lnt_sql_named_param.
    CLEAR t1836.
    DATA t1837 TYPE string.
    DATA(t1838) = |on_error|.
    t1837 = t1838.
    DATA t1839 TYPE string.
    DATA(t1840) = |abap_only|.
    t1839 = t1840.
    DATA t1841 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1841.
    DATA t1842 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1842.
    DATA(t1843) = abap_true.
    IF t1843 = abap_true.
      DATA(t1844) = abap_true.
      DATA(t1845) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1845->has = abap_true.
      t1845->value = t1844.
      t1842 = t1845.
    ELSE.
      DATA t1846 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1846.
      t1842 = t1846.
    ENDIF.
    t1841 = t1842.
    t1836 = NEW zcl_lnt_sql_named_param( i_name = t1837 i_value = t1839 i_optional = t1841 ).
    CREATE OBJECT t1836->zlnt_view_ownkeys_b0e8086400eb.
    t1836->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1847.
    IF t1836->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1836->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1847 ).
    ENDIF.
    DATA t1848 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1848.
    IF t1836->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1836->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1848 ).
    ENDIF.
    DATA t1849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1849.
    IF t1836->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1836->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1849 ).
    ENDIF.
    CREATE OBJECT t1836->zlnt_json_ownkeys_70e5fd461788.
    t1836->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1850) = |name|.
    DATA t1851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1851.
    IF t1836->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1836->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1850 p1 = t1851 ).
    ENDIF.
    DATA(t1852) = |value|.
    DATA t1853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1853.
    IF t1836->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1836->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1852 p1 = t1853 ).
    ENDIF.
    DATA(t1854) = |optional|.
    DATA t1855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1855.
    IF t1836->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1836->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1854 p1 = t1855 ).
    ENDIF.
    t1835->load( ).
    APPEND t1836 TO t1835->items.
    t1835->save( ).
    DATA(t1856) = t1770.
    t1769 = t1856.
    t1763 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1764 i_f1 = t1765 i_f2 = t1769 ).
    t1762->load( ).
    APPEND t1763 TO t1762->items.
    t1762->save( ).
    DATA(t1857) = t643.
    DATA t1858 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1858.
    DATA(t1859) = |curr_to_decfloat_amount|.
    DATA t1860 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1860.
    DATA t1861 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1861.
    DATA t1862 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1862.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1862 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1863) = |v758|.
    t1861 = t1862->get( p0 = t1863 ).
    t1860 = t1861.
    DATA t1864 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1864.
    DATA t1865 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1866 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1866.
    t1865 = t1866.
    DATA(t1867) = t1865.
    DATA t1868 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1869 TYPE string.
    DATA(t1870) = |curr|.
    t1869 = t1870.
    DATA t1871 TYPE string.
    DATA(t1872) = |any|.
    t1871 = t1872.
    DATA t1873 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1874 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1874.
    t1873 = t1874.
    t1868 = NEW zcl_lnt_sql_named_param( i_name = t1869 i_value = t1871 i_optional = t1873 ).
    CREATE OBJECT t1868->zlnt_view_ownkeys_b0e8086400eb.
    t1868->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1875.
    IF t1868->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1868->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1875 ).
    ENDIF.
    DATA t1876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1876.
    IF t1868->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1868->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1876 ).
    ENDIF.
    CREATE OBJECT t1868->zlnt_json_ownkeys_70e5fd461788.
    t1868->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1877) = |name|.
    DATA t1878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1878.
    IF t1868->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1868->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1877 p1 = t1878 ).
    ENDIF.
    DATA(t1879) = |value|.
    DATA t1880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1880.
    IF t1868->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1868->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1879 p1 = t1880 ).
    ENDIF.
    t1867->load( ).
    APPEND t1868 TO t1867->items.
    t1867->save( ).
    DATA(t1881) = t1865.
    DATA t1882 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1883 TYPE string.
    DATA(t1884) = |cuky|.
    t1883 = t1884.
    DATA t1885 TYPE string.
    DATA(t1886) = |any|.
    t1885 = t1886.
    DATA t1887 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1888 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1888.
    t1887 = t1888.
    t1882 = NEW zcl_lnt_sql_named_param( i_name = t1883 i_value = t1885 i_optional = t1887 ).
    CREATE OBJECT t1882->zlnt_view_ownkeys_b0e8086400eb.
    t1882->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1889 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1889.
    IF t1882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1889 ).
    ENDIF.
    DATA t1890 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1890.
    IF t1882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1890 ).
    ENDIF.
    CREATE OBJECT t1882->zlnt_json_ownkeys_70e5fd461788.
    t1882->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1891) = |name|.
    DATA t1892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1892.
    IF t1882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1891 p1 = t1892 ).
    ENDIF.
    DATA(t1893) = |value|.
    DATA t1894 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1894.
    IF t1882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1893 p1 = t1894 ).
    ENDIF.
    t1881->load( ).
    APPEND t1882 TO t1881->items.
    t1881->save( ).
    DATA(t1895) = t1865.
    t1864 = t1895.
    t1858 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1859 i_f1 = t1860 i_f2 = t1864 ).
    t1857->load( ).
    APPEND t1858 TO t1857->items.
    t1857->save( ).
    DATA(t1896) = t643.
    DATA t1897 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1897.
    DATA(t1898) = |lang_to_char|.
    DATA t1899 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1899.
    DATA t1900 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1900.
    DATA t1901 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1901.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1901 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1902) = |v758|.
    t1900 = t1901->get( p0 = t1902 ).
    t1899 = t1900.
    DATA t1903 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1903.
    DATA t1904 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1905 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1905.
    t1904 = t1905.
    DATA(t1906) = t1904.
    DATA t1907 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1908 TYPE string.
    DATA(t1909) = |lang|.
    t1908 = t1909.
    DATA t1910 TYPE string.
    DATA(t1911) = |any|.
    t1910 = t1911.
    DATA t1912 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1913 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1913.
    t1912 = t1913.
    t1907 = NEW zcl_lnt_sql_named_param( i_name = t1908 i_value = t1910 i_optional = t1912 ).
    CREATE OBJECT t1907->zlnt_view_ownkeys_b0e8086400eb.
    t1907->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1914 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1914.
    IF t1907->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1907->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1914 ).
    ENDIF.
    DATA t1915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1915.
    IF t1907->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1907->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1915 ).
    ENDIF.
    CREATE OBJECT t1907->zlnt_json_ownkeys_70e5fd461788.
    t1907->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1916) = |name|.
    DATA t1917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1917.
    IF t1907->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1907->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1916 p1 = t1917 ).
    ENDIF.
    DATA(t1918) = |value|.
    DATA t1919 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1919.
    IF t1907->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1907->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1918 p1 = t1919 ).
    ENDIF.
    t1906->load( ).
    APPEND t1907 TO t1906->items.
    t1906->save( ).
    DATA(t1920) = t1904.
    t1903 = t1920.
    t1897 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1898 i_f1 = t1899 i_f2 = t1903 ).
    t1896->load( ).
    APPEND t1897 TO t1896->items.
    t1896->save( ).
    DATA(t1921) = t643.
    DATA t1922 TYPE REF TO zcl_lnt_tuple_443ddf92.
    CLEAR t1922.
    DATA(t1923) = |ipow|.
    DATA t1924 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1924.
    DATA t1925 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1925.
    DATA t1926 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1926.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1926 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1927) = |v758|.
    t1925 = t1926->get( p0 = t1927 ).
    t1924 = t1925.
    DATA t1928 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1928.
    DATA t1929 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1930 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1930.
    t1929 = t1930.
    DATA(t1931) = t1929.
    DATA t1932 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1933 TYPE string.
    DATA(t1934) = |base|.
    t1933 = t1934.
    DATA t1935 TYPE string.
    DATA(t1936) = |any|.
    t1935 = t1936.
    DATA t1937 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1938 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1938.
    t1937 = t1938.
    t1932 = NEW zcl_lnt_sql_named_param( i_name = t1933 i_value = t1935 i_optional = t1937 ).
    CREATE OBJECT t1932->zlnt_view_ownkeys_b0e8086400eb.
    t1932->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1939.
    IF t1932->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1932->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1939 ).
    ENDIF.
    DATA t1940 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1940.
    IF t1932->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1932->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1940 ).
    ENDIF.
    CREATE OBJECT t1932->zlnt_json_ownkeys_70e5fd461788.
    t1932->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1941) = |name|.
    DATA t1942 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1942.
    IF t1932->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1932->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1941 p1 = t1942 ).
    ENDIF.
    DATA(t1943) = |value|.
    DATA t1944 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1944.
    IF t1932->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1932->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1943 p1 = t1944 ).
    ENDIF.
    t1931->load( ).
    APPEND t1932 TO t1931->items.
    t1931->save( ).
    DATA(t1945) = t1929.
    DATA t1946 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1947 TYPE string.
    DATA(t1948) = |exp|.
    t1947 = t1948.
    DATA t1949 TYPE string.
    DATA(t1950) = |any|.
    t1949 = t1950.
    DATA t1951 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1952 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1952.
    t1951 = t1952.
    t1946 = NEW zcl_lnt_sql_named_param( i_name = t1947 i_value = t1949 i_optional = t1951 ).
    CREATE OBJECT t1946->zlnt_view_ownkeys_b0e8086400eb.
    t1946->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1953 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1953.
    IF t1946->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1946->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1953 ).
    ENDIF.
    DATA t1954 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1954.
    IF t1946->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1946->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1954 ).
    ENDIF.
    CREATE OBJECT t1946->zlnt_json_ownkeys_70e5fd461788.
    t1946->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1955) = |name|.
    DATA t1956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1956.
    IF t1946->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1946->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1955 p1 = t1956 ).
    ENDIF.
    DATA(t1957) = |value|.
    DATA t1958 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1958.
    IF t1946->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1946->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1957 p1 = t1958 ).
    ENDIF.
    t1945->load( ).
    APPEND t1946 TO t1945->items.
    t1945->save( ).
    DATA(t1959) = t1929.
    t1928 = t1959.
    t1922 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1923 i_f1 = t1924 i_f2 = t1928 ).
    t1921->load( ).
    APPEND t1922 TO t1921->items.
    t1921->save( ).
    DATA(t1960) = t643.
    t642 = t1960.
    zcl_lnt_sql_function_module=>sql_named_function_defs = t642.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    DATA t1961 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1961.
    DATA t1962 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1963 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1963.
    t1962 = t1963.
    DATA(t1964) = t1962.
    DATA t1965 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1965.
    DATA(t1966) = |st_new_point|.
    DATA t1967 TYPE f.
    DATA(t1968) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1967 = t1968.
    DATA t1969 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1969.
    DATA t1970 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1970.
    DATA t1971 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1971.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1971 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1972) = |v915|.
    t1970 = t1971->get( p0 = t1972 ).
    t1969 = t1970.
    t1965 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1966 i_f1 = t1967 i_f2 = t1969 ).
    t1964->load( ).
    APPEND t1965 TO t1964->items.
    t1964->save( ).
    DATA(t1973) = t1962.
    DATA t1974 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1974.
    DATA(t1975) = |st_new_pointz|.
    DATA t1976 TYPE f.
    DATA(t1977) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1976 = t1977.
    DATA t1978 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1978.
    DATA t1979 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1979.
    DATA t1980 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1980.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1980 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1981) = |v915|.
    t1979 = t1980->get( p0 = t1981 ).
    t1978 = t1979.
    t1974 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1975 i_f1 = t1976 i_f2 = t1978 ).
    t1973->load( ).
    APPEND t1974 TO t1973->items.
    t1973->save( ).
    DATA(t1982) = t1962.
    DATA t1983 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1983.
    DATA(t1984) = |st_new_pointm|.
    DATA t1985 TYPE f.
    DATA(t1986) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1985 = t1986.
    DATA t1987 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1987.
    DATA t1988 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1988.
    DATA t1989 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1989.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1989 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1990) = |v915|.
    t1988 = t1989->get( p0 = t1990 ).
    t1987 = t1988.
    t1983 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1984 i_f1 = t1985 i_f2 = t1987 ).
    t1982->load( ).
    APPEND t1983 TO t1982->items.
    t1982->save( ).
    DATA(t1991) = t1962.
    DATA t1992 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t1992.
    DATA(t1993) = |st_new_pointzm|.
    DATA t1994 TYPE f.
    DATA(t1995) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1994 = t1995.
    DATA t1996 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1996.
    DATA t1997 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1997.
    DATA t1998 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1998.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1998 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1999) = |v915|.
    t1997 = t1998->get( p0 = t1999 ).
    t1996 = t1997.
    t1992 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1993 i_f1 = t1994 i_f2 = t1996 ).
    t1991->load( ).
    APPEND t1992 TO t1991->items.
    t1991->save( ).
    DATA(t2000) = t1962.
    DATA t2001 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2001.
    DATA(t2002) = |st_new_linestring|.
    DATA t2003 TYPE f.
    DATA(t2004) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2003 = t2004.
    DATA t2005 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2005.
    DATA t2006 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2006.
    DATA t2007 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2007.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2007 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2008) = |v915|.
    t2006 = t2007->get( p0 = t2008 ).
    t2005 = t2006.
    t2001 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2002 i_f1 = t2003 i_f2 = t2005 ).
    t2000->load( ).
    APPEND t2001 TO t2000->items.
    t2000->save( ).
    DATA(t2009) = t1962.
    DATA t2010 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2010.
    DATA(t2011) = |st_new_multilinestring|.
    DATA t2012 TYPE f.
    DATA(t2013) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2012 = t2013.
    DATA t2014 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2014.
    DATA t2015 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2015.
    DATA t2016 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2016.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2016 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2017) = |v915|.
    t2015 = t2016->get( p0 = t2017 ).
    t2014 = t2015.
    t2010 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2011 i_f1 = t2012 i_f2 = t2014 ).
    t2009->load( ).
    APPEND t2010 TO t2009->items.
    t2009->save( ).
    DATA(t2018) = t1962.
    DATA t2019 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2019.
    DATA(t2020) = |st_new_polygon|.
    DATA t2021 TYPE f.
    DATA(t2022) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2021 = t2022.
    DATA t2023 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2023.
    DATA t2024 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2024.
    DATA t2025 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2025.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2025 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2026) = |v915|.
    t2024 = t2025->get( p0 = t2026 ).
    t2023 = t2024.
    t2019 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2020 i_f1 = t2021 i_f2 = t2023 ).
    t2018->load( ).
    APPEND t2019 TO t2018->items.
    t2018->save( ).
    DATA(t2027) = t1962.
    DATA t2028 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2028.
    DATA(t2029) = |st_new_multipolygon|.
    DATA t2030 TYPE f.
    DATA(t2031) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2030 = t2031.
    DATA t2032 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2032.
    DATA t2033 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2033.
    DATA t2034 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2034.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2034 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2035) = |v915|.
    t2033 = t2034->get( p0 = t2035 ).
    t2032 = t2033.
    t2028 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2029 i_f1 = t2030 i_f2 = t2032 ).
    t2027->load( ).
    APPEND t2028 TO t2027->items.
    t2027->save( ).
    DATA(t2036) = t1962.
    DATA t2037 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2037.
    DATA(t2038) = |st_new_multipoint|.
    DATA t2039 TYPE f.
    DATA(t2040) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2039 = t2040.
    DATA t2041 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2041.
    DATA t2042 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2042.
    DATA t2043 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2043.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2043 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2044) = |v915|.
    t2042 = t2043->get( p0 = t2044 ).
    t2041 = t2042.
    t2037 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2038 i_f1 = t2039 i_f2 = t2041 ).
    t2036->load( ).
    APPEND t2037 TO t2036->items.
    t2036->save( ).
    DATA(t2045) = t1962.
    DATA t2046 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2046.
    DATA(t2047) = |st_new_circularstring|.
    DATA t2048 TYPE f.
    DATA(t2049) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2048 = t2049.
    DATA t2050 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2050.
    DATA t2051 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2051.
    DATA t2052 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2052.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2052 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2053) = |v915|.
    t2051 = t2052->get( p0 = t2053 ).
    t2050 = t2051.
    t2046 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2047 i_f1 = t2048 i_f2 = t2050 ).
    t2045->load( ).
    APPEND t2046 TO t2045->items.
    t2045->save( ).
    DATA(t2054) = t1962.
    DATA t2055 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2055.
    DATA(t2056) = |st_new_geometrycollection|.
    DATA t2057 TYPE f.
    DATA(t2058) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2057 = t2058.
    DATA t2059 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2059.
    DATA t2060 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2060.
    DATA t2061 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2061.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2061 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2062) = |v915|.
    t2060 = t2061->get( p0 = t2062 ).
    t2059 = t2060.
    t2055 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2056 i_f1 = t2057 i_f2 = t2059 ).
    t2054->load( ).
    APPEND t2055 TO t2054->items.
    t2054->save( ).
    DATA(t2063) = t1962.
    DATA t2064 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2064.
    DATA(t2065) = |st_srid|.
    DATA t2066 TYPE f.
    DATA(t2067) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2066 = t2067.
    DATA t2068 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2068.
    DATA t2069 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2069.
    DATA t2070 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2070.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2070 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2071) = |v915|.
    t2069 = t2070->get( p0 = t2071 ).
    t2068 = t2069.
    t2064 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2065 i_f1 = t2066 i_f2 = t2068 ).
    t2063->load( ).
    APPEND t2064 TO t2063->items.
    t2063->save( ).
    DATA(t2072) = t1962.
    DATA t2073 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2073.
    DATA(t2074) = |st_relate|.
    DATA t2075 TYPE f.
    DATA(t2076) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2075 = t2076.
    DATA t2077 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2077.
    DATA t2078 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2078.
    DATA t2079 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2079.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2079 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2080) = |v915|.
    t2078 = t2079->get( p0 = t2080 ).
    t2077 = t2078.
    t2073 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2074 i_f1 = t2075 i_f2 = t2077 ).
    t2072->load( ).
    APPEND t2073 TO t2072->items.
    t2072->save( ).
    DATA(t2081) = t1962.
    DATA t2082 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2082.
    DATA(t2083) = |st_geomfromtext|.
    DATA t2084 TYPE f.
    DATA(t2085) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2084 = t2085.
    DATA t2086 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2086.
    DATA t2087 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2087.
    DATA t2088 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2088.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2088 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2089) = |v915|.
    t2087 = t2088->get( p0 = t2089 ).
    t2086 = t2087.
    t2082 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2083 i_f1 = t2084 i_f2 = t2086 ).
    t2081->load( ).
    APPEND t2082 TO t2081->items.
    t2081->save( ).
    DATA(t2090) = t1962.
    DATA t2091 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2091.
    DATA(t2092) = |st_geomfromwkt|.
    DATA t2093 TYPE f.
    DATA(t2094) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2093 = t2094.
    DATA t2095 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2095.
    DATA t2096 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2096.
    DATA t2097 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2097.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2097 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2098) = |v915|.
    t2096 = t2097->get( p0 = t2098 ).
    t2095 = t2096.
    t2091 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2092 i_f1 = t2093 i_f2 = t2095 ).
    t2090->load( ).
    APPEND t2091 TO t2090->items.
    t2090->save( ).
    DATA(t2099) = t1962.
    DATA t2100 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2100.
    DATA(t2101) = |st_geomfromewkt|.
    DATA t2102 TYPE f.
    DATA(t2103) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2102 = t2103.
    DATA t2104 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2104.
    DATA t2105 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2105.
    DATA t2106 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2106.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2106 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2107) = |v915|.
    t2105 = t2106->get( p0 = t2107 ).
    t2104 = t2105.
    t2100 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2101 i_f1 = t2102 i_f2 = t2104 ).
    t2099->load( ).
    APPEND t2100 TO t2099->items.
    t2099->save( ).
    DATA(t2108) = t1962.
    DATA t2109 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2109.
    DATA(t2110) = |st_geomfromwkb|.
    DATA t2111 TYPE f.
    DATA(t2112) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2111 = t2112.
    DATA t2113 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2113.
    DATA t2114 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2114.
    DATA t2115 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2115.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2115 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2116) = |v915|.
    t2114 = t2115->get( p0 = t2116 ).
    t2113 = t2114.
    t2109 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2110 i_f1 = t2111 i_f2 = t2113 ).
    t2108->load( ).
    APPEND t2109 TO t2108->items.
    t2108->save( ).
    DATA(t2117) = t1962.
    DATA t2118 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2118.
    DATA(t2119) = |st_geomfromewkb|.
    DATA t2120 TYPE f.
    DATA(t2121) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2120 = t2121.
    DATA t2122 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2122.
    DATA t2123 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2123.
    DATA t2124 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2124.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2124 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2125) = |v915|.
    t2123 = t2124->get( p0 = t2125 ).
    t2122 = t2123.
    t2118 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2119 i_f1 = t2120 i_f2 = t2122 ).
    t2117->load( ).
    APPEND t2118 TO t2117->items.
    t2117->save( ).
    DATA(t2126) = t1962.
    DATA t2127 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2127.
    DATA(t2128) = |st_geomfromgeojson|.
    DATA t2129 TYPE f.
    DATA(t2130) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2129 = t2130.
    DATA t2131 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2131.
    DATA t2132 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2132.
    DATA t2133 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2133.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2133 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2134) = |v915|.
    t2132 = t2133->get( p0 = t2134 ).
    t2131 = t2132.
    t2127 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2128 i_f1 = t2129 i_f2 = t2131 ).
    t2126->load( ).
    APPEND t2127 TO t2126->items.
    t2126->save( ).
    DATA(t2135) = t1962.
    DATA t2136 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2136.
    DATA(t2137) = |st_geomfromesrijson|.
    DATA t2138 TYPE f.
    DATA(t2139) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2138 = t2139.
    DATA t2140 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2140.
    DATA t2141 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2141.
    DATA t2142 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2142.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2142 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2143) = |v915|.
    t2141 = t2142->get( p0 = t2143 ).
    t2140 = t2141.
    t2136 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2137 i_f1 = t2138 i_f2 = t2140 ).
    t2135->load( ).
    APPEND t2136 TO t2135->items.
    t2135->save( ).
    DATA(t2144) = t1962.
    DATA t2145 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2145.
    DATA(t2146) = |st_geomfromgeohash|.
    DATA t2147 TYPE f.
    DATA(t2148) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2147 = t2148.
    DATA t2149 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2149.
    DATA t2150 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2150.
    DATA t2151 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2151.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2151 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2152) = |v915|.
    t2150 = t2151->get( p0 = t2152 ).
    t2149 = t2150.
    t2145 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2146 i_f1 = t2147 i_f2 = t2149 ).
    t2144->load( ).
    APPEND t2145 TO t2144->items.
    t2144->save( ).
    DATA(t2153) = t1962.
    DATA t2154 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2154.
    DATA(t2155) = |st_pointfromtext|.
    DATA t2156 TYPE f.
    DATA(t2157) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2156 = t2157.
    DATA t2158 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2158.
    DATA t2159 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2159.
    DATA t2160 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2160.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2160 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2161) = |v915|.
    t2159 = t2160->get( p0 = t2161 ).
    t2158 = t2159.
    t2154 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2155 i_f1 = t2156 i_f2 = t2158 ).
    t2153->load( ).
    APPEND t2154 TO t2153->items.
    t2153->save( ).
    DATA(t2162) = t1962.
    DATA t2163 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2163.
    DATA(t2164) = |st_pointfromgeohash|.
    DATA t2165 TYPE f.
    DATA(t2166) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2165 = t2166.
    DATA t2167 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2167.
    DATA t2168 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2168.
    DATA t2169 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2169.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2169 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2170) = |v915|.
    t2168 = t2169->get( p0 = t2170 ).
    t2167 = t2168.
    t2163 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2164 i_f1 = t2165 i_f2 = t2167 ).
    t2162->load( ).
    APPEND t2163 TO t2162->items.
    t2162->save( ).
    DATA(t2171) = t1962.
    DATA t2172 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2172.
    DATA(t2173) = |st_makeline|.
    DATA t2174 TYPE f.
    DATA(t2175) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2174 = t2175.
    DATA t2176 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2176.
    DATA t2177 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2177.
    DATA t2178 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2178.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2178 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2179) = |v915|.
    t2177 = t2178->get( p0 = t2179 ).
    t2176 = t2177.
    t2172 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2173 i_f1 = t2174 i_f2 = t2176 ).
    t2171->load( ).
    APPEND t2172 TO t2171->items.
    t2171->save( ).
    DATA(t2180) = t1962.
    DATA t2181 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2181.
    DATA(t2182) = |st_makepolygon|.
    DATA t2183 TYPE f.
    DATA(t2184) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2183 = t2184.
    DATA t2185 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2185.
    DATA t2186 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2186.
    DATA t2187 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2187.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2187 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2188) = |v915|.
    t2186 = t2187->get( p0 = t2188 ).
    t2185 = t2186.
    t2181 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2182 i_f1 = t2183 i_f2 = t2185 ).
    t2180->load( ).
    APPEND t2181 TO t2180->items.
    t2180->save( ).
    DATA(t2189) = t1962.
    DATA t2190 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2190.
    DATA(t2191) = |st_x|.
    DATA t2192 TYPE f.
    DATA(t2193) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2192 = t2193.
    DATA t2194 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2194.
    DATA t2195 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2195.
    DATA t2196 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2196.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2196 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2197) = |v915|.
    t2195 = t2196->get( p0 = t2197 ).
    t2194 = t2195.
    t2190 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2191 i_f1 = t2192 i_f2 = t2194 ).
    t2189->load( ).
    APPEND t2190 TO t2189->items.
    t2189->save( ).
    DATA(t2198) = t1962.
    DATA t2199 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2199.
    DATA(t2200) = |st_y|.
    DATA t2201 TYPE f.
    DATA(t2202) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2201 = t2202.
    DATA t2203 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2203.
    DATA t2204 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2204.
    DATA t2205 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2205.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2205 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2206) = |v915|.
    t2204 = t2205->get( p0 = t2206 ).
    t2203 = t2204.
    t2199 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2200 i_f1 = t2201 i_f2 = t2203 ).
    t2198->load( ).
    APPEND t2199 TO t2198->items.
    t2198->save( ).
    DATA(t2207) = t1962.
    DATA t2208 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2208.
    DATA(t2209) = |st_z|.
    DATA t2210 TYPE f.
    DATA(t2211) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2210 = t2211.
    DATA t2212 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2212.
    DATA t2213 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2213.
    DATA t2214 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2214.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2214 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2215) = |v915|.
    t2213 = t2214->get( p0 = t2215 ).
    t2212 = t2213.
    t2208 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2209 i_f1 = t2210 i_f2 = t2212 ).
    t2207->load( ).
    APPEND t2208 TO t2207->items.
    t2207->save( ).
    DATA(t2216) = t1962.
    DATA t2217 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2217.
    DATA(t2218) = |st_m|.
    DATA t2219 TYPE f.
    DATA(t2220) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2219 = t2220.
    DATA t2221 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2221.
    DATA t2222 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2222.
    DATA t2223 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2223.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2223 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2224) = |v915|.
    t2222 = t2223->get( p0 = t2224 ).
    t2221 = t2222.
    t2217 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2218 i_f1 = t2219 i_f2 = t2221 ).
    t2216->load( ).
    APPEND t2217 TO t2216->items.
    t2216->save( ).
    DATA(t2225) = t1962.
    DATA t2226 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2226.
    DATA(t2227) = |st_xmax|.
    DATA t2228 TYPE f.
    DATA(t2229) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2228 = t2229.
    DATA t2230 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2230.
    DATA t2231 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2231.
    DATA t2232 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2232.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2232 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2233) = |v915|.
    t2231 = t2232->get( p0 = t2233 ).
    t2230 = t2231.
    t2226 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2227 i_f1 = t2228 i_f2 = t2230 ).
    t2225->load( ).
    APPEND t2226 TO t2225->items.
    t2225->save( ).
    DATA(t2234) = t1962.
    DATA t2235 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2235.
    DATA(t2236) = |st_xmin|.
    DATA t2237 TYPE f.
    DATA(t2238) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2237 = t2238.
    DATA t2239 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2239.
    DATA t2240 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2240.
    DATA t2241 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2241.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2241 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2242) = |v915|.
    t2240 = t2241->get( p0 = t2242 ).
    t2239 = t2240.
    t2235 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2236 i_f1 = t2237 i_f2 = t2239 ).
    t2234->load( ).
    APPEND t2235 TO t2234->items.
    t2234->save( ).
    DATA(t2243) = t1962.
    DATA t2244 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2244.
    DATA(t2245) = |st_ymax|.
    DATA t2246 TYPE f.
    DATA(t2247) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2246 = t2247.
    DATA t2248 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2248.
    DATA t2249 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2249.
    DATA t2250 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2250 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2251) = |v915|.
    t2249 = t2250->get( p0 = t2251 ).
    t2248 = t2249.
    t2244 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2245 i_f1 = t2246 i_f2 = t2248 ).
    t2243->load( ).
    APPEND t2244 TO t2243->items.
    t2243->save( ).
    DATA(t2252) = t1962.
    DATA t2253 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2253.
    DATA(t2254) = |st_ymin|.
    DATA t2255 TYPE f.
    DATA(t2256) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2255 = t2256.
    DATA t2257 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2257.
    DATA t2258 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2258.
    DATA t2259 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2259.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2259 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2260) = |v915|.
    t2258 = t2259->get( p0 = t2260 ).
    t2257 = t2258.
    t2253 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2254 i_f1 = t2255 i_f2 = t2257 ).
    t2252->load( ).
    APPEND t2253 TO t2252->items.
    t2252->save( ).
    DATA(t2261) = t1962.
    DATA t2262 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2262.
    DATA(t2263) = |st_zmax|.
    DATA t2264 TYPE f.
    DATA(t2265) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2264 = t2265.
    DATA t2266 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2266.
    DATA t2267 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2267.
    DATA t2268 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2268.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2268 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2269) = |v915|.
    t2267 = t2268->get( p0 = t2269 ).
    t2266 = t2267.
    t2262 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2263 i_f1 = t2264 i_f2 = t2266 ).
    t2261->load( ).
    APPEND t2262 TO t2261->items.
    t2261->save( ).
    DATA(t2270) = t1962.
    DATA t2271 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2271.
    DATA(t2272) = |st_zmin|.
    DATA t2273 TYPE f.
    DATA(t2274) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2273 = t2274.
    DATA t2275 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2275.
    DATA t2276 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2276.
    DATA t2277 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2277.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2277 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2278) = |v915|.
    t2276 = t2277->get( p0 = t2278 ).
    t2275 = t2276.
    t2271 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2272 i_f1 = t2273 i_f2 = t2275 ).
    t2270->load( ).
    APPEND t2271 TO t2270->items.
    t2270->save( ).
    DATA(t2279) = t1962.
    DATA t2280 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2280.
    DATA(t2281) = |st_mmax|.
    DATA t2282 TYPE f.
    DATA(t2283) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2282 = t2283.
    DATA t2284 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2284.
    DATA t2285 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2285.
    DATA t2286 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2286.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2286 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2287) = |v915|.
    t2285 = t2286->get( p0 = t2287 ).
    t2284 = t2285.
    t2280 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2281 i_f1 = t2282 i_f2 = t2284 ).
    t2279->load( ).
    APPEND t2280 TO t2279->items.
    t2279->save( ).
    DATA(t2288) = t1962.
    DATA t2289 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2289.
    DATA(t2290) = |st_mmin|.
    DATA t2291 TYPE f.
    DATA(t2292) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2291 = t2292.
    DATA t2293 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2293.
    DATA t2294 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2294.
    DATA t2295 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2295.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2295 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2296) = |v915|.
    t2294 = t2295->get( p0 = t2296 ).
    t2293 = t2294.
    t2289 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2290 i_f1 = t2291 i_f2 = t2293 ).
    t2288->load( ).
    APPEND t2289 TO t2288->items.
    t2288->save( ).
    DATA(t2297) = t1962.
    DATA t2298 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2298.
    DATA(t2299) = |st_area|.
    DATA t2300 TYPE f.
    DATA(t2301) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2300 = t2301.
    DATA t2302 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2302.
    DATA t2303 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2303.
    DATA t2304 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2304.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2304 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2305) = |v915|.
    t2303 = t2304->get( p0 = t2305 ).
    t2302 = t2303.
    t2298 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2299 i_f1 = t2300 i_f2 = t2302 ).
    t2297->load( ).
    APPEND t2298 TO t2297->items.
    t2297->save( ).
    DATA(t2306) = t1962.
    DATA t2307 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2307.
    DATA(t2308) = |st_length|.
    DATA t2309 TYPE f.
    DATA(t2310) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2309 = t2310.
    DATA t2311 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2311.
    DATA t2312 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2312.
    DATA t2313 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2313.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2313 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2314) = |v915|.
    t2312 = t2313->get( p0 = t2314 ).
    t2311 = t2312.
    t2307 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2308 i_f1 = t2309 i_f2 = t2311 ).
    t2306->load( ).
    APPEND t2307 TO t2306->items.
    t2306->save( ).
    DATA(t2315) = t1962.
    DATA t2316 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2316.
    DATA(t2317) = |st_perimeter|.
    DATA t2318 TYPE f.
    DATA(t2319) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2318 = t2319.
    DATA t2320 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2320.
    DATA t2321 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2321.
    DATA t2322 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2322.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2322 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2323) = |v915|.
    t2321 = t2322->get( p0 = t2323 ).
    t2320 = t2321.
    t2316 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2317 i_f1 = t2318 i_f2 = t2320 ).
    t2315->load( ).
    APPEND t2316 TO t2315->items.
    t2315->save( ).
    DATA(t2324) = t1962.
    DATA t2325 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2325.
    DATA(t2326) = |st_dimension|.
    DATA t2327 TYPE f.
    DATA(t2328) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2327 = t2328.
    DATA t2329 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2329.
    DATA t2330 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2330.
    DATA t2331 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2331.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2331 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2332) = |v915|.
    t2330 = t2331->get( p0 = t2332 ).
    t2329 = t2330.
    t2325 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2326 i_f1 = t2327 i_f2 = t2329 ).
    t2324->load( ).
    APPEND t2325 TO t2324->items.
    t2324->save( ).
    DATA(t2333) = t1962.
    DATA t2334 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2334.
    DATA(t2335) = |st_coorddim|.
    DATA t2336 TYPE f.
    DATA(t2337) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2336 = t2337.
    DATA t2338 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2338.
    DATA t2339 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2339.
    DATA t2340 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2340.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2340 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2341) = |v915|.
    t2339 = t2340->get( p0 = t2341 ).
    t2338 = t2339.
    t2334 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2335 i_f1 = t2336 i_f2 = t2338 ).
    t2333->load( ).
    APPEND t2334 TO t2333->items.
    t2333->save( ).
    DATA(t2342) = t1962.
    DATA t2343 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2343.
    DATA(t2344) = |st_geometrytype|.
    DATA t2345 TYPE f.
    DATA(t2346) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2345 = t2346.
    DATA t2347 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2347.
    DATA t2348 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2348.
    DATA t2349 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2349.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2349 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2350) = |v915|.
    t2348 = t2349->get( p0 = t2350 ).
    t2347 = t2348.
    t2343 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2344 i_f1 = t2345 i_f2 = t2347 ).
    t2342->load( ).
    APPEND t2343 TO t2342->items.
    t2342->save( ).
    DATA(t2351) = t1962.
    DATA t2352 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2352.
    DATA(t2353) = |st_isempty|.
    DATA t2354 TYPE f.
    DATA(t2355) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2354 = t2355.
    DATA t2356 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2356.
    DATA t2357 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2357.
    DATA t2358 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2358.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2358 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2359) = |v915|.
    t2357 = t2358->get( p0 = t2359 ).
    t2356 = t2357.
    t2352 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2353 i_f1 = t2354 i_f2 = t2356 ).
    t2351->load( ).
    APPEND t2352 TO t2351->items.
    t2351->save( ).
    DATA(t2360) = t1962.
    DATA t2361 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2361.
    DATA(t2362) = |st_issimple|.
    DATA t2363 TYPE f.
    DATA(t2364) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2363 = t2364.
    DATA t2365 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2365.
    DATA t2366 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2366.
    DATA t2367 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2367.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2367 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2368) = |v915|.
    t2366 = t2367->get( p0 = t2368 ).
    t2365 = t2366.
    t2361 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2362 i_f1 = t2363 i_f2 = t2365 ).
    t2360->load( ).
    APPEND t2361 TO t2360->items.
    t2360->save( ).
    DATA(t2369) = t1962.
    DATA t2370 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2370.
    DATA(t2371) = |st_isclosed|.
    DATA t2372 TYPE f.
    DATA(t2373) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2372 = t2373.
    DATA t2374 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2374.
    DATA t2375 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2375.
    DATA t2376 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2376.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2376 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2377) = |v915|.
    t2375 = t2376->get( p0 = t2377 ).
    t2374 = t2375.
    t2370 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2371 i_f1 = t2372 i_f2 = t2374 ).
    t2369->load( ).
    APPEND t2370 TO t2369->items.
    t2369->save( ).
    DATA(t2378) = t1962.
    DATA t2379 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2379.
    DATA(t2380) = |st_isring|.
    DATA t2381 TYPE f.
    DATA(t2382) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2381 = t2382.
    DATA t2383 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2383.
    DATA t2384 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2384.
    DATA t2385 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2385.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2385 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2386) = |v915|.
    t2384 = t2385->get( p0 = t2386 ).
    t2383 = t2384.
    t2379 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2380 i_f1 = t2381 i_f2 = t2383 ).
    t2378->load( ).
    APPEND t2379 TO t2378->items.
    t2378->save( ).
    DATA(t2387) = t1962.
    DATA t2388 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2388.
    DATA(t2389) = |st_isvalid|.
    DATA t2390 TYPE f.
    DATA(t2391) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2390 = t2391.
    DATA t2392 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2392.
    DATA t2393 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2393.
    DATA t2394 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2394.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2394 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2395) = |v915|.
    t2393 = t2394->get( p0 = t2395 ).
    t2392 = t2393.
    t2388 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2389 i_f1 = t2390 i_f2 = t2392 ).
    t2387->load( ).
    APPEND t2388 TO t2387->items.
    t2387->save( ).
    DATA(t2396) = t1962.
    DATA t2397 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2397.
    DATA(t2398) = |st_isvalidtrajectory|.
    DATA t2399 TYPE f.
    DATA(t2400) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2399 = t2400.
    DATA t2401 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2401.
    DATA t2402 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2402.
    DATA t2403 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2403.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2403 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2404) = |v915|.
    t2402 = t2403->get( p0 = t2404 ).
    t2401 = t2402.
    t2397 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2398 i_f1 = t2399 i_f2 = t2401 ).
    t2396->load( ).
    APPEND t2397 TO t2396->items.
    t2396->save( ).
    DATA(t2405) = t1962.
    DATA t2406 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2406.
    DATA(t2407) = |st_is3d|.
    DATA t2408 TYPE f.
    DATA(t2409) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2408 = t2409.
    DATA t2410 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2410.
    DATA t2411 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2411.
    DATA t2412 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2412.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2412 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2413) = |v915|.
    t2411 = t2412->get( p0 = t2413 ).
    t2410 = t2411.
    t2406 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2407 i_f1 = t2408 i_f2 = t2410 ).
    t2405->load( ).
    APPEND t2406 TO t2405->items.
    t2405->save( ).
    DATA(t2414) = t1962.
    DATA t2415 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2415.
    DATA(t2416) = |st_ismeasured|.
    DATA t2417 TYPE f.
    DATA(t2418) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2417 = t2418.
    DATA t2419 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2419.
    DATA t2420 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2420.
    DATA t2421 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2421.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2421 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2422) = |v915|.
    t2420 = t2421->get( p0 = t2422 ).
    t2419 = t2420.
    t2415 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2416 i_f1 = t2417 i_f2 = t2419 ).
    t2414->load( ).
    APPEND t2415 TO t2414->items.
    t2414->save( ).
    DATA(t2423) = t1962.
    DATA t2424 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2424.
    DATA(t2425) = |st_invalidreason|.
    DATA t2426 TYPE f.
    DATA(t2427) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2426 = t2427.
    DATA t2428 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2428.
    DATA t2429 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2429.
    DATA t2430 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2430.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2430 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2431) = |v915|.
    t2429 = t2430->get( p0 = t2431 ).
    t2428 = t2429.
    t2424 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2425 i_f1 = t2426 i_f2 = t2428 ).
    t2423->load( ).
    APPEND t2424 TO t2423->items.
    t2423->save( ).
    DATA(t2432) = t1962.
    DATA t2433 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2433.
    DATA(t2434) = |st_numpoints|.
    DATA t2435 TYPE f.
    DATA(t2436) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2435 = t2436.
    DATA t2437 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2437.
    DATA t2438 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2438.
    DATA t2439 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2439.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2439 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2440) = |v915|.
    t2438 = t2439->get( p0 = t2440 ).
    t2437 = t2438.
    t2433 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2434 i_f1 = t2435 i_f2 = t2437 ).
    t2432->load( ).
    APPEND t2433 TO t2432->items.
    t2432->save( ).
    DATA(t2441) = t1962.
    DATA t2442 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2442.
    DATA(t2443) = |st_numgeometries|.
    DATA t2444 TYPE f.
    DATA(t2445) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2444 = t2445.
    DATA t2446 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2446.
    DATA t2447 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2447.
    DATA t2448 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2448.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2448 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2449) = |v915|.
    t2447 = t2448->get( p0 = t2449 ).
    t2446 = t2447.
    t2442 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2443 i_f1 = t2444 i_f2 = t2446 ).
    t2441->load( ).
    APPEND t2442 TO t2441->items.
    t2441->save( ).
    DATA(t2450) = t1962.
    DATA t2451 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2451.
    DATA(t2452) = |st_numinteriorring|.
    DATA t2453 TYPE f.
    DATA(t2454) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2453 = t2454.
    DATA t2455 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2455.
    DATA t2456 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2456.
    DATA t2457 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2457.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2457 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2458) = |v915|.
    t2456 = t2457->get( p0 = t2458 ).
    t2455 = t2456.
    t2451 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2452 i_f1 = t2453 i_f2 = t2455 ).
    t2450->load( ).
    APPEND t2451 TO t2450->items.
    t2450->save( ).
    DATA(t2459) = t1962.
    DATA t2460 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2460.
    DATA(t2461) = |st_numinteriorrings|.
    DATA t2462 TYPE f.
    DATA(t2463) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2462 = t2463.
    DATA t2464 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2464.
    DATA t2465 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2465.
    DATA t2466 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2466.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2466 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2467) = |v915|.
    t2465 = t2466->get( p0 = t2467 ).
    t2464 = t2465.
    t2460 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2461 i_f1 = t2462 i_f2 = t2464 ).
    t2459->load( ).
    APPEND t2460 TO t2459->items.
    t2459->save( ).
    DATA(t2468) = t1962.
    DATA t2469 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2469.
    DATA(t2470) = |st_envelope|.
    DATA t2471 TYPE f.
    DATA(t2472) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2471 = t2472.
    DATA t2473 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2473.
    DATA t2474 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2474.
    DATA t2475 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2475.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2475 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2476) = |v915|.
    t2474 = t2475->get( p0 = t2476 ).
    t2473 = t2474.
    t2469 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2470 i_f1 = t2471 i_f2 = t2473 ).
    t2468->load( ).
    APPEND t2469 TO t2468->items.
    t2468->save( ).
    DATA(t2477) = t1962.
    DATA t2478 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2478.
    DATA(t2479) = |st_boundary|.
    DATA t2480 TYPE f.
    DATA(t2481) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2480 = t2481.
    DATA t2482 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2482.
    DATA t2483 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2483.
    DATA t2484 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2484.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2484 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2485) = |v915|.
    t2483 = t2484->get( p0 = t2485 ).
    t2482 = t2483.
    t2478 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2479 i_f1 = t2480 i_f2 = t2482 ).
    t2477->load( ).
    APPEND t2478 TO t2477->items.
    t2477->save( ).
    DATA(t2486) = t1962.
    DATA t2487 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2487.
    DATA(t2488) = |st_exteriorring|.
    DATA t2489 TYPE f.
    DATA(t2490) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2489 = t2490.
    DATA t2491 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2491.
    DATA t2492 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2492.
    DATA t2493 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2493.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2493 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2494) = |v915|.
    t2492 = t2493->get( p0 = t2494 ).
    t2491 = t2492.
    t2487 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2488 i_f1 = t2489 i_f2 = t2491 ).
    t2486->load( ).
    APPEND t2487 TO t2486->items.
    t2486->save( ).
    DATA(t2495) = t1962.
    DATA t2496 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2496.
    DATA(t2497) = |st_startpoint|.
    DATA t2498 TYPE f.
    DATA(t2499) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2498 = t2499.
    DATA t2500 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2500.
    DATA t2501 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2501.
    DATA t2502 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2502.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2502 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2503) = |v915|.
    t2501 = t2502->get( p0 = t2503 ).
    t2500 = t2501.
    t2496 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2497 i_f1 = t2498 i_f2 = t2500 ).
    t2495->load( ).
    APPEND t2496 TO t2495->items.
    t2495->save( ).
    DATA(t2504) = t1962.
    DATA t2505 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2505.
    DATA(t2506) = |st_endpoint|.
    DATA t2507 TYPE f.
    DATA(t2508) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2507 = t2508.
    DATA t2509 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2509.
    DATA t2510 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2510.
    DATA t2511 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2511.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2511 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2512) = |v915|.
    t2510 = t2511->get( p0 = t2512 ).
    t2509 = t2510.
    t2505 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2506 i_f1 = t2507 i_f2 = t2509 ).
    t2504->load( ).
    APPEND t2505 TO t2504->items.
    t2504->save( ).
    DATA(t2513) = t1962.
    DATA t2514 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2514.
    DATA(t2515) = |st_centroid|.
    DATA t2516 TYPE f.
    DATA(t2517) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2516 = t2517.
    DATA t2518 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2518.
    DATA t2519 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2519.
    DATA t2520 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2520.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2520 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2521) = |v915|.
    t2519 = t2520->get( p0 = t2521 ).
    t2518 = t2519.
    t2514 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2515 i_f1 = t2516 i_f2 = t2518 ).
    t2513->load( ).
    APPEND t2514 TO t2513->items.
    t2513->save( ).
    DATA(t2522) = t1962.
    DATA t2523 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2523.
    DATA(t2524) = |st_pointonsurface|.
    DATA t2525 TYPE f.
    DATA(t2526) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2525 = t2526.
    DATA t2527 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2527.
    DATA t2528 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2528.
    DATA t2529 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2529.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2529 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2530) = |v915|.
    t2528 = t2529->get( p0 = t2530 ).
    t2527 = t2528.
    t2523 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2524 i_f1 = t2525 i_f2 = t2527 ).
    t2522->load( ).
    APPEND t2523 TO t2522->items.
    t2522->save( ).
    DATA(t2531) = t1962.
    DATA t2532 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2532.
    DATA(t2533) = |st_convexhull|.
    DATA t2534 TYPE f.
    DATA(t2535) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2534 = t2535.
    DATA t2536 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2536.
    DATA t2537 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2537.
    DATA t2538 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2538.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2538 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2539) = |v915|.
    t2537 = t2538->get( p0 = t2539 ).
    t2536 = t2537.
    t2532 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2533 i_f1 = t2534 i_f2 = t2536 ).
    t2531->load( ).
    APPEND t2532 TO t2531->items.
    t2531->save( ).
    DATA(t2540) = t1962.
    DATA t2541 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2541.
    DATA(t2542) = |st_concavehull|.
    DATA t2543 TYPE f.
    DATA(t2544) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2543 = t2544.
    DATA t2545 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2545.
    DATA t2546 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2546.
    DATA t2547 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2547.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2547 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2548) = |v915|.
    t2546 = t2547->get( p0 = t2548 ).
    t2545 = t2546.
    t2541 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2542 i_f1 = t2543 i_f2 = t2545 ).
    t2540->load( ).
    APPEND t2541 TO t2540->items.
    t2540->save( ).
    DATA(t2549) = t1962.
    DATA t2550 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2550.
    DATA(t2551) = |st_reverse|.
    DATA t2552 TYPE f.
    DATA(t2553) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2552 = t2553.
    DATA t2554 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2554.
    DATA t2555 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2555.
    DATA t2556 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2556.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2556 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2557) = |v915|.
    t2555 = t2556->get( p0 = t2557 ).
    t2554 = t2555.
    t2550 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2551 i_f1 = t2552 i_f2 = t2554 ).
    t2549->load( ).
    APPEND t2550 TO t2549->items.
    t2549->save( ).
    DATA(t2558) = t1962.
    DATA t2559 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2559.
    DATA(t2560) = |st_force2d|.
    DATA t2561 TYPE f.
    DATA(t2562) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2561 = t2562.
    DATA t2563 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2563.
    DATA t2564 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2564.
    DATA t2565 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2565.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2565 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2566) = |v915|.
    t2564 = t2565->get( p0 = t2566 ).
    t2563 = t2564.
    t2559 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2560 i_f1 = t2561 i_f2 = t2563 ).
    t2558->load( ).
    APPEND t2559 TO t2558->items.
    t2558->save( ).
    DATA(t2567) = t1962.
    DATA t2568 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2568.
    DATA(t2569) = |st_force3dz|.
    DATA t2570 TYPE f.
    DATA(t2571) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2570 = t2571.
    DATA t2572 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2572.
    DATA t2573 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2573.
    DATA t2574 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2574.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2574 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2575) = |v915|.
    t2573 = t2574->get( p0 = t2575 ).
    t2572 = t2573.
    t2568 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2569 i_f1 = t2570 i_f2 = t2572 ).
    t2567->load( ).
    APPEND t2568 TO t2567->items.
    t2567->save( ).
    DATA(t2576) = t1962.
    DATA t2577 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2577.
    DATA(t2578) = |st_force3dm|.
    DATA t2579 TYPE f.
    DATA(t2580) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2579 = t2580.
    DATA t2581 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2581.
    DATA t2582 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2582.
    DATA t2583 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2583.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2583 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2584) = |v915|.
    t2582 = t2583->get( p0 = t2584 ).
    t2581 = t2582.
    t2577 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2578 i_f1 = t2579 i_f2 = t2581 ).
    t2576->load( ).
    APPEND t2577 TO t2576->items.
    t2576->save( ).
    DATA(t2585) = t1962.
    DATA t2586 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2586.
    DATA(t2587) = |st_force4d|.
    DATA t2588 TYPE f.
    DATA(t2589) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2588 = t2589.
    DATA t2590 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2590.
    DATA t2591 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2591.
    DATA t2592 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2592.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2592 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2593) = |v915|.
    t2591 = t2592->get( p0 = t2593 ).
    t2590 = t2591.
    t2586 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2587 i_f1 = t2588 i_f2 = t2590 ).
    t2585->load( ).
    APPEND t2586 TO t2585->items.
    t2585->save( ).
    DATA(t2594) = t1962.
    DATA t2595 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2595.
    DATA(t2596) = |st_makevalid|.
    DATA t2597 TYPE f.
    DATA(t2598) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2597 = t2598.
    DATA t2599 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2599.
    DATA t2600 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2600.
    DATA t2601 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2601.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2601 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2602) = |v915|.
    t2600 = t2601->get( p0 = t2602 ).
    t2599 = t2600.
    t2595 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2596 i_f1 = t2597 i_f2 = t2599 ).
    t2594->load( ).
    APPEND t2595 TO t2594->items.
    t2594->save( ).
    DATA(t2603) = t1962.
    DATA t2604 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2604.
    DATA(t2605) = |st_geohash|.
    DATA t2606 TYPE f.
    DATA(t2607) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2606 = t2607.
    DATA t2608 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2608.
    DATA t2609 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2609.
    DATA t2610 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2610.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2610 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2611) = |v915|.
    t2609 = t2610->get( p0 = t2611 ).
    t2608 = t2609.
    t2604 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2605 i_f1 = t2606 i_f2 = t2608 ).
    t2603->load( ).
    APPEND t2604 TO t2603->items.
    t2603->save( ).
    DATA(t2612) = t1962.
    DATA t2613 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2613.
    DATA(t2614) = |st_aswkt|.
    DATA t2615 TYPE f.
    DATA(t2616) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2615 = t2616.
    DATA t2617 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2617.
    DATA t2618 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2618.
    DATA t2619 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2619.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2619 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2620) = |v915|.
    t2618 = t2619->get( p0 = t2620 ).
    t2617 = t2618.
    t2613 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2614 i_f1 = t2615 i_f2 = t2617 ).
    t2612->load( ).
    APPEND t2613 TO t2612->items.
    t2612->save( ).
    DATA(t2621) = t1962.
    DATA t2622 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2622.
    DATA(t2623) = |st_aswkb|.
    DATA t2624 TYPE f.
    DATA(t2625) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2624 = t2625.
    DATA t2626 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2626.
    DATA t2627 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2627.
    DATA t2628 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2628.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2628 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2629) = |v915|.
    t2627 = t2628->get( p0 = t2629 ).
    t2626 = t2627.
    t2622 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2623 i_f1 = t2624 i_f2 = t2626 ).
    t2621->load( ).
    APPEND t2622 TO t2621->items.
    t2621->save( ).
    DATA(t2630) = t1962.
    DATA t2631 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2631.
    DATA(t2632) = |st_asewkt|.
    DATA t2633 TYPE f.
    DATA(t2634) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2633 = t2634.
    DATA t2635 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2635.
    DATA t2636 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2636.
    DATA t2637 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2637.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2637 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2638) = |v915|.
    t2636 = t2637->get( p0 = t2638 ).
    t2635 = t2636.
    t2631 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2632 i_f1 = t2633 i_f2 = t2635 ).
    t2630->load( ).
    APPEND t2631 TO t2630->items.
    t2630->save( ).
    DATA(t2639) = t1962.
    DATA t2640 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2640.
    DATA(t2641) = |st_asewkb|.
    DATA t2642 TYPE f.
    DATA(t2643) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2642 = t2643.
    DATA t2644 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2644.
    DATA t2645 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2645.
    DATA t2646 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2646.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2646 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2647) = |v915|.
    t2645 = t2646->get( p0 = t2647 ).
    t2644 = t2645.
    t2640 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2641 i_f1 = t2642 i_f2 = t2644 ).
    t2639->load( ).
    APPEND t2640 TO t2639->items.
    t2639->save( ).
    DATA(t2648) = t1962.
    DATA t2649 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2649.
    DATA(t2650) = |st_asbinary|.
    DATA t2651 TYPE f.
    DATA(t2652) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2651 = t2652.
    DATA t2653 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2653.
    DATA t2654 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2654.
    DATA t2655 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2655.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2655 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2656) = |v915|.
    t2654 = t2655->get( p0 = t2656 ).
    t2653 = t2654.
    t2649 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2650 i_f1 = t2651 i_f2 = t2653 ).
    t2648->load( ).
    APPEND t2649 TO t2648->items.
    t2648->save( ).
    DATA(t2657) = t1962.
    DATA t2658 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2658.
    DATA(t2659) = |st_astext|.
    DATA t2660 TYPE f.
    DATA(t2661) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2660 = t2661.
    DATA t2662 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2662.
    DATA t2663 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2663.
    DATA t2664 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2664.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2664 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2665) = |v915|.
    t2663 = t2664->get( p0 = t2665 ).
    t2662 = t2663.
    t2658 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2659 i_f1 = t2660 i_f2 = t2662 ).
    t2657->load( ).
    APPEND t2658 TO t2657->items.
    t2657->save( ).
    DATA(t2666) = t1962.
    DATA t2667 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2667.
    DATA(t2668) = |st_asgeojson|.
    DATA t2669 TYPE f.
    DATA(t2670) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2669 = t2670.
    DATA t2671 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2671.
    DATA t2672 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2672.
    DATA t2673 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2673.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2673 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2674) = |v915|.
    t2672 = t2673->get( p0 = t2674 ).
    t2671 = t2672.
    t2667 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2668 i_f1 = t2669 i_f2 = t2671 ).
    t2666->load( ).
    APPEND t2667 TO t2666->items.
    t2666->save( ).
    DATA(t2675) = t1962.
    DATA t2676 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2676.
    DATA(t2677) = |st_asesrijson|.
    DATA t2678 TYPE f.
    DATA(t2679) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2678 = t2679.
    DATA t2680 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2680.
    DATA t2681 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2681.
    DATA t2682 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2682.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2682 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2683) = |v915|.
    t2681 = t2682->get( p0 = t2683 ).
    t2680 = t2681.
    t2676 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2677 i_f1 = t2678 i_f2 = t2680 ).
    t2675->load( ).
    APPEND t2676 TO t2675->items.
    t2675->save( ).
    DATA(t2684) = t1962.
    DATA t2685 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2685.
    DATA(t2686) = |st_assvg|.
    DATA t2687 TYPE f.
    DATA(t2688) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2687 = t2688.
    DATA t2689 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2689.
    DATA t2690 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2690.
    DATA t2691 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2691.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2691 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2692) = |v915|.
    t2690 = t2691->get( p0 = t2692 ).
    t2689 = t2690.
    t2685 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2686 i_f1 = t2687 i_f2 = t2689 ).
    t2684->load( ).
    APPEND t2685 TO t2684->items.
    t2684->save( ).
    DATA(t2693) = t1962.
    DATA t2694 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2694.
    DATA(t2695) = |st_distance|.
    DATA t2696 TYPE f.
    DATA(t2697) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2696 = t2697.
    DATA t2698 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2698.
    DATA t2699 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2699.
    DATA t2700 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2700.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2700 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2701) = |v915|.
    t2699 = t2700->get( p0 = t2701 ).
    t2698 = t2699.
    t2694 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2695 i_f1 = t2696 i_f2 = t2698 ).
    t2693->load( ).
    APPEND t2694 TO t2693->items.
    t2693->save( ).
    DATA(t2702) = t1962.
    DATA t2703 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2703.
    DATA(t2704) = |st_withindistance|.
    DATA t2705 TYPE f.
    DATA(t2706) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2705 = t2706.
    DATA t2707 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2707.
    DATA t2708 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2708.
    DATA t2709 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2709.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2709 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2710) = |v915|.
    t2708 = t2709->get( p0 = t2710 ).
    t2707 = t2708.
    t2703 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2704 i_f1 = t2705 i_f2 = t2707 ).
    t2702->load( ).
    APPEND t2703 TO t2702->items.
    t2702->save( ).
    DATA(t2711) = t1962.
    DATA t2712 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2712.
    DATA(t2713) = |st_contains|.
    DATA t2714 TYPE f.
    DATA(t2715) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2714 = t2715.
    DATA t2716 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2716.
    DATA t2717 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2717.
    DATA t2718 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2718.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2718 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2719) = |v915|.
    t2717 = t2718->get( p0 = t2719 ).
    t2716 = t2717.
    t2712 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2713 i_f1 = t2714 i_f2 = t2716 ).
    t2711->load( ).
    APPEND t2712 TO t2711->items.
    t2711->save( ).
    DATA(t2720) = t1962.
    DATA t2721 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2721.
    DATA(t2722) = |st_covers|.
    DATA t2723 TYPE f.
    DATA(t2724) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2723 = t2724.
    DATA t2725 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2725.
    DATA t2726 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2726.
    DATA t2727 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2727.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2727 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2728) = |v915|.
    t2726 = t2727->get( p0 = t2728 ).
    t2725 = t2726.
    t2721 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2722 i_f1 = t2723 i_f2 = t2725 ).
    t2720->load( ).
    APPEND t2721 TO t2720->items.
    t2720->save( ).
    DATA(t2729) = t1962.
    DATA t2730 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2730.
    DATA(t2731) = |st_coveredby|.
    DATA t2732 TYPE f.
    DATA(t2733) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2732 = t2733.
    DATA t2734 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2734.
    DATA t2735 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2735.
    DATA t2736 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2736.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2736 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2737) = |v915|.
    t2735 = t2736->get( p0 = t2737 ).
    t2734 = t2735.
    t2730 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2731 i_f1 = t2732 i_f2 = t2734 ).
    t2729->load( ).
    APPEND t2730 TO t2729->items.
    t2729->save( ).
    DATA(t2738) = t1962.
    DATA t2739 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2739.
    DATA(t2740) = |st_crosses|.
    DATA t2741 TYPE f.
    DATA(t2742) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2741 = t2742.
    DATA t2743 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2743.
    DATA t2744 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2744.
    DATA t2745 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2745.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2745 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2746) = |v915|.
    t2744 = t2745->get( p0 = t2746 ).
    t2743 = t2744.
    t2739 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2740 i_f1 = t2741 i_f2 = t2743 ).
    t2738->load( ).
    APPEND t2739 TO t2738->items.
    t2738->save( ).
    DATA(t2747) = t1962.
    DATA t2748 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2748.
    DATA(t2749) = |st_disjoint|.
    DATA t2750 TYPE f.
    DATA(t2751) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2750 = t2751.
    DATA t2752 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2752.
    DATA t2753 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2753.
    DATA t2754 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2754.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2754 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2755) = |v915|.
    t2753 = t2754->get( p0 = t2755 ).
    t2752 = t2753.
    t2748 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2749 i_f1 = t2750 i_f2 = t2752 ).
    t2747->load( ).
    APPEND t2748 TO t2747->items.
    t2747->save( ).
    DATA(t2756) = t1962.
    DATA t2757 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2757.
    DATA(t2758) = |st_equals|.
    DATA t2759 TYPE f.
    DATA(t2760) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2759 = t2760.
    DATA t2761 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2761.
    DATA t2762 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2762.
    DATA t2763 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2763.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2763 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2764) = |v915|.
    t2762 = t2763->get( p0 = t2764 ).
    t2761 = t2762.
    t2757 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2758 i_f1 = t2759 i_f2 = t2761 ).
    t2756->load( ).
    APPEND t2757 TO t2756->items.
    t2756->save( ).
    DATA(t2765) = t1962.
    DATA t2766 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2766.
    DATA(t2767) = |st_orderingequals|.
    DATA t2768 TYPE f.
    DATA(t2769) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2768 = t2769.
    DATA t2770 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2770.
    DATA t2771 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2771.
    DATA t2772 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2772.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2772 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2773) = |v915|.
    t2771 = t2772->get( p0 = t2773 ).
    t2770 = t2771.
    t2766 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2767 i_f1 = t2768 i_f2 = t2770 ).
    t2765->load( ).
    APPEND t2766 TO t2765->items.
    t2765->save( ).
    DATA(t2774) = t1962.
    DATA t2775 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2775.
    DATA(t2776) = |st_intersects|.
    DATA t2777 TYPE f.
    DATA(t2778) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2777 = t2778.
    DATA t2779 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2779.
    DATA t2780 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2780.
    DATA t2781 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2781.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2781 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2782) = |v915|.
    t2780 = t2781->get( p0 = t2782 ).
    t2779 = t2780.
    t2775 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2776 i_f1 = t2777 i_f2 = t2779 ).
    t2774->load( ).
    APPEND t2775 TO t2774->items.
    t2774->save( ).
    DATA(t2783) = t1962.
    DATA t2784 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2784.
    DATA(t2785) = |st_intersectsfilter|.
    DATA t2786 TYPE f.
    DATA(t2787) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2786 = t2787.
    DATA t2788 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2788.
    DATA t2789 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2789.
    DATA t2790 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2790.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2790 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2791) = |v915|.
    t2789 = t2790->get( p0 = t2791 ).
    t2788 = t2789.
    t2784 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2785 i_f1 = t2786 i_f2 = t2788 ).
    t2783->load( ).
    APPEND t2784 TO t2783->items.
    t2783->save( ).
    DATA(t2792) = t1962.
    DATA t2793 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2793.
    DATA(t2794) = |st_intersectsrect|.
    DATA t2795 TYPE f.
    DATA(t2796) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2795 = t2796.
    DATA t2797 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2797.
    DATA t2798 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2798.
    DATA t2799 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2799.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2799 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2800) = |v915|.
    t2798 = t2799->get( p0 = t2800 ).
    t2797 = t2798.
    t2793 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2794 i_f1 = t2795 i_f2 = t2797 ).
    t2792->load( ).
    APPEND t2793 TO t2792->items.
    t2792->save( ).
    DATA(t2801) = t1962.
    DATA t2802 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2802.
    DATA(t2803) = |st_intersectsrectplanar|.
    DATA t2804 TYPE f.
    DATA(t2805) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2804 = t2805.
    DATA t2806 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2806.
    DATA t2807 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2807.
    DATA t2808 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2808.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2808 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2809) = |v915|.
    t2807 = t2808->get( p0 = t2809 ).
    t2806 = t2807.
    t2802 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2803 i_f1 = t2804 i_f2 = t2806 ).
    t2801->load( ).
    APPEND t2802 TO t2801->items.
    t2801->save( ).
    DATA(t2810) = t1962.
    DATA t2811 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2811.
    DATA(t2812) = |st_overlaps|.
    DATA t2813 TYPE f.
    DATA(t2814) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2813 = t2814.
    DATA t2815 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2815.
    DATA t2816 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2816.
    DATA t2817 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2817.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2817 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2818) = |v915|.
    t2816 = t2817->get( p0 = t2818 ).
    t2815 = t2816.
    t2811 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2812 i_f1 = t2813 i_f2 = t2815 ).
    t2810->load( ).
    APPEND t2811 TO t2810->items.
    t2810->save( ).
    DATA(t2819) = t1962.
    DATA t2820 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2820.
    DATA(t2821) = |st_touches|.
    DATA t2822 TYPE f.
    DATA(t2823) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2822 = t2823.
    DATA t2824 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2824.
    DATA t2825 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2825.
    DATA t2826 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2826.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2826 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2827) = |v915|.
    t2825 = t2826->get( p0 = t2827 ).
    t2824 = t2825.
    t2820 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2821 i_f1 = t2822 i_f2 = t2824 ).
    t2819->load( ).
    APPEND t2820 TO t2819->items.
    t2819->save( ).
    DATA(t2828) = t1962.
    DATA t2829 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2829.
    DATA(t2830) = |st_within|.
    DATA t2831 TYPE f.
    DATA(t2832) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2831 = t2832.
    DATA t2833 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2833.
    DATA t2834 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2834.
    DATA t2835 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2835.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2835 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2836) = |v915|.
    t2834 = t2835->get( p0 = t2836 ).
    t2833 = t2834.
    t2829 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2830 i_f1 = t2831 i_f2 = t2833 ).
    t2828->load( ).
    APPEND t2829 TO t2828->items.
    t2828->save( ).
    DATA(t2837) = t1962.
    DATA t2838 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2838.
    DATA(t2839) = |st_intersection|.
    DATA t2840 TYPE f.
    DATA(t2841) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2840 = t2841.
    DATA t2842 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2842.
    DATA t2843 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2843.
    DATA t2844 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2844.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2844 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2845) = |v915|.
    t2843 = t2844->get( p0 = t2845 ).
    t2842 = t2843.
    t2838 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2839 i_f1 = t2840 i_f2 = t2842 ).
    t2837->load( ).
    APPEND t2838 TO t2837->items.
    t2837->save( ).
    DATA(t2846) = t1962.
    DATA t2847 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2847.
    DATA(t2848) = |st_union|.
    DATA t2849 TYPE f.
    DATA(t2850) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2849 = t2850.
    DATA t2851 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2851.
    DATA t2852 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2852.
    DATA t2853 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2853.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2853 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2854) = |v915|.
    t2852 = t2853->get( p0 = t2854 ).
    t2851 = t2852.
    t2847 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2848 i_f1 = t2849 i_f2 = t2851 ).
    t2846->load( ).
    APPEND t2847 TO t2846->items.
    t2846->save( ).
    DATA(t2855) = t1962.
    DATA t2856 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2856.
    DATA(t2857) = |st_difference|.
    DATA t2858 TYPE f.
    DATA(t2859) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2858 = t2859.
    DATA t2860 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2860.
    DATA t2861 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2861.
    DATA t2862 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2862.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2862 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2863) = |v915|.
    t2861 = t2862->get( p0 = t2863 ).
    t2860 = t2861.
    t2856 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2857 i_f1 = t2858 i_f2 = t2860 ).
    t2855->load( ).
    APPEND t2856 TO t2855->items.
    t2855->save( ).
    DATA(t2864) = t1962.
    DATA t2865 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2865.
    DATA(t2866) = |st_symdifference|.
    DATA t2867 TYPE f.
    DATA(t2868) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2867 = t2868.
    DATA t2869 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2869.
    DATA t2870 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2870.
    DATA t2871 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2871.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2871 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2872) = |v915|.
    t2870 = t2871->get( p0 = t2872 ).
    t2869 = t2870.
    t2865 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2866 i_f1 = t2867 i_f2 = t2869 ).
    t2864->load( ).
    APPEND t2865 TO t2864->items.
    t2864->save( ).
    DATA(t2873) = t1962.
    DATA t2874 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2874.
    DATA(t2875) = |st_collect|.
    DATA t2876 TYPE f.
    DATA(t2877) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2876 = t2877.
    DATA t2878 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2878.
    DATA t2879 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2879.
    DATA t2880 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2880.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2880 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2881) = |v915|.
    t2879 = t2880->get( p0 = t2881 ).
    t2878 = t2879.
    t2874 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2875 i_f1 = t2876 i_f2 = t2878 ).
    t2873->load( ).
    APPEND t2874 TO t2873->items.
    t2873->save( ).
    DATA(t2882) = t1962.
    DATA t2883 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2883.
    DATA(t2884) = |st_buffer|.
    DATA t2885 TYPE f.
    DATA(t2886) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2885 = t2886.
    DATA t2887 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2887.
    DATA t2888 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2888.
    DATA t2889 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2889.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2889 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2890) = |v915|.
    t2888 = t2889->get( p0 = t2890 ).
    t2887 = t2888.
    t2883 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2884 i_f1 = t2885 i_f2 = t2887 ).
    t2882->load( ).
    APPEND t2883 TO t2882->items.
    t2882->save( ).
    DATA(t2891) = t1962.
    DATA t2892 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2892.
    DATA(t2893) = |st_transform|.
    DATA t2894 TYPE f.
    DATA(t2895) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2894 = t2895.
    DATA t2896 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2896.
    DATA t2897 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2897.
    DATA t2898 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2898.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2898 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2899) = |v915|.
    t2897 = t2898->get( p0 = t2899 ).
    t2896 = t2897.
    t2892 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2893 i_f1 = t2894 i_f2 = t2896 ).
    t2891->load( ).
    APPEND t2892 TO t2891->items.
    t2891->save( ).
    DATA(t2900) = t1962.
    DATA t2901 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2901.
    DATA(t2902) = |st_rotate|.
    DATA t2903 TYPE f.
    DATA(t2904) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2903 = t2904.
    DATA t2905 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2905.
    DATA t2906 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2906.
    DATA t2907 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2907.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2907 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2908) = |v915|.
    t2906 = t2907->get( p0 = t2908 ).
    t2905 = t2906.
    t2901 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2902 i_f1 = t2903 i_f2 = t2905 ).
    t2900->load( ).
    APPEND t2901 TO t2900->items.
    t2900->save( ).
    DATA(t2909) = t1962.
    DATA t2910 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2910.
    DATA(t2911) = |st_scale|.
    DATA t2912 TYPE f.
    DATA(t2913) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2912 = t2913.
    DATA t2914 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2914.
    DATA t2915 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2915.
    DATA t2916 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2916.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2916 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2917) = |v915|.
    t2915 = t2916->get( p0 = t2917 ).
    t2914 = t2915.
    t2910 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2911 i_f1 = t2912 i_f2 = t2914 ).
    t2909->load( ).
    APPEND t2910 TO t2909->items.
    t2909->save( ).
    DATA(t2918) = t1962.
    DATA t2919 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2919.
    DATA(t2920) = |st_translate|.
    DATA t2921 TYPE f.
    DATA(t2922) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2921 = t2922.
    DATA t2923 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2923.
    DATA t2924 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2924.
    DATA t2925 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2925.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2925 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2926) = |v915|.
    t2924 = t2925->get( p0 = t2926 ).
    t2923 = t2924.
    t2919 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2920 i_f1 = t2921 i_f2 = t2923 ).
    t2918->load( ).
    APPEND t2919 TO t2918->items.
    t2918->save( ).
    DATA(t2927) = t1962.
    DATA t2928 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2928.
    DATA(t2929) = |st_translate3d|.
    DATA t2930 TYPE f.
    DATA(t2931) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2930 = t2931.
    DATA t2932 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2932.
    DATA t2933 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2933.
    DATA t2934 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2934.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2934 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2935) = |v915|.
    t2933 = t2934->get( p0 = t2935 ).
    t2932 = t2933.
    t2928 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2929 i_f1 = t2930 i_f2 = t2932 ).
    t2927->load( ).
    APPEND t2928 TO t2927->items.
    t2927->save( ).
    DATA(t2936) = t1962.
    DATA t2937 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2937.
    DATA(t2938) = |st_simplify|.
    DATA t2939 TYPE f.
    DATA(t2940) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2939 = t2940.
    DATA t2941 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2941.
    DATA t2942 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2942.
    DATA t2943 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2943.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2943 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2944) = |v915|.
    t2942 = t2943->get( p0 = t2944 ).
    t2941 = t2942.
    t2937 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2938 i_f1 = t2939 i_f2 = t2941 ).
    t2936->load( ).
    APPEND t2937 TO t2936->items.
    t2936->save( ).
    DATA(t2945) = t1962.
    DATA t2946 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2946.
    DATA(t2947) = |st_snaptogrid|.
    DATA t2948 TYPE f.
    DATA(t2949) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2948 = t2949.
    DATA t2950 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2950.
    DATA t2951 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2951.
    DATA t2952 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2952.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2952 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2953) = |v915|.
    t2951 = t2952->get( p0 = t2953 ).
    t2950 = t2951.
    t2946 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2947 i_f1 = t2948 i_f2 = t2950 ).
    t2945->load( ).
    APPEND t2946 TO t2945->items.
    t2945->save( ).
    DATA(t2954) = t1962.
    DATA t2955 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2955.
    DATA(t2956) = |st_addmeasure|.
    DATA t2957 TYPE f.
    DATA(t2958) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2957 = t2958.
    DATA t2959 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2959.
    DATA t2960 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2960.
    DATA t2961 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2961.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2961 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2962) = |v915|.
    t2960 = t2961->get( p0 = t2962 ).
    t2959 = t2960.
    t2955 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2956 i_f1 = t2957 i_f2 = t2959 ).
    t2954->load( ).
    APPEND t2955 TO t2954->items.
    t2954->save( ).
    DATA(t2963) = t1962.
    DATA t2964 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2964.
    DATA(t2965) = |st_addpoint|.
    DATA t2966 TYPE f.
    DATA(t2967) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2966 = t2967.
    DATA t2968 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2968.
    DATA t2969 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2969.
    DATA t2970 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2970.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2970 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2971) = |v915|.
    t2969 = t2970->get( p0 = t2971 ).
    t2968 = t2969.
    t2964 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2965 i_f1 = t2966 i_f2 = t2968 ).
    t2963->load( ).
    APPEND t2964 TO t2963->items.
    t2963->save( ).
    DATA(t2972) = t1962.
    DATA t2973 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2973.
    DATA(t2974) = |st_removepoint|.
    DATA t2975 TYPE f.
    DATA(t2976) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2975 = t2976.
    DATA t2977 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2977.
    DATA t2978 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2978.
    DATA t2979 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2979.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2979 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2980) = |v915|.
    t2978 = t2979->get( p0 = t2980 ).
    t2977 = t2978.
    t2973 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2974 i_f1 = t2975 i_f2 = t2977 ).
    t2972->load( ).
    APPEND t2973 TO t2972->items.
    t2972->save( ).
    DATA(t2981) = t1962.
    DATA t2982 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2982.
    DATA(t2983) = |st_pointn|.
    DATA t2984 TYPE f.
    DATA(t2985) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2984 = t2985.
    DATA t2986 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2986.
    DATA t2987 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2987.
    DATA t2988 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2988.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2988 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2989) = |v915|.
    t2987 = t2988->get( p0 = t2989 ).
    t2986 = t2987.
    t2982 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2983 i_f1 = t2984 i_f2 = t2986 ).
    t2981->load( ).
    APPEND t2982 TO t2981->items.
    t2981->save( ).
    DATA(t2990) = t1962.
    DATA t2991 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t2991.
    DATA(t2992) = |st_geometryn|.
    DATA t2993 TYPE f.
    DATA(t2994) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2993 = t2994.
    DATA t2995 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2995.
    DATA t2996 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2996.
    DATA t2997 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2997.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2997 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2998) = |v915|.
    t2996 = t2997->get( p0 = t2998 ).
    t2995 = t2996.
    t2991 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2992 i_f1 = t2993 i_f2 = t2995 ).
    t2990->load( ).
    APPEND t2991 TO t2990->items.
    t2990->save( ).
    DATA(t2999) = t1962.
    DATA t3000 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3000.
    DATA(t3001) = |st_interiorringn|.
    DATA t3002 TYPE f.
    DATA(t3003) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3002 = t3003.
    DATA t3004 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3004.
    DATA t3005 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3005.
    DATA t3006 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3006.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3006 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3007) = |v915|.
    t3005 = t3006->get( p0 = t3007 ).
    t3004 = t3005.
    t3000 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3001 i_f1 = t3002 i_f2 = t3004 ).
    t2999->load( ).
    APPEND t3000 TO t2999->items.
    t2999->save( ).
    DATA(t3008) = t1962.
    DATA t3009 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3009.
    DATA(t3010) = |st_lineinterpolatepoint|.
    DATA t3011 TYPE f.
    DATA(t3012) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3011 = t3012.
    DATA t3013 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3013.
    DATA t3014 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3014.
    DATA t3015 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3015.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3015 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3016) = |v915|.
    t3014 = t3015->get( p0 = t3016 ).
    t3013 = t3014.
    t3009 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3010 i_f1 = t3011 i_f2 = t3013 ).
    t3008->load( ).
    APPEND t3009 TO t3008->items.
    t3008->save( ).
    DATA(t3017) = t1962.
    DATA t3018 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3018.
    DATA(t3019) = |st_linelocatepoint|.
    DATA t3020 TYPE f.
    DATA(t3021) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3020 = t3021.
    DATA t3022 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3022.
    DATA t3023 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3023.
    DATA t3024 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3024.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3024 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3025) = |v915|.
    t3023 = t3024->get( p0 = t3025 ).
    t3022 = t3023.
    t3018 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3019 i_f1 = t3020 i_f2 = t3022 ).
    t3017->load( ).
    APPEND t3018 TO t3017->items.
    t3017->save( ).
    DATA(t3026) = t1962.
    DATA t3027 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3027.
    DATA(t3028) = |st_linesubstring|.
    DATA t3029 TYPE f.
    DATA(t3030) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3029 = t3030.
    DATA t3031 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3031.
    DATA t3032 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3032.
    DATA t3033 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3033.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3033 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3034) = |v915|.
    t3032 = t3033->get( p0 = t3034 ).
    t3031 = t3032.
    t3027 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3028 i_f1 = t3029 i_f2 = t3031 ).
    t3026->load( ).
    APPEND t3027 TO t3026->items.
    t3026->save( ).
    DATA(t3035) = t1962.
    DATA t3036 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3036.
    DATA(t3037) = |st_locatealong|.
    DATA t3038 TYPE f.
    DATA(t3039) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3038 = t3039.
    DATA t3040 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3040.
    DATA t3041 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3041.
    DATA t3042 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3042.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3042 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3043) = |v915|.
    t3041 = t3042->get( p0 = t3043 ).
    t3040 = t3041.
    t3036 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3037 i_f1 = t3038 i_f2 = t3040 ).
    t3035->load( ).
    APPEND t3036 TO t3035->items.
    t3035->save( ).
    DATA(t3044) = t1962.
    DATA t3045 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3045.
    DATA(t3046) = |st_locatebetween|.
    DATA t3047 TYPE f.
    DATA(t3048) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3047 = t3048.
    DATA t3049 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3049.
    DATA t3050 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3050.
    DATA t3051 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3051.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3051 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3052) = |v915|.
    t3050 = t3051->get( p0 = t3052 ).
    t3049 = t3050.
    t3045 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3046 i_f1 = t3047 i_f2 = t3049 ).
    t3044->load( ).
    APPEND t3045 TO t3044->items.
    t3044->save( ).
    DATA(t3053) = t1962.
    DATA t3054 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3054.
    DATA(t3055) = |st_alphashape|.
    DATA t3056 TYPE f.
    DATA(t3057) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3056 = t3057.
    DATA t3058 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3058.
    DATA t3059 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3059.
    DATA t3060 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3060.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3060 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3061) = |v915|.
    t3059 = t3060->get( p0 = t3061 ).
    t3058 = t3059.
    t3054 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3055 i_f1 = t3056 i_f2 = t3058 ).
    t3053->load( ).
    APPEND t3054 TO t3053->items.
    t3053->save( ).
    DATA(t3062) = t1962.
    DATA t3063 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3063.
    DATA(t3064) = |st_alphashapearea|.
    DATA t3065 TYPE f.
    DATA(t3066) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3065 = t3066.
    DATA t3067 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3067.
    DATA t3068 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3068.
    DATA t3069 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3069.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3069 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3070) = |v915|.
    t3068 = t3069->get( p0 = t3070 ).
    t3067 = t3068.
    t3063 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3064 i_f1 = t3065 i_f2 = t3067 ).
    t3062->load( ).
    APPEND t3063 TO t3062->items.
    t3062->save( ).
    DATA(t3071) = t1962.
    DATA t3072 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3072.
    DATA(t3073) = |st_alphashapeedge|.
    DATA t3074 TYPE f.
    DATA(t3075) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3074 = t3075.
    DATA t3076 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3076.
    DATA t3077 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3077.
    DATA t3078 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3078.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3078 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3079) = |v915|.
    t3077 = t3078->get( p0 = t3079 ).
    t3076 = t3077.
    t3072 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3073 i_f1 = t3074 i_f2 = t3076 ).
    t3071->load( ).
    APPEND t3072 TO t3071->items.
    t3071->save( ).
    DATA(t3080) = t1962.
    DATA t3081 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3081.
    DATA(t3082) = |st_closestpointofapproach|.
    DATA t3083 TYPE f.
    DATA(t3084) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3083 = t3084.
    DATA t3085 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3085.
    DATA t3086 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3086.
    DATA t3087 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3087.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3087 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3088) = |v915|.
    t3086 = t3087->get( p0 = t3088 ).
    t3085 = t3086.
    t3081 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3082 i_f1 = t3083 i_f2 = t3085 ).
    t3080->load( ).
    APPEND t3081 TO t3080->items.
    t3080->save( ).
    DATA(t3089) = t1962.
    DATA t3090 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3090.
    DATA(t3091) = |st_frechetdistance|.
    DATA t3092 TYPE f.
    DATA(t3093) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3092 = t3093.
    DATA t3094 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3094.
    DATA t3095 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3095.
    DATA t3096 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3096.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3096 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3097) = |v915|.
    t3095 = t3096->get( p0 = t3097 ).
    t3094 = t3095.
    t3090 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3091 i_f1 = t3092 i_f2 = t3094 ).
    t3089->load( ).
    APPEND t3090 TO t3089->items.
    t3089->save( ).
    DATA(t3098) = t1962.
    DATA t3099 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3099.
    DATA(t3100) = |st_hausdorffdistance|.
    DATA t3101 TYPE f.
    DATA(t3102) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3101 = t3102.
    DATA t3103 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3103.
    DATA t3104 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3104.
    DATA t3105 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3105.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3105 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3106) = |v915|.
    t3104 = t3105->get( p0 = t3106 ).
    t3103 = t3104.
    t3099 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3100 i_f1 = t3101 i_f2 = t3103 ).
    t3098->load( ).
    APPEND t3099 TO t3098->items.
    t3098->save( ).
    DATA(t3107) = t1962.
    DATA t3108 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3108.
    DATA(t3109) = |st_3dlength|.
    DATA t3110 TYPE f.
    DATA(t3111) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3110 = t3111.
    DATA t3112 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3112.
    DATA t3113 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3113.
    DATA t3114 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3114.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3114 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3115) = |v915|.
    t3113 = t3114->get( p0 = t3115 ).
    t3112 = t3113.
    t3108 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3109 i_f1 = t3110 i_f2 = t3112 ).
    t3107->load( ).
    APPEND t3108 TO t3107->items.
    t3107->save( ).
    DATA(t3116) = t1962.
    DATA t3117 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3117.
    DATA(t3118) = |st_asmvtgeom|.
    DATA t3119 TYPE f.
    DATA(t3120) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3119 = t3120.
    DATA t3121 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3121.
    DATA t3122 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3122.
    DATA t3123 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3123.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3123 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3124) = |v915|.
    t3122 = t3123->get( p0 = t3124 ).
    t3121 = t3122.
    t3117 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3118 i_f1 = t3119 i_f2 = t3121 ).
    t3116->load( ).
    APPEND t3117 TO t3116->items.
    t3116->save( ).
    DATA(t3125) = t1962.
    t1961 = t3125.
    zcl_lnt_sql_function_module=>sql_spatial_function_defs = t1961.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    DATA t3126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3126.
    DATA t3127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3128.
    t3127 = t3128.
    DATA(t3129) = t3127.
    DATA t3130 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3130.
    DATA(t3131) = |st_assvgaggr|.
    DATA t3132 TYPE f.
    DATA(t3133) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3132 = t3133.
    DATA t3134 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3134.
    DATA t3135 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3135.
    DATA t3136 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3136.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3136 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3137) = |v915|.
    t3135 = t3136->get( p0 = t3137 ).
    t3134 = t3135.
    t3130 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3131 i_f1 = t3132 i_f2 = t3134 ).
    t3129->load( ).
    APPEND t3130 TO t3129->items.
    t3129->save( ).
    DATA(t3138) = t3127.
    DATA t3139 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3139.
    DATA(t3140) = |st_collectaggr|.
    DATA t3141 TYPE f.
    DATA(t3142) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3141 = t3142.
    DATA t3143 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3143.
    DATA t3144 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3144.
    DATA t3145 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3145.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3145 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3146) = |v915|.
    t3144 = t3145->get( p0 = t3146 ).
    t3143 = t3144.
    t3139 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3140 i_f1 = t3141 i_f2 = t3143 ).
    t3138->load( ).
    APPEND t3139 TO t3138->items.
    t3138->save( ).
    DATA(t3147) = t3127.
    DATA t3148 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3148.
    DATA(t3149) = |st_concavehullaggr|.
    DATA t3150 TYPE f.
    DATA(t3151) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3150 = t3151.
    DATA t3152 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3152.
    DATA t3153 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3153.
    DATA t3154 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3154.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3154 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3155) = |v915|.
    t3153 = t3154->get( p0 = t3155 ).
    t3152 = t3153.
    t3148 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3149 i_f1 = t3150 i_f2 = t3152 ).
    t3147->load( ).
    APPEND t3148 TO t3147->items.
    t3147->save( ).
    DATA(t3156) = t3127.
    DATA t3157 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3157.
    DATA(t3158) = |st_convexhullaggr|.
    DATA t3159 TYPE f.
    DATA(t3160) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3159 = t3160.
    DATA t3161 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3161.
    DATA t3162 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3162.
    DATA t3163 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3163.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3163 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3164) = |v915|.
    t3162 = t3163->get( p0 = t3164 ).
    t3161 = t3162.
    t3157 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3158 i_f1 = t3159 i_f2 = t3161 ).
    t3156->load( ).
    APPEND t3157 TO t3156->items.
    t3156->save( ).
    DATA(t3165) = t3127.
    DATA t3166 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3166.
    DATA(t3167) = |st_envelopeaggr|.
    DATA t3168 TYPE f.
    DATA(t3169) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3168 = t3169.
    DATA t3170 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3170.
    DATA t3171 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3171.
    DATA t3172 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3172.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3172 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3173) = |v915|.
    t3171 = t3172->get( p0 = t3173 ).
    t3170 = t3171.
    t3166 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3167 i_f1 = t3168 i_f2 = t3170 ).
    t3165->load( ).
    APPEND t3166 TO t3165->items.
    t3165->save( ).
    DATA(t3174) = t3127.
    DATA t3175 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3175.
    DATA(t3176) = |st_intersectionaggr|.
    DATA t3177 TYPE f.
    DATA(t3178) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3177 = t3178.
    DATA t3179 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3179.
    DATA t3180 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3180.
    DATA t3181 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3181.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3181 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3182) = |v915|.
    t3180 = t3181->get( p0 = t3182 ).
    t3179 = t3180.
    t3175 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3176 i_f1 = t3177 i_f2 = t3179 ).
    t3174->load( ).
    APPEND t3175 TO t3174->items.
    t3174->save( ).
    DATA(t3183) = t3127.
    DATA t3184 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3184.
    DATA(t3185) = |st_unionaggr|.
    DATA t3186 TYPE f.
    DATA(t3187) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3186 = t3187.
    DATA t3188 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3188.
    DATA t3189 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3189.
    DATA t3190 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3190.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3190 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3191) = |v915|.
    t3189 = t3190->get( p0 = t3191 ).
    t3188 = t3189.
    t3184 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3185 i_f1 = t3186 i_f2 = t3188 ).
    t3183->load( ).
    APPEND t3184 TO t3183->items.
    t3183->save( ).
    DATA(t3192) = t3127.
    DATA t3193 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3193.
    DATA(t3194) = |st_alphashapeaggr|.
    DATA t3195 TYPE f.
    DATA(t3196) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3195 = t3196.
    DATA t3197 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3197.
    DATA t3198 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3198.
    DATA t3199 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3199.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3199 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3200) = |v915|.
    t3198 = t3199->get( p0 = t3200 ).
    t3197 = t3198.
    t3193 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3194 i_f1 = t3195 i_f2 = t3197 ).
    t3192->load( ).
    APPEND t3193 TO t3192->items.
    t3192->save( ).
    DATA(t3201) = t3127.
    DATA t3202 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3202.
    DATA(t3203) = |st_alphashapeareaaggr|.
    DATA t3204 TYPE f.
    DATA(t3205) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3204 = t3205.
    DATA t3206 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3206.
    DATA t3207 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3207.
    DATA t3208 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3208.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3208 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3209) = |v915|.
    t3207 = t3208->get( p0 = t3209 ).
    t3206 = t3207.
    t3202 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3203 i_f1 = t3204 i_f2 = t3206 ).
    t3201->load( ).
    APPEND t3202 TO t3201->items.
    t3201->save( ).
    DATA(t3210) = t3127.
    DATA t3211 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    CLEAR t3211.
    DATA(t3212) = |st_alphashapeedgeaggr|.
    DATA t3213 TYPE f.
    DATA(t3214) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3213 = t3214.
    DATA t3215 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3215.
    DATA t3216 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3216.
    DATA t3217 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3217.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3217 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3218) = |v915|.
    t3216 = t3217->get( p0 = t3218 ).
    t3215 = t3216.
    t3211 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3212 i_f1 = t3213 i_f2 = t3215 ).
    t3210->load( ).
    APPEND t3211 TO t3210->items.
    t3210->save( ).
    DATA(t3219) = t3127.
    t3126 = t3219.
    zcl_lnt_sql_function_module=>sql_spatial_aggregate_defs = t3126.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1940_1729a77eaee5.
  ENDMETHOD.
ENDCLASS.
