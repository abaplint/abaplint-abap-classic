* TS: src/objects/transaction.ts:4:1 Transaction
CLASS zcl_lnt_transaction DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_c5606a32.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_c_info RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_program_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_description REDEFINITION.
    METHODS get_texts_translations RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS prs_inst_src_objc_trns_ts_trns RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_transaction IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |TRAN|.
    result = t1.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_shape_c5606a32.
    CLEAR t1.
    me->parsed_xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 20 ).
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

  METHOD get_c_info.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_inst_src_objc_trns_ts_trns( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_c5606a32.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_c5606a32.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->cinfo.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_program_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_inst_src_objc_trns_ts_trns( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_c5606a32.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_c5606a32.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->program_name.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_inst_src_objc_trns_ts_trns( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_c5606a32.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_c5606a32.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->description.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_texts_translations.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_inst_src_objc_trns_ts_trns( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_c5606a32.
    DATA(t4) = me->parsed_xml.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t3.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t8.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zcl_lnt_shape_c5606a32.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->texts_translations.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD prs_inst_src_objc_trns_ts_trns.
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
    DATA t19 TYPE REF TO zcl_lnt_shape_c5606a32.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_shape_c5606a32.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t24 = t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t29.
      t28 = t29.
      t21 = NEW zcl_lnt_shape_c5606a32( i_description = t22 i_program_name = t24 i_cinfo = t26 i_texts_translations = t28 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t19 = t21.
    ELSE.
      DATA t30 TYPE REF TO zcl_lnt_shape_c5606a32.
      CLEAR t30.
      t19 = t30.
    ENDIF.
    me->parsed_xml = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA(t32) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t31 = t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = t31.
    IF t36 IS INITIAL.
      t35 = abap_true.
    ENDIF.
    IF t35 = abap_true.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      t34 = t37.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      DATA(t39) = t31.
      t38 = t39.
      t34 = t38.
    ENDIF.
    t33 = t34.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = t33.
    t46 = t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = VALUE abap_bool( ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = t46.
    CLEAR t50.
    IF t51 IS BOUND.
      t50 = t51.
    ENDIF.
    IF t50 IS NOT BOUND.
      t49 = abap_true.
    ELSE.
      t49 = xsdbool( t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t49 = abap_true.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      t48 = t52.
    ELSE.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      DATA(t55) = t46.
      t54 = t55.
      DATA(t56) = |abapGit|.
      t53 = t54->get( p0 = t56 ).
      t48 = t53.
    ENDIF.
    t45 = t48.
    t44 = t45.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = VALUE abap_bool( ).
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = t44.
    CLEAR t59.
    IF t60 IS BOUND.
      t59 = t60.
    ENDIF.
    IF t59 IS NOT BOUND.
      t58 = abap_true.
    ELSE.
      t58 = xsdbool( t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t58 = abap_true.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      t57 = t61.
    ELSE.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t63.
      DATA(t64) = t44.
      t63 = t64.
      DATA(t65) = |asx:abap|.
      t62 = t63->get( p0 = t65 ).
      t57 = t62.
    ENDIF.
    t43 = t57.
    t42 = t43.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = VALUE abap_bool( ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA(t69) = t42.
    CLEAR t68.
    IF t69 IS BOUND.
      t68 = t69.
    ENDIF.
    IF t68 IS NOT BOUND.
      t67 = abap_true.
    ELSE.
      t67 = xsdbool( t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t67 = abap_true.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      t66 = t70.
    ELSE.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      DATA(t73) = t42.
      t72 = t73.
      DATA(t74) = |asx:values|.
      t71 = t72->get( p0 = t74 ).
      t66 = t71.
    ENDIF.
    t41 = t66.
    t40 = t41.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = VALUE abap_bool( ).
    DATA(t78) = t40.
    IF t78 IS INITIAL.
      t77 = abap_true.
    ENDIF.
    IF t77 = abap_true.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      t76 = t79.
    ELSE.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      DATA(t81) = t40.
      t80 = t81.
      t76 = t80.
    ENDIF.
    t75 = t76.
    DATA(t82) = VALUE abap_bool( ).
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA(t84) = t75.
    t83 = t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    t85 = t86.
    DATA(t87) = VALUE abap_bool( ).
    DATA(t88) = t83.
    IF t88 IS INITIAL.
      t87 = abap_true.
    ENDIF.
    t82 = t87.
    IF t82 = abap_true.
      DATA t89 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t89.
      DATA(t90) = VALUE abap_bool( ).
      DATA(t91) = abap_false.
      t90 = t91.
      DATA(t92) = VALUE f( ).
      DATA(t93) = CONV f( 0 ).
      t92 = t93.
      DATA t94 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t94.
      DATA t95 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t95.
      t94 = t95.
      t89 = NEW zcl_lnt_iparse_result( i_updated = t90 i_runtime = t92 i_runtime_extra = t94 ).
      CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
      t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t96 ).
      ENDIF.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t97 ).
      ENDIF.
      CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
      t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t98) = |updated|.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
      ENDIF.
      DATA(t100) = |runtime|.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
      ENDIF.
      result = t89.
      RETURN.
    ENDIF.
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
    DATA(t107) = t75.
    t106 = t107.
    DATA(t108) = |TSTCT|.
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
      DATA(t115) = |TTEXT|.
      t113 = t114->get( p0 = t115 ).
      t109 = t113.
    ENDIF.
    t103 = t109.
    t102 = t103.
    DATA t116 TYPE REF TO zcl_lnt_shape_c5606a32.
    CLEAR t116.
    DATA(t117) = me->parsed_xml.
    t116 = t117.
    DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t118.
    DATA(t119) = VALUE abap_bool( ).
    DATA(t120) = t102.
    IF t120 IS INITIAL.
      t119 = abap_true.
    ENDIF.
    IF t119 = abap_true.
      DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t121.
      t118 = t121.
    ELSE.
      DATA(t122) = VALUE string( ).
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      DATA(t124) = t102.
      t123 = t124.
      t122 = t123->as_string( ).
      DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t125->has = abap_true.
      t125->value = t122.
      t118 = t125.
    ENDIF.
    t116->description = t118.
    DELETE t116->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t126 ).
    ENDIF.
    DATA(t127) = |description|.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
    ENDIF.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA(t134) = t75.
    t133 = t134.
    DATA(t135) = |TSTC|.
    t132 = t133->get( p0 = t135 ).
    t131 = t132.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA(t137) = VALUE abap_bool( ).
    DATA(t138) = t131.
    IF t138 IS NOT BOUND.
      t137 = abap_true.
    ELSE.
      t137 = xsdbool( t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t137 = abap_true.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      t136 = t139.
    ELSE.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      DATA(t141) = t131.
      DATA(t142) = |PGMNA|.
      t140 = t141->get( p0 = t142 ).
      t136 = t140.
    ENDIF.
    t130 = t136.
    t129 = t130.
    DATA t143 TYPE REF TO zcl_lnt_shape_c5606a32.
    CLEAR t143.
    DATA(t144) = me->parsed_xml.
    t143 = t144.
    DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t145.
    DATA(t146) = VALUE abap_bool( ).
    DATA(t147) = t129.
    IF t147 IS INITIAL.
      t146 = abap_true.
    ENDIF.
    IF t146 = abap_true.
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t148.
      t145 = t148.
    ELSE.
      DATA(t149) = VALUE string( ).
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      DATA(t151) = t129.
      t150 = t151.
      t149 = t150->as_string( ).
      DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t152->has = abap_true.
      t152->value = t149.
      t145 = t152.
    ENDIF.
    t143->program_name = t145.
    DELETE t143->zlnt_record_delet_0597644d88b4 WHERE table_line = `programName`.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `programName` p1 = t153 ).
    ENDIF.
    DATA(t154) = |programName|.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
    ENDIF.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA(t161) = t75.
    t160 = t161.
    DATA(t162) = |TSTC|.
    t159 = t160->get( p0 = t162 ).
    t158 = t159.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA(t164) = VALUE abap_bool( ).
    DATA(t165) = t158.
    IF t165 IS NOT BOUND.
      t164 = abap_true.
    ELSE.
      t164 = xsdbool( t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t164 = abap_true.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      t163 = t166.
    ELSE.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      DATA(t168) = t158.
      DATA(t169) = |CINFO|.
      t167 = t168->get( p0 = t169 ).
      t163 = t167.
    ENDIF.
    t157 = t163.
    t156 = t157.
    DATA t170 TYPE REF TO zcl_lnt_shape_c5606a32.
    CLEAR t170.
    DATA(t171) = me->parsed_xml.
    t170 = t171.
    DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t172.
    DATA(t173) = VALUE abap_bool( ).
    DATA(t174) = t156.
    IF t174 IS INITIAL.
      t173 = abap_true.
    ENDIF.
    IF t173 = abap_true.
      DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t175.
      t172 = t175.
    ELSE.
      DATA(t176) = VALUE string( ).
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      DATA(t178) = t156.
      t177 = t178.
      t176 = t177->as_string( ).
      DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t179->has = abap_true.
      t179->value = t176.
      t172 = t179.
    ENDIF.
    t170->cinfo = t172.
    DELETE t170->zlnt_record_delet_0597644d88b4 WHERE table_line = `cinfo`.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    IF t170->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cinfo` p1 = t180 ).
    ENDIF.
    DATA(t181) = |cinfo|.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
    ENDIF.
    DATA t183 TYPE REF TO zcl_lnt_shape_c5606a32.
    CLEAR t183.
    DATA(t184) = me->parsed_xml.
    t183 = t184.
    DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t185.
    DATA(t186) = abap_true.
    IF t186 = abap_true.
      DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t187.
      CREATE OBJECT t187.
      t185 = t187.
    ELSE.
      DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t188.
      t185 = t188.
    ENDIF.
    t183->texts_translations = t185.
    DELETE t183->zlnt_record_delet_0597644d88b4 WHERE table_line = `textsTranslations`.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    IF t183->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t183->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textsTranslations` p1 = t189 ).
    ENDIF.
    DATA(t190) = |textsTranslations|.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    IF t183->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t183->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
    ENDIF.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = t75.
    t197 = t198.
    DATA(t199) = |I18N_TPOOL|.
    t196 = t197->get( p0 = t199 ).
    t195 = t196.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA(t201) = VALUE abap_bool( ).
    DATA(t202) = t195.
    IF t202 IS NOT BOUND.
      t201 = abap_true.
    ELSE.
      t201 = xsdbool( t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t201 = abap_true.
      DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t203.
      t200 = t203.
    ELSE.
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t204.
      DATA(t205) = t195.
      DATA(t206) = |TSTCT|.
      t204 = t205->get( p0 = t206 ).
      t200 = t204.
    ENDIF.
    t194 = t200.
    CLEAR t193.
    IF t194 IS BOUND.
      t193 = t194.
    ENDIF.
    t192 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t193 ).
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA t208 TYPE REF TO object.
    CLEAR t208.
    DATA(t209) = VALUE i( ).
    DO.
      t192->load( ).
      IF t209 >= lines( t192->items ).
        EXIT.
      ENDIF.
      CLEAR t208.
      READ TABLE t192->items INDEX t209 + 1 INTO t208.
      t209 = t209 + 1.
      DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t210.
      CLEAR t207.
      IF t208 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t210 ?= t208.
        t207 = t210.
      ELSE.
        IF t208 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t211 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t211.
          t211 ?= t208.
          CLEAR t207.
          IF t211 IS BOUND.
            CREATE OBJECT t207.
            t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t207->cval = t211.
          ENDIF.
        ELSE.
          CLEAR t207.
          IF t208 IS BOUND.
            DATA t212 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t212.
            DATA t213 TYPE REF TO object.
            CLEAR t213.
            CLEAR t212.
            t213 = t208.
            TRY.
                t207 ?= t213.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t207 IS NOT BOUND.
              TRY.
                  t212 ?= t208.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t212 IS BOUND.
                t207 = t212->source( ).
              ENDIF.
              IF t207 IS NOT BOUND.
                CREATE OBJECT t207.
                t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t207->oval = t208.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t214.
      DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t215.
      DATA t216 TYPE REF TO zcl_lnt_shape_c5606a32.
      CLEAR t216.
      DATA(t217) = me->parsed_xml.
      t216 = t217.
      t215 = t216->texts_translations.
      t214 = t215.
      DATA t218 TYPE REF TO zcl_lnt_dmn_vl_trnsltn.
      CLEAR t218.
      DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t219.
      DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t220.
      DATA(t221) = t207.
      DATA(t222) = |SPRSL|.
      t220 = t221->get( p0 = t222 ).
      t219 = t220.
      DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t223.
      DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t224.
      DATA(t225) = t207.
      DATA(t226) = |TTEXT|.
      t224 = t225->get( p0 = t226 ).
      t223 = t224.
      DATA t227 TYPE REF TO zcl_lnt_dmn_vl_trnsltn.
      CLEAR t227.
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t228.
      DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t229.
      DATA(t230) = VALUE abap_bool( ).
      DATA(t231) = t219.
      IF t231 IS INITIAL.
        t230 = abap_true.
      ENDIF.
      IF t230 = abap_true.
        DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t232.
        t229 = t232.
      ELSE.
        DATA(t233) = VALUE string( ).
        DATA(t234) = t219.
        t233 = t234->as_string( ).
        DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t235->has = abap_true.
        t235->value = t233.
        t229 = t235.
      ENDIF.
      t228 = t229.
      DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t236.
      DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t237.
      DATA(t238) = VALUE abap_bool( ).
      DATA(t239) = t223.
      IF t239 IS INITIAL.
        t238 = abap_true.
      ENDIF.
      IF t238 = abap_true.
        DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t240.
        t237 = t240.
      ELSE.
        DATA(t241) = VALUE string( ).
        DATA(t242) = t223.
        t241 = t242->as_string( ).
        DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t243->has = abap_true.
        t243->value = t241.
        t237 = t243.
      ENDIF.
      t236 = t237.
      t227 = NEW zcl_lnt_dmn_vl_trnsltn( i_language = t228 i_description = t236 ).
      CREATE OBJECT t227->zlnt_view_ownkeys_b0e8086400eb.
      t227->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t244.
      IF t227->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t227->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t244 ).
      ENDIF.
      DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t245.
      IF t227->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t227->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t245 ).
      ENDIF.
      CREATE OBJECT t227->zlnt_json_ownkeys_70e5fd461788.
      t227->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t246) = |language|.
      DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t247.
      IF t227->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = t246 p1 = t247 ).
      ENDIF.
      DATA(t248) = |description|.
      DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t249.
      IF t227->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = t248 p1 = t249 ).
      ENDIF.
      t218 = t227.
      t214->load( ).
      APPEND t218 TO t214->items.
      t214->save( ).
    ENDDO.
    DATA(t250) = VALUE f( ).
    DATA(t251) = VALUE f( ).
    DATA(t252) = 0.
    t251 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t250 = t251.
    DATA t253 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t253.
    DATA(t254) = VALUE abap_bool( ).
    DATA(t255) = abap_true.
    t254 = t255.
    DATA(t256) = VALUE f( ).
    DATA(t257) = VALUE f( ).
    DATA(t258) = t250.
    DATA(t259) = t16.
    t257 = t258 - t259.
    t256 = t257.
    DATA t260 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t260.
    DATA t261 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t261.
    t260 = t261.
    t253 = NEW zcl_lnt_iparse_result( i_updated = t254 i_runtime = t256 i_runtime_extra = t260 ).
    CREATE OBJECT t253->zlnt_view_ownkeys_b0e8086400eb.
    t253->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    IF t253->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t253->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t262 ).
    ENDIF.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    IF t253->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t253->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t263 ).
    ENDIF.
    CREATE OBJECT t253->zlnt_json_ownkeys_70e5fd461788.
    t253->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t264) = |updated|.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    IF t253->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t253->zlnt_json_ownkeys_70e5fd461788->put( p0 = t264 p1 = t265 ).
    ENDIF.
    DATA(t266) = |runtime|.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    IF t253->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t253->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
    ENDIF.
    result = t253.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_inst_src_objc_trns_ts_trns( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1358_856ae5ca70bf.
  ENDMETHOD.
ENDCLASS.
