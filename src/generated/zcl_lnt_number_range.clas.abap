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
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = CONV f( 10 ) i_allow_namespace = abap_true i_custom_regex = t6 ).
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
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |maxLength| p1 = t11 ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |allowNamespace| p1 = t13 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_domain.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->domain.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_percentage.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->percentage.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD pr_in_sr_ob_nmb_rng_ts_nmb_rng.
    IF xsdbool( me->parsed_xml IS BOUND ) = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_iparse_result.
      DATA t8 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t3 = NEW zcl_lnt_iparse_result( i_updated = abap_false i_runtime = CONV f( 0 ) i_runtime_extra = t8 ).
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
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t13 ).
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t15 ).
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
    IF xsdbool( t29 IS INITIAL ) = abap_true.
    ELSE.
      t32 = t29.
    ENDIF.
    t31 = t32.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t31 IS INITIAL ) = abap_true.
      DATA t45 TYPE REF TO zcl_lnt_iparse_result.
      DATA t50 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t45 = NEW zcl_lnt_iparse_result( i_updated = abap_false i_runtime = CONV f( 0 ) i_runtime_extra = t50 ).
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
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t55 ).
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t57 ).
      ENDIF.
      result = t45.
      RETURN.
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t64 = t31->get( p0 = |abapGit| ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t70) = VALUE abap_bool( ).
    IF t64 IS NOT BOUND.
      t70 = abap_true.
    ELSE.
      t70 = xsdbool( t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t70 = abap_true.
    ELSE.
      t69 = t64->get( p0 = |asx:abap| ).
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
      t76 = t62->get( p0 = |asx:values| ).
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
      t85 = t60->get( p0 = |TEXT| ).
    ENDIF.
    t58 = t85.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t58 IS INITIAL ) = abap_true.
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
      t105 = t103->get( p0 = |TXT| ).
    ENDIF.
    t101 = t105.
    DATA t114 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    t114 = me->parsed_xml.
    DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t101 IS INITIAL ) = abap_true.
    ELSE.
      DATA t120 TYPE string.
      t120 = t101->as_string( ).
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
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t126 ).
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t133 = t31->get( p0 = |abapGit| ).
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t139) = VALUE abap_bool( ).
    IF t133 IS NOT BOUND.
      t139 = abap_true.
    ELSE.
      t139 = xsdbool( t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t139 = abap_true.
    ELSE.
      t138 = t133->get( p0 = |asx:abap| ).
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
      t145 = t131->get( p0 = |asx:values| ).
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
      t154 = t129->get( p0 = |ATTRIBUTES| ).
    ENDIF.
    t127 = t154.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t127 IS INITIAL ) = abap_true.
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
      t174 = t172->get( p0 = |DOMLEN| ).
    ENDIF.
    t170 = t174.
    DATA t183 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    t183 = me->parsed_xml.
    DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t170 IS INITIAL ) = abap_true.
    ELSE.
      DATA t189 TYPE string.
      t189 = t170->as_string( ).
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
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t183->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t183->zlnt_json_ownkeys_70e5fd461788->put( p0 = |domain| p1 = t195 ).
    ENDIF.
    DATA t196 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    t196 = me->parsed_xml.
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
      t206 = t204->get( p0 = |PERCENTAGE| ).
    ENDIF.
    t202 = t206.
    DATA(t215) = VALUE string( ).
    IF xsdbool( t202 IS BOUND ) = abap_true.
      t215 = t202->as_string( ).
    ELSE.
      t215 = ||.
    ENDIF.
    t196->percentage = zlnt_runtime_stri_248d3505915c=>float_optional( t215 ).
    DELETE t196->zlnt_record_delet_0597644d88b4 WHERE table_line = `percentage`.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `percentage` p1 = t223 ).
    ENDIF.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = |percentage| p1 = t225 ).
    ENDIF.
    DATA t227 TYPE f.
    DATA(t228) = 0.
    t227 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t229 TYPE REF TO zcl_lnt_iparse_result.
    DATA t232 TYPE f.
    t232 = t227 - t17.
    DATA t236 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t229 = NEW zcl_lnt_iparse_result( i_updated = abap_true i_runtime = t232 i_runtime_extra = t236 ).
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
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t241 ).
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t243 ).
    ENDIF.
    result = t229.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->description.
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
