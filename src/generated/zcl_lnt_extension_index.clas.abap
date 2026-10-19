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
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
  ENDMETHOD.

  METHOD get_type.
    result = |XINX|.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 33 ).
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

  METHOD set_dirty.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_ext_ind_ts_ext_ind( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_0b343cf6.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_0b343cf6.
      t10 = t3.
      t9 = t10->ddtext_d4ae.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_table_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_ext_ind_ts_ext_ind( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_0b343cf6.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_0b343cf6.
      t10 = t3.
      t9 = t10->sqltab.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD pr_in_sr_ob_ext_ind_ts_ext_ind.
    DATA(t1) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = xsdbool( me->parsed_xml IS INITIAL ).
    t6 = xsdbool( t7 = abap_false ).
    t1 = t6.
    IF t1 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_iparse_result.
      DATA t10 TYPE abap_bool.
      t10 = abap_false.
      DATA t12 TYPE f.
      DATA(t13) = CONV f( 0 ).
      t12 = t13.
      DATA t14 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t9 = NEW zcl_lnt_iparse_result( i_updated = t10 i_runtime = t12 i_runtime_extra = t14 ).
      CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
      t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t16 ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t17 ).
      ENDIF.
      CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
      t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t18) = |updated|.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
      DATA(t20) = |runtime|.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t20 p1 = t21 ).
      ENDIF.
      result = t9.
      RETURN.
    ENDIF.
    DATA t23 TYPE f.
    DATA(t24) = 0.
    t23 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t27 TYPE REF TO zcl_lnt_shape_0b343cf6.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t27 = NEW zcl_lnt_shape_0b343cf6( i_sqltab = t28 i_ddtext_5aef = t30 ).
    CREATE OBJECT t27->zlnt_view_ownkeys_b0e8086400eb.
    t27->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    CREATE OBJECT t27->zlnt_json_ownkeys_70e5fd461788.
    t27->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    me->parsed_xml = t27.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t33 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t37) = xsdbool( t33 IS INITIAL ).
    IF t37 = abap_true.
    ELSE.
      t36 = t33.
    ENDIF.
    t35 = t36.
    DATA(t42) = VALUE abap_bool( ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t42 = xsdbool( t35 IS INITIAL ).
    IF t42 = abap_true.
      DATA t49 TYPE REF TO zcl_lnt_iparse_result.
      DATA t50 TYPE abap_bool.
      t50 = abap_false.
      DATA t52 TYPE f.
      DATA(t53) = CONV f( 0 ).
      t52 = t53.
      DATA t54 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t49 = NEW zcl_lnt_iparse_result( i_updated = t50 i_runtime = t52 i_runtime_extra = t54 ).
      CREATE OBJECT t49->zlnt_view_ownkeys_b0e8086400eb.
      t49->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t49->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t56 ).
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t49->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t49->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t57 ).
      ENDIF.
      CREATE OBJECT t49->zlnt_json_ownkeys_70e5fd461788.
      t49->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t58) = |updated|.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t49->zlnt_json_ownkeys_70e5fd461788->put( p0 = t58 p1 = t59 ).
      DATA(t60) = |runtime|.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t49->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t49->zlnt_json_ownkeys_70e5fd461788->put( p0 = t60 p1 = t61 ).
      ENDIF.
      result = t49.
      RETURN.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t70 = t35.
    DATA(t72) = |abapGit|.
    t69 = t70->get( p0 = t72 ).
    t68 = t69.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = VALUE abap_bool( ).
    IF t68 IS NOT BOUND.
      t74 = abap_true.
    ELSE.
      t74 = xsdbool( t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t74 = abap_true.
    ELSE.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t79) = |asx:abap|.
      t77 = t68->get( p0 = t79 ).
      t73 = t77.
    ENDIF.
    t66 = t73.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t81) = VALUE abap_bool( ).
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t66 IS BOUND.
      t82 = t66.
    ENDIF.
    IF t82 IS NOT BOUND.
      t81 = abap_true.
    ELSE.
      t81 = xsdbool( t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t81 = abap_true.
    ELSE.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t86 = t66.
      DATA(t88) = |asx:values|.
      t85 = t86->get( p0 = t88 ).
      t80 = t85.
    ENDIF.
    t64 = t80.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t90) = VALUE abap_bool( ).
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t64 IS BOUND.
      t91 = t64.
    ENDIF.
    IF t91 IS NOT BOUND.
      t90 = abap_true.
    ELSE.
      t90 = xsdbool( t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t90 = abap_true.
    ELSE.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t95 = t64.
      DATA(t97) = |XINX|.
      t94 = t95->get( p0 = t97 ).
      t89 = t94.
    ENDIF.
    t62 = t89.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t100) = xsdbool( t62 IS INITIAL ).
    IF t100 = abap_true.
    ELSE.
      t99 = t62.
    ENDIF.
    t98 = t99.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t112 = t98.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t115) = VALUE abap_bool( ).
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t112 IS BOUND.
      t116 = t112.
    ENDIF.
    IF t116 IS NOT BOUND.
      t115 = abap_true.
    ELSE.
      t115 = xsdbool( t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t115 = abap_true.
    ELSE.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t120 = t112.
      DATA(t122) = |DD12V|.
      t119 = t120->get( p0 = t122 ).
      t114 = t119.
    ENDIF.
    t110 = t114.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t124) = VALUE abap_bool( ).
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t110 IS BOUND.
      t125 = t110.
    ENDIF.
    IF t125 IS NOT BOUND.
      t124 = abap_true.
    ELSE.
      t124 = xsdbool( t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t124 = abap_true.
    ELSE.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t129 = t110.
      DATA(t131) = |SQLTAB|.
      t128 = t129->get( p0 = t131 ).
      t123 = t128.
    ENDIF.
    t108 = t123.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t136 = t98.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t139) = VALUE abap_bool( ).
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t136 IS BOUND.
      t140 = t136.
    ENDIF.
    IF t140 IS NOT BOUND.
      t139 = abap_true.
    ELSE.
      t139 = xsdbool( t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t139 = abap_true.
    ELSE.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t144 = t136.
      DATA(t146) = |DD12V|.
      t143 = t144->get( p0 = t146 ).
      t138 = t143.
    ENDIF.
    t134 = t138.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t148) = VALUE abap_bool( ).
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t134 IS BOUND.
      t149 = t134.
    ENDIF.
    IF t149 IS NOT BOUND.
      t148 = abap_true.
    ELSE.
      t148 = xsdbool( t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t148 = abap_true.
    ELSE.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t153 = t134.
      DATA(t155) = |DDTEXT|.
      t152 = t153->get( p0 = t155 ).
      t147 = t152.
    ENDIF.
    t132 = t147.
    DATA t156 TYPE REF TO zcl_lnt_shape_0b343cf6.
    DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t159) = xsdbool( t108 IS INITIAL ).
    IF t159 = abap_true.
    ELSE.
      DATA t162 TYPE string.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t163 = t108.
      t162 = t163->as_string( ).
      DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t165->has = abap_true.
      t165->value = t162.
      t158 = t165.
    ENDIF.
    t157 = t158.
    DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t168) = xsdbool( t132 IS INITIAL ).
    IF t168 = abap_true.
    ELSE.
      DATA t171 TYPE string.
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t172 = t132.
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
    t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sqltab` p1 = t175 ).
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddtext` p1 = t176 ).
    ENDIF.
    CREATE OBJECT t156->zlnt_json_ownkeys_70e5fd461788.
    t156->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t177) = |sqltab|.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = t177 p1 = t178 ).
    DATA(t179) = |ddtext|.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = t179 p1 = t180 ).
    ENDIF.
    me->parsed_xml = t156.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t183 TYPE f.
    DATA(t184) = 0.
    t183 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t185 TYPE REF TO zcl_lnt_iparse_result.
    DATA t186 TYPE abap_bool.
    t186 = abap_true.
    DATA t188 TYPE f.
    DATA t189 TYPE f.
    t189 = t183 - t23.
    t188 = t189.
    DATA t192 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t185 = NEW zcl_lnt_iparse_result( i_updated = t186 i_runtime = t188 i_runtime_extra = t192 ).
    CREATE OBJECT t185->zlnt_view_ownkeys_b0e8086400eb.
    t185->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t185->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t194 ).
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t185->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t195 ).
    ENDIF.
    CREATE OBJECT t185->zlnt_json_ownkeys_70e5fd461788.
    t185->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t196) = |updated|.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t185->zlnt_json_ownkeys_70e5fd461788->put( p0 = t196 p1 = t197 ).
    DATA(t198) = |runtime|.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t185->zlnt_json_ownkeys_70e5fd461788->put( p0 = t198 p1 = t199 ).
    ENDIF.
    result = t185.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_ext_ind_ts_ext_ind( ) ).

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
