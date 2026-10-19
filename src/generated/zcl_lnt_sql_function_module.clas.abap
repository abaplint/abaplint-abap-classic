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
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t5 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t6) = |abs|.
    DATA(t7) = CONV f( 1 ).
    DATA t8 TYPE REF TO zcl_lnt_abap_release.
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    DATA t10 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t10 = zcl_lnt_version_module=>release_b8cd.
    DATA(t11) = |v740sp05|.
    t9 = t10->get( p0 = t11 ).
    t8 = t9.
    t5 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t6 i_f1 = t7 i_f2 = t8 ).
    t2->load( ).
    APPEND t5 TO t2->items.
    t2->save( ).
    DATA t13 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t14) = |ceil|.
    DATA(t15) = CONV f( 1 ).
    DATA t16 TYPE REF TO zcl_lnt_abap_release.
    DATA t17 TYPE REF TO zcl_lnt_abap_release.
    DATA t18 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t18 = zcl_lnt_version_module=>release_b8cd.
    DATA(t19) = |v740sp05|.
    t17 = t18->get( p0 = t19 ).
    t16 = t17.
    t13 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t14 i_f1 = t15 i_f2 = t16 ).
    t2->load( ).
    APPEND t13 TO t2->items.
    t2->save( ).
    DATA t21 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t22) = |floor|.
    DATA(t23) = CONV f( 1 ).
    DATA t24 TYPE REF TO zcl_lnt_abap_release.
    DATA t25 TYPE REF TO zcl_lnt_abap_release.
    DATA t26 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t26 = zcl_lnt_version_module=>release_b8cd.
    DATA(t27) = |v740sp05|.
    t25 = t26->get( p0 = t27 ).
    t24 = t25.
    t21 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t22 i_f1 = t23 i_f2 = t24 ).
    t2->load( ).
    APPEND t21 TO t2->items.
    t2->save( ).
    DATA t29 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t30) = |div|.
    DATA(t31) = CONV f( 2 ).
    DATA t32 TYPE REF TO zcl_lnt_abap_release.
    DATA t33 TYPE REF TO zcl_lnt_abap_release.
    DATA t34 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t34 = zcl_lnt_version_module=>release_b8cd.
    DATA(t35) = |v740sp05|.
    t33 = t34->get( p0 = t35 ).
    t32 = t33.
    t29 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t30 i_f1 = t31 i_f2 = t32 ).
    t2->load( ).
    APPEND t29 TO t2->items.
    t2->save( ).
    DATA t37 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t38) = |mod|.
    DATA(t39) = CONV f( 2 ).
    DATA t40 TYPE REF TO zcl_lnt_abap_release.
    DATA t41 TYPE REF TO zcl_lnt_abap_release.
    DATA t42 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t42 = zcl_lnt_version_module=>release_b8cd.
    DATA(t43) = |v740sp05|.
    t41 = t42->get( p0 = t43 ).
    t40 = t41.
    t37 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t38 i_f1 = t39 i_f2 = t40 ).
    t2->load( ).
    APPEND t37 TO t2->items.
    t2->save( ).
    DATA t45 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t46) = |coalesce|.
    DATA t47 TYPE f.
    DATA(t48) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t47 = t48.
    DATA t49 TYPE REF TO zcl_lnt_abap_release.
    DATA t50 TYPE REF TO zcl_lnt_abap_release.
    DATA t51 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t51 = zcl_lnt_version_module=>release_b8cd.
    DATA(t52) = |v740sp05|.
    t50 = t51->get( p0 = t52 ).
    t49 = t50.
    t45 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t46 i_f1 = t47 i_f2 = t49 ).
    t2->load( ).
    APPEND t45 TO t2->items.
    t2->save( ).
    DATA t54 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t55) = |concat|.
    DATA(t56) = CONV f( 2 ).
    DATA t57 TYPE REF TO zcl_lnt_abap_release.
    DATA t58 TYPE REF TO zcl_lnt_abap_release.
    DATA t59 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t59 = zcl_lnt_version_module=>release_b8cd.
    DATA(t60) = |v750|.
    t58 = t59->get( p0 = t60 ).
    t57 = t58.
    t54 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t55 i_f1 = t56 i_f2 = t57 ).
    t2->load( ).
    APPEND t54 TO t2->items.
    t2->save( ).
    DATA t62 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t63) = |length|.
    DATA(t64) = CONV f( 1 ).
    DATA t65 TYPE REF TO zcl_lnt_abap_release.
    DATA t66 TYPE REF TO zcl_lnt_abap_release.
    DATA t67 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t67 = zcl_lnt_version_module=>release_b8cd.
    DATA(t68) = |v750|.
    t66 = t67->get( p0 = t68 ).
    t65 = t66.
    t62 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t63 i_f1 = t64 i_f2 = t65 ).
    t2->load( ).
    APPEND t62 TO t2->items.
    t2->save( ).
    DATA t70 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t71) = |ltrim|.
    DATA(t72) = CONV f( 2 ).
    DATA t73 TYPE REF TO zcl_lnt_abap_release.
    DATA t74 TYPE REF TO zcl_lnt_abap_release.
    DATA t75 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t75 = zcl_lnt_version_module=>release_b8cd.
    DATA(t76) = |v750|.
    t74 = t75->get( p0 = t76 ).
    t73 = t74.
    t70 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t71 i_f1 = t72 i_f2 = t73 ).
    t2->load( ).
    APPEND t70 TO t2->items.
    t2->save( ).
    DATA t78 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t79) = |rtrim|.
    DATA(t80) = CONV f( 2 ).
    DATA t81 TYPE REF TO zcl_lnt_abap_release.
    DATA t82 TYPE REF TO zcl_lnt_abap_release.
    DATA t83 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t83 = zcl_lnt_version_module=>release_b8cd.
    DATA(t84) = |v750|.
    t82 = t83->get( p0 = t84 ).
    t81 = t82.
    t78 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t79 i_f1 = t80 i_f2 = t81 ).
    t2->load( ).
    APPEND t78 TO t2->items.
    t2->save( ).
    DATA t86 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t87) = |right|.
    DATA(t88) = CONV f( 2 ).
    DATA t89 TYPE REF TO zcl_lnt_abap_release.
    DATA t90 TYPE REF TO zcl_lnt_abap_release.
    DATA t91 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t91 = zcl_lnt_version_module=>release_b8cd.
    DATA(t92) = |v750|.
    t90 = t91->get( p0 = t92 ).
    t89 = t90.
    t86 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t87 i_f1 = t88 i_f2 = t89 ).
    t2->load( ).
    APPEND t86 TO t2->items.
    t2->save( ).
    DATA t94 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t95) = |replace|.
    DATA(t96) = CONV f( 3 ).
    DATA t97 TYPE REF TO zcl_lnt_abap_release.
    DATA t98 TYPE REF TO zcl_lnt_abap_release.
    DATA t99 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t99 = zcl_lnt_version_module=>release_b8cd.
    DATA(t100) = |v750|.
    t98 = t99->get( p0 = t100 ).
    t97 = t98.
    t94 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t95 i_f1 = t96 i_f2 = t97 ).
    t2->load( ).
    APPEND t94 TO t2->items.
    t2->save( ).
    DATA t102 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t103) = |round|.
    DATA(t104) = CONV f( 2 ).
    DATA t105 TYPE REF TO zcl_lnt_abap_release.
    DATA t106 TYPE REF TO zcl_lnt_abap_release.
    DATA t107 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t107 = zcl_lnt_version_module=>release_b8cd.
    DATA(t108) = |v750|.
    t106 = t107->get( p0 = t108 ).
    t105 = t106.
    t102 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t103 i_f1 = t104 i_f2 = t105 ).
    t2->load( ).
    APPEND t102 TO t2->items.
    t2->save( ).
    DATA t110 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t111) = |substring|.
    DATA(t112) = CONV f( 3 ).
    DATA t113 TYPE REF TO zcl_lnt_abap_release.
    DATA t114 TYPE REF TO zcl_lnt_abap_release.
    DATA t115 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t115 = zcl_lnt_version_module=>release_b8cd.
    DATA(t116) = |v750|.
    t114 = t115->get( p0 = t116 ).
    t113 = t114.
    t110 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t111 i_f1 = t112 i_f2 = t113 ).
    t2->load( ).
    APPEND t110 TO t2->items.
    t2->save( ).
    DATA t118 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t119) = |lpad|.
    DATA(t120) = CONV f( 3 ).
    DATA t121 TYPE REF TO zcl_lnt_abap_release.
    DATA t122 TYPE REF TO zcl_lnt_abap_release.
    DATA t123 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t123 = zcl_lnt_version_module=>release_b8cd.
    DATA(t124) = |v750|.
    t122 = t123->get( p0 = t124 ).
    t121 = t122.
    t118 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t119 i_f1 = t120 i_f2 = t121 ).
    t2->load( ).
    APPEND t118 TO t2->items.
    t2->save( ).
    DATA t126 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t127) = |instr|.
    DATA(t128) = CONV f( 2 ).
    DATA t129 TYPE REF TO zcl_lnt_abap_release.
    DATA t130 TYPE REF TO zcl_lnt_abap_release.
    DATA t131 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t131 = zcl_lnt_version_module=>release_b8cd.
    DATA(t132) = |v750|.
    t130 = t131->get( p0 = t132 ).
    t129 = t130.
    t126 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t127 i_f1 = t128 i_f2 = t129 ).
    t2->load( ).
    APPEND t126 TO t2->items.
    t2->save( ).
    DATA t134 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t135) = |concat_with_space|.
    DATA(t136) = CONV f( 3 ).
    DATA t137 TYPE REF TO zcl_lnt_abap_release.
    DATA t138 TYPE REF TO zcl_lnt_abap_release.
    DATA t139 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t139 = zcl_lnt_version_module=>release_b8cd.
    DATA(t140) = |v751|.
    t138 = t139->get( p0 = t140 ).
    t137 = t138.
    t134 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t135 i_f1 = t136 i_f2 = t137 ).
    t2->load( ).
    APPEND t134 TO t2->items.
    t2->save( ).
    DATA t142 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t143) = |rpad|.
    DATA(t144) = CONV f( 3 ).
    DATA t145 TYPE REF TO zcl_lnt_abap_release.
    DATA t146 TYPE REF TO zcl_lnt_abap_release.
    DATA t147 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t147 = zcl_lnt_version_module=>release_b8cd.
    DATA(t148) = |v751|.
    t146 = t147->get( p0 = t148 ).
    t145 = t146.
    t142 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t143 i_f1 = t144 i_f2 = t145 ).
    t2->load( ).
    APPEND t142 TO t2->items.
    t2->save( ).
    DATA t150 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t151) = |left|.
    DATA(t152) = CONV f( 2 ).
    DATA t153 TYPE REF TO zcl_lnt_abap_release.
    DATA t154 TYPE REF TO zcl_lnt_abap_release.
    DATA t155 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t155 = zcl_lnt_version_module=>release_b8cd.
    DATA(t156) = |v751|.
    t154 = t155->get( p0 = t156 ).
    t153 = t154.
    t150 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t151 i_f1 = t152 i_f2 = t153 ).
    t2->load( ).
    APPEND t150 TO t2->items.
    t2->save( ).
    DATA t158 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t159) = |lower|.
    DATA(t160) = CONV f( 1 ).
    DATA t161 TYPE REF TO zcl_lnt_abap_release.
    DATA t162 TYPE REF TO zcl_lnt_abap_release.
    DATA t163 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t163 = zcl_lnt_version_module=>release_b8cd.
    DATA(t164) = |v751|.
    t162 = t163->get( p0 = t164 ).
    t161 = t162.
    t158 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t159 i_f1 = t160 i_f2 = t161 ).
    t2->load( ).
    APPEND t158 TO t2->items.
    t2->save( ).
    DATA t166 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t167) = |upper|.
    DATA(t168) = CONV f( 1 ).
    DATA t169 TYPE REF TO zcl_lnt_abap_release.
    DATA t170 TYPE REF TO zcl_lnt_abap_release.
    DATA t171 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t171 = zcl_lnt_version_module=>release_b8cd.
    DATA(t172) = |v751|.
    t170 = t171->get( p0 = t172 ).
    t169 = t170.
    t166 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t167 i_f1 = t168 i_f2 = t169 ).
    t2->load( ).
    APPEND t166 TO t2->items.
    t2->save( ).
    DATA t174 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t175) = |division|.
    DATA(t176) = CONV f( 3 ).
    DATA t177 TYPE REF TO zcl_lnt_abap_release.
    DATA t178 TYPE REF TO zcl_lnt_abap_release.
    DATA t179 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t179 = zcl_lnt_version_module=>release_b8cd.
    DATA(t180) = |v751|.
    t178 = t179->get( p0 = t180 ).
    t177 = t178.
    t174 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t175 i_f1 = t176 i_f2 = t177 ).
    t2->load( ).
    APPEND t174 TO t2->items.
    t2->save( ).
    DATA t182 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t183) = |bintohex|.
    DATA(t184) = CONV f( 1 ).
    DATA t185 TYPE REF TO zcl_lnt_abap_release.
    DATA t186 TYPE REF TO zcl_lnt_abap_release.
    DATA t187 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t187 = zcl_lnt_version_module=>release_b8cd.
    DATA(t188) = |v752|.
    t186 = t187->get( p0 = t188 ).
    t185 = t186.
    t182 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t183 i_f1 = t184 i_f2 = t185 ).
    t2->load( ).
    APPEND t182 TO t2->items.
    t2->save( ).
    DATA t190 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t191) = |hextobin|.
    DATA(t192) = CONV f( 1 ).
    DATA t193 TYPE REF TO zcl_lnt_abap_release.
    DATA t194 TYPE REF TO zcl_lnt_abap_release.
    DATA t195 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t195 = zcl_lnt_version_module=>release_b8cd.
    DATA(t196) = |v752|.
    t194 = t195->get( p0 = t196 ).
    t193 = t194.
    t190 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t191 i_f1 = t192 i_f2 = t193 ).
    t2->load( ).
    APPEND t190 TO t2->items.
    t2->save( ).
    DATA t198 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t199) = |dats_is_valid|.
    DATA(t200) = CONV f( 1 ).
    DATA t201 TYPE REF TO zcl_lnt_abap_release.
    DATA t202 TYPE REF TO zcl_lnt_abap_release.
    DATA t203 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t203 = zcl_lnt_version_module=>release_b8cd.
    DATA(t204) = |v754|.
    t202 = t203->get( p0 = t204 ).
    t201 = t202.
    t198 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t199 i_f1 = t200 i_f2 = t201 ).
    t2->load( ).
    APPEND t198 TO t2->items.
    t2->save( ).
    DATA t206 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t207) = |dats_days_between|.
    DATA(t208) = CONV f( 2 ).
    DATA t209 TYPE REF TO zcl_lnt_abap_release.
    DATA t210 TYPE REF TO zcl_lnt_abap_release.
    DATA t211 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t211 = zcl_lnt_version_module=>release_b8cd.
    DATA(t212) = |v754|.
    t210 = t211->get( p0 = t212 ).
    t209 = t210.
    t206 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t207 i_f1 = t208 i_f2 = t209 ).
    t2->load( ).
    APPEND t206 TO t2->items.
    t2->save( ).
    DATA t214 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t215) = |dats_add_days|.
    DATA(t216) = CONV f( 2 ).
    DATA t217 TYPE REF TO zcl_lnt_abap_release.
    DATA t218 TYPE REF TO zcl_lnt_abap_release.
    DATA t219 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t219 = zcl_lnt_version_module=>release_b8cd.
    DATA(t220) = |v754|.
    t218 = t219->get( p0 = t220 ).
    t217 = t218.
    t214 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t215 i_f1 = t216 i_f2 = t217 ).
    t2->load( ).
    APPEND t214 TO t2->items.
    t2->save( ).
    DATA t222 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t223) = |dats_add_months|.
    DATA(t224) = CONV f( 2 ).
    DATA t225 TYPE REF TO zcl_lnt_abap_release.
    DATA t226 TYPE REF TO zcl_lnt_abap_release.
    DATA t227 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t227 = zcl_lnt_version_module=>release_b8cd.
    DATA(t228) = |v754|.
    t226 = t227->get( p0 = t228 ).
    t225 = t226.
    t222 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t223 i_f1 = t224 i_f2 = t225 ).
    t2->load( ).
    APPEND t222 TO t2->items.
    t2->save( ).
    DATA t230 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t231) = |uuid|.
    DATA(t232) = CONV f( 0 ).
    DATA t233 TYPE REF TO zcl_lnt_abap_release.
    DATA t234 TYPE REF TO zcl_lnt_abap_release.
    DATA t235 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t235 = zcl_lnt_version_module=>release_b8cd.
    DATA(t236) = |v754|.
    t234 = t235->get( p0 = t236 ).
    t233 = t234.
    t230 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t231 i_f1 = t232 i_f2 = t233 ).
    t2->load( ).
    APPEND t230 TO t2->items.
    t2->save( ).
    DATA t238 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t239) = |utcl_current|.
    DATA(t240) = CONV f( 0 ).
    DATA t241 TYPE REF TO zcl_lnt_abap_release.
    DATA t242 TYPE REF TO zcl_lnt_abap_release.
    DATA t243 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t243 = zcl_lnt_version_module=>release_b8cd.
    DATA(t244) = |v754|.
    t242 = t243->get( p0 = t244 ).
    t241 = t242.
    t238 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t239 i_f1 = t240 i_f2 = t241 ).
    t2->load( ).
    APPEND t238 TO t2->items.
    t2->save( ).
    DATA t246 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t247) = |tstmp_current_utctimestamp|.
    DATA(t248) = CONV f( 0 ).
    DATA t249 TYPE REF TO zcl_lnt_abap_release.
    DATA t250 TYPE REF TO zcl_lnt_abap_release.
    DATA t251 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t251 = zcl_lnt_version_module=>release_b8cd.
    DATA(t252) = |v757|.
    t250 = t251->get( p0 = t252 ).
    t249 = t250.
    t246 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t247 i_f1 = t248 i_f2 = t249 ).
    t2->load( ).
    APPEND t246 TO t2->items.
    t2->save( ).
    DATA t254 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t255) = |tstmp_is_valid|.
    DATA(t256) = CONV f( 1 ).
    DATA t257 TYPE REF TO zcl_lnt_abap_release.
    DATA t258 TYPE REF TO zcl_lnt_abap_release.
    DATA t259 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t259 = zcl_lnt_version_module=>release_b8cd.
    DATA(t260) = |v757|.
    t258 = t259->get( p0 = t260 ).
    t257 = t258.
    t254 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t255 i_f1 = t256 i_f2 = t257 ).
    t2->load( ).
    APPEND t254 TO t2->items.
    t2->save( ).
    DATA t262 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t263) = |tims_is_valid|.
    DATA(t264) = CONV f( 1 ).
    DATA t265 TYPE REF TO zcl_lnt_abap_release.
    DATA t266 TYPE REF TO zcl_lnt_abap_release.
    DATA t267 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t267 = zcl_lnt_version_module=>release_b8cd.
    DATA(t268) = |v757|.
    t266 = t267->get( p0 = t268 ).
    t265 = t266.
    t262 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t263 i_f1 = t264 i_f2 = t265 ).
    t2->load( ).
    APPEND t262 TO t2->items.
    t2->save( ).
    DATA t270 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t271) = |utcl_add_seconds|.
    DATA(t272) = CONV f( 2 ).
    DATA t273 TYPE REF TO zcl_lnt_abap_release.
    DATA t274 TYPE REF TO zcl_lnt_abap_release.
    DATA t275 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t275 = zcl_lnt_version_module=>release_b8cd.
    DATA(t276) = |v757|.
    t274 = t275->get( p0 = t276 ).
    t273 = t274.
    t270 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t271 i_f1 = t272 i_f2 = t273 ).
    t2->load( ).
    APPEND t270 TO t2->items.
    t2->save( ).
    DATA t278 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t279) = |utcl_seconds_between|.
    DATA(t280) = CONV f( 2 ).
    DATA t281 TYPE REF TO zcl_lnt_abap_release.
    DATA t282 TYPE REF TO zcl_lnt_abap_release.
    DATA t283 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t283 = zcl_lnt_version_module=>release_b8cd.
    DATA(t284) = |v757|.
    t282 = t283->get( p0 = t284 ).
    t281 = t282.
    t278 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t279 i_f1 = t280 i_f2 = t281 ).
    t2->load( ).
    APPEND t278 TO t2->items.
    t2->save( ).
    DATA t286 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t287) = |datn_days_between|.
    DATA(t288) = CONV f( 2 ).
    DATA t289 TYPE REF TO zcl_lnt_abap_release.
    DATA t290 TYPE REF TO zcl_lnt_abap_release.
    DATA t291 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t291 = zcl_lnt_version_module=>release_b8cd.
    DATA(t292) = |v757|.
    t290 = t291->get( p0 = t292 ).
    t289 = t290.
    t286 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t287 i_f1 = t288 i_f2 = t289 ).
    t2->load( ).
    APPEND t286 TO t2->items.
    t2->save( ).
    DATA t294 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t295) = |datn_add_days|.
    DATA(t296) = CONV f( 2 ).
    DATA t297 TYPE REF TO zcl_lnt_abap_release.
    DATA t298 TYPE REF TO zcl_lnt_abap_release.
    DATA t299 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t299 = zcl_lnt_version_module=>release_b8cd.
    DATA(t300) = |v757|.
    t298 = t299->get( p0 = t300 ).
    t297 = t298.
    t294 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t295 i_f1 = t296 i_f2 = t297 ).
    t2->load( ).
    APPEND t294 TO t2->items.
    t2->save( ).
    DATA t302 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t303) = |datn_add_months|.
    DATA(t304) = CONV f( 2 ).
    DATA t305 TYPE REF TO zcl_lnt_abap_release.
    DATA t306 TYPE REF TO zcl_lnt_abap_release.
    DATA t307 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t307 = zcl_lnt_version_module=>release_b8cd.
    DATA(t308) = |v757|.
    t306 = t307->get( p0 = t308 ).
    t305 = t306.
    t302 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t303 i_f1 = t304 i_f2 = t305 ).
    t2->load( ).
    APPEND t302 TO t2->items.
    t2->save( ).
    DATA t310 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t311) = |as_geo_json|.
    DATA(t312) = CONV f( 1 ).
    DATA t313 TYPE REF TO zcl_lnt_abap_release.
    DATA t314 TYPE REF TO zcl_lnt_abap_release.
    DATA t315 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t315 = zcl_lnt_version_module=>release_b8cd.
    DATA(t316) = |v757|.
    t314 = t315->get( p0 = t316 ).
    t313 = t314.
    t310 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t311 i_f1 = t312 i_f2 = t313 ).
    t2->load( ).
    APPEND t310 TO t2->items.
    t2->save( ).
    DATA t318 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t319) = |allow_precision_loss|.
    DATA(t320) = CONV f( 1 ).
    DATA t321 TYPE REF TO zcl_lnt_abap_release.
    DATA t322 TYPE REF TO zcl_lnt_abap_release.
    DATA t323 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t323 = zcl_lnt_version_module=>release_b8cd.
    DATA(t324) = |v757|.
    t322 = t323->get( p0 = t324 ).
    t321 = t322.
    t318 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t319 i_f1 = t320 i_f2 = t321 ).
    t2->load( ).
    APPEND t318 TO t2->items.
    t2->save( ).
    DATA t326 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t327) = |to_clob|.
    DATA(t328) = CONV f( 1 ).
    DATA t329 TYPE REF TO zcl_lnt_abap_release.
    DATA t330 TYPE REF TO zcl_lnt_abap_release.
    DATA t331 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t331 = zcl_lnt_version_module=>release_b8cd.
    DATA(t332) = |v757|.
    t330 = t331->get( p0 = t332 ).
    t329 = t330.
    t326 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t327 i_f1 = t328 i_f2 = t329 ).
    t2->load( ).
    APPEND t326 TO t2->items.
    t2->save( ).
    DATA t334 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t335) = |to_blob|.
    DATA(t336) = CONV f( 1 ).
    DATA t337 TYPE REF TO zcl_lnt_abap_release.
    DATA t338 TYPE REF TO zcl_lnt_abap_release.
    DATA t339 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t339 = zcl_lnt_version_module=>release_b8cd.
    DATA(t340) = |v757|.
    t338 = t339->get( p0 = t340 ).
    t337 = t338.
    t334 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t335 i_f1 = t336 i_f2 = t337 ).
    t2->load( ).
    APPEND t334 TO t2->items.
    t2->save( ).
    DATA t342 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t343) = |grouping|.
    DATA(t344) = CONV f( 1 ).
    DATA t345 TYPE REF TO zcl_lnt_abap_release.
    DATA t346 TYPE REF TO zcl_lnt_abap_release.
    DATA t347 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t347 = zcl_lnt_version_module=>release_b8cd.
    DATA(t348) = |v757|.
    t346 = t347->get( p0 = t348 ).
    t345 = t346.
    t342 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t343 i_f1 = t344 i_f2 = t345 ).
    t2->load( ).
    APPEND t342 TO t2->items.
    t2->save( ).
    DATA t350 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t351) = |extract_year|.
    DATA(t352) = CONV f( 1 ).
    DATA t353 TYPE REF TO zcl_lnt_abap_release.
    DATA t354 TYPE REF TO zcl_lnt_abap_release.
    DATA t355 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t355 = zcl_lnt_version_module=>release_b8cd.
    DATA(t356) = |v758|.
    t354 = t355->get( p0 = t356 ).
    t353 = t354.
    t350 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t351 i_f1 = t352 i_f2 = t353 ).
    t2->load( ).
    APPEND t350 TO t2->items.
    t2->save( ).
    DATA t358 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t359) = |extract_month|.
    DATA(t360) = CONV f( 1 ).
    DATA t361 TYPE REF TO zcl_lnt_abap_release.
    DATA t362 TYPE REF TO zcl_lnt_abap_release.
    DATA t363 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t363 = zcl_lnt_version_module=>release_b8cd.
    DATA(t364) = |v758|.
    t362 = t363->get( p0 = t364 ).
    t361 = t362.
    t358 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t359 i_f1 = t360 i_f2 = t361 ).
    t2->load( ).
    APPEND t358 TO t2->items.
    t2->save( ).
    DATA t366 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t367) = |extract_day|.
    DATA(t368) = CONV f( 1 ).
    DATA t369 TYPE REF TO zcl_lnt_abap_release.
    DATA t370 TYPE REF TO zcl_lnt_abap_release.
    DATA t371 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t371 = zcl_lnt_version_module=>release_b8cd.
    DATA(t372) = |v758|.
    t370 = t371->get( p0 = t372 ).
    t369 = t370.
    t366 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t367 i_f1 = t368 i_f2 = t369 ).
    t2->load( ).
    APPEND t366 TO t2->items.
    t2->save( ).
    DATA t374 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t375) = |extract_hour|.
    DATA(t376) = CONV f( 1 ).
    DATA t377 TYPE REF TO zcl_lnt_abap_release.
    DATA t378 TYPE REF TO zcl_lnt_abap_release.
    DATA t379 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t379 = zcl_lnt_version_module=>release_b8cd.
    DATA(t380) = |v758|.
    t378 = t379->get( p0 = t380 ).
    t377 = t378.
    t374 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t375 i_f1 = t376 i_f2 = t377 ).
    t2->load( ).
    APPEND t374 TO t2->items.
    t2->save( ).
    DATA t382 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t383) = |extract_minute|.
    DATA(t384) = CONV f( 1 ).
    DATA t385 TYPE REF TO zcl_lnt_abap_release.
    DATA t386 TYPE REF TO zcl_lnt_abap_release.
    DATA t387 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t387 = zcl_lnt_version_module=>release_b8cd.
    DATA(t388) = |v758|.
    t386 = t387->get( p0 = t388 ).
    t385 = t386.
    t382 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t383 i_f1 = t384 i_f2 = t385 ).
    t2->load( ).
    APPEND t382 TO t2->items.
    t2->save( ).
    DATA t390 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t391) = |extract_second|.
    DATA(t392) = CONV f( 1 ).
    DATA t393 TYPE REF TO zcl_lnt_abap_release.
    DATA t394 TYPE REF TO zcl_lnt_abap_release.
    DATA t395 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t395 = zcl_lnt_version_module=>release_b8cd.
    DATA(t396) = |v758|.
    t394 = t395->get( p0 = t396 ).
    t393 = t394.
    t390 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t391 i_f1 = t392 i_f2 = t393 ).
    t2->load( ).
    APPEND t390 TO t2->items.
    t2->save( ).
    DATA t398 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t399) = |days_between|.
    DATA(t400) = CONV f( 2 ).
    DATA t401 TYPE REF TO zcl_lnt_abap_release.
    DATA t402 TYPE REF TO zcl_lnt_abap_release.
    DATA t403 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t403 = zcl_lnt_version_module=>release_b8cd.
    DATA(t404) = |v758|.
    t402 = t403->get( p0 = t404 ).
    t401 = t402.
    t398 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t399 i_f1 = t400 i_f2 = t401 ).
    t2->load( ).
    APPEND t398 TO t2->items.
    t2->save( ).
    DATA t406 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t407) = |add_days|.
    DATA(t408) = CONV f( 2 ).
    DATA t409 TYPE REF TO zcl_lnt_abap_release.
    DATA t410 TYPE REF TO zcl_lnt_abap_release.
    DATA t411 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t411 = zcl_lnt_version_module=>release_b8cd.
    DATA(t412) = |v758|.
    t410 = t411->get( p0 = t412 ).
    t409 = t410.
    t406 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t407 i_f1 = t408 i_f2 = t409 ).
    t2->load( ).
    APPEND t406 TO t2->items.
    t2->save( ).
    DATA t414 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t415) = |add_months|.
    DATA(t416) = CONV f( 2 ).
    DATA t417 TYPE REF TO zcl_lnt_abap_release.
    DATA t418 TYPE REF TO zcl_lnt_abap_release.
    DATA t419 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t419 = zcl_lnt_version_module=>release_b8cd.
    DATA(t420) = |v758|.
    t418 = t419->get( p0 = t420 ).
    t417 = t418.
    t414 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t415 i_f1 = t416 i_f2 = t417 ).
    t2->load( ).
    APPEND t414 TO t2->items.
    t2->save( ).
    DATA t422 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t423) = |monthname|.
    DATA(t424) = CONV f( 1 ).
    DATA t425 TYPE REF TO zcl_lnt_abap_release.
    DATA t426 TYPE REF TO zcl_lnt_abap_release.
    DATA t427 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t427 = zcl_lnt_version_module=>release_b8cd.
    DATA(t428) = |v758|.
    t426 = t427->get( p0 = t428 ).
    t425 = t426.
    t422 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t423 i_f1 = t424 i_f2 = t425 ).
    t2->load( ).
    APPEND t422 TO t2->items.
    t2->save( ).
    DATA t430 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t431) = |dayname|.
    DATA(t432) = CONV f( 1 ).
    DATA t433 TYPE REF TO zcl_lnt_abap_release.
    DATA t434 TYPE REF TO zcl_lnt_abap_release.
    DATA t435 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t435 = zcl_lnt_version_module=>release_b8cd.
    DATA(t436) = |v758|.
    t434 = t435->get( p0 = t436 ).
    t433 = t434.
    t430 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t431 i_f1 = t432 i_f2 = t433 ).
    t2->load( ).
    APPEND t430 TO t2->items.
    t2->save( ).
    DATA t438 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t439) = |initcap|.
    DATA(t440) = CONV f( 1 ).
    DATA t441 TYPE REF TO zcl_lnt_abap_release.
    DATA t442 TYPE REF TO zcl_lnt_abap_release.
    DATA t443 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t443 = zcl_lnt_version_module=>release_b8cd.
    DATA(t444) = |v758|.
    t442 = t443->get( p0 = t444 ).
    t441 = t442.
    t438 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t439 i_f1 = t440 i_f2 = t441 ).
    t2->load( ).
    APPEND t438 TO t2->items.
    t2->save( ).
    DATA t446 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t447) = |is_valid|.
    DATA(t448) = CONV f( 1 ).
    DATA t449 TYPE REF TO zcl_lnt_abap_release.
    DATA t450 TYPE REF TO zcl_lnt_abap_release.
    DATA t451 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t451 = zcl_lnt_version_module=>release_b8cd.
    DATA(t452) = |v758|.
    t450 = t451->get( p0 = t452 ).
    t449 = t450.
    t446 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t447 i_f1 = t448 i_f2 = t449 ).
    t2->load( ).
    APPEND t446 TO t2->items.
    t2->save( ).
    DATA t454 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t455) = |weekday|.
    DATA(t456) = CONV f( 1 ).
    DATA t457 TYPE REF TO zcl_lnt_abap_release.
    DATA t458 TYPE REF TO zcl_lnt_abap_release.
    DATA t459 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t459 = zcl_lnt_version_module=>release_b8cd.
    DATA(t460) = |v758|.
    t458 = t459->get( p0 = t460 ).
    t457 = t458.
    t454 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t455 i_f1 = t456 i_f2 = t457 ).
    t2->load( ).
    APPEND t454 TO t2->items.
    t2->save( ).
    DATA t462 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t463) = |locate|.
    DATA t464 TYPE f.
    DATA(t465) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t464 = t465.
    DATA t466 TYPE REF TO zcl_lnt_abap_release.
    DATA t467 TYPE REF TO zcl_lnt_abap_release.
    DATA t468 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t468 = zcl_lnt_version_module=>release_b8cd.
    DATA(t469) = |v758|.
    t467 = t468->get( p0 = t469 ).
    t466 = t467.
    t462 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t463 i_f1 = t464 i_f2 = t466 ).
    t2->load( ).
    APPEND t462 TO t2->items.
    t2->save( ).
    DATA t471 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t472) = |greatest|.
    DATA t473 TYPE f.
    DATA(t474) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t473 = t474.
    DATA t475 TYPE REF TO zcl_lnt_abap_release.
    DATA t476 TYPE REF TO zcl_lnt_abap_release.
    DATA t477 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t477 = zcl_lnt_version_module=>release_b8cd.
    DATA(t478) = |v758|.
    t476 = t477->get( p0 = t478 ).
    t475 = t476.
    t471 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t472 i_f1 = t473 i_f2 = t475 ).
    t2->load( ).
    APPEND t471 TO t2->items.
    t2->save( ).
    DATA t480 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t481) = |least|.
    DATA t482 TYPE f.
    DATA(t483) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t482 = t483.
    DATA t484 TYPE REF TO zcl_lnt_abap_release.
    DATA t485 TYPE REF TO zcl_lnt_abap_release.
    DATA t486 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t486 = zcl_lnt_version_module=>release_b8cd.
    DATA(t487) = |v758|.
    t485 = t486->get( p0 = t487 ).
    t484 = t485.
    t480 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t481 i_f1 = t482 i_f2 = t484 ).
    t2->load( ).
    APPEND t480 TO t2->items.
    t2->save( ).
    DATA t489 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t490) = |hierarchy_composite_id|.
    DATA t491 TYPE f.
    DATA(t492) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t491 = t492.
    DATA t493 TYPE REF TO zcl_lnt_abap_release.
    DATA t494 TYPE REF TO zcl_lnt_abap_release.
    DATA t495 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t495 = zcl_lnt_version_module=>release_b8cd.
    DATA(t496) = |v758|.
    t494 = t495->get( p0 = t496 ).
    t493 = t494.
    t489 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t490 i_f1 = t491 i_f2 = t493 ).
    t2->load( ).
    APPEND t489 TO t2->items.
    t2->save( ).
    DATA t498 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t499) = |sin|.
    DATA(t500) = CONV f( 1 ).
    DATA t501 TYPE REF TO zcl_lnt_abap_release.
    DATA t502 TYPE REF TO zcl_lnt_abap_release.
    DATA t503 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t503 = zcl_lnt_version_module=>release_b8cd.
    DATA(t504) = |v758|.
    t502 = t503->get( p0 = t504 ).
    t501 = t502.
    t498 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t499 i_f1 = t500 i_f2 = t501 ).
    t2->load( ).
    APPEND t498 TO t2->items.
    t2->save( ).
    DATA t506 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t507) = |cos|.
    DATA(t508) = CONV f( 1 ).
    DATA t509 TYPE REF TO zcl_lnt_abap_release.
    DATA t510 TYPE REF TO zcl_lnt_abap_release.
    DATA t511 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t511 = zcl_lnt_version_module=>release_b8cd.
    DATA(t512) = |v758|.
    t510 = t511->get( p0 = t512 ).
    t509 = t510.
    t506 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t507 i_f1 = t508 i_f2 = t509 ).
    t2->load( ).
    APPEND t506 TO t2->items.
    t2->save( ).
    DATA t514 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t515) = |tan|.
    DATA(t516) = CONV f( 1 ).
    DATA t517 TYPE REF TO zcl_lnt_abap_release.
    DATA t518 TYPE REF TO zcl_lnt_abap_release.
    DATA t519 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t519 = zcl_lnt_version_module=>release_b8cd.
    DATA(t520) = |v758|.
    t518 = t519->get( p0 = t520 ).
    t517 = t518.
    t514 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t515 i_f1 = t516 i_f2 = t517 ).
    t2->load( ).
    APPEND t514 TO t2->items.
    t2->save( ).
    DATA t522 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t523) = |asin|.
    DATA(t524) = CONV f( 1 ).
    DATA t525 TYPE REF TO zcl_lnt_abap_release.
    DATA t526 TYPE REF TO zcl_lnt_abap_release.
    DATA t527 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t527 = zcl_lnt_version_module=>release_b8cd.
    DATA(t528) = |v758|.
    t526 = t527->get( p0 = t528 ).
    t525 = t526.
    t522 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t523 i_f1 = t524 i_f2 = t525 ).
    t2->load( ).
    APPEND t522 TO t2->items.
    t2->save( ).
    DATA t530 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t531) = |acos|.
    DATA(t532) = CONV f( 1 ).
    DATA t533 TYPE REF TO zcl_lnt_abap_release.
    DATA t534 TYPE REF TO zcl_lnt_abap_release.
    DATA t535 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t535 = zcl_lnt_version_module=>release_b8cd.
    DATA(t536) = |v758|.
    t534 = t535->get( p0 = t536 ).
    t533 = t534.
    t530 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t531 i_f1 = t532 i_f2 = t533 ).
    t2->load( ).
    APPEND t530 TO t2->items.
    t2->save( ).
    DATA t538 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t539) = |atan|.
    DATA(t540) = CONV f( 1 ).
    DATA t541 TYPE REF TO zcl_lnt_abap_release.
    DATA t542 TYPE REF TO zcl_lnt_abap_release.
    DATA t543 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t543 = zcl_lnt_version_module=>release_b8cd.
    DATA(t544) = |v758|.
    t542 = t543->get( p0 = t544 ).
    t541 = t542.
    t538 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t539 i_f1 = t540 i_f2 = t541 ).
    t2->load( ).
    APPEND t538 TO t2->items.
    t2->save( ).
    DATA t546 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t547) = |sinh|.
    DATA(t548) = CONV f( 1 ).
    DATA t549 TYPE REF TO zcl_lnt_abap_release.
    DATA t550 TYPE REF TO zcl_lnt_abap_release.
    DATA t551 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t551 = zcl_lnt_version_module=>release_b8cd.
    DATA(t552) = |v758|.
    t550 = t551->get( p0 = t552 ).
    t549 = t550.
    t546 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t547 i_f1 = t548 i_f2 = t549 ).
    t2->load( ).
    APPEND t546 TO t2->items.
    t2->save( ).
    DATA t554 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t555) = |cosh|.
    DATA(t556) = CONV f( 1 ).
    DATA t557 TYPE REF TO zcl_lnt_abap_release.
    DATA t558 TYPE REF TO zcl_lnt_abap_release.
    DATA t559 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t559 = zcl_lnt_version_module=>release_b8cd.
    DATA(t560) = |v758|.
    t558 = t559->get( p0 = t560 ).
    t557 = t558.
    t554 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t555 i_f1 = t556 i_f2 = t557 ).
    t2->load( ).
    APPEND t554 TO t2->items.
    t2->save( ).
    DATA t562 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t563) = |tanh|.
    DATA(t564) = CONV f( 1 ).
    DATA t565 TYPE REF TO zcl_lnt_abap_release.
    DATA t566 TYPE REF TO zcl_lnt_abap_release.
    DATA t567 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t567 = zcl_lnt_version_module=>release_b8cd.
    DATA(t568) = |v758|.
    t566 = t567->get( p0 = t568 ).
    t565 = t566.
    t562 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t563 i_f1 = t564 i_f2 = t565 ).
    t2->load( ).
    APPEND t562 TO t2->items.
    t2->save( ).
    DATA t570 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t571) = |sqrt|.
    DATA(t572) = CONV f( 1 ).
    DATA t573 TYPE REF TO zcl_lnt_abap_release.
    DATA t574 TYPE REF TO zcl_lnt_abap_release.
    DATA t575 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t575 = zcl_lnt_version_module=>release_b8cd.
    DATA(t576) = |v758|.
    t574 = t575->get( p0 = t576 ).
    t573 = t574.
    t570 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t571 i_f1 = t572 i_f2 = t573 ).
    t2->load( ).
    APPEND t570 TO t2->items.
    t2->save( ).
    DATA t578 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t579) = |power|.
    DATA(t580) = CONV f( 2 ).
    DATA t581 TYPE REF TO zcl_lnt_abap_release.
    DATA t582 TYPE REF TO zcl_lnt_abap_release.
    DATA t583 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t583 = zcl_lnt_version_module=>release_b8cd.
    DATA(t584) = |v758|.
    t582 = t583->get( p0 = t584 ).
    t581 = t582.
    t578 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t579 i_f1 = t580 i_f2 = t581 ).
    t2->load( ).
    APPEND t578 TO t2->items.
    t2->save( ).
    DATA t586 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t587) = |exp|.
    DATA(t588) = CONV f( 1 ).
    DATA t589 TYPE REF TO zcl_lnt_abap_release.
    DATA t590 TYPE REF TO zcl_lnt_abap_release.
    DATA t591 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t591 = zcl_lnt_version_module=>release_b8cd.
    DATA(t592) = |v758|.
    t590 = t591->get( p0 = t592 ).
    t589 = t590.
    t586 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t587 i_f1 = t588 i_f2 = t589 ).
    t2->load( ).
    APPEND t586 TO t2->items.
    t2->save( ).
    DATA t594 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t595) = |ln|.
    DATA(t596) = CONV f( 1 ).
    DATA t597 TYPE REF TO zcl_lnt_abap_release.
    DATA t598 TYPE REF TO zcl_lnt_abap_release.
    DATA t599 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t599 = zcl_lnt_version_module=>release_b8cd.
    DATA(t600) = |v758|.
    t598 = t599->get( p0 = t600 ).
    t597 = t598.
    t594 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t595 i_f1 = t596 i_f2 = t597 ).
    t2->load( ).
    APPEND t594 TO t2->items.
    t2->save( ).
    DATA t602 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t603) = |log10|.
    DATA(t604) = CONV f( 1 ).
    DATA t605 TYPE REF TO zcl_lnt_abap_release.
    DATA t606 TYPE REF TO zcl_lnt_abap_release.
    DATA t607 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t607 = zcl_lnt_version_module=>release_b8cd.
    DATA(t608) = |v758|.
    t606 = t607->get( p0 = t608 ).
    t605 = t606.
    t602 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t603 i_f1 = t604 i_f2 = t605 ).
    t2->load( ).
    APPEND t602 TO t2->items.
    t2->save( ).
    DATA t610 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t611) = |log|.
    DATA(t612) = CONV f( 2 ).
    DATA t613 TYPE REF TO zcl_lnt_abap_release.
    DATA t614 TYPE REF TO zcl_lnt_abap_release.
    DATA t615 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t615 = zcl_lnt_version_module=>release_b8cd.
    DATA(t616) = |v758|.
    t614 = t615->get( p0 = t616 ).
    t613 = t614.
    t610 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t611 i_f1 = t612 i_f2 = t613 ).
    t2->load( ).
    APPEND t610 TO t2->items.
    t2->save( ).
    DATA t618 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t619) = |utctolocal|.
    DATA(t620) = CONV f( 2 ).
    DATA t621 TYPE REF TO zcl_lnt_abap_release.
    DATA t622 TYPE REF TO zcl_lnt_abap_release.
    DATA t623 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t623 = zcl_lnt_version_module=>release_b8cd.
    DATA(t624) = |v758|.
    t622 = t623->get( p0 = t624 ).
    t621 = t622.
    t618 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t619 i_f1 = t620 i_f2 = t621 ).
    t2->load( ).
    APPEND t618 TO t2->items.
    t2->save( ).
    DATA t626 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t627) = |localtoutc|.
    DATA(t628) = CONV f( 2 ).
    DATA t629 TYPE REF TO zcl_lnt_abap_release.
    DATA t630 TYPE REF TO zcl_lnt_abap_release.
    DATA t631 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t631 = zcl_lnt_version_module=>release_b8cd.
    DATA(t632) = |v758|.
    t630 = t631->get( p0 = t632 ).
    t629 = t630.
    t626 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t627 i_f1 = t628 i_f2 = t629 ).
    t2->load( ).
    APPEND t626 TO t2->items.
    t2->save( ).
    DATA t634 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t635) = |is_masked|.
    DATA(t636) = CONV f( 1 ).
    DATA t637 TYPE REF TO zcl_lnt_abap_release.
    DATA t638 TYPE REF TO zcl_lnt_abap_release.
    DATA t639 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t639 = zcl_lnt_version_module=>release_b8cd.
    DATA(t640) = |v758|.
    t638 = t639->get( p0 = t640 ).
    t637 = t638.
    t634 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t635 i_f1 = t636 i_f2 = t637 ).
    t2->load( ).
    APPEND t634 TO t2->items.
    t2->save( ).
    zcl_lnt_sql_function_module=>sql_function_defs = t2.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    DATA t643 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t644 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t644.
    t643 = t644.
    DATA t646 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t647) = |abap_user_timezone|.
    DATA t648 TYPE REF TO zcl_lnt_abap_release.
    DATA t649 TYPE REF TO zcl_lnt_abap_release.
    DATA t650 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t650 = zcl_lnt_version_module=>release_b8cd.
    DATA(t651) = |v757|.
    t649 = t650->get( p0 = t651 ).
    t648 = t649.
    DATA t652 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t653 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t654 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t654.
    t653 = t654.
    DATA t656 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t657 TYPE string.
    t657 = |user|.
    DATA t659 TYPE string.
    t659 = |any|.
    DATA t661 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t665) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t665->has = abap_true.
    t665->value = abap_true.
    t661 = t665.
    t656 = NEW zcl_lnt_sql_named_param( i_name = t657 i_value = t659 i_optional = t661 ).
    CREATE OBJECT t656->zlnt_view_ownkeys_b0e8086400eb.
    t656->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t656->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t667 ).
    DATA t668 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t656->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t656->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t668 ).
    ENDIF.
    DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t656->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t656->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t669 ).
    ENDIF.
    CREATE OBJECT t656->zlnt_json_ownkeys_70e5fd461788.
    t656->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t670) = |name|.
    DATA t671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t656->zlnt_json_ownkeys_70e5fd461788->put( p0 = t670 p1 = t671 ).
    DATA(t672) = |value|.
    DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t656->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t656->zlnt_json_ownkeys_70e5fd461788->put( p0 = t672 p1 = t673 ).
    ENDIF.
    DATA(t674) = |optional|.
    DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t656->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t656->zlnt_json_ownkeys_70e5fd461788->put( p0 = t674 p1 = t675 ).
    ENDIF.
    t653->load( ).
    APPEND t656 TO t653->items.
    t653->save( ).
    DATA t677 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t678 TYPE string.
    t678 = |client|.
    DATA t680 TYPE string.
    t680 = |any|.
    DATA t682 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t686) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t686->has = abap_true.
    t686->value = abap_true.
    t682 = t686.
    t677 = NEW zcl_lnt_sql_named_param( i_name = t678 i_value = t680 i_optional = t682 ).
    CREATE OBJECT t677->zlnt_view_ownkeys_b0e8086400eb.
    t677->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t688 ).
    DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t689 ).
    ENDIF.
    DATA t690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t690 ).
    ENDIF.
    CREATE OBJECT t677->zlnt_json_ownkeys_70e5fd461788.
    t677->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t691) = |name|.
    DATA t692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t691 p1 = t692 ).
    DATA(t693) = |value|.
    DATA t694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t693 p1 = t694 ).
    ENDIF.
    DATA(t695) = |optional|.
    DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t695 p1 = t696 ).
    ENDIF.
    t653->load( ).
    APPEND t677 TO t653->items.
    t653->save( ).
    DATA t698 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t699 TYPE string.
    t699 = |on_error|.
    DATA t701 TYPE string.
    t701 = |abap_only|.
    DATA t703 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t707) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t707->has = abap_true.
    t707->value = abap_true.
    t703 = t707.
    t698 = NEW zcl_lnt_sql_named_param( i_name = t699 i_value = t701 i_optional = t703 ).
    CREATE OBJECT t698->zlnt_view_ownkeys_b0e8086400eb.
    t698->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t698->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t709 ).
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t698->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t698->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t710 ).
    ENDIF.
    DATA t711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t698->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t698->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t711 ).
    ENDIF.
    CREATE OBJECT t698->zlnt_json_ownkeys_70e5fd461788.
    t698->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t712) = |name|.
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t698->zlnt_json_ownkeys_70e5fd461788->put( p0 = t712 p1 = t713 ).
    DATA(t714) = |value|.
    DATA t715 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t698->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t698->zlnt_json_ownkeys_70e5fd461788->put( p0 = t714 p1 = t715 ).
    ENDIF.
    DATA(t716) = |optional|.
    DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t698->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t698->zlnt_json_ownkeys_70e5fd461788->put( p0 = t716 p1 = t717 ).
    ENDIF.
    t653->load( ).
    APPEND t698 TO t653->items.
    t653->save( ).
    t652 = t653.
    t646 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t647 i_f1 = t648 i_f2 = t652 ).
    t643->load( ).
    APPEND t646 TO t643->items.
    t643->save( ).
    DATA t720 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t721) = |abap_system_timezone|.
    DATA t722 TYPE REF TO zcl_lnt_abap_release.
    DATA t723 TYPE REF TO zcl_lnt_abap_release.
    DATA t724 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t724 = zcl_lnt_version_module=>release_b8cd.
    DATA(t725) = |v757|.
    t723 = t724->get( p0 = t725 ).
    t722 = t723.
    DATA t726 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t727 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t728 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t728.
    t727 = t728.
    DATA t730 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t731 TYPE string.
    t731 = |client|.
    DATA t733 TYPE string.
    t733 = |any|.
    DATA t735 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t739) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t739->has = abap_true.
    t739->value = abap_true.
    t735 = t739.
    t730 = NEW zcl_lnt_sql_named_param( i_name = t731 i_value = t733 i_optional = t735 ).
    CREATE OBJECT t730->zlnt_view_ownkeys_b0e8086400eb.
    t730->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t730->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t741 ).
    DATA t742 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t730->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t730->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t742 ).
    ENDIF.
    DATA t743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t730->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t730->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t743 ).
    ENDIF.
    CREATE OBJECT t730->zlnt_json_ownkeys_70e5fd461788.
    t730->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t744) = |name|.
    DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = t744 p1 = t745 ).
    DATA(t746) = |value|.
    DATA t747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t730->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = t746 p1 = t747 ).
    ENDIF.
    DATA(t748) = |optional|.
    DATA t749 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t730->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = t748 p1 = t749 ).
    ENDIF.
    t727->load( ).
    APPEND t730 TO t727->items.
    t727->save( ).
    DATA t751 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t752 TYPE string.
    t752 = |on_error|.
    DATA t754 TYPE string.
    t754 = |abap_only|.
    DATA t756 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t760) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t760->has = abap_true.
    t760->value = abap_true.
    t756 = t760.
    t751 = NEW zcl_lnt_sql_named_param( i_name = t752 i_value = t754 i_optional = t756 ).
    CREATE OBJECT t751->zlnt_view_ownkeys_b0e8086400eb.
    t751->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t762 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t751->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t762 ).
    DATA t763 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t751->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t751->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t763 ).
    ENDIF.
    DATA t764 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t751->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t751->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t764 ).
    ENDIF.
    CREATE OBJECT t751->zlnt_json_ownkeys_70e5fd461788.
    t751->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t765) = |name|.
    DATA t766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t751->zlnt_json_ownkeys_70e5fd461788->put( p0 = t765 p1 = t766 ).
    DATA(t767) = |value|.
    DATA t768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t751->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t751->zlnt_json_ownkeys_70e5fd461788->put( p0 = t767 p1 = t768 ).
    ENDIF.
    DATA(t769) = |optional|.
    DATA t770 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t751->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t751->zlnt_json_ownkeys_70e5fd461788->put( p0 = t769 p1 = t770 ).
    ENDIF.
    t727->load( ).
    APPEND t751 TO t727->items.
    t727->save( ).
    t726 = t727.
    t720 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t721 i_f1 = t722 i_f2 = t726 ).
    t643->load( ).
    APPEND t720 TO t643->items.
    t643->save( ).
    DATA t773 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t774) = |dats_tims_to_tstmp|.
    DATA t775 TYPE REF TO zcl_lnt_abap_release.
    DATA t776 TYPE REF TO zcl_lnt_abap_release.
    DATA t777 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t777 = zcl_lnt_version_module=>release_b8cd.
    DATA(t778) = |v757|.
    t776 = t777->get( p0 = t778 ).
    t775 = t776.
    DATA t779 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t780 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t781 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t781.
    t780 = t781.
    DATA t783 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t784 TYPE string.
    t784 = |date|.
    DATA t786 TYPE string.
    t786 = |any|.
    DATA t788 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t783 = NEW zcl_lnt_sql_named_param( i_name = t784 i_value = t786 i_optional = t788 ).
    CREATE OBJECT t783->zlnt_view_ownkeys_b0e8086400eb.
    t783->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t783->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t790 ).
    DATA t791 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t783->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t783->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t791 ).
    ENDIF.
    CREATE OBJECT t783->zlnt_json_ownkeys_70e5fd461788.
    t783->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t792) = |name|.
    DATA t793 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = t792 p1 = t793 ).
    DATA(t794) = |value|.
    DATA t795 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = t794 p1 = t795 ).
    ENDIF.
    t780->load( ).
    APPEND t783 TO t780->items.
    t780->save( ).
    DATA t797 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t798 TYPE string.
    t798 = |time|.
    DATA t800 TYPE string.
    t800 = |any|.
    DATA t802 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t797 = NEW zcl_lnt_sql_named_param( i_name = t798 i_value = t800 i_optional = t802 ).
    CREATE OBJECT t797->zlnt_view_ownkeys_b0e8086400eb.
    t797->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t797->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t804 ).
    DATA t805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t797->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t797->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t805 ).
    ENDIF.
    CREATE OBJECT t797->zlnt_json_ownkeys_70e5fd461788.
    t797->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t806) = |name|.
    DATA t807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t797->zlnt_json_ownkeys_70e5fd461788->put( p0 = t806 p1 = t807 ).
    DATA(t808) = |value|.
    DATA t809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t797->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t797->zlnt_json_ownkeys_70e5fd461788->put( p0 = t808 p1 = t809 ).
    ENDIF.
    t780->load( ).
    APPEND t797 TO t780->items.
    t780->save( ).
    DATA t811 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t812 TYPE string.
    t812 = |tzone|.
    DATA t814 TYPE string.
    t814 = |any|.
    DATA t816 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t811 = NEW zcl_lnt_sql_named_param( i_name = t812 i_value = t814 i_optional = t816 ).
    CREATE OBJECT t811->zlnt_view_ownkeys_b0e8086400eb.
    t811->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t811->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t818 ).
    DATA t819 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t811->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t811->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t819 ).
    ENDIF.
    CREATE OBJECT t811->zlnt_json_ownkeys_70e5fd461788.
    t811->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t820) = |name|.
    DATA t821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t811->zlnt_json_ownkeys_70e5fd461788->put( p0 = t820 p1 = t821 ).
    DATA(t822) = |value|.
    DATA t823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t811->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t811->zlnt_json_ownkeys_70e5fd461788->put( p0 = t822 p1 = t823 ).
    ENDIF.
    t780->load( ).
    APPEND t811 TO t780->items.
    t780->save( ).
    DATA t825 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t826 TYPE string.
    t826 = |client|.
    DATA t828 TYPE string.
    t828 = |any|.
    DATA t830 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t834) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t834->has = abap_true.
    t834->value = abap_true.
    t830 = t834.
    t825 = NEW zcl_lnt_sql_named_param( i_name = t826 i_value = t828 i_optional = t830 ).
    CREATE OBJECT t825->zlnt_view_ownkeys_b0e8086400eb.
    t825->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t836 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t825->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t836 ).
    DATA t837 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t825->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t825->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t837 ).
    ENDIF.
    DATA t838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t825->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t825->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t838 ).
    ENDIF.
    CREATE OBJECT t825->zlnt_json_ownkeys_70e5fd461788.
    t825->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t839) = |name|.
    DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t825->zlnt_json_ownkeys_70e5fd461788->put( p0 = t839 p1 = t840 ).
    DATA(t841) = |value|.
    DATA t842 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t825->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t825->zlnt_json_ownkeys_70e5fd461788->put( p0 = t841 p1 = t842 ).
    ENDIF.
    DATA(t843) = |optional|.
    DATA t844 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t825->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t825->zlnt_json_ownkeys_70e5fd461788->put( p0 = t843 p1 = t844 ).
    ENDIF.
    t780->load( ).
    APPEND t825 TO t780->items.
    t780->save( ).
    DATA t846 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t847 TYPE string.
    t847 = |on_error|.
    DATA t849 TYPE string.
    t849 = |abap_only|.
    DATA t851 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t855) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t855->has = abap_true.
    t855->value = abap_true.
    t851 = t855.
    t846 = NEW zcl_lnt_sql_named_param( i_name = t847 i_value = t849 i_optional = t851 ).
    CREATE OBJECT t846->zlnt_view_ownkeys_b0e8086400eb.
    t846->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t846->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t857 ).
    DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t846->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t846->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t858 ).
    ENDIF.
    DATA t859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t846->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t846->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t859 ).
    ENDIF.
    CREATE OBJECT t846->zlnt_json_ownkeys_70e5fd461788.
    t846->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t860) = |name|.
    DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t846->zlnt_json_ownkeys_70e5fd461788->put( p0 = t860 p1 = t861 ).
    DATA(t862) = |value|.
    DATA t863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t846->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t846->zlnt_json_ownkeys_70e5fd461788->put( p0 = t862 p1 = t863 ).
    ENDIF.
    DATA(t864) = |optional|.
    DATA t865 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t846->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t846->zlnt_json_ownkeys_70e5fd461788->put( p0 = t864 p1 = t865 ).
    ENDIF.
    t780->load( ).
    APPEND t846 TO t780->items.
    t780->save( ).
    t779 = t780.
    t773 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t774 i_f1 = t775 i_f2 = t779 ).
    t643->load( ).
    APPEND t773 TO t643->items.
    t643->save( ).
    DATA t868 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t869) = |tstmp_add_seconds|.
    DATA t870 TYPE REF TO zcl_lnt_abap_release.
    DATA t871 TYPE REF TO zcl_lnt_abap_release.
    DATA t872 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t872 = zcl_lnt_version_module=>release_b8cd.
    DATA(t873) = |v757|.
    t871 = t872->get( p0 = t873 ).
    t870 = t871.
    DATA t874 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t875 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t876 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t876.
    t875 = t876.
    DATA t878 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t879 TYPE string.
    t879 = |tstmp|.
    DATA t881 TYPE string.
    t881 = |any|.
    DATA t883 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t878 = NEW zcl_lnt_sql_named_param( i_name = t879 i_value = t881 i_optional = t883 ).
    CREATE OBJECT t878->zlnt_view_ownkeys_b0e8086400eb.
    t878->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t885 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t878->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t885 ).
    DATA t886 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t878->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t878->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t886 ).
    ENDIF.
    CREATE OBJECT t878->zlnt_json_ownkeys_70e5fd461788.
    t878->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t887) = |name|.
    DATA t888 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t878->zlnt_json_ownkeys_70e5fd461788->put( p0 = t887 p1 = t888 ).
    DATA(t889) = |value|.
    DATA t890 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t878->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t878->zlnt_json_ownkeys_70e5fd461788->put( p0 = t889 p1 = t890 ).
    ENDIF.
    t875->load( ).
    APPEND t878 TO t875->items.
    t875->save( ).
    DATA t892 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t893 TYPE string.
    t893 = |seconds|.
    DATA t895 TYPE string.
    t895 = |any|.
    DATA t897 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t892 = NEW zcl_lnt_sql_named_param( i_name = t893 i_value = t895 i_optional = t897 ).
    CREATE OBJECT t892->zlnt_view_ownkeys_b0e8086400eb.
    t892->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t899 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t892->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t899 ).
    DATA t900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t892->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t892->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t900 ).
    ENDIF.
    CREATE OBJECT t892->zlnt_json_ownkeys_70e5fd461788.
    t892->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t901) = |name|.
    DATA t902 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = t901 p1 = t902 ).
    DATA(t903) = |value|.
    DATA t904 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t892->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = t903 p1 = t904 ).
    ENDIF.
    t875->load( ).
    APPEND t892 TO t875->items.
    t875->save( ).
    DATA t906 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t907 TYPE string.
    t907 = |on_error|.
    DATA t909 TYPE string.
    t909 = |abap_only|.
    DATA t911 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t915) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t915->has = abap_true.
    t915->value = abap_true.
    t911 = t915.
    t906 = NEW zcl_lnt_sql_named_param( i_name = t907 i_value = t909 i_optional = t911 ).
    CREATE OBJECT t906->zlnt_view_ownkeys_b0e8086400eb.
    t906->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t906->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t917 ).
    DATA t918 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t906->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t906->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t918 ).
    ENDIF.
    DATA t919 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t906->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t906->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t919 ).
    ENDIF.
    CREATE OBJECT t906->zlnt_json_ownkeys_70e5fd461788.
    t906->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t920) = |name|.
    DATA t921 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t906->zlnt_json_ownkeys_70e5fd461788->put( p0 = t920 p1 = t921 ).
    DATA(t922) = |value|.
    DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t906->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t906->zlnt_json_ownkeys_70e5fd461788->put( p0 = t922 p1 = t923 ).
    ENDIF.
    DATA(t924) = |optional|.
    DATA t925 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t906->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t906->zlnt_json_ownkeys_70e5fd461788->put( p0 = t924 p1 = t925 ).
    ENDIF.
    t875->load( ).
    APPEND t906 TO t875->items.
    t875->save( ).
    t874 = t875.
    t868 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t869 i_f1 = t870 i_f2 = t874 ).
    t643->load( ).
    APPEND t868 TO t643->items.
    t643->save( ).
    DATA t928 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t929) = |tstmp_seconds_between|.
    DATA t930 TYPE REF TO zcl_lnt_abap_release.
    DATA t931 TYPE REF TO zcl_lnt_abap_release.
    DATA t932 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t932 = zcl_lnt_version_module=>release_b8cd.
    DATA(t933) = |v757|.
    t931 = t932->get( p0 = t933 ).
    t930 = t931.
    DATA t934 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t935 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t936 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t936.
    t935 = t936.
    DATA t938 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t939 TYPE string.
    t939 = |tstmp1|.
    DATA t941 TYPE string.
    t941 = |any|.
    DATA t943 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t938 = NEW zcl_lnt_sql_named_param( i_name = t939 i_value = t941 i_optional = t943 ).
    CREATE OBJECT t938->zlnt_view_ownkeys_b0e8086400eb.
    t938->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t945 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t938->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t945 ).
    DATA t946 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t938->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t938->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t946 ).
    ENDIF.
    CREATE OBJECT t938->zlnt_json_ownkeys_70e5fd461788.
    t938->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t947) = |name|.
    DATA t948 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t938->zlnt_json_ownkeys_70e5fd461788->put( p0 = t947 p1 = t948 ).
    DATA(t949) = |value|.
    DATA t950 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t938->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t938->zlnt_json_ownkeys_70e5fd461788->put( p0 = t949 p1 = t950 ).
    ENDIF.
    t935->load( ).
    APPEND t938 TO t935->items.
    t935->save( ).
    DATA t952 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t953 TYPE string.
    t953 = |tstmp2|.
    DATA t955 TYPE string.
    t955 = |any|.
    DATA t957 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t952 = NEW zcl_lnt_sql_named_param( i_name = t953 i_value = t955 i_optional = t957 ).
    CREATE OBJECT t952->zlnt_view_ownkeys_b0e8086400eb.
    t952->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t959 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t952->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t959 ).
    DATA t960 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t952->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t952->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t960 ).
    ENDIF.
    CREATE OBJECT t952->zlnt_json_ownkeys_70e5fd461788.
    t952->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t961) = |name|.
    DATA t962 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t952->zlnt_json_ownkeys_70e5fd461788->put( p0 = t961 p1 = t962 ).
    DATA(t963) = |value|.
    DATA t964 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t952->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t952->zlnt_json_ownkeys_70e5fd461788->put( p0 = t963 p1 = t964 ).
    ENDIF.
    t935->load( ).
    APPEND t952 TO t935->items.
    t935->save( ).
    DATA t966 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t967 TYPE string.
    t967 = |on_error|.
    DATA t969 TYPE string.
    t969 = |abap_only|.
    DATA t971 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t975) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t975->has = abap_true.
    t975->value = abap_true.
    t971 = t975.
    t966 = NEW zcl_lnt_sql_named_param( i_name = t967 i_value = t969 i_optional = t971 ).
    CREATE OBJECT t966->zlnt_view_ownkeys_b0e8086400eb.
    t966->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t977 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t966->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t977 ).
    DATA t978 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t966->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t966->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t978 ).
    ENDIF.
    DATA t979 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t966->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t966->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t979 ).
    ENDIF.
    CREATE OBJECT t966->zlnt_json_ownkeys_70e5fd461788.
    t966->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t980) = |name|.
    DATA t981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t966->zlnt_json_ownkeys_70e5fd461788->put( p0 = t980 p1 = t981 ).
    DATA(t982) = |value|.
    DATA t983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t966->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t966->zlnt_json_ownkeys_70e5fd461788->put( p0 = t982 p1 = t983 ).
    ENDIF.
    DATA(t984) = |optional|.
    DATA t985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t966->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t966->zlnt_json_ownkeys_70e5fd461788->put( p0 = t984 p1 = t985 ).
    ENDIF.
    t935->load( ).
    APPEND t966 TO t935->items.
    t935->save( ).
    t934 = t935.
    t928 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t929 i_f1 = t930 i_f2 = t934 ).
    t643->load( ).
    APPEND t928 TO t643->items.
    t643->save( ).
    DATA t988 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t989) = |tstmp_to_dats|.
    DATA t990 TYPE REF TO zcl_lnt_abap_release.
    DATA t991 TYPE REF TO zcl_lnt_abap_release.
    DATA t992 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t992 = zcl_lnt_version_module=>release_b8cd.
    DATA(t993) = |v757|.
    t991 = t992->get( p0 = t993 ).
    t990 = t991.
    DATA t994 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t995 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t996 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t996.
    t995 = t996.
    DATA t998 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t999 TYPE string.
    t999 = |tstmp|.
    DATA t1001 TYPE string.
    t1001 = |any|.
    DATA t1003 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t998 = NEW zcl_lnt_sql_named_param( i_name = t999 i_value = t1001 i_optional = t1003 ).
    CREATE OBJECT t998->zlnt_view_ownkeys_b0e8086400eb.
    t998->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1005 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t998->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1005 ).
    DATA t1006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t998->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t998->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1006 ).
    ENDIF.
    CREATE OBJECT t998->zlnt_json_ownkeys_70e5fd461788.
    t998->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1007) = |name|.
    DATA t1008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t998->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1007 p1 = t1008 ).
    DATA(t1009) = |value|.
    DATA t1010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t998->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t998->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1009 p1 = t1010 ).
    ENDIF.
    t995->load( ).
    APPEND t998 TO t995->items.
    t995->save( ).
    DATA t1012 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1013 TYPE string.
    t1013 = |tzone|.
    DATA t1015 TYPE string.
    t1015 = |any|.
    DATA t1017 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1021) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1021->has = abap_true.
    t1021->value = abap_true.
    t1017 = t1021.
    t1012 = NEW zcl_lnt_sql_named_param( i_name = t1013 i_value = t1015 i_optional = t1017 ).
    CREATE OBJECT t1012->zlnt_view_ownkeys_b0e8086400eb.
    t1012->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1023 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1023 ).
    DATA t1024 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1024 ).
    ENDIF.
    DATA t1025 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1025 ).
    ENDIF.
    CREATE OBJECT t1012->zlnt_json_ownkeys_70e5fd461788.
    t1012->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1026) = |name|.
    DATA t1027 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1026 p1 = t1027 ).
    DATA(t1028) = |value|.
    DATA t1029 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1028 p1 = t1029 ).
    ENDIF.
    DATA(t1030) = |optional|.
    DATA t1031 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1030 p1 = t1031 ).
    ENDIF.
    t995->load( ).
    APPEND t1012 TO t995->items.
    t995->save( ).
    DATA t1033 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1034 TYPE string.
    t1034 = |client|.
    DATA t1036 TYPE string.
    t1036 = |any|.
    DATA t1038 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1042) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1042->has = abap_true.
    t1042->value = abap_true.
    t1038 = t1042.
    t1033 = NEW zcl_lnt_sql_named_param( i_name = t1034 i_value = t1036 i_optional = t1038 ).
    CREATE OBJECT t1033->zlnt_view_ownkeys_b0e8086400eb.
    t1033->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1044 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1033->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1044 ).
    DATA t1045 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1033->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1033->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1045 ).
    ENDIF.
    DATA t1046 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1033->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1033->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1046 ).
    ENDIF.
    CREATE OBJECT t1033->zlnt_json_ownkeys_70e5fd461788.
    t1033->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1047) = |name|.
    DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1047 p1 = t1048 ).
    DATA(t1049) = |value|.
    DATA t1050 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1049 p1 = t1050 ).
    ENDIF.
    DATA(t1051) = |optional|.
    DATA t1052 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1051 p1 = t1052 ).
    ENDIF.
    t995->load( ).
    APPEND t1033 TO t995->items.
    t995->save( ).
    DATA t1054 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1055 TYPE string.
    t1055 = |on_error|.
    DATA t1057 TYPE string.
    t1057 = |abap_only|.
    DATA t1059 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1063) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1063->has = abap_true.
    t1063->value = abap_true.
    t1059 = t1063.
    t1054 = NEW zcl_lnt_sql_named_param( i_name = t1055 i_value = t1057 i_optional = t1059 ).
    CREATE OBJECT t1054->zlnt_view_ownkeys_b0e8086400eb.
    t1054->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1065 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1054->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1065 ).
    DATA t1066 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1054->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1054->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1066 ).
    ENDIF.
    DATA t1067 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1054->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1054->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1067 ).
    ENDIF.
    CREATE OBJECT t1054->zlnt_json_ownkeys_70e5fd461788.
    t1054->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1068) = |name|.
    DATA t1069 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1054->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1068 p1 = t1069 ).
    DATA(t1070) = |value|.
    DATA t1071 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1054->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1054->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1070 p1 = t1071 ).
    ENDIF.
    DATA(t1072) = |optional|.
    DATA t1073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1054->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1054->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1072 p1 = t1073 ).
    ENDIF.
    t995->load( ).
    APPEND t1054 TO t995->items.
    t995->save( ).
    t994 = t995.
    t988 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t989 i_f1 = t990 i_f2 = t994 ).
    t643->load( ).
    APPEND t988 TO t643->items.
    t643->save( ).
    DATA t1076 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t1077) = |tstmp_to_tims|.
    DATA t1078 TYPE REF TO zcl_lnt_abap_release.
    DATA t1079 TYPE REF TO zcl_lnt_abap_release.
    DATA t1080 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1080 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1081) = |v757|.
    t1079 = t1080->get( p0 = t1081 ).
    t1078 = t1079.
    DATA t1082 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1083 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1084 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1084.
    t1083 = t1084.
    DATA t1086 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1087 TYPE string.
    t1087 = |tstmp|.
    DATA t1089 TYPE string.
    t1089 = |any|.
    DATA t1091 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1086 = NEW zcl_lnt_sql_named_param( i_name = t1087 i_value = t1089 i_optional = t1091 ).
    CREATE OBJECT t1086->zlnt_view_ownkeys_b0e8086400eb.
    t1086->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1093 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1086->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1093 ).
    DATA t1094 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1086->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1086->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1094 ).
    ENDIF.
    CREATE OBJECT t1086->zlnt_json_ownkeys_70e5fd461788.
    t1086->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1095) = |name|.
    DATA t1096 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1086->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1095 p1 = t1096 ).
    DATA(t1097) = |value|.
    DATA t1098 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1086->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1086->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1097 p1 = t1098 ).
    ENDIF.
    t1083->load( ).
    APPEND t1086 TO t1083->items.
    t1083->save( ).
    DATA t1100 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1101 TYPE string.
    t1101 = |tzone|.
    DATA t1103 TYPE string.
    t1103 = |any|.
    DATA t1105 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1109) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1109->has = abap_true.
    t1109->value = abap_true.
    t1105 = t1109.
    t1100 = NEW zcl_lnt_sql_named_param( i_name = t1101 i_value = t1103 i_optional = t1105 ).
    CREATE OBJECT t1100->zlnt_view_ownkeys_b0e8086400eb.
    t1100->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1111 ).
    DATA t1112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1112 ).
    ENDIF.
    DATA t1113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1113 ).
    ENDIF.
    CREATE OBJECT t1100->zlnt_json_ownkeys_70e5fd461788.
    t1100->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1114) = |name|.
    DATA t1115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1114 p1 = t1115 ).
    DATA(t1116) = |value|.
    DATA t1117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1116 p1 = t1117 ).
    ENDIF.
    DATA(t1118) = |optional|.
    DATA t1119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1118 p1 = t1119 ).
    ENDIF.
    t1083->load( ).
    APPEND t1100 TO t1083->items.
    t1083->save( ).
    DATA t1121 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1122 TYPE string.
    t1122 = |client|.
    DATA t1124 TYPE string.
    t1124 = |any|.
    DATA t1126 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1130) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1130->has = abap_true.
    t1130->value = abap_true.
    t1126 = t1130.
    t1121 = NEW zcl_lnt_sql_named_param( i_name = t1122 i_value = t1124 i_optional = t1126 ).
    CREATE OBJECT t1121->zlnt_view_ownkeys_b0e8086400eb.
    t1121->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1121->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1132 ).
    DATA t1133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1121->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1121->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1133 ).
    ENDIF.
    DATA t1134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1121->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1121->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1134 ).
    ENDIF.
    CREATE OBJECT t1121->zlnt_json_ownkeys_70e5fd461788.
    t1121->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1135) = |name|.
    DATA t1136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1121->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1135 p1 = t1136 ).
    DATA(t1137) = |value|.
    DATA t1138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1121->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1121->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1137 p1 = t1138 ).
    ENDIF.
    DATA(t1139) = |optional|.
    DATA t1140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1121->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1121->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1139 p1 = t1140 ).
    ENDIF.
    t1083->load( ).
    APPEND t1121 TO t1083->items.
    t1083->save( ).
    DATA t1142 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1143 TYPE string.
    t1143 = |on_error|.
    DATA t1145 TYPE string.
    t1145 = |abap_only|.
    DATA t1147 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1151) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1151->has = abap_true.
    t1151->value = abap_true.
    t1147 = t1151.
    t1142 = NEW zcl_lnt_sql_named_param( i_name = t1143 i_value = t1145 i_optional = t1147 ).
    CREATE OBJECT t1142->zlnt_view_ownkeys_b0e8086400eb.
    t1142->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1153 ).
    DATA t1154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1154 ).
    ENDIF.
    DATA t1155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1155 ).
    ENDIF.
    CREATE OBJECT t1142->zlnt_json_ownkeys_70e5fd461788.
    t1142->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1156) = |name|.
    DATA t1157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1156 p1 = t1157 ).
    DATA(t1158) = |value|.
    DATA t1159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1158 p1 = t1159 ).
    ENDIF.
    DATA(t1160) = |optional|.
    DATA t1161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1160 p1 = t1161 ).
    ENDIF.
    t1083->load( ).
    APPEND t1142 TO t1083->items.
    t1083->save( ).
    t1082 = t1083.
    t1076 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1077 i_f1 = t1078 i_f2 = t1082 ).
    t643->load( ).
    APPEND t1076 TO t643->items.
    t643->save( ).
    DATA t1164 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t1165) = |tstmp_to_dst|.
    DATA t1166 TYPE REF TO zcl_lnt_abap_release.
    DATA t1167 TYPE REF TO zcl_lnt_abap_release.
    DATA t1168 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1168 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1169) = |v757|.
    t1167 = t1168->get( p0 = t1169 ).
    t1166 = t1167.
    DATA t1170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1172.
    t1171 = t1172.
    DATA t1174 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1175 TYPE string.
    t1175 = |tstmp|.
    DATA t1177 TYPE string.
    t1177 = |any|.
    DATA t1179 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1174 = NEW zcl_lnt_sql_named_param( i_name = t1175 i_value = t1177 i_optional = t1179 ).
    CREATE OBJECT t1174->zlnt_view_ownkeys_b0e8086400eb.
    t1174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1181 ).
    DATA t1182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1182 ).
    ENDIF.
    CREATE OBJECT t1174->zlnt_json_ownkeys_70e5fd461788.
    t1174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1183) = |name|.
    DATA t1184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1183 p1 = t1184 ).
    DATA(t1185) = |value|.
    DATA t1186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1185 p1 = t1186 ).
    ENDIF.
    t1171->load( ).
    APPEND t1174 TO t1171->items.
    t1171->save( ).
    DATA t1188 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1189 TYPE string.
    t1189 = |tzone|.
    DATA t1191 TYPE string.
    t1191 = |any|.
    DATA t1193 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1197) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1197->has = abap_true.
    t1197->value = abap_true.
    t1193 = t1197.
    t1188 = NEW zcl_lnt_sql_named_param( i_name = t1189 i_value = t1191 i_optional = t1193 ).
    CREATE OBJECT t1188->zlnt_view_ownkeys_b0e8086400eb.
    t1188->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1199 ).
    DATA t1200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1200 ).
    ENDIF.
    DATA t1201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1201 ).
    ENDIF.
    CREATE OBJECT t1188->zlnt_json_ownkeys_70e5fd461788.
    t1188->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1202) = |name|.
    DATA t1203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1202 p1 = t1203 ).
    DATA(t1204) = |value|.
    DATA t1205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1204 p1 = t1205 ).
    ENDIF.
    DATA(t1206) = |optional|.
    DATA t1207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1206 p1 = t1207 ).
    ENDIF.
    t1171->load( ).
    APPEND t1188 TO t1171->items.
    t1171->save( ).
    DATA t1209 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1210 TYPE string.
    t1210 = |client|.
    DATA t1212 TYPE string.
    t1212 = |any|.
    DATA t1214 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1218) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1218->has = abap_true.
    t1218->value = abap_true.
    t1214 = t1218.
    t1209 = NEW zcl_lnt_sql_named_param( i_name = t1210 i_value = t1212 i_optional = t1214 ).
    CREATE OBJECT t1209->zlnt_view_ownkeys_b0e8086400eb.
    t1209->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1209->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1220 ).
    DATA t1221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1209->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1209->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1221 ).
    ENDIF.
    DATA t1222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1209->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1209->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1222 ).
    ENDIF.
    CREATE OBJECT t1209->zlnt_json_ownkeys_70e5fd461788.
    t1209->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1223) = |name|.
    DATA t1224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1209->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1223 p1 = t1224 ).
    DATA(t1225) = |value|.
    DATA t1226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1209->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1209->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1225 p1 = t1226 ).
    ENDIF.
    DATA(t1227) = |optional|.
    DATA t1228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1209->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1209->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1227 p1 = t1228 ).
    ENDIF.
    t1171->load( ).
    APPEND t1209 TO t1171->items.
    t1171->save( ).
    DATA t1230 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1231 TYPE string.
    t1231 = |on_error|.
    DATA t1233 TYPE string.
    t1233 = |abap_only|.
    DATA t1235 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1239) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1239->has = abap_true.
    t1239->value = abap_true.
    t1235 = t1239.
    t1230 = NEW zcl_lnt_sql_named_param( i_name = t1231 i_value = t1233 i_optional = t1235 ).
    CREATE OBJECT t1230->zlnt_view_ownkeys_b0e8086400eb.
    t1230->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1230->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1241 ).
    DATA t1242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1230->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1230->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1242 ).
    ENDIF.
    DATA t1243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1230->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1230->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1243 ).
    ENDIF.
    CREATE OBJECT t1230->zlnt_json_ownkeys_70e5fd461788.
    t1230->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1244) = |name|.
    DATA t1245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1230->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1244 p1 = t1245 ).
    DATA(t1246) = |value|.
    DATA t1247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1230->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1230->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1246 p1 = t1247 ).
    ENDIF.
    DATA(t1248) = |optional|.
    DATA t1249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1230->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1230->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1248 p1 = t1249 ).
    ENDIF.
    t1171->load( ).
    APPEND t1230 TO t1171->items.
    t1171->save( ).
    t1170 = t1171.
    t1164 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1165 i_f1 = t1166 i_f2 = t1170 ).
    t643->load( ).
    APPEND t1164 TO t643->items.
    t643->save( ).
    DATA t1252 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t1253) = |tstmpl_to_utcl|.
    DATA t1254 TYPE REF TO zcl_lnt_abap_release.
    DATA t1255 TYPE REF TO zcl_lnt_abap_release.
    DATA t1256 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1256 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1257) = |v757|.
    t1255 = t1256->get( p0 = t1257 ).
    t1254 = t1255.
    DATA t1258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1260.
    t1259 = t1260.
    DATA t1262 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1263 TYPE string.
    t1263 = |tstmpl|.
    DATA t1265 TYPE string.
    t1265 = |any|.
    DATA t1267 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1262 = NEW zcl_lnt_sql_named_param( i_name = t1263 i_value = t1265 i_optional = t1267 ).
    CREATE OBJECT t1262->zlnt_view_ownkeys_b0e8086400eb.
    t1262->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1262->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1269 ).
    DATA t1270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1262->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1262->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1270 ).
    ENDIF.
    CREATE OBJECT t1262->zlnt_json_ownkeys_70e5fd461788.
    t1262->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1271) = |name|.
    DATA t1272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1262->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1271 p1 = t1272 ).
    DATA(t1273) = |value|.
    DATA t1274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1262->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1262->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1273 p1 = t1274 ).
    ENDIF.
    t1259->load( ).
    APPEND t1262 TO t1259->items.
    t1259->save( ).
    DATA t1276 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1277 TYPE string.
    t1277 = |on_error|.
    DATA t1279 TYPE string.
    t1279 = |abap_only|.
    DATA t1281 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1285) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1285->has = abap_true.
    t1285->value = abap_true.
    t1281 = t1285.
    t1276 = NEW zcl_lnt_sql_named_param( i_name = t1277 i_value = t1279 i_optional = t1281 ).
    CREATE OBJECT t1276->zlnt_view_ownkeys_b0e8086400eb.
    t1276->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1287 ).
    DATA t1288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1288 ).
    ENDIF.
    DATA t1289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1289 ).
    ENDIF.
    CREATE OBJECT t1276->zlnt_json_ownkeys_70e5fd461788.
    t1276->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1290) = |name|.
    DATA t1291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1290 p1 = t1291 ).
    DATA(t1292) = |value|.
    DATA t1293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1292 p1 = t1293 ).
    ENDIF.
    DATA(t1294) = |optional|.
    DATA t1295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1294 p1 = t1295 ).
    ENDIF.
    t1259->load( ).
    APPEND t1276 TO t1259->items.
    t1259->save( ).
    DATA t1297 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1298 TYPE string.
    t1298 = |on_initial|.
    DATA t1300 TYPE string.
    t1300 = |abap_only|.
    DATA t1302 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1306) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1306->has = abap_true.
    t1306->value = abap_true.
    t1302 = t1306.
    t1297 = NEW zcl_lnt_sql_named_param( i_name = t1298 i_value = t1300 i_optional = t1302 ).
    CREATE OBJECT t1297->zlnt_view_ownkeys_b0e8086400eb.
    t1297->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1308 ).
    DATA t1309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1309 ).
    ENDIF.
    DATA t1310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1310 ).
    ENDIF.
    CREATE OBJECT t1297->zlnt_json_ownkeys_70e5fd461788.
    t1297->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1311) = |name|.
    DATA t1312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1311 p1 = t1312 ).
    DATA(t1313) = |value|.
    DATA t1314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1313 p1 = t1314 ).
    ENDIF.
    DATA(t1315) = |optional|.
    DATA t1316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1315 p1 = t1316 ).
    ENDIF.
    t1259->load( ).
    APPEND t1297 TO t1259->items.
    t1259->save( ).
    t1258 = t1259.
    t1252 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1253 i_f1 = t1254 i_f2 = t1258 ).
    t643->load( ).
    APPEND t1252 TO t643->items.
    t643->save( ).
    DATA t1319 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t1320) = |tstmpl_from_utcl|.
    DATA t1321 TYPE REF TO zcl_lnt_abap_release.
    DATA t1322 TYPE REF TO zcl_lnt_abap_release.
    DATA t1323 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1323 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1324) = |v757|.
    t1322 = t1323->get( p0 = t1324 ).
    t1321 = t1322.
    DATA t1325 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1326 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1327.
    t1326 = t1327.
    DATA t1329 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1330 TYPE string.
    t1330 = |utcl|.
    DATA t1332 TYPE string.
    t1332 = |any|.
    DATA t1334 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1329 = NEW zcl_lnt_sql_named_param( i_name = t1330 i_value = t1332 i_optional = t1334 ).
    CREATE OBJECT t1329->zlnt_view_ownkeys_b0e8086400eb.
    t1329->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1329->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1336 ).
    DATA t1337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1329->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1329->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1337 ).
    ENDIF.
    CREATE OBJECT t1329->zlnt_json_ownkeys_70e5fd461788.
    t1329->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1338) = |name|.
    DATA t1339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1329->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1338 p1 = t1339 ).
    DATA(t1340) = |value|.
    DATA t1341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1329->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1329->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1340 p1 = t1341 ).
    ENDIF.
    t1326->load( ).
    APPEND t1329 TO t1326->items.
    t1326->save( ).
    DATA t1343 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1344 TYPE string.
    t1344 = |on_null|.
    DATA t1346 TYPE string.
    t1346 = |abap_only|.
    DATA t1348 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1352) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1352->has = abap_true.
    t1352->value = abap_true.
    t1348 = t1352.
    t1343 = NEW zcl_lnt_sql_named_param( i_name = t1344 i_value = t1346 i_optional = t1348 ).
    CREATE OBJECT t1343->zlnt_view_ownkeys_b0e8086400eb.
    t1343->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1354 ).
    DATA t1355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1343->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1355 ).
    ENDIF.
    DATA t1356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1343->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1356 ).
    ENDIF.
    CREATE OBJECT t1343->zlnt_json_ownkeys_70e5fd461788.
    t1343->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1357) = |name|.
    DATA t1358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1357 p1 = t1358 ).
    DATA(t1359) = |value|.
    DATA t1360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1359 p1 = t1360 ).
    ENDIF.
    DATA(t1361) = |optional|.
    DATA t1362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1361 p1 = t1362 ).
    ENDIF.
    t1326->load( ).
    APPEND t1343 TO t1326->items.
    t1326->save( ).
    t1325 = t1326.
    t1319 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1320 i_f1 = t1321 i_f2 = t1325 ).
    t643->load( ).
    APPEND t1319 TO t643->items.
    t643->save( ).
    DATA t1365 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t1366) = |dats_to_datn|.
    DATA t1367 TYPE REF TO zcl_lnt_abap_release.
    DATA t1368 TYPE REF TO zcl_lnt_abap_release.
    DATA t1369 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1369 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1370) = |v757|.
    t1368 = t1369->get( p0 = t1370 ).
    t1367 = t1368.
    DATA t1371 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1373.
    t1372 = t1373.
    DATA t1375 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1376 TYPE string.
    t1376 = |dats|.
    DATA t1378 TYPE string.
    t1378 = |any|.
    DATA t1380 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1375 = NEW zcl_lnt_sql_named_param( i_name = t1376 i_value = t1378 i_optional = t1380 ).
    CREATE OBJECT t1375->zlnt_view_ownkeys_b0e8086400eb.
    t1375->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1375->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1382 ).
    DATA t1383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1375->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1375->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1383 ).
    ENDIF.
    CREATE OBJECT t1375->zlnt_json_ownkeys_70e5fd461788.
    t1375->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1384) = |name|.
    DATA t1385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1375->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1384 p1 = t1385 ).
    DATA(t1386) = |value|.
    DATA t1387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1375->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1375->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1386 p1 = t1387 ).
    ENDIF.
    t1372->load( ).
    APPEND t1375 TO t1372->items.
    t1372->save( ).
    DATA t1389 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1390 TYPE string.
    t1390 = |on_error|.
    DATA t1392 TYPE string.
    t1392 = |abap_only|.
    DATA t1394 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1398) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1398->has = abap_true.
    t1398->value = abap_true.
    t1394 = t1398.
    t1389 = NEW zcl_lnt_sql_named_param( i_name = t1390 i_value = t1392 i_optional = t1394 ).
    CREATE OBJECT t1389->zlnt_view_ownkeys_b0e8086400eb.
    t1389->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1389->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1400 ).
    DATA t1401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1389->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1389->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1401 ).
    ENDIF.
    DATA t1402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1389->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1389->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1402 ).
    ENDIF.
    CREATE OBJECT t1389->zlnt_json_ownkeys_70e5fd461788.
    t1389->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1403) = |name|.
    DATA t1404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1389->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1403 p1 = t1404 ).
    DATA(t1405) = |value|.
    DATA t1406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1389->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1389->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1405 p1 = t1406 ).
    ENDIF.
    DATA(t1407) = |optional|.
    DATA t1408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1389->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1389->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1407 p1 = t1408 ).
    ENDIF.
    t1372->load( ).
    APPEND t1389 TO t1372->items.
    t1372->save( ).
    DATA t1410 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1411 TYPE string.
    t1411 = |on_initial|.
    DATA t1413 TYPE string.
    t1413 = |abap_only|.
    DATA t1415 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1419) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1419->has = abap_true.
    t1419->value = abap_true.
    t1415 = t1419.
    t1410 = NEW zcl_lnt_sql_named_param( i_name = t1411 i_value = t1413 i_optional = t1415 ).
    CREATE OBJECT t1410->zlnt_view_ownkeys_b0e8086400eb.
    t1410->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1410->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1421 ).
    DATA t1422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1410->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1410->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1422 ).
    ENDIF.
    DATA t1423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1410->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1410->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1423 ).
    ENDIF.
    CREATE OBJECT t1410->zlnt_json_ownkeys_70e5fd461788.
    t1410->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1424) = |name|.
    DATA t1425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1410->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1424 p1 = t1425 ).
    DATA(t1426) = |value|.
    DATA t1427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1410->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1410->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1426 p1 = t1427 ).
    ENDIF.
    DATA(t1428) = |optional|.
    DATA t1429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1410->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1410->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1428 p1 = t1429 ).
    ENDIF.
    t1372->load( ).
    APPEND t1410 TO t1372->items.
    t1372->save( ).
    t1371 = t1372.
    t1365 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1366 i_f1 = t1367 i_f2 = t1371 ).
    t643->load( ).
    APPEND t1365 TO t643->items.
    t643->save( ).
    DATA t1432 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t1433) = |dats_from_datn|.
    DATA t1434 TYPE REF TO zcl_lnt_abap_release.
    DATA t1435 TYPE REF TO zcl_lnt_abap_release.
    DATA t1436 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1436 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1437) = |v757|.
    t1435 = t1436->get( p0 = t1437 ).
    t1434 = t1435.
    DATA t1438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1439 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1440 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1440.
    t1439 = t1440.
    DATA t1442 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1443 TYPE string.
    t1443 = |datn|.
    DATA t1445 TYPE string.
    t1445 = |any|.
    DATA t1447 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1442 = NEW zcl_lnt_sql_named_param( i_name = t1443 i_value = t1445 i_optional = t1447 ).
    CREATE OBJECT t1442->zlnt_view_ownkeys_b0e8086400eb.
    t1442->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1442->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1449 ).
    DATA t1450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1442->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1442->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1450 ).
    ENDIF.
    CREATE OBJECT t1442->zlnt_json_ownkeys_70e5fd461788.
    t1442->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1451) = |name|.
    DATA t1452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1442->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1451 p1 = t1452 ).
    DATA(t1453) = |value|.
    DATA t1454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1442->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1442->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1453 p1 = t1454 ).
    ENDIF.
    t1439->load( ).
    APPEND t1442 TO t1439->items.
    t1439->save( ).
    DATA t1456 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1457 TYPE string.
    t1457 = |on_null|.
    DATA t1459 TYPE string.
    t1459 = |abap_only|.
    DATA t1461 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1465) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1465->has = abap_true.
    t1465->value = abap_true.
    t1461 = t1465.
    t1456 = NEW zcl_lnt_sql_named_param( i_name = t1457 i_value = t1459 i_optional = t1461 ).
    CREATE OBJECT t1456->zlnt_view_ownkeys_b0e8086400eb.
    t1456->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1456->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1467 ).
    DATA t1468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1456->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1456->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1468 ).
    ENDIF.
    DATA t1469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1456->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1456->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1469 ).
    ENDIF.
    CREATE OBJECT t1456->zlnt_json_ownkeys_70e5fd461788.
    t1456->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1470) = |name|.
    DATA t1471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1456->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1470 p1 = t1471 ).
    DATA(t1472) = |value|.
    DATA t1473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1456->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1456->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1472 p1 = t1473 ).
    ENDIF.
    DATA(t1474) = |optional|.
    DATA t1475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1456->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1456->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1474 p1 = t1475 ).
    ENDIF.
    t1439->load( ).
    APPEND t1456 TO t1439->items.
    t1439->save( ).
    t1438 = t1439.
    t1432 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1433 i_f1 = t1434 i_f2 = t1438 ).
    t643->load( ).
    APPEND t1432 TO t643->items.
    t643->save( ).
    DATA t1478 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t1479) = |tims_to_timn|.
    DATA t1480 TYPE REF TO zcl_lnt_abap_release.
    DATA t1481 TYPE REF TO zcl_lnt_abap_release.
    DATA t1482 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1482 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1483) = |v757|.
    t1481 = t1482->get( p0 = t1483 ).
    t1480 = t1481.
    DATA t1484 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1485 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1486 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1486.
    t1485 = t1486.
    DATA t1488 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1489 TYPE string.
    t1489 = |tims|.
    DATA t1491 TYPE string.
    t1491 = |any|.
    DATA t1493 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1488 = NEW zcl_lnt_sql_named_param( i_name = t1489 i_value = t1491 i_optional = t1493 ).
    CREATE OBJECT t1488->zlnt_view_ownkeys_b0e8086400eb.
    t1488->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1488->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1495 ).
    DATA t1496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1488->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1488->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1496 ).
    ENDIF.
    CREATE OBJECT t1488->zlnt_json_ownkeys_70e5fd461788.
    t1488->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1497) = |name|.
    DATA t1498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1488->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1497 p1 = t1498 ).
    DATA(t1499) = |value|.
    DATA t1500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1488->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1488->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1499 p1 = t1500 ).
    ENDIF.
    t1485->load( ).
    APPEND t1488 TO t1485->items.
    t1485->save( ).
    DATA t1502 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1503 TYPE string.
    t1503 = |on_error|.
    DATA t1505 TYPE string.
    t1505 = |abap_only|.
    DATA t1507 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1511) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1511->has = abap_true.
    t1511->value = abap_true.
    t1507 = t1511.
    t1502 = NEW zcl_lnt_sql_named_param( i_name = t1503 i_value = t1505 i_optional = t1507 ).
    CREATE OBJECT t1502->zlnt_view_ownkeys_b0e8086400eb.
    t1502->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1502->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1513 ).
    DATA t1514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1502->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1502->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1514 ).
    ENDIF.
    DATA t1515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1502->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1502->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1515 ).
    ENDIF.
    CREATE OBJECT t1502->zlnt_json_ownkeys_70e5fd461788.
    t1502->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1516) = |name|.
    DATA t1517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1502->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1516 p1 = t1517 ).
    DATA(t1518) = |value|.
    DATA t1519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1502->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1502->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1518 p1 = t1519 ).
    ENDIF.
    DATA(t1520) = |optional|.
    DATA t1521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1502->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1502->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1520 p1 = t1521 ).
    ENDIF.
    t1485->load( ).
    APPEND t1502 TO t1485->items.
    t1485->save( ).
    t1484 = t1485.
    t1478 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1479 i_f1 = t1480 i_f2 = t1484 ).
    t643->load( ).
    APPEND t1478 TO t643->items.
    t643->save( ).
    DATA t1524 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t1525) = |tims_from_timn|.
    DATA t1526 TYPE REF TO zcl_lnt_abap_release.
    DATA t1527 TYPE REF TO zcl_lnt_abap_release.
    DATA t1528 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1528 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1529) = |v757|.
    t1527 = t1528->get( p0 = t1529 ).
    t1526 = t1527.
    DATA t1530 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1531 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1532 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1532.
    t1531 = t1532.
    DATA t1534 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1535 TYPE string.
    t1535 = |timn|.
    DATA t1537 TYPE string.
    t1537 = |any|.
    DATA t1539 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1534 = NEW zcl_lnt_sql_named_param( i_name = t1535 i_value = t1537 i_optional = t1539 ).
    CREATE OBJECT t1534->zlnt_view_ownkeys_b0e8086400eb.
    t1534->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1541 ).
    DATA t1542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1542 ).
    ENDIF.
    CREATE OBJECT t1534->zlnt_json_ownkeys_70e5fd461788.
    t1534->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1543) = |name|.
    DATA t1544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1543 p1 = t1544 ).
    DATA(t1545) = |value|.
    DATA t1546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1545 p1 = t1546 ).
    ENDIF.
    t1531->load( ).
    APPEND t1534 TO t1531->items.
    t1531->save( ).
    DATA t1548 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1549 TYPE string.
    t1549 = |on_null|.
    DATA t1551 TYPE string.
    t1551 = |abap_only|.
    DATA t1553 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1557) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1557->has = abap_true.
    t1557->value = abap_true.
    t1553 = t1557.
    t1548 = NEW zcl_lnt_sql_named_param( i_name = t1549 i_value = t1551 i_optional = t1553 ).
    CREATE OBJECT t1548->zlnt_view_ownkeys_b0e8086400eb.
    t1548->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1548->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1559 ).
    DATA t1560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1548->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1548->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1560 ).
    ENDIF.
    DATA t1561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1548->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1548->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1561 ).
    ENDIF.
    CREATE OBJECT t1548->zlnt_json_ownkeys_70e5fd461788.
    t1548->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1562) = |name|.
    DATA t1563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1548->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1562 p1 = t1563 ).
    DATA(t1564) = |value|.
    DATA t1565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1548->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1548->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1564 p1 = t1565 ).
    ENDIF.
    DATA(t1566) = |optional|.
    DATA t1567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1548->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1548->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1566 p1 = t1567 ).
    ENDIF.
    t1531->load( ).
    APPEND t1548 TO t1531->items.
    t1531->save( ).
    t1530 = t1531.
    t1524 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1525 i_f1 = t1526 i_f2 = t1530 ).
    t643->load( ).
    APPEND t1524 TO t643->items.
    t643->save( ).
    DATA t1570 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t1571) = |currency_conversion|.
    DATA t1572 TYPE REF TO zcl_lnt_abap_release.
    DATA t1573 TYPE REF TO zcl_lnt_abap_release.
    DATA t1574 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1574 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1575) = |v757|.
    t1573 = t1574->get( p0 = t1575 ).
    t1572 = t1573.
    DATA t1576 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1577 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1578 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1578.
    t1577 = t1578.
    DATA t1580 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1581 TYPE string.
    t1581 = |amount|.
    DATA t1583 TYPE string.
    t1583 = |any|.
    DATA t1585 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1580 = NEW zcl_lnt_sql_named_param( i_name = t1581 i_value = t1583 i_optional = t1585 ).
    CREATE OBJECT t1580->zlnt_view_ownkeys_b0e8086400eb.
    t1580->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1580->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1587 ).
    DATA t1588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1580->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1580->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1588 ).
    ENDIF.
    CREATE OBJECT t1580->zlnt_json_ownkeys_70e5fd461788.
    t1580->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1589) = |name|.
    DATA t1590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1580->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1589 p1 = t1590 ).
    DATA(t1591) = |value|.
    DATA t1592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1580->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1580->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1591 p1 = t1592 ).
    ENDIF.
    t1577->load( ).
    APPEND t1580 TO t1577->items.
    t1577->save( ).
    DATA t1594 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1595 TYPE string.
    t1595 = |source_currency|.
    DATA t1597 TYPE string.
    t1597 = |any|.
    DATA t1599 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1594 = NEW zcl_lnt_sql_named_param( i_name = t1595 i_value = t1597 i_optional = t1599 ).
    CREATE OBJECT t1594->zlnt_view_ownkeys_b0e8086400eb.
    t1594->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1594->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1601 ).
    DATA t1602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1594->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1594->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1602 ).
    ENDIF.
    CREATE OBJECT t1594->zlnt_json_ownkeys_70e5fd461788.
    t1594->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1603) = |name|.
    DATA t1604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1594->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1603 p1 = t1604 ).
    DATA(t1605) = |value|.
    DATA t1606 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1594->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1594->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1605 p1 = t1606 ).
    ENDIF.
    t1577->load( ).
    APPEND t1594 TO t1577->items.
    t1577->save( ).
    DATA t1608 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1609 TYPE string.
    t1609 = |target_currency|.
    DATA t1611 TYPE string.
    t1611 = |any|.
    DATA t1613 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1608 = NEW zcl_lnt_sql_named_param( i_name = t1609 i_value = t1611 i_optional = t1613 ).
    CREATE OBJECT t1608->zlnt_view_ownkeys_b0e8086400eb.
    t1608->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1615 ).
    DATA t1616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1616 ).
    ENDIF.
    CREATE OBJECT t1608->zlnt_json_ownkeys_70e5fd461788.
    t1608->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1617) = |name|.
    DATA t1618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1617 p1 = t1618 ).
    DATA(t1619) = |value|.
    DATA t1620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1619 p1 = t1620 ).
    ENDIF.
    t1577->load( ).
    APPEND t1608 TO t1577->items.
    t1577->save( ).
    DATA t1622 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1623 TYPE string.
    t1623 = |exchange_rate_date|.
    DATA t1625 TYPE string.
    t1625 = |any|.
    DATA t1627 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1622 = NEW zcl_lnt_sql_named_param( i_name = t1623 i_value = t1625 i_optional = t1627 ).
    CREATE OBJECT t1622->zlnt_view_ownkeys_b0e8086400eb.
    t1622->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1629 ).
    DATA t1630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1630 ).
    ENDIF.
    CREATE OBJECT t1622->zlnt_json_ownkeys_70e5fd461788.
    t1622->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1631) = |name|.
    DATA t1632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1631 p1 = t1632 ).
    DATA(t1633) = |value|.
    DATA t1634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1633 p1 = t1634 ).
    ENDIF.
    t1577->load( ).
    APPEND t1622 TO t1577->items.
    t1577->save( ).
    DATA t1636 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1637 TYPE string.
    t1637 = |exchange_rate_type|.
    DATA t1639 TYPE string.
    t1639 = |any|.
    DATA t1641 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1645) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1645->has = abap_true.
    t1645->value = abap_true.
    t1641 = t1645.
    t1636 = NEW zcl_lnt_sql_named_param( i_name = t1637 i_value = t1639 i_optional = t1641 ).
    CREATE OBJECT t1636->zlnt_view_ownkeys_b0e8086400eb.
    t1636->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1636->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1647 ).
    DATA t1648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1636->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1636->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1648 ).
    ENDIF.
    DATA t1649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1636->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1636->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1649 ).
    ENDIF.
    CREATE OBJECT t1636->zlnt_json_ownkeys_70e5fd461788.
    t1636->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1650) = |name|.
    DATA t1651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1636->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1650 p1 = t1651 ).
    DATA(t1652) = |value|.
    DATA t1653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1636->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1636->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1652 p1 = t1653 ).
    ENDIF.
    DATA(t1654) = |optional|.
    DATA t1655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1636->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1636->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1654 p1 = t1655 ).
    ENDIF.
    t1577->load( ).
    APPEND t1636 TO t1577->items.
    t1577->save( ).
    DATA t1657 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1658 TYPE string.
    t1658 = |client|.
    DATA t1660 TYPE string.
    t1660 = |any|.
    DATA t1662 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1666) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1666->has = abap_true.
    t1666->value = abap_true.
    t1662 = t1666.
    t1657 = NEW zcl_lnt_sql_named_param( i_name = t1658 i_value = t1660 i_optional = t1662 ).
    CREATE OBJECT t1657->zlnt_view_ownkeys_b0e8086400eb.
    t1657->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1668 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1668 ).
    DATA t1669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1669 ).
    ENDIF.
    DATA t1670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1670 ).
    ENDIF.
    CREATE OBJECT t1657->zlnt_json_ownkeys_70e5fd461788.
    t1657->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1671) = |name|.
    DATA t1672 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1671 p1 = t1672 ).
    DATA(t1673) = |value|.
    DATA t1674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1673 p1 = t1674 ).
    ENDIF.
    DATA(t1675) = |optional|.
    DATA t1676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1675 p1 = t1676 ).
    ENDIF.
    t1577->load( ).
    APPEND t1657 TO t1577->items.
    t1577->save( ).
    DATA t1678 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1679 TYPE string.
    t1679 = |round|.
    DATA t1681 TYPE string.
    t1681 = |abap_only|.
    DATA t1683 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1687) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1687->has = abap_true.
    t1687->value = abap_true.
    t1683 = t1687.
    t1678 = NEW zcl_lnt_sql_named_param( i_name = t1679 i_value = t1681 i_optional = t1683 ).
    CREATE OBJECT t1678->zlnt_view_ownkeys_b0e8086400eb.
    t1678->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1678->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1689 ).
    DATA t1690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1678->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1678->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1690 ).
    ENDIF.
    DATA t1691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1678->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1678->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1691 ).
    ENDIF.
    CREATE OBJECT t1678->zlnt_json_ownkeys_70e5fd461788.
    t1678->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1692) = |name|.
    DATA t1693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1678->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1692 p1 = t1693 ).
    DATA(t1694) = |value|.
    DATA t1695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1678->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1678->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1694 p1 = t1695 ).
    ENDIF.
    DATA(t1696) = |optional|.
    DATA t1697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1678->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1678->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1696 p1 = t1697 ).
    ENDIF.
    t1577->load( ).
    APPEND t1678 TO t1577->items.
    t1577->save( ).
    DATA t1699 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1700 TYPE string.
    t1700 = |decimal_shift|.
    DATA t1702 TYPE string.
    t1702 = |abap_only|.
    DATA t1704 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1708) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1708->has = abap_true.
    t1708->value = abap_true.
    t1704 = t1708.
    t1699 = NEW zcl_lnt_sql_named_param( i_name = t1700 i_value = t1702 i_optional = t1704 ).
    CREATE OBJECT t1699->zlnt_view_ownkeys_b0e8086400eb.
    t1699->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1699->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1710 ).
    DATA t1711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1699->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1699->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1711 ).
    ENDIF.
    DATA t1712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1699->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1699->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1712 ).
    ENDIF.
    CREATE OBJECT t1699->zlnt_json_ownkeys_70e5fd461788.
    t1699->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1713) = |name|.
    DATA t1714 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1699->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1713 p1 = t1714 ).
    DATA(t1715) = |value|.
    DATA t1716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1699->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1699->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1715 p1 = t1716 ).
    ENDIF.
    DATA(t1717) = |optional|.
    DATA t1718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1699->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1699->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1717 p1 = t1718 ).
    ENDIF.
    t1577->load( ).
    APPEND t1699 TO t1577->items.
    t1577->save( ).
    DATA t1720 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1721 TYPE string.
    t1721 = |decimal_shift_back|.
    DATA t1723 TYPE string.
    t1723 = |abap_only|.
    DATA t1725 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1729) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1729->has = abap_true.
    t1729->value = abap_true.
    t1725 = t1729.
    t1720 = NEW zcl_lnt_sql_named_param( i_name = t1721 i_value = t1723 i_optional = t1725 ).
    CREATE OBJECT t1720->zlnt_view_ownkeys_b0e8086400eb.
    t1720->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1720->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1731 ).
    DATA t1732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1720->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1720->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1732 ).
    ENDIF.
    DATA t1733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1720->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1720->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1733 ).
    ENDIF.
    CREATE OBJECT t1720->zlnt_json_ownkeys_70e5fd461788.
    t1720->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1734) = |name|.
    DATA t1735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1720->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1734 p1 = t1735 ).
    DATA(t1736) = |value|.
    DATA t1737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1720->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1720->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1736 p1 = t1737 ).
    ENDIF.
    DATA(t1738) = |optional|.
    DATA t1739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1720->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1720->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1738 p1 = t1739 ).
    ENDIF.
    t1577->load( ).
    APPEND t1720 TO t1577->items.
    t1577->save( ).
    DATA t1741 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1742 TYPE string.
    t1742 = |on_error|.
    DATA t1744 TYPE string.
    t1744 = |abap_only|.
    DATA t1746 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1750) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1750->has = abap_true.
    t1750->value = abap_true.
    t1746 = t1750.
    t1741 = NEW zcl_lnt_sql_named_param( i_name = t1742 i_value = t1744 i_optional = t1746 ).
    CREATE OBJECT t1741->zlnt_view_ownkeys_b0e8086400eb.
    t1741->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1752 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1741->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1752 ).
    DATA t1753 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1741->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1741->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1753 ).
    ENDIF.
    DATA t1754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1741->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1741->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1754 ).
    ENDIF.
    CREATE OBJECT t1741->zlnt_json_ownkeys_70e5fd461788.
    t1741->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1755) = |name|.
    DATA t1756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1741->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1755 p1 = t1756 ).
    DATA(t1757) = |value|.
    DATA t1758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1741->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1741->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1757 p1 = t1758 ).
    ENDIF.
    DATA(t1759) = |optional|.
    DATA t1760 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1741->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1741->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1759 p1 = t1760 ).
    ENDIF.
    t1577->load( ).
    APPEND t1741 TO t1577->items.
    t1577->save( ).
    t1576 = t1577.
    t1570 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1571 i_f1 = t1572 i_f2 = t1576 ).
    t643->load( ).
    APPEND t1570 TO t643->items.
    t643->save( ).
    DATA t1763 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t1764) = |unit_conversion|.
    DATA t1765 TYPE REF TO zcl_lnt_abap_release.
    DATA t1766 TYPE REF TO zcl_lnt_abap_release.
    DATA t1767 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1767 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1768) = |v758|.
    t1766 = t1767->get( p0 = t1768 ).
    t1765 = t1766.
    DATA t1769 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1770 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1771 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1771.
    t1770 = t1771.
    DATA t1773 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1774 TYPE string.
    t1774 = |quantity|.
    DATA t1776 TYPE string.
    t1776 = |any|.
    DATA t1778 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1773 = NEW zcl_lnt_sql_named_param( i_name = t1774 i_value = t1776 i_optional = t1778 ).
    CREATE OBJECT t1773->zlnt_view_ownkeys_b0e8086400eb.
    t1773->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1773->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1780 ).
    DATA t1781 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1773->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1773->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1781 ).
    ENDIF.
    CREATE OBJECT t1773->zlnt_json_ownkeys_70e5fd461788.
    t1773->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1782) = |name|.
    DATA t1783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1773->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1782 p1 = t1783 ).
    DATA(t1784) = |value|.
    DATA t1785 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1773->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1773->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1784 p1 = t1785 ).
    ENDIF.
    t1770->load( ).
    APPEND t1773 TO t1770->items.
    t1770->save( ).
    DATA t1787 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1788 TYPE string.
    t1788 = |source_unit|.
    DATA t1790 TYPE string.
    t1790 = |any|.
    DATA t1792 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1787 = NEW zcl_lnt_sql_named_param( i_name = t1788 i_value = t1790 i_optional = t1792 ).
    CREATE OBJECT t1787->zlnt_view_ownkeys_b0e8086400eb.
    t1787->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1787->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1794 ).
    DATA t1795 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1787->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1787->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1795 ).
    ENDIF.
    CREATE OBJECT t1787->zlnt_json_ownkeys_70e5fd461788.
    t1787->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1796) = |name|.
    DATA t1797 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1787->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1796 p1 = t1797 ).
    DATA(t1798) = |value|.
    DATA t1799 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1787->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1787->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1798 p1 = t1799 ).
    ENDIF.
    t1770->load( ).
    APPEND t1787 TO t1770->items.
    t1770->save( ).
    DATA t1801 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1802 TYPE string.
    t1802 = |target_unit|.
    DATA t1804 TYPE string.
    t1804 = |any|.
    DATA t1806 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1801 = NEW zcl_lnt_sql_named_param( i_name = t1802 i_value = t1804 i_optional = t1806 ).
    CREATE OBJECT t1801->zlnt_view_ownkeys_b0e8086400eb.
    t1801->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1801->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1808 ).
    DATA t1809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1801->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1801->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1809 ).
    ENDIF.
    CREATE OBJECT t1801->zlnt_json_ownkeys_70e5fd461788.
    t1801->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1810) = |name|.
    DATA t1811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1801->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1810 p1 = t1811 ).
    DATA(t1812) = |value|.
    DATA t1813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1801->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1801->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1812 p1 = t1813 ).
    ENDIF.
    t1770->load( ).
    APPEND t1801 TO t1770->items.
    t1770->save( ).
    DATA t1815 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1816 TYPE string.
    t1816 = |client|.
    DATA t1818 TYPE string.
    t1818 = |any|.
    DATA t1820 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1824) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1824->has = abap_true.
    t1824->value = abap_true.
    t1820 = t1824.
    t1815 = NEW zcl_lnt_sql_named_param( i_name = t1816 i_value = t1818 i_optional = t1820 ).
    CREATE OBJECT t1815->zlnt_view_ownkeys_b0e8086400eb.
    t1815->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1815->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1826 ).
    DATA t1827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1815->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1815->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1827 ).
    ENDIF.
    DATA t1828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1815->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1815->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1828 ).
    ENDIF.
    CREATE OBJECT t1815->zlnt_json_ownkeys_70e5fd461788.
    t1815->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1829) = |name|.
    DATA t1830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1815->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1829 p1 = t1830 ).
    DATA(t1831) = |value|.
    DATA t1832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1815->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1815->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1831 p1 = t1832 ).
    ENDIF.
    DATA(t1833) = |optional|.
    DATA t1834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1815->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1815->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1833 p1 = t1834 ).
    ENDIF.
    t1770->load( ).
    APPEND t1815 TO t1770->items.
    t1770->save( ).
    DATA t1836 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1837 TYPE string.
    t1837 = |on_error|.
    DATA t1839 TYPE string.
    t1839 = |abap_only|.
    DATA t1841 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1845) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1845->has = abap_true.
    t1845->value = abap_true.
    t1841 = t1845.
    t1836 = NEW zcl_lnt_sql_named_param( i_name = t1837 i_value = t1839 i_optional = t1841 ).
    CREATE OBJECT t1836->zlnt_view_ownkeys_b0e8086400eb.
    t1836->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1836->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1847 ).
    DATA t1848 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1836->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1836->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1848 ).
    ENDIF.
    DATA t1849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1836->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1836->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1849 ).
    ENDIF.
    CREATE OBJECT t1836->zlnt_json_ownkeys_70e5fd461788.
    t1836->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1850) = |name|.
    DATA t1851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1836->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1850 p1 = t1851 ).
    DATA(t1852) = |value|.
    DATA t1853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1836->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1836->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1852 p1 = t1853 ).
    ENDIF.
    DATA(t1854) = |optional|.
    DATA t1855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1836->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1836->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1854 p1 = t1855 ).
    ENDIF.
    t1770->load( ).
    APPEND t1836 TO t1770->items.
    t1770->save( ).
    t1769 = t1770.
    t1763 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1764 i_f1 = t1765 i_f2 = t1769 ).
    t643->load( ).
    APPEND t1763 TO t643->items.
    t643->save( ).
    DATA t1858 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t1859) = |curr_to_decfloat_amount|.
    DATA t1860 TYPE REF TO zcl_lnt_abap_release.
    DATA t1861 TYPE REF TO zcl_lnt_abap_release.
    DATA t1862 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1862 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1863) = |v758|.
    t1861 = t1862->get( p0 = t1863 ).
    t1860 = t1861.
    DATA t1864 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1865 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1866 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1866.
    t1865 = t1866.
    DATA t1868 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1869 TYPE string.
    t1869 = |curr|.
    DATA t1871 TYPE string.
    t1871 = |any|.
    DATA t1873 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1868 = NEW zcl_lnt_sql_named_param( i_name = t1869 i_value = t1871 i_optional = t1873 ).
    CREATE OBJECT t1868->zlnt_view_ownkeys_b0e8086400eb.
    t1868->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1868->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1875 ).
    DATA t1876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1868->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1868->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1876 ).
    ENDIF.
    CREATE OBJECT t1868->zlnt_json_ownkeys_70e5fd461788.
    t1868->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1877) = |name|.
    DATA t1878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1868->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1877 p1 = t1878 ).
    DATA(t1879) = |value|.
    DATA t1880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1868->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1868->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1879 p1 = t1880 ).
    ENDIF.
    t1865->load( ).
    APPEND t1868 TO t1865->items.
    t1865->save( ).
    DATA t1882 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1883 TYPE string.
    t1883 = |cuky|.
    DATA t1885 TYPE string.
    t1885 = |any|.
    DATA t1887 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1882 = NEW zcl_lnt_sql_named_param( i_name = t1883 i_value = t1885 i_optional = t1887 ).
    CREATE OBJECT t1882->zlnt_view_ownkeys_b0e8086400eb.
    t1882->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1889 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1889 ).
    DATA t1890 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1890 ).
    ENDIF.
    CREATE OBJECT t1882->zlnt_json_ownkeys_70e5fd461788.
    t1882->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1891) = |name|.
    DATA t1892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1891 p1 = t1892 ).
    DATA(t1893) = |value|.
    DATA t1894 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1893 p1 = t1894 ).
    ENDIF.
    t1865->load( ).
    APPEND t1882 TO t1865->items.
    t1865->save( ).
    t1864 = t1865.
    t1858 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1859 i_f1 = t1860 i_f2 = t1864 ).
    t643->load( ).
    APPEND t1858 TO t643->items.
    t643->save( ).
    DATA t1897 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t1898) = |lang_to_char|.
    DATA t1899 TYPE REF TO zcl_lnt_abap_release.
    DATA t1900 TYPE REF TO zcl_lnt_abap_release.
    DATA t1901 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1901 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1902) = |v758|.
    t1900 = t1901->get( p0 = t1902 ).
    t1899 = t1900.
    DATA t1903 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1904 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1905 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1905.
    t1904 = t1905.
    DATA t1907 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1908 TYPE string.
    t1908 = |lang|.
    DATA t1910 TYPE string.
    t1910 = |any|.
    DATA t1912 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1907 = NEW zcl_lnt_sql_named_param( i_name = t1908 i_value = t1910 i_optional = t1912 ).
    CREATE OBJECT t1907->zlnt_view_ownkeys_b0e8086400eb.
    t1907->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1914 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1907->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1914 ).
    DATA t1915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1907->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1907->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1915 ).
    ENDIF.
    CREATE OBJECT t1907->zlnt_json_ownkeys_70e5fd461788.
    t1907->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1916) = |name|.
    DATA t1917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1907->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1916 p1 = t1917 ).
    DATA(t1918) = |value|.
    DATA t1919 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1907->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1907->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1918 p1 = t1919 ).
    ENDIF.
    t1904->load( ).
    APPEND t1907 TO t1904->items.
    t1904->save( ).
    t1903 = t1904.
    t1897 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1898 i_f1 = t1899 i_f2 = t1903 ).
    t643->load( ).
    APPEND t1897 TO t643->items.
    t643->save( ).
    DATA t1922 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA(t1923) = |ipow|.
    DATA t1924 TYPE REF TO zcl_lnt_abap_release.
    DATA t1925 TYPE REF TO zcl_lnt_abap_release.
    DATA t1926 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1926 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1927) = |v758|.
    t1925 = t1926->get( p0 = t1927 ).
    t1924 = t1925.
    DATA t1928 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1929 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1930 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1930.
    t1929 = t1930.
    DATA t1932 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1933 TYPE string.
    t1933 = |base|.
    DATA t1935 TYPE string.
    t1935 = |any|.
    DATA t1937 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1932 = NEW zcl_lnt_sql_named_param( i_name = t1933 i_value = t1935 i_optional = t1937 ).
    CREATE OBJECT t1932->zlnt_view_ownkeys_b0e8086400eb.
    t1932->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1932->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1939 ).
    DATA t1940 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1932->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1932->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1940 ).
    ENDIF.
    CREATE OBJECT t1932->zlnt_json_ownkeys_70e5fd461788.
    t1932->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1941) = |name|.
    DATA t1942 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1932->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1941 p1 = t1942 ).
    DATA(t1943) = |value|.
    DATA t1944 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1932->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1932->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1943 p1 = t1944 ).
    ENDIF.
    t1929->load( ).
    APPEND t1932 TO t1929->items.
    t1929->save( ).
    DATA t1946 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1947 TYPE string.
    t1947 = |exp|.
    DATA t1949 TYPE string.
    t1949 = |any|.
    DATA t1951 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1946 = NEW zcl_lnt_sql_named_param( i_name = t1947 i_value = t1949 i_optional = t1951 ).
    CREATE OBJECT t1946->zlnt_view_ownkeys_b0e8086400eb.
    t1946->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1953 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1946->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1953 ).
    DATA t1954 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1946->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1946->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t1954 ).
    ENDIF.
    CREATE OBJECT t1946->zlnt_json_ownkeys_70e5fd461788.
    t1946->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1955) = |name|.
    DATA t1956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1946->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1955 p1 = t1956 ).
    DATA(t1957) = |value|.
    DATA t1958 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1946->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1946->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1957 p1 = t1958 ).
    ENDIF.
    t1929->load( ).
    APPEND t1946 TO t1929->items.
    t1929->save( ).
    t1928 = t1929.
    t1922 = NEW zcl_lnt_tuple_443ddf92( i_f0 = t1923 i_f1 = t1924 i_f2 = t1928 ).
    t643->load( ).
    APPEND t1922 TO t643->items.
    t643->save( ).
    zcl_lnt_sql_function_module=>sql_named_function_defs = t643.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    DATA t1962 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1963 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1963.
    t1962 = t1963.
    DATA t1965 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t1966) = |st_new_point|.
    DATA t1967 TYPE f.
    DATA(t1968) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1967 = t1968.
    DATA t1969 TYPE REF TO zcl_lnt_abap_release.
    DATA t1970 TYPE REF TO zcl_lnt_abap_release.
    DATA t1971 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1971 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1972) = |v915|.
    t1970 = t1971->get( p0 = t1972 ).
    t1969 = t1970.
    t1965 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1966 i_f1 = t1967 i_f2 = t1969 ).
    t1962->load( ).
    APPEND t1965 TO t1962->items.
    t1962->save( ).
    DATA t1974 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t1975) = |st_new_pointz|.
    DATA t1976 TYPE f.
    DATA(t1977) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1976 = t1977.
    DATA t1978 TYPE REF TO zcl_lnt_abap_release.
    DATA t1979 TYPE REF TO zcl_lnt_abap_release.
    DATA t1980 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1980 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1981) = |v915|.
    t1979 = t1980->get( p0 = t1981 ).
    t1978 = t1979.
    t1974 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1975 i_f1 = t1976 i_f2 = t1978 ).
    t1962->load( ).
    APPEND t1974 TO t1962->items.
    t1962->save( ).
    DATA t1983 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t1984) = |st_new_pointm|.
    DATA t1985 TYPE f.
    DATA(t1986) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1985 = t1986.
    DATA t1987 TYPE REF TO zcl_lnt_abap_release.
    DATA t1988 TYPE REF TO zcl_lnt_abap_release.
    DATA t1989 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1989 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1990) = |v915|.
    t1988 = t1989->get( p0 = t1990 ).
    t1987 = t1988.
    t1983 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1984 i_f1 = t1985 i_f2 = t1987 ).
    t1962->load( ).
    APPEND t1983 TO t1962->items.
    t1962->save( ).
    DATA t1992 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t1993) = |st_new_pointzm|.
    DATA t1994 TYPE f.
    DATA(t1995) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1994 = t1995.
    DATA t1996 TYPE REF TO zcl_lnt_abap_release.
    DATA t1997 TYPE REF TO zcl_lnt_abap_release.
    DATA t1998 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1998 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1999) = |v915|.
    t1997 = t1998->get( p0 = t1999 ).
    t1996 = t1997.
    t1992 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t1993 i_f1 = t1994 i_f2 = t1996 ).
    t1962->load( ).
    APPEND t1992 TO t1962->items.
    t1962->save( ).
    DATA t2001 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2002) = |st_new_linestring|.
    DATA t2003 TYPE f.
    DATA(t2004) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2003 = t2004.
    DATA t2005 TYPE REF TO zcl_lnt_abap_release.
    DATA t2006 TYPE REF TO zcl_lnt_abap_release.
    DATA t2007 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2007 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2008) = |v915|.
    t2006 = t2007->get( p0 = t2008 ).
    t2005 = t2006.
    t2001 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2002 i_f1 = t2003 i_f2 = t2005 ).
    t1962->load( ).
    APPEND t2001 TO t1962->items.
    t1962->save( ).
    DATA t2010 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2011) = |st_new_multilinestring|.
    DATA t2012 TYPE f.
    DATA(t2013) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2012 = t2013.
    DATA t2014 TYPE REF TO zcl_lnt_abap_release.
    DATA t2015 TYPE REF TO zcl_lnt_abap_release.
    DATA t2016 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2016 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2017) = |v915|.
    t2015 = t2016->get( p0 = t2017 ).
    t2014 = t2015.
    t2010 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2011 i_f1 = t2012 i_f2 = t2014 ).
    t1962->load( ).
    APPEND t2010 TO t1962->items.
    t1962->save( ).
    DATA t2019 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2020) = |st_new_polygon|.
    DATA t2021 TYPE f.
    DATA(t2022) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2021 = t2022.
    DATA t2023 TYPE REF TO zcl_lnt_abap_release.
    DATA t2024 TYPE REF TO zcl_lnt_abap_release.
    DATA t2025 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2025 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2026) = |v915|.
    t2024 = t2025->get( p0 = t2026 ).
    t2023 = t2024.
    t2019 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2020 i_f1 = t2021 i_f2 = t2023 ).
    t1962->load( ).
    APPEND t2019 TO t1962->items.
    t1962->save( ).
    DATA t2028 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2029) = |st_new_multipolygon|.
    DATA t2030 TYPE f.
    DATA(t2031) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2030 = t2031.
    DATA t2032 TYPE REF TO zcl_lnt_abap_release.
    DATA t2033 TYPE REF TO zcl_lnt_abap_release.
    DATA t2034 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2034 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2035) = |v915|.
    t2033 = t2034->get( p0 = t2035 ).
    t2032 = t2033.
    t2028 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2029 i_f1 = t2030 i_f2 = t2032 ).
    t1962->load( ).
    APPEND t2028 TO t1962->items.
    t1962->save( ).
    DATA t2037 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2038) = |st_new_multipoint|.
    DATA t2039 TYPE f.
    DATA(t2040) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2039 = t2040.
    DATA t2041 TYPE REF TO zcl_lnt_abap_release.
    DATA t2042 TYPE REF TO zcl_lnt_abap_release.
    DATA t2043 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2043 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2044) = |v915|.
    t2042 = t2043->get( p0 = t2044 ).
    t2041 = t2042.
    t2037 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2038 i_f1 = t2039 i_f2 = t2041 ).
    t1962->load( ).
    APPEND t2037 TO t1962->items.
    t1962->save( ).
    DATA t2046 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2047) = |st_new_circularstring|.
    DATA t2048 TYPE f.
    DATA(t2049) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2048 = t2049.
    DATA t2050 TYPE REF TO zcl_lnt_abap_release.
    DATA t2051 TYPE REF TO zcl_lnt_abap_release.
    DATA t2052 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2052 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2053) = |v915|.
    t2051 = t2052->get( p0 = t2053 ).
    t2050 = t2051.
    t2046 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2047 i_f1 = t2048 i_f2 = t2050 ).
    t1962->load( ).
    APPEND t2046 TO t1962->items.
    t1962->save( ).
    DATA t2055 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2056) = |st_new_geometrycollection|.
    DATA t2057 TYPE f.
    DATA(t2058) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2057 = t2058.
    DATA t2059 TYPE REF TO zcl_lnt_abap_release.
    DATA t2060 TYPE REF TO zcl_lnt_abap_release.
    DATA t2061 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2061 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2062) = |v915|.
    t2060 = t2061->get( p0 = t2062 ).
    t2059 = t2060.
    t2055 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2056 i_f1 = t2057 i_f2 = t2059 ).
    t1962->load( ).
    APPEND t2055 TO t1962->items.
    t1962->save( ).
    DATA t2064 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2065) = |st_srid|.
    DATA t2066 TYPE f.
    DATA(t2067) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2066 = t2067.
    DATA t2068 TYPE REF TO zcl_lnt_abap_release.
    DATA t2069 TYPE REF TO zcl_lnt_abap_release.
    DATA t2070 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2070 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2071) = |v915|.
    t2069 = t2070->get( p0 = t2071 ).
    t2068 = t2069.
    t2064 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2065 i_f1 = t2066 i_f2 = t2068 ).
    t1962->load( ).
    APPEND t2064 TO t1962->items.
    t1962->save( ).
    DATA t2073 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2074) = |st_relate|.
    DATA t2075 TYPE f.
    DATA(t2076) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2075 = t2076.
    DATA t2077 TYPE REF TO zcl_lnt_abap_release.
    DATA t2078 TYPE REF TO zcl_lnt_abap_release.
    DATA t2079 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2079 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2080) = |v915|.
    t2078 = t2079->get( p0 = t2080 ).
    t2077 = t2078.
    t2073 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2074 i_f1 = t2075 i_f2 = t2077 ).
    t1962->load( ).
    APPEND t2073 TO t1962->items.
    t1962->save( ).
    DATA t2082 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2083) = |st_geomfromtext|.
    DATA t2084 TYPE f.
    DATA(t2085) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2084 = t2085.
    DATA t2086 TYPE REF TO zcl_lnt_abap_release.
    DATA t2087 TYPE REF TO zcl_lnt_abap_release.
    DATA t2088 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2088 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2089) = |v915|.
    t2087 = t2088->get( p0 = t2089 ).
    t2086 = t2087.
    t2082 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2083 i_f1 = t2084 i_f2 = t2086 ).
    t1962->load( ).
    APPEND t2082 TO t1962->items.
    t1962->save( ).
    DATA t2091 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2092) = |st_geomfromwkt|.
    DATA t2093 TYPE f.
    DATA(t2094) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2093 = t2094.
    DATA t2095 TYPE REF TO zcl_lnt_abap_release.
    DATA t2096 TYPE REF TO zcl_lnt_abap_release.
    DATA t2097 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2097 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2098) = |v915|.
    t2096 = t2097->get( p0 = t2098 ).
    t2095 = t2096.
    t2091 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2092 i_f1 = t2093 i_f2 = t2095 ).
    t1962->load( ).
    APPEND t2091 TO t1962->items.
    t1962->save( ).
    DATA t2100 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2101) = |st_geomfromewkt|.
    DATA t2102 TYPE f.
    DATA(t2103) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2102 = t2103.
    DATA t2104 TYPE REF TO zcl_lnt_abap_release.
    DATA t2105 TYPE REF TO zcl_lnt_abap_release.
    DATA t2106 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2106 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2107) = |v915|.
    t2105 = t2106->get( p0 = t2107 ).
    t2104 = t2105.
    t2100 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2101 i_f1 = t2102 i_f2 = t2104 ).
    t1962->load( ).
    APPEND t2100 TO t1962->items.
    t1962->save( ).
    DATA t2109 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2110) = |st_geomfromwkb|.
    DATA t2111 TYPE f.
    DATA(t2112) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2111 = t2112.
    DATA t2113 TYPE REF TO zcl_lnt_abap_release.
    DATA t2114 TYPE REF TO zcl_lnt_abap_release.
    DATA t2115 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2115 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2116) = |v915|.
    t2114 = t2115->get( p0 = t2116 ).
    t2113 = t2114.
    t2109 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2110 i_f1 = t2111 i_f2 = t2113 ).
    t1962->load( ).
    APPEND t2109 TO t1962->items.
    t1962->save( ).
    DATA t2118 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2119) = |st_geomfromewkb|.
    DATA t2120 TYPE f.
    DATA(t2121) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2120 = t2121.
    DATA t2122 TYPE REF TO zcl_lnt_abap_release.
    DATA t2123 TYPE REF TO zcl_lnt_abap_release.
    DATA t2124 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2124 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2125) = |v915|.
    t2123 = t2124->get( p0 = t2125 ).
    t2122 = t2123.
    t2118 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2119 i_f1 = t2120 i_f2 = t2122 ).
    t1962->load( ).
    APPEND t2118 TO t1962->items.
    t1962->save( ).
    DATA t2127 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2128) = |st_geomfromgeojson|.
    DATA t2129 TYPE f.
    DATA(t2130) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2129 = t2130.
    DATA t2131 TYPE REF TO zcl_lnt_abap_release.
    DATA t2132 TYPE REF TO zcl_lnt_abap_release.
    DATA t2133 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2133 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2134) = |v915|.
    t2132 = t2133->get( p0 = t2134 ).
    t2131 = t2132.
    t2127 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2128 i_f1 = t2129 i_f2 = t2131 ).
    t1962->load( ).
    APPEND t2127 TO t1962->items.
    t1962->save( ).
    DATA t2136 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2137) = |st_geomfromesrijson|.
    DATA t2138 TYPE f.
    DATA(t2139) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2138 = t2139.
    DATA t2140 TYPE REF TO zcl_lnt_abap_release.
    DATA t2141 TYPE REF TO zcl_lnt_abap_release.
    DATA t2142 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2142 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2143) = |v915|.
    t2141 = t2142->get( p0 = t2143 ).
    t2140 = t2141.
    t2136 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2137 i_f1 = t2138 i_f2 = t2140 ).
    t1962->load( ).
    APPEND t2136 TO t1962->items.
    t1962->save( ).
    DATA t2145 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2146) = |st_geomfromgeohash|.
    DATA t2147 TYPE f.
    DATA(t2148) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2147 = t2148.
    DATA t2149 TYPE REF TO zcl_lnt_abap_release.
    DATA t2150 TYPE REF TO zcl_lnt_abap_release.
    DATA t2151 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2151 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2152) = |v915|.
    t2150 = t2151->get( p0 = t2152 ).
    t2149 = t2150.
    t2145 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2146 i_f1 = t2147 i_f2 = t2149 ).
    t1962->load( ).
    APPEND t2145 TO t1962->items.
    t1962->save( ).
    DATA t2154 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2155) = |st_pointfromtext|.
    DATA t2156 TYPE f.
    DATA(t2157) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2156 = t2157.
    DATA t2158 TYPE REF TO zcl_lnt_abap_release.
    DATA t2159 TYPE REF TO zcl_lnt_abap_release.
    DATA t2160 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2160 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2161) = |v915|.
    t2159 = t2160->get( p0 = t2161 ).
    t2158 = t2159.
    t2154 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2155 i_f1 = t2156 i_f2 = t2158 ).
    t1962->load( ).
    APPEND t2154 TO t1962->items.
    t1962->save( ).
    DATA t2163 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2164) = |st_pointfromgeohash|.
    DATA t2165 TYPE f.
    DATA(t2166) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2165 = t2166.
    DATA t2167 TYPE REF TO zcl_lnt_abap_release.
    DATA t2168 TYPE REF TO zcl_lnt_abap_release.
    DATA t2169 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2169 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2170) = |v915|.
    t2168 = t2169->get( p0 = t2170 ).
    t2167 = t2168.
    t2163 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2164 i_f1 = t2165 i_f2 = t2167 ).
    t1962->load( ).
    APPEND t2163 TO t1962->items.
    t1962->save( ).
    DATA t2172 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2173) = |st_makeline|.
    DATA t2174 TYPE f.
    DATA(t2175) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2174 = t2175.
    DATA t2176 TYPE REF TO zcl_lnt_abap_release.
    DATA t2177 TYPE REF TO zcl_lnt_abap_release.
    DATA t2178 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2178 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2179) = |v915|.
    t2177 = t2178->get( p0 = t2179 ).
    t2176 = t2177.
    t2172 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2173 i_f1 = t2174 i_f2 = t2176 ).
    t1962->load( ).
    APPEND t2172 TO t1962->items.
    t1962->save( ).
    DATA t2181 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2182) = |st_makepolygon|.
    DATA t2183 TYPE f.
    DATA(t2184) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2183 = t2184.
    DATA t2185 TYPE REF TO zcl_lnt_abap_release.
    DATA t2186 TYPE REF TO zcl_lnt_abap_release.
    DATA t2187 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2187 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2188) = |v915|.
    t2186 = t2187->get( p0 = t2188 ).
    t2185 = t2186.
    t2181 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2182 i_f1 = t2183 i_f2 = t2185 ).
    t1962->load( ).
    APPEND t2181 TO t1962->items.
    t1962->save( ).
    DATA t2190 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2191) = |st_x|.
    DATA t2192 TYPE f.
    DATA(t2193) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2192 = t2193.
    DATA t2194 TYPE REF TO zcl_lnt_abap_release.
    DATA t2195 TYPE REF TO zcl_lnt_abap_release.
    DATA t2196 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2196 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2197) = |v915|.
    t2195 = t2196->get( p0 = t2197 ).
    t2194 = t2195.
    t2190 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2191 i_f1 = t2192 i_f2 = t2194 ).
    t1962->load( ).
    APPEND t2190 TO t1962->items.
    t1962->save( ).
    DATA t2199 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2200) = |st_y|.
    DATA t2201 TYPE f.
    DATA(t2202) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2201 = t2202.
    DATA t2203 TYPE REF TO zcl_lnt_abap_release.
    DATA t2204 TYPE REF TO zcl_lnt_abap_release.
    DATA t2205 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2205 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2206) = |v915|.
    t2204 = t2205->get( p0 = t2206 ).
    t2203 = t2204.
    t2199 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2200 i_f1 = t2201 i_f2 = t2203 ).
    t1962->load( ).
    APPEND t2199 TO t1962->items.
    t1962->save( ).
    DATA t2208 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2209) = |st_z|.
    DATA t2210 TYPE f.
    DATA(t2211) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2210 = t2211.
    DATA t2212 TYPE REF TO zcl_lnt_abap_release.
    DATA t2213 TYPE REF TO zcl_lnt_abap_release.
    DATA t2214 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2214 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2215) = |v915|.
    t2213 = t2214->get( p0 = t2215 ).
    t2212 = t2213.
    t2208 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2209 i_f1 = t2210 i_f2 = t2212 ).
    t1962->load( ).
    APPEND t2208 TO t1962->items.
    t1962->save( ).
    DATA t2217 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2218) = |st_m|.
    DATA t2219 TYPE f.
    DATA(t2220) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2219 = t2220.
    DATA t2221 TYPE REF TO zcl_lnt_abap_release.
    DATA t2222 TYPE REF TO zcl_lnt_abap_release.
    DATA t2223 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2223 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2224) = |v915|.
    t2222 = t2223->get( p0 = t2224 ).
    t2221 = t2222.
    t2217 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2218 i_f1 = t2219 i_f2 = t2221 ).
    t1962->load( ).
    APPEND t2217 TO t1962->items.
    t1962->save( ).
    DATA t2226 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2227) = |st_xmax|.
    DATA t2228 TYPE f.
    DATA(t2229) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2228 = t2229.
    DATA t2230 TYPE REF TO zcl_lnt_abap_release.
    DATA t2231 TYPE REF TO zcl_lnt_abap_release.
    DATA t2232 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2232 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2233) = |v915|.
    t2231 = t2232->get( p0 = t2233 ).
    t2230 = t2231.
    t2226 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2227 i_f1 = t2228 i_f2 = t2230 ).
    t1962->load( ).
    APPEND t2226 TO t1962->items.
    t1962->save( ).
    DATA t2235 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2236) = |st_xmin|.
    DATA t2237 TYPE f.
    DATA(t2238) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2237 = t2238.
    DATA t2239 TYPE REF TO zcl_lnt_abap_release.
    DATA t2240 TYPE REF TO zcl_lnt_abap_release.
    DATA t2241 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2241 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2242) = |v915|.
    t2240 = t2241->get( p0 = t2242 ).
    t2239 = t2240.
    t2235 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2236 i_f1 = t2237 i_f2 = t2239 ).
    t1962->load( ).
    APPEND t2235 TO t1962->items.
    t1962->save( ).
    DATA t2244 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2245) = |st_ymax|.
    DATA t2246 TYPE f.
    DATA(t2247) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2246 = t2247.
    DATA t2248 TYPE REF TO zcl_lnt_abap_release.
    DATA t2249 TYPE REF TO zcl_lnt_abap_release.
    DATA t2250 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2250 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2251) = |v915|.
    t2249 = t2250->get( p0 = t2251 ).
    t2248 = t2249.
    t2244 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2245 i_f1 = t2246 i_f2 = t2248 ).
    t1962->load( ).
    APPEND t2244 TO t1962->items.
    t1962->save( ).
    DATA t2253 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2254) = |st_ymin|.
    DATA t2255 TYPE f.
    DATA(t2256) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2255 = t2256.
    DATA t2257 TYPE REF TO zcl_lnt_abap_release.
    DATA t2258 TYPE REF TO zcl_lnt_abap_release.
    DATA t2259 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2259 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2260) = |v915|.
    t2258 = t2259->get( p0 = t2260 ).
    t2257 = t2258.
    t2253 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2254 i_f1 = t2255 i_f2 = t2257 ).
    t1962->load( ).
    APPEND t2253 TO t1962->items.
    t1962->save( ).
    DATA t2262 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2263) = |st_zmax|.
    DATA t2264 TYPE f.
    DATA(t2265) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2264 = t2265.
    DATA t2266 TYPE REF TO zcl_lnt_abap_release.
    DATA t2267 TYPE REF TO zcl_lnt_abap_release.
    DATA t2268 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2268 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2269) = |v915|.
    t2267 = t2268->get( p0 = t2269 ).
    t2266 = t2267.
    t2262 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2263 i_f1 = t2264 i_f2 = t2266 ).
    t1962->load( ).
    APPEND t2262 TO t1962->items.
    t1962->save( ).
    DATA t2271 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2272) = |st_zmin|.
    DATA t2273 TYPE f.
    DATA(t2274) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2273 = t2274.
    DATA t2275 TYPE REF TO zcl_lnt_abap_release.
    DATA t2276 TYPE REF TO zcl_lnt_abap_release.
    DATA t2277 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2277 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2278) = |v915|.
    t2276 = t2277->get( p0 = t2278 ).
    t2275 = t2276.
    t2271 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2272 i_f1 = t2273 i_f2 = t2275 ).
    t1962->load( ).
    APPEND t2271 TO t1962->items.
    t1962->save( ).
    DATA t2280 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2281) = |st_mmax|.
    DATA t2282 TYPE f.
    DATA(t2283) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2282 = t2283.
    DATA t2284 TYPE REF TO zcl_lnt_abap_release.
    DATA t2285 TYPE REF TO zcl_lnt_abap_release.
    DATA t2286 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2286 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2287) = |v915|.
    t2285 = t2286->get( p0 = t2287 ).
    t2284 = t2285.
    t2280 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2281 i_f1 = t2282 i_f2 = t2284 ).
    t1962->load( ).
    APPEND t2280 TO t1962->items.
    t1962->save( ).
    DATA t2289 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2290) = |st_mmin|.
    DATA t2291 TYPE f.
    DATA(t2292) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2291 = t2292.
    DATA t2293 TYPE REF TO zcl_lnt_abap_release.
    DATA t2294 TYPE REF TO zcl_lnt_abap_release.
    DATA t2295 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2295 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2296) = |v915|.
    t2294 = t2295->get( p0 = t2296 ).
    t2293 = t2294.
    t2289 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2290 i_f1 = t2291 i_f2 = t2293 ).
    t1962->load( ).
    APPEND t2289 TO t1962->items.
    t1962->save( ).
    DATA t2298 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2299) = |st_area|.
    DATA t2300 TYPE f.
    DATA(t2301) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2300 = t2301.
    DATA t2302 TYPE REF TO zcl_lnt_abap_release.
    DATA t2303 TYPE REF TO zcl_lnt_abap_release.
    DATA t2304 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2304 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2305) = |v915|.
    t2303 = t2304->get( p0 = t2305 ).
    t2302 = t2303.
    t2298 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2299 i_f1 = t2300 i_f2 = t2302 ).
    t1962->load( ).
    APPEND t2298 TO t1962->items.
    t1962->save( ).
    DATA t2307 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2308) = |st_length|.
    DATA t2309 TYPE f.
    DATA(t2310) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2309 = t2310.
    DATA t2311 TYPE REF TO zcl_lnt_abap_release.
    DATA t2312 TYPE REF TO zcl_lnt_abap_release.
    DATA t2313 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2313 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2314) = |v915|.
    t2312 = t2313->get( p0 = t2314 ).
    t2311 = t2312.
    t2307 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2308 i_f1 = t2309 i_f2 = t2311 ).
    t1962->load( ).
    APPEND t2307 TO t1962->items.
    t1962->save( ).
    DATA t2316 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2317) = |st_perimeter|.
    DATA t2318 TYPE f.
    DATA(t2319) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2318 = t2319.
    DATA t2320 TYPE REF TO zcl_lnt_abap_release.
    DATA t2321 TYPE REF TO zcl_lnt_abap_release.
    DATA t2322 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2322 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2323) = |v915|.
    t2321 = t2322->get( p0 = t2323 ).
    t2320 = t2321.
    t2316 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2317 i_f1 = t2318 i_f2 = t2320 ).
    t1962->load( ).
    APPEND t2316 TO t1962->items.
    t1962->save( ).
    DATA t2325 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2326) = |st_dimension|.
    DATA t2327 TYPE f.
    DATA(t2328) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2327 = t2328.
    DATA t2329 TYPE REF TO zcl_lnt_abap_release.
    DATA t2330 TYPE REF TO zcl_lnt_abap_release.
    DATA t2331 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2331 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2332) = |v915|.
    t2330 = t2331->get( p0 = t2332 ).
    t2329 = t2330.
    t2325 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2326 i_f1 = t2327 i_f2 = t2329 ).
    t1962->load( ).
    APPEND t2325 TO t1962->items.
    t1962->save( ).
    DATA t2334 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2335) = |st_coorddim|.
    DATA t2336 TYPE f.
    DATA(t2337) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2336 = t2337.
    DATA t2338 TYPE REF TO zcl_lnt_abap_release.
    DATA t2339 TYPE REF TO zcl_lnt_abap_release.
    DATA t2340 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2340 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2341) = |v915|.
    t2339 = t2340->get( p0 = t2341 ).
    t2338 = t2339.
    t2334 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2335 i_f1 = t2336 i_f2 = t2338 ).
    t1962->load( ).
    APPEND t2334 TO t1962->items.
    t1962->save( ).
    DATA t2343 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2344) = |st_geometrytype|.
    DATA t2345 TYPE f.
    DATA(t2346) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2345 = t2346.
    DATA t2347 TYPE REF TO zcl_lnt_abap_release.
    DATA t2348 TYPE REF TO zcl_lnt_abap_release.
    DATA t2349 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2349 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2350) = |v915|.
    t2348 = t2349->get( p0 = t2350 ).
    t2347 = t2348.
    t2343 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2344 i_f1 = t2345 i_f2 = t2347 ).
    t1962->load( ).
    APPEND t2343 TO t1962->items.
    t1962->save( ).
    DATA t2352 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2353) = |st_isempty|.
    DATA t2354 TYPE f.
    DATA(t2355) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2354 = t2355.
    DATA t2356 TYPE REF TO zcl_lnt_abap_release.
    DATA t2357 TYPE REF TO zcl_lnt_abap_release.
    DATA t2358 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2358 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2359) = |v915|.
    t2357 = t2358->get( p0 = t2359 ).
    t2356 = t2357.
    t2352 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2353 i_f1 = t2354 i_f2 = t2356 ).
    t1962->load( ).
    APPEND t2352 TO t1962->items.
    t1962->save( ).
    DATA t2361 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2362) = |st_issimple|.
    DATA t2363 TYPE f.
    DATA(t2364) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2363 = t2364.
    DATA t2365 TYPE REF TO zcl_lnt_abap_release.
    DATA t2366 TYPE REF TO zcl_lnt_abap_release.
    DATA t2367 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2367 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2368) = |v915|.
    t2366 = t2367->get( p0 = t2368 ).
    t2365 = t2366.
    t2361 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2362 i_f1 = t2363 i_f2 = t2365 ).
    t1962->load( ).
    APPEND t2361 TO t1962->items.
    t1962->save( ).
    DATA t2370 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2371) = |st_isclosed|.
    DATA t2372 TYPE f.
    DATA(t2373) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2372 = t2373.
    DATA t2374 TYPE REF TO zcl_lnt_abap_release.
    DATA t2375 TYPE REF TO zcl_lnt_abap_release.
    DATA t2376 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2376 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2377) = |v915|.
    t2375 = t2376->get( p0 = t2377 ).
    t2374 = t2375.
    t2370 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2371 i_f1 = t2372 i_f2 = t2374 ).
    t1962->load( ).
    APPEND t2370 TO t1962->items.
    t1962->save( ).
    DATA t2379 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2380) = |st_isring|.
    DATA t2381 TYPE f.
    DATA(t2382) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2381 = t2382.
    DATA t2383 TYPE REF TO zcl_lnt_abap_release.
    DATA t2384 TYPE REF TO zcl_lnt_abap_release.
    DATA t2385 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2385 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2386) = |v915|.
    t2384 = t2385->get( p0 = t2386 ).
    t2383 = t2384.
    t2379 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2380 i_f1 = t2381 i_f2 = t2383 ).
    t1962->load( ).
    APPEND t2379 TO t1962->items.
    t1962->save( ).
    DATA t2388 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2389) = |st_isvalid|.
    DATA t2390 TYPE f.
    DATA(t2391) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2390 = t2391.
    DATA t2392 TYPE REF TO zcl_lnt_abap_release.
    DATA t2393 TYPE REF TO zcl_lnt_abap_release.
    DATA t2394 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2394 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2395) = |v915|.
    t2393 = t2394->get( p0 = t2395 ).
    t2392 = t2393.
    t2388 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2389 i_f1 = t2390 i_f2 = t2392 ).
    t1962->load( ).
    APPEND t2388 TO t1962->items.
    t1962->save( ).
    DATA t2397 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2398) = |st_isvalidtrajectory|.
    DATA t2399 TYPE f.
    DATA(t2400) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2399 = t2400.
    DATA t2401 TYPE REF TO zcl_lnt_abap_release.
    DATA t2402 TYPE REF TO zcl_lnt_abap_release.
    DATA t2403 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2403 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2404) = |v915|.
    t2402 = t2403->get( p0 = t2404 ).
    t2401 = t2402.
    t2397 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2398 i_f1 = t2399 i_f2 = t2401 ).
    t1962->load( ).
    APPEND t2397 TO t1962->items.
    t1962->save( ).
    DATA t2406 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2407) = |st_is3d|.
    DATA t2408 TYPE f.
    DATA(t2409) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2408 = t2409.
    DATA t2410 TYPE REF TO zcl_lnt_abap_release.
    DATA t2411 TYPE REF TO zcl_lnt_abap_release.
    DATA t2412 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2412 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2413) = |v915|.
    t2411 = t2412->get( p0 = t2413 ).
    t2410 = t2411.
    t2406 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2407 i_f1 = t2408 i_f2 = t2410 ).
    t1962->load( ).
    APPEND t2406 TO t1962->items.
    t1962->save( ).
    DATA t2415 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2416) = |st_ismeasured|.
    DATA t2417 TYPE f.
    DATA(t2418) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2417 = t2418.
    DATA t2419 TYPE REF TO zcl_lnt_abap_release.
    DATA t2420 TYPE REF TO zcl_lnt_abap_release.
    DATA t2421 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2421 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2422) = |v915|.
    t2420 = t2421->get( p0 = t2422 ).
    t2419 = t2420.
    t2415 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2416 i_f1 = t2417 i_f2 = t2419 ).
    t1962->load( ).
    APPEND t2415 TO t1962->items.
    t1962->save( ).
    DATA t2424 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2425) = |st_invalidreason|.
    DATA t2426 TYPE f.
    DATA(t2427) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2426 = t2427.
    DATA t2428 TYPE REF TO zcl_lnt_abap_release.
    DATA t2429 TYPE REF TO zcl_lnt_abap_release.
    DATA t2430 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2430 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2431) = |v915|.
    t2429 = t2430->get( p0 = t2431 ).
    t2428 = t2429.
    t2424 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2425 i_f1 = t2426 i_f2 = t2428 ).
    t1962->load( ).
    APPEND t2424 TO t1962->items.
    t1962->save( ).
    DATA t2433 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2434) = |st_numpoints|.
    DATA t2435 TYPE f.
    DATA(t2436) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2435 = t2436.
    DATA t2437 TYPE REF TO zcl_lnt_abap_release.
    DATA t2438 TYPE REF TO zcl_lnt_abap_release.
    DATA t2439 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2439 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2440) = |v915|.
    t2438 = t2439->get( p0 = t2440 ).
    t2437 = t2438.
    t2433 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2434 i_f1 = t2435 i_f2 = t2437 ).
    t1962->load( ).
    APPEND t2433 TO t1962->items.
    t1962->save( ).
    DATA t2442 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2443) = |st_numgeometries|.
    DATA t2444 TYPE f.
    DATA(t2445) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2444 = t2445.
    DATA t2446 TYPE REF TO zcl_lnt_abap_release.
    DATA t2447 TYPE REF TO zcl_lnt_abap_release.
    DATA t2448 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2448 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2449) = |v915|.
    t2447 = t2448->get( p0 = t2449 ).
    t2446 = t2447.
    t2442 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2443 i_f1 = t2444 i_f2 = t2446 ).
    t1962->load( ).
    APPEND t2442 TO t1962->items.
    t1962->save( ).
    DATA t2451 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2452) = |st_numinteriorring|.
    DATA t2453 TYPE f.
    DATA(t2454) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2453 = t2454.
    DATA t2455 TYPE REF TO zcl_lnt_abap_release.
    DATA t2456 TYPE REF TO zcl_lnt_abap_release.
    DATA t2457 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2457 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2458) = |v915|.
    t2456 = t2457->get( p0 = t2458 ).
    t2455 = t2456.
    t2451 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2452 i_f1 = t2453 i_f2 = t2455 ).
    t1962->load( ).
    APPEND t2451 TO t1962->items.
    t1962->save( ).
    DATA t2460 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2461) = |st_numinteriorrings|.
    DATA t2462 TYPE f.
    DATA(t2463) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2462 = t2463.
    DATA t2464 TYPE REF TO zcl_lnt_abap_release.
    DATA t2465 TYPE REF TO zcl_lnt_abap_release.
    DATA t2466 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2466 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2467) = |v915|.
    t2465 = t2466->get( p0 = t2467 ).
    t2464 = t2465.
    t2460 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2461 i_f1 = t2462 i_f2 = t2464 ).
    t1962->load( ).
    APPEND t2460 TO t1962->items.
    t1962->save( ).
    DATA t2469 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2470) = |st_envelope|.
    DATA t2471 TYPE f.
    DATA(t2472) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2471 = t2472.
    DATA t2473 TYPE REF TO zcl_lnt_abap_release.
    DATA t2474 TYPE REF TO zcl_lnt_abap_release.
    DATA t2475 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2475 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2476) = |v915|.
    t2474 = t2475->get( p0 = t2476 ).
    t2473 = t2474.
    t2469 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2470 i_f1 = t2471 i_f2 = t2473 ).
    t1962->load( ).
    APPEND t2469 TO t1962->items.
    t1962->save( ).
    DATA t2478 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2479) = |st_boundary|.
    DATA t2480 TYPE f.
    DATA(t2481) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2480 = t2481.
    DATA t2482 TYPE REF TO zcl_lnt_abap_release.
    DATA t2483 TYPE REF TO zcl_lnt_abap_release.
    DATA t2484 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2484 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2485) = |v915|.
    t2483 = t2484->get( p0 = t2485 ).
    t2482 = t2483.
    t2478 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2479 i_f1 = t2480 i_f2 = t2482 ).
    t1962->load( ).
    APPEND t2478 TO t1962->items.
    t1962->save( ).
    DATA t2487 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2488) = |st_exteriorring|.
    DATA t2489 TYPE f.
    DATA(t2490) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2489 = t2490.
    DATA t2491 TYPE REF TO zcl_lnt_abap_release.
    DATA t2492 TYPE REF TO zcl_lnt_abap_release.
    DATA t2493 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2493 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2494) = |v915|.
    t2492 = t2493->get( p0 = t2494 ).
    t2491 = t2492.
    t2487 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2488 i_f1 = t2489 i_f2 = t2491 ).
    t1962->load( ).
    APPEND t2487 TO t1962->items.
    t1962->save( ).
    DATA t2496 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2497) = |st_startpoint|.
    DATA t2498 TYPE f.
    DATA(t2499) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2498 = t2499.
    DATA t2500 TYPE REF TO zcl_lnt_abap_release.
    DATA t2501 TYPE REF TO zcl_lnt_abap_release.
    DATA t2502 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2502 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2503) = |v915|.
    t2501 = t2502->get( p0 = t2503 ).
    t2500 = t2501.
    t2496 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2497 i_f1 = t2498 i_f2 = t2500 ).
    t1962->load( ).
    APPEND t2496 TO t1962->items.
    t1962->save( ).
    DATA t2505 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2506) = |st_endpoint|.
    DATA t2507 TYPE f.
    DATA(t2508) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2507 = t2508.
    DATA t2509 TYPE REF TO zcl_lnt_abap_release.
    DATA t2510 TYPE REF TO zcl_lnt_abap_release.
    DATA t2511 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2511 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2512) = |v915|.
    t2510 = t2511->get( p0 = t2512 ).
    t2509 = t2510.
    t2505 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2506 i_f1 = t2507 i_f2 = t2509 ).
    t1962->load( ).
    APPEND t2505 TO t1962->items.
    t1962->save( ).
    DATA t2514 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2515) = |st_centroid|.
    DATA t2516 TYPE f.
    DATA(t2517) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2516 = t2517.
    DATA t2518 TYPE REF TO zcl_lnt_abap_release.
    DATA t2519 TYPE REF TO zcl_lnt_abap_release.
    DATA t2520 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2520 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2521) = |v915|.
    t2519 = t2520->get( p0 = t2521 ).
    t2518 = t2519.
    t2514 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2515 i_f1 = t2516 i_f2 = t2518 ).
    t1962->load( ).
    APPEND t2514 TO t1962->items.
    t1962->save( ).
    DATA t2523 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2524) = |st_pointonsurface|.
    DATA t2525 TYPE f.
    DATA(t2526) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2525 = t2526.
    DATA t2527 TYPE REF TO zcl_lnt_abap_release.
    DATA t2528 TYPE REF TO zcl_lnt_abap_release.
    DATA t2529 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2529 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2530) = |v915|.
    t2528 = t2529->get( p0 = t2530 ).
    t2527 = t2528.
    t2523 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2524 i_f1 = t2525 i_f2 = t2527 ).
    t1962->load( ).
    APPEND t2523 TO t1962->items.
    t1962->save( ).
    DATA t2532 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2533) = |st_convexhull|.
    DATA t2534 TYPE f.
    DATA(t2535) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2534 = t2535.
    DATA t2536 TYPE REF TO zcl_lnt_abap_release.
    DATA t2537 TYPE REF TO zcl_lnt_abap_release.
    DATA t2538 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2538 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2539) = |v915|.
    t2537 = t2538->get( p0 = t2539 ).
    t2536 = t2537.
    t2532 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2533 i_f1 = t2534 i_f2 = t2536 ).
    t1962->load( ).
    APPEND t2532 TO t1962->items.
    t1962->save( ).
    DATA t2541 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2542) = |st_concavehull|.
    DATA t2543 TYPE f.
    DATA(t2544) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2543 = t2544.
    DATA t2545 TYPE REF TO zcl_lnt_abap_release.
    DATA t2546 TYPE REF TO zcl_lnt_abap_release.
    DATA t2547 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2547 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2548) = |v915|.
    t2546 = t2547->get( p0 = t2548 ).
    t2545 = t2546.
    t2541 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2542 i_f1 = t2543 i_f2 = t2545 ).
    t1962->load( ).
    APPEND t2541 TO t1962->items.
    t1962->save( ).
    DATA t2550 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2551) = |st_reverse|.
    DATA t2552 TYPE f.
    DATA(t2553) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2552 = t2553.
    DATA t2554 TYPE REF TO zcl_lnt_abap_release.
    DATA t2555 TYPE REF TO zcl_lnt_abap_release.
    DATA t2556 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2556 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2557) = |v915|.
    t2555 = t2556->get( p0 = t2557 ).
    t2554 = t2555.
    t2550 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2551 i_f1 = t2552 i_f2 = t2554 ).
    t1962->load( ).
    APPEND t2550 TO t1962->items.
    t1962->save( ).
    DATA t2559 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2560) = |st_force2d|.
    DATA t2561 TYPE f.
    DATA(t2562) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2561 = t2562.
    DATA t2563 TYPE REF TO zcl_lnt_abap_release.
    DATA t2564 TYPE REF TO zcl_lnt_abap_release.
    DATA t2565 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2565 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2566) = |v915|.
    t2564 = t2565->get( p0 = t2566 ).
    t2563 = t2564.
    t2559 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2560 i_f1 = t2561 i_f2 = t2563 ).
    t1962->load( ).
    APPEND t2559 TO t1962->items.
    t1962->save( ).
    DATA t2568 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2569) = |st_force3dz|.
    DATA t2570 TYPE f.
    DATA(t2571) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2570 = t2571.
    DATA t2572 TYPE REF TO zcl_lnt_abap_release.
    DATA t2573 TYPE REF TO zcl_lnt_abap_release.
    DATA t2574 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2574 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2575) = |v915|.
    t2573 = t2574->get( p0 = t2575 ).
    t2572 = t2573.
    t2568 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2569 i_f1 = t2570 i_f2 = t2572 ).
    t1962->load( ).
    APPEND t2568 TO t1962->items.
    t1962->save( ).
    DATA t2577 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2578) = |st_force3dm|.
    DATA t2579 TYPE f.
    DATA(t2580) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2579 = t2580.
    DATA t2581 TYPE REF TO zcl_lnt_abap_release.
    DATA t2582 TYPE REF TO zcl_lnt_abap_release.
    DATA t2583 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2583 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2584) = |v915|.
    t2582 = t2583->get( p0 = t2584 ).
    t2581 = t2582.
    t2577 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2578 i_f1 = t2579 i_f2 = t2581 ).
    t1962->load( ).
    APPEND t2577 TO t1962->items.
    t1962->save( ).
    DATA t2586 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2587) = |st_force4d|.
    DATA t2588 TYPE f.
    DATA(t2589) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2588 = t2589.
    DATA t2590 TYPE REF TO zcl_lnt_abap_release.
    DATA t2591 TYPE REF TO zcl_lnt_abap_release.
    DATA t2592 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2592 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2593) = |v915|.
    t2591 = t2592->get( p0 = t2593 ).
    t2590 = t2591.
    t2586 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2587 i_f1 = t2588 i_f2 = t2590 ).
    t1962->load( ).
    APPEND t2586 TO t1962->items.
    t1962->save( ).
    DATA t2595 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2596) = |st_makevalid|.
    DATA t2597 TYPE f.
    DATA(t2598) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2597 = t2598.
    DATA t2599 TYPE REF TO zcl_lnt_abap_release.
    DATA t2600 TYPE REF TO zcl_lnt_abap_release.
    DATA t2601 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2601 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2602) = |v915|.
    t2600 = t2601->get( p0 = t2602 ).
    t2599 = t2600.
    t2595 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2596 i_f1 = t2597 i_f2 = t2599 ).
    t1962->load( ).
    APPEND t2595 TO t1962->items.
    t1962->save( ).
    DATA t2604 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2605) = |st_geohash|.
    DATA t2606 TYPE f.
    DATA(t2607) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2606 = t2607.
    DATA t2608 TYPE REF TO zcl_lnt_abap_release.
    DATA t2609 TYPE REF TO zcl_lnt_abap_release.
    DATA t2610 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2610 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2611) = |v915|.
    t2609 = t2610->get( p0 = t2611 ).
    t2608 = t2609.
    t2604 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2605 i_f1 = t2606 i_f2 = t2608 ).
    t1962->load( ).
    APPEND t2604 TO t1962->items.
    t1962->save( ).
    DATA t2613 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2614) = |st_aswkt|.
    DATA t2615 TYPE f.
    DATA(t2616) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2615 = t2616.
    DATA t2617 TYPE REF TO zcl_lnt_abap_release.
    DATA t2618 TYPE REF TO zcl_lnt_abap_release.
    DATA t2619 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2619 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2620) = |v915|.
    t2618 = t2619->get( p0 = t2620 ).
    t2617 = t2618.
    t2613 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2614 i_f1 = t2615 i_f2 = t2617 ).
    t1962->load( ).
    APPEND t2613 TO t1962->items.
    t1962->save( ).
    DATA t2622 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2623) = |st_aswkb|.
    DATA t2624 TYPE f.
    DATA(t2625) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2624 = t2625.
    DATA t2626 TYPE REF TO zcl_lnt_abap_release.
    DATA t2627 TYPE REF TO zcl_lnt_abap_release.
    DATA t2628 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2628 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2629) = |v915|.
    t2627 = t2628->get( p0 = t2629 ).
    t2626 = t2627.
    t2622 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2623 i_f1 = t2624 i_f2 = t2626 ).
    t1962->load( ).
    APPEND t2622 TO t1962->items.
    t1962->save( ).
    DATA t2631 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2632) = |st_asewkt|.
    DATA t2633 TYPE f.
    DATA(t2634) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2633 = t2634.
    DATA t2635 TYPE REF TO zcl_lnt_abap_release.
    DATA t2636 TYPE REF TO zcl_lnt_abap_release.
    DATA t2637 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2637 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2638) = |v915|.
    t2636 = t2637->get( p0 = t2638 ).
    t2635 = t2636.
    t2631 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2632 i_f1 = t2633 i_f2 = t2635 ).
    t1962->load( ).
    APPEND t2631 TO t1962->items.
    t1962->save( ).
    DATA t2640 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2641) = |st_asewkb|.
    DATA t2642 TYPE f.
    DATA(t2643) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2642 = t2643.
    DATA t2644 TYPE REF TO zcl_lnt_abap_release.
    DATA t2645 TYPE REF TO zcl_lnt_abap_release.
    DATA t2646 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2646 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2647) = |v915|.
    t2645 = t2646->get( p0 = t2647 ).
    t2644 = t2645.
    t2640 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2641 i_f1 = t2642 i_f2 = t2644 ).
    t1962->load( ).
    APPEND t2640 TO t1962->items.
    t1962->save( ).
    DATA t2649 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2650) = |st_asbinary|.
    DATA t2651 TYPE f.
    DATA(t2652) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2651 = t2652.
    DATA t2653 TYPE REF TO zcl_lnt_abap_release.
    DATA t2654 TYPE REF TO zcl_lnt_abap_release.
    DATA t2655 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2655 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2656) = |v915|.
    t2654 = t2655->get( p0 = t2656 ).
    t2653 = t2654.
    t2649 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2650 i_f1 = t2651 i_f2 = t2653 ).
    t1962->load( ).
    APPEND t2649 TO t1962->items.
    t1962->save( ).
    DATA t2658 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2659) = |st_astext|.
    DATA t2660 TYPE f.
    DATA(t2661) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2660 = t2661.
    DATA t2662 TYPE REF TO zcl_lnt_abap_release.
    DATA t2663 TYPE REF TO zcl_lnt_abap_release.
    DATA t2664 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2664 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2665) = |v915|.
    t2663 = t2664->get( p0 = t2665 ).
    t2662 = t2663.
    t2658 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2659 i_f1 = t2660 i_f2 = t2662 ).
    t1962->load( ).
    APPEND t2658 TO t1962->items.
    t1962->save( ).
    DATA t2667 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2668) = |st_asgeojson|.
    DATA t2669 TYPE f.
    DATA(t2670) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2669 = t2670.
    DATA t2671 TYPE REF TO zcl_lnt_abap_release.
    DATA t2672 TYPE REF TO zcl_lnt_abap_release.
    DATA t2673 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2673 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2674) = |v915|.
    t2672 = t2673->get( p0 = t2674 ).
    t2671 = t2672.
    t2667 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2668 i_f1 = t2669 i_f2 = t2671 ).
    t1962->load( ).
    APPEND t2667 TO t1962->items.
    t1962->save( ).
    DATA t2676 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2677) = |st_asesrijson|.
    DATA t2678 TYPE f.
    DATA(t2679) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2678 = t2679.
    DATA t2680 TYPE REF TO zcl_lnt_abap_release.
    DATA t2681 TYPE REF TO zcl_lnt_abap_release.
    DATA t2682 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2682 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2683) = |v915|.
    t2681 = t2682->get( p0 = t2683 ).
    t2680 = t2681.
    t2676 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2677 i_f1 = t2678 i_f2 = t2680 ).
    t1962->load( ).
    APPEND t2676 TO t1962->items.
    t1962->save( ).
    DATA t2685 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2686) = |st_assvg|.
    DATA t2687 TYPE f.
    DATA(t2688) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2687 = t2688.
    DATA t2689 TYPE REF TO zcl_lnt_abap_release.
    DATA t2690 TYPE REF TO zcl_lnt_abap_release.
    DATA t2691 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2691 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2692) = |v915|.
    t2690 = t2691->get( p0 = t2692 ).
    t2689 = t2690.
    t2685 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2686 i_f1 = t2687 i_f2 = t2689 ).
    t1962->load( ).
    APPEND t2685 TO t1962->items.
    t1962->save( ).
    DATA t2694 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2695) = |st_distance|.
    DATA t2696 TYPE f.
    DATA(t2697) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2696 = t2697.
    DATA t2698 TYPE REF TO zcl_lnt_abap_release.
    DATA t2699 TYPE REF TO zcl_lnt_abap_release.
    DATA t2700 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2700 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2701) = |v915|.
    t2699 = t2700->get( p0 = t2701 ).
    t2698 = t2699.
    t2694 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2695 i_f1 = t2696 i_f2 = t2698 ).
    t1962->load( ).
    APPEND t2694 TO t1962->items.
    t1962->save( ).
    DATA t2703 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2704) = |st_withindistance|.
    DATA t2705 TYPE f.
    DATA(t2706) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2705 = t2706.
    DATA t2707 TYPE REF TO zcl_lnt_abap_release.
    DATA t2708 TYPE REF TO zcl_lnt_abap_release.
    DATA t2709 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2709 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2710) = |v915|.
    t2708 = t2709->get( p0 = t2710 ).
    t2707 = t2708.
    t2703 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2704 i_f1 = t2705 i_f2 = t2707 ).
    t1962->load( ).
    APPEND t2703 TO t1962->items.
    t1962->save( ).
    DATA t2712 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2713) = |st_contains|.
    DATA t2714 TYPE f.
    DATA(t2715) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2714 = t2715.
    DATA t2716 TYPE REF TO zcl_lnt_abap_release.
    DATA t2717 TYPE REF TO zcl_lnt_abap_release.
    DATA t2718 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2718 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2719) = |v915|.
    t2717 = t2718->get( p0 = t2719 ).
    t2716 = t2717.
    t2712 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2713 i_f1 = t2714 i_f2 = t2716 ).
    t1962->load( ).
    APPEND t2712 TO t1962->items.
    t1962->save( ).
    DATA t2721 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2722) = |st_covers|.
    DATA t2723 TYPE f.
    DATA(t2724) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2723 = t2724.
    DATA t2725 TYPE REF TO zcl_lnt_abap_release.
    DATA t2726 TYPE REF TO zcl_lnt_abap_release.
    DATA t2727 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2727 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2728) = |v915|.
    t2726 = t2727->get( p0 = t2728 ).
    t2725 = t2726.
    t2721 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2722 i_f1 = t2723 i_f2 = t2725 ).
    t1962->load( ).
    APPEND t2721 TO t1962->items.
    t1962->save( ).
    DATA t2730 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2731) = |st_coveredby|.
    DATA t2732 TYPE f.
    DATA(t2733) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2732 = t2733.
    DATA t2734 TYPE REF TO zcl_lnt_abap_release.
    DATA t2735 TYPE REF TO zcl_lnt_abap_release.
    DATA t2736 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2736 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2737) = |v915|.
    t2735 = t2736->get( p0 = t2737 ).
    t2734 = t2735.
    t2730 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2731 i_f1 = t2732 i_f2 = t2734 ).
    t1962->load( ).
    APPEND t2730 TO t1962->items.
    t1962->save( ).
    DATA t2739 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2740) = |st_crosses|.
    DATA t2741 TYPE f.
    DATA(t2742) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2741 = t2742.
    DATA t2743 TYPE REF TO zcl_lnt_abap_release.
    DATA t2744 TYPE REF TO zcl_lnt_abap_release.
    DATA t2745 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2745 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2746) = |v915|.
    t2744 = t2745->get( p0 = t2746 ).
    t2743 = t2744.
    t2739 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2740 i_f1 = t2741 i_f2 = t2743 ).
    t1962->load( ).
    APPEND t2739 TO t1962->items.
    t1962->save( ).
    DATA t2748 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2749) = |st_disjoint|.
    DATA t2750 TYPE f.
    DATA(t2751) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2750 = t2751.
    DATA t2752 TYPE REF TO zcl_lnt_abap_release.
    DATA t2753 TYPE REF TO zcl_lnt_abap_release.
    DATA t2754 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2754 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2755) = |v915|.
    t2753 = t2754->get( p0 = t2755 ).
    t2752 = t2753.
    t2748 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2749 i_f1 = t2750 i_f2 = t2752 ).
    t1962->load( ).
    APPEND t2748 TO t1962->items.
    t1962->save( ).
    DATA t2757 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2758) = |st_equals|.
    DATA t2759 TYPE f.
    DATA(t2760) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2759 = t2760.
    DATA t2761 TYPE REF TO zcl_lnt_abap_release.
    DATA t2762 TYPE REF TO zcl_lnt_abap_release.
    DATA t2763 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2763 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2764) = |v915|.
    t2762 = t2763->get( p0 = t2764 ).
    t2761 = t2762.
    t2757 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2758 i_f1 = t2759 i_f2 = t2761 ).
    t1962->load( ).
    APPEND t2757 TO t1962->items.
    t1962->save( ).
    DATA t2766 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2767) = |st_orderingequals|.
    DATA t2768 TYPE f.
    DATA(t2769) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2768 = t2769.
    DATA t2770 TYPE REF TO zcl_lnt_abap_release.
    DATA t2771 TYPE REF TO zcl_lnt_abap_release.
    DATA t2772 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2772 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2773) = |v915|.
    t2771 = t2772->get( p0 = t2773 ).
    t2770 = t2771.
    t2766 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2767 i_f1 = t2768 i_f2 = t2770 ).
    t1962->load( ).
    APPEND t2766 TO t1962->items.
    t1962->save( ).
    DATA t2775 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2776) = |st_intersects|.
    DATA t2777 TYPE f.
    DATA(t2778) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2777 = t2778.
    DATA t2779 TYPE REF TO zcl_lnt_abap_release.
    DATA t2780 TYPE REF TO zcl_lnt_abap_release.
    DATA t2781 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2781 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2782) = |v915|.
    t2780 = t2781->get( p0 = t2782 ).
    t2779 = t2780.
    t2775 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2776 i_f1 = t2777 i_f2 = t2779 ).
    t1962->load( ).
    APPEND t2775 TO t1962->items.
    t1962->save( ).
    DATA t2784 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2785) = |st_intersectsfilter|.
    DATA t2786 TYPE f.
    DATA(t2787) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2786 = t2787.
    DATA t2788 TYPE REF TO zcl_lnt_abap_release.
    DATA t2789 TYPE REF TO zcl_lnt_abap_release.
    DATA t2790 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2790 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2791) = |v915|.
    t2789 = t2790->get( p0 = t2791 ).
    t2788 = t2789.
    t2784 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2785 i_f1 = t2786 i_f2 = t2788 ).
    t1962->load( ).
    APPEND t2784 TO t1962->items.
    t1962->save( ).
    DATA t2793 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2794) = |st_intersectsrect|.
    DATA t2795 TYPE f.
    DATA(t2796) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2795 = t2796.
    DATA t2797 TYPE REF TO zcl_lnt_abap_release.
    DATA t2798 TYPE REF TO zcl_lnt_abap_release.
    DATA t2799 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2799 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2800) = |v915|.
    t2798 = t2799->get( p0 = t2800 ).
    t2797 = t2798.
    t2793 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2794 i_f1 = t2795 i_f2 = t2797 ).
    t1962->load( ).
    APPEND t2793 TO t1962->items.
    t1962->save( ).
    DATA t2802 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2803) = |st_intersectsrectplanar|.
    DATA t2804 TYPE f.
    DATA(t2805) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2804 = t2805.
    DATA t2806 TYPE REF TO zcl_lnt_abap_release.
    DATA t2807 TYPE REF TO zcl_lnt_abap_release.
    DATA t2808 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2808 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2809) = |v915|.
    t2807 = t2808->get( p0 = t2809 ).
    t2806 = t2807.
    t2802 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2803 i_f1 = t2804 i_f2 = t2806 ).
    t1962->load( ).
    APPEND t2802 TO t1962->items.
    t1962->save( ).
    DATA t2811 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2812) = |st_overlaps|.
    DATA t2813 TYPE f.
    DATA(t2814) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2813 = t2814.
    DATA t2815 TYPE REF TO zcl_lnt_abap_release.
    DATA t2816 TYPE REF TO zcl_lnt_abap_release.
    DATA t2817 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2817 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2818) = |v915|.
    t2816 = t2817->get( p0 = t2818 ).
    t2815 = t2816.
    t2811 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2812 i_f1 = t2813 i_f2 = t2815 ).
    t1962->load( ).
    APPEND t2811 TO t1962->items.
    t1962->save( ).
    DATA t2820 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2821) = |st_touches|.
    DATA t2822 TYPE f.
    DATA(t2823) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2822 = t2823.
    DATA t2824 TYPE REF TO zcl_lnt_abap_release.
    DATA t2825 TYPE REF TO zcl_lnt_abap_release.
    DATA t2826 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2826 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2827) = |v915|.
    t2825 = t2826->get( p0 = t2827 ).
    t2824 = t2825.
    t2820 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2821 i_f1 = t2822 i_f2 = t2824 ).
    t1962->load( ).
    APPEND t2820 TO t1962->items.
    t1962->save( ).
    DATA t2829 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2830) = |st_within|.
    DATA t2831 TYPE f.
    DATA(t2832) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2831 = t2832.
    DATA t2833 TYPE REF TO zcl_lnt_abap_release.
    DATA t2834 TYPE REF TO zcl_lnt_abap_release.
    DATA t2835 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2835 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2836) = |v915|.
    t2834 = t2835->get( p0 = t2836 ).
    t2833 = t2834.
    t2829 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2830 i_f1 = t2831 i_f2 = t2833 ).
    t1962->load( ).
    APPEND t2829 TO t1962->items.
    t1962->save( ).
    DATA t2838 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2839) = |st_intersection|.
    DATA t2840 TYPE f.
    DATA(t2841) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2840 = t2841.
    DATA t2842 TYPE REF TO zcl_lnt_abap_release.
    DATA t2843 TYPE REF TO zcl_lnt_abap_release.
    DATA t2844 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2844 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2845) = |v915|.
    t2843 = t2844->get( p0 = t2845 ).
    t2842 = t2843.
    t2838 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2839 i_f1 = t2840 i_f2 = t2842 ).
    t1962->load( ).
    APPEND t2838 TO t1962->items.
    t1962->save( ).
    DATA t2847 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2848) = |st_union|.
    DATA t2849 TYPE f.
    DATA(t2850) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2849 = t2850.
    DATA t2851 TYPE REF TO zcl_lnt_abap_release.
    DATA t2852 TYPE REF TO zcl_lnt_abap_release.
    DATA t2853 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2853 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2854) = |v915|.
    t2852 = t2853->get( p0 = t2854 ).
    t2851 = t2852.
    t2847 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2848 i_f1 = t2849 i_f2 = t2851 ).
    t1962->load( ).
    APPEND t2847 TO t1962->items.
    t1962->save( ).
    DATA t2856 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2857) = |st_difference|.
    DATA t2858 TYPE f.
    DATA(t2859) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2858 = t2859.
    DATA t2860 TYPE REF TO zcl_lnt_abap_release.
    DATA t2861 TYPE REF TO zcl_lnt_abap_release.
    DATA t2862 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2862 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2863) = |v915|.
    t2861 = t2862->get( p0 = t2863 ).
    t2860 = t2861.
    t2856 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2857 i_f1 = t2858 i_f2 = t2860 ).
    t1962->load( ).
    APPEND t2856 TO t1962->items.
    t1962->save( ).
    DATA t2865 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2866) = |st_symdifference|.
    DATA t2867 TYPE f.
    DATA(t2868) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2867 = t2868.
    DATA t2869 TYPE REF TO zcl_lnt_abap_release.
    DATA t2870 TYPE REF TO zcl_lnt_abap_release.
    DATA t2871 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2871 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2872) = |v915|.
    t2870 = t2871->get( p0 = t2872 ).
    t2869 = t2870.
    t2865 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2866 i_f1 = t2867 i_f2 = t2869 ).
    t1962->load( ).
    APPEND t2865 TO t1962->items.
    t1962->save( ).
    DATA t2874 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2875) = |st_collect|.
    DATA t2876 TYPE f.
    DATA(t2877) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2876 = t2877.
    DATA t2878 TYPE REF TO zcl_lnt_abap_release.
    DATA t2879 TYPE REF TO zcl_lnt_abap_release.
    DATA t2880 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2880 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2881) = |v915|.
    t2879 = t2880->get( p0 = t2881 ).
    t2878 = t2879.
    t2874 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2875 i_f1 = t2876 i_f2 = t2878 ).
    t1962->load( ).
    APPEND t2874 TO t1962->items.
    t1962->save( ).
    DATA t2883 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2884) = |st_buffer|.
    DATA t2885 TYPE f.
    DATA(t2886) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2885 = t2886.
    DATA t2887 TYPE REF TO zcl_lnt_abap_release.
    DATA t2888 TYPE REF TO zcl_lnt_abap_release.
    DATA t2889 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2889 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2890) = |v915|.
    t2888 = t2889->get( p0 = t2890 ).
    t2887 = t2888.
    t2883 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2884 i_f1 = t2885 i_f2 = t2887 ).
    t1962->load( ).
    APPEND t2883 TO t1962->items.
    t1962->save( ).
    DATA t2892 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2893) = |st_transform|.
    DATA t2894 TYPE f.
    DATA(t2895) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2894 = t2895.
    DATA t2896 TYPE REF TO zcl_lnt_abap_release.
    DATA t2897 TYPE REF TO zcl_lnt_abap_release.
    DATA t2898 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2898 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2899) = |v915|.
    t2897 = t2898->get( p0 = t2899 ).
    t2896 = t2897.
    t2892 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2893 i_f1 = t2894 i_f2 = t2896 ).
    t1962->load( ).
    APPEND t2892 TO t1962->items.
    t1962->save( ).
    DATA t2901 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2902) = |st_rotate|.
    DATA t2903 TYPE f.
    DATA(t2904) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2903 = t2904.
    DATA t2905 TYPE REF TO zcl_lnt_abap_release.
    DATA t2906 TYPE REF TO zcl_lnt_abap_release.
    DATA t2907 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2907 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2908) = |v915|.
    t2906 = t2907->get( p0 = t2908 ).
    t2905 = t2906.
    t2901 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2902 i_f1 = t2903 i_f2 = t2905 ).
    t1962->load( ).
    APPEND t2901 TO t1962->items.
    t1962->save( ).
    DATA t2910 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2911) = |st_scale|.
    DATA t2912 TYPE f.
    DATA(t2913) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2912 = t2913.
    DATA t2914 TYPE REF TO zcl_lnt_abap_release.
    DATA t2915 TYPE REF TO zcl_lnt_abap_release.
    DATA t2916 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2916 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2917) = |v915|.
    t2915 = t2916->get( p0 = t2917 ).
    t2914 = t2915.
    t2910 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2911 i_f1 = t2912 i_f2 = t2914 ).
    t1962->load( ).
    APPEND t2910 TO t1962->items.
    t1962->save( ).
    DATA t2919 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2920) = |st_translate|.
    DATA t2921 TYPE f.
    DATA(t2922) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2921 = t2922.
    DATA t2923 TYPE REF TO zcl_lnt_abap_release.
    DATA t2924 TYPE REF TO zcl_lnt_abap_release.
    DATA t2925 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2925 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2926) = |v915|.
    t2924 = t2925->get( p0 = t2926 ).
    t2923 = t2924.
    t2919 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2920 i_f1 = t2921 i_f2 = t2923 ).
    t1962->load( ).
    APPEND t2919 TO t1962->items.
    t1962->save( ).
    DATA t2928 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2929) = |st_translate3d|.
    DATA t2930 TYPE f.
    DATA(t2931) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2930 = t2931.
    DATA t2932 TYPE REF TO zcl_lnt_abap_release.
    DATA t2933 TYPE REF TO zcl_lnt_abap_release.
    DATA t2934 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2934 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2935) = |v915|.
    t2933 = t2934->get( p0 = t2935 ).
    t2932 = t2933.
    t2928 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2929 i_f1 = t2930 i_f2 = t2932 ).
    t1962->load( ).
    APPEND t2928 TO t1962->items.
    t1962->save( ).
    DATA t2937 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2938) = |st_simplify|.
    DATA t2939 TYPE f.
    DATA(t2940) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2939 = t2940.
    DATA t2941 TYPE REF TO zcl_lnt_abap_release.
    DATA t2942 TYPE REF TO zcl_lnt_abap_release.
    DATA t2943 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2943 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2944) = |v915|.
    t2942 = t2943->get( p0 = t2944 ).
    t2941 = t2942.
    t2937 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2938 i_f1 = t2939 i_f2 = t2941 ).
    t1962->load( ).
    APPEND t2937 TO t1962->items.
    t1962->save( ).
    DATA t2946 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2947) = |st_snaptogrid|.
    DATA t2948 TYPE f.
    DATA(t2949) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2948 = t2949.
    DATA t2950 TYPE REF TO zcl_lnt_abap_release.
    DATA t2951 TYPE REF TO zcl_lnt_abap_release.
    DATA t2952 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2952 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2953) = |v915|.
    t2951 = t2952->get( p0 = t2953 ).
    t2950 = t2951.
    t2946 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2947 i_f1 = t2948 i_f2 = t2950 ).
    t1962->load( ).
    APPEND t2946 TO t1962->items.
    t1962->save( ).
    DATA t2955 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2956) = |st_addmeasure|.
    DATA t2957 TYPE f.
    DATA(t2958) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2957 = t2958.
    DATA t2959 TYPE REF TO zcl_lnt_abap_release.
    DATA t2960 TYPE REF TO zcl_lnt_abap_release.
    DATA t2961 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2961 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2962) = |v915|.
    t2960 = t2961->get( p0 = t2962 ).
    t2959 = t2960.
    t2955 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2956 i_f1 = t2957 i_f2 = t2959 ).
    t1962->load( ).
    APPEND t2955 TO t1962->items.
    t1962->save( ).
    DATA t2964 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2965) = |st_addpoint|.
    DATA t2966 TYPE f.
    DATA(t2967) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2966 = t2967.
    DATA t2968 TYPE REF TO zcl_lnt_abap_release.
    DATA t2969 TYPE REF TO zcl_lnt_abap_release.
    DATA t2970 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2970 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2971) = |v915|.
    t2969 = t2970->get( p0 = t2971 ).
    t2968 = t2969.
    t2964 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2965 i_f1 = t2966 i_f2 = t2968 ).
    t1962->load( ).
    APPEND t2964 TO t1962->items.
    t1962->save( ).
    DATA t2973 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2974) = |st_removepoint|.
    DATA t2975 TYPE f.
    DATA(t2976) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2975 = t2976.
    DATA t2977 TYPE REF TO zcl_lnt_abap_release.
    DATA t2978 TYPE REF TO zcl_lnt_abap_release.
    DATA t2979 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2979 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2980) = |v915|.
    t2978 = t2979->get( p0 = t2980 ).
    t2977 = t2978.
    t2973 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2974 i_f1 = t2975 i_f2 = t2977 ).
    t1962->load( ).
    APPEND t2973 TO t1962->items.
    t1962->save( ).
    DATA t2982 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2983) = |st_pointn|.
    DATA t2984 TYPE f.
    DATA(t2985) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2984 = t2985.
    DATA t2986 TYPE REF TO zcl_lnt_abap_release.
    DATA t2987 TYPE REF TO zcl_lnt_abap_release.
    DATA t2988 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2988 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2989) = |v915|.
    t2987 = t2988->get( p0 = t2989 ).
    t2986 = t2987.
    t2982 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2983 i_f1 = t2984 i_f2 = t2986 ).
    t1962->load( ).
    APPEND t2982 TO t1962->items.
    t1962->save( ).
    DATA t2991 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t2992) = |st_geometryn|.
    DATA t2993 TYPE f.
    DATA(t2994) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2993 = t2994.
    DATA t2995 TYPE REF TO zcl_lnt_abap_release.
    DATA t2996 TYPE REF TO zcl_lnt_abap_release.
    DATA t2997 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2997 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2998) = |v915|.
    t2996 = t2997->get( p0 = t2998 ).
    t2995 = t2996.
    t2991 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t2992 i_f1 = t2993 i_f2 = t2995 ).
    t1962->load( ).
    APPEND t2991 TO t1962->items.
    t1962->save( ).
    DATA t3000 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3001) = |st_interiorringn|.
    DATA t3002 TYPE f.
    DATA(t3003) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3002 = t3003.
    DATA t3004 TYPE REF TO zcl_lnt_abap_release.
    DATA t3005 TYPE REF TO zcl_lnt_abap_release.
    DATA t3006 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3006 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3007) = |v915|.
    t3005 = t3006->get( p0 = t3007 ).
    t3004 = t3005.
    t3000 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3001 i_f1 = t3002 i_f2 = t3004 ).
    t1962->load( ).
    APPEND t3000 TO t1962->items.
    t1962->save( ).
    DATA t3009 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3010) = |st_lineinterpolatepoint|.
    DATA t3011 TYPE f.
    DATA(t3012) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3011 = t3012.
    DATA t3013 TYPE REF TO zcl_lnt_abap_release.
    DATA t3014 TYPE REF TO zcl_lnt_abap_release.
    DATA t3015 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3015 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3016) = |v915|.
    t3014 = t3015->get( p0 = t3016 ).
    t3013 = t3014.
    t3009 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3010 i_f1 = t3011 i_f2 = t3013 ).
    t1962->load( ).
    APPEND t3009 TO t1962->items.
    t1962->save( ).
    DATA t3018 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3019) = |st_linelocatepoint|.
    DATA t3020 TYPE f.
    DATA(t3021) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3020 = t3021.
    DATA t3022 TYPE REF TO zcl_lnt_abap_release.
    DATA t3023 TYPE REF TO zcl_lnt_abap_release.
    DATA t3024 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3024 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3025) = |v915|.
    t3023 = t3024->get( p0 = t3025 ).
    t3022 = t3023.
    t3018 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3019 i_f1 = t3020 i_f2 = t3022 ).
    t1962->load( ).
    APPEND t3018 TO t1962->items.
    t1962->save( ).
    DATA t3027 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3028) = |st_linesubstring|.
    DATA t3029 TYPE f.
    DATA(t3030) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3029 = t3030.
    DATA t3031 TYPE REF TO zcl_lnt_abap_release.
    DATA t3032 TYPE REF TO zcl_lnt_abap_release.
    DATA t3033 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3033 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3034) = |v915|.
    t3032 = t3033->get( p0 = t3034 ).
    t3031 = t3032.
    t3027 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3028 i_f1 = t3029 i_f2 = t3031 ).
    t1962->load( ).
    APPEND t3027 TO t1962->items.
    t1962->save( ).
    DATA t3036 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3037) = |st_locatealong|.
    DATA t3038 TYPE f.
    DATA(t3039) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3038 = t3039.
    DATA t3040 TYPE REF TO zcl_lnt_abap_release.
    DATA t3041 TYPE REF TO zcl_lnt_abap_release.
    DATA t3042 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3042 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3043) = |v915|.
    t3041 = t3042->get( p0 = t3043 ).
    t3040 = t3041.
    t3036 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3037 i_f1 = t3038 i_f2 = t3040 ).
    t1962->load( ).
    APPEND t3036 TO t1962->items.
    t1962->save( ).
    DATA t3045 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3046) = |st_locatebetween|.
    DATA t3047 TYPE f.
    DATA(t3048) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3047 = t3048.
    DATA t3049 TYPE REF TO zcl_lnt_abap_release.
    DATA t3050 TYPE REF TO zcl_lnt_abap_release.
    DATA t3051 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3051 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3052) = |v915|.
    t3050 = t3051->get( p0 = t3052 ).
    t3049 = t3050.
    t3045 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3046 i_f1 = t3047 i_f2 = t3049 ).
    t1962->load( ).
    APPEND t3045 TO t1962->items.
    t1962->save( ).
    DATA t3054 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3055) = |st_alphashape|.
    DATA t3056 TYPE f.
    DATA(t3057) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3056 = t3057.
    DATA t3058 TYPE REF TO zcl_lnt_abap_release.
    DATA t3059 TYPE REF TO zcl_lnt_abap_release.
    DATA t3060 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3060 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3061) = |v915|.
    t3059 = t3060->get( p0 = t3061 ).
    t3058 = t3059.
    t3054 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3055 i_f1 = t3056 i_f2 = t3058 ).
    t1962->load( ).
    APPEND t3054 TO t1962->items.
    t1962->save( ).
    DATA t3063 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3064) = |st_alphashapearea|.
    DATA t3065 TYPE f.
    DATA(t3066) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3065 = t3066.
    DATA t3067 TYPE REF TO zcl_lnt_abap_release.
    DATA t3068 TYPE REF TO zcl_lnt_abap_release.
    DATA t3069 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3069 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3070) = |v915|.
    t3068 = t3069->get( p0 = t3070 ).
    t3067 = t3068.
    t3063 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3064 i_f1 = t3065 i_f2 = t3067 ).
    t1962->load( ).
    APPEND t3063 TO t1962->items.
    t1962->save( ).
    DATA t3072 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3073) = |st_alphashapeedge|.
    DATA t3074 TYPE f.
    DATA(t3075) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3074 = t3075.
    DATA t3076 TYPE REF TO zcl_lnt_abap_release.
    DATA t3077 TYPE REF TO zcl_lnt_abap_release.
    DATA t3078 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3078 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3079) = |v915|.
    t3077 = t3078->get( p0 = t3079 ).
    t3076 = t3077.
    t3072 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3073 i_f1 = t3074 i_f2 = t3076 ).
    t1962->load( ).
    APPEND t3072 TO t1962->items.
    t1962->save( ).
    DATA t3081 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3082) = |st_closestpointofapproach|.
    DATA t3083 TYPE f.
    DATA(t3084) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3083 = t3084.
    DATA t3085 TYPE REF TO zcl_lnt_abap_release.
    DATA t3086 TYPE REF TO zcl_lnt_abap_release.
    DATA t3087 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3087 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3088) = |v915|.
    t3086 = t3087->get( p0 = t3088 ).
    t3085 = t3086.
    t3081 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3082 i_f1 = t3083 i_f2 = t3085 ).
    t1962->load( ).
    APPEND t3081 TO t1962->items.
    t1962->save( ).
    DATA t3090 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3091) = |st_frechetdistance|.
    DATA t3092 TYPE f.
    DATA(t3093) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3092 = t3093.
    DATA t3094 TYPE REF TO zcl_lnt_abap_release.
    DATA t3095 TYPE REF TO zcl_lnt_abap_release.
    DATA t3096 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3096 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3097) = |v915|.
    t3095 = t3096->get( p0 = t3097 ).
    t3094 = t3095.
    t3090 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3091 i_f1 = t3092 i_f2 = t3094 ).
    t1962->load( ).
    APPEND t3090 TO t1962->items.
    t1962->save( ).
    DATA t3099 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3100) = |st_hausdorffdistance|.
    DATA t3101 TYPE f.
    DATA(t3102) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3101 = t3102.
    DATA t3103 TYPE REF TO zcl_lnt_abap_release.
    DATA t3104 TYPE REF TO zcl_lnt_abap_release.
    DATA t3105 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3105 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3106) = |v915|.
    t3104 = t3105->get( p0 = t3106 ).
    t3103 = t3104.
    t3099 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3100 i_f1 = t3101 i_f2 = t3103 ).
    t1962->load( ).
    APPEND t3099 TO t1962->items.
    t1962->save( ).
    DATA t3108 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3109) = |st_3dlength|.
    DATA t3110 TYPE f.
    DATA(t3111) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3110 = t3111.
    DATA t3112 TYPE REF TO zcl_lnt_abap_release.
    DATA t3113 TYPE REF TO zcl_lnt_abap_release.
    DATA t3114 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3114 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3115) = |v915|.
    t3113 = t3114->get( p0 = t3115 ).
    t3112 = t3113.
    t3108 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3109 i_f1 = t3110 i_f2 = t3112 ).
    t1962->load( ).
    APPEND t3108 TO t1962->items.
    t1962->save( ).
    DATA t3117 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3118) = |st_asmvtgeom|.
    DATA t3119 TYPE f.
    DATA(t3120) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3119 = t3120.
    DATA t3121 TYPE REF TO zcl_lnt_abap_release.
    DATA t3122 TYPE REF TO zcl_lnt_abap_release.
    DATA t3123 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3123 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3124) = |v915|.
    t3122 = t3123->get( p0 = t3124 ).
    t3121 = t3122.
    t3117 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3118 i_f1 = t3119 i_f2 = t3121 ).
    t1962->load( ).
    APPEND t3117 TO t1962->items.
    t1962->save( ).
    zcl_lnt_sql_function_module=>sql_spatial_function_defs = t1962.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    DATA t3127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3128.
    t3127 = t3128.
    DATA t3130 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3131) = |st_assvgaggr|.
    DATA t3132 TYPE f.
    DATA(t3133) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3132 = t3133.
    DATA t3134 TYPE REF TO zcl_lnt_abap_release.
    DATA t3135 TYPE REF TO zcl_lnt_abap_release.
    DATA t3136 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3136 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3137) = |v915|.
    t3135 = t3136->get( p0 = t3137 ).
    t3134 = t3135.
    t3130 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3131 i_f1 = t3132 i_f2 = t3134 ).
    t3127->load( ).
    APPEND t3130 TO t3127->items.
    t3127->save( ).
    DATA t3139 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3140) = |st_collectaggr|.
    DATA t3141 TYPE f.
    DATA(t3142) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3141 = t3142.
    DATA t3143 TYPE REF TO zcl_lnt_abap_release.
    DATA t3144 TYPE REF TO zcl_lnt_abap_release.
    DATA t3145 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3145 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3146) = |v915|.
    t3144 = t3145->get( p0 = t3146 ).
    t3143 = t3144.
    t3139 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3140 i_f1 = t3141 i_f2 = t3143 ).
    t3127->load( ).
    APPEND t3139 TO t3127->items.
    t3127->save( ).
    DATA t3148 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3149) = |st_concavehullaggr|.
    DATA t3150 TYPE f.
    DATA(t3151) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3150 = t3151.
    DATA t3152 TYPE REF TO zcl_lnt_abap_release.
    DATA t3153 TYPE REF TO zcl_lnt_abap_release.
    DATA t3154 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3154 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3155) = |v915|.
    t3153 = t3154->get( p0 = t3155 ).
    t3152 = t3153.
    t3148 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3149 i_f1 = t3150 i_f2 = t3152 ).
    t3127->load( ).
    APPEND t3148 TO t3127->items.
    t3127->save( ).
    DATA t3157 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3158) = |st_convexhullaggr|.
    DATA t3159 TYPE f.
    DATA(t3160) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3159 = t3160.
    DATA t3161 TYPE REF TO zcl_lnt_abap_release.
    DATA t3162 TYPE REF TO zcl_lnt_abap_release.
    DATA t3163 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3163 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3164) = |v915|.
    t3162 = t3163->get( p0 = t3164 ).
    t3161 = t3162.
    t3157 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3158 i_f1 = t3159 i_f2 = t3161 ).
    t3127->load( ).
    APPEND t3157 TO t3127->items.
    t3127->save( ).
    DATA t3166 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3167) = |st_envelopeaggr|.
    DATA t3168 TYPE f.
    DATA(t3169) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3168 = t3169.
    DATA t3170 TYPE REF TO zcl_lnt_abap_release.
    DATA t3171 TYPE REF TO zcl_lnt_abap_release.
    DATA t3172 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3172 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3173) = |v915|.
    t3171 = t3172->get( p0 = t3173 ).
    t3170 = t3171.
    t3166 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3167 i_f1 = t3168 i_f2 = t3170 ).
    t3127->load( ).
    APPEND t3166 TO t3127->items.
    t3127->save( ).
    DATA t3175 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3176) = |st_intersectionaggr|.
    DATA t3177 TYPE f.
    DATA(t3178) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3177 = t3178.
    DATA t3179 TYPE REF TO zcl_lnt_abap_release.
    DATA t3180 TYPE REF TO zcl_lnt_abap_release.
    DATA t3181 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3181 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3182) = |v915|.
    t3180 = t3181->get( p0 = t3182 ).
    t3179 = t3180.
    t3175 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3176 i_f1 = t3177 i_f2 = t3179 ).
    t3127->load( ).
    APPEND t3175 TO t3127->items.
    t3127->save( ).
    DATA t3184 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3185) = |st_unionaggr|.
    DATA t3186 TYPE f.
    DATA(t3187) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3186 = t3187.
    DATA t3188 TYPE REF TO zcl_lnt_abap_release.
    DATA t3189 TYPE REF TO zcl_lnt_abap_release.
    DATA t3190 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3190 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3191) = |v915|.
    t3189 = t3190->get( p0 = t3191 ).
    t3188 = t3189.
    t3184 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3185 i_f1 = t3186 i_f2 = t3188 ).
    t3127->load( ).
    APPEND t3184 TO t3127->items.
    t3127->save( ).
    DATA t3193 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3194) = |st_alphashapeaggr|.
    DATA t3195 TYPE f.
    DATA(t3196) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3195 = t3196.
    DATA t3197 TYPE REF TO zcl_lnt_abap_release.
    DATA t3198 TYPE REF TO zcl_lnt_abap_release.
    DATA t3199 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3199 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3200) = |v915|.
    t3198 = t3199->get( p0 = t3200 ).
    t3197 = t3198.
    t3193 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3194 i_f1 = t3195 i_f2 = t3197 ).
    t3127->load( ).
    APPEND t3193 TO t3127->items.
    t3127->save( ).
    DATA t3202 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3203) = |st_alphashapeareaaggr|.
    DATA t3204 TYPE f.
    DATA(t3205) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3204 = t3205.
    DATA t3206 TYPE REF TO zcl_lnt_abap_release.
    DATA t3207 TYPE REF TO zcl_lnt_abap_release.
    DATA t3208 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3208 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3209) = |v915|.
    t3207 = t3208->get( p0 = t3209 ).
    t3206 = t3207.
    t3202 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3203 i_f1 = t3204 i_f2 = t3206 ).
    t3127->load( ).
    APPEND t3202 TO t3127->items.
    t3127->save( ).
    DATA t3211 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA(t3212) = |st_alphashapeedgeaggr|.
    DATA t3213 TYPE f.
    DATA(t3214) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3213 = t3214.
    DATA t3215 TYPE REF TO zcl_lnt_abap_release.
    DATA t3216 TYPE REF TO zcl_lnt_abap_release.
    DATA t3217 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3217 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3218) = |v915|.
    t3216 = t3217->get( p0 = t3218 ).
    t3215 = t3216.
    t3211 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = t3212 i_f1 = t3213 i_f2 = t3215 ).
    t3127->load( ).
    APPEND t3211 TO t3127->items.
    t3127->save( ).
    zcl_lnt_sql_function_module=>sql_spatial_aggregate_defs = t3127.
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
