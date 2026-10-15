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
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zcl_lnt_parsed_message_class.
    CLEAR t3.
    me->xml = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `xml`.
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |MSAG|.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    me->parse_xml( ).
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA(t3) = me->xml.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t2.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA(t10) = t2.
      t9 = t10.
      t8 = t9->description.
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

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

  METHOD get_parsed.
    me->parse_xml( ).
    DATA(t1) = me->xml.
    result = t1.

  ENDMETHOD.

  METHOD get_texts_translations.
    me->parse_xml( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA(t3) = me->xml.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t2.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t9 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA(t10) = t2.
      t9 = t10.
      t8 = t9->texts_translations.
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_parsed_message_class.
    CLEAR t1.
    me->xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `xml`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_messages.
    me->parse_xml( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA(t4) = me->xml.
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
      DATA t10 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->parsed_messages.
      t5 = t9.
    ENDIF.
    t2 = t5.
    t1 = t2.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE abap_bool.
    DATA(t14) = t1.
    t13 = xsdbool( t14 IS BOUND ).
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t16) = t1.
      t15 = t16.
      t12 = t15.
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
    CLEAR t2.
    me->parse_xml( ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA(t6) = me->xml.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t5.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t10.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t12 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA(t13) = t5.
      t12 = t13.
      t11 = t12->parsed_messages.
      t7 = t11.
    ENDIF.
    t4 = t7.
    t3 = t4.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE abap_bool.
    DATA(t16) = t3.
    t15 = xsdbool( t16 IS BOUND ).
    IF t15 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = t3.
      t17 = t18.
      t14 = t17.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t19.
      t14 = t19.
    ENDIF.
    t2 = t14.
    DATA t20 TYPE REF TO zcl_lnt_ty_message.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
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
      DATA t27 TYPE REF TO zcl_lnt_ty_message.
      DATA(t28) = t20.
      t27 = t28.
      DATA t29 TYPE string.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t31) = t27.
      t30 = t31->number.
      t29 = t30->value.
      t26 = t29.
      DATA(t32) = t1.
      t25 = xsdbool( t26 = t32 ).
      IF t25 = abap_true.
        DATA t33 TYPE REF TO zcl_lnt_ty_message.
        CLEAR t33.
        DATA(t34) = abap_true.
        IF t34 = abap_true.
          DATA(t35) = t20.
          t33 = t35.
        ELSE.
          DATA t36 TYPE REF TO zcl_lnt_ty_message.
          CLEAR t36.
          t33 = t36.
        ENDIF.
        result = t33.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t37 TYPE REF TO zcl_lnt_ty_message.
    CLEAR t37.
    result = t37.

  ENDMETHOD.

  METHOD parse_xml.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_parsed_message_class.
    CLEAR t2.
    DATA(t3) = me->xml.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
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
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_parsed_message_class.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_parsed_message_class.
      CLEAR t11.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t19.
        CREATE OBJECT t19.
        t17 = t19.
      ELSE.
        DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t20.
        t17 = t20.
      ENDIF.
      t16 = t17.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t24.
        CREATE OBJECT t24.
        t22 = t24.
      ELSE.
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t25.
        t22 = t25.
      ENDIF.
      t21 = t22.
      t11 = NEW zcl_lnt_parsed_message_class( i_top_name = t12 i_description = t14 i_parsed_messages = t16 i_texts_translations = t21 ).
      CREATE OBJECT t11->zlnt_view_ownkeys_b0e8086400eb.
      t11->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `topName` p1 = t26 ).
      ENDIF.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t27 ).
      ENDIF.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parsedMessages` p1 = t28 ).
      ENDIF.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textsTranslations` p1 = t29 ).
      ENDIF.
      CREATE OBJECT t11->zlnt_json_ownkeys_70e5fd461788.
      t11->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t30) = |topName|.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
      ENDIF.
      DATA(t32) = |description|.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
      ENDIF.
      DATA(t34) = |parsedMessages|.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
      ENDIF.
      DATA(t36) = |textsTranslations|.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
      ENDIF.
      t9 = t11.
    ELSE.
      DATA t38 TYPE REF TO zcl_lnt_parsed_message_class.
      CLEAR t38.
      t9 = t38.
    ENDIF.
    me->xml = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `xml`.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t39 = t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = t39.
    IF t44 IS INITIAL.
      t43 = abap_true.
    ENDIF.
    IF t43 = abap_true.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      t42 = t45.
    ELSE.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      DATA(t47) = t39.
      t46 = t47.
      t42 = t46.
    ENDIF.
    t41 = t42.
    DATA(t48) = VALUE abap_bool( ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = t41.
    t49 = t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    t51 = t52.
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = t49.
    IF t54 IS INITIAL.
      t53 = abap_true.
    ENDIF.
    t48 = t53.
    IF t48 = abap_true.
      RETURN.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
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
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = t41.
    t65 = t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = VALUE abap_bool( ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = t65.
    CLEAR t69.
    IF t70 IS BOUND.
      t69 = t70.
    ENDIF.
    IF t69 IS NOT BOUND.
      t68 = abap_true.
    ELSE.
      t68 = xsdbool( t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t68 = abap_true.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      t67 = t71.
    ELSE.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      DATA(t74) = t65.
      t73 = t74.
      DATA(t75) = |abapGit|.
      t72 = t73->get( p0 = t75 ).
      t67 = t72.
    ENDIF.
    t64 = t67.
    t63 = t64.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = VALUE abap_bool( ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = t63.
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
      CLEAR t81.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      DATA(t83) = t63.
      t82 = t83.
      DATA(t84) = |asx:abap|.
      t81 = t82->get( p0 = t84 ).
      t76 = t81.
    ENDIF.
    t62 = t76.
    t61 = t62.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = VALUE abap_bool( ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = t61.
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
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      DATA(t92) = t61.
      t91 = t92.
      DATA(t93) = |asx:values|.
      t90 = t91->get( p0 = t93 ).
      t85 = t90.
    ENDIF.
    t60 = t85.
    t59 = t60.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = VALUE abap_bool( ).
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA(t97) = t59.
    CLEAR t96.
    IF t97 IS BOUND.
      t96 = t97.
    ENDIF.
    IF t96 IS NOT BOUND.
      t95 = abap_true.
    ELSE.
      t95 = xsdbool( t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t95 = abap_true.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      t94 = t98.
    ELSE.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      DATA(t101) = t59.
      t100 = t101.
      DATA(t102) = |T100A|.
      t99 = t100->get( p0 = t102 ).
      t94 = t99.
    ENDIF.
    t58 = t94.
    t57 = t58.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA(t104) = VALUE abap_bool( ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = t57.
    CLEAR t105.
    IF t106 IS BOUND.
      t105 = t106.
    ENDIF.
    IF t105 IS NOT BOUND.
      t104 = abap_true.
    ELSE.
      t104 = xsdbool( t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t104 = abap_true.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      t103 = t107.
    ELSE.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      DATA(t110) = t57.
      t109 = t110.
      DATA(t111) = |ARBGB|.
      t108 = t109->get( p0 = t111 ).
      t103 = t108.
    ENDIF.
    t56 = t103.
    t55 = t56.
    DATA t112 TYPE REF TO zcl_lnt_parsed_message_class.
    CLEAR t112.
    DATA(t113) = me->xml.
    t112 = t113.
    DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t114.
    DATA(t115) = VALUE abap_bool( ).
    DATA(t116) = t55.
    IF t116 IS INITIAL.
      t115 = abap_true.
    ENDIF.
    IF t115 = abap_true.
      DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t117.
      t114 = t117.
    ELSE.
      DATA(t118) = VALUE string( ).
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t119.
      DATA(t120) = t55.
      t119 = t120.
      t118 = t119->as_string( ).
      DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t121->has = abap_true.
      t121->value = t118.
      t114 = t121.
    ENDIF.
    t112->top_name = t114.
    DELETE t112->zlnt_record_delet_0597644d88b4 WHERE table_line = `topName`.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `topName` p1 = t122 ).
    ENDIF.
    DATA(t123) = |topName|.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
    ENDIF.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
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
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA(t136) = t41.
    t135 = t136.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA(t138) = VALUE abap_bool( ).
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA(t140) = t135.
    CLEAR t139.
    IF t140 IS BOUND.
      t139 = t140.
    ENDIF.
    IF t139 IS NOT BOUND.
      t138 = abap_true.
    ELSE.
      t138 = xsdbool( t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t138 = abap_true.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t141.
      t137 = t141.
    ELSE.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t142.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      DATA(t144) = t135.
      t143 = t144.
      DATA(t145) = |abapGit|.
      t142 = t143->get( p0 = t145 ).
      t137 = t142.
    ENDIF.
    t134 = t137.
    t133 = t134.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = VALUE abap_bool( ).
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA(t149) = t133.
    CLEAR t148.
    IF t149 IS BOUND.
      t148 = t149.
    ENDIF.
    IF t148 IS NOT BOUND.
      t147 = abap_true.
    ELSE.
      t147 = xsdbool( t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t147 = abap_true.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      t146 = t150.
    ELSE.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t152.
      DATA(t153) = t133.
      t152 = t153.
      DATA(t154) = |asx:abap|.
      t151 = t152->get( p0 = t154 ).
      t146 = t151.
    ENDIF.
    t132 = t146.
    t131 = t132.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA(t156) = VALUE abap_bool( ).
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = t131.
    CLEAR t157.
    IF t158 IS BOUND.
      t157 = t158.
    ENDIF.
    IF t157 IS NOT BOUND.
      t156 = abap_true.
    ELSE.
      t156 = xsdbool( t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t156 = abap_true.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t159.
      t155 = t159.
    ELSE.
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t160.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t161.
      DATA(t162) = t131.
      t161 = t162.
      DATA(t163) = |asx:values|.
      t160 = t161->get( p0 = t163 ).
      t155 = t160.
    ENDIF.
    t130 = t155.
    t129 = t130.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA(t165) = VALUE abap_bool( ).
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA(t167) = t129.
    CLEAR t166.
    IF t167 IS BOUND.
      t166 = t167.
    ENDIF.
    IF t166 IS NOT BOUND.
      t165 = abap_true.
    ELSE.
      t165 = xsdbool( t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t165 = abap_true.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      t164 = t168.
    ELSE.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t170.
      DATA(t171) = t129.
      t170 = t171.
      DATA(t172) = |T100A|.
      t169 = t170->get( p0 = t172 ).
      t164 = t169.
    ENDIF.
    t128 = t164.
    t127 = t128.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA(t174) = VALUE abap_bool( ).
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA(t176) = t127.
    CLEAR t175.
    IF t176 IS BOUND.
      t175 = t176.
    ENDIF.
    IF t175 IS NOT BOUND.
      t174 = abap_true.
    ELSE.
      t174 = xsdbool( t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t174 = abap_true.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      t173 = t177.
    ELSE.
      DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t178.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t179.
      DATA(t180) = t127.
      t179 = t180.
      DATA(t181) = |STEXT|.
      t178 = t179->get( p0 = t181 ).
      t173 = t178.
    ENDIF.
    t126 = t173.
    t125 = t126.
    DATA t182 TYPE REF TO zcl_lnt_parsed_message_class.
    CLEAR t182.
    DATA(t183) = me->xml.
    t182 = t183.
    DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t184.
    DATA(t185) = VALUE abap_bool( ).
    DATA(t186) = t125.
    IF t186 IS INITIAL.
      t185 = abap_true.
    ENDIF.
    IF t185 = abap_true.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t187.
      t184 = t187.
    ELSE.
      DATA(t188) = VALUE string( ).
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t189.
      DATA(t190) = t125.
      t189 = t190.
      t188 = t189->as_string( ).
      DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t191->has = abap_true.
      t191->value = t188.
      t184 = t191.
    ENDIF.
    t182->description = t184.
    DELETE t182->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t192 ).
    ENDIF.
    DATA(t193) = |description|.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t193 p1 = t194 ).
    ENDIF.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA(t204) = t41.
    t203 = t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA(t206) = VALUE abap_bool( ).
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA(t208) = t203.
    CLEAR t207.
    IF t208 IS BOUND.
      t207 = t208.
    ENDIF.
    IF t207 IS NOT BOUND.
      t206 = abap_true.
    ELSE.
      t206 = xsdbool( t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t206 = abap_true.
      DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t209.
      t205 = t209.
    ELSE.
      DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t210.
      DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t211.
      DATA(t212) = t203.
      t211 = t212.
      DATA(t213) = |abapGit|.
      t210 = t211->get( p0 = t213 ).
      t205 = t210.
    ENDIF.
    t202 = t205.
    t201 = t202.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA(t215) = VALUE abap_bool( ).
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA(t217) = t201.
    CLEAR t216.
    IF t217 IS BOUND.
      t216 = t217.
    ENDIF.
    IF t216 IS NOT BOUND.
      t215 = abap_true.
    ELSE.
      t215 = xsdbool( t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t215 = abap_true.
      DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t218.
      t214 = t218.
    ELSE.
      DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t219.
      DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t220.
      DATA(t221) = t201.
      t220 = t221.
      DATA(t222) = |asx:abap|.
      t219 = t220->get( p0 = t222 ).
      t214 = t219.
    ENDIF.
    t200 = t214.
    t199 = t200.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA(t224) = VALUE abap_bool( ).
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA(t226) = t199.
    CLEAR t225.
    IF t226 IS BOUND.
      t225 = t226.
    ENDIF.
    IF t225 IS NOT BOUND.
      t224 = abap_true.
    ELSE.
      t224 = xsdbool( t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t224 = abap_true.
      DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t227.
      t223 = t227.
    ELSE.
      DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t228.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t229.
      DATA(t230) = t199.
      t229 = t230.
      DATA(t231) = |asx:values|.
      t228 = t229->get( p0 = t231 ).
      t223 = t228.
    ENDIF.
    t198 = t223.
    t197 = t198.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA(t233) = VALUE abap_bool( ).
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA(t235) = t197.
    CLEAR t234.
    IF t235 IS BOUND.
      t234 = t235.
    ENDIF.
    IF t234 IS NOT BOUND.
      t233 = abap_true.
    ELSE.
      t233 = xsdbool( t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t233 = abap_true.
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t236.
      t232 = t236.
    ELSE.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t237.
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t238.
      DATA(t239) = t197.
      t238 = t239.
      DATA(t240) = |T100|.
      t237 = t238->get( p0 = t240 ).
      t232 = t237.
    ENDIF.
    t196 = t232.
    t195 = t196.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    DATA(t243) = VALUE abap_bool( ).
    DATA(t244) = t195.
    IF t244 IS INITIAL.
      t243 = abap_true.
    ENDIF.
    IF t243 = abap_true.
      DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t245.
      t242 = t245.
    ELSE.
      DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t246.
      DATA(t247) = t195.
      t246 = t247.
      t242 = t246.
    ENDIF.
    t241 = t242.
    DATA(t248) = VALUE abap_bool( ).
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA(t250) = t241.
    t249 = t250.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    t251 = t252.
    DATA(t253) = VALUE abap_bool( ).
    DATA(t254) = t249.
    IF t254 IS INITIAL.
      t253 = abap_true.
    ENDIF.
    t248 = t253.
    IF t248 = abap_true.
      RETURN.
    ENDIF.
    DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA(t258) = t241.
    t257 = t258.
    DATA(t259) = |T100|.
    t256 = t257->get( p0 = t259 ).
    t255 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t256 ).
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA t261 TYPE REF TO object.
    CLEAR t261.
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
      DATA(t270) = me->xml.
      t269 = t270.
      t268 = t269->parsed_messages.
      t267 = t268.
      DATA t271 TYPE REF TO zcl_lnt_ty_message.
      CLEAR t271.
      DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t272.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t273.
      DATA(t274) = t260.
      DATA(t275) = |MSGNR|.
      t273 = t274->get( p0 = t275 ).
      t272 = t273.
      DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t276.
      DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t277.
      DATA(t278) = t260.
      DATA(t279) = |ARBGB|.
      t277 = t278->get( p0 = t279 ).
      t276 = t277.
      DATA t280 TYPE REF TO zcl_lnt_ty_message.
      CLEAR t280.
      DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t281.
      DATA(t282) = VALUE abap_bool( ).
      DATA(t283) = t272.
      IF t283 IS INITIAL.
        t282 = abap_true.
      ENDIF.
      IF t282 = abap_true.
        DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t284.
        t281 = t284.
      ELSE.
        DATA(t285) = VALUE string( ).
        DATA(t286) = t272.
        t285 = t286->as_string( ).
        DATA(t287) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t287->has = abap_true.
        t287->value = t285.
        t281 = t287.
      ENDIF.
      DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t288.
      DATA(t289) = abap_true.
      IF t289 = abap_true.
        DATA(t290) = VALUE string( ).
        DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t291.
        DATA(t292) = t260.
        DATA(t293) = |TEXT|.
        t291 = t292->get( p0 = t293 ).
        t290 = zcl_lnt_xml_utils_module=>unescape( i_str = t291 ).
        DATA(t294) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t294->has = abap_true.
        t294->value = t290.
        t288 = t294.
      ELSE.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t295.
        t288 = t295.
      ENDIF.
      DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t296.
      DATA(t297) = VALUE abap_bool( ).
      DATA(t298) = t276.
      IF t298 IS INITIAL.
        t297 = abap_true.
      ENDIF.
      IF t297 = abap_true.
        DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t299.
        t296 = t299.
      ELSE.
        DATA(t300) = VALUE string( ).
        DATA(t301) = t276.
        t300 = t301->as_string( ).
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
    CLEAR t303.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    DATA(t312) = t41.
    t311 = t312.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA(t314) = VALUE abap_bool( ).
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA(t316) = t311.
    CLEAR t315.
    IF t316 IS BOUND.
      t315 = t316.
    ENDIF.
    IF t315 IS NOT BOUND.
      t314 = abap_true.
    ELSE.
      t314 = xsdbool( t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t314 = abap_true.
      DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t317.
      t313 = t317.
    ELSE.
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t318.
      DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t319.
      DATA(t320) = t311.
      t319 = t320.
      DATA(t321) = |abapGit|.
      t318 = t319->get( p0 = t321 ).
      t313 = t318.
    ENDIF.
    t310 = t313.
    t309 = t310.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA(t323) = VALUE abap_bool( ).
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA(t325) = t309.
    CLEAR t324.
    IF t325 IS BOUND.
      t324 = t325.
    ENDIF.
    IF t324 IS NOT BOUND.
      t323 = abap_true.
    ELSE.
      t323 = xsdbool( t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t323 = abap_true.
      DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t326.
      t322 = t326.
    ELSE.
      DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t327.
      DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t328.
      DATA(t329) = t309.
      t328 = t329.
      DATA(t330) = |asx:abap|.
      t327 = t328->get( p0 = t330 ).
      t322 = t327.
    ENDIF.
    t308 = t322.
    t307 = t308.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t331.
    DATA(t332) = VALUE abap_bool( ).
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA(t334) = t307.
    CLEAR t333.
    IF t334 IS BOUND.
      t333 = t334.
    ENDIF.
    IF t333 IS NOT BOUND.
      t332 = abap_true.
    ELSE.
      t332 = xsdbool( t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t332 = abap_true.
      DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t335.
      t331 = t335.
    ELSE.
      DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t336.
      DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t337.
      DATA(t338) = t307.
      t337 = t338.
      DATA(t339) = |asx:values|.
      t336 = t337->get( p0 = t339 ).
      t331 = t336.
    ENDIF.
    t306 = t331.
    t305 = t306.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA(t341) = VALUE abap_bool( ).
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t342.
    DATA(t343) = t305.
    CLEAR t342.
    IF t343 IS BOUND.
      t342 = t343.
    ENDIF.
    IF t342 IS NOT BOUND.
      t341 = abap_true.
    ELSE.
      t341 = xsdbool( t342->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t341 = abap_true.
      DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t344.
      t340 = t344.
    ELSE.
      DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t345.
      DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t346.
      DATA(t347) = t305.
      t346 = t347.
      DATA(t348) = |T100_TEXTS|.
      t345 = t346->get( p0 = t348 ).
      t340 = t345.
    ENDIF.
    t304 = t340.
    t303 = t304.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA(t351) = VALUE abap_bool( ).
    DATA(t352) = t303.
    IF t352 IS INITIAL.
      t351 = abap_true.
    ENDIF.
    IF t351 = abap_true.
      DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t353.
      t350 = t353.
    ELSE.
      DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t354.
      DATA(t355) = t303.
      t354 = t355.
      t350 = t354.
    ENDIF.
    t349 = t350.
    DATA(t356) = VALUE abap_bool( ).
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t357.
    DATA(t358) = t349.
    t357 = t358.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t359.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t360.
    t359 = t360.
    DATA(t361) = VALUE abap_bool( ).
    DATA(t362) = t357.
    IF t362 IS INITIAL.
      t361 = abap_true.
    ENDIF.
    t356 = t361.
    IF t356 = abap_true.
      RETURN.
    ENDIF.
    DATA t363 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t363.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t364.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t366.
    DATA(t367) = t349.
    t366 = t367.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t368.
    DATA(t369) = VALUE abap_bool( ).
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    DATA(t371) = t366.
    CLEAR t370.
    IF t371 IS BOUND.
      t370 = t371.
    ENDIF.
    IF t370 IS NOT BOUND.
      t369 = abap_true.
    ELSE.
      t369 = xsdbool( t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t369 = abap_true.
      DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t372.
      t368 = t372.
    ELSE.
      DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t373.
      DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t374.
      DATA(t375) = t366.
      t374 = t375.
      DATA(t376) = |item|.
      t373 = t374->get( p0 = t376 ).
      t368 = t373.
    ENDIF.
    t365 = t368.
    CLEAR t364.
    IF t365 IS BOUND.
      t364 = t365.
    ENDIF.
    t363 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t364 ).
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA t378 TYPE REF TO object.
    CLEAR t378.
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
      DATA(t387) = me->xml.
      t386 = t387.
      t385 = t386->texts_translations.
      t384 = t385.
      DATA t388 TYPE REF TO zcl_lnt_shape_327d7720.
      CLEAR t388.
      DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t389.
      DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t390.
      DATA(t391) = t377.
      DATA(t392) = |SPRSL|.
      t390 = t391->get( p0 = t392 ).
      t389 = t390.
      DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t393.
      DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t394.
      DATA(t395) = t377.
      DATA(t396) = |MSGNR|.
      t394 = t395->get( p0 = t396 ).
      t393 = t394.
      DATA t397 TYPE REF TO zcl_lnt_shape_327d7720.
      CLEAR t397.
      DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t398.
      DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t399.
      DATA(t400) = VALUE abap_bool( ).
      DATA(t401) = t389.
      IF t401 IS INITIAL.
        t400 = abap_true.
      ENDIF.
      IF t400 = abap_true.
        DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t402.
        t399 = t402.
      ELSE.
        DATA(t403) = VALUE string( ).
        DATA(t404) = t389.
        t403 = t404->as_string( ).
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
      DATA(t408) = VALUE abap_bool( ).
      DATA(t409) = t393.
      IF t409 IS INITIAL.
        t408 = abap_true.
      ENDIF.
      IF t408 = abap_true.
        DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t410.
        t407 = t410.
      ELSE.
        DATA(t411) = VALUE string( ).
        DATA(t412) = t393.
        t411 = t412->as_string( ).
        DATA(t413) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t413->has = abap_true.
        t413->value = t411.
        t407 = t413.
      ENDIF.
      t406 = t407.
      DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t414.
      DATA t415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t415.
      DATA(t416) = abap_true.
      IF t416 = abap_true.
        DATA(t417) = VALUE string( ).
        DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t418.
        DATA(t419) = t377.
        DATA(t420) = |TEXT|.
        t418 = t419->get( p0 = t420 ).
        t417 = zcl_lnt_xml_utils_module=>unescape( i_str = t418 ).
        DATA(t421) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t421->has = abap_true.
        t421->value = t417.
        t415 = t421.
      ELSE.
        DATA t422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t422.
        t415 = t422.
      ENDIF.
      t414 = t415.
      t397 = NEW zcl_lnt_shape_327d7720( i_language = t398 i_number = t406 i_text = t414 ).
      CREATE OBJECT t397->zlnt_view_ownkeys_b0e8086400eb.
      t397->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t423.
      IF t397->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t397->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t423 ).
      ENDIF.
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
      IF t397->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t397->zlnt_json_ownkeys_70e5fd461788->put( p0 = t426 p1 = t427 ).
      ENDIF.
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
