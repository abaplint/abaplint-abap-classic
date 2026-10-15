* TS: src/objects/enhancement_implementation.ts:3:1 EnhancementImplementation
CLASS zcl_lnt_enhncmnt_implmnttn DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_55554241.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_class_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_description REDEFINITION.
    METHODS pr_in_sr_ob_enh_imp_ts_enh_imp RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_enhncmnt_implmnttn IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |ENHO|.
    result = t1.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_shape_55554241.
    CLEAR t1.
    me->parsed_xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 30 ).
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

  METHOD get_class_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_enh_imp_ts_enh_imp( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_55554241.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_55554241.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->class_name.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_enh_imp_ts_enh_imp( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_55554241.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_55554241.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->description.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD pr_in_sr_ob_enh_imp_ts_enh_imp.
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
    DATA t19 TYPE REF TO zcl_lnt_shape_55554241.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_shape_55554241.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t24 = t25.
      t21 = NEW zcl_lnt_shape_55554241( i_class_name = t22 i_description = t24 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t19 = t21.
    ELSE.
      DATA t26 TYPE REF TO zcl_lnt_shape_55554241.
      CLEAR t26.
      t19 = t26.
    ENDIF.
    me->parsed_xml = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      DATA(t35) = t27.
      t34 = t35.
      t30 = t34.
    ENDIF.
    t29 = t30.
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE abap_bool( ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = t29.
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
    t37 = t38.
    IF t38 = abap_false.
      DATA(t45) = VALUE abap_bool( ).
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t49) = t29.
      t48 = t49.
      DATA(t50) = |abapGit|.
      t47 = t48->get( p0 = t50 ).
      t46 = t47.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t79) = t58.
        t78 = t79.
        DATA(t80) = |asx:values|.
        t77 = t78->get( p0 = t80 ).
        t72 = t77.
      ENDIF.
      t57 = t72.
      t56 = t57.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      DATA t86 TYPE abap_bool.
      DATA(t87) = abap_false.
      t86 = t87.
      DATA t88 TYPE f.
      DATA(t89) = CONV f( 0 ).
      t88 = t89.
      DATA t90 TYPE REF TO zcl_lnt_shape_8fc6df03.
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
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t132) = t100.
      t131 = t132.
      DATA(t133) = |CLASS|.
      t130 = t131->get( p0 = t133 ).
      t125 = t130.
    ENDIF.
    t99 = t125.
    t98 = t99.
    DATA t134 TYPE REF TO zcl_lnt_shape_55554241.
    DATA(t135) = me->parsed_xml.
    t134 = t135.
    DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t136.
    DATA(t137) = VALUE abap_bool( ).
    DATA(t138) = t98.
    IF t138 IS INITIAL.
      t137 = abap_true.
    ENDIF.
    IF t137 = abap_true.
      DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t139.
      t136 = t139.
    ELSE.
      DATA t140 TYPE string.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t142) = t98.
      t141 = t142.
      t140 = t141->as_string( ).
      DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t143->has = abap_true.
      t143->value = t140.
      t136 = t143.
    ENDIF.
    t134->class_name = t136.
    DELETE t134->zlnt_record_delet_0597644d88b4 WHERE table_line = `className`.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    IF t134->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t134->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `className` p1 = t144 ).
    ENDIF.
    DATA(t145) = |className|.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    IF t134->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t134->zlnt_json_ownkeys_70e5fd461788->put( p0 = t145 p1 = t146 ).
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t156) = t29.
    t155 = t156.
    DATA(t157) = |abapGit|.
    t154 = t155->get( p0 = t157 ).
    t153 = t154.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA(t159) = VALUE abap_bool( ).
    DATA(t160) = t153.
    IF t160 IS NOT BOUND.
      t159 = abap_true.
    ELSE.
      t159 = xsdbool( t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t159 = abap_true.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t161.
      t158 = t161.
    ELSE.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t163) = t153.
      DATA(t164) = |asx:abap|.
      t162 = t163->get( p0 = t164 ).
      t158 = t162.
    ENDIF.
    t152 = t158.
    t151 = t152.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA(t166) = VALUE abap_bool( ).
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA(t168) = t151.
    CLEAR t167.
    IF t168 IS BOUND.
      t167 = t168.
    ENDIF.
    IF t167 IS NOT BOUND.
      t166 = abap_true.
    ELSE.
      t166 = xsdbool( t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t166 = abap_true.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      t165 = t169.
    ELSE.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t172) = t151.
      t171 = t172.
      DATA(t173) = |asx:values|.
      t170 = t171->get( p0 = t173 ).
      t165 = t170.
    ENDIF.
    t150 = t165.
    t149 = t150.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = VALUE abap_bool( ).
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA(t177) = t149.
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
      DATA(t181) = t149.
      t180 = t181.
      DATA(t182) = |SHORTTEXT|.
      t179 = t180->get( p0 = t182 ).
      t174 = t179.
    ENDIF.
    t148 = t174.
    t147 = t148.
    DATA t183 TYPE REF TO zcl_lnt_shape_55554241.
    DATA(t184) = me->parsed_xml.
    t183 = t184.
    DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t185.
    DATA(t186) = VALUE abap_bool( ).
    DATA(t187) = t147.
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
      DATA(t191) = t147.
      t190 = t191.
      t189 = t190->as_string( ).
      DATA(t192) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t192->has = abap_true.
      t192->value = t189.
      t185 = t192.
    ENDIF.
    t183->description = t185.
    DELETE t183->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    IF t183->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t183->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t193 ).
    ENDIF.
    DATA(t194) = |description|.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    IF t183->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t183->zlnt_json_ownkeys_70e5fd461788->put( p0 = t194 p1 = t195 ).
    ENDIF.
    DATA t196 TYPE f.
    DATA t197 TYPE f.
    DATA(t198) = 0.
    t197 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t196 = t197.
    DATA t199 TYPE REF TO zcl_lnt_iparse_result.
    DATA t200 TYPE abap_bool.
    DATA(t201) = abap_true.
    t200 = t201.
    DATA t202 TYPE f.
    DATA t203 TYPE f.
    DATA(t204) = t196.
    DATA(t205) = t16.
    t203 = t204 - t205.
    t202 = t203.
    DATA t206 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA t207 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t207.
    t206 = t207.
    t199 = NEW zcl_lnt_iparse_result( i_updated = t200 i_runtime = t202 i_runtime_extra = t206 ).
    CREATE OBJECT t199->zlnt_view_ownkeys_b0e8086400eb.
    t199->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    IF t199->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t208 ).
    ENDIF.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    IF t199->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t209 ).
    ENDIF.
    CREATE OBJECT t199->zlnt_json_ownkeys_70e5fd461788.
    t199->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t210) = |updated|.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = t210 p1 = t211 ).
    ENDIF.
    DATA(t212) = |runtime|.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = t212 p1 = t213 ).
    ENDIF.
    result = t199.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_enh_imp_ts_enh_imp( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1248_bbee93bdc825.
  ENDMETHOD.
ENDCLASS.
