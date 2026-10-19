* TS: harness/registry_run.ts:15:1 RegistryRun
CLASS zcl_lnt_registry_run DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA files TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA dependencies TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA stages TYPE string.
    METHODS constructor.
    METHODS add_file IMPORTING i_filename TYPE string i_raw TYPE string.
    METHODS add_dependency IMPORTING i_filename TYPE string i_raw TYPE string.
    METHODS run IMPORTING i_config TYPE string RETURNING VALUE(result) TYPE string.
    METHODS timings RETURNING VALUE(result) TYPE string.
    METHODS parse IMPORTING i_config TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_registry.
    METHODS report_0493 IMPORTING i_reg_f149 TYPE REF TO zcl_lnt_registry RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_registry_run IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    me->files = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `files`.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    me->dependencies = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dependencies`.
    me->stages = ||.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `stages`.
  ENDMETHOD.

  METHOD add_file.
    DATA(t2) = i_raw.
    DATA(t3) = me->files.
    DATA t4 TYPE REF TO zcl_lnt_memory_file.
    DATA(t5) = i_filename.
    t4 = NEW zcl_lnt_memory_file( i_filename = t5 i_raw = t2 ).
    t3->load( ).
    APPEND t4 TO t3->items.
    t3->save( ).
  ENDMETHOD.

  METHOD add_dependency.
    DATA(t2) = i_raw.
    DATA(t3) = me->dependencies.
    DATA t4 TYPE REF TO zcl_lnt_memory_file.
    DATA(t5) = i_filename.
    t4 = NEW zcl_lnt_memory_file( i_filename = t5 i_raw = t2 ).
    t3->load( ).
    APPEND t4 TO t3->items.
    t3->save( ).
  ENDMETHOD.

  METHOD run.
    DATA(t4) = i_config.
    result = me->report_0493( i_reg_f149 = me->parse( i_config = t4 ) ).

  ENDMETHOD.

  METHOD timings.
    DATA(t1) = CONV string( me->stages ).
    result = t1.

  ENDMETHOD.

  METHOD parse.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA t2 TYPE REF TO zcl_lnt_registry.
    DATA(t5) = i_config.
    t2 = NEW zcl_lnt_registry( i_conf = NEW zcl_lnt_config( i_json = t5 ) ).
    DATA t6 TYPE REF TO zif_lnt_registry.
    DATA(t8) = me->files.
    t6 = t2->add_files_179c( i_files = t8 ).
    DATA t9 TYPE REF TO zif_lnt_registry.
    DATA(t11) = me->dependencies.
    t9 = t2->add_dependencies( i_files = t11 ).
    DATA t12 TYPE REF TO zif_lnt_configuration.
    t12 = t2->conf.
    DATA(t18) = VALUE f( ).
    t18 = CONV f( 0 ).
    DATA(t20) = VALUE f( ).
    t20 = CONV f( 0 ).
    DATA(t22) = VALUE f( ).
    t22 = CONV f( 0 ).
    DATA(t24) = VALUE f( ).
    DATA(t26) = 0.
    t24 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t27 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t32 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t33 TYPE REF TO zcl_lnt_generator_a921479b.
    t33 = NEW zcl_lnt_generator_a921479b( i_outer = t2 ).
    t32 ?= t33.
    t27 = t32->iterate( ).
    DO.
      DATA t36 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t36.
      t36 = t27->next( ).
      IF t36->done = abap_true.
        EXIT.
      ENDIF.
      DATA t43 TYPE REF TO zif_lnt_object.
      CLEAR t43.
      t43 = t36->value.
      DATA t45 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t45.
      DATA t47 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t47.
      DATA(t48) = VALUE abap_bool( ).
      t48 = abap_false.
      DATA t50 TYPE REF TO cx_root.
      CLEAR t50.
      TRY.
          DATA t53 TYPE REF TO zcl_lnt_abap_release.
          CLEAR t53.
          t53 = t12->get_release( ).
          DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t58.
          t58 = t12->get_syntax_setttings( )->zlnt_view_read_sr_94cd949ccfb3( ).
          DATA(t64) = VALUE string( ).
          t64 = t12->get_language_version( ).
          DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t66->has = abap_true.
          t66->value = t64.
          t47 = t43->parse( i_release_7928 = t53 i_global_macros_5535 = t58 i_reg_f149 = t2 i_language_version_0e1d = t66 ).
          t48 = abap_true.
        CATCH cx_root INTO t50.
          IF xsdbool( t48 = abap_false ) = abap_true.
            t27->close( ).
          ENDIF.
          RAISE EXCEPTION t50.
      ENDTRY.
      IF xsdbool( t48 = abap_false ) = abap_true.
        t27->close( ).
      ENDIF.
      t45 = t47.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = VALUE abap_bool( ).
      t78 = abap_false.
      DATA t80 TYPE REF TO cx_root.
      CLEAR t80.
      TRY.
          DATA t83 TYPE REF TO zcl_lnt_shape_8fc6df03.
          CLEAR t83.
          t83 = t45->runtime_extra.
          DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t85.
          CLEAR t85.
          t77 = xsdbool( xsdbool( t83 IS INITIAL ) = abap_false ).
          t78 = abap_true.
        CATCH cx_root INTO t80.
          IF xsdbool( t78 = abap_false ) = abap_true.
            t27->close( ).
          ENDIF.
          RAISE EXCEPTION t80.
      ENDTRY.
      IF xsdbool( t78 = abap_false ) = abap_true.
        t27->close( ).
      ENDIF.
      IF t77 = abap_true.
        DATA(t99) = VALUE f( ).
        DATA(t100) = VALUE abap_bool( ).
        t100 = abap_false.
        DATA t102 TYPE REF TO cx_root.
        CLEAR t102.
        TRY.
            DATA(t105) = VALUE f( ).
            t105 = t45->runtime_extra->lexing.
            t99 = t18 + t105.
            t100 = abap_true.
          CATCH cx_root INTO t102.
            IF xsdbool( t100 = abap_false ) = abap_true.
              t27->close( ).
            ENDIF.
            RAISE EXCEPTION t102.
        ENDTRY.
        IF xsdbool( t100 = abap_false ) = abap_true.
          t27->close( ).
        ENDIF.
        t18 = t99.
        DATA(t118) = VALUE f( ).
        DATA(t119) = VALUE abap_bool( ).
        t119 = abap_false.
        DATA t121 TYPE REF TO cx_root.
        CLEAR t121.
        TRY.
            DATA(t124) = VALUE f( ).
            t124 = t45->runtime_extra->statements.
            t118 = t20 + t124.
            t119 = abap_true.
          CATCH cx_root INTO t121.
            IF xsdbool( t119 = abap_false ) = abap_true.
              t27->close( ).
            ENDIF.
            RAISE EXCEPTION t121.
        ENDTRY.
        IF xsdbool( t119 = abap_false ) = abap_true.
          t27->close( ).
        ENDIF.
        t20 = t118.
        DATA(t137) = VALUE f( ).
        DATA(t138) = VALUE abap_bool( ).
        t138 = abap_false.
        DATA t140 TYPE REF TO cx_root.
        CLEAR t140.
        TRY.
            DATA(t143) = VALUE f( ).
            t143 = t45->runtime_extra->structure.
            t137 = t22 + t143.
            t138 = abap_true.
          CATCH cx_root INTO t140.
            IF xsdbool( t138 = abap_false ) = abap_true.
              t27->close( ).
            ENDIF.
            RAISE EXCEPTION t140.
        ENDTRY.
        IF xsdbool( t138 = abap_false ) = abap_true.
          t27->close( ).
        ENDIF.
        t22 = t137.
      ENDIF.
    ENDDO.
    DATA(t155) = VALUE f( ).
    DATA(t157) = 0.
    t155 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    NEW zcl_lnt_cross_include_macros( i_reg_f149 = t2 )->run( ).
    DATA(t160) = VALUE f( ).
    DATA(t162) = 0.
    t160 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t165 TYPE REF TO zif_lnt_progress.
    NEW zcl_lnt_fnd_glbl_dfntns( i_reg_f149 = t2 )->run( i_progress = t165 ).
    DATA(t166) = VALUE f( ).
    DATA(t168) = 0.
    t166 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA(t170) = VALUE string( ).
    DATA(t171) = VALUE string( ).
    DATA(t172) = VALUE string( ).
    DATA(t173) = VALUE string( ).
    DATA(t174) = VALUE string( ).
    DATA(t175) = VALUE string( ).
    DATA(t176) = VALUE string( ).
    DATA(t177) = VALUE string( ).
    DATA(t178) = VALUE string( ).
    DATA(t179) = VALUE string( ).
    DATA(t180) = VALUE string( ).
    DATA(t181) = |lexer=|.
    DATA(t182) = VALUE string( ).
    IF t18 <> trunc( t18 ) OR t18 > range_safe_integer OR t18 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t184) = CONV int8( t18 ).
    t182 = |{ t184 }|.
    DATA(t185) = strlen( t181 ).
    t180 = |{ t181 }{ t182 }|.
    DATA(t187) = strlen( t180 ).
    t179 = |{ t180 }{ | statements=| }|.
    DATA(t188) = VALUE string( ).
    IF t20 <> trunc( t20 ) OR t20 > range_safe_integer OR t20 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t190) = CONV int8( t20 ).
    t188 = |{ t190 }|.
    DATA(t191) = strlen( t179 ).
    t178 = |{ t179 }{ t188 }|.
    DATA(t193) = strlen( t178 ).
    t177 = |{ t178 }{ | structures=| }|.
    DATA(t194) = VALUE string( ).
    IF t22 <> trunc( t22 ) OR t22 > range_safe_integer OR t22 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t196) = CONV int8( t22 ).
    t194 = |{ t196 }|.
    DATA(t197) = strlen( t177 ).
    t176 = |{ t177 }{ t194 }|.
    DATA(t199) = strlen( t176 ).
    t175 = |{ t176 }{ | objects=| }|.
    DATA(t200) = VALUE string( ).
    DATA(t201) = VALUE f( ).
    t201 = t155 - t24.
    IF t201 <> trunc( t201 ) OR t201 > range_safe_integer OR t201 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t204) = CONV int8( t201 ).
    t200 = |{ t204 }|.
    DATA(t205) = strlen( t175 ).
    t174 = |{ t175 }{ t200 }|.
    DATA(t207) = strlen( t174 ).
    t173 = |{ t174 }{ | macros=| }|.
    DATA(t208) = VALUE string( ).
    DATA(t209) = VALUE f( ).
    t209 = t160 - t155.
    IF t209 <> trunc( t209 ) OR t209 > range_safe_integer OR t209 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t212) = CONV int8( t209 ).
    t208 = |{ t212 }|.
    DATA(t213) = strlen( t173 ).
    t172 = |{ t173 }{ t208 }|.
    DATA(t215) = strlen( t172 ).
    t171 = |{ t172 }{ | globals=| }|.
    DATA(t216) = VALUE string( ).
    DATA(t217) = VALUE f( ).
    t217 = t166 - t160.
    IF t217 <> trunc( t217 ) OR t217 > range_safe_integer OR t217 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t220) = CONV int8( t217 ).
    t216 = |{ t220 }|.
    DATA(t221) = strlen( t171 ).
    t170 = |{ t171 }{ t216 }|.
    DATA(t223) = strlen( t170 ).
    me->stages = |{ t170 }{ || }|.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `stages`.
    result = t2.

  ENDMETHOD.

  METHOD report_0493.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_rules_runner.
    t2 = NEW zcl_lnt_rules_runner( i_reg_f149 = t1 ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = t1->conf->get_enabled_rules( ).
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t19 TYPE REF TO zcl_lnt_generator_a921479b.
    t19 = NEW zcl_lnt_generator_a921479b( i_outer = t1 ).
    t18 ?= t19.
    t12 = t2->objects_to_check( i_objects = t18 ).
    DATA t22 TYPE f.
    DATA(t23) = 0.
    t22 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t25 TYPE REF TO zif_lnt_object.
    DATA t26 TYPE REF TO object.
    DATA(t27) = VALUE i( ).
    DO.
      t12->load( ).
      IF t27 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t26.
      READ TABLE t12->items INDEX t27 + 1 INTO t26.
      t27 = t27 + 1.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      CLEAR t25.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t28 ?= t26.
        DATA t29 TYPE REF TO object.
        t29 = t28->as_ref( ).
        t25 ?= t29.
      ELSE.
        t25 ?= t26.
      ENDIF.
      IF xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_abap_object ) = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_isyntax_result.
        DATA t35 TYPE REF TO zcl_lnt_abap_object.
        DATA t37 TYPE REF TO object.
        t37 = t25.
        t35 ?= t37.
        t32 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t1 i_object_19cd = t35 )->run( ).
      ENDIF.
    ENDDO.
    DATA t39 TYPE f.
    DATA(t40) = 0.
    t39 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t41 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CREATE OBJECT t41.
    DATA t44 TYPE REF TO zif_lnt_rule.
    DATA t45 TYPE REF TO object.
    DATA(t46) = VALUE i( ).
    DO.
      t5->load( ).
      IF t46 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t45.
      READ TABLE t5->items INDEX t46 + 1 INTO t45.
      t46 = t46 + 1.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      CLEAR t44.
      IF t45 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t47 ?= t45.
        DATA t48 TYPE REF TO object.
        t48 = t47->as_ref( ).
        t44 ?= t48.
      ELSE.
        t44 ?= t45.
      ENDIF.
      DATA t50 TYPE f.
      DATA(t51) = 0.
      t50 = zlnt_runtime_tele_970d5104e5f4=>now( ).
      DATA t52 TYPE REF TO zif_lnt_rule.
      t52 = t44->initialize( i_reg_f149 = t1 ).
      DATA t56 TYPE f.
      DATA t57 TYPE f.
      DATA(t58) = 0.
      t57 = zlnt_runtime_tele_970d5104e5f4=>now( ).
      t56 = t57 - t50.
      t41->load( ).
      APPEND t56 TO t41->items.
      t41->save( ).
    ENDDO.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t60.
    DATA t63 TYPE REF TO zif_lnt_object.
    DATA t64 TYPE REF TO object.
    DATA(t65) = VALUE i( ).
    DO.
      t12->load( ).
      IF t65 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t64.
      READ TABLE t12->items INDEX t65 + 1 INTO t64.
      t65 = t65 + 1.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      CLEAR t63.
      IF t64 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t66 ?= t64.
        DATA t67 TYPE REF TO object.
        t67 = t66->as_ref( ).
        t63 ?= t67.
      ELSE.
        t63 ?= t64.
      ENDIF.
      DATA t68 TYPE i.
      t68 = 0.
      DO.
        t5->load( ).
        IF xsdbool( t68 < lines( t5->items ) ) = abap_false.
          EXIT.
        ENDIF.
        DATA t75 TYPE f.
        DATA(t76) = 0.
        t75 = zlnt_runtime_tele_970d5104e5f4=>now( ).
        DATA(t77) = VALUE i( ).
        DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t78.
        DATA t79 TYPE REF TO zif_lnt_rule.
        CLEAR t79.
        DATA(t81) = t68.
        t81 = t81 + 1.
        DATA t82 TYPE REF TO object.
        CLEAR t82.
        t5->load( ).
        CLEAR t82.
        READ TABLE t5->items INDEX t81 INTO t82.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        CLEAR t79.
        IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t83 ?= t82.
          DATA t84 TYPE REF TO object.
          t84 = t83->as_ref( ).
          t79 ?= t84.
        ELSE.
          t79 ?= t82.
        ENDIF.
        t78 = t79->run( i_obj_1ed0 = t63 ).
        DATA t86 TYPE REF TO zcl_lnt_issue.
        CLEAR t86.
        DATA t87 TYPE REF TO object.
        CLEAR t87.
        DATA(t88) = VALUE i( ).
        DO.
          t78->load( ).
          IF t88 >= lines( t78->items ).
            EXIT.
          ENDIF.
          CLEAR t87.
          READ TABLE t78->items INDEX t88 + 1 INTO t87.
          t88 = t88 + 1.
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t89.
          CLEAR t86.
          IF t87 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t89 ?= t87.
            DATA t90 TYPE REF TO object.
            t90 = t89->as_ref( ).
            t86 ?= t90.
          ELSE.
            t86 ?= t87.
          ENDIF.
          t60->load( ).
          APPEND t86 TO t60->items.
          t60->save( ).
        ENDDO.
        t60->load( ).
        t77 = lines( t60->items ).
        DATA(t97) = VALUE f( ).
        DATA(t98) = VALUE f( ).
        DATA(t99) = VALUE f( ).
        DATA(t101) = t68.
        t101 = t101 + 1.
        IF t41->has( t101 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t41->load( ).
        READ TABLE t41->items INDEX t101 INTO t99.
        DATA t102 TYPE f.
        DATA(t103) = 0.
        t102 = zlnt_runtime_tele_970d5104e5f4=>now( ).
        t98 = t99 + t102.
        t97 = t98 - t75.
        t41->put( p0 = t68 p1 = t97 ).
        DATA(t107) = 1.
        t68 = t68 + t107.
      ENDDO.
    ENDDO.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t108 = t2->exclude_issues( i_issues = t60 ).
    DATA t112 TYPE string.
    t112 = ||.
    DATA t114 TYPE i.
    t114 = 0.
    DO.
      t5->load( ).
      IF xsdbool( t114 < lines( t5->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t121) = t112.
      DATA(t122) = VALUE string( ).
      DATA(t123) = VALUE string( ).
      DATA(t124) = VALUE string( ).
      DATA(t125) = VALUE string( ).
      DATA(t126) = | |.
      DATA(t127) = VALUE string( ).
      DATA t129 TYPE REF TO zif_lnt_rule.
      CLEAR t129.
      DATA(t131) = t114.
      t131 = t131 + 1.
      DATA t132 TYPE REF TO object.
      CLEAR t132.
      t5->load( ).
      CLEAR t132.
      READ TABLE t5->items INDEX t131 INTO t132.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      CLEAR t129.
      IF t132 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t133 ?= t132.
        DATA t134 TYPE REF TO object.
        t134 = t133->as_ref( ).
        t129 ?= t134.
      ELSE.
        t129 ?= t132.
      ENDIF.
      t127 = t129->get_metadata( )->key.
      DATA(t135) = strlen( t126 ).
      t125 = |{ t126 }{ t127 }|.
      DATA(t137) = strlen( t125 ).
      t124 = |{ t125 }{ |=| }|.
      DATA(t138) = VALUE string( ).
      DATA(t139) = VALUE f( ).
      DATA(t141) = t114.
      t141 = t141 + 1.
      IF t41->has( t141 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t41->load( ).
      READ TABLE t41->items INDEX t141 INTO t139.
      IF t139 <> trunc( t139 ) OR t139 > range_safe_integer OR t139 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t142) = CONV int8( t139 ).
      t138 = |{ t142 }|.
      DATA(t143) = strlen( t124 ).
      t123 = |{ t124 }{ t138 }|.
      DATA(t145) = strlen( t123 ).
      t122 = |{ t123 }{ || }|.
      DATA(t146) = strlen( t121 ).
      t112 = |{ t121 }{ t122 }|.
      DATA(t149) = 1.
      t114 = t114 + t149.
    ENDDO.
    DATA(t151) = CONV string( me->stages ).
    DATA(t152) = VALUE string( ).
    DATA(t153) = VALUE string( ).
    DATA(t154) = VALUE string( ).
    DATA(t155) = VALUE string( ).
    DATA(t156) = | syntax=|.
    DATA(t157) = VALUE string( ).
    DATA t158 TYPE f.
    t158 = t39 - t22.
    IF t158 <> trunc( t158 ) OR t158 > range_safe_integer OR t158 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t161) = CONV int8( t158 ).
    t157 = |{ t161 }|.
    DATA(t162) = strlen( t156 ).
    t155 = |{ t156 }{ t157 }|.
    DATA(t164) = strlen( t155 ).
    t154 = |{ t155 }{ || }|.
    DATA(t166) = strlen( t154 ).
    t153 = |{ t154 }{ t112 }|.
    DATA(t168) = strlen( t153 ).
    t152 = |{ t153 }{ || }|.
    DATA(t169) = strlen( t151 ).
    me->stages = |{ t151 }{ t152 }|.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `stages`.
    DATA t170 TYPE string.
    DATA t172 TYPE string.
    DATA(t173) = ||.
    DATA t174 TYPE string.
    t108->load( ).
    t174 = |{ lines( t108->items ) }|.
    DATA(t177) = strlen( t173 ).
    t172 = |{ t173 }{ t174 }|.
    DATA(t179) = strlen( t172 ).
    t170 = |{ t172 }{ || }|.
    DATA t181 TYPE REF TO zcl_lnt_issue.
    DATA t182 TYPE REF TO object.
    DATA(t183) = VALUE i( ).
    DO.
      t108->load( ).
      IF t183 >= lines( t108->items ).
        EXIT.
      ENDIF.
      CLEAR t182.
      READ TABLE t108->items INDEX t183 + 1 INTO t182.
      t183 = t183 + 1.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t184.
      CLEAR t181.
      IF t182 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t184 ?= t182.
        DATA t185 TYPE REF TO object.
        t185 = t184->as_ref( ).
        t181 ?= t185.
      ELSE.
        t181 ?= t182.
      ENDIF.
      DATA(t187) = t170.
      DATA(t188) = VALUE string( ).
      DATA(t189) = VALUE string( ).
      DATA(t190) = VALUE string( ).
      DATA(t191) = VALUE string( ).
      DATA(t192) = VALUE string( ).
      DATA(t193) = VALUE string( ).
      DATA(t194) = VALUE string( ).
      DATA(t195) = VALUE string( ).
      DATA(t196) = VALUE string( ).
      DATA(t197) = VALUE string( ).
      DATA t198 TYPE string.
      DATA t199 TYPE string.
      DATA t200 TYPE string.
      DATA t201 TYPE string.
      DATA t202 TYPE string.
      DATA t203 TYPE string.
      DATA(t204) = |\n|.
      DATA t205 TYPE string.
      t205 = t181->data_56cc->key.
      DATA(t211) = strlen( t204 ).
      t203 = |{ t204 }{ t205 }|.
      DATA(t213) = strlen( t203 ).
      t202 = |{ t203 }{ |\|| }|.
      DATA t214 TYPE string.
      t214 = t181->data_56cc->severity.
      DATA(t220) = strlen( t202 ).
      t201 = |{ t202 }{ t214 }|.
      DATA(t222) = strlen( t201 ).
      t200 = |{ t201 }{ |\|| }|.
      DATA t223 TYPE string.
      t223 = t181->data_56cc->filename.
      DATA(t229) = strlen( t200 ).
      t199 = |{ t200 }{ t223 }|.
      DATA(t231) = strlen( t199 ).
      t198 = |{ t199 }{ |\|| }|.
      DATA(t232) = VALUE string( ).
      DATA t233 TYPE f.
      t233 = t181->data_56cc->start->row.
      IF t233 <> trunc( t233 ) OR t233 > range_safe_integer OR t233 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t243) = CONV int8( t233 ).
      t232 = |{ t243 }|.
      DATA(t244) = strlen( t198 ).
      t197 = |{ t198 }{ t232 }|.
      DATA(t246) = strlen( t197 ).
      t196 = |{ t197 }{ |:| }|.
      DATA t247 TYPE string.
      DATA t256 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t256 = t181->data_56cc->start->col.
      t247 = zlnt_runtime_numb_290eb04a9758=>text( t256 ).
      DATA(t258) = strlen( t196 ).
      t195 = |{ t196 }{ t247 }|.
      DATA(t260) = strlen( t195 ).
      t194 = |{ t195 }{ |\|| }|.
      DATA(t261) = VALUE string( ).
      DATA t262 TYPE f.
      t262 = t181->data_56cc->end->row.
      IF t262 <> trunc( t262 ) OR t262 > range_safe_integer OR t262 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t272) = CONV int8( t262 ).
      t261 = |{ t272 }|.
      DATA(t273) = strlen( t194 ).
      t193 = |{ t194 }{ t261 }|.
      DATA(t275) = strlen( t193 ).
      t192 = |{ t193 }{ |:| }|.
      DATA t276 TYPE string.
      DATA t285 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t285 = t181->data_56cc->end->col.
      t276 = zlnt_runtime_numb_290eb04a9758=>text( t285 ).
      DATA(t287) = strlen( t192 ).
      t191 = |{ t192 }{ t276 }|.
      DATA(t289) = strlen( t191 ).
      t190 = |{ t191 }{ |\|| }|.
      DATA t290 TYPE string.
      t290 = t181->data_56cc->message_25cb.
      DATA(t296) = strlen( t190 ).
      t189 = |{ t190 }{ t290 }|.
      DATA(t298) = strlen( t189 ).
      t188 = |{ t189 }{ || }|.
      DATA(t299) = strlen( t187 ).
      t170 = |{ t187 }{ t188 }|.
    ENDDO.
    result = t170.

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
    result = zlnt_runtime_desc_1d9717abe6a4=>zlnt_member_d0_5ecc9e9989d6ba.
  ENDMETHOD.
ENDCLASS.
