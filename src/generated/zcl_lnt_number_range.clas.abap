* TS: src/objects/number_range.ts:3:1 NumberRange
CLASS zcl_lnt_number_range DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_f96fb7aa.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_domain RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_percentage RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS set_dirty REDEFINITION.
    METHODS pr_in_sr_ob_nmb_rng_ts_nmb_rng RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS get_description REDEFINITION.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_number_range IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |NROB|.
    result = t1.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 10 ).
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

  METHOD get_domain.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_f96fb7aa.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_f96fb7aa.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->domain.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_percentage.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    DATA(t4) = me->parsed_xml.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t3.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t8.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t10 TYPE REF TO zcl_lnt_shape_f96fb7aa.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->percentage.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    CLEAR t1.
    me->parsed_xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD pr_in_sr_ob_nmb_rng_ts_nmb_rng.
    DATA t1 TYPE abap_bool.
    DATA(t2) = me->parsed_xml.
    t1 = xsdbool( t2 IS BOUND ).
    IF t1 = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_iparse_result.
      DATA t4 TYPE abap_bool.
      DATA(t5) = abap_false.
      t4 = t5.
      DATA t6 TYPE f.
      DATA(t7) = CONV f( 0 ).
      t6 = t7.
      DATA t8 TYPE REF TO zcl_lnt_shape_8fc6df03.
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
    DATA t16 TYPE f.
    DATA t17 TYPE f.
    DATA(t18) = 0.
    t17 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t16 = t17.
    DATA t19 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_shape_f96fb7aa.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t24 = t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t27 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t27.
      t26 = t27.
      t21 = NEW zcl_lnt_shape_f96fb7aa( i_description = t22 i_domain = t24 i_percentage = t26 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t19 = t21.
    ELSE.
      DATA t28 TYPE REF TO zcl_lnt_shape_f96fb7aa.
      CLEAR t28.
      t19 = t28.
    ENDIF.
    me->parsed_xml = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t29.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    IF t33 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      t32 = t35.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t37) = t29.
      t36 = t37.
      t32 = t36.
    ENDIF.
    t31 = t32.
    DATA(t38) = VALUE abap_bool( ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = t31.
    t39 = t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    t41 = t42.
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = t39.
    IF t44 IS INITIAL.
      t43 = abap_true.
    ENDIF.
    t38 = t43.
    IF t38 = abap_true.
      DATA t45 TYPE REF TO zcl_lnt_iparse_result.
      DATA t46 TYPE abap_bool.
      DATA(t47) = abap_false.
      t46 = t47.
      DATA t48 TYPE f.
      DATA(t49) = CONV f( 0 ).
      t48 = t49.
      DATA t50 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t51 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t51.
      t50 = t51.
      t45 = NEW zcl_lnt_iparse_result( i_updated = t46 i_runtime = t48 i_runtime_extra = t50 ).
      CREATE OBJECT t45->zlnt_view_ownkeys_b0e8086400eb.
      t45->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t52 ).
      ENDIF.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t53 ).
      ENDIF.
      CREATE OBJECT t45->zlnt_json_ownkeys_70e5fd461788.
      t45->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t54) = |updated|.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
      ENDIF.
      DATA(t56) = |runtime|.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
      ENDIF.
      result = t45.
      RETURN.
    ENDIF.
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
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = t31.
    t66 = t67.
    DATA(t68) = |abapGit|.
    t65 = t66->get( p0 = t68 ).
    t64 = t65.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = VALUE abap_bool( ).
    DATA(t71) = t64.
    IF t71 IS NOT BOUND.
      t70 = abap_true.
    ELSE.
      t70 = xsdbool( t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t70 = abap_true.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      t69 = t72.
    ELSE.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t74) = t64.
      DATA(t75) = |asx:abap|.
      t73 = t74->get( p0 = t75 ).
      t69 = t73.
    ENDIF.
    t63 = t69.
    t62 = t63.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = VALUE abap_bool( ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = t62.
    CLEAR t78.
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
      DATA(t83) = t62.
      t82 = t83.
      DATA(t84) = |asx:values|.
      t81 = t82->get( p0 = t84 ).
      t76 = t81.
    ENDIF.
    t61 = t76.
    t60 = t61.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = VALUE abap_bool( ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = t60.
    CLEAR t87.
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
      DATA(t92) = t60.
      t91 = t92.
      DATA(t93) = |TEXT|.
      t90 = t91->get( p0 = t93 ).
      t85 = t90.
    ENDIF.
    t59 = t85.
    t58 = t59.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = VALUE abap_bool( ).
    DATA(t97) = t58.
    IF t97 IS INITIAL.
      t96 = abap_true.
    ENDIF.
    IF t96 = abap_true.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      t95 = t98.
    ELSE.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t100) = t58.
      t99 = t100.
      t95 = t99.
    ENDIF.
    t94 = t95.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t104) = t94.
    t103 = t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = VALUE abap_bool( ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = t103.
    CLEAR t107.
    IF t108 IS BOUND.
      t107 = t108.
    ENDIF.
    IF t107 IS NOT BOUND.
      t106 = abap_true.
    ELSE.
      t106 = xsdbool( t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t106 = abap_true.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      t105 = t109.
    ELSE.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t112) = t103.
      t111 = t112.
      DATA(t113) = |TXT|.
      t110 = t111->get( p0 = t113 ).
      t105 = t110.
    ENDIF.
    t102 = t105.
    t101 = t102.
    DATA t114 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    DATA(t115) = me->parsed_xml.
    t114 = t115.
    DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t116.
    DATA(t117) = VALUE abap_bool( ).
    DATA(t118) = t101.
    IF t118 IS INITIAL.
      t117 = abap_true.
    ENDIF.
    IF t117 = abap_true.
      DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t119.
      t116 = t119.
    ELSE.
      DATA t120 TYPE string.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t122) = t101.
      t121 = t122.
      t120 = t121->as_string( ).
      DATA(t123) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t123->has = abap_true.
      t123->value = t120.
      t116 = t123.
    ENDIF.
    t114->description = t116.
    DELETE t114->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t124 ).
    ENDIF.
    DATA(t125) = |description|.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t136) = t31.
    t135 = t136.
    DATA(t137) = |abapGit|.
    t134 = t135->get( p0 = t137 ).
    t133 = t134.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA(t139) = VALUE abap_bool( ).
    DATA(t140) = t133.
    IF t140 IS NOT BOUND.
      t139 = abap_true.
    ELSE.
      t139 = xsdbool( t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t139 = abap_true.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t141.
      t138 = t141.
    ELSE.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t143) = t133.
      DATA(t144) = |asx:abap|.
      t142 = t143->get( p0 = t144 ).
      t138 = t142.
    ENDIF.
    t132 = t138.
    t131 = t132.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA(t146) = VALUE abap_bool( ).
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA(t148) = t131.
    CLEAR t147.
    IF t148 IS BOUND.
      t147 = t148.
    ENDIF.
    IF t147 IS NOT BOUND.
      t146 = abap_true.
    ELSE.
      t146 = xsdbool( t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t146 = abap_true.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      t145 = t149.
    ELSE.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t152) = t131.
      t151 = t152.
      DATA(t153) = |asx:values|.
      t150 = t151->get( p0 = t153 ).
      t145 = t150.
    ENDIF.
    t130 = t145.
    t129 = t130.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA(t155) = VALUE abap_bool( ).
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA(t157) = t129.
    CLEAR t156.
    IF t157 IS BOUND.
      t156 = t157.
    ENDIF.
    IF t156 IS NOT BOUND.
      t155 = abap_true.
    ELSE.
      t155 = xsdbool( t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t155 = abap_true.
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t158.
      t154 = t158.
    ELSE.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t161) = t129.
      t160 = t161.
      DATA(t162) = |ATTRIBUTES|.
      t159 = t160->get( p0 = t162 ).
      t154 = t159.
    ENDIF.
    t128 = t154.
    t127 = t128.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA(t165) = VALUE abap_bool( ).
    DATA(t166) = t127.
    IF t166 IS INITIAL.
      t165 = abap_true.
    ENDIF.
    IF t165 = abap_true.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      t164 = t167.
    ELSE.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t169) = t127.
      t168 = t169.
      t164 = t168.
    ENDIF.
    t163 = t164.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t173) = t163.
    t172 = t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = VALUE abap_bool( ).
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA(t177) = t172.
    CLEAR t176.
    IF t177 IS BOUND.
      t176 = t177.
    ENDIF.
    IF t176 IS NOT BOUND.
      t175 = abap_true.
    ELSE.
      t175 = xsdbool( t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t175 = abap_true.
      DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t178.
      t174 = t178.
    ELSE.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t181) = t172.
      t180 = t181.
      DATA(t182) = |DOMLEN|.
      t179 = t180->get( p0 = t182 ).
      t174 = t179.
    ENDIF.
    t171 = t174.
    t170 = t171.
    DATA t183 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    DATA(t184) = me->parsed_xml.
    t183 = t184.
    DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t185.
    DATA(t186) = VALUE abap_bool( ).
    DATA(t187) = t170.
    IF t187 IS INITIAL.
      t186 = abap_true.
    ENDIF.
    IF t186 = abap_true.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t188.
      t185 = t188.
    ELSE.
      DATA t189 TYPE string.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t191) = t170.
      t190 = t191.
      t189 = t190->as_string( ).
      DATA(t192) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t192->has = abap_true.
      t192->value = t189.
      t185 = t192.
    ENDIF.
    t183->domain = t185.
    DELETE t183->zlnt_record_delet_0597644d88b4 WHERE table_line = `domain`.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    IF t183->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t183->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `domain` p1 = t193 ).
    ENDIF.
    DATA(t194) = |domain|.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    IF t183->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t183->zlnt_json_ownkeys_70e5fd461788->put( p0 = t194 p1 = t195 ).
    ENDIF.
    DATA t196 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    DATA(t197) = me->parsed_xml.
    t196 = t197.
    DATA t198 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t198.
    DATA(t199) = abap_true.
    IF t199 = abap_true.
      DATA t200 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t200.
      DATA(t201) = VALUE string( ).
      DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t202.
      DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t203.
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t205) = t163.
      t204 = t205.
      DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t206.
      DATA(t207) = VALUE abap_bool( ).
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t208.
      DATA(t209) = t204.
      CLEAR t208.
      IF t209 IS BOUND.
        t208 = t209.
      ENDIF.
      IF t208 IS NOT BOUND.
        t207 = abap_true.
      ELSE.
        t207 = xsdbool( t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t207 = abap_true.
        DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t210.
        t206 = t210.
      ELSE.
        DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t213) = t204.
        t212 = t213.
        DATA(t214) = |PERCENTAGE|.
        t211 = t212->get( p0 = t214 ).
        t206 = t211.
      ENDIF.
      t203 = t206.
      t202 = t203.
      DATA(t215) = VALUE string( ).
      DATA t216 TYPE abap_bool.
      DATA(t217) = t202.
      t216 = xsdbool( t217 IS BOUND ).
      IF t216 = abap_true.
        DATA t218 TYPE string.
        DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t220) = t202.
        t219 = t220.
        t218 = t219->as_string( ).
        t215 = t218.
      ELSE.
        DATA(t221) = ||.
        t215 = t221.
      ENDIF.
      t201 = t215.
      t200 = zlnt_runtime_stri_248d3505915c=>float_optional( t201 ).
      t198 = t200.
    ELSE.
      DATA t222 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t222.
      t198 = t222.
    ENDIF.
    t196->percentage = t198.
    DELETE t196->zlnt_record_delet_0597644d88b4 WHERE table_line = `percentage`.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `percentage` p1 = t223 ).
    ENDIF.
    DATA(t224) = |percentage|.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t224 p1 = t225 ).
    ENDIF.
    DATA t226 TYPE f.
    DATA t227 TYPE f.
    DATA(t228) = 0.
    t227 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t226 = t227.
    DATA t229 TYPE REF TO zcl_lnt_iparse_result.
    DATA t230 TYPE abap_bool.
    DATA(t231) = abap_true.
    t230 = t231.
    DATA t232 TYPE f.
    DATA t233 TYPE f.
    DATA(t234) = t226.
    DATA(t235) = t16.
    t233 = t234 - t235.
    t232 = t233.
    DATA t236 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA t237 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t237.
    t236 = t237.
    t229 = NEW zcl_lnt_iparse_result( i_updated = t230 i_runtime = t232 i_runtime_extra = t236 ).
    CREATE OBJECT t229->zlnt_view_ownkeys_b0e8086400eb.
    t229->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t238 ).
    ENDIF.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t239 ).
    ENDIF.
    CREATE OBJECT t229->zlnt_json_ownkeys_70e5fd461788.
    t229->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t240) = |updated|.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t240 p1 = t241 ).
    ENDIF.
    DATA(t242) = |runtime|.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t242 p1 = t243 ).
    ENDIF.
    result = t229.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_f96fb7aa.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_f96fb7aa.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->description.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1313_e0941813f606.
  ENDMETHOD.
ENDCLASS.
