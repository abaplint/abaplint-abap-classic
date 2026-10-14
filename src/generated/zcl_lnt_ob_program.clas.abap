* TS: src/objects/program.ts:6:1 Program
CLASS zcl_lnt_ob_program DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_d439e5f2.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_e86506f0.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_sequenced_files REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS is_include RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_module_pool RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_dynpros RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_selection_texts RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__8bf596bf435b.
    METHODS parse_xml.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_69bb420def7c TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_ob_program IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.
  METHOD get_type.
    DATA(t1) = |PROG|.
    result = t1.

  ENDMETHOD.
  METHOD get_sequenced_files.
    DATA t1 TYPE REF TO zcl_lnt_abap_file.
    DATA(t2) = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    t1 = t2.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = CAST zcl_lnt_abap_file( t1 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zcl_lnt_abap_file( t4 ).
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    DATA(t16) = CAST zcl_lnt_abap_file( t1 ).
    t15 = t16.
    APPEND t15 TO t14->items.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    t11 = t17.
    result = t11.

  ENDMETHOD.
  METHOD get_description.
    me->parse_xml( ).
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_shape_e86506f0.
    DATA(t3) = CAST zcl_lnt_shape_e86506f0( me->parsed_xml ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = CAST zcl_lnt_shape_e86506f0( t2 ).
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_shape_e86506f0.
      DATA(t10) = CAST zcl_lnt_shape_e86506f0( t2 ).
      t9 = t10.
      t8 = t9->description.
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.
  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA(t2) = CONV int8( 40 ).
    DATA(t3) = abap_true.
    DATA t4 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t4.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = t2 i_allow_namespace = t3 i_custom_regex = t4 ).
    result = t1.

  ENDMETHOD.
  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_shape_e86506f0.
    CLEAR t1.
    me->parsed_xml = t1.
    super->set_dirty( ).
  ENDMETHOD.
  METHOD is_include.
    me->parse_xml( ).
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE REF TO zcl_lnt_shape_e86506f0.
    DATA(t3) = CAST zcl_lnt_shape_e86506f0( me->parsed_xml ).
    t2 = t3.
    t1 = t2->is_include.
    result = t1.

  ENDMETHOD.
  METHOD is_module_pool.
    me->parse_xml( ).
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE REF TO zcl_lnt_shape_e86506f0.
    DATA(t3) = CAST zcl_lnt_shape_e86506f0( me->parsed_xml ).
    t2 = t3.
    t1 = t2->is_module_pool.
    result = t1.

  ENDMETHOD.
  METHOD get_dynpros.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/program.ts:54|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_selection_texts.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/program.ts:59|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD parse_xml.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_e86506f0.
    DATA(t3) = CAST zcl_lnt_shape_e86506f0( me->parsed_xml ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zcl_lnt_shape_e86506f0( t2 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t6 = xsdbool( t7 = abap_false ).
    t1 = t6.
    IF t1 = abap_true.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zif_lnt_file.
    DATA(t10) = CAST zif_lnt_file( me->get_xml_file( ) ).
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t12) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    t16 = t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = CAST zlnt_runtime_dyna_a429568d5be8( t14 ).
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    t13 = t18.
    IF t13 = abap_true.
      DATA t20 TYPE REF TO zcl_lnt_shape_e86506f0.
      CLEAR t20.
      DATA(t21) = abap_true.
      IF t21 = abap_true.
        DATA t22 TYPE REF TO zcl_lnt_shape_e86506f0.
        CLEAR t22.
        DATA(t23) = abap_false.
        DATA(t24) = abap_false.
        DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t25.
        DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t26.
        DATA(t27) = abap_true.
        IF t27 = abap_true.
          DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t28.
          t26 = t28.
        ELSE.
          DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t29.
          t26 = t29.
        ENDIF.
        DATA t30 TYPE REF TO zlnt_runtime_map__8bf596bf435b.
        CLEAR t30.
        DATA(t31) = abap_true.
        IF t31 = abap_true.
          DATA t32 TYPE REF TO zlnt_runtime_map__8bf596bf435b.
          DATA t33 TYPE REF TO zlnt_runtime_map__8bf596bf435b.
          DATA(t34) = NEW zlnt_runtime_map__8bf596bf435b( ).
          t33 = t34.
          DATA(t35) = CAST zlnt_runtime_map__8bf596bf435b( t33 ).
          t32 = t35.
          t30 = t32.
        ELSE.
          DATA t36 TYPE REF TO zlnt_runtime_map__8bf596bf435b.
          CLEAR t36.
          t30 = t36.
        ENDIF.
        t22 = NEW zcl_lnt_shape_e86506f0( i_is_include = t23 i_is_module_pool = t24 i_description = t25 i_dynpros = t26 i_selection_texts = t30 ).
        t20 = t22.
      ELSE.
        DATA t37 TYPE REF TO zcl_lnt_shape_e86506f0.
        CLEAR t37.
        t20 = t37.
      ENDIF.
      me->parsed_xml = t20.
      RETURN.
    ENDIF.
    DATA t38 TYPE string.
    DATA(t39) = ||.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_map__8bf596bf435b.
    DATA t41 TYPE REF TO zlnt_runtime_map__8bf596bf435b.
    DATA t42 TYPE REF TO zlnt_runtime_map__8bf596bf435b.
    DATA(t43) = NEW zlnt_runtime_map__8bf596bf435b( ).
    t42 = t43.
    DATA(t44) = CAST zlnt_runtime_map__8bf596bf435b( t42 ).
    t41 = t44.
    t40 = t41.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t57) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    t56 = t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA(t59) = VALUE abap_bool( ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t56 ).
    IF t61 IS BOUND.
      t60 = t61.
    ENDIF.
    IF t60 IS NOT BOUND.
      t59 = abap_true.
    ELSE.
      t59 = xsdbool( t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t59 = abap_true.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      t58 = t62.
    ELSE.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t65) = CAST zlnt_runtime_dyna_a429568d5be8( t56 ).
      t64 = t65.
      DATA(t66) = |abapGit|.
      t63 = t64->get( p0 = t66 ).
      t58 = t63.
    ENDIF.
    t55 = t58.
    t54 = t55.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = VALUE abap_bool( ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = CAST zlnt_runtime_dyna_a429568d5be8( t54 ).
    IF t70 IS BOUND.
      t69 = t70.
    ENDIF.
    IF t69 IS NOT BOUND.
      t68 = abap_true.
    ELSE.
      t68 = xsdbool( t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t68 = abap_true.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      t67 = t71.
    ELSE.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t74) = CAST zlnt_runtime_dyna_a429568d5be8( t54 ).
      t73 = t74.
      DATA(t75) = |asx:abap|.
      t72 = t73->get( p0 = t75 ).
      t67 = t72.
    ENDIF.
    t53 = t67.
    t52 = t53.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = VALUE abap_bool( ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = CAST zlnt_runtime_dyna_a429568d5be8( t52 ).
    IF t79 IS BOUND.
      t78 = t79.
    ENDIF.
    IF t78 IS NOT BOUND.
      t77 = abap_true.
    ELSE.
      t77 = xsdbool( t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t77 = abap_true.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      t76 = t80.
    ELSE.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t83) = CAST zlnt_runtime_dyna_a429568d5be8( t52 ).
      t82 = t83.
      DATA(t84) = |asx:values|.
      t81 = t82->get( p0 = t84 ).
      t76 = t81.
    ENDIF.
    t51 = t76.
    t50 = t51.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = VALUE abap_bool( ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = CAST zlnt_runtime_dyna_a429568d5be8( t50 ).
    IF t88 IS BOUND.
      t87 = t88.
    ENDIF.
    IF t87 IS NOT BOUND.
      t86 = abap_true.
    ELSE.
      t86 = xsdbool( t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t86 = abap_true.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t89.
      t85 = t89.
    ELSE.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t92) = CAST zlnt_runtime_dyna_a429568d5be8( t50 ).
      t91 = t92.
      DATA(t93) = |TPOOL|.
      t90 = t91->get( p0 = t93 ).
      t85 = t90.
    ENDIF.
    t49 = t85.
    t48 = t49.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = VALUE abap_bool( ).
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA(t97) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    IF t97 IS BOUND.
      t96 = t97.
    ENDIF.
    IF t96 IS NOT BOUND.
      t95 = abap_true.
    ELSE.
      t95 = xsdbool( t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t95 = abap_true.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      t94 = t98.
    ELSE.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t101) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
      t100 = t101.
      DATA(t102) = |item|.
      t99 = t100->get( p0 = t102 ).
      t94 = t99.
    ENDIF.
    t47 = t94.
    IF t47 IS BOUND.
      t46 = t47.
    ENDIF.
    t45 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t46 ).
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO object.
    CLEAR t104.
    LOOP AT t45->items INTO t104.
      t103 ?= t104.
      DATA(t105) = VALUE abap_bool( ).
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t109) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
      t108 = t109.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t110.
      DATA(t111) = VALUE abap_bool( ).
      DATA(t112) = CAST zlnt_runtime_dyna_a429568d5be8( t108 ).
      IF t112 IS NOT BOUND.
        t111 = abap_true.
      ELSE.
        t111 = xsdbool( t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t111 = abap_true.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        t110 = t113.
      ELSE.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t115) = CAST zlnt_runtime_dyna_a429568d5be8( t108 ).
        DATA(t116) = |ID|.
        t114 = t115->get( p0 = t116 ).
        t110 = t114.
      ENDIF.
      t107 = t110.
      IF t107 IS BOUND.
        t106 = t107.
      ENDIF.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t118) = |R|.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t117->sval = t118.
      IF t106 IS NOT BOUND.
        t105 = xsdbool( t117 IS NOT BOUND ).
      ELSE.
        t105 = t106->strict_equals( t117 ).
      ENDIF.
      IF t105 = abap_true.
        DATA(t119) = VALUE string( ).
        DATA(t120) = VALUE abap_bool( ).
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t122) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
        DATA(t123) = |ENTRY|.
        t121 = t122->get( p0 = t123 ).
        IF t121 IS BOUND.
          t120 = t121->truth( ).
        ENDIF.
        IF t120 = abap_true.
          DATA t124 TYPE string.
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t126) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
          DATA(t127) = |ENTRY|.
          t125 = t126->get( p0 = t127 ).
          t124 = zcl_lnt_xml_utils_module=>unescape( i_str = t125 ).
          t119 = t124.
        ELSE.
          DATA(t128) = ||.
          t119 = t128.
        ENDIF.
        t38 = t119.
      ELSE.
        DATA(t129) = VALUE abap_bool( ).
        DATA(t130) = VALUE abap_bool( ).
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t134) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
        t133 = t134.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        DATA(t136) = VALUE abap_bool( ).
        DATA(t137) = CAST zlnt_runtime_dyna_a429568d5be8( t133 ).
        IF t137 IS NOT BOUND.
          t136 = abap_true.
        ELSE.
          t136 = xsdbool( t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t136 = abap_true.
          DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t138.
          t135 = t138.
        ELSE.
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t140) = CAST zlnt_runtime_dyna_a429568d5be8( t133 ).
          DATA(t141) = |ID|.
          t139 = t140->get( p0 = t141 ).
          t135 = t139.
        ENDIF.
        t132 = t135.
        IF t132 IS BOUND.
          t131 = t132.
        ENDIF.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t143) = |S|.
        CREATE OBJECT t142.
        t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t142->sval = t143.
        IF t131 IS NOT BOUND.
          t130 = xsdbool( t142 IS NOT BOUND ).
        ELSE.
          t130 = t131->strict_equals( t142 ).
        ENDIF.
        t129 = t130.
        IF t130 = abap_true.
          DATA(t144) = VALUE abap_bool( ).
          DATA(t145) = VALUE string( ).
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t147) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
          DATA(t148) = |KEY|.
          t146 = t147->get( p0 = t148 ).
          IF t146 IS BOUND.
            t145 = t146->type_of( ).
          ELSE.
            t145 = `undefined`.
          ENDIF.
          DATA(t149) = |string|.
          t144 = xsdbool( t145 = t149 ).
          t129 = t144.
        ENDIF.
        IF t129 = abap_true.
          DATA t150 TYPE REF TO zlnt_runtime_map__8bf596bf435b.
          CLEAR t150.
          DATA(t151) = CAST zlnt_runtime_map__8bf596bf435b( t40 ).
          DATA t152 TYPE string.
          DATA t153 TYPE string.
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t155) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
          DATA(t156) = |KEY|.
          t154 = t155->get( p0 = t156 ).
          t153 = t154->as_string( ).
          DATA(t157) = strlen( t153 ).
          t152 = t153.
          IF t152 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t152 TO UPPER CASE.
          ELSE.
            t152 = zlnt_runtime_uppe_91169605024d=>full( t152 ).
          ENDIF.
          DATA t158 TYPE REF TO zcl_lnt_shape_a5d24328.
          CLEAR t158.
          DATA(t159) = VALUE string( ).
          DATA(t160) = VALUE abap_bool( ).
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t162) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
          DATA(t163) = |ENTRY|.
          t161 = t162->get( p0 = t163 ).
          IF t161 IS BOUND.
            t160 = t161->truth( ).
          ENDIF.
          IF t160 = abap_true.
            DATA t164 TYPE string.
            DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t166) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
            DATA(t167) = |ENTRY|.
            t165 = t166->get( p0 = t167 ).
            t164 = zcl_lnt_xml_utils_module=>unescape( i_str = t165 ).
            t159 = t164.
          ELSE.
            DATA(t168) = ||.
            t159 = t168.
          ENDIF.
          DATA(t169) = VALUE int8( ).
          DATA t170 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
          CLEAR t170.
          DATA t171 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
          CLEAR t171.
          DATA(t172) = VALUE string( ).
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t174) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
          DATA(t175) = |LENGTH|.
          t173 = t174->get( p0 = t175 ).
          IF t173 IS BOUND.
            t172 = t173->to_string( ).
          ELSE.
            t172 = `undefined`.
          ENDIF.
          DATA(t176) = strlen( t172 ).
          DATA t177 TYPE i.
          DATA t178 TYPE i.
          t177 = 0.
          t178 = t176.
          DATA(t179) = VALUE i( ).
          DATA(t180) = VALUE i( ).
          DATA(t181) = VALUE string( ).
          WHILE t177 < t178.
            t180 = t177.
            t181 = t172+t180(1).
            DATA t182 TYPE c LENGTH 1.
            CLEAR t182.
            DATA(t183) = VALUE xstring( ).
            DATA t184 TYPE x LENGTH 1.
            CLEAR t184.
            DATA t185 TYPE x LENGTH 1.
            CLEAR t185.
            DATA(t186) = VALUE i( ).
            t182 = t181.
            t179 = cl_abap_conv_out_ce=>uccpi( t182 ).
            IF t179 >= 255.
              IF zlnt_builtin_code_69bb420def7c IS NOT BOUND.
                zlnt_builtin_code_69bb420def7c = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_69bb420def7c->convert( EXPORTING data = t181 IMPORTING buffer = t183 ).
              t184 = t183(1).
              t185 = t183+1(1).
              t179 = t184.
              t186 = t185.
              t179 = t179 + t186 * 256.
            ENDIF.
            IF t179 = 9 OR t179 = 10 OR t179 = 11 OR t179 = 12 OR t179 = 13 OR t179 = 32 OR t179 = 160 OR t179 = 5760 OR t179 = 8232 OR t179 = 8233 OR t179 = 8239 OR t179 = 8287 OR t179 = 12288 OR t179 = 65279 OR t179 >= 8192 AND t179 <= 8202.
              t177 = t177 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          DATA t187 TYPE f.
          DATA t188 TYPE f.
          DATA t189 TYPE i.
          DATA(t190) = VALUE string( ).
          t187 = 1.
          t188 = 0.
          t189 = 0.
          IF t177 < t178.
            t190 = t172+t177(1).
            IF t190 = '-'.
              t187 = -1.
              t177 = t177 + 1.
            ELSEIF t190 = '+'.
              t177 = t177 + 1.
            ENDIF.
          ENDIF.
          WHILE t177 < t178.
            t190 = t172+t177(1).
            IF t190 CA '0123456789' AND t190 <> ` `.
              t188 = t188 * 10 + ( t190 ).
              t189 = t189 + 1.
              t177 = t177 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t189 = 0.
            CLEAR t171.
          ELSE.
            t171 = NEW #( ).
            t171->has = abap_true.
            t171->value = t187 * t188.
          ENDIF.
          t170 = t171.
          DATA(t191) = VALUE abap_bool( ).
          DATA(t192) = CAST zlnt_runtime_opti_4a236cd5714d( t170 ).
          IF t192 IS INITIAL.
            t191 = abap_true.
          ELSEIF t192->has = abap_false.
            t191 = abap_true.
          ENDIF.
          IF t191 = abap_true.
            DATA(t193) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t194) = |src/objects/program.ts:90:100|.
            t193->source_location = t194.
            RAISE EXCEPTION t193.
          ENDIF.
          DATA t195 TYPE int8.
          DATA(t196) = CAST zlnt_runtime_opti_4a236cd5714d( t170 ).
          t195 = t196->value.
          t169 = t195.
          t158 = NEW zcl_lnt_shape_a5d24328( i_entry = t159 i_max_length = t169 ).
          t150 = t151->set( p0 = t152 p1 = t158 ).
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA(t200) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    IF t200 IS BOUND.
      t199 = t200.
    ENDIF.
    t198 = zcl_lnt_dynpros_module=>parse_dynpros( i_parsed = t199 ).
    t197 = t198.
    DATA t201 TYPE REF TO zcl_lnt_shape_e86506f0.
    CLEAR t201.
    DATA(t202) = abap_true.
    IF t202 = abap_true.
      DATA t203 TYPE REF TO zcl_lnt_shape_e86506f0.
      CLEAR t203.
      DATA(t204) = VALUE abap_bool( ).
      DATA t205 TYPE abap_bool.
      DATA(t206) = CAST zif_lnt_file( t9 ).
      t205 = xsdbool( t206 IS BOUND ).
      IF t205 = abap_true.
        DATA(t207) = VALUE abap_bool( ).
        DATA(t208) = VALUE i( ).
        DATA t209 TYPE string.
        DATA t210 TYPE REF TO zif_lnt_file.
        DATA(t211) = CAST zif_lnt_file( t9 ).
        t210 = t211.
        t209 = t210->get_raw( ).
        DATA(t212) = |<SUBC>I</SUBC>|.
        DATA(t213) = strlen( t209 ).
        IF t212 IS INITIAL.
          t208 = 0.
        ELSE.
          FIND t212 IN t209 MATCH OFFSET t208.
          IF sy-subrc <> 0.
            t208 = -1.
          ENDIF.
        ENDIF.
        DATA(t214) = 0.
        t207 = xsdbool( t208 >= t214 ).
        t204 = t207.
      ELSE.
        DATA(t215) = abap_false.
        t204 = t215.
      ENDIF.
      DATA(t216) = VALUE abap_bool( ).
      DATA t217 TYPE abap_bool.
      DATA(t218) = CAST zif_lnt_file( t9 ).
      t217 = xsdbool( t218 IS BOUND ).
      IF t217 = abap_true.
        DATA(t219) = VALUE abap_bool( ).
        DATA(t220) = VALUE i( ).
        DATA t221 TYPE string.
        DATA t222 TYPE REF TO zif_lnt_file.
        DATA(t223) = CAST zif_lnt_file( t9 ).
        t222 = t223.
        t221 = t222->get_raw( ).
        DATA(t224) = |<SUBC>M</SUBC>|.
        DATA(t225) = strlen( t221 ).
        IF t224 IS INITIAL.
          t220 = 0.
        ELSE.
          FIND t224 IN t221 MATCH OFFSET t220.
          IF sy-subrc <> 0.
            t220 = -1.
          ENDIF.
        ENDIF.
        DATA(t226) = 0.
        t219 = xsdbool( t220 >= t226 ).
        t216 = t219.
      ELSE.
        DATA(t227) = abap_false.
        t216 = t227.
      ENDIF.
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t228.
      DATA(t229) = abap_true.
      IF t229 = abap_true.
        DATA(t230) = t38.
        DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t231->has = abap_true.
        t231->value = t230.
        t228 = t231.
      ELSE.
        DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t232.
        t228 = t232.
      ENDIF.
      DATA t233 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t233.
      DATA(t234) = abap_true.
      IF t234 = abap_true.
        DATA(t235) = CAST zlnt_runtime_arra_c22708faf2e3( t197 ).
        t233 = t235.
      ELSE.
        DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t236.
        t233 = t236.
      ENDIF.
      DATA t237 TYPE REF TO zlnt_runtime_map__8bf596bf435b.
      CLEAR t237.
      DATA(t238) = abap_true.
      IF t238 = abap_true.
        DATA(t239) = CAST zlnt_runtime_map__8bf596bf435b( t40 ).
        t237 = t239.
      ELSE.
        DATA t240 TYPE REF TO zlnt_runtime_map__8bf596bf435b.
        CLEAR t240.
        t237 = t240.
      ENDIF.
      t203 = NEW zcl_lnt_shape_e86506f0( i_is_include = t204 i_is_module_pool = t216 i_description = t228 i_dynpros = t233 i_selection_texts = t237 ).
      t201 = t203.
    ELSE.
      DATA t241 TYPE REF TO zcl_lnt_shape_e86506f0.
      CLEAR t241.
      t201 = t241.
    ENDIF.
    me->parsed_xml = t201.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1224_79bf9124506a.
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~debug_description.
    result = me->debug_description( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_abap_file_by_name.
    result = me->get_abap_file_by_name( i_filename = i_filename ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_abap_files.
    result = me->get_abap_files( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_description.
    result = me->get_description( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_dynpros.
    result = me->get_dynpros( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_files.
    result = me->get_files( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_main_abap_file.
    result = me->get_main_abap_file( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_name.
    result = me->get_name( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_sequenced_files.
    result = me->get_sequenced_files( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_text_elements.
    result = me->get_text_elements( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_text_elements_translations.
    result = me->get_text_elements_translations( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_text_symbols.
    result = me->get_text_symbols( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_type.
    result = me->get_type( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.
  METHOD zif_lnt_union_d439e5f2~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.
ENDCLASS.
