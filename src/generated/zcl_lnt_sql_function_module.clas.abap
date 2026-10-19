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
    CREATE OBJECT t2.
    DATA t5 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t8 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t8 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp05| ).
    t5 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |abs| i_f1 = CONV f( 1 ) i_f2 = t8 ).
    t2->load( ).
    APPEND t5 TO t2->items.
    t2->save( ).
    DATA t13 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t16 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t16 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp05| ).
    t13 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |ceil| i_f1 = CONV f( 1 ) i_f2 = t16 ).
    t2->load( ).
    APPEND t13 TO t2->items.
    t2->save( ).
    DATA t21 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t24 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t24 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp05| ).
    t21 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |floor| i_f1 = CONV f( 1 ) i_f2 = t24 ).
    t2->load( ).
    APPEND t21 TO t2->items.
    t2->save( ).
    DATA t29 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t32 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t32 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp05| ).
    t29 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |div| i_f1 = CONV f( 2 ) i_f2 = t32 ).
    t2->load( ).
    APPEND t29 TO t2->items.
    t2->save( ).
    DATA t37 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t40 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t40 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp05| ).
    t37 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |mod| i_f1 = CONV f( 2 ) i_f2 = t40 ).
    t2->load( ).
    APPEND t37 TO t2->items.
    t2->save( ).
    DATA t45 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t47 TYPE f.
    DATA(t48) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t47 = t48.
    DATA t51 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t51 = zcl_lnt_version_module=>release_b8cd.
    t45 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |coalesce| i_f1 = t47 i_f2 = t51->get( p0 = |v740sp05| ) ).
    t2->load( ).
    APPEND t45 TO t2->items.
    t2->save( ).
    DATA t54 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t57 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t57 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    t54 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |concat| i_f1 = CONV f( 2 ) i_f2 = t57 ).
    t2->load( ).
    APPEND t54 TO t2->items.
    t2->save( ).
    DATA t62 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t65 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t65 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    t62 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |length| i_f1 = CONV f( 1 ) i_f2 = t65 ).
    t2->load( ).
    APPEND t62 TO t2->items.
    t2->save( ).
    DATA t70 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t73 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t73 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    t70 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |ltrim| i_f1 = CONV f( 2 ) i_f2 = t73 ).
    t2->load( ).
    APPEND t70 TO t2->items.
    t2->save( ).
    DATA t78 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t81 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t81 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    t78 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |rtrim| i_f1 = CONV f( 2 ) i_f2 = t81 ).
    t2->load( ).
    APPEND t78 TO t2->items.
    t2->save( ).
    DATA t86 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t89 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t89 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    t86 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |right| i_f1 = CONV f( 2 ) i_f2 = t89 ).
    t2->load( ).
    APPEND t86 TO t2->items.
    t2->save( ).
    DATA t94 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t97 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t97 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    t94 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |replace| i_f1 = CONV f( 3 ) i_f2 = t97 ).
    t2->load( ).
    APPEND t94 TO t2->items.
    t2->save( ).
    DATA t102 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t105 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t105 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    t102 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |round| i_f1 = CONV f( 2 ) i_f2 = t105 ).
    t2->load( ).
    APPEND t102 TO t2->items.
    t2->save( ).
    DATA t110 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t113 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t113 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    t110 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |substring| i_f1 = CONV f( 3 ) i_f2 = t113 ).
    t2->load( ).
    APPEND t110 TO t2->items.
    t2->save( ).
    DATA t118 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t121 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t121 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    t118 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |lpad| i_f1 = CONV f( 3 ) i_f2 = t121 ).
    t2->load( ).
    APPEND t118 TO t2->items.
    t2->save( ).
    DATA t126 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t129 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t129 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    t126 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |instr| i_f1 = CONV f( 2 ) i_f2 = t129 ).
    t2->load( ).
    APPEND t126 TO t2->items.
    t2->save( ).
    DATA t134 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t137 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t137 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v751| ).
    t134 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |concat_with_space| i_f1 = CONV f( 3 ) i_f2 = t137 ).
    t2->load( ).
    APPEND t134 TO t2->items.
    t2->save( ).
    DATA t142 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t145 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t145 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v751| ).
    t142 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |rpad| i_f1 = CONV f( 3 ) i_f2 = t145 ).
    t2->load( ).
    APPEND t142 TO t2->items.
    t2->save( ).
    DATA t150 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t153 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t153 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v751| ).
    t150 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |left| i_f1 = CONV f( 2 ) i_f2 = t153 ).
    t2->load( ).
    APPEND t150 TO t2->items.
    t2->save( ).
    DATA t158 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t161 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t161 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v751| ).
    t158 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |lower| i_f1 = CONV f( 1 ) i_f2 = t161 ).
    t2->load( ).
    APPEND t158 TO t2->items.
    t2->save( ).
    DATA t166 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t169 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t169 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v751| ).
    t166 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |upper| i_f1 = CONV f( 1 ) i_f2 = t169 ).
    t2->load( ).
    APPEND t166 TO t2->items.
    t2->save( ).
    DATA t174 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t177 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t177 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v751| ).
    t174 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |division| i_f1 = CONV f( 3 ) i_f2 = t177 ).
    t2->load( ).
    APPEND t174 TO t2->items.
    t2->save( ).
    DATA t182 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t185 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t185 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v752| ).
    t182 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |bintohex| i_f1 = CONV f( 1 ) i_f2 = t185 ).
    t2->load( ).
    APPEND t182 TO t2->items.
    t2->save( ).
    DATA t190 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t193 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t193 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v752| ).
    t190 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |hextobin| i_f1 = CONV f( 1 ) i_f2 = t193 ).
    t2->load( ).
    APPEND t190 TO t2->items.
    t2->save( ).
    DATA t198 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t201 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t201 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v754| ).
    t198 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |dats_is_valid| i_f1 = CONV f( 1 ) i_f2 = t201 ).
    t2->load( ).
    APPEND t198 TO t2->items.
    t2->save( ).
    DATA t206 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t209 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t209 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v754| ).
    t206 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |dats_days_between| i_f1 = CONV f( 2 ) i_f2 = t209 ).
    t2->load( ).
    APPEND t206 TO t2->items.
    t2->save( ).
    DATA t214 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t217 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t217 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v754| ).
    t214 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |dats_add_days| i_f1 = CONV f( 2 ) i_f2 = t217 ).
    t2->load( ).
    APPEND t214 TO t2->items.
    t2->save( ).
    DATA t222 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t225 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t225 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v754| ).
    t222 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |dats_add_months| i_f1 = CONV f( 2 ) i_f2 = t225 ).
    t2->load( ).
    APPEND t222 TO t2->items.
    t2->save( ).
    DATA t230 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t233 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t233 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v754| ).
    t230 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |uuid| i_f1 = CONV f( 0 ) i_f2 = t233 ).
    t2->load( ).
    APPEND t230 TO t2->items.
    t2->save( ).
    DATA t238 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t241 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t241 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v754| ).
    t238 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |utcl_current| i_f1 = CONV f( 0 ) i_f2 = t241 ).
    t2->load( ).
    APPEND t238 TO t2->items.
    t2->save( ).
    DATA t246 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t249 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t249 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    t246 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |tstmp_current_utctimestamp| i_f1 = CONV f( 0 ) i_f2 = t249 ).
    t2->load( ).
    APPEND t246 TO t2->items.
    t2->save( ).
    DATA t254 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t257 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t257 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    t254 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |tstmp_is_valid| i_f1 = CONV f( 1 ) i_f2 = t257 ).
    t2->load( ).
    APPEND t254 TO t2->items.
    t2->save( ).
    DATA t262 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t265 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t265 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    t262 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |tims_is_valid| i_f1 = CONV f( 1 ) i_f2 = t265 ).
    t2->load( ).
    APPEND t262 TO t2->items.
    t2->save( ).
    DATA t270 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t273 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t273 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    t270 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |utcl_add_seconds| i_f1 = CONV f( 2 ) i_f2 = t273 ).
    t2->load( ).
    APPEND t270 TO t2->items.
    t2->save( ).
    DATA t278 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t281 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t281 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    t278 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |utcl_seconds_between| i_f1 = CONV f( 2 ) i_f2 = t281 ).
    t2->load( ).
    APPEND t278 TO t2->items.
    t2->save( ).
    DATA t286 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t289 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t289 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    t286 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |datn_days_between| i_f1 = CONV f( 2 ) i_f2 = t289 ).
    t2->load( ).
    APPEND t286 TO t2->items.
    t2->save( ).
    DATA t294 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t297 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t297 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    t294 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |datn_add_days| i_f1 = CONV f( 2 ) i_f2 = t297 ).
    t2->load( ).
    APPEND t294 TO t2->items.
    t2->save( ).
    DATA t302 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t305 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t305 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    t302 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |datn_add_months| i_f1 = CONV f( 2 ) i_f2 = t305 ).
    t2->load( ).
    APPEND t302 TO t2->items.
    t2->save( ).
    DATA t310 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t313 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t313 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    t310 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |as_geo_json| i_f1 = CONV f( 1 ) i_f2 = t313 ).
    t2->load( ).
    APPEND t310 TO t2->items.
    t2->save( ).
    DATA t318 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t321 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t321 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    t318 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |allow_precision_loss| i_f1 = CONV f( 1 ) i_f2 = t321 ).
    t2->load( ).
    APPEND t318 TO t2->items.
    t2->save( ).
    DATA t326 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t329 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t329 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    t326 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |to_clob| i_f1 = CONV f( 1 ) i_f2 = t329 ).
    t2->load( ).
    APPEND t326 TO t2->items.
    t2->save( ).
    DATA t334 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t337 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t337 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    t334 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |to_blob| i_f1 = CONV f( 1 ) i_f2 = t337 ).
    t2->load( ).
    APPEND t334 TO t2->items.
    t2->save( ).
    DATA t342 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t345 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t345 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    t342 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |grouping| i_f1 = CONV f( 1 ) i_f2 = t345 ).
    t2->load( ).
    APPEND t342 TO t2->items.
    t2->save( ).
    DATA t350 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t353 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t353 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t350 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |extract_year| i_f1 = CONV f( 1 ) i_f2 = t353 ).
    t2->load( ).
    APPEND t350 TO t2->items.
    t2->save( ).
    DATA t358 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t361 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t361 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t358 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |extract_month| i_f1 = CONV f( 1 ) i_f2 = t361 ).
    t2->load( ).
    APPEND t358 TO t2->items.
    t2->save( ).
    DATA t366 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t369 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t369 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t366 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |extract_day| i_f1 = CONV f( 1 ) i_f2 = t369 ).
    t2->load( ).
    APPEND t366 TO t2->items.
    t2->save( ).
    DATA t374 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t377 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t377 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t374 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |extract_hour| i_f1 = CONV f( 1 ) i_f2 = t377 ).
    t2->load( ).
    APPEND t374 TO t2->items.
    t2->save( ).
    DATA t382 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t385 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t385 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t382 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |extract_minute| i_f1 = CONV f( 1 ) i_f2 = t385 ).
    t2->load( ).
    APPEND t382 TO t2->items.
    t2->save( ).
    DATA t390 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t393 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t393 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t390 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |extract_second| i_f1 = CONV f( 1 ) i_f2 = t393 ).
    t2->load( ).
    APPEND t390 TO t2->items.
    t2->save( ).
    DATA t398 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t401 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t401 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t398 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |days_between| i_f1 = CONV f( 2 ) i_f2 = t401 ).
    t2->load( ).
    APPEND t398 TO t2->items.
    t2->save( ).
    DATA t406 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t409 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t409 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t406 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |add_days| i_f1 = CONV f( 2 ) i_f2 = t409 ).
    t2->load( ).
    APPEND t406 TO t2->items.
    t2->save( ).
    DATA t414 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t417 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t417 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t414 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |add_months| i_f1 = CONV f( 2 ) i_f2 = t417 ).
    t2->load( ).
    APPEND t414 TO t2->items.
    t2->save( ).
    DATA t422 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t425 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t425 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t422 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |monthname| i_f1 = CONV f( 1 ) i_f2 = t425 ).
    t2->load( ).
    APPEND t422 TO t2->items.
    t2->save( ).
    DATA t430 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t433 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t433 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t430 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |dayname| i_f1 = CONV f( 1 ) i_f2 = t433 ).
    t2->load( ).
    APPEND t430 TO t2->items.
    t2->save( ).
    DATA t438 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t441 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t441 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t438 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |initcap| i_f1 = CONV f( 1 ) i_f2 = t441 ).
    t2->load( ).
    APPEND t438 TO t2->items.
    t2->save( ).
    DATA t446 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t449 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t449 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t446 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |is_valid| i_f1 = CONV f( 1 ) i_f2 = t449 ).
    t2->load( ).
    APPEND t446 TO t2->items.
    t2->save( ).
    DATA t454 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t457 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t457 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t454 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |weekday| i_f1 = CONV f( 1 ) i_f2 = t457 ).
    t2->load( ).
    APPEND t454 TO t2->items.
    t2->save( ).
    DATA t462 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t464 TYPE f.
    DATA(t465) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t464 = t465.
    DATA t468 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t468 = zcl_lnt_version_module=>release_b8cd.
    t462 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |locate| i_f1 = t464 i_f2 = t468->get( p0 = |v758| ) ).
    t2->load( ).
    APPEND t462 TO t2->items.
    t2->save( ).
    DATA t471 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t473 TYPE f.
    DATA(t474) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t473 = t474.
    DATA t477 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t477 = zcl_lnt_version_module=>release_b8cd.
    t471 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |greatest| i_f1 = t473 i_f2 = t477->get( p0 = |v758| ) ).
    t2->load( ).
    APPEND t471 TO t2->items.
    t2->save( ).
    DATA t480 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t482 TYPE f.
    DATA(t483) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t482 = t483.
    DATA t486 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t486 = zcl_lnt_version_module=>release_b8cd.
    t480 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |least| i_f1 = t482 i_f2 = t486->get( p0 = |v758| ) ).
    t2->load( ).
    APPEND t480 TO t2->items.
    t2->save( ).
    DATA t489 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t491 TYPE f.
    DATA(t492) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t491 = t492.
    DATA t495 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t495 = zcl_lnt_version_module=>release_b8cd.
    t489 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |hierarchy_composite_id| i_f1 = t491 i_f2 = t495->get( p0 = |v758| ) ).
    t2->load( ).
    APPEND t489 TO t2->items.
    t2->save( ).
    DATA t498 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t501 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t501 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t498 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |sin| i_f1 = CONV f( 1 ) i_f2 = t501 ).
    t2->load( ).
    APPEND t498 TO t2->items.
    t2->save( ).
    DATA t506 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t509 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t509 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t506 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |cos| i_f1 = CONV f( 1 ) i_f2 = t509 ).
    t2->load( ).
    APPEND t506 TO t2->items.
    t2->save( ).
    DATA t514 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t517 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t517 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t514 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |tan| i_f1 = CONV f( 1 ) i_f2 = t517 ).
    t2->load( ).
    APPEND t514 TO t2->items.
    t2->save( ).
    DATA t522 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t525 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t525 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t522 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |asin| i_f1 = CONV f( 1 ) i_f2 = t525 ).
    t2->load( ).
    APPEND t522 TO t2->items.
    t2->save( ).
    DATA t530 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t533 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t533 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t530 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |acos| i_f1 = CONV f( 1 ) i_f2 = t533 ).
    t2->load( ).
    APPEND t530 TO t2->items.
    t2->save( ).
    DATA t538 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t541 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t541 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t538 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |atan| i_f1 = CONV f( 1 ) i_f2 = t541 ).
    t2->load( ).
    APPEND t538 TO t2->items.
    t2->save( ).
    DATA t546 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t549 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t549 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t546 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |sinh| i_f1 = CONV f( 1 ) i_f2 = t549 ).
    t2->load( ).
    APPEND t546 TO t2->items.
    t2->save( ).
    DATA t554 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t557 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t557 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t554 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |cosh| i_f1 = CONV f( 1 ) i_f2 = t557 ).
    t2->load( ).
    APPEND t554 TO t2->items.
    t2->save( ).
    DATA t562 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t565 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t565 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t562 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |tanh| i_f1 = CONV f( 1 ) i_f2 = t565 ).
    t2->load( ).
    APPEND t562 TO t2->items.
    t2->save( ).
    DATA t570 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t573 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t573 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t570 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |sqrt| i_f1 = CONV f( 1 ) i_f2 = t573 ).
    t2->load( ).
    APPEND t570 TO t2->items.
    t2->save( ).
    DATA t578 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t581 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t581 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t578 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |power| i_f1 = CONV f( 2 ) i_f2 = t581 ).
    t2->load( ).
    APPEND t578 TO t2->items.
    t2->save( ).
    DATA t586 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t589 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t589 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t586 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |exp| i_f1 = CONV f( 1 ) i_f2 = t589 ).
    t2->load( ).
    APPEND t586 TO t2->items.
    t2->save( ).
    DATA t594 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t597 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t597 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t594 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |ln| i_f1 = CONV f( 1 ) i_f2 = t597 ).
    t2->load( ).
    APPEND t594 TO t2->items.
    t2->save( ).
    DATA t602 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t605 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t605 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t602 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |log10| i_f1 = CONV f( 1 ) i_f2 = t605 ).
    t2->load( ).
    APPEND t602 TO t2->items.
    t2->save( ).
    DATA t610 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t613 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t613 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t610 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |log| i_f1 = CONV f( 2 ) i_f2 = t613 ).
    t2->load( ).
    APPEND t610 TO t2->items.
    t2->save( ).
    DATA t618 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t621 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t621 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t618 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |utctolocal| i_f1 = CONV f( 2 ) i_f2 = t621 ).
    t2->load( ).
    APPEND t618 TO t2->items.
    t2->save( ).
    DATA t626 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t629 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t629 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t626 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |localtoutc| i_f1 = CONV f( 2 ) i_f2 = t629 ).
    t2->load( ).
    APPEND t626 TO t2->items.
    t2->save( ).
    DATA t634 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t637 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t637 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    t634 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |is_masked| i_f1 = CONV f( 1 ) i_f2 = t637 ).
    t2->load( ).
    APPEND t634 TO t2->items.
    t2->save( ).
    zcl_lnt_sql_function_module=>sql_function_defs = t2.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    DATA t643 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t643.
    DATA t646 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t648 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t648 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t653 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t653.
    DATA t656 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t665) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t665->has = abap_true.
    t665->value = abap_true.
    t656 = NEW zcl_lnt_sql_named_param( i_name = |user| i_value = |any| i_optional = t665 ).
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
    DATA t671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t656->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t671 ).
    DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t656->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t656->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t673 ).
    ENDIF.
    DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t656->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t656->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t675 ).
    ENDIF.
    t653->load( ).
    APPEND t656 TO t653->items.
    t653->save( ).
    DATA t677 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t686) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t686->has = abap_true.
    t686->value = abap_true.
    t677 = NEW zcl_lnt_sql_named_param( i_name = |client| i_value = |any| i_optional = t686 ).
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
    DATA t692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t692 ).
    DATA t694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t694 ).
    ENDIF.
    DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t696 ).
    ENDIF.
    t653->load( ).
    APPEND t677 TO t653->items.
    t653->save( ).
    DATA t698 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t707) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t707->has = abap_true.
    t707->value = abap_true.
    t698 = NEW zcl_lnt_sql_named_param( i_name = |on_error| i_value = |abap_only| i_optional = t707 ).
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
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t698->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t713 ).
    DATA t715 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t698->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t698->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t715 ).
    ENDIF.
    DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t698->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t698->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t717 ).
    ENDIF.
    t653->load( ).
    APPEND t698 TO t653->items.
    t653->save( ).
    t646 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |abap_user_timezone| i_f1 = t648 i_f2 = t653 ).
    t643->load( ).
    APPEND t646 TO t643->items.
    t643->save( ).
    DATA t720 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t722 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t722 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t727 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t727.
    DATA t730 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t739) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t739->has = abap_true.
    t739->value = abap_true.
    t730 = NEW zcl_lnt_sql_named_param( i_name = |client| i_value = |any| i_optional = t739 ).
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
    DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t745 ).
    DATA t747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t730->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t747 ).
    ENDIF.
    DATA t749 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t730->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t749 ).
    ENDIF.
    t727->load( ).
    APPEND t730 TO t727->items.
    t727->save( ).
    DATA t751 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t760) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t760->has = abap_true.
    t760->value = abap_true.
    t751 = NEW zcl_lnt_sql_named_param( i_name = |on_error| i_value = |abap_only| i_optional = t760 ).
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
    DATA t766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t751->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t766 ).
    DATA t768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t751->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t751->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t768 ).
    ENDIF.
    DATA t770 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t751->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t751->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t770 ).
    ENDIF.
    t727->load( ).
    APPEND t751 TO t727->items.
    t727->save( ).
    t720 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |abap_system_timezone| i_f1 = t722 i_f2 = t727 ).
    t643->load( ).
    APPEND t720 TO t643->items.
    t643->save( ).
    DATA t773 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t775 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t775 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t780 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t780.
    DATA t783 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t788 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t783 = NEW zcl_lnt_sql_named_param( i_name = |date| i_value = |any| i_optional = t788 ).
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
    DATA t793 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t793 ).
    DATA t795 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t795 ).
    ENDIF.
    t780->load( ).
    APPEND t783 TO t780->items.
    t780->save( ).
    DATA t797 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t802 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t797 = NEW zcl_lnt_sql_named_param( i_name = |time| i_value = |any| i_optional = t802 ).
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
    DATA t807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t797->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t807 ).
    DATA t809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t797->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t797->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t809 ).
    ENDIF.
    t780->load( ).
    APPEND t797 TO t780->items.
    t780->save( ).
    DATA t811 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t816 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t811 = NEW zcl_lnt_sql_named_param( i_name = |tzone| i_value = |any| i_optional = t816 ).
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
    DATA t821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t811->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t821 ).
    DATA t823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t811->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t811->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t823 ).
    ENDIF.
    t780->load( ).
    APPEND t811 TO t780->items.
    t780->save( ).
    DATA t825 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t834) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t834->has = abap_true.
    t834->value = abap_true.
    t825 = NEW zcl_lnt_sql_named_param( i_name = |client| i_value = |any| i_optional = t834 ).
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
    DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t825->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t840 ).
    DATA t842 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t825->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t825->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t842 ).
    ENDIF.
    DATA t844 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t825->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t825->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t844 ).
    ENDIF.
    t780->load( ).
    APPEND t825 TO t780->items.
    t780->save( ).
    DATA t846 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t855) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t855->has = abap_true.
    t855->value = abap_true.
    t846 = NEW zcl_lnt_sql_named_param( i_name = |on_error| i_value = |abap_only| i_optional = t855 ).
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
    DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t846->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t861 ).
    DATA t863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t846->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t846->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t863 ).
    ENDIF.
    DATA t865 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t846->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t846->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t865 ).
    ENDIF.
    t780->load( ).
    APPEND t846 TO t780->items.
    t780->save( ).
    t773 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |dats_tims_to_tstmp| i_f1 = t775 i_f2 = t780 ).
    t643->load( ).
    APPEND t773 TO t643->items.
    t643->save( ).
    DATA t868 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t870 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t870 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t875 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t875.
    DATA t878 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t883 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t878 = NEW zcl_lnt_sql_named_param( i_name = |tstmp| i_value = |any| i_optional = t883 ).
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
    DATA t888 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t878->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t888 ).
    DATA t890 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t878->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t878->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t890 ).
    ENDIF.
    t875->load( ).
    APPEND t878 TO t875->items.
    t875->save( ).
    DATA t892 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t897 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t892 = NEW zcl_lnt_sql_named_param( i_name = |seconds| i_value = |any| i_optional = t897 ).
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
    DATA t902 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t902 ).
    DATA t904 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t892->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t904 ).
    ENDIF.
    t875->load( ).
    APPEND t892 TO t875->items.
    t875->save( ).
    DATA t906 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t915) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t915->has = abap_true.
    t915->value = abap_true.
    t906 = NEW zcl_lnt_sql_named_param( i_name = |on_error| i_value = |abap_only| i_optional = t915 ).
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
    DATA t921 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t906->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t921 ).
    DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t906->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t906->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t923 ).
    ENDIF.
    DATA t925 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t906->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t906->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t925 ).
    ENDIF.
    t875->load( ).
    APPEND t906 TO t875->items.
    t875->save( ).
    t868 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |tstmp_add_seconds| i_f1 = t870 i_f2 = t875 ).
    t643->load( ).
    APPEND t868 TO t643->items.
    t643->save( ).
    DATA t928 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t930 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t930 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t935 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t935.
    DATA t938 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t943 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t938 = NEW zcl_lnt_sql_named_param( i_name = |tstmp1| i_value = |any| i_optional = t943 ).
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
    DATA t948 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t938->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t948 ).
    DATA t950 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t938->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t938->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t950 ).
    ENDIF.
    t935->load( ).
    APPEND t938 TO t935->items.
    t935->save( ).
    DATA t952 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t957 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t952 = NEW zcl_lnt_sql_named_param( i_name = |tstmp2| i_value = |any| i_optional = t957 ).
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
    DATA t962 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t952->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t962 ).
    DATA t964 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t952->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t952->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t964 ).
    ENDIF.
    t935->load( ).
    APPEND t952 TO t935->items.
    t935->save( ).
    DATA t966 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t975) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t975->has = abap_true.
    t975->value = abap_true.
    t966 = NEW zcl_lnt_sql_named_param( i_name = |on_error| i_value = |abap_only| i_optional = t975 ).
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
    DATA t981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t966->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t981 ).
    DATA t983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t966->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t966->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t983 ).
    ENDIF.
    DATA t985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t966->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t966->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t985 ).
    ENDIF.
    t935->load( ).
    APPEND t966 TO t935->items.
    t935->save( ).
    t928 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |tstmp_seconds_between| i_f1 = t930 i_f2 = t935 ).
    t643->load( ).
    APPEND t928 TO t643->items.
    t643->save( ).
    DATA t988 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t990 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t990 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t995 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t995.
    DATA t998 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1003 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t998 = NEW zcl_lnt_sql_named_param( i_name = |tstmp| i_value = |any| i_optional = t1003 ).
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
    DATA t1008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t998->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1008 ).
    DATA t1010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t998->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t998->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1010 ).
    ENDIF.
    t995->load( ).
    APPEND t998 TO t995->items.
    t995->save( ).
    DATA t1012 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1021) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1021->has = abap_true.
    t1021->value = abap_true.
    t1012 = NEW zcl_lnt_sql_named_param( i_name = |tzone| i_value = |any| i_optional = t1021 ).
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
    DATA t1027 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1027 ).
    DATA t1029 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1029 ).
    ENDIF.
    DATA t1031 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1031 ).
    ENDIF.
    t995->load( ).
    APPEND t1012 TO t995->items.
    t995->save( ).
    DATA t1033 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1042) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1042->has = abap_true.
    t1042->value = abap_true.
    t1033 = NEW zcl_lnt_sql_named_param( i_name = |client| i_value = |any| i_optional = t1042 ).
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
    DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1048 ).
    DATA t1050 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1050 ).
    ENDIF.
    DATA t1052 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1052 ).
    ENDIF.
    t995->load( ).
    APPEND t1033 TO t995->items.
    t995->save( ).
    DATA t1054 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1063) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1063->has = abap_true.
    t1063->value = abap_true.
    t1054 = NEW zcl_lnt_sql_named_param( i_name = |on_error| i_value = |abap_only| i_optional = t1063 ).
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
    DATA t1069 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1054->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1069 ).
    DATA t1071 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1054->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1054->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1071 ).
    ENDIF.
    DATA t1073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1054->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1054->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1073 ).
    ENDIF.
    t995->load( ).
    APPEND t1054 TO t995->items.
    t995->save( ).
    t988 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |tstmp_to_dats| i_f1 = t990 i_f2 = t995 ).
    t643->load( ).
    APPEND t988 TO t643->items.
    t643->save( ).
    DATA t1076 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t1078 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1078 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t1083 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1083.
    DATA t1086 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1091 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1086 = NEW zcl_lnt_sql_named_param( i_name = |tstmp| i_value = |any| i_optional = t1091 ).
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
    DATA t1096 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1086->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1096 ).
    DATA t1098 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1086->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1086->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1098 ).
    ENDIF.
    t1083->load( ).
    APPEND t1086 TO t1083->items.
    t1083->save( ).
    DATA t1100 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1109) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1109->has = abap_true.
    t1109->value = abap_true.
    t1100 = NEW zcl_lnt_sql_named_param( i_name = |tzone| i_value = |any| i_optional = t1109 ).
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
    DATA t1115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1115 ).
    DATA t1117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1117 ).
    ENDIF.
    DATA t1119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1119 ).
    ENDIF.
    t1083->load( ).
    APPEND t1100 TO t1083->items.
    t1083->save( ).
    DATA t1121 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1130) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1130->has = abap_true.
    t1130->value = abap_true.
    t1121 = NEW zcl_lnt_sql_named_param( i_name = |client| i_value = |any| i_optional = t1130 ).
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
    DATA t1136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1121->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1136 ).
    DATA t1138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1121->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1121->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1138 ).
    ENDIF.
    DATA t1140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1121->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1121->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1140 ).
    ENDIF.
    t1083->load( ).
    APPEND t1121 TO t1083->items.
    t1083->save( ).
    DATA t1142 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1151) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1151->has = abap_true.
    t1151->value = abap_true.
    t1142 = NEW zcl_lnt_sql_named_param( i_name = |on_error| i_value = |abap_only| i_optional = t1151 ).
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
    DATA t1157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1157 ).
    DATA t1159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1159 ).
    ENDIF.
    DATA t1161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1161 ).
    ENDIF.
    t1083->load( ).
    APPEND t1142 TO t1083->items.
    t1083->save( ).
    t1076 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |tstmp_to_tims| i_f1 = t1078 i_f2 = t1083 ).
    t643->load( ).
    APPEND t1076 TO t643->items.
    t643->save( ).
    DATA t1164 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t1166 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1166 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t1171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1171.
    DATA t1174 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1179 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1174 = NEW zcl_lnt_sql_named_param( i_name = |tstmp| i_value = |any| i_optional = t1179 ).
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
    DATA t1184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1184 ).
    DATA t1186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1186 ).
    ENDIF.
    t1171->load( ).
    APPEND t1174 TO t1171->items.
    t1171->save( ).
    DATA t1188 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1197) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1197->has = abap_true.
    t1197->value = abap_true.
    t1188 = NEW zcl_lnt_sql_named_param( i_name = |tzone| i_value = |any| i_optional = t1197 ).
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
    DATA t1203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1188->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1203 ).
    DATA t1205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1188->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1205 ).
    ENDIF.
    DATA t1207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1188->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1207 ).
    ENDIF.
    t1171->load( ).
    APPEND t1188 TO t1171->items.
    t1171->save( ).
    DATA t1209 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1218) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1218->has = abap_true.
    t1218->value = abap_true.
    t1209 = NEW zcl_lnt_sql_named_param( i_name = |client| i_value = |any| i_optional = t1218 ).
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
    DATA t1224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1209->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1224 ).
    DATA t1226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1209->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1209->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1226 ).
    ENDIF.
    DATA t1228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1209->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1209->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1228 ).
    ENDIF.
    t1171->load( ).
    APPEND t1209 TO t1171->items.
    t1171->save( ).
    DATA t1230 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1239) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1239->has = abap_true.
    t1239->value = abap_true.
    t1230 = NEW zcl_lnt_sql_named_param( i_name = |on_error| i_value = |abap_only| i_optional = t1239 ).
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
    DATA t1245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1230->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1245 ).
    DATA t1247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1230->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1230->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1247 ).
    ENDIF.
    DATA t1249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1230->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1230->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1249 ).
    ENDIF.
    t1171->load( ).
    APPEND t1230 TO t1171->items.
    t1171->save( ).
    t1164 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |tstmp_to_dst| i_f1 = t1166 i_f2 = t1171 ).
    t643->load( ).
    APPEND t1164 TO t643->items.
    t643->save( ).
    DATA t1252 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t1254 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1254 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t1259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1259.
    DATA t1262 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1267 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1262 = NEW zcl_lnt_sql_named_param( i_name = |tstmpl| i_value = |any| i_optional = t1267 ).
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
    DATA t1272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1262->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1272 ).
    DATA t1274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1262->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1262->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1274 ).
    ENDIF.
    t1259->load( ).
    APPEND t1262 TO t1259->items.
    t1259->save( ).
    DATA t1276 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1285) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1285->has = abap_true.
    t1285->value = abap_true.
    t1276 = NEW zcl_lnt_sql_named_param( i_name = |on_error| i_value = |abap_only| i_optional = t1285 ).
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
    DATA t1291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1291 ).
    DATA t1293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1293 ).
    ENDIF.
    DATA t1295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1295 ).
    ENDIF.
    t1259->load( ).
    APPEND t1276 TO t1259->items.
    t1259->save( ).
    DATA t1297 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1306) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1306->has = abap_true.
    t1306->value = abap_true.
    t1297 = NEW zcl_lnt_sql_named_param( i_name = |on_initial| i_value = |abap_only| i_optional = t1306 ).
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
    DATA t1312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1297->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1312 ).
    DATA t1314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1297->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1314 ).
    ENDIF.
    DATA t1316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1297->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1316 ).
    ENDIF.
    t1259->load( ).
    APPEND t1297 TO t1259->items.
    t1259->save( ).
    t1252 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |tstmpl_to_utcl| i_f1 = t1254 i_f2 = t1259 ).
    t643->load( ).
    APPEND t1252 TO t643->items.
    t643->save( ).
    DATA t1319 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t1321 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1321 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t1326 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1326.
    DATA t1329 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1334 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1329 = NEW zcl_lnt_sql_named_param( i_name = |utcl| i_value = |any| i_optional = t1334 ).
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
    DATA t1339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1329->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1339 ).
    DATA t1341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1329->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1329->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1341 ).
    ENDIF.
    t1326->load( ).
    APPEND t1329 TO t1326->items.
    t1326->save( ).
    DATA t1343 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1352) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1352->has = abap_true.
    t1352->value = abap_true.
    t1343 = NEW zcl_lnt_sql_named_param( i_name = |on_null| i_value = |abap_only| i_optional = t1352 ).
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
    DATA t1358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1343->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1358 ).
    DATA t1360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1343->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1360 ).
    ENDIF.
    DATA t1362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1343->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1362 ).
    ENDIF.
    t1326->load( ).
    APPEND t1343 TO t1326->items.
    t1326->save( ).
    t1319 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |tstmpl_from_utcl| i_f1 = t1321 i_f2 = t1326 ).
    t643->load( ).
    APPEND t1319 TO t643->items.
    t643->save( ).
    DATA t1365 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t1367 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1367 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t1372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1372.
    DATA t1375 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1380 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1375 = NEW zcl_lnt_sql_named_param( i_name = |dats| i_value = |any| i_optional = t1380 ).
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
    DATA t1385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1375->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1385 ).
    DATA t1387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1375->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1375->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1387 ).
    ENDIF.
    t1372->load( ).
    APPEND t1375 TO t1372->items.
    t1372->save( ).
    DATA t1389 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1398) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1398->has = abap_true.
    t1398->value = abap_true.
    t1389 = NEW zcl_lnt_sql_named_param( i_name = |on_error| i_value = |abap_only| i_optional = t1398 ).
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
    DATA t1404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1389->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1404 ).
    DATA t1406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1389->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1389->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1406 ).
    ENDIF.
    DATA t1408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1389->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1389->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1408 ).
    ENDIF.
    t1372->load( ).
    APPEND t1389 TO t1372->items.
    t1372->save( ).
    DATA t1410 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1419) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1419->has = abap_true.
    t1419->value = abap_true.
    t1410 = NEW zcl_lnt_sql_named_param( i_name = |on_initial| i_value = |abap_only| i_optional = t1419 ).
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
    DATA t1425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1410->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1425 ).
    DATA t1427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1410->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1410->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1427 ).
    ENDIF.
    DATA t1429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1410->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1410->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1429 ).
    ENDIF.
    t1372->load( ).
    APPEND t1410 TO t1372->items.
    t1372->save( ).
    t1365 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |dats_to_datn| i_f1 = t1367 i_f2 = t1372 ).
    t643->load( ).
    APPEND t1365 TO t643->items.
    t643->save( ).
    DATA t1432 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t1434 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1434 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t1439 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1439.
    DATA t1442 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1447 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1442 = NEW zcl_lnt_sql_named_param( i_name = |datn| i_value = |any| i_optional = t1447 ).
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
    DATA t1452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1442->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1452 ).
    DATA t1454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1442->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1442->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1454 ).
    ENDIF.
    t1439->load( ).
    APPEND t1442 TO t1439->items.
    t1439->save( ).
    DATA t1456 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1465) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1465->has = abap_true.
    t1465->value = abap_true.
    t1456 = NEW zcl_lnt_sql_named_param( i_name = |on_null| i_value = |abap_only| i_optional = t1465 ).
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
    DATA t1471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1456->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1471 ).
    DATA t1473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1456->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1456->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1473 ).
    ENDIF.
    DATA t1475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1456->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1456->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1475 ).
    ENDIF.
    t1439->load( ).
    APPEND t1456 TO t1439->items.
    t1439->save( ).
    t1432 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |dats_from_datn| i_f1 = t1434 i_f2 = t1439 ).
    t643->load( ).
    APPEND t1432 TO t643->items.
    t643->save( ).
    DATA t1478 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t1480 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1480 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t1485 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1485.
    DATA t1488 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1493 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1488 = NEW zcl_lnt_sql_named_param( i_name = |tims| i_value = |any| i_optional = t1493 ).
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
    DATA t1498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1488->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1498 ).
    DATA t1500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1488->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1488->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1500 ).
    ENDIF.
    t1485->load( ).
    APPEND t1488 TO t1485->items.
    t1485->save( ).
    DATA t1502 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1511) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1511->has = abap_true.
    t1511->value = abap_true.
    t1502 = NEW zcl_lnt_sql_named_param( i_name = |on_error| i_value = |abap_only| i_optional = t1511 ).
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
    DATA t1517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1502->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1517 ).
    DATA t1519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1502->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1502->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1519 ).
    ENDIF.
    DATA t1521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1502->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1502->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1521 ).
    ENDIF.
    t1485->load( ).
    APPEND t1502 TO t1485->items.
    t1485->save( ).
    t1478 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |tims_to_timn| i_f1 = t1480 i_f2 = t1485 ).
    t643->load( ).
    APPEND t1478 TO t643->items.
    t643->save( ).
    DATA t1524 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t1526 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1526 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t1531 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1531.
    DATA t1534 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1539 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1534 = NEW zcl_lnt_sql_named_param( i_name = |timn| i_value = |any| i_optional = t1539 ).
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
    DATA t1544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1534->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1544 ).
    DATA t1546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1534->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1546 ).
    ENDIF.
    t1531->load( ).
    APPEND t1534 TO t1531->items.
    t1531->save( ).
    DATA t1548 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1557) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1557->has = abap_true.
    t1557->value = abap_true.
    t1548 = NEW zcl_lnt_sql_named_param( i_name = |on_null| i_value = |abap_only| i_optional = t1557 ).
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
    DATA t1563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1548->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1563 ).
    DATA t1565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1548->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1548->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1565 ).
    ENDIF.
    DATA t1567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1548->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1548->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1567 ).
    ENDIF.
    t1531->load( ).
    APPEND t1548 TO t1531->items.
    t1531->save( ).
    t1524 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |tims_from_timn| i_f1 = t1526 i_f2 = t1531 ).
    t643->load( ).
    APPEND t1524 TO t643->items.
    t643->save( ).
    DATA t1570 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t1572 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1572 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    DATA t1577 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1577.
    DATA t1580 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1585 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1580 = NEW zcl_lnt_sql_named_param( i_name = |amount| i_value = |any| i_optional = t1585 ).
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
    DATA t1590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1580->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1590 ).
    DATA t1592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1580->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1580->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1592 ).
    ENDIF.
    t1577->load( ).
    APPEND t1580 TO t1577->items.
    t1577->save( ).
    DATA t1594 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1599 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1594 = NEW zcl_lnt_sql_named_param( i_name = |source_currency| i_value = |any| i_optional = t1599 ).
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
    DATA t1604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1594->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1604 ).
    DATA t1606 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1594->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1594->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1606 ).
    ENDIF.
    t1577->load( ).
    APPEND t1594 TO t1577->items.
    t1577->save( ).
    DATA t1608 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1613 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1608 = NEW zcl_lnt_sql_named_param( i_name = |target_currency| i_value = |any| i_optional = t1613 ).
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
    DATA t1618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1618 ).
    DATA t1620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1620 ).
    ENDIF.
    t1577->load( ).
    APPEND t1608 TO t1577->items.
    t1577->save( ).
    DATA t1622 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1627 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1622 = NEW zcl_lnt_sql_named_param( i_name = |exchange_rate_date| i_value = |any| i_optional = t1627 ).
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
    DATA t1632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1622->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1632 ).
    DATA t1634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1622->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1634 ).
    ENDIF.
    t1577->load( ).
    APPEND t1622 TO t1577->items.
    t1577->save( ).
    DATA t1636 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1645) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1645->has = abap_true.
    t1645->value = abap_true.
    t1636 = NEW zcl_lnt_sql_named_param( i_name = |exchange_rate_type| i_value = |any| i_optional = t1645 ).
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
    DATA t1651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1636->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1651 ).
    DATA t1653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1636->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1636->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1653 ).
    ENDIF.
    DATA t1655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1636->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1636->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1655 ).
    ENDIF.
    t1577->load( ).
    APPEND t1636 TO t1577->items.
    t1577->save( ).
    DATA t1657 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1666) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1666->has = abap_true.
    t1666->value = abap_true.
    t1657 = NEW zcl_lnt_sql_named_param( i_name = |client| i_value = |any| i_optional = t1666 ).
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
    DATA t1672 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1672 ).
    DATA t1674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1674 ).
    ENDIF.
    DATA t1676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1676 ).
    ENDIF.
    t1577->load( ).
    APPEND t1657 TO t1577->items.
    t1577->save( ).
    DATA t1678 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1687) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1687->has = abap_true.
    t1687->value = abap_true.
    t1678 = NEW zcl_lnt_sql_named_param( i_name = |round| i_value = |abap_only| i_optional = t1687 ).
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
    DATA t1693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1678->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1693 ).
    DATA t1695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1678->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1678->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1695 ).
    ENDIF.
    DATA t1697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1678->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1678->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1697 ).
    ENDIF.
    t1577->load( ).
    APPEND t1678 TO t1577->items.
    t1577->save( ).
    DATA t1699 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1708) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1708->has = abap_true.
    t1708->value = abap_true.
    t1699 = NEW zcl_lnt_sql_named_param( i_name = |decimal_shift| i_value = |abap_only| i_optional = t1708 ).
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
    DATA t1714 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1699->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1714 ).
    DATA t1716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1699->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1699->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1716 ).
    ENDIF.
    DATA t1718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1699->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1699->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1718 ).
    ENDIF.
    t1577->load( ).
    APPEND t1699 TO t1577->items.
    t1577->save( ).
    DATA t1720 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1729) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1729->has = abap_true.
    t1729->value = abap_true.
    t1720 = NEW zcl_lnt_sql_named_param( i_name = |decimal_shift_back| i_value = |abap_only| i_optional = t1729 ).
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
    DATA t1735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1720->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1735 ).
    DATA t1737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1720->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1720->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1737 ).
    ENDIF.
    DATA t1739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1720->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1720->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1739 ).
    ENDIF.
    t1577->load( ).
    APPEND t1720 TO t1577->items.
    t1577->save( ).
    DATA t1741 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1750) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1750->has = abap_true.
    t1750->value = abap_true.
    t1741 = NEW zcl_lnt_sql_named_param( i_name = |on_error| i_value = |abap_only| i_optional = t1750 ).
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
    DATA t1756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1741->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1756 ).
    DATA t1758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1741->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1741->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1758 ).
    ENDIF.
    DATA t1760 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1741->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1741->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1760 ).
    ENDIF.
    t1577->load( ).
    APPEND t1741 TO t1577->items.
    t1577->save( ).
    t1570 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |currency_conversion| i_f1 = t1572 i_f2 = t1577 ).
    t643->load( ).
    APPEND t1570 TO t643->items.
    t643->save( ).
    DATA t1763 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t1765 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1765 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    DATA t1770 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1770.
    DATA t1773 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1778 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1773 = NEW zcl_lnt_sql_named_param( i_name = |quantity| i_value = |any| i_optional = t1778 ).
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
    DATA t1783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1773->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1783 ).
    DATA t1785 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1773->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1773->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1785 ).
    ENDIF.
    t1770->load( ).
    APPEND t1773 TO t1770->items.
    t1770->save( ).
    DATA t1787 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1792 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1787 = NEW zcl_lnt_sql_named_param( i_name = |source_unit| i_value = |any| i_optional = t1792 ).
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
    DATA t1797 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1787->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1797 ).
    DATA t1799 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1787->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1787->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1799 ).
    ENDIF.
    t1770->load( ).
    APPEND t1787 TO t1770->items.
    t1770->save( ).
    DATA t1801 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1806 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1801 = NEW zcl_lnt_sql_named_param( i_name = |target_unit| i_value = |any| i_optional = t1806 ).
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
    DATA t1811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1801->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1811 ).
    DATA t1813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1801->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1801->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1813 ).
    ENDIF.
    t1770->load( ).
    APPEND t1801 TO t1770->items.
    t1770->save( ).
    DATA t1815 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1824) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1824->has = abap_true.
    t1824->value = abap_true.
    t1815 = NEW zcl_lnt_sql_named_param( i_name = |client| i_value = |any| i_optional = t1824 ).
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
    DATA t1830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1815->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1830 ).
    DATA t1832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1815->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1815->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1832 ).
    ENDIF.
    DATA t1834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1815->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1815->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1834 ).
    ENDIF.
    t1770->load( ).
    APPEND t1815 TO t1770->items.
    t1770->save( ).
    DATA t1836 TYPE REF TO zcl_lnt_sql_named_param.
    DATA(t1845) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1845->has = abap_true.
    t1845->value = abap_true.
    t1836 = NEW zcl_lnt_sql_named_param( i_name = |on_error| i_value = |abap_only| i_optional = t1845 ).
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
    DATA t1851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1836->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1851 ).
    DATA t1853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1836->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1836->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1853 ).
    ENDIF.
    DATA t1855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1836->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1836->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1855 ).
    ENDIF.
    t1770->load( ).
    APPEND t1836 TO t1770->items.
    t1770->save( ).
    t1763 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |unit_conversion| i_f1 = t1765 i_f2 = t1770 ).
    t643->load( ).
    APPEND t1763 TO t643->items.
    t643->save( ).
    DATA t1858 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t1860 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1860 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    DATA t1865 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1865.
    DATA t1868 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1873 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1868 = NEW zcl_lnt_sql_named_param( i_name = |curr| i_value = |any| i_optional = t1873 ).
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
    DATA t1878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1868->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1878 ).
    DATA t1880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1868->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1868->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1880 ).
    ENDIF.
    t1865->load( ).
    APPEND t1868 TO t1865->items.
    t1865->save( ).
    DATA t1882 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1887 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1882 = NEW zcl_lnt_sql_named_param( i_name = |cuky| i_value = |any| i_optional = t1887 ).
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
    DATA t1892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1882->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1892 ).
    DATA t1894 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1882->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1894 ).
    ENDIF.
    t1865->load( ).
    APPEND t1882 TO t1865->items.
    t1865->save( ).
    t1858 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |curr_to_decfloat_amount| i_f1 = t1860 i_f2 = t1865 ).
    t643->load( ).
    APPEND t1858 TO t643->items.
    t643->save( ).
    DATA t1897 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t1899 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1899 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    DATA t1904 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1904.
    DATA t1907 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1912 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1907 = NEW zcl_lnt_sql_named_param( i_name = |lang| i_value = |any| i_optional = t1912 ).
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
    DATA t1917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1907->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1917 ).
    DATA t1919 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1907->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1907->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1919 ).
    ENDIF.
    t1904->load( ).
    APPEND t1907 TO t1904->items.
    t1904->save( ).
    t1897 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |lang_to_char| i_f1 = t1899 i_f2 = t1904 ).
    t643->load( ).
    APPEND t1897 TO t643->items.
    t643->save( ).
    DATA t1922 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t1924 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1924 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    DATA t1929 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1929.
    DATA t1932 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1937 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1932 = NEW zcl_lnt_sql_named_param( i_name = |base| i_value = |any| i_optional = t1937 ).
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
    DATA t1942 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1932->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1942 ).
    DATA t1944 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1932->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1932->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1944 ).
    ENDIF.
    t1929->load( ).
    APPEND t1932 TO t1929->items.
    t1929->save( ).
    DATA t1946 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t1951 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1946 = NEW zcl_lnt_sql_named_param( i_name = |exp| i_value = |any| i_optional = t1951 ).
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
    DATA t1956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1946->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1956 ).
    DATA t1958 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1946->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1946->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t1958 ).
    ENDIF.
    t1929->load( ).
    APPEND t1946 TO t1929->items.
    t1929->save( ).
    t1922 = NEW zcl_lnt_tuple_443ddf92( i_f0 = |ipow| i_f1 = t1924 i_f2 = t1929 ).
    t643->load( ).
    APPEND t1922 TO t643->items.
    t643->save( ).
    zcl_lnt_sql_function_module=>sql_named_function_defs = t643.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    DATA t1962 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1962.
    DATA t1965 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t1967 TYPE f.
    DATA(t1968) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1967 = t1968.
    DATA t1971 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1971 = zcl_lnt_version_module=>release_b8cd.
    t1965 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_new_point| i_f1 = t1967 i_f2 = t1971->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t1965 TO t1962->items.
    t1962->save( ).
    DATA t1974 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t1976 TYPE f.
    DATA(t1977) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1976 = t1977.
    DATA t1980 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1980 = zcl_lnt_version_module=>release_b8cd.
    t1974 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_new_pointz| i_f1 = t1976 i_f2 = t1980->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t1974 TO t1962->items.
    t1962->save( ).
    DATA t1983 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t1985 TYPE f.
    DATA(t1986) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1985 = t1986.
    DATA t1989 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1989 = zcl_lnt_version_module=>release_b8cd.
    t1983 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_new_pointm| i_f1 = t1985 i_f2 = t1989->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t1983 TO t1962->items.
    t1962->save( ).
    DATA t1992 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t1994 TYPE f.
    DATA(t1995) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t1994 = t1995.
    DATA t1998 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1998 = zcl_lnt_version_module=>release_b8cd.
    t1992 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_new_pointzm| i_f1 = t1994 i_f2 = t1998->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t1992 TO t1962->items.
    t1962->save( ).
    DATA t2001 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2003 TYPE f.
    DATA(t2004) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2003 = t2004.
    DATA t2007 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2007 = zcl_lnt_version_module=>release_b8cd.
    t2001 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_new_linestring| i_f1 = t2003 i_f2 = t2007->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2001 TO t1962->items.
    t1962->save( ).
    DATA t2010 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2012 TYPE f.
    DATA(t2013) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2012 = t2013.
    DATA t2016 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2016 = zcl_lnt_version_module=>release_b8cd.
    t2010 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_new_multilinestring| i_f1 = t2012 i_f2 = t2016->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2010 TO t1962->items.
    t1962->save( ).
    DATA t2019 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2021 TYPE f.
    DATA(t2022) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2021 = t2022.
    DATA t2025 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2025 = zcl_lnt_version_module=>release_b8cd.
    t2019 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_new_polygon| i_f1 = t2021 i_f2 = t2025->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2019 TO t1962->items.
    t1962->save( ).
    DATA t2028 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2030 TYPE f.
    DATA(t2031) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2030 = t2031.
    DATA t2034 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2034 = zcl_lnt_version_module=>release_b8cd.
    t2028 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_new_multipolygon| i_f1 = t2030 i_f2 = t2034->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2028 TO t1962->items.
    t1962->save( ).
    DATA t2037 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2039 TYPE f.
    DATA(t2040) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2039 = t2040.
    DATA t2043 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2043 = zcl_lnt_version_module=>release_b8cd.
    t2037 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_new_multipoint| i_f1 = t2039 i_f2 = t2043->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2037 TO t1962->items.
    t1962->save( ).
    DATA t2046 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2048 TYPE f.
    DATA(t2049) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2048 = t2049.
    DATA t2052 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2052 = zcl_lnt_version_module=>release_b8cd.
    t2046 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_new_circularstring| i_f1 = t2048 i_f2 = t2052->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2046 TO t1962->items.
    t1962->save( ).
    DATA t2055 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2057 TYPE f.
    DATA(t2058) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2057 = t2058.
    DATA t2061 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2061 = zcl_lnt_version_module=>release_b8cd.
    t2055 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_new_geometrycollection| i_f1 = t2057 i_f2 = t2061->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2055 TO t1962->items.
    t1962->save( ).
    DATA t2064 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2066 TYPE f.
    DATA(t2067) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2066 = t2067.
    DATA t2070 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2070 = zcl_lnt_version_module=>release_b8cd.
    t2064 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_srid| i_f1 = t2066 i_f2 = t2070->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2064 TO t1962->items.
    t1962->save( ).
    DATA t2073 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2075 TYPE f.
    DATA(t2076) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2075 = t2076.
    DATA t2079 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2079 = zcl_lnt_version_module=>release_b8cd.
    t2073 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_relate| i_f1 = t2075 i_f2 = t2079->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2073 TO t1962->items.
    t1962->save( ).
    DATA t2082 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2084 TYPE f.
    DATA(t2085) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2084 = t2085.
    DATA t2088 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2088 = zcl_lnt_version_module=>release_b8cd.
    t2082 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_geomfromtext| i_f1 = t2084 i_f2 = t2088->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2082 TO t1962->items.
    t1962->save( ).
    DATA t2091 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2093 TYPE f.
    DATA(t2094) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2093 = t2094.
    DATA t2097 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2097 = zcl_lnt_version_module=>release_b8cd.
    t2091 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_geomfromwkt| i_f1 = t2093 i_f2 = t2097->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2091 TO t1962->items.
    t1962->save( ).
    DATA t2100 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2102 TYPE f.
    DATA(t2103) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2102 = t2103.
    DATA t2106 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2106 = zcl_lnt_version_module=>release_b8cd.
    t2100 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_geomfromewkt| i_f1 = t2102 i_f2 = t2106->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2100 TO t1962->items.
    t1962->save( ).
    DATA t2109 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2111 TYPE f.
    DATA(t2112) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2111 = t2112.
    DATA t2115 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2115 = zcl_lnt_version_module=>release_b8cd.
    t2109 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_geomfromwkb| i_f1 = t2111 i_f2 = t2115->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2109 TO t1962->items.
    t1962->save( ).
    DATA t2118 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2120 TYPE f.
    DATA(t2121) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2120 = t2121.
    DATA t2124 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2124 = zcl_lnt_version_module=>release_b8cd.
    t2118 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_geomfromewkb| i_f1 = t2120 i_f2 = t2124->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2118 TO t1962->items.
    t1962->save( ).
    DATA t2127 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2129 TYPE f.
    DATA(t2130) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2129 = t2130.
    DATA t2133 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2133 = zcl_lnt_version_module=>release_b8cd.
    t2127 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_geomfromgeojson| i_f1 = t2129 i_f2 = t2133->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2127 TO t1962->items.
    t1962->save( ).
    DATA t2136 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2138 TYPE f.
    DATA(t2139) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2138 = t2139.
    DATA t2142 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2142 = zcl_lnt_version_module=>release_b8cd.
    t2136 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_geomfromesrijson| i_f1 = t2138 i_f2 = t2142->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2136 TO t1962->items.
    t1962->save( ).
    DATA t2145 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2147 TYPE f.
    DATA(t2148) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2147 = t2148.
    DATA t2151 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2151 = zcl_lnt_version_module=>release_b8cd.
    t2145 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_geomfromgeohash| i_f1 = t2147 i_f2 = t2151->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2145 TO t1962->items.
    t1962->save( ).
    DATA t2154 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2156 TYPE f.
    DATA(t2157) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2156 = t2157.
    DATA t2160 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2160 = zcl_lnt_version_module=>release_b8cd.
    t2154 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_pointfromtext| i_f1 = t2156 i_f2 = t2160->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2154 TO t1962->items.
    t1962->save( ).
    DATA t2163 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2165 TYPE f.
    DATA(t2166) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2165 = t2166.
    DATA t2169 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2169 = zcl_lnt_version_module=>release_b8cd.
    t2163 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_pointfromgeohash| i_f1 = t2165 i_f2 = t2169->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2163 TO t1962->items.
    t1962->save( ).
    DATA t2172 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2174 TYPE f.
    DATA(t2175) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2174 = t2175.
    DATA t2178 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2178 = zcl_lnt_version_module=>release_b8cd.
    t2172 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_makeline| i_f1 = t2174 i_f2 = t2178->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2172 TO t1962->items.
    t1962->save( ).
    DATA t2181 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2183 TYPE f.
    DATA(t2184) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2183 = t2184.
    DATA t2187 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2187 = zcl_lnt_version_module=>release_b8cd.
    t2181 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_makepolygon| i_f1 = t2183 i_f2 = t2187->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2181 TO t1962->items.
    t1962->save( ).
    DATA t2190 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2192 TYPE f.
    DATA(t2193) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2192 = t2193.
    DATA t2196 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2196 = zcl_lnt_version_module=>release_b8cd.
    t2190 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_x| i_f1 = t2192 i_f2 = t2196->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2190 TO t1962->items.
    t1962->save( ).
    DATA t2199 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2201 TYPE f.
    DATA(t2202) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2201 = t2202.
    DATA t2205 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2205 = zcl_lnt_version_module=>release_b8cd.
    t2199 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_y| i_f1 = t2201 i_f2 = t2205->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2199 TO t1962->items.
    t1962->save( ).
    DATA t2208 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2210 TYPE f.
    DATA(t2211) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2210 = t2211.
    DATA t2214 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2214 = zcl_lnt_version_module=>release_b8cd.
    t2208 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_z| i_f1 = t2210 i_f2 = t2214->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2208 TO t1962->items.
    t1962->save( ).
    DATA t2217 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2219 TYPE f.
    DATA(t2220) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2219 = t2220.
    DATA t2223 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2223 = zcl_lnt_version_module=>release_b8cd.
    t2217 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_m| i_f1 = t2219 i_f2 = t2223->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2217 TO t1962->items.
    t1962->save( ).
    DATA t2226 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2228 TYPE f.
    DATA(t2229) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2228 = t2229.
    DATA t2232 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2232 = zcl_lnt_version_module=>release_b8cd.
    t2226 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_xmax| i_f1 = t2228 i_f2 = t2232->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2226 TO t1962->items.
    t1962->save( ).
    DATA t2235 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2237 TYPE f.
    DATA(t2238) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2237 = t2238.
    DATA t2241 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2241 = zcl_lnt_version_module=>release_b8cd.
    t2235 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_xmin| i_f1 = t2237 i_f2 = t2241->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2235 TO t1962->items.
    t1962->save( ).
    DATA t2244 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2246 TYPE f.
    DATA(t2247) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2246 = t2247.
    DATA t2250 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2250 = zcl_lnt_version_module=>release_b8cd.
    t2244 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_ymax| i_f1 = t2246 i_f2 = t2250->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2244 TO t1962->items.
    t1962->save( ).
    DATA t2253 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2255 TYPE f.
    DATA(t2256) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2255 = t2256.
    DATA t2259 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2259 = zcl_lnt_version_module=>release_b8cd.
    t2253 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_ymin| i_f1 = t2255 i_f2 = t2259->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2253 TO t1962->items.
    t1962->save( ).
    DATA t2262 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2264 TYPE f.
    DATA(t2265) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2264 = t2265.
    DATA t2268 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2268 = zcl_lnt_version_module=>release_b8cd.
    t2262 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_zmax| i_f1 = t2264 i_f2 = t2268->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2262 TO t1962->items.
    t1962->save( ).
    DATA t2271 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2273 TYPE f.
    DATA(t2274) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2273 = t2274.
    DATA t2277 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2277 = zcl_lnt_version_module=>release_b8cd.
    t2271 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_zmin| i_f1 = t2273 i_f2 = t2277->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2271 TO t1962->items.
    t1962->save( ).
    DATA t2280 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2282 TYPE f.
    DATA(t2283) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2282 = t2283.
    DATA t2286 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2286 = zcl_lnt_version_module=>release_b8cd.
    t2280 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_mmax| i_f1 = t2282 i_f2 = t2286->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2280 TO t1962->items.
    t1962->save( ).
    DATA t2289 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2291 TYPE f.
    DATA(t2292) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2291 = t2292.
    DATA t2295 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2295 = zcl_lnt_version_module=>release_b8cd.
    t2289 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_mmin| i_f1 = t2291 i_f2 = t2295->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2289 TO t1962->items.
    t1962->save( ).
    DATA t2298 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2300 TYPE f.
    DATA(t2301) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2300 = t2301.
    DATA t2304 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2304 = zcl_lnt_version_module=>release_b8cd.
    t2298 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_area| i_f1 = t2300 i_f2 = t2304->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2298 TO t1962->items.
    t1962->save( ).
    DATA t2307 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2309 TYPE f.
    DATA(t2310) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2309 = t2310.
    DATA t2313 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2313 = zcl_lnt_version_module=>release_b8cd.
    t2307 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_length| i_f1 = t2309 i_f2 = t2313->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2307 TO t1962->items.
    t1962->save( ).
    DATA t2316 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2318 TYPE f.
    DATA(t2319) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2318 = t2319.
    DATA t2322 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2322 = zcl_lnt_version_module=>release_b8cd.
    t2316 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_perimeter| i_f1 = t2318 i_f2 = t2322->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2316 TO t1962->items.
    t1962->save( ).
    DATA t2325 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2327 TYPE f.
    DATA(t2328) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2327 = t2328.
    DATA t2331 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2331 = zcl_lnt_version_module=>release_b8cd.
    t2325 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_dimension| i_f1 = t2327 i_f2 = t2331->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2325 TO t1962->items.
    t1962->save( ).
    DATA t2334 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2336 TYPE f.
    DATA(t2337) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2336 = t2337.
    DATA t2340 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2340 = zcl_lnt_version_module=>release_b8cd.
    t2334 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_coorddim| i_f1 = t2336 i_f2 = t2340->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2334 TO t1962->items.
    t1962->save( ).
    DATA t2343 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2345 TYPE f.
    DATA(t2346) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2345 = t2346.
    DATA t2349 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2349 = zcl_lnt_version_module=>release_b8cd.
    t2343 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_geometrytype| i_f1 = t2345 i_f2 = t2349->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2343 TO t1962->items.
    t1962->save( ).
    DATA t2352 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2354 TYPE f.
    DATA(t2355) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2354 = t2355.
    DATA t2358 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2358 = zcl_lnt_version_module=>release_b8cd.
    t2352 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_isempty| i_f1 = t2354 i_f2 = t2358->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2352 TO t1962->items.
    t1962->save( ).
    DATA t2361 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2363 TYPE f.
    DATA(t2364) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2363 = t2364.
    DATA t2367 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2367 = zcl_lnt_version_module=>release_b8cd.
    t2361 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_issimple| i_f1 = t2363 i_f2 = t2367->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2361 TO t1962->items.
    t1962->save( ).
    DATA t2370 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2372 TYPE f.
    DATA(t2373) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2372 = t2373.
    DATA t2376 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2376 = zcl_lnt_version_module=>release_b8cd.
    t2370 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_isclosed| i_f1 = t2372 i_f2 = t2376->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2370 TO t1962->items.
    t1962->save( ).
    DATA t2379 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2381 TYPE f.
    DATA(t2382) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2381 = t2382.
    DATA t2385 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2385 = zcl_lnt_version_module=>release_b8cd.
    t2379 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_isring| i_f1 = t2381 i_f2 = t2385->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2379 TO t1962->items.
    t1962->save( ).
    DATA t2388 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2390 TYPE f.
    DATA(t2391) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2390 = t2391.
    DATA t2394 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2394 = zcl_lnt_version_module=>release_b8cd.
    t2388 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_isvalid| i_f1 = t2390 i_f2 = t2394->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2388 TO t1962->items.
    t1962->save( ).
    DATA t2397 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2399 TYPE f.
    DATA(t2400) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2399 = t2400.
    DATA t2403 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2403 = zcl_lnt_version_module=>release_b8cd.
    t2397 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_isvalidtrajectory| i_f1 = t2399 i_f2 = t2403->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2397 TO t1962->items.
    t1962->save( ).
    DATA t2406 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2408 TYPE f.
    DATA(t2409) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2408 = t2409.
    DATA t2412 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2412 = zcl_lnt_version_module=>release_b8cd.
    t2406 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_is3d| i_f1 = t2408 i_f2 = t2412->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2406 TO t1962->items.
    t1962->save( ).
    DATA t2415 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2417 TYPE f.
    DATA(t2418) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2417 = t2418.
    DATA t2421 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2421 = zcl_lnt_version_module=>release_b8cd.
    t2415 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_ismeasured| i_f1 = t2417 i_f2 = t2421->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2415 TO t1962->items.
    t1962->save( ).
    DATA t2424 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2426 TYPE f.
    DATA(t2427) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2426 = t2427.
    DATA t2430 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2430 = zcl_lnt_version_module=>release_b8cd.
    t2424 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_invalidreason| i_f1 = t2426 i_f2 = t2430->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2424 TO t1962->items.
    t1962->save( ).
    DATA t2433 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2435 TYPE f.
    DATA(t2436) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2435 = t2436.
    DATA t2439 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2439 = zcl_lnt_version_module=>release_b8cd.
    t2433 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_numpoints| i_f1 = t2435 i_f2 = t2439->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2433 TO t1962->items.
    t1962->save( ).
    DATA t2442 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2444 TYPE f.
    DATA(t2445) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2444 = t2445.
    DATA t2448 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2448 = zcl_lnt_version_module=>release_b8cd.
    t2442 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_numgeometries| i_f1 = t2444 i_f2 = t2448->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2442 TO t1962->items.
    t1962->save( ).
    DATA t2451 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2453 TYPE f.
    DATA(t2454) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2453 = t2454.
    DATA t2457 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2457 = zcl_lnt_version_module=>release_b8cd.
    t2451 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_numinteriorring| i_f1 = t2453 i_f2 = t2457->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2451 TO t1962->items.
    t1962->save( ).
    DATA t2460 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2462 TYPE f.
    DATA(t2463) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2462 = t2463.
    DATA t2466 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2466 = zcl_lnt_version_module=>release_b8cd.
    t2460 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_numinteriorrings| i_f1 = t2462 i_f2 = t2466->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2460 TO t1962->items.
    t1962->save( ).
    DATA t2469 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2471 TYPE f.
    DATA(t2472) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2471 = t2472.
    DATA t2475 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2475 = zcl_lnt_version_module=>release_b8cd.
    t2469 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_envelope| i_f1 = t2471 i_f2 = t2475->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2469 TO t1962->items.
    t1962->save( ).
    DATA t2478 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2480 TYPE f.
    DATA(t2481) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2480 = t2481.
    DATA t2484 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2484 = zcl_lnt_version_module=>release_b8cd.
    t2478 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_boundary| i_f1 = t2480 i_f2 = t2484->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2478 TO t1962->items.
    t1962->save( ).
    DATA t2487 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2489 TYPE f.
    DATA(t2490) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2489 = t2490.
    DATA t2493 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2493 = zcl_lnt_version_module=>release_b8cd.
    t2487 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_exteriorring| i_f1 = t2489 i_f2 = t2493->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2487 TO t1962->items.
    t1962->save( ).
    DATA t2496 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2498 TYPE f.
    DATA(t2499) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2498 = t2499.
    DATA t2502 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2502 = zcl_lnt_version_module=>release_b8cd.
    t2496 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_startpoint| i_f1 = t2498 i_f2 = t2502->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2496 TO t1962->items.
    t1962->save( ).
    DATA t2505 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2507 TYPE f.
    DATA(t2508) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2507 = t2508.
    DATA t2511 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2511 = zcl_lnt_version_module=>release_b8cd.
    t2505 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_endpoint| i_f1 = t2507 i_f2 = t2511->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2505 TO t1962->items.
    t1962->save( ).
    DATA t2514 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2516 TYPE f.
    DATA(t2517) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2516 = t2517.
    DATA t2520 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2520 = zcl_lnt_version_module=>release_b8cd.
    t2514 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_centroid| i_f1 = t2516 i_f2 = t2520->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2514 TO t1962->items.
    t1962->save( ).
    DATA t2523 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2525 TYPE f.
    DATA(t2526) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2525 = t2526.
    DATA t2529 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2529 = zcl_lnt_version_module=>release_b8cd.
    t2523 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_pointonsurface| i_f1 = t2525 i_f2 = t2529->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2523 TO t1962->items.
    t1962->save( ).
    DATA t2532 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2534 TYPE f.
    DATA(t2535) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2534 = t2535.
    DATA t2538 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2538 = zcl_lnt_version_module=>release_b8cd.
    t2532 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_convexhull| i_f1 = t2534 i_f2 = t2538->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2532 TO t1962->items.
    t1962->save( ).
    DATA t2541 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2543 TYPE f.
    DATA(t2544) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2543 = t2544.
    DATA t2547 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2547 = zcl_lnt_version_module=>release_b8cd.
    t2541 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_concavehull| i_f1 = t2543 i_f2 = t2547->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2541 TO t1962->items.
    t1962->save( ).
    DATA t2550 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2552 TYPE f.
    DATA(t2553) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2552 = t2553.
    DATA t2556 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2556 = zcl_lnt_version_module=>release_b8cd.
    t2550 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_reverse| i_f1 = t2552 i_f2 = t2556->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2550 TO t1962->items.
    t1962->save( ).
    DATA t2559 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2561 TYPE f.
    DATA(t2562) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2561 = t2562.
    DATA t2565 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2565 = zcl_lnt_version_module=>release_b8cd.
    t2559 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_force2d| i_f1 = t2561 i_f2 = t2565->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2559 TO t1962->items.
    t1962->save( ).
    DATA t2568 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2570 TYPE f.
    DATA(t2571) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2570 = t2571.
    DATA t2574 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2574 = zcl_lnt_version_module=>release_b8cd.
    t2568 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_force3dz| i_f1 = t2570 i_f2 = t2574->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2568 TO t1962->items.
    t1962->save( ).
    DATA t2577 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2579 TYPE f.
    DATA(t2580) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2579 = t2580.
    DATA t2583 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2583 = zcl_lnt_version_module=>release_b8cd.
    t2577 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_force3dm| i_f1 = t2579 i_f2 = t2583->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2577 TO t1962->items.
    t1962->save( ).
    DATA t2586 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2588 TYPE f.
    DATA(t2589) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2588 = t2589.
    DATA t2592 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2592 = zcl_lnt_version_module=>release_b8cd.
    t2586 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_force4d| i_f1 = t2588 i_f2 = t2592->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2586 TO t1962->items.
    t1962->save( ).
    DATA t2595 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2597 TYPE f.
    DATA(t2598) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2597 = t2598.
    DATA t2601 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2601 = zcl_lnt_version_module=>release_b8cd.
    t2595 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_makevalid| i_f1 = t2597 i_f2 = t2601->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2595 TO t1962->items.
    t1962->save( ).
    DATA t2604 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2606 TYPE f.
    DATA(t2607) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2606 = t2607.
    DATA t2610 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2610 = zcl_lnt_version_module=>release_b8cd.
    t2604 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_geohash| i_f1 = t2606 i_f2 = t2610->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2604 TO t1962->items.
    t1962->save( ).
    DATA t2613 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2615 TYPE f.
    DATA(t2616) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2615 = t2616.
    DATA t2619 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2619 = zcl_lnt_version_module=>release_b8cd.
    t2613 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_aswkt| i_f1 = t2615 i_f2 = t2619->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2613 TO t1962->items.
    t1962->save( ).
    DATA t2622 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2624 TYPE f.
    DATA(t2625) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2624 = t2625.
    DATA t2628 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2628 = zcl_lnt_version_module=>release_b8cd.
    t2622 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_aswkb| i_f1 = t2624 i_f2 = t2628->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2622 TO t1962->items.
    t1962->save( ).
    DATA t2631 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2633 TYPE f.
    DATA(t2634) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2633 = t2634.
    DATA t2637 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2637 = zcl_lnt_version_module=>release_b8cd.
    t2631 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_asewkt| i_f1 = t2633 i_f2 = t2637->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2631 TO t1962->items.
    t1962->save( ).
    DATA t2640 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2642 TYPE f.
    DATA(t2643) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2642 = t2643.
    DATA t2646 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2646 = zcl_lnt_version_module=>release_b8cd.
    t2640 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_asewkb| i_f1 = t2642 i_f2 = t2646->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2640 TO t1962->items.
    t1962->save( ).
    DATA t2649 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2651 TYPE f.
    DATA(t2652) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2651 = t2652.
    DATA t2655 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2655 = zcl_lnt_version_module=>release_b8cd.
    t2649 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_asbinary| i_f1 = t2651 i_f2 = t2655->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2649 TO t1962->items.
    t1962->save( ).
    DATA t2658 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2660 TYPE f.
    DATA(t2661) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2660 = t2661.
    DATA t2664 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2664 = zcl_lnt_version_module=>release_b8cd.
    t2658 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_astext| i_f1 = t2660 i_f2 = t2664->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2658 TO t1962->items.
    t1962->save( ).
    DATA t2667 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2669 TYPE f.
    DATA(t2670) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2669 = t2670.
    DATA t2673 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2673 = zcl_lnt_version_module=>release_b8cd.
    t2667 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_asgeojson| i_f1 = t2669 i_f2 = t2673->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2667 TO t1962->items.
    t1962->save( ).
    DATA t2676 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2678 TYPE f.
    DATA(t2679) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2678 = t2679.
    DATA t2682 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2682 = zcl_lnt_version_module=>release_b8cd.
    t2676 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_asesrijson| i_f1 = t2678 i_f2 = t2682->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2676 TO t1962->items.
    t1962->save( ).
    DATA t2685 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2687 TYPE f.
    DATA(t2688) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2687 = t2688.
    DATA t2691 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2691 = zcl_lnt_version_module=>release_b8cd.
    t2685 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_assvg| i_f1 = t2687 i_f2 = t2691->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2685 TO t1962->items.
    t1962->save( ).
    DATA t2694 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2696 TYPE f.
    DATA(t2697) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2696 = t2697.
    DATA t2700 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2700 = zcl_lnt_version_module=>release_b8cd.
    t2694 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_distance| i_f1 = t2696 i_f2 = t2700->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2694 TO t1962->items.
    t1962->save( ).
    DATA t2703 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2705 TYPE f.
    DATA(t2706) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2705 = t2706.
    DATA t2709 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2709 = zcl_lnt_version_module=>release_b8cd.
    t2703 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_withindistance| i_f1 = t2705 i_f2 = t2709->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2703 TO t1962->items.
    t1962->save( ).
    DATA t2712 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2714 TYPE f.
    DATA(t2715) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2714 = t2715.
    DATA t2718 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2718 = zcl_lnt_version_module=>release_b8cd.
    t2712 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_contains| i_f1 = t2714 i_f2 = t2718->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2712 TO t1962->items.
    t1962->save( ).
    DATA t2721 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2723 TYPE f.
    DATA(t2724) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2723 = t2724.
    DATA t2727 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2727 = zcl_lnt_version_module=>release_b8cd.
    t2721 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_covers| i_f1 = t2723 i_f2 = t2727->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2721 TO t1962->items.
    t1962->save( ).
    DATA t2730 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2732 TYPE f.
    DATA(t2733) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2732 = t2733.
    DATA t2736 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2736 = zcl_lnt_version_module=>release_b8cd.
    t2730 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_coveredby| i_f1 = t2732 i_f2 = t2736->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2730 TO t1962->items.
    t1962->save( ).
    DATA t2739 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2741 TYPE f.
    DATA(t2742) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2741 = t2742.
    DATA t2745 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2745 = zcl_lnt_version_module=>release_b8cd.
    t2739 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_crosses| i_f1 = t2741 i_f2 = t2745->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2739 TO t1962->items.
    t1962->save( ).
    DATA t2748 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2750 TYPE f.
    DATA(t2751) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2750 = t2751.
    DATA t2754 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2754 = zcl_lnt_version_module=>release_b8cd.
    t2748 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_disjoint| i_f1 = t2750 i_f2 = t2754->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2748 TO t1962->items.
    t1962->save( ).
    DATA t2757 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2759 TYPE f.
    DATA(t2760) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2759 = t2760.
    DATA t2763 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2763 = zcl_lnt_version_module=>release_b8cd.
    t2757 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_equals| i_f1 = t2759 i_f2 = t2763->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2757 TO t1962->items.
    t1962->save( ).
    DATA t2766 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2768 TYPE f.
    DATA(t2769) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2768 = t2769.
    DATA t2772 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2772 = zcl_lnt_version_module=>release_b8cd.
    t2766 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_orderingequals| i_f1 = t2768 i_f2 = t2772->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2766 TO t1962->items.
    t1962->save( ).
    DATA t2775 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2777 TYPE f.
    DATA(t2778) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2777 = t2778.
    DATA t2781 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2781 = zcl_lnt_version_module=>release_b8cd.
    t2775 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_intersects| i_f1 = t2777 i_f2 = t2781->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2775 TO t1962->items.
    t1962->save( ).
    DATA t2784 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2786 TYPE f.
    DATA(t2787) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2786 = t2787.
    DATA t2790 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2790 = zcl_lnt_version_module=>release_b8cd.
    t2784 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_intersectsfilter| i_f1 = t2786 i_f2 = t2790->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2784 TO t1962->items.
    t1962->save( ).
    DATA t2793 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2795 TYPE f.
    DATA(t2796) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2795 = t2796.
    DATA t2799 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2799 = zcl_lnt_version_module=>release_b8cd.
    t2793 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_intersectsrect| i_f1 = t2795 i_f2 = t2799->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2793 TO t1962->items.
    t1962->save( ).
    DATA t2802 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2804 TYPE f.
    DATA(t2805) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2804 = t2805.
    DATA t2808 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2808 = zcl_lnt_version_module=>release_b8cd.
    t2802 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_intersectsrectplanar| i_f1 = t2804 i_f2 = t2808->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2802 TO t1962->items.
    t1962->save( ).
    DATA t2811 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2813 TYPE f.
    DATA(t2814) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2813 = t2814.
    DATA t2817 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2817 = zcl_lnt_version_module=>release_b8cd.
    t2811 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_overlaps| i_f1 = t2813 i_f2 = t2817->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2811 TO t1962->items.
    t1962->save( ).
    DATA t2820 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2822 TYPE f.
    DATA(t2823) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2822 = t2823.
    DATA t2826 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2826 = zcl_lnt_version_module=>release_b8cd.
    t2820 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_touches| i_f1 = t2822 i_f2 = t2826->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2820 TO t1962->items.
    t1962->save( ).
    DATA t2829 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2831 TYPE f.
    DATA(t2832) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2831 = t2832.
    DATA t2835 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2835 = zcl_lnt_version_module=>release_b8cd.
    t2829 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_within| i_f1 = t2831 i_f2 = t2835->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2829 TO t1962->items.
    t1962->save( ).
    DATA t2838 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2840 TYPE f.
    DATA(t2841) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2840 = t2841.
    DATA t2844 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2844 = zcl_lnt_version_module=>release_b8cd.
    t2838 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_intersection| i_f1 = t2840 i_f2 = t2844->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2838 TO t1962->items.
    t1962->save( ).
    DATA t2847 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2849 TYPE f.
    DATA(t2850) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2849 = t2850.
    DATA t2853 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2853 = zcl_lnt_version_module=>release_b8cd.
    t2847 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_union| i_f1 = t2849 i_f2 = t2853->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2847 TO t1962->items.
    t1962->save( ).
    DATA t2856 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2858 TYPE f.
    DATA(t2859) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2858 = t2859.
    DATA t2862 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2862 = zcl_lnt_version_module=>release_b8cd.
    t2856 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_difference| i_f1 = t2858 i_f2 = t2862->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2856 TO t1962->items.
    t1962->save( ).
    DATA t2865 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2867 TYPE f.
    DATA(t2868) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2867 = t2868.
    DATA t2871 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2871 = zcl_lnt_version_module=>release_b8cd.
    t2865 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_symdifference| i_f1 = t2867 i_f2 = t2871->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2865 TO t1962->items.
    t1962->save( ).
    DATA t2874 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2876 TYPE f.
    DATA(t2877) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2876 = t2877.
    DATA t2880 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2880 = zcl_lnt_version_module=>release_b8cd.
    t2874 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_collect| i_f1 = t2876 i_f2 = t2880->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2874 TO t1962->items.
    t1962->save( ).
    DATA t2883 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2885 TYPE f.
    DATA(t2886) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2885 = t2886.
    DATA t2889 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2889 = zcl_lnt_version_module=>release_b8cd.
    t2883 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_buffer| i_f1 = t2885 i_f2 = t2889->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2883 TO t1962->items.
    t1962->save( ).
    DATA t2892 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2894 TYPE f.
    DATA(t2895) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2894 = t2895.
    DATA t2898 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2898 = zcl_lnt_version_module=>release_b8cd.
    t2892 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_transform| i_f1 = t2894 i_f2 = t2898->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2892 TO t1962->items.
    t1962->save( ).
    DATA t2901 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2903 TYPE f.
    DATA(t2904) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2903 = t2904.
    DATA t2907 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2907 = zcl_lnt_version_module=>release_b8cd.
    t2901 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_rotate| i_f1 = t2903 i_f2 = t2907->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2901 TO t1962->items.
    t1962->save( ).
    DATA t2910 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2912 TYPE f.
    DATA(t2913) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2912 = t2913.
    DATA t2916 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2916 = zcl_lnt_version_module=>release_b8cd.
    t2910 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_scale| i_f1 = t2912 i_f2 = t2916->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2910 TO t1962->items.
    t1962->save( ).
    DATA t2919 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2921 TYPE f.
    DATA(t2922) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2921 = t2922.
    DATA t2925 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2925 = zcl_lnt_version_module=>release_b8cd.
    t2919 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_translate| i_f1 = t2921 i_f2 = t2925->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2919 TO t1962->items.
    t1962->save( ).
    DATA t2928 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2930 TYPE f.
    DATA(t2931) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2930 = t2931.
    DATA t2934 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2934 = zcl_lnt_version_module=>release_b8cd.
    t2928 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_translate3d| i_f1 = t2930 i_f2 = t2934->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2928 TO t1962->items.
    t1962->save( ).
    DATA t2937 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2939 TYPE f.
    DATA(t2940) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2939 = t2940.
    DATA t2943 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2943 = zcl_lnt_version_module=>release_b8cd.
    t2937 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_simplify| i_f1 = t2939 i_f2 = t2943->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2937 TO t1962->items.
    t1962->save( ).
    DATA t2946 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2948 TYPE f.
    DATA(t2949) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2948 = t2949.
    DATA t2952 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2952 = zcl_lnt_version_module=>release_b8cd.
    t2946 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_snaptogrid| i_f1 = t2948 i_f2 = t2952->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2946 TO t1962->items.
    t1962->save( ).
    DATA t2955 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2957 TYPE f.
    DATA(t2958) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2957 = t2958.
    DATA t2961 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2961 = zcl_lnt_version_module=>release_b8cd.
    t2955 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_addmeasure| i_f1 = t2957 i_f2 = t2961->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2955 TO t1962->items.
    t1962->save( ).
    DATA t2964 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2966 TYPE f.
    DATA(t2967) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2966 = t2967.
    DATA t2970 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2970 = zcl_lnt_version_module=>release_b8cd.
    t2964 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_addpoint| i_f1 = t2966 i_f2 = t2970->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2964 TO t1962->items.
    t1962->save( ).
    DATA t2973 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2975 TYPE f.
    DATA(t2976) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2975 = t2976.
    DATA t2979 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2979 = zcl_lnt_version_module=>release_b8cd.
    t2973 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_removepoint| i_f1 = t2975 i_f2 = t2979->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2973 TO t1962->items.
    t1962->save( ).
    DATA t2982 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2984 TYPE f.
    DATA(t2985) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2984 = t2985.
    DATA t2988 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2988 = zcl_lnt_version_module=>release_b8cd.
    t2982 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_pointn| i_f1 = t2984 i_f2 = t2988->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2982 TO t1962->items.
    t1962->save( ).
    DATA t2991 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t2993 TYPE f.
    DATA(t2994) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t2993 = t2994.
    DATA t2997 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2997 = zcl_lnt_version_module=>release_b8cd.
    t2991 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_geometryn| i_f1 = t2993 i_f2 = t2997->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t2991 TO t1962->items.
    t1962->save( ).
    DATA t3000 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3002 TYPE f.
    DATA(t3003) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3002 = t3003.
    DATA t3006 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3006 = zcl_lnt_version_module=>release_b8cd.
    t3000 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_interiorringn| i_f1 = t3002 i_f2 = t3006->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t3000 TO t1962->items.
    t1962->save( ).
    DATA t3009 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3011 TYPE f.
    DATA(t3012) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3011 = t3012.
    DATA t3015 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3015 = zcl_lnt_version_module=>release_b8cd.
    t3009 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_lineinterpolatepoint| i_f1 = t3011 i_f2 = t3015->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t3009 TO t1962->items.
    t1962->save( ).
    DATA t3018 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3020 TYPE f.
    DATA(t3021) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3020 = t3021.
    DATA t3024 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3024 = zcl_lnt_version_module=>release_b8cd.
    t3018 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_linelocatepoint| i_f1 = t3020 i_f2 = t3024->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t3018 TO t1962->items.
    t1962->save( ).
    DATA t3027 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3029 TYPE f.
    DATA(t3030) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3029 = t3030.
    DATA t3033 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3033 = zcl_lnt_version_module=>release_b8cd.
    t3027 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_linesubstring| i_f1 = t3029 i_f2 = t3033->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t3027 TO t1962->items.
    t1962->save( ).
    DATA t3036 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3038 TYPE f.
    DATA(t3039) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3038 = t3039.
    DATA t3042 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3042 = zcl_lnt_version_module=>release_b8cd.
    t3036 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_locatealong| i_f1 = t3038 i_f2 = t3042->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t3036 TO t1962->items.
    t1962->save( ).
    DATA t3045 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3047 TYPE f.
    DATA(t3048) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3047 = t3048.
    DATA t3051 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3051 = zcl_lnt_version_module=>release_b8cd.
    t3045 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_locatebetween| i_f1 = t3047 i_f2 = t3051->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t3045 TO t1962->items.
    t1962->save( ).
    DATA t3054 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3056 TYPE f.
    DATA(t3057) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3056 = t3057.
    DATA t3060 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3060 = zcl_lnt_version_module=>release_b8cd.
    t3054 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_alphashape| i_f1 = t3056 i_f2 = t3060->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t3054 TO t1962->items.
    t1962->save( ).
    DATA t3063 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3065 TYPE f.
    DATA(t3066) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3065 = t3066.
    DATA t3069 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3069 = zcl_lnt_version_module=>release_b8cd.
    t3063 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_alphashapearea| i_f1 = t3065 i_f2 = t3069->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t3063 TO t1962->items.
    t1962->save( ).
    DATA t3072 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3074 TYPE f.
    DATA(t3075) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3074 = t3075.
    DATA t3078 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3078 = zcl_lnt_version_module=>release_b8cd.
    t3072 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_alphashapeedge| i_f1 = t3074 i_f2 = t3078->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t3072 TO t1962->items.
    t1962->save( ).
    DATA t3081 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3083 TYPE f.
    DATA(t3084) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3083 = t3084.
    DATA t3087 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3087 = zcl_lnt_version_module=>release_b8cd.
    t3081 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_closestpointofapproach| i_f1 = t3083 i_f2 = t3087->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t3081 TO t1962->items.
    t1962->save( ).
    DATA t3090 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3092 TYPE f.
    DATA(t3093) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3092 = t3093.
    DATA t3096 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3096 = zcl_lnt_version_module=>release_b8cd.
    t3090 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_frechetdistance| i_f1 = t3092 i_f2 = t3096->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t3090 TO t1962->items.
    t1962->save( ).
    DATA t3099 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3101 TYPE f.
    DATA(t3102) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3101 = t3102.
    DATA t3105 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3105 = zcl_lnt_version_module=>release_b8cd.
    t3099 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_hausdorffdistance| i_f1 = t3101 i_f2 = t3105->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t3099 TO t1962->items.
    t1962->save( ).
    DATA t3108 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3110 TYPE f.
    DATA(t3111) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3110 = t3111.
    DATA t3114 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3114 = zcl_lnt_version_module=>release_b8cd.
    t3108 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_3dlength| i_f1 = t3110 i_f2 = t3114->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t3108 TO t1962->items.
    t1962->save( ).
    DATA t3117 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3119 TYPE f.
    DATA(t3120) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3119 = t3120.
    DATA t3123 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3123 = zcl_lnt_version_module=>release_b8cd.
    t3117 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_asmvtgeom| i_f1 = t3119 i_f2 = t3123->get( p0 = |v915| ) ).
    t1962->load( ).
    APPEND t3117 TO t1962->items.
    t1962->save( ).
    zcl_lnt_sql_function_module=>sql_spatial_function_defs = t1962.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    DATA t3127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3127.
    DATA t3130 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3132 TYPE f.
    DATA(t3133) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3132 = t3133.
    DATA t3136 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3136 = zcl_lnt_version_module=>release_b8cd.
    t3130 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_assvgaggr| i_f1 = t3132 i_f2 = t3136->get( p0 = |v915| ) ).
    t3127->load( ).
    APPEND t3130 TO t3127->items.
    t3127->save( ).
    DATA t3139 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3141 TYPE f.
    DATA(t3142) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3141 = t3142.
    DATA t3145 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3145 = zcl_lnt_version_module=>release_b8cd.
    t3139 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_collectaggr| i_f1 = t3141 i_f2 = t3145->get( p0 = |v915| ) ).
    t3127->load( ).
    APPEND t3139 TO t3127->items.
    t3127->save( ).
    DATA t3148 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3150 TYPE f.
    DATA(t3151) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3150 = t3151.
    DATA t3154 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3154 = zcl_lnt_version_module=>release_b8cd.
    t3148 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_concavehullaggr| i_f1 = t3150 i_f2 = t3154->get( p0 = |v915| ) ).
    t3127->load( ).
    APPEND t3148 TO t3127->items.
    t3127->save( ).
    DATA t3157 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3159 TYPE f.
    DATA(t3160) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3159 = t3160.
    DATA t3163 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3163 = zcl_lnt_version_module=>release_b8cd.
    t3157 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_convexhullaggr| i_f1 = t3159 i_f2 = t3163->get( p0 = |v915| ) ).
    t3127->load( ).
    APPEND t3157 TO t3127->items.
    t3127->save( ).
    DATA t3166 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3168 TYPE f.
    DATA(t3169) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3168 = t3169.
    DATA t3172 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3172 = zcl_lnt_version_module=>release_b8cd.
    t3166 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_envelopeaggr| i_f1 = t3168 i_f2 = t3172->get( p0 = |v915| ) ).
    t3127->load( ).
    APPEND t3166 TO t3127->items.
    t3127->save( ).
    DATA t3175 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3177 TYPE f.
    DATA(t3178) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3177 = t3178.
    DATA t3181 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3181 = zcl_lnt_version_module=>release_b8cd.
    t3175 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_intersectionaggr| i_f1 = t3177 i_f2 = t3181->get( p0 = |v915| ) ).
    t3127->load( ).
    APPEND t3175 TO t3127->items.
    t3127->save( ).
    DATA t3184 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3186 TYPE f.
    DATA(t3187) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3186 = t3187.
    DATA t3190 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3190 = zcl_lnt_version_module=>release_b8cd.
    t3184 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_unionaggr| i_f1 = t3186 i_f2 = t3190->get( p0 = |v915| ) ).
    t3127->load( ).
    APPEND t3184 TO t3127->items.
    t3127->save( ).
    DATA t3193 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3195 TYPE f.
    DATA(t3196) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3195 = t3196.
    DATA t3199 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3199 = zcl_lnt_version_module=>release_b8cd.
    t3193 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_alphashapeaggr| i_f1 = t3195 i_f2 = t3199->get( p0 = |v915| ) ).
    t3127->load( ).
    APPEND t3193 TO t3127->items.
    t3127->save( ).
    DATA t3202 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3204 TYPE f.
    DATA(t3205) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3204 = t3205.
    DATA t3208 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3208 = zcl_lnt_version_module=>release_b8cd.
    t3202 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_alphashapeareaaggr| i_f1 = t3204 i_f2 = t3208->get( p0 = |v915| ) ).
    t3127->load( ).
    APPEND t3202 TO t3127->items.
    t3127->save( ).
    DATA t3211 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t3213 TYPE f.
    DATA(t3214) = CONV i( zcl_lnt_sql_function_module=>variadic ).
    t3213 = t3214.
    DATA t3217 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3217 = zcl_lnt_version_module=>release_b8cd.
    t3211 = NEW zcl_lnt_tuple_dda7dd58( i_f0 = |st_alphashapeedgeaggr| i_f1 = t3213 i_f2 = t3217->get( p0 = |v915| ) ).
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
