* TS: src/rules/catch_and_raise.ts:13:1 CatchAndRaise
CLASS zcl_lnt_catch_and_raise DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_catch_and_raise_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_ct_an_rs_ts_ct_an_rs RETURNING VALUE(result) TYPE REF TO zcl_lnt_catch_and_raise_conf.
    METHODS s_c_i_s_r_ct_an_rs_ts_ct_an_rs IMPORTING i_conf TYPE REF TO zcl_lnt_catch_and_raise_conf.
    METHODS r_p_i_s_r_ct_an_rs_ts_ct_an_rs IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_be380fe754b8 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_catch_and_raise IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_catch_and_raise_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |catch_and_raise|.
    DATA t4 TYPE string.
    t4 = |Catch and re-raise same exception|.
    DATA t6 TYPE string.
    DATA(t7) = |Reports CATCH blocks that only re-raise the caught exception|.
    t7 = t7 && | without any handling|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |TRY.\n  something( ).\nCATCH zcx_something INTO DATA(lv_exc).\n|.
    t11 = t11 && |  RAISE EXCEPTION lv_exc.\nENDTRY.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t17) = |TRY.\n  something( ).\nCATCH zcx_something.\n  " handle excepti|.
    t17 = t17 && |on\nENDTRY.|.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = t17.
    t14 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t25.
    t24 = t25.
    DATA(t27) = |SingleFile|.
    t24->load( ).
    APPEND t27 TO t24->items.
    t24->save( ).
    t20 = t24.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t8 i_good_example = t14 i_extended_information = t30 i_tags = t20 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t42) = |key|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    DATA(t44) = |title|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |shortDescription|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |badExample|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |goodExample|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_ct_an_rs_ts_ct_an_rs.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_ct_an_rs_ts_ct_an_rs.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_ct_an_rs_ts_ct_an_rs.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    t8 = t1->structure.
    t4 = t8.
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( t4 IS INITIAL ).
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    t19 = t4.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d712_8689fb760a6c.
    t18 = t19->find_all_structures( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_structure_node.
    DATA t23 TYPE REF TO object.
    DATA(t24) = VALUE i( ).
    DO.
      t18->load( ).
      IF t24 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t18->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_statement_node.
      DATA t28 TYPE REF TO zcl_lnt_statement_node.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d402_a27e9c5370ec.
      t28 = t22->find_direct_statement( i_type_9913 = t30 ).
      t27 = t28.
      DATA(t31) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      t31 = xsdbool( t27 IS INITIAL ).
      IF t31 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      DATA t40 TYPE REF TO zcl_lnt_statement_node.
      t40 = t27.
      DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t39 = t40->find_first_expression( i_type_9913 = t42 ).
      t38 = t39.
      DATA(t43) = VALUE abap_bool( ).
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      t43 = xsdbool( t38 IS INITIAL ).
      IF t43 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t50 TYPE REF TO zcl_lnt_expression_node.
      DATA t51 TYPE REF TO zcl_lnt_expression_node.
      DATA t52 TYPE REF TO zcl_lnt_expression_node.
      t52 = t38.
      DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
      t51 = t52->find_first_expression( i_type_9913 = t54 ).
      t50 = t51.
      DATA(t55) = VALUE abap_bool( ).
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      t55 = xsdbool( t50 IS INITIAL ).
      IF t55 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t62) = VALUE string( ).
      DATA t63 TYPE string.
      DATA t64 TYPE string.
      DATA t66 TYPE REF TO zcl_lnt_abstract_token.
      DATA t67 TYPE REF TO zcl_lnt_expression_node.
      t67 = t50.
      t66 = t67->get_first_token( ).
      DATA t69 TYPE string.
      t69 = t66->str.
      t64 = t69.
      DATA(t71) = strlen( t64 ).
      t63 = t64.
      IF t63 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t63 TO UPPER CASE.
      ELSE.
        t63 = zlnt_runtime_uppe_91169605024d=>full( t63 ).
      ENDIF.
      t62 = t63.
      DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t73 = t22->find_all_statement_nodes( ).
      t72 = t73.
      DATA t75 TYPE abap_bool.
      DATA t76 TYPE i.
      t72->load( ).
      t76 = lines( t72->items ).
      DATA(t78) = 2.
      t75 = xsdbool( t76 <> t78 ).
      IF t75 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = VALUE abap_bool( ).
      DATA t81 TYPE REF TO zif_lnt_statement.
      CLEAR t81.
      DATA t82 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t82.
      DATA t84 TYPE REF TO object.
      CLEAR t84.
      t72->load( ).
      CLEAR t84.
      READ TABLE t72->items INDEX 2 INTO t84.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      CLEAR t82.
      IF t84 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t85 ?= t84.
        DATA t86 TYPE REF TO object.
        t86 = t85->as_ref( ).
        t82 ?= t86.
      ELSE.
        t82 ?= t84.
      ENDIF.
      t81 = t82->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_st_raise ).
      t79 = xsdbool( t80 = abap_false ).
      IF t79 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t88 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t88.
      DATA t90 TYPE REF TO object.
      CLEAR t90.
      t72->load( ).
      CLEAR t90.
      READ TABLE t72->items INDEX 2 INTO t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      CLEAR t88.
      IF t90 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t91 ?= t90.
        DATA t92 TYPE REF TO object.
        t92 = t91->as_ref( ).
        t88 ?= t92.
      ELSE.
        t88 ?= t90.
      ENDIF.
      DATA(t93) = VALUE string( ).
      DATA(t94) = VALUE string( ).
      DATA(t95) = VALUE string( ).
      DATA t96 TYPE string.
      DATA t97 TYPE string.
      t97 = t88->concat_tokens( ).
      DATA(t99) = strlen( t97 ).
      t96 = t97.
      IF t96 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t96 TO UPPER CASE.
      ELSE.
        t96 = zlnt_runtime_uppe_91169605024d=>full( t96 ).
      ENDIF.
      DATA t100 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t100.
      DATA(t101) = `\.$`.
      DATA(t102) = ||.
      CREATE OBJECT t100 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t101 flags = t102.
      DATA(t103) = ||.
      DATA(t104) = strlen( t96 ).
      t95 = t100->replace( p0 = t96 p1 = t103 ).
      DATA(t105) = strlen( t95 ).
      DATA t106 TYPE i.
      DATA t107 TYPE i.
      t106 = 0.
      t107 = t105.
      DATA(t108) = VALUE i( ).
      DATA(t109) = VALUE i( ).
      DATA(t110) = VALUE string( ).
      WHILE t106 < t107.
        t109 = t106.
        t110 = t95+t109(1).
        DATA t111 TYPE c LENGTH 1.
        CLEAR t111.
        DATA(t112) = VALUE xstring( ).
        DATA t113 TYPE x LENGTH 1.
        CLEAR t113.
        DATA t114 TYPE x LENGTH 1.
        CLEAR t114.
        DATA(t115) = VALUE i( ).
        t111 = t110.
        t108 = cl_abap_conv_out_ce=>uccpi( t111 ).
        IF t108 >= 255.
          IF zlnt_builtin_code_be380fe754b8 IS NOT BOUND.
            zlnt_builtin_code_be380fe754b8 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_be380fe754b8->convert( EXPORTING data = t110 IMPORTING buffer = t112 ).
          t113 = t112(1).
          t114 = t112+1(1).
          t108 = t113.
          t115 = t114.
          t108 = t108 + t115 * 256.
        ENDIF.
        IF t108 = 9 OR t108 = 10 OR t108 = 11 OR t108 = 12 OR t108 = 13 OR t108 = 32 OR t108 = 160 OR t108 = 5760 OR t108 = 8232 OR t108 = 8233 OR t108 = 8239 OR t108 = 8287 OR t108 = 12288 OR t108 = 65279 OR t108 >= 8192 AND t108 <= 8202.
          t106 = t106 + 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      DATA(t116) = VALUE i( ).
      DATA(t117) = VALUE i( ).
      DATA(t118) = VALUE string( ).
      WHILE t107 > t106.
        t117 = t107 - 1.
        t118 = t95+t117(1).
        DATA t119 TYPE c LENGTH 1.
        CLEAR t119.
        DATA(t120) = VALUE xstring( ).
        DATA t121 TYPE x LENGTH 1.
        CLEAR t121.
        DATA t122 TYPE x LENGTH 1.
        CLEAR t122.
        DATA(t123) = VALUE i( ).
        t119 = t118.
        t116 = cl_abap_conv_out_ce=>uccpi( t119 ).
        IF t116 >= 255.
          IF zlnt_builtin_code_be380fe754b8 IS NOT BOUND.
            zlnt_builtin_code_be380fe754b8 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_be380fe754b8->convert( EXPORTING data = t118 IMPORTING buffer = t120 ).
          t121 = t120(1).
          t122 = t120+1(1).
          t116 = t121.
          t123 = t122.
          t116 = t116 + t123 * 256.
        ENDIF.
        IF t116 = 9 OR t116 = 10 OR t116 = 11 OR t116 = 12 OR t116 = 13 OR t116 = 32 OR t116 = 160 OR t116 = 5760 OR t116 = 8232 OR t116 = 8233 OR t116 = 8239 OR t116 = 8287 OR t116 = 12288 OR t116 = 65279 OR t116 >= 8192 AND t116 <= 8202.
          t107 = t107 - 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      IF t107 > t106.
        t105 = t107 - t106.
        t94 = t95+t106(t105).
      ELSE.
        CLEAR t94.
      ENDIF.
      t93 = t94.
      DATA(t124) = VALUE abap_bool( ).
      DATA(t125) = VALUE abap_bool( ).
      DATA(t127) = |RAISE EXCEPTION |.
      DATA(t128) = strlen( t93 ).
      DATA t129 TYPE i.
      DATA(t130) = VALUE i( ).
      DATA(t131) = VALUE string( ).
      t129 = strlen( t127 ).
      IF t129 = 0.
        t125 = abap_true.
      ELSEIF t129 <= t128.
        t130 = 0.
        t131 = t93+t130(t129).
        IF t131 = t127.
          t125 = abap_true.
        ENDIF.
      ENDIF.
      t124 = xsdbool( t125 = abap_false ).
      IF t124 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t134 TYPE string.
      t134 = t93.
      DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t138 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t138.
      DATA(t139) = `\s+`.
      DATA(t140) = |[\t\n|.
      DATA t141 TYPE c LENGTH 1.
      CLEAR t141.
      t141 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t140 t141 INTO t140 RESPECTING BLANKS.
      DATA t142 TYPE c LENGTH 1.
      CLEAR t142.
      t142 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t140 t142 INTO t140 RESPECTING BLANKS.
      t140 = t140 && |\r    - |.
      DATA t143 TYPE c LENGTH 1.
      CLEAR t143.
      t143 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t140 t143 INTO t140 RESPECTING BLANKS.
      DATA t144 TYPE c LENGTH 1.
      CLEAR t144.
      t144 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t140 t144 INTO t140 RESPECTING BLANKS.
      t140 = t140 && |  　|.
      DATA t145 TYPE c LENGTH 1.
      CLEAR t145.
      t145 = cl_abap_conv_in_ce=>uccpi( 65279 ).
      CONCATENATE t140 t145 INTO t140 RESPECTING BLANKS.
      t140 = t140 && |]+|.
      DATA(t146) = ||.
      CREATE OBJECT t138 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t140 flags = t146.
      t138->source = t139.
      DATA(t147) = CONV f( '4294967295' ).
      DATA(t148) = strlen( t134 ).
      t136 = zlnt_runtime_stri_248d3505915c=>split( text = t134 pattern = t138 limit = t147 ).
      t132 = t136.
      DATA t149 TYPE abap_bool.
      DATA t150 TYPE i.
      t132->load( ).
      t150 = lines( t132->items ).
      DATA(t152) = 3.
      t149 = xsdbool( t150 <> t152 ).
      IF t149 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t153) = VALUE abap_bool( ).
      DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t156) = 2.
      t154 = t132->get( p0 = t156 ).
      DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t157.
      DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t160->has = abap_true.
      t160->value = t62.
      t157 = t160.
      DATA(t162) = VALUE abap_bool( ).
      DATA(t163) = VALUE abap_bool( ).
      IF t154 IS BOUND.
        t162 = t154->has.
      ENDIF.
      IF t157 IS BOUND.
        t163 = t157->has.
      ENDIF.
      IF t162 = t163.
        IF t162 = abap_false.
          t153 = abap_true.
        ELSEIF t154->value = t157->value.
          t153 = abap_true.
        ENDIF.
      ENDIF.
      IF t153 = abap_true.
        DATA t165 TYPE REF TO zcl_lnt_issue.
        CLEAR t165.
        DATA t167 TYPE REF TO zcl_lnt_statement_node.
        t167 = t27.
        DATA(t169) = |Caught exception is immediately re-raised, CATCH block has n|.
        t169 = t169 && |o effect|.
        DATA(t170) = VALUE string( ).
        DATA t171 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t171.
        DATA t172 TYPE string.
        t172 = |catch_and_raise|.
        DATA t174 TYPE string.
        t174 = |Catch and re-raise same exception|.
        DATA t176 TYPE string.
        DATA(t177) = |Reports CATCH blocks that only re-raise the caught exception|.
        t177 = t177 && | without any handling|.
        t176 = t177.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t178.
        DATA(t181) = |TRY.\n  something( ).\nCATCH zcx_something INTO DATA(lv_exc).\n|.
        t181 = t181 && |  RAISE EXCEPTION lv_exc.\nENDTRY.|.
        DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t182->has = abap_true.
        t182->value = t181.
        t178 = t182.
        DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t184.
        DATA(t187) = |TRY.\n  something( ).\nCATCH zcx_something.\n  " handle excepti|.
        t187 = t187 && |on\nENDTRY.|.
        DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t188->has = abap_true.
        t188->value = t187.
        t184 = t188.
        DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t190.
        DATA t194 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t195 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t195.
        t194 = t195.
        DATA(t197) = |SingleFile|.
        t194->load( ).
        APPEND t197 TO t194->items.
        t194->save( ).
        t190 = t194.
        DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t200.
        DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t202.
        DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t204.
        t171 = NEW zcl_lnt_irule_metadata( i_key = t172 i_title = t174 i_short_description = t176 i_bad_example = t178 i_good_example = t184 i_extended_information = t200 i_tags = t190 i_pragma = t202 i_pseudo_comment = t204 ).
        CREATE OBJECT t171->zlnt_view_ownkeys_b0e8086400eb.
        t171->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t206.
        t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t206 ).
        DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t207.
        IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t207 ).
        ENDIF.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t208.
        IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t208 ).
        ENDIF.
        DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t209.
        IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t209 ).
        ENDIF.
        DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t210.
        IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t210 ).
        ENDIF.
        DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t211.
        IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t211 ).
        ENDIF.
        CREATE OBJECT t171->zlnt_json_ownkeys_70e5fd461788.
        t171->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t212) = |key|.
        DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t213.
        t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t212 p1 = t213 ).
        DATA(t214) = |title|.
        DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t215.
        IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t214 p1 = t215 ).
        ENDIF.
        DATA(t216) = |shortDescription|.
        DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t217.
        IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t216 p1 = t217 ).
        ENDIF.
        DATA(t218) = |badExample|.
        DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t219.
        IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
        ENDIF.
        DATA(t220) = |goodExample|.
        DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t221.
        IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
        ENDIF.
        DATA(t222) = |tags|.
        DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t223.
        IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t222 p1 = t223 ).
        ENDIF.
        t170 = t171->key.
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t224 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t226 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t226.
        DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t227.
        t165 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t167 i_message_26cb = t169 i_key = t170 i_severity = t224 i_fix = t226 i_alternative_fixes = t227 ).
        t2->load( ).
        APPEND t165 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Caught exception is immediately re-raised, CATCH block has n|.
    t1 = t1 && |o effect|.
    result = t1.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_catch_and_raise_conf( me->g_c_i_s_r_ct_an_rs_ts_ct_an_rs( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_catch_and_raise_conf( me->g_c_i_s_r_ct_an_rs_ts_ct_an_rs( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_catch_and_raise_conf.
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
        t1 = NEW zcl_lnt_catch_and_raise_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_ct_an_rs_ts_ct_an_rs( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_ct_an_rs_ts_ct_an_rs( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1414_aba1c02164e6.
  ENDMETHOD.
ENDCLASS.
