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
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |NROB|.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 10 ).
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

  METHOD get_domain.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_f96fb7aa.
      t10 = t3.
      t9 = t10->domain.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_percentage.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t10 TYPE REF TO zcl_lnt_shape_f96fb7aa.
      t10 = t3.
      t9 = t10->percentage.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD pr_in_sr_ob_nmb_rng_ts_nmb_rng.
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
    DATA t21 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t21 = NEW zcl_lnt_shape_f96fb7aa( i_description = t22 i_domain = t24 i_percentage = t26 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    me->parsed_xml = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t29 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = xsdbool( t29 IS INITIAL ).
    IF t33 = abap_true.
    ELSE.
      t32 = t29.
    ENDIF.
    t31 = t32.
    DATA(t38) = VALUE abap_bool( ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t38 = xsdbool( t31 IS INITIAL ).
    IF t38 = abap_true.
      DATA t45 TYPE REF TO zcl_lnt_iparse_result.
      DATA t46 TYPE abap_bool.
      t46 = abap_false.
      DATA t48 TYPE f.
      DATA(t49) = CONV f( 0 ).
      t48 = t49.
      DATA t50 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t45 = NEW zcl_lnt_iparse_result( i_updated = t46 i_runtime = t48 i_runtime_extra = t50 ).
      CREATE OBJECT t45->zlnt_view_ownkeys_b0e8086400eb.
      t45->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t52 ).
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t53 ).
      ENDIF.
      CREATE OBJECT t45->zlnt_json_ownkeys_70e5fd461788.
      t45->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t54) = |updated|.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
      DATA(t56) = |runtime|.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
      ENDIF.
      result = t45.
      RETURN.
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t66 = t31.
    DATA(t68) = |abapGit|.
    t65 = t66->get( p0 = t68 ).
    t64 = t65.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t70) = VALUE abap_bool( ).
    IF t64 IS NOT BOUND.
      t70 = abap_true.
    ELSE.
      t70 = xsdbool( t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t70 = abap_true.
    ELSE.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t75) = |asx:abap|.
      t73 = t64->get( p0 = t75 ).
      t69 = t73.
    ENDIF.
    t62 = t69.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t77) = VALUE abap_bool( ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t62 IS BOUND.
      t78 = t62.
    ENDIF.
    IF t78 IS NOT BOUND.
      t77 = abap_true.
    ELSE.
      t77 = xsdbool( t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t77 = abap_true.
    ELSE.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t82 = t62.
      DATA(t84) = |asx:values|.
      t81 = t82->get( p0 = t84 ).
      t76 = t81.
    ENDIF.
    t60 = t76.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t86) = VALUE abap_bool( ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t60 IS BOUND.
      t87 = t60.
    ENDIF.
    IF t87 IS NOT BOUND.
      t86 = abap_true.
    ELSE.
      t86 = xsdbool( t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t86 = abap_true.
    ELSE.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t91 = t60.
      DATA(t93) = |TEXT|.
      t90 = t91->get( p0 = t93 ).
      t85 = t90.
    ENDIF.
    t58 = t85.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = xsdbool( t58 IS INITIAL ).
    IF t96 = abap_true.
    ELSE.
      t95 = t58.
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t103 = t95.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t106) = VALUE abap_bool( ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t103 IS BOUND.
      t107 = t103.
    ENDIF.
    IF t107 IS NOT BOUND.
      t106 = abap_true.
    ELSE.
      t106 = xsdbool( t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t106 = abap_true.
    ELSE.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t111 = t103.
      DATA(t113) = |TXT|.
      t110 = t111->get( p0 = t113 ).
      t105 = t110.
    ENDIF.
    t101 = t105.
    DATA t114 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    t114 = me->parsed_xml.
    DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t117) = xsdbool( t101 IS INITIAL ).
    IF t117 = abap_true.
    ELSE.
      DATA t120 TYPE string.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t121 = t101.
      t120 = t121->as_string( ).
      DATA(t123) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t123->has = abap_true.
      t123->value = t120.
      t116 = t123.
    ENDIF.
    t114->description = t116.
    DELETE t114->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t124 ).
    ENDIF.
    DATA(t125) = |description|.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t135 = t31.
    DATA(t137) = |abapGit|.
    t134 = t135->get( p0 = t137 ).
    t133 = t134.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t139) = VALUE abap_bool( ).
    IF t133 IS NOT BOUND.
      t139 = abap_true.
    ELSE.
      t139 = xsdbool( t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t139 = abap_true.
    ELSE.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t144) = |asx:abap|.
      t142 = t133->get( p0 = t144 ).
      t138 = t142.
    ENDIF.
    t131 = t138.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t146) = VALUE abap_bool( ).
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t131 IS BOUND.
      t147 = t131.
    ENDIF.
    IF t147 IS NOT BOUND.
      t146 = abap_true.
    ELSE.
      t146 = xsdbool( t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t146 = abap_true.
    ELSE.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t151 = t131.
      DATA(t153) = |asx:values|.
      t150 = t151->get( p0 = t153 ).
      t145 = t150.
    ENDIF.
    t129 = t145.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t155) = VALUE abap_bool( ).
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129 IS BOUND.
      t156 = t129.
    ENDIF.
    IF t156 IS NOT BOUND.
      t155 = abap_true.
    ELSE.
      t155 = xsdbool( t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t155 = abap_true.
    ELSE.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t160 = t129.
      DATA(t162) = |ATTRIBUTES|.
      t159 = t160->get( p0 = t162 ).
      t154 = t159.
    ENDIF.
    t127 = t154.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t165) = xsdbool( t127 IS INITIAL ).
    IF t165 = abap_true.
    ELSE.
      t164 = t127.
    ENDIF.
    t163 = t164.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t172 = t163.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t175) = VALUE abap_bool( ).
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t172 IS BOUND.
      t176 = t172.
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
      t180 = t172.
      DATA(t182) = |DOMLEN|.
      t179 = t180->get( p0 = t182 ).
      t174 = t179.
    ENDIF.
    t170 = t174.
    DATA t183 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    t183 = me->parsed_xml.
    DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t186) = xsdbool( t170 IS INITIAL ).
    IF t186 = abap_true.
    ELSE.
      DATA t189 TYPE string.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t190 = t170.
      t189 = t190->as_string( ).
      DATA(t192) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t192->has = abap_true.
      t192->value = t189.
      t185 = t192.
    ENDIF.
    t183->domain = t185.
    DELETE t183->zlnt_record_delet_0597644d88b4 WHERE table_line = `domain`.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t183->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t183->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `domain` p1 = t193 ).
    ENDIF.
    DATA(t194) = |domain|.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t183->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t183->zlnt_json_ownkeys_70e5fd461788->put( p0 = t194 p1 = t195 ).
    ENDIF.
    DATA t196 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    t196 = me->parsed_xml.
    DATA t200 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t201) = VALUE string( ).
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t204 = t163.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t207) = VALUE abap_bool( ).
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t204 IS BOUND.
      t208 = t204.
    ENDIF.
    IF t208 IS NOT BOUND.
      t207 = abap_true.
    ELSE.
      t207 = xsdbool( t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t207 = abap_true.
    ELSE.
      DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t212 = t204.
      DATA(t214) = |PERCENTAGE|.
      t211 = t212->get( p0 = t214 ).
      t206 = t211.
    ENDIF.
    t202 = t206.
    DATA(t215) = VALUE string( ).
    DATA t216 TYPE abap_bool.
    t216 = xsdbool( t202 IS BOUND ).
    IF t216 = abap_true.
      DATA t218 TYPE string.
      DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t219 = t202.
      t218 = t219->as_string( ).
      t215 = t218.
    ELSE.
      t215 = ||.
    ENDIF.
    t201 = t215.
    t200 = zlnt_runtime_stri_248d3505915c=>float_optional( t201 ).
    t196->percentage = t200.
    DELETE t196->zlnt_record_delet_0597644d88b4 WHERE table_line = `percentage`.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `percentage` p1 = t223 ).
    ENDIF.
    DATA(t224) = |percentage|.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t224 p1 = t225 ).
    ENDIF.
    DATA t227 TYPE f.
    DATA(t228) = 0.
    t227 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t229 TYPE REF TO zcl_lnt_iparse_result.
    DATA t230 TYPE abap_bool.
    t230 = abap_true.
    DATA t232 TYPE f.
    DATA t233 TYPE f.
    t233 = t227 - t17.
    t232 = t233.
    DATA t236 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t229 = NEW zcl_lnt_iparse_result( i_updated = t230 i_runtime = t232 i_runtime_extra = t236 ).
    CREATE OBJECT t229->zlnt_view_ownkeys_b0e8086400eb.
    t229->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t238 ).
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t239 ).
    ENDIF.
    CREATE OBJECT t229->zlnt_json_ownkeys_70e5fd461788.
    t229->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t240) = |updated|.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t240 p1 = t241 ).
    DATA(t242) = |runtime|.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t242 p1 = t243 ).
    ENDIF.
    result = t229.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_f96fb7aa.
      t10 = t3.
      t9 = t10->description.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ) ).

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
