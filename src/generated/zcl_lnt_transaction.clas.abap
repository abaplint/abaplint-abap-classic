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
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |TRAN|.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 20 ).
    t2 = t3.
    DATA t4 TYPE abap_bool.
    t4 = abap_true.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = t2 i_allow_namespace = t4 i_custom_regex = t6 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t9 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t10) = |maxLength|.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t10 p1 = t11 ).
    DATA(t12) = |allowNamespace|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_c_info.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_inst_src_objc_trns_ts_trns( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_c5606a32.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_c5606a32.
      t10 = t3.
      t9 = t10->cinfo.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_program_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_inst_src_objc_trns_ts_trns( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_c5606a32.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_c5606a32.
      t10 = t3.
      t9 = t10->program_name.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_inst_src_objc_trns_ts_trns( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_c5606a32.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_c5606a32.
      t10 = t3.
      t9 = t10->description.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_texts_translations.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_inst_src_objc_trns_ts_trns( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_c5606a32.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zcl_lnt_shape_c5606a32.
      t10 = t3.
      t9 = t10->texts_translations.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD prs_inst_src_objc_trns_ts_trns.
    DATA(t1) = VALUE abap_bool( ).
    t1 = xsdbool( me->parsed_xml IS BOUND ).
    IF t1 = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_iparse_result.
      DATA(t4) = VALUE abap_bool( ).
      t4 = abap_false.
      DATA(t6) = VALUE f( ).
      DATA(t7) = CONV f( 0 ).
      t6 = t7.
      DATA t8 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t3 = NEW zcl_lnt_iparse_result( i_updated = t4 i_runtime = t6 i_runtime_extra = t8 ).
      CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
      t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t10 ).
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t11 ).
      ENDIF.
      CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
      t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t12) = |updated|.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
      DATA(t14) = |runtime|.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    DATA t21 TYPE REF TO zcl_lnt_shape_c5606a32.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t21 = NEW zcl_lnt_shape_c5606a32( i_description = t22 i_program_name = t24 i_cinfo = t26 i_texts_translations = t28 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    me->parsed_xml = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t31 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = xsdbool( t31 IS INITIAL ).
    IF t35 = abap_true.
    ELSE.
      t34 = t31.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t46 = t34.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t49) = VALUE abap_bool( ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46 IS BOUND.
      t50 = t46.
    ENDIF.
    IF t50 IS NOT BOUND.
      t49 = abap_true.
    ELSE.
      t49 = xsdbool( t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t49 = abap_true.
    ELSE.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t54 = t46.
      DATA(t56) = |abapGit|.
      t53 = t54->get( p0 = t56 ).
      t48 = t53.
    ENDIF.
    t44 = t48.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t58) = VALUE abap_bool( ).
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44 IS BOUND.
      t59 = t44.
    ENDIF.
    IF t59 IS NOT BOUND.
      t58 = abap_true.
    ELSE.
      t58 = xsdbool( t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t58 = abap_true.
    ELSE.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t63 = t44.
      DATA(t65) = |asx:abap|.
      t62 = t63->get( p0 = t65 ).
      t57 = t62.
    ENDIF.
    t42 = t57.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = VALUE abap_bool( ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42 IS BOUND.
      t68 = t42.
    ENDIF.
    IF t68 IS NOT BOUND.
      t67 = abap_true.
    ELSE.
      t67 = xsdbool( t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t67 = abap_true.
    ELSE.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t72 = t42.
      DATA(t74) = |asx:values|.
      t71 = t72->get( p0 = t74 ).
      t66 = t71.
    ENDIF.
    t40 = t66.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t77) = xsdbool( t40 IS INITIAL ).
    IF t77 = abap_true.
    ELSE.
      t76 = t40.
    ENDIF.
    t75 = t76.
    DATA(t82) = VALUE abap_bool( ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t82 = xsdbool( t75 IS INITIAL ).
    IF t82 = abap_true.
      DATA t89 TYPE REF TO zcl_lnt_iparse_result.
      DATA(t90) = VALUE abap_bool( ).
      t90 = abap_false.
      DATA(t92) = VALUE f( ).
      DATA(t93) = CONV f( 0 ).
      t92 = t93.
      DATA t94 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t89 = NEW zcl_lnt_iparse_result( i_updated = t90 i_runtime = t92 i_runtime_extra = t94 ).
      CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
      t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t96 ).
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t97 ).
      ENDIF.
      CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
      t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t98) = |updated|.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
      DATA(t100) = |runtime|.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
      ENDIF.
      result = t89.
      RETURN.
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t106 = t75.
    DATA(t108) = |TSTCT|.
    t105 = t106->get( p0 = t108 ).
    t104 = t105.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = VALUE abap_bool( ).
    IF t104 IS NOT BOUND.
      t110 = abap_true.
    ELSE.
      t110 = xsdbool( t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t110 = abap_true.
    ELSE.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t115) = |TTEXT|.
      t113 = t104->get( p0 = t115 ).
      t109 = t113.
    ENDIF.
    t102 = t109.
    DATA t116 TYPE REF TO zcl_lnt_shape_c5606a32.
    t116 = me->parsed_xml.
    DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t119) = xsdbool( t102 IS INITIAL ).
    IF t119 = abap_true.
    ELSE.
      DATA(t122) = VALUE string( ).
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t123 = t102.
      t122 = t123->as_string( ).
      DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t125->has = abap_true.
      t125->value = t122.
      t118 = t125.
    ENDIF.
    t116->description = t118.
    DELETE t116->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t126 ).
    ENDIF.
    DATA(t127) = |description|.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
    ENDIF.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t133 = t75.
    DATA(t135) = |TSTC|.
    t132 = t133->get( p0 = t135 ).
    t131 = t132.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t137) = VALUE abap_bool( ).
    IF t131 IS NOT BOUND.
      t137 = abap_true.
    ELSE.
      t137 = xsdbool( t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t137 = abap_true.
    ELSE.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t142) = |PGMNA|.
      t140 = t131->get( p0 = t142 ).
      t136 = t140.
    ENDIF.
    t129 = t136.
    DATA t143 TYPE REF TO zcl_lnt_shape_c5606a32.
    t143 = me->parsed_xml.
    DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t146) = xsdbool( t129 IS INITIAL ).
    IF t146 = abap_true.
    ELSE.
      DATA(t149) = VALUE string( ).
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t150 = t129.
      t149 = t150->as_string( ).
      DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t152->has = abap_true.
      t152->value = t149.
      t145 = t152.
    ENDIF.
    t143->program_name = t145.
    DELETE t143->zlnt_record_delet_0597644d88b4 WHERE table_line = `programName`.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `programName` p1 = t153 ).
    ENDIF.
    DATA(t154) = |programName|.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
    ENDIF.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t160 = t75.
    DATA(t162) = |TSTC|.
    t159 = t160->get( p0 = t162 ).
    t158 = t159.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t164) = VALUE abap_bool( ).
    IF t158 IS NOT BOUND.
      t164 = abap_true.
    ELSE.
      t164 = xsdbool( t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t164 = abap_true.
    ELSE.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t169) = |CINFO|.
      t167 = t158->get( p0 = t169 ).
      t163 = t167.
    ENDIF.
    t156 = t163.
    DATA t170 TYPE REF TO zcl_lnt_shape_c5606a32.
    t170 = me->parsed_xml.
    DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t173) = xsdbool( t156 IS INITIAL ).
    IF t173 = abap_true.
    ELSE.
      DATA(t176) = VALUE string( ).
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t177 = t156.
      t176 = t177->as_string( ).
      DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t179->has = abap_true.
      t179->value = t176.
      t172 = t179.
    ENDIF.
    t170->cinfo = t172.
    DELETE t170->zlnt_record_delet_0597644d88b4 WHERE table_line = `cinfo`.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t170->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cinfo` p1 = t180 ).
    ENDIF.
    DATA(t181) = |cinfo|.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
    ENDIF.
    DATA t183 TYPE REF TO zcl_lnt_shape_c5606a32.
    t183 = me->parsed_xml.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t187.
    t183->texts_translations = t187.
    DELETE t183->zlnt_record_delet_0597644d88b4 WHERE table_line = `textsTranslations`.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t183->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t183->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textsTranslations` p1 = t189 ).
    ENDIF.
    DATA(t190) = |textsTranslations|.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t183->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t183->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
    ENDIF.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t197 = t75.
    DATA(t199) = |I18N_TPOOL|.
    t196 = t197->get( p0 = t199 ).
    t195 = t196.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t201) = VALUE abap_bool( ).
    IF t195 IS NOT BOUND.
      t201 = abap_true.
    ELSE.
      t201 = xsdbool( t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t201 = abap_true.
    ELSE.
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t206) = |TSTCT|.
      t204 = t195->get( p0 = t206 ).
      t200 = t204.
    ENDIF.
    t194 = t200.
    IF t194 IS BOUND.
      t193 = t194.
    ENDIF.
    t192 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t193 ).
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t208 TYPE REF TO object.
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
      t216 = me->parsed_xml.
      t215 = t216->texts_translations.
      t214 = t215.
      DATA t218 TYPE REF TO zcl_lnt_dmn_vl_trnsltn.
      CLEAR t218.
      DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t219.
      DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t220.
      DATA(t222) = |SPRSL|.
      t220 = t207->get( p0 = t222 ).
      t219 = t220.
      DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t223.
      DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t224.
      DATA(t226) = |TTEXT|.
      t224 = t207->get( p0 = t226 ).
      t223 = t224.
      DATA t227 TYPE REF TO zcl_lnt_dmn_vl_trnsltn.
      CLEAR t227.
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t228.
      DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t229.
      DATA(t230) = xsdbool( t219 IS INITIAL ).
      IF t230 = abap_true.
        CLEAR t229.
      ELSE.
        DATA(t233) = VALUE string( ).
        t233 = t219->as_string( ).
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
      DATA(t238) = xsdbool( t223 IS INITIAL ).
      IF t238 = abap_true.
        CLEAR t237.
      ELSE.
        DATA(t241) = VALUE string( ).
        t241 = t223->as_string( ).
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
      t227->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t244 ).
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
      t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = t246 p1 = t247 ).
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
    DATA(t254) = VALUE abap_bool( ).
    t254 = abap_true.
    DATA(t256) = VALUE f( ).
    DATA(t257) = VALUE f( ).
    t257 = t250 - t16.
    t256 = t257.
    DATA t260 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t253 = NEW zcl_lnt_iparse_result( i_updated = t254 i_runtime = t256 i_runtime_extra = t260 ).
    CREATE OBJECT t253->zlnt_view_ownkeys_b0e8086400eb.
    t253->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t253->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t262 ).
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t253->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t253->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t263 ).
    ENDIF.
    CREATE OBJECT t253->zlnt_json_ownkeys_70e5fd461788.
    t253->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t264) = |updated|.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t253->zlnt_json_ownkeys_70e5fd461788->put( p0 = t264 p1 = t265 ).
    DATA(t266) = |runtime|.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t253->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t253->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
    ENDIF.
    result = t253.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->prs_inst_src_objc_trns_ts_trns( ) ).

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
