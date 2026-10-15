* TS: src/rules/line_only_punc.ts:17:1 LineOnlyPunc
CLASS zcl_lnt_line_only_punc DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_line_only_punc_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_ln_on_pn_ts_ln_on_pn RETURNING VALUE(result) TYPE REF TO zcl_lnt_line_only_punc_conf.
    METHODS s_c_i_s_r_ln_on_pn_ts_ln_on_pn IMPORTING i_conf TYPE REF TO zcl_lnt_line_only_punc_conf.
    METHODS r_p_i_s_r_ln_on_pn_ts_ln_on_pn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_877e342751bc TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_line_only_punc IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_line_only_punc_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |line_only_punc|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Line containing only punctuation|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Detects lines containing only punctuation.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#close-brackets-at-line-end\nhttps://docs.abapopenche|.
      t11 = t11 && |cks.org/checks/16/|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |Styleguide|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Quickfix|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |SingleFile|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      t17 = t26.
      t15 = t17.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t27.
      t15 = t27.
    ENDIF.
    t14 = t15.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |zcl_class=>method(\n).|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA(t36) = abap_true.
    IF t36 = abap_true.
      DATA(t37) = |zcl_class=>method( ).|.
      DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t38->has = abap_true.
      t38->value = t37.
      t35 = t38.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      t35 = t39.
    ENDIF.
    t34 = t35.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t51) = |key|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |title|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |shortDescription|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |extendedInformation|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |tags|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |badExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |goodExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |A line should not contain only "." or ")."|.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_ln_on_pn_ts_ln_on_pn.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_ln_on_pn_ts_ln_on_pn.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_ln_on_pn_ts_ln_on_pn.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_ddic.
    DATA t6 TYPE REF TO zcl_lnt_ddic.
    DATA(t7) = me->reg.
    t6 = NEW zcl_lnt_ddic( i_reg_f149 = t7 ).
    t5 = t6.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t2.
    t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_class ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t10.
      DATA t11 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_class.
      DATA t13 TYPE REF TO zcl_lnt_class.
      DATA(t14) = t2.
      DATA t15 TYPE REF TO object.
      t15 = t14.
      t13 ?= t15.
      t12 = t13.
      DATA t16 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_abap_file.
      DATA t20 TYPE REF TO zcl_lnt_abap_file.
      DATA(t21) = t12.
      t20 = t21->get_main_abap_file( ).
      t19 = t20.
      DATA t22 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t22.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = t19.
      IF t24 IS INITIAL.
        t23 = abap_true.
      ENDIF.
      IF t23 = abap_true.
        DATA t25 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t25.
        t22 = t25.
      ELSE.
        DATA t26 TYPE REF TO zif_lnt_abap_file_information.
        DATA t27 TYPE REF TO zcl_lnt_abap_file.
        DATA t28 TYPE REF TO zcl_lnt_abap_file.
        DATA(t29) = t19.
        t28 = t29.
        t27 = t28.
        DATA t30 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t31) = t27.
        t30 = t31->info.
        t26 = t30.
        t22 = t26.
      ENDIF.
      t18 = t22.
      t17 = t18.
      DATA t32 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = t17.
      IF t34 IS INITIAL.
        t33 = abap_true.
      ENDIF.
      IF t33 = abap_true.
        DATA t35 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t35.
        t32 = t35.
      ELSE.
        DATA t36 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t37 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t38) = t17.
        t37 = t38.
        DATA t39 TYPE string.
        DATA t40 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t41) = t12.
        t40 = t41.
        DATA t42 TYPE string.
        DATA(t43) = t40.
        t42 = t43->name.
        t39 = t42.
        t36 = t37->get_class_definition_by_name( i_name = t39 ).
        t32 = t36.
      ENDIF.
      t16 = t32.
      t11 = t16.
      t10 = t11.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t46) = t10.
      t45 = t46.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      t47 = t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t45.
      IF t50 IS INITIAL.
        t49 = abap_true.
      ENDIF.
      t44 = t49.
      IF t44 = abap_true.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t51.
        result = t51.
        RETURN.
      ELSE.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = VALUE abap_bool( ).
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t55) = me->conf.
        t54 = t55->zlnt_view_read_sr_d3b81107b8a5( ).
        IF t54 IS BOUND.
          IF t54->has = abap_true.
            t53 = xsdbool( t54->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t52 = t53.
        IF t53 = abap_true.
          DATA(t56) = VALUE abap_bool( ).
          DATA(t57) = t5.
          DATA t58 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t58.
          DATA(t59) = abap_true.
          IF t59 = abap_true.
            DATA t60 TYPE REF TO zcl_lnt_info_class_definition.
            DATA(t61) = t10.
            t60 = t61.
            t58 = t60.
          ELSE.
            DATA t62 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t62.
            t58 = t62.
          ENDIF.
          DATA t63 TYPE REF TO zcl_lnt_class.
          DATA(t64) = t2.
          DATA t65 TYPE REF TO object.
          t65 = t64.
          t63 ?= t65.
          t56 = t57->is_exception( i_def = t58 i_obj_ac26 = t63 ).
          t52 = t56.
        ENDIF.
        IF t52 = abap_true.
          DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t66.
          result = t66.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t69 TYPE REF TO zcl_lnt_abap_file.
    DATA(t70) = t1.
    t69 = t70.
    DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t72 TYPE REF TO zif_lnt_file.
    DATA(t73) = t69.
    t72 = t73->file.
    t71 = t72->get_raw_rows( ).
    t68 = t71.
    t67 = t68.
    DATA t74 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t75 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t75.
    DATA(t76) = `^\)?\. *(\".*)?$`.
    DATA(t77) = `^\)?\. *(\"[^`.
    t77 = t77 && |\n\r|.
    DATA t78 TYPE c LENGTH 1.
    CLEAR t78.
    t78 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t77 t78 INTO t77 RESPECTING BLANKS.
    DATA t79 TYPE c LENGTH 1.
    CLEAR t79.
    t79 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t77 t79 INTO t77 RESPECTING BLANKS.
    t77 = t77 && |]*)?$|.
    DATA(t80) = ||.
    CREATE OBJECT t75 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t77 flags = t80.
    t75->source = t76.
    t74 = t75.
    DATA t81 TYPE i.
    DATA(t82) = 0.
    t81 = t82.
    DO.
      DATA t83 TYPE abap_bool.
      DATA(t84) = t81.
      DATA t85 TYPE i.
      DATA(t86) = t67.
      t86->load( ).
      t85 = lines( t86->items ).
      t83 = xsdbool( t84 < t85 ).
      IF t83 = abap_false.
        EXIT.
      ENDIF.
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = t74.
      DATA(t89) = VALUE string( ).
      DATA(t90) = VALUE string( ).
      DATA(t91) = t67.
      DATA(t92) = t81.
      t92 = t92 + 1.
      IF t91->has( t92 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t91->load( ).
      CLEAR t90.
      READ TABLE t91->items INDEX t92 INTO t90.
      DATA(t93) = strlen( t90 ).
      DATA t94 TYPE i.
      DATA t95 TYPE i.
      t94 = 0.
      t95 = t93.
      DATA(t96) = VALUE i( ).
      DATA(t97) = VALUE i( ).
      DATA(t98) = VALUE string( ).
      WHILE t94 < t95.
        t97 = t94.
        t98 = t90+t97(1).
        DATA t99 TYPE c LENGTH 1.
        CLEAR t99.
        DATA(t100) = VALUE xstring( ).
        DATA t101 TYPE x LENGTH 1.
        CLEAR t101.
        DATA t102 TYPE x LENGTH 1.
        CLEAR t102.
        DATA(t103) = VALUE i( ).
        t99 = t98.
        t96 = cl_abap_conv_out_ce=>uccpi( t99 ).
        IF t96 >= 255.
          IF zlnt_builtin_code_877e342751bc IS NOT BOUND.
            zlnt_builtin_code_877e342751bc = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_877e342751bc->convert( EXPORTING data = t98 IMPORTING buffer = t100 ).
          t101 = t100(1).
          t102 = t100+1(1).
          t96 = t101.
          t103 = t102.
          t96 = t96 + t103 * 256.
        ENDIF.
        IF t96 = 9 OR t96 = 10 OR t96 = 11 OR t96 = 12 OR t96 = 13 OR t96 = 32 OR t96 = 160 OR t96 = 5760 OR t96 = 8232 OR t96 = 8233 OR t96 = 8239 OR t96 = 8287 OR t96 = 12288 OR t96 = 65279 OR t96 >= 8192 AND t96 <= 8202.
          t94 = t94 + 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      DATA(t104) = VALUE i( ).
      DATA(t105) = VALUE i( ).
      DATA(t106) = VALUE string( ).
      WHILE t95 > t94.
        t105 = t95 - 1.
        t106 = t90+t105(1).
        DATA t107 TYPE c LENGTH 1.
        CLEAR t107.
        DATA(t108) = VALUE xstring( ).
        DATA t109 TYPE x LENGTH 1.
        CLEAR t109.
        DATA t110 TYPE x LENGTH 1.
        CLEAR t110.
        DATA(t111) = VALUE i( ).
        t107 = t106.
        t104 = cl_abap_conv_out_ce=>uccpi( t107 ).
        IF t104 >= 255.
          IF zlnt_builtin_code_877e342751bc IS NOT BOUND.
            zlnt_builtin_code_877e342751bc = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_877e342751bc->convert( EXPORTING data = t106 IMPORTING buffer = t108 ).
          t109 = t108(1).
          t110 = t108+1(1).
          t104 = t109.
          t111 = t110.
          t104 = t104 + t111 * 256.
        ENDIF.
        IF t104 = 9 OR t104 = 10 OR t104 = 11 OR t104 = 12 OR t104 = 13 OR t104 = 32 OR t104 = 160 OR t104 = 5760 OR t104 = 8232 OR t104 = 8233 OR t104 = 8239 OR t104 = 8287 OR t104 = 12288 OR t104 = 65279 OR t104 >= 8192 AND t104 <= 8202.
          t95 = t95 - 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      IF t95 > t94.
        t93 = t95 - t94.
        t89 = t90+t94(t93).
      ELSE.
        CLEAR t89.
      ENDIF.
      t87 = t88->test( p0 = t89 ).
      IF t87 = abap_true.
        DATA(t112) = VALUE i( ).
        DATA(t113) = VALUE i( ).
        DATA(t114) = VALUE abap_bool( ).
        DATA(t115) = VALUE i( ).
        DATA(t116) = VALUE string( ).
        DATA(t117) = t67.
        DATA(t118) = t81.
        t118 = t118 + 1.
        IF t117->has( t118 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t117->load( ).
        CLEAR t116.
        READ TABLE t117->items INDEX t118 INTO t116.
        DATA(t119) = |)|.
        DATA(t120) = strlen( t116 ).
        IF t119 IS INITIAL.
          t115 = 0.
        ELSE.
          FIND t119 IN t116 MATCH OFFSET t115.
          IF sy-subrc <> 0.
            t115 = -1.
          ENDIF.
        ENDIF.
        DATA(t121) = 0.
        t114 = xsdbool( t115 >= t121 ).
        IF t114 = abap_true.
          DATA(t122) = VALUE i( ).
          DATA(t123) = VALUE i( ).
          DATA(t124) = VALUE string( ).
          DATA(t125) = t67.
          DATA(t126) = t81.
          t126 = t126 + 1.
          IF t125->has( t126 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t125->load( ).
          CLEAR t124.
          READ TABLE t125->items INDEX t126 INTO t124.
          DATA(t127) = |)|.
          DATA(t128) = strlen( t124 ).
          IF t127 IS INITIAL.
            t123 = 0.
          ELSE.
            FIND t127 IN t124 MATCH OFFSET t123.
            IF sy-subrc <> 0.
              t123 = -1.
            ENDIF.
          ENDIF.
          DATA(t129) = 1.
          t122 = t123 + t129.
          t113 = t122.
        ELSE.
          DATA(t130) = VALUE i( ).
          DATA(t131) = VALUE i( ).
          DATA(t132) = VALUE string( ).
          DATA(t133) = t67.
          DATA(t134) = t81.
          t134 = t134 + 1.
          IF t133->has( t134 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t133->load( ).
          CLEAR t132.
          READ TABLE t133->items INDEX t134 INTO t132.
          DATA(t135) = |.|.
          DATA(t136) = strlen( t132 ).
          IF t135 IS INITIAL.
            t131 = 0.
          ELSE.
            FIND t135 IN t132 MATCH OFFSET t131.
            IF sy-subrc <> 0.
              t131 = -1.
            ENDIF.
          ENDIF.
          DATA(t137) = 1.
          t130 = t131 + t137.
          t113 = t130.
        ENDIF.
        t112 = t113.
        DATA t138 TYPE REF TO zcl_lnt_position.
        DATA t139 TYPE REF TO zcl_lnt_position.
        DATA t140 TYPE f.
        DATA t141 TYPE i.
        DATA(t142) = t81.
        DATA(t143) = 1.
        t141 = t142 + t143.
        t140 = t141.
        DATA t144 TYPE f.
        DATA(t145) = t112.
        t144 = t145.
        DATA(t146) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t146->has = abap_true.
        t146->value = t144.
        t139 = NEW zcl_lnt_position( i_row = t140 i_col = t146 ).
        t138 = t139.
        DATA(t147) = VALUE string( ).
        DATA(t148) = VALUE string( ).
        DATA(t149) = VALUE string( ).
        DATA(t150) = t67.
        DATA(t151) = t81.
        t151 = t151 + 1.
        IF t150->has( t151 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t150->load( ).
        CLEAR t149.
        READ TABLE t150->items INDEX t151 INTO t149.
        DATA(t152) = strlen( t149 ).
        DATA t153 TYPE i.
        DATA t154 TYPE i.
        t153 = 0.
        t154 = t152.
        DATA(t155) = VALUE i( ).
        DATA(t156) = VALUE i( ).
        DATA(t157) = VALUE string( ).
        WHILE t153 < t154.
          t156 = t153.
          t157 = t149+t156(1).
          DATA t158 TYPE c LENGTH 1.
          CLEAR t158.
          DATA(t159) = VALUE xstring( ).
          DATA t160 TYPE x LENGTH 1.
          CLEAR t160.
          DATA t161 TYPE x LENGTH 1.
          CLEAR t161.
          DATA(t162) = VALUE i( ).
          t158 = t157.
          t155 = cl_abap_conv_out_ce=>uccpi( t158 ).
          IF t155 >= 255.
            IF zlnt_builtin_code_877e342751bc IS NOT BOUND.
              zlnt_builtin_code_877e342751bc = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_877e342751bc->convert( EXPORTING data = t157 IMPORTING buffer = t159 ).
            t160 = t159(1).
            t161 = t159+1(1).
            t155 = t160.
            t162 = t161.
            t155 = t155 + t162 * 256.
          ENDIF.
          IF t155 = 9 OR t155 = 10 OR t155 = 11 OR t155 = 12 OR t155 = 13 OR t155 = 32 OR t155 = 160 OR t155 = 5760 OR t155 = 8232 OR t155 = 8233 OR t155 = 8239 OR t155 = 8287 OR t155 = 12288 OR t155 = 65279 OR t155 >= 8192 AND t155 <= 8202.
            t153 = t153 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t163) = VALUE i( ).
        DATA(t164) = VALUE i( ).
        DATA(t165) = VALUE string( ).
        WHILE t154 > t153.
          t164 = t154 - 1.
          t165 = t149+t164(1).
          DATA t166 TYPE c LENGTH 1.
          CLEAR t166.
          DATA(t167) = VALUE xstring( ).
          DATA t168 TYPE x LENGTH 1.
          CLEAR t168.
          DATA t169 TYPE x LENGTH 1.
          CLEAR t169.
          DATA(t170) = VALUE i( ).
          t166 = t165.
          t163 = cl_abap_conv_out_ce=>uccpi( t166 ).
          IF t163 >= 255.
            IF zlnt_builtin_code_877e342751bc IS NOT BOUND.
              zlnt_builtin_code_877e342751bc = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_877e342751bc->convert( EXPORTING data = t165 IMPORTING buffer = t167 ).
            t168 = t167(1).
            t169 = t167+1(1).
            t163 = t168.
            t170 = t169.
            t163 = t163 + t170 * 256.
          ENDIF.
          IF t163 = 9 OR t163 = 10 OR t163 = 11 OR t163 = 12 OR t163 = 13 OR t163 = 32 OR t163 = 160 OR t163 = 5760 OR t163 = 8232 OR t163 = 8233 OR t163 = 8239 OR t163 = 8287 OR t163 = 12288 OR t163 = 65279 OR t163 >= 8192 AND t163 <= 8202.
            t154 = t154 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t154 > t153.
          t152 = t154 - t153.
          t148 = t149+t153(t152).
        ELSE.
          CLEAR t148.
        ENDIF.
        t147 = t148.
        DATA(t171) = VALUE abap_bool( ).
        DATA t172 TYPE abap_bool.
        DATA t173 TYPE abap_bool.
        DATA t174 TYPE i.
        DATA(t175) = t147.
        DATA(t176) = strlen( t175 ).
        t174 = t176.
        DATA(t177) = 1.
        t173 = xsdbool( t174 > t177 ).
        t172 = t173.
        IF t173 = abap_true.
          DATA(t178) = VALUE abap_bool( ).
          DATA(t179) = VALUE abap_bool( ).
          DATA(t180) = VALUE string( ).
          DATA(t181) = t67.
          DATA t182 TYPE i.
          DATA(t183) = t81.
          DATA(t184) = 1.
          t182 = t183 - t184.
          t182 = t182 + 1.
          IF t181->has( t182 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t181->load( ).
          CLEAR t180.
          READ TABLE t181->items INDEX t182 INTO t180.
          DATA(t185) = | |.
          DATA(t186) = strlen( t180 ).
          DATA t187 TYPE i.
          DATA(t188) = VALUE i( ).
          DATA(t189) = VALUE string( ).
          t187 = strlen( t185 ).
          IF t187 = 0.
            t179 = abap_true.
          ELSEIF t187 <= t186.
            t188 = 0.
            t188 = t186 - t187.
            t189 = t180+t188(t187).
            IF t189 = t185.
              t179 = abap_true.
            ENDIF.
          ENDIF.
          t178 = xsdbool( t179 = abap_false ).
          t172 = t178.
        ENDIF.
        t171 = t172.
        IF t172 = abap_true.
          DATA(t190) = VALUE abap_bool( ).
          DATA(t191) = VALUE abap_bool( ).
          DATA(t192) = VALUE string( ).
          DATA(t193) = t67.
          DATA t194 TYPE i.
          DATA(t195) = t81.
          DATA(t196) = 1.
          t194 = t195 - t196.
          t194 = t194 + 1.
          IF t193->has( t194 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t193->load( ).
          CLEAR t192.
          READ TABLE t193->items INDEX t194 INTO t192.
          DATA(t197) = | \r|.
          DATA(t198) = strlen( t192 ).
          DATA t199 TYPE i.
          DATA(t200) = VALUE i( ).
          DATA(t201) = VALUE string( ).
          t199 = strlen( t197 ).
          IF t199 = 0.
            t191 = abap_true.
          ELSEIF t199 <= t198.
            t200 = 0.
            t200 = t198 - t199.
            t201 = t192+t200(t199).
            IF t201 = t197.
              t191 = abap_true.
            ENDIF.
          ENDIF.
          t190 = xsdbool( t191 = abap_false ).
          t171 = t190.
        ENDIF.
        IF t171 = abap_true.
          DATA t202 TYPE string.
          DATA(t203) = | |.
          DATA(t204) = t147.
          DATA(t205) = strlen( t203 ).
          t202 = |{ t203 }{ t204 }|.
          t147 = t202.
        ENDIF.
        DATA t206 TYPE i.
        DATA(t207) = 0.
        t206 = t207.
        DATA(t208) = VALUE abap_bool( ).
        DATA t209 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t209.
        DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t212) = t67.
        DATA t213 TYPE i.
        DATA(t214) = t81.
        DATA(t215) = 1.
        t213 = t214 - t215.
        t211 = t212->get( p0 = t213 ).
        t210 = t211.
        DATA t216 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t216.
        DATA(t217) = VALUE abap_bool( ).
        DATA(t218) = t210.
        IF t218 IS INITIAL.
          t217 = abap_true.
        ELSEIF t218->has = abap_false.
          t217 = abap_true.
        ENDIF.
        IF t217 = abap_true.
          DATA t219 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t219.
          t216 = t219.
        ELSE.
          DATA(t220) = VALUE abap_bool( ).
          DATA t221 TYPE string.
          DATA(t222) = t210.
          t221 = t222->value.
          DATA(t223) = |\r|.
          DATA(t224) = strlen( t221 ).
          DATA t225 TYPE i.
          DATA(t226) = VALUE i( ).
          DATA(t227) = VALUE string( ).
          t225 = strlen( t223 ).
          IF t225 = 0.
            t220 = abap_true.
          ELSEIF t225 <= t224.
            t226 = 0.
            t226 = t224 - t225.
            t227 = t221+t226(t225).
            IF t227 = t223.
              t220 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t228) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t228->has = abap_true.
          t228->value = t220.
          t216 = t228.
        ENDIF.
        t209 = t216.
        IF t209 IS BOUND.
          IF t209->has = abap_true.
            t208 = xsdbool( t209->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        IF t208 = abap_true.
          DATA(t229) = -1.
          t206 = t229.
        ENDIF.
        DATA t230 TYPE REF TO zcl_lnt_position.
        CLEAR t230.
        DATA t231 TYPE REF TO zcl_lnt_position.
        CLEAR t231.
        DATA t232 TYPE f.
        DATA(t233) = t81.
        t232 = t233.
        DATA t234 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t234.
        DATA t235 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t235.
        DATA t236 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t236.
        DATA t237 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t237.
        DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t240) = t67.
        DATA t241 TYPE i.
        DATA(t242) = t81.
        DATA(t243) = 1.
        t241 = t242 - t243.
        t239 = t240->get( p0 = t241 ).
        t238 = t239.
        DATA t244 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t244.
        DATA(t245) = VALUE abap_bool( ).
        DATA(t246) = t238.
        IF t246 IS INITIAL.
          t245 = abap_true.
        ELSEIF t246->has = abap_false.
          t245 = abap_true.
        ENDIF.
        IF t245 = abap_true.
          DATA t247 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t247.
          t244 = t247.
        ELSE.
          DATA t248 TYPE f.
          DATA t249 TYPE i.
          DATA t250 TYPE string.
          DATA(t251) = t238.
          t250 = t251->value.
          DATA(t252) = strlen( t250 ).
          t249 = t252.
          t248 = t249.
          DATA(t253) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t253->has = abap_true.
          t253->value = t248.
          t244 = t253.
        ENDIF.
        t237 = t244.
        t236 = t237.
        DATA t254 TYPE i.
        DATA(t255) = 1.
        t254 = t255.
        DATA t256 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t256.
        DATA t257 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t257.
        DATA(t258) = VALUE abap_bool( ).
        DATA(t259) = t236.
        IF t259 IS INITIAL.
          t258 = abap_true.
        ELSEIF t259->has = abap_false.
          t258 = abap_true.
        ENDIF.
        IF t258 = abap_true.
          DATA t260 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t261) = |NaN|.
          t260 = zlnt_runtime_stri_248d3505915c=>float_optional( t261 ).
          t257 = t260.
        ELSE.
          DATA(t262) = VALUE f( ).
          DATA(t263) = t236.
          IF t263->number_special <> 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t262 = t263->value.
          DATA(t264) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t264->has = abap_true.
          t264->value = t262.
          t257 = t264.
        ENDIF.
        DATA t265 TYPE f.
        DATA(t266) = t254.
        t265 = t266.
        DATA(t267) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t267->has = abap_true.
        t267->value = t265.
        t256 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t257 right = t267 op = `+` ).
        t235 = t256.
        DATA t268 TYPE f.
        DATA(t269) = t206.
        t268 = t269.
        DATA(t270) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t270->has = abap_true.
        t270->value = t268.
        t234 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t235 right = t270 op = `+` ).
        t231 = NEW zcl_lnt_position( i_row = t232 i_col = t234 ).
        t230 = t231.
        DATA t271 TYPE REF TO zcl_lnt_position.
        CLEAR t271.
        DATA t272 TYPE REF TO zcl_lnt_position.
        CLEAR t272.
        DATA t273 TYPE f.
        DATA t274 TYPE i.
        DATA(t275) = t81.
        DATA(t276) = 1.
        t274 = t275 + t276.
        t273 = t274.
        DATA(t277) = VALUE f( ).
        DATA(t278) = VALUE int8( ).
        DATA(t279) = VALUE int8( ).
        DATA(t280) = VALUE i( ).
        DATA(t281) = VALUE string( ).
        DATA(t282) = t67.
        DATA(t283) = t81.
        t283 = t283 + 1.
        IF t282->has( t283 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t282->load( ).
        CLEAR t281.
        READ TABLE t282->items INDEX t283 INTO t281.
        DATA(t284) = strlen( t281 ).
        t280 = t284.
        t279 = t280.
        DATA(t285) = CONV int8( 1 ).
        t278 = t279 + t285.
        t277 = t278.
        DATA(t286) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t286->has = abap_true.
        t286->value = t277.
        t272 = NEW zcl_lnt_position( i_row = t273 i_col = t286 ).
        t271 = t272.
        DATA t287 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t287.
        DATA t288 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t288.
        DATA(t289) = abap_true.
        IF t289 = abap_true.
          DATA t290 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t291) = t1.
          DATA(t292) = t230.
          DATA(t293) = t271.
          DATA(t294) = t147.
          t290 = zcl_lnt_edit_helper=>replace_range( i_file = t291 i_start = t292 i_end = t293 i_text = t294 ).
          t288 = t290.
        ELSE.
          DATA t295 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t295.
          t288 = t295.
        ENDIF.
        t287 = t288.
        DATA(t296) = VALUE abap_bool( ).
        DATA(t297) = VALUE abap_bool( ).
        DATA(t298) = VALUE abap_bool( ).
        DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t301) = t67.
        DATA t302 TYPE i.
        DATA(t303) = t81.
        DATA(t304) = 1.
        t302 = t303 - t304.
        t300 = t301->get( p0 = t302 ).
        t299 = t300.
        DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t306.
        t305 = t306.
        DATA(t307) = VALUE abap_bool( ).
        DATA(t308) = t299.
        IF t308 IS INITIAL.
          t307 = abap_true.
        ELSEIF t308->has = abap_false.
          t307 = abap_true.
        ENDIF.
        t298 = t307.
        t297 = t298.
        IF t298 = abap_false.
          DATA(t309) = VALUE abap_bool( ).
          DATA(t310) = VALUE i( ).
          DATA(t311) = VALUE string( ).
          DATA(t312) = t67.
          DATA t313 TYPE i.
          DATA(t314) = t81.
          DATA(t315) = 1.
          t313 = t314 - t315.
          t313 = t313 + 1.
          IF t312->has( t313 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t312->load( ).
          CLEAR t311.
          READ TABLE t312->items INDEX t313 INTO t311.
          DATA(t316) = |*|.
          DATA(t317) = strlen( t311 ).
          IF t316 IS INITIAL.
            t310 = 0.
          ELSE.
            FIND t316 IN t311 MATCH OFFSET t310.
            IF sy-subrc <> 0.
              t310 = -1.
            ENDIF.
          ENDIF.
          DATA(t318) = 0.
          t309 = xsdbool( t310 = t318 ).
          t297 = t309.
        ENDIF.
        t296 = t297.
        IF t297 = abap_false.
          DATA(t319) = VALUE abap_bool( ).
          DATA(t320) = VALUE i( ).
          DATA(t321) = VALUE string( ).
          DATA(t322) = t67.
          DATA t323 TYPE i.
          DATA(t324) = t81.
          DATA(t325) = 1.
          t323 = t324 - t325.
          t323 = t323 + 1.
          IF t322->has( t323 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t322->load( ).
          CLEAR t321.
          READ TABLE t322->items INDEX t323 INTO t321.
          DATA(t326) = |"|.
          DATA(t327) = strlen( t321 ).
          IF t326 IS INITIAL.
            t320 = 0.
          ELSE.
            FIND t326 IN t321 MATCH OFFSET t320.
            IF sy-subrc <> 0.
              t320 = -1.
            ENDIF.
          ENDIF.
          DATA(t328) = 0.
          t319 = xsdbool( t320 >= t328 ).
          t296 = t319.
        ENDIF.
        IF t296 = abap_true.
          DATA t329 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t329.
          t287 = t329.
        ENDIF.
        DATA t330 TYPE REF TO zcl_lnt_issue.
        CLEAR t330.
        DATA t331 TYPE REF TO zcl_lnt_issue.
        CLEAR t331.
        DATA(t332) = t1.
        DATA(t333) = t138.
        DATA(t334) = |A line should not contain only "." or ")."|.
        DATA(t335) = VALUE string( ).
        DATA t336 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t336.
        DATA t337 TYPE string.
        DATA(t338) = |line_only_punc|.
        t337 = t338.
        DATA t339 TYPE string.
        DATA(t340) = |Line containing only punctuation|.
        t339 = t340.
        DATA t341 TYPE string.
        DATA(t342) = |Detects lines containing only punctuation.|.
        t341 = t342.
        DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t343.
        DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t344.
        DATA(t345) = abap_true.
        IF t345 = abap_true.
          DATA(t346) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t346 = t346 && |nABAP.md#close-brackets-at-line-end\nhttps://docs.abapopenche|.
          t346 = t346 && |cks.org/checks/16/|.
          DATA(t347) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t347->has = abap_true.
          t347->value = t346.
          t344 = t347.
        ELSE.
          DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t348.
          t344 = t348.
        ENDIF.
        t343 = t344.
        DATA t349 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t349.
        DATA t350 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t350.
        DATA(t351) = abap_true.
        IF t351 = abap_true.
          DATA t352 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t353 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t354 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t354.
          t353 = t354.
          DATA(t355) = t353.
          DATA(t356) = |Styleguide|.
          t355->load( ).
          APPEND t356 TO t355->items.
          t355->save( ).
          DATA(t357) = t353.
          DATA(t358) = |Quickfix|.
          t357->load( ).
          APPEND t358 TO t357->items.
          t357->save( ).
          DATA(t359) = t353.
          DATA(t360) = |SingleFile|.
          t359->load( ).
          APPEND t360 TO t359->items.
          t359->save( ).
          DATA(t361) = t353.
          t352 = t361.
          t350 = t352.
        ELSE.
          DATA t362 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t362.
          t350 = t362.
        ENDIF.
        t349 = t350.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t363.
        DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t364.
        DATA(t365) = abap_true.
        IF t365 = abap_true.
          DATA(t366) = |zcl_class=>method(\n).|.
          DATA(t367) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t367->has = abap_true.
          t367->value = t366.
          t364 = t367.
        ELSE.
          DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t368.
          t364 = t368.
        ENDIF.
        t363 = t364.
        DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t369.
        DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t370.
        DATA(t371) = abap_true.
        IF t371 = abap_true.
          DATA(t372) = |zcl_class=>method( ).|.
          DATA(t373) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t373->has = abap_true.
          t373->value = t372.
          t370 = t373.
        ELSE.
          DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t374.
          t370 = t374.
        ENDIF.
        t369 = t370.
        DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t376.
        t375 = t376.
        DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t378.
        t377 = t378.
        t336 = NEW zcl_lnt_irule_metadata( i_key = t337 i_title = t339 i_short_description = t341 i_bad_example = t363 i_good_example = t369 i_extended_information = t343 i_tags = t349 i_pragma = t375 i_pseudo_comment = t377 ).
        CREATE OBJECT t336->zlnt_view_ownkeys_b0e8086400eb.
        t336->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t379.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t379 ).
        ENDIF.
        DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t380.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t380 ).
        ENDIF.
        DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t381.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t381 ).
        ENDIF.
        DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t382.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t382 ).
        ENDIF.
        DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t383.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t383 ).
        ENDIF.
        DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t384.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t384 ).
        ENDIF.
        DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t385.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t385 ).
        ENDIF.
        CREATE OBJECT t336->zlnt_json_ownkeys_70e5fd461788.
        t336->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t386) = |key|.
        DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t387.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t386 p1 = t387 ).
        ENDIF.
        DATA(t388) = |title|.
        DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t389.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t388 p1 = t389 ).
        ENDIF.
        DATA(t390) = |shortDescription|.
        DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t391.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t390 p1 = t391 ).
        ENDIF.
        DATA(t392) = |extendedInformation|.
        DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t393.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t392 p1 = t393 ).
        ENDIF.
        DATA(t394) = |tags|.
        DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t395.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t394 p1 = t395 ).
        ENDIF.
        DATA(t396) = |badExample|.
        DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t397.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t396 p1 = t397 ).
        ENDIF.
        DATA(t398) = |goodExample|.
        DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t399.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t398 p1 = t399 ).
        ENDIF.
        t335 = t336->key.
        DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t401) = me->conf.
        t400 = t401->zlnt_view_read_sr_15c06369f827( ).
        DATA(t402) = t287.
        t331 = zcl_lnt_issue=>at_position( i_file = t332 i_start = t333 i_message_26cb = t334 i_key = t335 i_severity = t400 i_fix = t402 ).
        t330 = t331.
        DATA(t403) = t3.
        DATA(t404) = t330.
        t403->load( ).
        APPEND t404 TO t403->items.
        t403->save( ).
      ENDIF.
      DATA t405 TYPE i.
      DATA(t406) = t81.
      DATA(t407) = 1.
      t405 = t406 + t407.
      t81 = t405.
    ENDDO.
    DATA(t408) = t3.
    result = t408.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_line_only_punc_conf( me->g_c_i_s_r_ln_on_pn_ts_ln_on_pn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_line_only_punc_conf( me->g_c_i_s_r_ln_on_pn_ts_ln_on_pn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_line_only_punc_conf.
    CLEAR t1.
    CLEAR t1.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_line_only_punc_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_ln_on_pn_ts_ln_on_pn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_ln_on_pn_ts_ln_on_pn( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1565_9ceb87fdd6a5.
  ENDMETHOD.
ENDCLASS.
