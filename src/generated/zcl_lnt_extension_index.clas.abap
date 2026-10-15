* TS: src/objects/extension_index.ts:3:1 ExtensionIndex
CLASS zcl_lnt_extension_index DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_0b343cf6.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_table_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS pr_in_sr_ob_ext_ind_ts_ext_ind RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_extension_index IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zcl_lnt_shape_0b343cf6.
    CLEAR t3.
    me->parsed_xml = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |XINX|.
    result = t1.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 33 ).
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
    DATA t1 TYPE REF TO zcl_lnt_shape_0b343cf6.
    CLEAR t1.
    me->parsed_xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_ext_ind_ts_ext_ind( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_0b343cf6.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_0b343cf6.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->ddtext_d4ae.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_table_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_ext_ind_ts_ext_ind( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_0b343cf6.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_0b343cf6.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->sqltab.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD pr_in_sr_ob_ext_ind_ts_ext_ind.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_0b343cf6.
    DATA(t3) = me->parsed_xml.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t2.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t6 = xsdbool( t7 = abap_false ).
    t1 = t6.
    IF t1 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_iparse_result.
      DATA t10 TYPE abap_bool.
      DATA(t11) = abap_false.
      t10 = t11.
      DATA t12 TYPE f.
      DATA(t13) = CONV f( 0 ).
      t12 = t13.
      DATA t14 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t15 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t15.
      t14 = t15.
      t9 = NEW zcl_lnt_iparse_result( i_updated = t10 i_runtime = t12 i_runtime_extra = t14 ).
      CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
      t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t16 ).
      ENDIF.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t17 ).
      ENDIF.
      CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
      t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t18) = |updated|.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
      ENDIF.
      DATA(t20) = |runtime|.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t20 p1 = t21 ).
      ENDIF.
      result = t9.
      RETURN.
    ENDIF.
    DATA t22 TYPE f.
    DATA t23 TYPE f.
    DATA(t24) = 0.
    t23 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t22 = t23.
    DATA t25 TYPE REF TO zcl_lnt_shape_0b343cf6.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_shape_0b343cf6.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t30 = t31.
      t27 = NEW zcl_lnt_shape_0b343cf6( i_sqltab = t28 i_ddtext_5aef = t30 ).
      CREATE OBJECT t27->zlnt_view_ownkeys_b0e8086400eb.
      t27->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t27->zlnt_json_ownkeys_70e5fd461788.
      t27->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t25 = t27.
    ELSE.
      DATA t32 TYPE REF TO zcl_lnt_shape_0b343cf6.
      CLEAR t32.
      t25 = t32.
    ENDIF.
    me->parsed_xml = t25.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t33 = t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = t33.
    IF t38 IS INITIAL.
      t37 = abap_true.
    ENDIF.
    IF t37 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      t36 = t39.
    ELSE.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t41) = t33.
      t40 = t41.
      t36 = t40.
    ENDIF.
    t35 = t36.
    DATA(t42) = VALUE abap_bool( ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t44) = t35.
    t43 = t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    t45 = t46.
    DATA(t47) = VALUE abap_bool( ).
    DATA(t48) = t43.
    IF t48 IS INITIAL.
      t47 = abap_true.
    ENDIF.
    t42 = t47.
    IF t42 = abap_true.
      DATA t49 TYPE REF TO zcl_lnt_iparse_result.
      DATA t50 TYPE abap_bool.
      DATA(t51) = abap_false.
      t50 = t51.
      DATA t52 TYPE f.
      DATA(t53) = CONV f( 0 ).
      t52 = t53.
      DATA t54 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t55 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t55.
      t54 = t55.
      t49 = NEW zcl_lnt_iparse_result( i_updated = t50 i_runtime = t52 i_runtime_extra = t54 ).
      CREATE OBJECT t49->zlnt_view_ownkeys_b0e8086400eb.
      t49->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      IF t49->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t49->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t56 ).
      ENDIF.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      IF t49->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t49->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t57 ).
      ENDIF.
      CREATE OBJECT t49->zlnt_json_ownkeys_70e5fd461788.
      t49->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t58) = |updated|.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      IF t49->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t49->zlnt_json_ownkeys_70e5fd461788->put( p0 = t58 p1 = t59 ).
      ENDIF.
      DATA(t60) = |runtime|.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      IF t49->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t49->zlnt_json_ownkeys_70e5fd461788->put( p0 = t60 p1 = t61 ).
      ENDIF.
      result = t49.
      RETURN.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t71) = t35.
    t70 = t71.
    DATA(t72) = |abapGit|.
    t69 = t70->get( p0 = t72 ).
    t68 = t69.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = VALUE abap_bool( ).
    DATA(t75) = t68.
    IF t75 IS NOT BOUND.
      t74 = abap_true.
    ELSE.
      t74 = xsdbool( t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t74 = abap_true.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      t73 = t76.
    ELSE.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t78) = t68.
      DATA(t79) = |asx:abap|.
      t77 = t78->get( p0 = t79 ).
      t73 = t77.
    ENDIF.
    t67 = t73.
    t66 = t67.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA(t81) = VALUE abap_bool( ).
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = t66.
    CLEAR t82.
    IF t83 IS BOUND.
      t82 = t83.
    ENDIF.
    IF t82 IS NOT BOUND.
      t81 = abap_true.
    ELSE.
      t81 = xsdbool( t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t81 = abap_true.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t84.
      t80 = t84.
    ELSE.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t87) = t66.
      t86 = t87.
      DATA(t88) = |asx:values|.
      t85 = t86->get( p0 = t88 ).
      t80 = t85.
    ENDIF.
    t65 = t80.
    t64 = t65.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA(t90) = VALUE abap_bool( ).
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = t64.
    CLEAR t91.
    IF t92 IS BOUND.
      t91 = t92.
    ENDIF.
    IF t91 IS NOT BOUND.
      t90 = abap_true.
    ELSE.
      t90 = xsdbool( t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t90 = abap_true.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      t89 = t93.
    ELSE.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t96) = t64.
      t95 = t96.
      DATA(t97) = |XINX|.
      t94 = t95->get( p0 = t97 ).
      t89 = t94.
    ENDIF.
    t63 = t89.
    t62 = t63.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA(t100) = VALUE abap_bool( ).
    DATA(t101) = t62.
    IF t101 IS INITIAL.
      t100 = abap_true.
    ENDIF.
    IF t100 = abap_true.
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t102.
      t99 = t102.
    ELSE.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t104) = t62.
      t103 = t104.
      t99 = t103.
    ENDIF.
    t98 = t99.
    DATA t105 TYPE REF TO zcl_lnt_shape_0b343cf6.
    CLEAR t105.
    DATA(t106) = abap_true.
    IF t106 = abap_true.
      DATA t107 TYPE REF TO zcl_lnt_shape_0b343cf6.
      CLEAR t107.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t110.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t113) = t98.
      t112 = t113.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t114.
      DATA(t115) = VALUE abap_bool( ).
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      DATA(t117) = t112.
      CLEAR t116.
      IF t117 IS BOUND.
        t116 = t117.
      ENDIF.
      IF t116 IS NOT BOUND.
        t115 = abap_true.
      ELSE.
        t115 = xsdbool( t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t115 = abap_true.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        t114 = t118.
      ELSE.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t121) = t112.
        t120 = t121.
        DATA(t122) = |DD12V|.
        t119 = t120->get( p0 = t122 ).
        t114 = t119.
      ENDIF.
      t111 = t114.
      t110 = t111.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      DATA(t124) = VALUE abap_bool( ).
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t125.
      DATA(t126) = t110.
      CLEAR t125.
      IF t126 IS BOUND.
        t125 = t126.
      ENDIF.
      IF t125 IS NOT BOUND.
        t124 = abap_true.
      ELSE.
        t124 = xsdbool( t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t124 = abap_true.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        t123 = t127.
      ELSE.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t130) = t110.
        t129 = t130.
        DATA(t131) = |SQLTAB|.
        t128 = t129->get( p0 = t131 ).
        t123 = t128.
      ENDIF.
      t109 = t123.
      t108 = t109.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t137) = t98.
      t136 = t137.
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t138.
      DATA(t139) = VALUE abap_bool( ).
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      DATA(t141) = t136.
      CLEAR t140.
      IF t141 IS BOUND.
        t140 = t141.
      ENDIF.
      IF t140 IS NOT BOUND.
        t139 = abap_true.
      ELSE.
        t139 = xsdbool( t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t139 = abap_true.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        t138 = t142.
      ELSE.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t145) = t136.
        t144 = t145.
        DATA(t146) = |DD12V|.
        t143 = t144->get( p0 = t146 ).
        t138 = t143.
      ENDIF.
      t135 = t138.
      t134 = t135.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      DATA(t148) = VALUE abap_bool( ).
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      DATA(t150) = t134.
      CLEAR t149.
      IF t150 IS BOUND.
        t149 = t150.
      ENDIF.
      IF t149 IS NOT BOUND.
        t148 = abap_true.
      ELSE.
        t148 = xsdbool( t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t148 = abap_true.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        t147 = t151.
      ELSE.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t154) = t134.
        t153 = t154.
        DATA(t155) = |DDTEXT|.
        t152 = t153->get( p0 = t155 ).
        t147 = t152.
      ENDIF.
      t133 = t147.
      t132 = t133.
      DATA t156 TYPE REF TO zcl_lnt_shape_0b343cf6.
      CLEAR t156.
      DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t157.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t158.
      DATA(t159) = VALUE abap_bool( ).
      DATA(t160) = t108.
      IF t160 IS INITIAL.
        t159 = abap_true.
      ENDIF.
      IF t159 = abap_true.
        DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t161.
        t158 = t161.
      ELSE.
        DATA t162 TYPE string.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t164) = t108.
        t163 = t164.
        t162 = t163->as_string( ).
        DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t165->has = abap_true.
        t165->value = t162.
        t158 = t165.
      ENDIF.
      t157 = t158.
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t166.
      DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t167.
      DATA(t168) = VALUE abap_bool( ).
      DATA(t169) = t132.
      IF t169 IS INITIAL.
        t168 = abap_true.
      ENDIF.
      IF t168 = abap_true.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t170.
        t167 = t170.
      ELSE.
        DATA t171 TYPE string.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t173) = t132.
        t172 = t173.
        t171 = t172->as_string( ).
        DATA(t174) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t174->has = abap_true.
        t174->value = t171.
        t167 = t174.
      ENDIF.
      t166 = t167.
      t156 = NEW zcl_lnt_shape_0b343cf6( i_sqltab = t157 i_ddtext_5aef = t166 ).
      CREATE OBJECT t156->zlnt_view_ownkeys_b0e8086400eb.
      t156->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sqltab` p1 = t175 ).
      ENDIF.
      DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t176.
      IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddtext` p1 = t176 ).
      ENDIF.
      CREATE OBJECT t156->zlnt_json_ownkeys_70e5fd461788.
      t156->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t177) = |sqltab|.
      DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t178.
      IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = t177 p1 = t178 ).
      ENDIF.
      DATA(t179) = |ddtext|.
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t180.
      IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = t179 p1 = t180 ).
      ENDIF.
      t107 = t156.
      t105 = t107.
    ELSE.
      DATA t181 TYPE REF TO zcl_lnt_shape_0b343cf6.
      CLEAR t181.
      t105 = t181.
    ENDIF.
    me->parsed_xml = t105.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t182 TYPE f.
    DATA t183 TYPE f.
    DATA(t184) = 0.
    t183 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t182 = t183.
    DATA t185 TYPE REF TO zcl_lnt_iparse_result.
    DATA t186 TYPE abap_bool.
    DATA(t187) = abap_true.
    t186 = t187.
    DATA t188 TYPE f.
    DATA t189 TYPE f.
    DATA(t190) = t182.
    DATA(t191) = t22.
    t189 = t190 - t191.
    t188 = t189.
    DATA t192 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA t193 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t193.
    t192 = t193.
    t185 = NEW zcl_lnt_iparse_result( i_updated = t186 i_runtime = t188 i_runtime_extra = t192 ).
    CREATE OBJECT t185->zlnt_view_ownkeys_b0e8086400eb.
    t185->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    IF t185->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t185->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t194 ).
    ENDIF.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    IF t185->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t185->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t195 ).
    ENDIF.
    CREATE OBJECT t185->zlnt_json_ownkeys_70e5fd461788.
    t185->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t196) = |updated|.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    IF t185->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t185->zlnt_json_ownkeys_70e5fd461788->put( p0 = t196 p1 = t197 ).
    ENDIF.
    DATA(t198) = |runtime|.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    IF t185->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t185->zlnt_json_ownkeys_70e5fd461788->put( p0 = t198 p1 = t199 ).
    ENDIF.
    result = t185.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_ext_ind_ts_ext_ind( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1254_27ed380ff4ff.
  ENDMETHOD.
ENDCLASS.
