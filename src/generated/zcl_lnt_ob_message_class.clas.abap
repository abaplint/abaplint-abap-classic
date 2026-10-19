* TS: src/objects/message_class.ts:12:1 MessageClass
CLASS zcl_lnt_ob_message_class DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA xml TYPE REF TO zcl_lnt_parsed_message_class.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_parsed RETURNING VALUE(result) TYPE REF TO zcl_lnt_parsed_message_class.
    METHODS get_texts_translations RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS set_dirty REDEFINITION.
    METHODS get_messages RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_by_number IMPORTING i_num TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_ty_message.
    METHODS parse_xml.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ob_message_class IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
    CLEAR me->xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `xml`.
  ENDMETHOD.

  METHOD get_type.
    result = |MSAG|.

  ENDMETHOD.

  METHOD get_description.
    me->parse_xml( ).
    DATA t2 TYPE REF TO zcl_lnt_parsed_message_class.
    t2 = me->xml.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t5) = xsdbool( t2 IS INITIAL ).
    IF t5 = abap_true.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_parsed_message_class.
      t9 = t2.
      t8 = t9->description.
      t4 = t8.
    ENDIF.
    result = t4.

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

  METHOD get_parsed.
    me->parse_xml( ).
    result = me->xml.

  ENDMETHOD.

  METHOD get_texts_translations.
    me->parse_xml( ).
    DATA t2 TYPE REF TO zcl_lnt_parsed_message_class.
    t2 = me->xml.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = xsdbool( t2 IS INITIAL ).
    IF t5 = abap_true.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t9 TYPE REF TO zcl_lnt_parsed_message_class.
      t9 = t2.
      t8 = t9->texts_translations.
      t4 = t8.
    ENDIF.
    result = t4.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `xml`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_messages.
    me->parse_xml( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_parsed_message_class.
    t3 = me->xml.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zcl_lnt_parsed_message_class.
      t10 = t3.
      t9 = t10->parsed_messages.
      t5 = t9.
    ENDIF.
    t1 = t5.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE abap_bool.
    t13 = xsdbool( t1 IS BOUND ).
    IF t13 = abap_true.
      t12 = t1.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      t12 = t17.
    ENDIF.
    result = t12.

  ENDMETHOD.

  METHOD get_by_number.
    DATA(t1) = i_num.
    me->parse_xml( ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    me->parse_xml( ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_parsed_message_class.
    t5 = me->xml.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = xsdbool( t5 IS INITIAL ).
    IF t8 = abap_true.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t12 TYPE REF TO zcl_lnt_parsed_message_class.
      t12 = t5.
      t11 = t12->parsed_messages.
      t7 = t11.
    ENDIF.
    t3 = t7.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE abap_bool.
    t15 = xsdbool( t3 IS BOUND ).
    IF t15 = abap_true.
      t14 = t3.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t19.
      t14 = t19.
    ENDIF.
    t2 = t14.
    DATA t20 TYPE REF TO zcl_lnt_ty_message.
    DATA t21 TYPE REF TO object.
    DATA(t22) = VALUE i( ).
    DO.
      t2->load( ).
      IF t22 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t2->items INDEX t22 + 1 INTO t21.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t20.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t21.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t20 ?= t24.
      ELSE.
        t20 ?= t21.
      ENDIF.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE string.
      DATA t29 TYPE string.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t30 = t20->number.
      t29 = t30->value.
      t26 = t29.
      t25 = xsdbool( t26 = t1 ).
      IF t25 = abap_true.
        result = t20.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD parse_xml.
    DATA(t1) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = xsdbool( me->xml IS INITIAL ).
    t6 = xsdbool( t7 = abap_false ).
    t1 = t6.
    IF t1 = abap_true.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t16 = t19.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t21 = t24.
    t11 = NEW zcl_lnt_parsed_message_class( i_top_name = t12 i_description = t14 i_parsed_messages = t16 i_texts_translations = t21 ).
    CREATE OBJECT t11->zlnt_view_ownkeys_b0e8086400eb.
    t11->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `topName` p1 = t26 ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t27 ).
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parsedMessages` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textsTranslations` p1 = t29 ).
    ENDIF.
    CREATE OBJECT t11->zlnt_json_ownkeys_70e5fd461788.
    t11->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t30) = |topName|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    DATA(t32) = |description|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |parsedMessages|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |textsTranslations|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    me->xml = t11.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `xml`.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t39 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = xsdbool( t39 IS INITIAL ).
    IF t43 = abap_true.
    ELSE.
      t42 = t39.
    ENDIF.
    t41 = t42.
    DATA(t48) = VALUE abap_bool( ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t48 = xsdbool( t41 IS INITIAL ).
    IF t48 = abap_true.
      RETURN.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t65 = t41.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t68) = VALUE abap_bool( ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t65 IS BOUND.
      t69 = t65.
    ENDIF.
    IF t69 IS NOT BOUND.
      t68 = abap_true.
    ELSE.
      t68 = xsdbool( t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t68 = abap_true.
    ELSE.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t73 = t65.
      DATA(t75) = |abapGit|.
      t72 = t73->get( p0 = t75 ).
      t67 = t72.
    ENDIF.
    t63 = t67.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t77) = VALUE abap_bool( ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t63 IS BOUND.
      t78 = t63.
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
      t82 = t63.
      DATA(t84) = |asx:abap|.
      t81 = t82->get( p0 = t84 ).
      t76 = t81.
    ENDIF.
    t61 = t76.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t86) = VALUE abap_bool( ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t61 IS BOUND.
      t87 = t61.
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
      t91 = t61.
      DATA(t93) = |asx:values|.
      t90 = t91->get( p0 = t93 ).
      t85 = t90.
    ENDIF.
    t59 = t85.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t95) = VALUE abap_bool( ).
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t59 IS BOUND.
      t96 = t59.
    ENDIF.
    IF t96 IS NOT BOUND.
      t95 = abap_true.
    ELSE.
      t95 = xsdbool( t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t95 = abap_true.
    ELSE.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t100 = t59.
      DATA(t102) = |T100A|.
      t99 = t100->get( p0 = t102 ).
      t94 = t99.
    ENDIF.
    t57 = t94.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t104) = VALUE abap_bool( ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      t105 = t57.
    ENDIF.
    IF t105 IS NOT BOUND.
      t104 = abap_true.
    ELSE.
      t104 = xsdbool( t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t104 = abap_true.
    ELSE.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t109 = t57.
      DATA(t111) = |ARBGB|.
      t108 = t109->get( p0 = t111 ).
      t103 = t108.
    ENDIF.
    t55 = t103.
    DATA t112 TYPE REF TO zcl_lnt_parsed_message_class.
    t112 = me->xml.
    DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t115) = xsdbool( t55 IS INITIAL ).
    IF t115 = abap_true.
    ELSE.
      DATA(t118) = VALUE string( ).
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t119 = t55.
      t118 = t119->as_string( ).
      DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t121->has = abap_true.
      t121->value = t118.
      t114 = t121.
    ENDIF.
    t112->top_name = t114.
    DELETE t112->zlnt_record_delet_0597644d88b4 WHERE table_line = `topName`.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `topName` p1 = t122 ).
    ENDIF.
    DATA(t123) = |topName|.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
    ENDIF.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t135 = t41.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t138) = VALUE abap_bool( ).
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t135 IS BOUND.
      t139 = t135.
    ENDIF.
    IF t139 IS NOT BOUND.
      t138 = abap_true.
    ELSE.
      t138 = xsdbool( t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t138 = abap_true.
    ELSE.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t143 = t135.
      DATA(t145) = |abapGit|.
      t142 = t143->get( p0 = t145 ).
      t137 = t142.
    ENDIF.
    t133 = t137.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t147) = VALUE abap_bool( ).
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t133 IS BOUND.
      t148 = t133.
    ENDIF.
    IF t148 IS NOT BOUND.
      t147 = abap_true.
    ELSE.
      t147 = xsdbool( t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t147 = abap_true.
    ELSE.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t152 = t133.
      DATA(t154) = |asx:abap|.
      t151 = t152->get( p0 = t154 ).
      t146 = t151.
    ENDIF.
    t131 = t146.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t156) = VALUE abap_bool( ).
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t131 IS BOUND.
      t157 = t131.
    ENDIF.
    IF t157 IS NOT BOUND.
      t156 = abap_true.
    ELSE.
      t156 = xsdbool( t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t156 = abap_true.
    ELSE.
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t161 = t131.
      DATA(t163) = |asx:values|.
      t160 = t161->get( p0 = t163 ).
      t155 = t160.
    ENDIF.
    t129 = t155.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t165) = VALUE abap_bool( ).
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129 IS BOUND.
      t166 = t129.
    ENDIF.
    IF t166 IS NOT BOUND.
      t165 = abap_true.
    ELSE.
      t165 = xsdbool( t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t165 = abap_true.
    ELSE.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t170 = t129.
      DATA(t172) = |T100A|.
      t169 = t170->get( p0 = t172 ).
      t164 = t169.
    ENDIF.
    t127 = t164.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t174) = VALUE abap_bool( ).
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t127 IS BOUND.
      t175 = t127.
    ENDIF.
    IF t175 IS NOT BOUND.
      t174 = abap_true.
    ELSE.
      t174 = xsdbool( t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t174 = abap_true.
    ELSE.
      DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t179 = t127.
      DATA(t181) = |STEXT|.
      t178 = t179->get( p0 = t181 ).
      t173 = t178.
    ENDIF.
    t125 = t173.
    DATA t182 TYPE REF TO zcl_lnt_parsed_message_class.
    t182 = me->xml.
    DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t185) = xsdbool( t125 IS INITIAL ).
    IF t185 = abap_true.
    ELSE.
      DATA(t188) = VALUE string( ).
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t189 = t125.
      t188 = t189->as_string( ).
      DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t191->has = abap_true.
      t191->value = t188.
      t184 = t191.
    ENDIF.
    t182->description = t184.
    DELETE t182->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t192 ).
    ENDIF.
    DATA(t193) = |description|.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t193 p1 = t194 ).
    ENDIF.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t203 = t41.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t206) = VALUE abap_bool( ).
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t203 IS BOUND.
      t207 = t203.
    ENDIF.
    IF t207 IS NOT BOUND.
      t206 = abap_true.
    ELSE.
      t206 = xsdbool( t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t206 = abap_true.
    ELSE.
      DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t211 = t203.
      DATA(t213) = |abapGit|.
      t210 = t211->get( p0 = t213 ).
      t205 = t210.
    ENDIF.
    t201 = t205.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t215) = VALUE abap_bool( ).
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t201 IS BOUND.
      t216 = t201.
    ENDIF.
    IF t216 IS NOT BOUND.
      t215 = abap_true.
    ELSE.
      t215 = xsdbool( t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t215 = abap_true.
    ELSE.
      DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t220 = t201.
      DATA(t222) = |asx:abap|.
      t219 = t220->get( p0 = t222 ).
      t214 = t219.
    ENDIF.
    t199 = t214.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t224) = VALUE abap_bool( ).
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t199 IS BOUND.
      t225 = t199.
    ENDIF.
    IF t225 IS NOT BOUND.
      t224 = abap_true.
    ELSE.
      t224 = xsdbool( t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t224 = abap_true.
    ELSE.
      DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t229 = t199.
      DATA(t231) = |asx:values|.
      t228 = t229->get( p0 = t231 ).
      t223 = t228.
    ENDIF.
    t197 = t223.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t233) = VALUE abap_bool( ).
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t197 IS BOUND.
      t234 = t197.
    ENDIF.
    IF t234 IS NOT BOUND.
      t233 = abap_true.
    ELSE.
      t233 = xsdbool( t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t233 = abap_true.
    ELSE.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t238 = t197.
      DATA(t240) = |T100|.
      t237 = t238->get( p0 = t240 ).
      t232 = t237.
    ENDIF.
    t195 = t232.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t243) = xsdbool( t195 IS INITIAL ).
    IF t243 = abap_true.
    ELSE.
      t242 = t195.
    ENDIF.
    t241 = t242.
    DATA(t248) = VALUE abap_bool( ).
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t248 = xsdbool( t241 IS INITIAL ).
    IF t248 = abap_true.
      RETURN.
    ENDIF.
    DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t257 = t241.
    DATA(t259) = |T100|.
    t256 = t257->get( p0 = t259 ).
    t255 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t256 ).
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t261 TYPE REF TO object.
    DATA(t262) = VALUE i( ).
    DO.
      t255->load( ).
      IF t262 >= lines( t255->items ).
        EXIT.
      ENDIF.
      CLEAR t261.
      READ TABLE t255->items INDEX t262 + 1 INTO t261.
      t262 = t262 + 1.
      DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t263.
      CLEAR t260.
      IF t261 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t263 ?= t261.
        t260 = t263.
      ELSE.
        IF t261 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t264 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t264.
          t264 ?= t261.
          CLEAR t260.
          IF t264 IS BOUND.
            CREATE OBJECT t260.
            t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t260->cval = t264.
          ENDIF.
        ELSE.
          CLEAR t260.
          IF t261 IS BOUND.
            DATA t265 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t265.
            DATA t266 TYPE REF TO object.
            CLEAR t266.
            CLEAR t265.
            t266 = t261.
            TRY.
                t260 ?= t266.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t260 IS NOT BOUND.
              TRY.
                  t265 ?= t261.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t265 IS BOUND.
                t260 = t265->source( ).
              ENDIF.
              IF t260 IS NOT BOUND.
                CREATE OBJECT t260.
                t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t260->oval = t261.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t267.
      DATA t268 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t268.
      DATA t269 TYPE REF TO zcl_lnt_parsed_message_class.
      CLEAR t269.
      t269 = me->xml.
      t268 = t269->parsed_messages.
      t267 = t268.
      DATA t271 TYPE REF TO zcl_lnt_ty_message.
      CLEAR t271.
      DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t272.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t273.
      DATA(t275) = |MSGNR|.
      t273 = t260->get( p0 = t275 ).
      t272 = t273.
      DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t276.
      DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t277.
      DATA(t279) = |ARBGB|.
      t277 = t260->get( p0 = t279 ).
      t276 = t277.
      DATA t280 TYPE REF TO zcl_lnt_ty_message.
      CLEAR t280.
      DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t281.
      DATA(t282) = xsdbool( t272 IS INITIAL ).
      IF t282 = abap_true.
        CLEAR t281.
      ELSE.
        DATA(t285) = VALUE string( ).
        t285 = t272->as_string( ).
        DATA(t287) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t287->has = abap_true.
        t287->value = t285.
        t281 = t287.
      ENDIF.
      DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t288.
      DATA(t290) = VALUE string( ).
      DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t291.
      DATA(t293) = |TEXT|.
      t291 = t260->get( p0 = t293 ).
      t290 = zcl_lnt_xml_utils_module=>unescape( i_str = t291 ).
      DATA(t294) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t294->has = abap_true.
      t294->value = t290.
      t288 = t294.
      DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t296.
      DATA(t297) = xsdbool( t276 IS INITIAL ).
      IF t297 = abap_true.
        CLEAR t296.
      ELSE.
        DATA(t300) = VALUE string( ).
        t300 = t276->as_string( ).
        DATA(t302) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t302->has = abap_true.
        t302->value = t300.
        t296 = t302.
      ENDIF.
      t280 = NEW zcl_lnt_ty_message( i_number = t281 i_message_26cb = t288 i_class_name = t296 ).
      t271 = t280.
      t267->load( ).
      APPEND t271 TO t267->items.
      t267->save( ).
    ENDDO.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t311 = t41.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t314) = VALUE abap_bool( ).
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t311 IS BOUND.
      t315 = t311.
    ENDIF.
    IF t315 IS NOT BOUND.
      t314 = abap_true.
    ELSE.
      t314 = xsdbool( t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t314 = abap_true.
    ELSE.
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t319 = t311.
      DATA(t321) = |abapGit|.
      t318 = t319->get( p0 = t321 ).
      t313 = t318.
    ENDIF.
    t309 = t313.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t323) = VALUE abap_bool( ).
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t309 IS BOUND.
      t324 = t309.
    ENDIF.
    IF t324 IS NOT BOUND.
      t323 = abap_true.
    ELSE.
      t323 = xsdbool( t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t323 = abap_true.
    ELSE.
      DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t328 = t309.
      DATA(t330) = |asx:abap|.
      t327 = t328->get( p0 = t330 ).
      t322 = t327.
    ENDIF.
    t307 = t322.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t332) = VALUE abap_bool( ).
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t307 IS BOUND.
      t333 = t307.
    ENDIF.
    IF t333 IS NOT BOUND.
      t332 = abap_true.
    ELSE.
      t332 = xsdbool( t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t332 = abap_true.
    ELSE.
      DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t337 = t307.
      DATA(t339) = |asx:values|.
      t336 = t337->get( p0 = t339 ).
      t331 = t336.
    ENDIF.
    t305 = t331.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t341) = VALUE abap_bool( ).
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t305 IS BOUND.
      t342 = t305.
    ENDIF.
    IF t342 IS NOT BOUND.
      t341 = abap_true.
    ELSE.
      t341 = xsdbool( t342->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t341 = abap_true.
    ELSE.
      DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t346 = t305.
      DATA(t348) = |T100_TEXTS|.
      t345 = t346->get( p0 = t348 ).
      t340 = t345.
    ENDIF.
    t303 = t340.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t351) = xsdbool( t303 IS INITIAL ).
    IF t351 = abap_true.
    ELSE.
      t350 = t303.
    ENDIF.
    t349 = t350.
    DATA(t356) = VALUE abap_bool( ).
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t356 = xsdbool( t349 IS INITIAL ).
    IF t356 = abap_true.
      RETURN.
    ENDIF.
    DATA t363 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t366 = t349.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t369) = VALUE abap_bool( ).
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t366 IS BOUND.
      t370 = t366.
    ENDIF.
    IF t370 IS NOT BOUND.
      t369 = abap_true.
    ELSE.
      t369 = xsdbool( t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t369 = abap_true.
    ELSE.
      DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t374 = t366.
      DATA(t376) = |item|.
      t373 = t374->get( p0 = t376 ).
      t368 = t373.
    ENDIF.
    t365 = t368.
    IF t365 IS BOUND.
      t364 = t365.
    ENDIF.
    t363 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t364 ).
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t378 TYPE REF TO object.
    DATA(t379) = VALUE i( ).
    DO.
      t363->load( ).
      IF t379 >= lines( t363->items ).
        EXIT.
      ENDIF.
      CLEAR t378.
      READ TABLE t363->items INDEX t379 + 1 INTO t378.
      t379 = t379 + 1.
      DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t380.
      CLEAR t377.
      IF t378 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t380 ?= t378.
        t377 = t380.
      ELSE.
        IF t378 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t381 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t381.
          t381 ?= t378.
          CLEAR t377.
          IF t381 IS BOUND.
            CREATE OBJECT t377.
            t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t377->cval = t381.
          ENDIF.
        ELSE.
          CLEAR t377.
          IF t378 IS BOUND.
            DATA t382 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t382.
            DATA t383 TYPE REF TO object.
            CLEAR t383.
            CLEAR t382.
            t383 = t378.
            TRY.
                t377 ?= t383.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t377 IS NOT BOUND.
              TRY.
                  t382 ?= t378.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t382 IS BOUND.
                t377 = t382->source( ).
              ENDIF.
              IF t377 IS NOT BOUND.
                CREATE OBJECT t377.
                t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t377->oval = t378.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t384 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t384.
      DATA t385 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t385.
      DATA t386 TYPE REF TO zcl_lnt_parsed_message_class.
      CLEAR t386.
      t386 = me->xml.
      t385 = t386->texts_translations.
      t384 = t385.
      DATA t388 TYPE REF TO zcl_lnt_shape_327d7720.
      CLEAR t388.
      DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t389.
      DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t390.
      DATA(t392) = |SPRSL|.
      t390 = t377->get( p0 = t392 ).
      t389 = t390.
      DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t393.
      DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t394.
      DATA(t396) = |MSGNR|.
      t394 = t377->get( p0 = t396 ).
      t393 = t394.
      DATA t397 TYPE REF TO zcl_lnt_shape_327d7720.
      CLEAR t397.
      DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t398.
      DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t399.
      DATA(t400) = xsdbool( t389 IS INITIAL ).
      IF t400 = abap_true.
        CLEAR t399.
      ELSE.
        DATA(t403) = VALUE string( ).
        t403 = t389->as_string( ).
        DATA(t405) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t405->has = abap_true.
        t405->value = t403.
        t399 = t405.
      ENDIF.
      t398 = t399.
      DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t406.
      DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t407.
      DATA(t408) = xsdbool( t393 IS INITIAL ).
      IF t408 = abap_true.
        CLEAR t407.
      ELSE.
        DATA(t411) = VALUE string( ).
        t411 = t393->as_string( ).
        DATA(t413) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t413->has = abap_true.
        t413->value = t411.
        t407 = t413.
      ENDIF.
      t406 = t407.
      DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t414.
      DATA(t417) = VALUE string( ).
      DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t418.
      DATA(t420) = |TEXT|.
      t418 = t377->get( p0 = t420 ).
      t417 = zcl_lnt_xml_utils_module=>unescape( i_str = t418 ).
      DATA(t421) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t421->has = abap_true.
      t421->value = t417.
      t414 = t421.
      t397 = NEW zcl_lnt_shape_327d7720( i_language = t398 i_number = t406 i_text = t414 ).
      CREATE OBJECT t397->zlnt_view_ownkeys_b0e8086400eb.
      t397->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t423.
      t397->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t423 ).
      DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t424.
      IF t397->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t397->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `number` p1 = t424 ).
      ENDIF.
      DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t425.
      IF t397->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t397->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `text` p1 = t425 ).
      ENDIF.
      CREATE OBJECT t397->zlnt_json_ownkeys_70e5fd461788.
      t397->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t426) = |language|.
      DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t427.
      t397->zlnt_json_ownkeys_70e5fd461788->put( p0 = t426 p1 = t427 ).
      DATA(t428) = |number|.
      DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t429.
      IF t397->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t397->zlnt_json_ownkeys_70e5fd461788->put( p0 = t428 p1 = t429 ).
      ENDIF.
      DATA(t430) = |text|.
      DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t431.
      IF t397->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t397->zlnt_json_ownkeys_70e5fd461788->put( p0 = t430 p1 = t431 ).
      ENDIF.
      t388 = t397.
      t384->load( ).
      APPEND t388 TO t384->items.
      t384->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1286_cc1208d19ab7.
  ENDMETHOD.
ENDCLASS.
