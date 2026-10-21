* TS: src/abap/5_syntax/statements/parameter.ts:10:1 Parameter
CLASS zcl_lnt_sy_parameter_parameter DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS has_user_command IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS has_length IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_parameter_parameter IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    t3 = t1->find_first_expression( i_type_9913 = t6 ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    t14 = t3->get_first_token( ).
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zcl_lnt_abstract_node.
    t22 = t3.
    t20 ?= t22->children.
    t20->load( ).
    IF xsdbool( lines( t20->items ) > 1 ) = abap_true.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      DATA t31 TYPE string.
      t31 = t3->concat_tokens( ).
      DATA t34 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t36) = `\([^`.
      t36 = t36 && |\n\r|.
      DATA t37 TYPE c LENGTH 1.
      t37 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t36 t37 INTO t36 RESPECTING BLANKS.
      DATA t38 TYPE c LENGTH 1.
      t38 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t36 t38 INTO t36 RESPECTING BLANKS.
      t36 = t36 && |]+$|.
      CREATE OBJECT t34 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t36 flags = ||.
      t34->source = `\(.+$`.
      DATA(t41) = strlen( t31 ).
      t30 = t34->replace( p0 = t31 p1 = || ).
      DATA t42 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t42 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `\[\]$` flags = ||.
      DATA(t46) = strlen( t30 ).
      t29 = t42->replace( p0 = t30 p1 = || ).
      DATA t48 TYPE REF TO zcl_lnt_position.
      t48 = t14->start.
      t14 = NEW zcl_lnt_lx_identifier( i_start = t48 i_str = t29 ).
    ENDIF.
    DATA t54 TYPE abap_bool.
    DATA t55 TYPE abap_bool.
    t55 = xsdbool( t14 IS BOUND ).
    t54 = t55.
    IF t55 = abap_true.
      t54 = xsdbool( strlen( t14->str ) > 8 ).
    ENDIF.
    IF t54 = abap_true.
      DATA t67 TYPE string.
      DATA(t68) = |Parameter name too long, |.
      DATA t69 TYPE string.
      t69 = t14->str.
      DATA(t74) = strlen( t68 ).
      t67 = |{ t68 }{ t69 }|.
      DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t75 = t2->issues.
      DATA t77 TYPE REF TO zcl_lnt_issue.
      DATA t82 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t77 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t67 i_fix = t82 ).
      t75->load( ).
      APPEND t77 TO t75->items.
      t75->save( ).
      RETURN.
    ENDIF.
    DATA t83 TYPE abap_bool.
    DATA t84 TYPE abap_bool.
    DATA t85 TYPE REF TO zcl_lnt_abstract_token.
    t85 = t1->find_direct_token_by_text( i_text = |RADIOBUTTON| ).
    t84 = xsdbool( t85 IS BOUND ).
    t83 = t84.
    IF t84 = abap_true.
      DATA t89 TYPE REF TO zcl_lnt_abstract_token.
      t89 = t1->find_direct_token_by_text( i_text = |LENGTH| ).
      t83 = xsdbool( t89 IS BOUND ).
    ENDIF.
    IF t83 = abap_true.
      DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t94 = t2->issues.
      DATA t96 TYPE REF TO zcl_lnt_issue.
      DATA t101 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t96 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |RADIOBUTTON and LENGTH not possible together| i_fix = t101 ).
      t94->load( ).
      APPEND t96 TO t94->items.
      t94->save( ).
      RETURN.
    ENDIF.
    DATA t102 TYPE REF TO zcl_lnt_expression_node.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d247_a74410852a3d.
    t102 = t1->find_first_expression( i_type_9913 = t105 ).
    DATA t106 TYPE abap_bool.
    DATA t107 TYPE abap_bool.
    t107 = xsdbool( t102 IS BOUND ).
    t106 = t107.
    IF t107 = abap_true.
      t106 = xsdbool( strlen( t102->concat_tokens( ) ) > 4 ).
    ENDIF.
    IF t106 = abap_true.
      DATA t117 TYPE string.
      DATA(t118) = |Radio button group name too long, |.
      DATA t119 TYPE string.
      t119 = t102->concat_tokens( ).
      DATA(t122) = strlen( t118 ).
      t117 = |{ t118 }{ t119 }|.
      DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t123 = t2->issues.
      DATA t125 TYPE REF TO zcl_lnt_issue.
      DATA t131 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t125 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t102->get_first_token( ) i_message_26cb = t117 i_fix = t131 ).
      t123->load( ).
      APPEND t125 TO t123->items.
      t123->save( ).
    ENDIF.
    DATA t132 TYPE abap_bool.
    DATA t133 TYPE abap_bool.
    t133 = me->has_user_command( i_node = t1 ).
    t132 = t133.
    IF t133 = abap_true.
      t132 = me->has_length( i_node = t1 ).
    ENDIF.
    IF t132 = abap_true.
      DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t139 = t2->issues.
      DATA t141 TYPE REF TO zcl_lnt_issue.
      DATA t146 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t141 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |USER-COMMAND and LENGTH not possible together| i_fix = t146 ).
      t139->load( ).
      APPEND t141 TO t139->items.
      t139->save( ).
      RETURN.
    ENDIF.
    DATA t147 TYPE REF TO zcl_lnt_abstract_type.
    DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t147 = NEW zcl_lnt_basic_types( i_input_967e = t2 )->parse_type( i_node = t1 i_qualified_name = t152 ).
    IF xsdbool( t147 IS BOUND ) = abap_true.
      DATA t156 TYPE REF TO zcl_lnt_current_scope.
      t156 = t2->scope.
      DATA t158 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t163 TYPE string.
      t163 = t2->filename.
      DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t158 = NEW zcl_lnt_typed_identifier( i_token = t14 i_filename = t163 i_type_9913 = t147 i_meta = t167 i_value = t168 ).
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t158 IS INITIAL ) = abap_true.
      ELSE.
        DATA t179 TYPE REF TO zcl_lnt_fi_identifier.
        t179 = t158.
        DATA t183 TYPE string.
        t183 = t179->token->str.
        DATA(t191) = VALUE string( ).
        DATA(t192) = t183.
        DATA(t193) = 0.
        DATA(t194) = 1.
        DATA(t195) = strlen( t192 ).
        IF t193 < 0.
          t193 = t193 + t195.
          IF t193 < 0.
            t193 = 0.
          ENDIF.
        ENDIF.
        IF t193 > t195 OR t194 <= 0.
        ELSE.
          IF t194 > t195 - t193.
            t194 = t195 - t193.
          ENDIF.
          t191 = t192+t193(t194).
        ENDIF.
        IF xsdbool( t191 = |!| ) = abap_true.
          DATA t198 TYPE string.
          t198 = t183.
          DATA(t200) = VALUE string( ).
          DATA(t202) = 1.
          DATA t203 TYPE i.
          t203 = strlen( t198 ).
          DATA(t206) = strlen( t198 ).
          IF t202 < 0.
            t202 = t202 + t206.
            IF t202 < 0.
              t202 = 0.
            ENDIF.
          ENDIF.
          IF t202 > t206 OR t203 <= 0.
          ELSE.
            IF t203 > t206 - t202.
              t203 = t206 - t202.
            ENDIF.
            t200 = t198+t202(t203).
          ENDIF.
          t183 = t200.
        ENDIF.
        t156->add_named_identifier( i_name = t183 i_identifier = t158 ).
      ENDIF.
    ELSE.
      DATA t211 TYPE REF TO zcl_lnt_current_scope.
      t211 = t2->scope.
      DATA t213 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t218 TYPE string.
      t218 = t2->filename.
      DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t223 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t213 = NEW zcl_lnt_typed_identifier( i_token = t14 i_filename = t218 i_type_9913 = NEW zcl_lnt_unknown_type( i_error = |Parameter, fallback| i_qualified_name = t222 ) i_meta = t223 i_value = t224 ).
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t213 IS INITIAL ) = abap_true.
      ELSE.
        DATA t235 TYPE REF TO zcl_lnt_fi_identifier.
        t235 = t213.
        DATA t239 TYPE string.
        t239 = t235->token->str.
        DATA(t247) = VALUE string( ).
        DATA(t248) = t239.
        DATA(t249) = 0.
        DATA(t250) = 1.
        DATA(t251) = strlen( t248 ).
        IF t249 < 0.
          t249 = t249 + t251.
          IF t249 < 0.
            t249 = 0.
          ENDIF.
        ENDIF.
        IF t249 > t251 OR t250 <= 0.
        ELSE.
          IF t250 > t251 - t249.
            t250 = t251 - t249.
          ENDIF.
          t247 = t248+t249(t250).
        ENDIF.
        IF xsdbool( t247 = |!| ) = abap_true.
          DATA t254 TYPE string.
          t254 = t239.
          DATA(t256) = VALUE string( ).
          DATA(t258) = 1.
          DATA t259 TYPE i.
          t259 = strlen( t254 ).
          DATA(t262) = strlen( t254 ).
          IF t258 < 0.
            t258 = t258 + t262.
            IF t258 < 0.
              t258 = 0.
            ENDIF.
          ENDIF.
          IF t258 > t262 OR t259 <= 0.
          ELSE.
            IF t259 > t262 - t258.
              t259 = t262 - t258.
            ENDIF.
            t256 = t254+t258(t259).
          ENDIF.
          t239 = t256.
        ENDIF.
        t211->add_named_identifier( i_name = t239 i_identifier = t213 ).
      ENDIF.
    ENDIF.
    DATA t267 TYPE string.
    DATA t268 TYPE string.
    DATA(t269) = |%_|.
    DATA t270 TYPE string.
    t270 = t14->str.
    DATA(t275) = strlen( t269 ).
    t268 = |{ t269 }{ t270 }|.
    DATA(t277) = strlen( t268 ).
    t267 = |{ t268 }{ |_%_app_%| }|.
    DATA t279 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t283 TYPE REF TO zcl_lnt_position.
    t283 = t14->start.
    t279 = NEW zcl_lnt_lx_identifier( i_start = t283 i_str = t267 ).
    DATA t287 TYPE REF TO zcl_lnt_current_scope.
    t287 = t2->scope.
    DATA t289 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t294 TYPE string.
    t294 = t2->filename.
    DATA(t300) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t300->has = abap_true.
    t300->value = |PARAMETER-MAGIC|.
    DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t303 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t289 = NEW zcl_lnt_typed_identifier( i_token = t279 i_filename = t294 i_type_9913 = zcl_lnt_void_type=>get_db65( i_voided = t300 i_qualified_name = t302 ) i_meta = t303 i_value = t304 ).
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t289 IS INITIAL ) = abap_true.
    ELSE.
      DATA t315 TYPE REF TO zcl_lnt_fi_identifier.
      t315 = t289.
      DATA t319 TYPE string.
      t319 = t315->token->str.
      DATA(t327) = VALUE string( ).
      DATA(t328) = t319.
      DATA(t329) = 0.
      DATA(t330) = 1.
      DATA(t331) = strlen( t328 ).
      IF t329 < 0.
        t329 = t329 + t331.
        IF t329 < 0.
          t329 = 0.
        ENDIF.
      ENDIF.
      IF t329 > t331 OR t330 <= 0.
      ELSE.
        IF t330 > t331 - t329.
          t330 = t331 - t329.
        ENDIF.
        t327 = t328+t329(t330).
      ENDIF.
      IF xsdbool( t327 = |!| ) = abap_true.
        DATA t334 TYPE string.
        t334 = t319.
        DATA(t336) = VALUE string( ).
        DATA(t338) = 1.
        DATA t339 TYPE i.
        t339 = strlen( t334 ).
        DATA(t342) = strlen( t334 ).
        IF t338 < 0.
          t338 = t338 + t342.
          IF t338 < 0.
            t338 = 0.
          ENDIF.
        ENDIF.
        IF t338 > t342 OR t339 <= 0.
        ELSE.
          IF t339 > t342 - t338.
            t339 = t342 - t338.
          ENDIF.
          t336 = t334+t338(t339).
        ENDIF.
        t319 = t336.
      ENDIF.
      t287->add_named_identifier( i_name = t319 i_identifier = t289 ).
    ENDIF.
  ENDMETHOD.

  METHOD has_user_command.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = i_node->get_tokens( ).
    DATA t5 TYPE i.
    t5 = 0.
    DO.
      DATA t9 TYPE i.
      DATA t10 TYPE i.
      t2->load( ).
      t10 = lines( t2->items ).
      DATA(t12) = 2.
      t9 = t10 - t12.
      IF xsdbool( t5 < t9 ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = VALUE string( ).
      DATA(t17) = VALUE string( ).
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t19.
      DATA(t21) = t5.
      t21 = t21 + 1.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      t2->load( ).
      CLEAR t22.
      READ TABLE t2->items INDEX t21 INTO t22.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t19.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t22.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t19 ?= t24.
      ELSE.
        t19 ?= t22.
      ENDIF.
      t17 = t19->str.
      DATA(t27) = strlen( t17 ).
      t16 = t17.
      IF t16 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t16 TO UPPER CASE.
      ELSE.
        t16 = zlnt_runtime_uppe_91169605024d=>full( t16 ).
      ENDIF.
      t15 = xsdbool( t16 = |USER| ).
      t14 = t15.
      IF t15 = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t32.
        DATA t34 TYPE i.
        DATA(t36) = 1.
        t34 = t5 + t36.
        t34 = t34 + 1.
        DATA t37 TYPE REF TO object.
        CLEAR t37.
        t2->load( ).
        CLEAR t37.
        READ TABLE t2->items INDEX t34 INTO t37.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        CLEAR t32.
        IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t38 ?= t37.
          DATA t39 TYPE REF TO object.
          t39 = t38->as_ref( ).
          t32 ?= t39.
        ELSE.
          t32 ?= t37.
        ENDIF.
        t14 = xsdbool( t32->str = |-| ).
      ENDIF.
      t13 = t14.
      IF t14 = abap_true.
        DATA(t44) = VALUE string( ).
        DATA(t45) = VALUE string( ).
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t47.
        DATA t49 TYPE i.
        DATA(t51) = 2.
        t49 = t5 + t51.
        t49 = t49 + 1.
        DATA t52 TYPE REF TO object.
        CLEAR t52.
        t2->load( ).
        CLEAR t52.
        READ TABLE t2->items INDEX t49 INTO t52.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t53.
        CLEAR t47.
        IF t52 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t53 ?= t52.
          DATA t54 TYPE REF TO object.
          t54 = t53->as_ref( ).
          t47 ?= t54.
        ELSE.
          t47 ?= t52.
        ENDIF.
        t45 = t47->str.
        DATA(t57) = strlen( t45 ).
        t44 = t45.
        IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t44 TO UPPER CASE.
        ELSE.
          t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
        ENDIF.
        t13 = xsdbool( t44 = |COMMAND| ).
      ENDIF.
      IF t13 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      DATA(t62) = 1.
      t5 = t5 + t62.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD has_length.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = i_node->get_tokens( ).
    DATA t5 TYPE i.
    t5 = 0.
    DO.
      t2->load( ).
      IF xsdbool( t5 < lines( t2->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = VALUE string( ).
      DATA(t14) = VALUE string( ).
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t16.
      DATA(t18) = t5.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      t2->load( ).
      CLEAR t19.
      READ TABLE t2->items INDEX t18 INTO t19.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t16.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t19.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t16 ?= t21.
      ELSE.
        t16 ?= t19.
      ENDIF.
      t14 = t16->str.
      DATA(t24) = strlen( t14 ).
      t13 = t14.
      IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t13 TO UPPER CASE.
      ELSE.
        t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
      ENDIF.
      t12 = xsdbool( t13 = |LENGTH| ).
      t11 = t12.
      IF t12 = abap_true.
        DATA(t26) = VALUE abap_bool( ).
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t27.
        DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t28.
        DATA t30 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t30.
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t31.
        DATA t33 TYPE i.
        DATA(t35) = 1.
        t33 = t5 - t35.
        DATA t36 TYPE REF TO object.
        t36 = t2->get( p0 = t33 ).
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        CLEAR t31.
        IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t37 ?= t36.
          DATA t38 TYPE REF TO object.
          t38 = t37->as_ref( ).
          t31 ?= t38.
        ELSE.
          t31 ?= t36.
        ENDIF.
        t30 = t31.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        IF xsdbool( t30 IS INITIAL ) = abap_true.
          CLEAR t39.
        ELSE.
          DATA t47 TYPE string.
          t47 = t30->str.
          DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t49->has = abap_true.
          t49->value = t47.
          t39 = t49.
        ENDIF.
        t28 = t39.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        DATA(t51) = VALUE abap_bool( ).
        IF t28 IS INITIAL.
          t51 = abap_true.
        ELSEIF t28->has = abap_false.
          t51 = abap_true.
        ENDIF.
        IF t51 = abap_true.
          CLEAR t50.
        ELSE.
          DATA t54 TYPE string.
          DATA t55 TYPE string.
          t55 = t28->value.
          DATA(t57) = strlen( t55 ).
          t54 = t55.
          IF t54 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t54 TO UPPER CASE.
          ELSE.
            t54 = zlnt_runtime_uppe_91169605024d=>full( t54 ).
          ENDIF.
          DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t58->has = abap_true.
          t58->value = t54.
          t50 = t58.
        ENDIF.
        t27 = t50.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = |VISIBLE|.
        t59 = t62.
        DATA(t64) = VALUE abap_bool( ).
        DATA(t65) = VALUE abap_bool( ).
        IF t27 IS BOUND.
          t64 = t27->has.
        ENDIF.
        IF t59 IS BOUND.
          t65 = t59->has.
        ENDIF.
        IF t64 = t65.
          IF t64 = abap_false.
            t26 = abap_true.
          ELSEIF t27->value = t59->value.
            t26 = abap_true.
          ENDIF.
        ENDIF.
        IF t26 = abap_true.
          t26 = abap_false.
        ELSE.
          t26 = abap_true.
        ENDIF.
        t11 = t26.
      ENDIF.
      IF t11 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      DATA(t69) = 1.
      t5 = t5 + t69.
    ENDDO.
    result = abap_false.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d940_fbeb5277dfb6.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
