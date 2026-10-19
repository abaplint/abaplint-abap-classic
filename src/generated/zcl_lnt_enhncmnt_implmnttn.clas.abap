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
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |ENHO|.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 30 ).
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

  METHOD get_class_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_enh_imp_ts_enh_imp( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_55554241.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_55554241.
      t10 = t3.
      t9 = t10->class_name.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_enh_imp_ts_enh_imp( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_55554241.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_55554241.
      t10 = t3.
      t9 = t10->description.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD pr_in_sr_ob_enh_imp_ts_enh_imp.
    DATA t1 TYPE abap_bool.
    t1 = xsdbool( me->parsed_xml IS BOUND ).
    IF t1 = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_iparse_result.
      DATA t4 TYPE abap_bool.
      t4 = abap_false.
      DATA t6 TYPE f.
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
    DATA t17 TYPE f.
    DATA(t18) = 0.
    t17 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t21 TYPE REF TO zcl_lnt_shape_55554241.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t21 = NEW zcl_lnt_shape_55554241( i_class_name = t22 i_description = t24 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    me->parsed_xml = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t27 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = xsdbool( t27 IS INITIAL ).
    IF t31 = abap_true.
    ELSE.
      t30 = t27.
    ENDIF.
    t29 = t30.
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE abap_bool( ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t38 = xsdbool( t29 IS INITIAL ).
    t37 = t38.
    IF t38 = abap_false.
      DATA(t45) = VALUE abap_bool( ).
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t48 = t29.
      DATA(t50) = |abapGit|.
      t47 = t48->get( p0 = t50 ).
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t45 = xsdbool( t47 IS INITIAL ).
      t37 = t45.
    ENDIF.
    t36 = t37.
    IF t37 = abap_false.
      DATA(t55) = VALUE abap_bool( ).
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t62 = t29.
      DATA(t64) = |abapGit|.
      t61 = t62->get( p0 = t64 ).
      t60 = t61.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t66) = VALUE abap_bool( ).
      IF t60 IS NOT BOUND.
        t66 = abap_true.
      ELSE.
        t66 = xsdbool( t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t66 = abap_true.
      ELSE.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t71) = |asx:abap|.
        t69 = t60->get( p0 = t71 ).
        t65 = t69.
      ENDIF.
      t58 = t65.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t73) = VALUE abap_bool( ).
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t58 IS BOUND.
        t74 = t58.
      ENDIF.
      IF t74 IS NOT BOUND.
        t73 = abap_true.
      ELSE.
        t73 = xsdbool( t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t73 = abap_true.
      ELSE.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t78 = t58.
        DATA(t80) = |asx:values|.
        t77 = t78->get( p0 = t80 ).
        t72 = t77.
      ENDIF.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t55 = xsdbool( t72 IS INITIAL ).
      t36 = t55.
    ENDIF.
    IF t36 = abap_true.
      DATA t85 TYPE REF TO zcl_lnt_iparse_result.
      DATA t86 TYPE abap_bool.
      t86 = abap_false.
      DATA t88 TYPE f.
      DATA(t89) = CONV f( 0 ).
      t88 = t89.
      DATA t90 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t85 = NEW zcl_lnt_iparse_result( i_updated = t86 i_runtime = t88 i_runtime_extra = t90 ).
      CREATE OBJECT t85->zlnt_view_ownkeys_b0e8086400eb.
      t85->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t92 ).
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t93 ).
      ENDIF.
      CREATE OBJECT t85->zlnt_json_ownkeys_70e5fd461788.
      t85->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t94) = |updated|.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
      DATA(t96) = |runtime|.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t85->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
      ENDIF.
      result = t85.
      RETURN.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t106 = t29.
    DATA(t108) = |abapGit|.
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
      DATA(t115) = |asx:abap|.
      t113 = t104->get( p0 = t115 ).
      t109 = t113.
    ENDIF.
    t102 = t109.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t117) = VALUE abap_bool( ).
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t102 IS BOUND.
      t118 = t102.
    ENDIF.
    IF t118 IS NOT BOUND.
      t117 = abap_true.
    ELSE.
      t117 = xsdbool( t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t117 = abap_true.
    ELSE.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t122 = t102.
      DATA(t124) = |asx:values|.
      t121 = t122->get( p0 = t124 ).
      t116 = t121.
    ENDIF.
    t100 = t116.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t126) = VALUE abap_bool( ).
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t100 IS BOUND.
      t127 = t100.
    ENDIF.
    IF t127 IS NOT BOUND.
      t126 = abap_true.
    ELSE.
      t126 = xsdbool( t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t126 = abap_true.
    ELSE.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t131 = t100.
      DATA(t133) = |CLASS|.
      t130 = t131->get( p0 = t133 ).
      t125 = t130.
    ENDIF.
    t98 = t125.
    DATA t134 TYPE REF TO zcl_lnt_shape_55554241.
    t134 = me->parsed_xml.
    DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t137) = xsdbool( t98 IS INITIAL ).
    IF t137 = abap_true.
    ELSE.
      DATA t140 TYPE string.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t141 = t98.
      t140 = t141->as_string( ).
      DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t143->has = abap_true.
      t143->value = t140.
      t136 = t143.
    ENDIF.
    t134->class_name = t136.
    DELETE t134->zlnt_record_delet_0597644d88b4 WHERE table_line = `className`.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t134->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t134->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `className` p1 = t144 ).
    ENDIF.
    DATA(t145) = |className|.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t134->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t134->zlnt_json_ownkeys_70e5fd461788->put( p0 = t145 p1 = t146 ).
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t155 = t29.
    DATA(t157) = |abapGit|.
    t154 = t155->get( p0 = t157 ).
    t153 = t154.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t159) = VALUE abap_bool( ).
    IF t153 IS NOT BOUND.
      t159 = abap_true.
    ELSE.
      t159 = xsdbool( t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t159 = abap_true.
    ELSE.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t164) = |asx:abap|.
      t162 = t153->get( p0 = t164 ).
      t158 = t162.
    ENDIF.
    t151 = t158.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t166) = VALUE abap_bool( ).
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t151 IS BOUND.
      t167 = t151.
    ENDIF.
    IF t167 IS NOT BOUND.
      t166 = abap_true.
    ELSE.
      t166 = xsdbool( t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t166 = abap_true.
    ELSE.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t171 = t151.
      DATA(t173) = |asx:values|.
      t170 = t171->get( p0 = t173 ).
      t165 = t170.
    ENDIF.
    t149 = t165.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t175) = VALUE abap_bool( ).
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t149 IS BOUND.
      t176 = t149.
    ENDIF.
    IF t176 IS NOT BOUND.
      t175 = abap_true.
    ELSE.
      t175 = xsdbool( t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t175 = abap_true.
    ELSE.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t180 = t149.
      DATA(t182) = |SHORTTEXT|.
      t179 = t180->get( p0 = t182 ).
      t174 = t179.
    ENDIF.
    t147 = t174.
    DATA t183 TYPE REF TO zcl_lnt_shape_55554241.
    t183 = me->parsed_xml.
    DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t186) = xsdbool( t147 IS INITIAL ).
    IF t186 = abap_true.
    ELSE.
      DATA t189 TYPE string.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t190 = t147.
      t189 = t190->as_string( ).
      DATA(t192) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t192->has = abap_true.
      t192->value = t189.
      t185 = t192.
    ENDIF.
    t183->description = t185.
    DELETE t183->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t183->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t183->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t193 ).
    ENDIF.
    DATA(t194) = |description|.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t183->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t183->zlnt_json_ownkeys_70e5fd461788->put( p0 = t194 p1 = t195 ).
    ENDIF.
    DATA t197 TYPE f.
    DATA(t198) = 0.
    t197 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t199 TYPE REF TO zcl_lnt_iparse_result.
    DATA t200 TYPE abap_bool.
    t200 = abap_true.
    DATA t202 TYPE f.
    DATA t203 TYPE f.
    t203 = t197 - t17.
    t202 = t203.
    DATA t206 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t199 = NEW zcl_lnt_iparse_result( i_updated = t200 i_runtime = t202 i_runtime_extra = t206 ).
    CREATE OBJECT t199->zlnt_view_ownkeys_b0e8086400eb.
    t199->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t208 ).
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t199->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t209 ).
    ENDIF.
    CREATE OBJECT t199->zlnt_json_ownkeys_70e5fd461788.
    t199->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t210) = |updated|.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = t210 p1 = t211 ).
    DATA(t212) = |runtime|.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = t212 p1 = t213 ).
    ENDIF.
    result = t199.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_enh_imp_ts_enh_imp( ) ).

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
