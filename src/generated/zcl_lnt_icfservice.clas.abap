* TS: src/objects/icf_service.ts:4:1 ICFService
CLASS zcl_lnt_icfservice DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_c9bc8812.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_url RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_handler_list RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS pr_in_sr_ob_icf_srv_ts_icf_srv RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_icfservice IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |SICF|.
    result = t1.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 100 ).
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA(t5) = abap_true.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t7.
    t6 = t7.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = t2 i_allow_namespace = t4 i_custom_regex = t6 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t8 ).
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t9 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t10) = |maxLength|.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t10 p1 = t11 ).
    ENDIF.
    DATA(t12) = |allowNamespace|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_shape_c9bc8812.
    CLEAR t1.
    me->parsed_xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_description.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    result = t1.

  ENDMETHOD.

  METHOD get_url.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_icf_srv_ts_icf_srv( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_c9bc8812.
    DATA(t4) = me->parsed_xml.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t3.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_c9bc8812.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->url_01ab.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_handler_list.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_icf_srv_ts_icf_srv( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_c9bc8812.
    DATA(t4) = me->parsed_xml.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t3.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t8.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t10 TYPE REF TO zcl_lnt_shape_c9bc8812.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->handlers.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD pr_in_sr_ob_icf_srv_ts_icf_srv.
    DATA(t1) = VALUE abap_bool( ).
    DATA(t2) = me->parsed_xml.
    t1 = xsdbool( t2 IS BOUND ).
    IF t1 = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t3.
      DATA(t4) = VALUE abap_bool( ).
      DATA(t5) = abap_false.
      t4 = t5.
      DATA(t6) = VALUE f( ).
      DATA(t7) = CONV f( 0 ).
      t6 = t7.
      DATA t8 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t9.
      t8 = t9.
      t3 = NEW zcl_lnt_iparse_result( i_updated = t4 i_runtime = t6 i_runtime_extra = t8 ).
      CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
      t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t10 ).
      ENDIF.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t11 ).
      ENDIF.
      CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
      t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t12) = |updated|.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
      ENDIF.
      DATA(t14) = |runtime|.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
      ENDIF.
      result = t3.
      RETURN.
    ENDIF.
    DATA(t16) = VALUE f( ).
    DATA(t17) = VALUE f( ).
    DATA(t18) = 0.
    t17 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t16 = t17.
    DATA t19 TYPE REF TO zcl_lnt_shape_c9bc8812.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_shape_c9bc8812.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t24 = t25.
      t21 = NEW zcl_lnt_shape_c9bc8812( i_url_8ce1 = t22 i_handlers = t24 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t19 = t21.
    ELSE.
      DATA t26 TYPE REF TO zcl_lnt_shape_c9bc8812.
      CLEAR t26.
      t19 = t26.
    ENDIF.
    me->parsed_xml = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = t27.
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    IF t31 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      t30 = t33.
    ELSE.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      DATA(t35) = t27.
      t34 = t35.
      t30 = t34.
    ENDIF.
    t29 = t30.
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE abap_bool( ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = t29.
    t39 = t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    t41 = t42.
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = t39.
    IF t44 IS INITIAL.
      t43 = abap_true.
    ENDIF.
    t38 = t43.
    t37 = t38.
    IF t38 = abap_false.
      DATA(t45) = VALUE abap_bool( ).
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      DATA(t49) = t29.
      t48 = t49.
      DATA(t50) = |abapGit|.
      t47 = t48->get( p0 = t50 ).
      t46 = t47.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      t51 = t52.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = t46.
      IF t54 IS INITIAL.
        t53 = abap_true.
      ENDIF.
      t45 = t53.
      t37 = t45.
    ENDIF.
    t36 = t37.
    IF t37 = abap_false.
      DATA(t55) = VALUE abap_bool( ).
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t60.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      DATA(t63) = t29.
      t62 = t63.
      DATA(t64) = |abapGit|.
      t61 = t62->get( p0 = t64 ).
      t60 = t61.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      DATA(t66) = VALUE abap_bool( ).
      DATA(t67) = t60.
      IF t67 IS NOT BOUND.
        t66 = abap_true.
      ELSE.
        t66 = xsdbool( t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t66 = abap_true.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        t65 = t68.
      ELSE.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        DATA(t70) = t60.
        DATA(t71) = |asx:abap|.
        t69 = t70->get( p0 = t71 ).
        t65 = t69.
      ENDIF.
      t59 = t65.
      t58 = t59.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      DATA(t73) = VALUE abap_bool( ).
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      DATA(t75) = t58.
      CLEAR t74.
      IF t75 IS BOUND.
        t74 = t75.
      ENDIF.
      IF t74 IS NOT BOUND.
        t73 = abap_true.
      ELSE.
        t73 = xsdbool( t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t73 = abap_true.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        t72 = t76.
      ELSE.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        DATA(t79) = t58.
        t78 = t79.
        DATA(t80) = |asx:values|.
        t77 = t78->get( p0 = t80 ).
        t72 = t77.
      ENDIF.
      t57 = t72.
      t56 = t57.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      t81 = t82.
      DATA(t83) = VALUE abap_bool( ).
      DATA(t84) = t56.
      IF t84 IS INITIAL.
        t83 = abap_true.
      ENDIF.
      t55 = t83.
      t36 = t55.
    ENDIF.
    IF t36 = abap_true.
      DATA t85 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t85.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = abap_false.
      t86 = t87.
      DATA(t88) = VALUE f( ).
      DATA(t89) = CONV f( 0 ).
      t88 = t89.
      DATA t90 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t90.
      DATA t91 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t91.
      t90 = t91.
      t85 = NEW zcl_lnt_iparse_result( i_updated = t86 i_runtime = t88 i_runtime_extra = t90 ).
      CREATE OBJECT t85->zlnt_view_ownkeys_b0e8086400eb.
      t85->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t92 ).
      ENDIF.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t93 ).
      ENDIF.
      CREATE OBJECT t85->zlnt_json_ownkeys_70e5fd461788.
      t85->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t94) = |updated|.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t95.
      IF t85->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
      ENDIF.
      DATA(t96) = |runtime|.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      IF t85->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
      ENDIF.
      result = t85.
      RETURN.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = t29.
    t106 = t107.
    DATA(t108) = |abapGit|.
    t105 = t106->get( p0 = t108 ).
    t104 = t105.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = VALUE abap_bool( ).
    DATA(t111) = t104.
    IF t111 IS NOT BOUND.
      t110 = abap_true.
    ELSE.
      t110 = xsdbool( t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t110 = abap_true.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      t109 = t112.
    ELSE.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      DATA(t114) = t104.
      DATA(t115) = |asx:abap|.
      t113 = t114->get( p0 = t115 ).
      t109 = t113.
    ENDIF.
    t103 = t109.
    t102 = t103.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = VALUE abap_bool( ).
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = t102.
    CLEAR t118.
    IF t119 IS BOUND.
      t118 = t119.
    ENDIF.
    IF t118 IS NOT BOUND.
      t117 = abap_true.
    ELSE.
      t117 = xsdbool( t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t117 = abap_true.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      t116 = t120.
    ELSE.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      DATA(t123) = t102.
      t122 = t123.
      DATA(t124) = |asx:values|.
      t121 = t122->get( p0 = t124 ).
      t116 = t121.
    ENDIF.
    t101 = t116.
    t100 = t101.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = VALUE abap_bool( ).
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA(t128) = t100.
    CLEAR t127.
    IF t128 IS BOUND.
      t127 = t128.
    ENDIF.
    IF t127 IS NOT BOUND.
      t126 = abap_true.
    ELSE.
      t126 = xsdbool( t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t126 = abap_true.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      t125 = t129.
    ELSE.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t130.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t131.
      DATA(t132) = t100.
      t131 = t132.
      DATA(t133) = |ICFHANDLER_TABLE|.
      t130 = t131->get( p0 = t133 ).
      t125 = t130.
    ENDIF.
    t99 = t125.
    t98 = t99.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA(t136) = VALUE abap_bool( ).
    DATA(t137) = t98.
    IF t137 IS INITIAL.
      t136 = abap_true.
    ENDIF.
    IF t136 = abap_true.
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t138.
      t135 = t138.
    ELSE.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      DATA(t140) = t98.
      t139 = t140.
      t135 = t139.
    ENDIF.
    t134 = t135.
    DATA t141 TYPE REF TO zcl_lnt_shape_c9bc8812.
    CLEAR t141.
    DATA(t142) = me->parsed_xml.
    t141 = t142.
    DATA t143 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t143.
    DATA(t144) = abap_true.
    IF t144 = abap_true.
      DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t145.
      CREATE OBJECT t145.
      t143 = t145.
    ELSE.
      DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t146.
      t143 = t146.
    ENDIF.
    t141->handlers = t143.
    DELETE t141->zlnt_record_delet_0597644d88b4 WHERE table_line = `handlers`.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    IF t141->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `handlers` p1 = t147 ).
    ENDIF.
    DATA(t148) = |handlers|.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    IF t141->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t141->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
    ENDIF.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA(t152) = t134.
    CLEAR t151.
    IF t152 IS BOUND.
      t151 = t152.
    ENDIF.
    t150 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t151 ).
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA t154 TYPE REF TO object.
    CLEAR t154.
    DATA(t155) = VALUE i( ).
    DO.
      t150->load( ).
      IF t155 >= lines( t150->items ).
        EXIT.
      ENDIF.
      CLEAR t154.
      READ TABLE t150->items INDEX t155 + 1 INTO t154.
      t155 = t155 + 1.
      DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t156.
      CLEAR t153.
      IF t154 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t156 ?= t154.
        t153 = t156.
      ELSE.
        IF t154 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t157 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t157.
          t157 ?= t154.
          CLEAR t153.
          IF t157 IS BOUND.
            CREATE OBJECT t153.
            t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t153->cval = t157.
          ENDIF.
        ELSE.
          CLEAR t153.
          IF t154 IS BOUND.
            DATA t158 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t158.
            DATA t159 TYPE REF TO object.
            CLEAR t159.
            CLEAR t158.
            t159 = t154.
            TRY.
                t153 ?= t159.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t153 IS NOT BOUND.
              TRY.
                  t158 ?= t154.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t158 IS BOUND.
                t153 = t158->source( ).
              ENDIF.
              IF t153 IS NOT BOUND.
                CREATE OBJECT t153.
                t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t153->oval = t154.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t160) = VALUE abap_bool( ).
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t161.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t162.
      DATA(t163) = t153.
      DATA(t164) = |ICFHANDLER|.
      t162 = t163->get( p0 = t164 ).
      t161 = t162.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      t165 = t166.
      DATA(t167) = VALUE abap_bool( ).
      DATA(t168) = VALUE abap_bool( ).
      DATA(t169) = t161.
      IF t169 IS INITIAL.
        t168 = abap_true.
      ENDIF.
      t167 = xsdbool( t168 = abap_false ).
      t160 = t167.
      IF t160 = abap_true.
        DATA t170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t170.
        DATA t171 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t171.
        DATA t172 TYPE REF TO zcl_lnt_shape_c9bc8812.
        CLEAR t172.
        DATA(t173) = me->parsed_xml.
        t172 = t173.
        t171 = t172->handlers.
        t170 = t171.
        DATA(t174) = VALUE string( ).
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        DATA(t177) = t153.
        DATA(t178) = |ICFHANDLER|.
        t176 = t177->get( p0 = t178 ).
        DATA(t179) = |ICFHANDLER|.
        t175 = t176->get( p0 = t179 ).
        t174 = t175->as_string( ).
        t170->load( ).
        APPEND t174 TO t170->items.
        t170->save( ).
      ENDIF.
    ENDDO.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA(t189) = t29.
    t188 = t189.
    DATA(t190) = |abapGit|.
    t187 = t188->get( p0 = t190 ).
    t186 = t187.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = VALUE abap_bool( ).
    DATA(t193) = t186.
    IF t193 IS NOT BOUND.
      t192 = abap_true.
    ELSE.
      t192 = xsdbool( t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t192 = abap_true.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t194.
      t191 = t194.
    ELSE.
      DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t195.
      DATA(t196) = t186.
      DATA(t197) = |asx:abap|.
      t195 = t196->get( p0 = t197 ).
      t191 = t195.
    ENDIF.
    t185 = t191.
    t184 = t185.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA(t199) = VALUE abap_bool( ).
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA(t201) = t184.
    CLEAR t200.
    IF t201 IS BOUND.
      t200 = t201.
    ENDIF.
    IF t200 IS NOT BOUND.
      t199 = abap_true.
    ELSE.
      t199 = xsdbool( t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t199 = abap_true.
      DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t202.
      t198 = t202.
    ELSE.
      DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t203.
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t204.
      DATA(t205) = t184.
      t204 = t205.
      DATA(t206) = |asx:values|.
      t203 = t204->get( p0 = t206 ).
      t198 = t203.
    ENDIF.
    t183 = t198.
    t182 = t183.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA(t208) = VALUE abap_bool( ).
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA(t210) = t182.
    CLEAR t209.
    IF t210 IS BOUND.
      t209 = t210.
    ENDIF.
    IF t209 IS NOT BOUND.
      t208 = abap_true.
    ELSE.
      t208 = xsdbool( t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t208 = abap_true.
      DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t211.
      t207 = t211.
    ELSE.
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t212.
      DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t213.
      DATA(t214) = t182.
      t213 = t214.
      DATA(t215) = |URL|.
      t212 = t213->get( p0 = t215 ).
      t207 = t212.
    ENDIF.
    t181 = t207.
    t180 = t181.
    DATA t216 TYPE REF TO zcl_lnt_shape_c9bc8812.
    CLEAR t216.
    DATA(t217) = me->parsed_xml.
    t216 = t217.
    DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t218.
    DATA(t219) = VALUE abap_bool( ).
    DATA(t220) = t180.
    IF t220 IS INITIAL.
      t219 = abap_true.
    ENDIF.
    IF t219 = abap_true.
      DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t221.
      t218 = t221.
    ELSE.
      DATA(t222) = VALUE string( ).
      DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t223.
      DATA(t224) = t180.
      t223 = t224.
      t222 = t223->as_string( ).
      DATA(t225) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t225->has = abap_true.
      t225->value = t222.
      t218 = t225.
    ENDIF.
    t216->url_01ab = t218.
    DELETE t216->zlnt_record_delet_0597644d88b4 WHERE table_line = `url`.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    IF t216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `url` p1 = t226 ).
    ENDIF.
    DATA(t227) = |url|.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    IF t216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t227 p1 = t228 ).
    ENDIF.
    DATA(t229) = VALUE f( ).
    DATA(t230) = VALUE f( ).
    DATA(t231) = 0.
    t230 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t229 = t230.
    DATA t232 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t232.
    DATA(t233) = VALUE abap_bool( ).
    DATA(t234) = abap_true.
    t233 = t234.
    DATA(t235) = VALUE f( ).
    DATA(t236) = VALUE f( ).
    DATA(t237) = t229.
    DATA(t238) = t16.
    t236 = t237 - t238.
    t235 = t236.
    DATA t239 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t239.
    DATA t240 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t240.
    t239 = t240.
    t232 = NEW zcl_lnt_iparse_result( i_updated = t233 i_runtime = t235 i_runtime_extra = t239 ).
    CREATE OBJECT t232->zlnt_view_ownkeys_b0e8086400eb.
    t232->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    IF t232->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t232->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t241 ).
    ENDIF.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    IF t232->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t232->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t242 ).
    ENDIF.
    CREATE OBJECT t232->zlnt_json_ownkeys_70e5fd461788.
    t232->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t243) = |updated|.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    IF t232->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t232->zlnt_json_ownkeys_70e5fd461788->put( p0 = t243 p1 = t244 ).
    ENDIF.
    DATA(t245) = |runtime|.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    IF t232->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t232->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
    ENDIF.
    result = t232.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_icf_srv_ts_icf_srv( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1276_7ddf35ef50dd.
  ENDMETHOD.
ENDCLASS.
