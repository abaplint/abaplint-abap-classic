* TS: src/objects/domain.ts:22:1 Domain
CLASS zcl_lnt_domain DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_42a36aec.
    INTERFACES zif_lnt_union_864794cc.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_b346f020.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_conversion_exit RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_data_type RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_identifier REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_data_element TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS prs_instn_src_objct_dmn_ts_dmn RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS get_fixed_values RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_fixed_values_translations RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_aff_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_domain IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |DOMA|.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_instn_src_objct_dmn_ts_dmn( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_b346f020.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_b346f020.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->description.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_conversion_exit.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_instn_src_objct_dmn_ts_dmn( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_b346f020.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_b346f020.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->conversion_exit.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_data_type.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_instn_src_objct_dmn_ts_dmn( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_b346f020.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_b346f020.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->datatype_2b0f.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

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

  METHOD get_identifier.
    DATA t1 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t2) = CAST zcl_lnt_fi_identifier( super->get_identifier( ) ).
    t1 = t2.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND ).
    IF t3 = abap_true.
      DATA t5 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t5.
      DATA(t6) = abap_true.
      IF t6 = abap_true.
        DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t8) = t1.
        t7 = t8.
        t5 = t7.
      ELSE.
        DATA t9 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t9.
        t5 = t9.
      ENDIF.
      result = t5.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_file.
    DATA(t11) = CAST zif_lnt_file( me->get_aff_file( ) ).
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zif_lnt_file.
    DATA(t14) = t10.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t13.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    t12 = t17.
    IF t12 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t19.
      result = t19.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t23 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t24 TYPE REF TO zcl_lnt_position.
      DATA(t25) = CONV f( 1 ).
      DATA(t26) = CONV f( 1 ).
      DATA(t27) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t27->has = abap_true.
      t27->value = t26.
      t24 = NEW zcl_lnt_position( i_row = t25 i_col = t27 ).
      DATA t28 TYPE string.
      DATA t29 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t30) = me.
      t29 = t30.
      DATA t31 TYPE string.
      DATA(t32) = t29.
      t31 = t32->name.
      t28 = t31.
      t23 = NEW zcl_lnt_lx_identifier( i_start = t24 i_str = t28 ).
      DATA t33 TYPE string.
      DATA t34 TYPE REF TO zif_lnt_file.
      DATA(t35) = t10.
      t34 = t35.
      t33 = t34->get_filename( ).
      t22 = NEW zcl_lnt_fi_identifier( i_token = t23 i_filename = t33 ).
      t20 = t22.
    ELSE.
      DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t36.
      t20 = t36.
    ENDIF.
    result = t20.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_shape_b346f020.
    CLEAR t1.
    me->parsed_xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD parse_type.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA(t6) = me->parsed_xml.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA(t11) = CAST zcl_lnt_iparse_result( me->prs_instn_src_objct_dmn_ts_dmn( ) ).
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA(t14) = me->parsed_xml.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t13.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    t12 = t17.
    IF t12 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t19.
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA(t22) = |Domain |.
      DATA t23 TYPE string.
      DATA t24 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t25) = me.
      t24 = t25.
      DATA t26 TYPE string.
      DATA(t27) = t24.
      t26 = t27->name.
      t23 = t26.
      DATA(t28) = strlen( t22 ).
      t21 = |{ t22 }{ t23 }|.
      DATA(t29) = | parser error|.
      DATA(t30) = strlen( t21 ).
      t20 = |{ t21 }{ t29 }|.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA(t32) = abap_true.
      IF t32 = abap_true.
        DATA t33 TYPE string.
        DATA t34 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t35) = me.
        t34 = t35.
        DATA t36 TYPE string.
        DATA(t37) = t34.
        t36 = t37->name.
        t33 = t36.
        DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t38->has = abap_true.
        t38->value = t33.
        t31 = t38.
      ELSE.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        t31 = t39.
      ENDIF.
      t19 = NEW zcl_lnt_unknown_type( i_error = t20 i_qualified_name = t31 ).
      result = t19.
      RETURN.
    ENDIF.
    DATA t40 TYPE REF TO zcl_lnt_ddic.
    DATA t41 TYPE REF TO zcl_lnt_ddic.
    DATA(t42) = t1.
    t41 = NEW zcl_lnt_ddic( i_reg_f149 = t42 ).
    t40 = t41.
    DATA t43 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t43.
    DATA(t44) = t40.
    DATA t45 TYPE REF TO zcl_lnt_shape_4a88086c.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t48 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA(t49) = me->parsed_xml.
    t48 = t49.
    t47 = t48->datatype_2b0f.
    t46 = t47.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t52 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA(t53) = me->parsed_xml.
    t52 = t53.
    t51 = t52->length.
    t50 = t51.
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t56 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA(t57) = me->parsed_xml.
    t56 = t57.
    t55 = t56->decimals_29bf.
    t54 = t55.
    DATA t58 TYPE string.
    DATA t59 TYPE string.
    DATA t60 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t61) = me.
    t60 = t61.
    DATA t62 TYPE string.
    DATA(t63) = t60.
    t62 = t63->name.
    t59 = t62.
    t58 = t59.
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t65) = t2.
    t64 = t65.
    DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t68 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA(t69) = me->parsed_xml.
    t68 = t69.
    t67 = t68->conversion_exit.
    t66 = t67.
    DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t71) = t2.
    t70 = t71.
    DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t73) = t3.
    t72 = t73.
    t45 = NEW zcl_lnt_shape_4a88086c( i_text = t46 i_length = t50 i_decimals_2eed = t54 i_info_text = t58 i_qualified_name = t64 i_conversion_exit = t66 i_ddic_name = t70 i_description = t72 ).
    CREATE OBJECT t45->zlnt_view_ownkeys_b0e8086400eb.
    t45->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `text` p1 = t74 ).
    ENDIF.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t75 ).
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t76 ).
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `infoText` p1 = t77 ).
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t78 ).
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t79 ).
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t80 ).
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t81 ).
    ENDIF.
    CREATE OBJECT t45->zlnt_json_ownkeys_70e5fd461788.
    t45->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t82) = |text|.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
    ENDIF.
    DATA(t84) = |length|.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
    ENDIF.
    DATA(t86) = |decimals|.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
    ENDIF.
    DATA(t88) = |infoText|.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t88 p1 = t89 ).
    ENDIF.
    DATA(t90) = |qualifiedName|.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t90 p1 = t91 ).
    ENDIF.
    DATA(t92) = |conversionExit|.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
    ENDIF.
    DATA(t94) = |ddicName|.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
    ENDIF.
    DATA(t96) = |description|.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
    ENDIF.
    t43 = t44->text_to_type( i_input_967e = t45 ).
    result = t43.

  ENDMETHOD.

  METHOD prs_instn_src_objct_dmn_ts_dmn.
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
    DATA t19 TYPE REF TO zcl_lnt_shape_b346f020.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_shape_b346f020.
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
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t30 = t31.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t33.
      t32 = t33.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t35.
      t34 = t35.
      t21 = NEW zcl_lnt_shape_b346f020( i_description = t22 i_datatype_9e1e = t24 i_length = t26 i_decimals_2eed = t28 i_conversion_exit = t30 i_values = t32 i_values_translations = t34 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t19 = t21.
    ELSE.
      DATA t36 TYPE REF TO zcl_lnt_shape_b346f020.
      CLEAR t36.
      t19 = t36.
    ENDIF.
    me->parsed_xml = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t37 TYPE REF TO zif_lnt_file.
    CLEAR t37.
    DATA(t38) = CAST zif_lnt_file( me->get_aff_file( ) ).
    t37 = t38.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = t37.
    t39 = xsdbool( t40 IS BOUND ).
    IF t39 = abap_true.
      DATA t41 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t41.
      TRY.
          DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t42.
          DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t43.
          DATA(t44) = VALUE string( ).
          DATA t45 TYPE REF TO zif_lnt_file.
          CLEAR t45.
          DATA(t46) = t37.
          t45 = t46.
          t44 = t45->get_raw( ).
          TRY.
              t43 = zlnt_runtime_json_7c6b3012af76=>parse( t44 ).
            CATCH zlnt_exception_js_ebcc2df7d5e4.
              DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t47->has = abap_true.
              t47->value = `Invalid JSON`.
              DATA(t48) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t47 ).
              DATA(t49) = NEW zlnt_exception_cl_30eec8e8805d( ).
              t49->payload = t48.
              DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t50.
              CLEAR t50.
              IF t48 IS BOUND.
                DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t51.
                DATA t52 TYPE REF TO object.
                CLEAR t52.
                CLEAR t51.
                t52 = t48.
                TRY.
                    t50 ?= t52.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t50 IS NOT BOUND.
                  TRY.
                      t51 ?= t48.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t51 IS BOUND.
                    t50 = t51->source( ).
                  ENDIF.
                  IF t50 IS NOT BOUND.
                    CREATE OBJECT t50.
                    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t50->oval = t48.
                  ENDIF.
                ENDIF.
              ENDIF.
              t49->source_value = t50.
              RAISE EXCEPTION t49.
          ENDTRY.
          t42 = t43.
          DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t53.
          DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t54.
          DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t55.
          DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t56.
          DATA(t57) = t42.
          DATA(t58) = |header|.
          t56 = t57->get( p0 = t58 ).
          t55 = t56.
          DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t59.
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = t55.
          IF t61 IS NOT BOUND.
            t60 = abap_true.
          ELSE.
            t60 = xsdbool( t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t60 = abap_true.
            DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t62.
            t59 = t62.
          ELSE.
            DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t63.
            DATA(t64) = t55.
            DATA(t65) = |originalLanguage|.
            t63 = t64->get( p0 = t65 ).
            t59 = t63.
          ENDIF.
          t54 = t59.
          t53 = t54.
          DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t66.
          DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t67.
          DATA(t68) = VALUE abap_bool( ).
          DATA(t69) = t53.
          IF t69 IS INITIAL.
            t68 = abap_true.
          ENDIF.
          IF t68 = abap_true.
            DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t70.
            t67 = t70.
          ELSE.
            DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t71.
            DATA(t72) = t53.
            t71 = t72.
            t67 = t71.
          ENDIF.
          t66 = t67.
          DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t73.
          DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t74.
          CREATE OBJECT t74.
          t73 = t74.
          DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t75.
          DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t76.
          DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t77.
          DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t78.
          DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t79.
          DATA(t80) = t42.
          DATA(t81) = |fixedValues|.
          t79 = t80->get( p0 = t81 ).
          t78 = t79.
          DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t82.
          DATA(t83) = VALUE abap_bool( ).
          DATA(t84) = t78.
          IF t84 IS NOT BOUND.
            t83 = abap_true.
          ELSE.
            t83 = xsdbool( t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t83 = abap_true.
            DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t85.
            DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t86.
            CREATE OBJECT t86.
            CLEAR t85.
            IF t86 IS BOUND.
              DATA t87 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t87.
              DATA t88 TYPE REF TO object.
              CLEAR t88.
              CLEAR t87.
              t88 = t86.
              TRY.
                  t85 ?= t88.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t85 IS NOT BOUND.
                TRY.
                    t87 ?= t86.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t87 IS BOUND.
                  t85 = t87->source( ).
                ENDIF.
                IF t85 IS NOT BOUND.
                  CREATE OBJECT t85.
                  t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t85->oval = t86.
                ENDIF.
              ENDIF.
            ENDIF.
            t82 = t85.
          ELSE.
            DATA(t89) = t78.
            t82 = t89.
          ENDIF.
          t77 = t82.
          CLEAR t76.
          IF t77 IS BOUND.
            IF t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t76 ?= t77->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT t76.
              t76->source = t77.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            t76->load( ).
            DATA t90 TYPE REF TO object.
            CLEAR t90.
            DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t91.
            LOOP AT t76->items INTO t90.
              DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t92.
              CLEAR t91.
              IF t90 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t92 ?= t90.
                t91 = t92.
              ELSE.
                IF t90 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
                  DATA t93 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t93.
                  t93 ?= t90.
                  CLEAR t91.
                  IF t93 IS BOUND.
                    CREATE OBJECT t91.
                    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
                    t91->cval = t93.
                  ENDIF.
                ELSE.
                  CLEAR t91.
                  IF t90 IS BOUND.
                    DATA t94 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    CLEAR t94.
                    DATA t95 TYPE REF TO object.
                    CLEAR t95.
                    CLEAR t94.
                    t95 = t90.
                    TRY.
                        t91 ?= t95.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t91 IS NOT BOUND.
                      TRY.
                          t94 ?= t90.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                      IF t94 IS BOUND.
                        t91 = t94->source( ).
                      ENDIF.
                      IF t91 IS NOT BOUND.
                        CREATE OBJECT t91.
                        t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        t91->oval = t90.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDLOOP.
          ENDIF.
          t75 = t76.
          DATA(t96) = t75.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t97.
          DATA t98 TYPE REF TO object.
          CLEAR t98.
          DATA(t99) = VALUE i( ).
          DO.
            t96->load( ).
            IF t99 >= lines( t96->items ).
              EXIT.
            ENDIF.
            CLEAR t98.
            READ TABLE t96->items INDEX t99 + 1 INTO t98.
            t99 = t99 + 1.
            DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t100.
            CLEAR t97.
            IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t100 ?= t98.
              t97 = t100.
            ELSE.
              IF t98 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
                DATA t101 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t101.
                t101 ?= t98.
                CLEAR t97.
                IF t101 IS BOUND.
                  CREATE OBJECT t97.
                  t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
                  t97->cval = t101.
                ENDIF.
              ELSE.
                CLEAR t97.
                IF t98 IS BOUND.
                  DATA t102 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t102.
                  DATA t103 TYPE REF TO object.
                  CLEAR t103.
                  CLEAR t102.
                  t103 = t98.
                  TRY.
                      t97 ?= t103.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t97 IS NOT BOUND.
                    TRY.
                        t102 ?= t98.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t102 IS BOUND.
                      t97 = t102->source( ).
                    ENDIF.
                    IF t97 IS NOT BOUND.
                      CREATE OBJECT t97.
                      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t97->oval = t98.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
            DATA(t104) = t73.
            DATA t105 TYPE REF TO zcl_lnt_domain_value.
            CLEAR t105.
            DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t106.
            DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t107.
            DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t108.
            DATA(t109) = t97.
            t108 = t109.
            DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t110.
            DATA(t111) = VALUE abap_bool( ).
            DATA(t112) = t108.
            IF t112 IS NOT BOUND.
              t111 = abap_true.
            ELSE.
              t111 = xsdbool( t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t111 = abap_true.
              DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t113.
              t110 = t113.
            ELSE.
              DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t114.
              DATA(t115) = t108.
              DATA(t116) = |fixedValue|.
              t114 = t115->get( p0 = t116 ).
              t110 = t114.
            ENDIF.
            t107 = t110.
            t106 = t107.
            DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t117.
            DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t118.
            DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t119.
            DATA(t120) = t97.
            t119 = t120.
            DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t121.
            DATA(t122) = VALUE abap_bool( ).
            DATA(t123) = t119.
            IF t123 IS NOT BOUND.
              t122 = abap_true.
            ELSE.
              t122 = xsdbool( t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t122 = abap_true.
              DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t124.
              t121 = t124.
            ELSE.
              DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t125.
              DATA(t126) = t119.
              DATA(t127) = |description|.
              t125 = t126->get( p0 = t127 ).
              t121 = t125.
            ENDIF.
            t118 = t121.
            t117 = t118.
            DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t128.
            DATA(t129) = t66.
            t128 = t129.
            DATA t130 TYPE REF TO zcl_lnt_domain_value.
            CLEAR t130.
            DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t131.
            DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t132.
            DATA(t133) = VALUE abap_bool( ).
            DATA(t134) = t106.
            IF t134 IS INITIAL.
              t133 = abap_true.
            ENDIF.
            IF t133 = abap_true.
              DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t135.
              t132 = t135.
            ELSE.
              DATA(t136) = VALUE string( ).
              DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t137.
              DATA(t138) = t106.
              t137 = t138.
              t136 = t137->as_string( ).
              DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t139->has = abap_true.
              t139->value = t136.
              t132 = t139.
            ENDIF.
            t131 = t132.
            DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t140.
            DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t141.
            DATA(t142) = abap_true.
            IF t142 = abap_true.
              DATA(t143) = ||.
              DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t144->has = abap_true.
              t144->value = t143.
              t141 = t144.
            ELSE.
              DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t145.
              t141 = t145.
            ENDIF.
            t140 = t141.
            DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t146.
            DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t147.
            DATA(t148) = VALUE abap_bool( ).
            DATA(t149) = t117.
            IF t149 IS INITIAL.
              t148 = abap_true.
            ENDIF.
            IF t148 = abap_true.
              DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t150.
              t147 = t150.
            ELSE.
              DATA(t151) = VALUE string( ).
              DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t152.
              DATA(t153) = t117.
              t152 = t153.
              t151 = t152->as_string( ).
              DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t154->has = abap_true.
              t154->value = t151.
              t147 = t154.
            ENDIF.
            t146 = t147.
            DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t155.
            DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t156.
            DATA(t157) = VALUE abap_bool( ).
            DATA(t158) = t128.
            IF t158 IS INITIAL.
              t157 = abap_true.
            ENDIF.
            IF t157 = abap_true.
              DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t159.
              t156 = t159.
            ELSE.
              DATA(t160) = VALUE string( ).
              DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t161.
              DATA(t162) = t128.
              t161 = t162.
              t160 = t161->as_string( ).
              DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t163->has = abap_true.
              t163->value = t160.
              t156 = t163.
            ENDIF.
            t155 = t156.
            t130 = NEW zcl_lnt_domain_value( i_language = t155 i_low_a740 = t131 i_high = t140 i_description = t146 ).
            CREATE OBJECT t130->zlnt_view_ownkeys_b0e8086400eb.
            t130->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t164.
            IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `low` p1 = t164 ).
            ENDIF.
            DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t165.
            IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `high` p1 = t165 ).
            ENDIF.
            DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t166.
            IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t166 ).
            ENDIF.
            DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t167.
            IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t167 ).
            ENDIF.
            CREATE OBJECT t130->zlnt_json_ownkeys_70e5fd461788.
            t130->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t168) = |low|.
            DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t169.
            IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
            ENDIF.
            DATA(t170) = |high|.
            DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t171.
            IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
            ENDIF.
            DATA(t172) = |description|.
            DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t173.
            IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
            ENDIF.
            DATA(t174) = |language|.
            DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t175.
            IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
            ENDIF.
            t105 = t130.
            t104->load( ).
            APPEND t105 TO t104->items.
            t104->save( ).
          ENDDO.
          DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t176.
          DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t177.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t179.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t180.
          DATA(t181) = t42.
          DATA(t182) = |fixedValueIntervals|.
          t180 = t181->get( p0 = t182 ).
          t179 = t180.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          DATA(t184) = VALUE abap_bool( ).
          DATA(t185) = t179.
          IF t185 IS NOT BOUND.
            t184 = abap_true.
          ELSE.
            t184 = xsdbool( t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t184 = abap_true.
            DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t186.
            DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t187.
            CREATE OBJECT t187.
            CLEAR t186.
            IF t187 IS BOUND.
              DATA t188 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t188.
              DATA t189 TYPE REF TO object.
              CLEAR t189.
              CLEAR t188.
              t189 = t187.
              TRY.
                  t186 ?= t189.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t186 IS NOT BOUND.
                TRY.
                    t188 ?= t187.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t188 IS BOUND.
                  t186 = t188->source( ).
                ENDIF.
                IF t186 IS NOT BOUND.
                  CREATE OBJECT t186.
                  t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t186->oval = t187.
                ENDIF.
              ENDIF.
            ENDIF.
            t183 = t186.
          ELSE.
            DATA(t190) = t179.
            t183 = t190.
          ENDIF.
          t178 = t183.
          CLEAR t177.
          IF t178 IS BOUND.
            IF t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t177 ?= t178->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT t177.
              t177->source = t178.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            t177->load( ).
            DATA t191 TYPE REF TO object.
            CLEAR t191.
            DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t192.
            LOOP AT t177->items INTO t191.
              DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t193.
              CLEAR t192.
              IF t191 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t193 ?= t191.
                t192 = t193.
              ELSE.
                IF t191 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
                  DATA t194 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t194.
                  t194 ?= t191.
                  CLEAR t192.
                  IF t194 IS BOUND.
                    CREATE OBJECT t192.
                    t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
                    t192->cval = t194.
                  ENDIF.
                ELSE.
                  CLEAR t192.
                  IF t191 IS BOUND.
                    DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    CLEAR t195.
                    DATA t196 TYPE REF TO object.
                    CLEAR t196.
                    CLEAR t195.
                    t196 = t191.
                    TRY.
                        t192 ?= t196.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t192 IS NOT BOUND.
                      TRY.
                          t195 ?= t191.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                      IF t195 IS BOUND.
                        t192 = t195->source( ).
                      ENDIF.
                      IF t192 IS NOT BOUND.
                        CREATE OBJECT t192.
                        t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        t192->oval = t191.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDLOOP.
          ENDIF.
          t176 = t177.
          DATA(t197) = t176.
          DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t198.
          DATA t199 TYPE REF TO object.
          CLEAR t199.
          DATA(t200) = VALUE i( ).
          DO.
            t197->load( ).
            IF t200 >= lines( t197->items ).
              EXIT.
            ENDIF.
            CLEAR t199.
            READ TABLE t197->items INDEX t200 + 1 INTO t199.
            t200 = t200 + 1.
            DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t201.
            CLEAR t198.
            IF t199 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t201 ?= t199.
              t198 = t201.
            ELSE.
              IF t199 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
                DATA t202 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t202.
                t202 ?= t199.
                CLEAR t198.
                IF t202 IS BOUND.
                  CREATE OBJECT t198.
                  t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
                  t198->cval = t202.
                ENDIF.
              ELSE.
                CLEAR t198.
                IF t199 IS BOUND.
                  DATA t203 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t203.
                  DATA t204 TYPE REF TO object.
                  CLEAR t204.
                  CLEAR t203.
                  t204 = t199.
                  TRY.
                      t198 ?= t204.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t198 IS NOT BOUND.
                    TRY.
                        t203 ?= t199.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t203 IS BOUND.
                      t198 = t203->source( ).
                    ENDIF.
                    IF t198 IS NOT BOUND.
                      CREATE OBJECT t198.
                      t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t198->oval = t199.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
            DATA(t205) = t73.
            DATA t206 TYPE REF TO zcl_lnt_domain_value.
            CLEAR t206.
            DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t207.
            DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t208.
            DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t209.
            DATA(t210) = t198.
            t209 = t210.
            DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t211.
            DATA(t212) = VALUE abap_bool( ).
            DATA(t213) = t209.
            IF t213 IS NOT BOUND.
              t212 = abap_true.
            ELSE.
              t212 = xsdbool( t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t212 = abap_true.
              DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t214.
              t211 = t214.
            ELSE.
              DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t215.
              DATA(t216) = t209.
              DATA(t217) = |lowLimit|.
              t215 = t216->get( p0 = t217 ).
              t211 = t215.
            ENDIF.
            t208 = t211.
            t207 = t208.
            DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t218.
            DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t219.
            DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t220.
            DATA(t221) = t198.
            t220 = t221.
            DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t222.
            DATA(t223) = VALUE abap_bool( ).
            DATA(t224) = t220.
            IF t224 IS NOT BOUND.
              t223 = abap_true.
            ELSE.
              t223 = xsdbool( t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t223 = abap_true.
              DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t225.
              t222 = t225.
            ELSE.
              DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t226.
              DATA(t227) = t220.
              DATA(t228) = |highLimit|.
              t226 = t227->get( p0 = t228 ).
              t222 = t226.
            ENDIF.
            t219 = t222.
            t218 = t219.
            DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t229.
            DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t230.
            DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t231.
            DATA(t232) = t198.
            t231 = t232.
            DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t233.
            DATA(t234) = VALUE abap_bool( ).
            DATA(t235) = t231.
            IF t235 IS NOT BOUND.
              t234 = abap_true.
            ELSE.
              t234 = xsdbool( t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t234 = abap_true.
              DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t236.
              t233 = t236.
            ELSE.
              DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t237.
              DATA(t238) = t231.
              DATA(t239) = |description|.
              t237 = t238->get( p0 = t239 ).
              t233 = t237.
            ENDIF.
            t230 = t233.
            t229 = t230.
            DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t240.
            DATA(t241) = t66.
            t240 = t241.
            DATA t242 TYPE REF TO zcl_lnt_domain_value.
            CLEAR t242.
            DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t243.
            DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t244.
            DATA(t245) = VALUE abap_bool( ).
            DATA(t246) = t207.
            IF t246 IS INITIAL.
              t245 = abap_true.
            ENDIF.
            IF t245 = abap_true.
              DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t247.
              t244 = t247.
            ELSE.
              DATA(t248) = VALUE string( ).
              DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t249.
              DATA(t250) = t207.
              t249 = t250.
              t248 = t249->as_string( ).
              DATA(t251) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t251->has = abap_true.
              t251->value = t248.
              t244 = t251.
            ENDIF.
            t243 = t244.
            DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t252.
            DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t253.
            DATA(t254) = VALUE abap_bool( ).
            DATA(t255) = t218.
            IF t255 IS INITIAL.
              t254 = abap_true.
            ENDIF.
            IF t254 = abap_true.
              DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t256.
              t253 = t256.
            ELSE.
              DATA(t257) = VALUE string( ).
              DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t258.
              DATA(t259) = t218.
              t258 = t259.
              t257 = t258->as_string( ).
              DATA(t260) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t260->has = abap_true.
              t260->value = t257.
              t253 = t260.
            ENDIF.
            t252 = t253.
            DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t261.
            DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t262.
            DATA(t263) = VALUE abap_bool( ).
            DATA(t264) = t229.
            IF t264 IS INITIAL.
              t263 = abap_true.
            ENDIF.
            IF t263 = abap_true.
              DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t265.
              t262 = t265.
            ELSE.
              DATA(t266) = VALUE string( ).
              DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t267.
              DATA(t268) = t229.
              t267 = t268.
              t266 = t267->as_string( ).
              DATA(t269) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t269->has = abap_true.
              t269->value = t266.
              t262 = t269.
            ENDIF.
            t261 = t262.
            DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t270.
            DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t271.
            DATA(t272) = VALUE abap_bool( ).
            DATA(t273) = t240.
            IF t273 IS INITIAL.
              t272 = abap_true.
            ENDIF.
            IF t272 = abap_true.
              DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t274.
              t271 = t274.
            ELSE.
              DATA(t275) = VALUE string( ).
              DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t276.
              DATA(t277) = t240.
              t276 = t277.
              t275 = t276->as_string( ).
              DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t278->has = abap_true.
              t278->value = t275.
              t271 = t278.
            ENDIF.
            t270 = t271.
            t242 = NEW zcl_lnt_domain_value( i_language = t270 i_low_a740 = t243 i_high = t252 i_description = t261 ).
            CREATE OBJECT t242->zlnt_view_ownkeys_b0e8086400eb.
            t242->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t279.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `low` p1 = t279 ).
            ENDIF.
            DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t280.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `high` p1 = t280 ).
            ENDIF.
            DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t281.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t281 ).
            ENDIF.
            DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t282.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t282 ).
            ENDIF.
            CREATE OBJECT t242->zlnt_json_ownkeys_70e5fd461788.
            t242->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t283) = |low|.
            DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t284.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = t283 p1 = t284 ).
            ENDIF.
            DATA(t285) = |high|.
            DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t286.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
            ENDIF.
            DATA(t287) = |description|.
            DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t288.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = t287 p1 = t288 ).
            ENDIF.
            DATA(t289) = |language|.
            DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t290.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = t289 p1 = t290 ).
            ENDIF.
            t206 = t242.
            t205->load( ).
            APPEND t206 TO t205->items.
            t205->save( ).
          ENDDO.
          DATA t291 TYPE REF TO zcl_lnt_shape_b346f020.
          CLEAR t291.
          DATA(t292) = abap_true.
          IF t292 = abap_true.
            DATA t293 TYPE REF TO zcl_lnt_shape_b346f020.
            CLEAR t293.
            DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t294.
            DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t295.
            DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t296.
            DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t297.
            DATA(t298) = t42.
            DATA(t299) = |header|.
            t297 = t298->get( p0 = t299 ).
            t296 = t297.
            DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t300.
            DATA(t301) = VALUE abap_bool( ).
            DATA(t302) = t296.
            IF t302 IS NOT BOUND.
              t301 = abap_true.
            ELSE.
              t301 = xsdbool( t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t301 = abap_true.
              DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t303.
              t300 = t303.
            ELSE.
              DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t304.
              DATA(t305) = t296.
              DATA(t306) = |description|.
              t304 = t305->get( p0 = t306 ).
              t300 = t304.
            ENDIF.
            t295 = t300.
            t294 = t295.
            DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t307.
            DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t308.
            DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t309.
            DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t310.
            DATA(t311) = t42.
            DATA(t312) = |format|.
            t310 = t311->get( p0 = t312 ).
            t309 = t310.
            DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t313.
            DATA(t314) = VALUE abap_bool( ).
            DATA(t315) = t309.
            IF t315 IS NOT BOUND.
              t314 = abap_true.
            ELSE.
              t314 = xsdbool( t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t314 = abap_true.
              DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t316.
              t313 = t316.
            ELSE.
              DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t317.
              DATA(t318) = t309.
              DATA(t319) = |dataType|.
              t317 = t318->get( p0 = t319 ).
              t313 = t317.
            ENDIF.
            t308 = t313.
            t307 = t308.
            DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t320.
            DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t321.
            DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t322.
            DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t323.
            DATA(t324) = t42.
            DATA(t325) = |outputCharacteristics|.
            t323 = t324->get( p0 = t325 ).
            t322 = t323.
            DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t326.
            DATA(t327) = VALUE abap_bool( ).
            DATA(t328) = t322.
            IF t328 IS NOT BOUND.
              t327 = abap_true.
            ELSE.
              t327 = xsdbool( t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t327 = abap_true.
              DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t329.
              t326 = t329.
            ELSE.
              DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t330.
              DATA(t331) = t322.
              DATA(t332) = |conversionRoutine|.
              t330 = t331->get( p0 = t332 ).
              t326 = t330.
            ENDIF.
            t321 = t326.
            t320 = t321.
            DATA t333 TYPE REF TO zcl_lnt_shape_b346f020.
            CLEAR t333.
            DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t334.
            DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t335.
            DATA(t336) = VALUE abap_bool( ).
            DATA(t337) = t294.
            IF t337 IS INITIAL.
              t336 = abap_true.
            ENDIF.
            IF t336 = abap_true.
              DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t338.
              t335 = t338.
            ELSE.
              DATA(t339) = VALUE string( ).
              DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t340.
              DATA(t341) = t294.
              t340 = t341.
              t339 = t340->as_string( ).
              DATA(t342) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t342->has = abap_true.
              t342->value = t339.
              t335 = t342.
            ENDIF.
            t334 = t335.
            DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t343.
            DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t344.
            DATA(t345) = VALUE abap_bool( ).
            DATA(t346) = t307.
            IF t346 IS INITIAL.
              t345 = abap_true.
            ENDIF.
            IF t345 = abap_true.
              DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t347.
              t344 = t347.
            ELSE.
              DATA(t348) = VALUE string( ).
              DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t349.
              DATA(t350) = t307.
              t349 = t350.
              t348 = t349->as_string( ).
              DATA(t351) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t351->has = abap_true.
              t351->value = t348.
              t344 = t351.
            ENDIF.
            t343 = t344.
            DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t352.
            DATA t353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t353.
            DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t354.
            DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t355.
            DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t356.
            DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t357.
            DATA(t358) = t42.
            DATA(t359) = |format|.
            t357 = t358->get( p0 = t359 ).
            t356 = t357.
            DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t360.
            DATA(t361) = VALUE abap_bool( ).
            DATA(t362) = t356.
            IF t362 IS NOT BOUND.
              t361 = abap_true.
            ELSE.
              t361 = xsdbool( t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t361 = abap_true.
              DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t363.
              t360 = t363.
            ELSE.
              DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t364.
              DATA(t365) = t356.
              DATA(t366) = |length|.
              t364 = t365->get( p0 = t366 ).
              t360 = t364.
            ENDIF.
            t355 = t360.
            t354 = t355.
            DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t367.
            DATA(t368) = VALUE abap_bool( ).
            DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t369.
            DATA(t370) = t354.
            CLEAR t369.
            IF t370 IS BOUND.
              t369 = t370.
            ENDIF.
            IF t369 IS NOT BOUND.
              t368 = abap_true.
            ELSE.
              t368 = xsdbool( t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t368 = abap_true.
              DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t371.
              t367 = t371.
            ELSE.
              DATA(t372) = VALUE string( ).
              DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t373.
              DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t374.
              DATA(t375) = t354.
              t374 = t375.
              t373 = t374.
              DATA(t376) = VALUE abap_bool( ).
              DATA(t377) = t373.
              IF t377 IS NOT BOUND.
                t376 = abap_true.
              ELSE.
                t376 = xsdbool( t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t376 = abap_true.
                DATA(t378) = NEW zlnt_exception_un_5f2d02892fe8( ).
                DATA(t379) = |src/objects/domain.ts:133:19|.
                t378->source_location = t379.
                RAISE EXCEPTION t378.
              ENDIF.
              DATA(t380) = VALUE string( ).
              DATA(t381) = t373.
              IF t381 IS BOUND.
                t380 = t381->to_string( ).
              ELSE.
                t380 = `undefined`.
              ENDIF.
              t372 = t380.
              DATA(t382) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t382->has = abap_true.
              t382->value = t372.
              t367 = t382.
            ENDIF.
            t353 = t367.
            t352 = t353.
            DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t383.
            DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t384.
            DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t385.
            DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t386.
            DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t387.
            DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t388.
            DATA(t389) = t42.
            DATA(t390) = |format|.
            t388 = t389->get( p0 = t390 ).
            t387 = t388.
            DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t391.
            DATA(t392) = VALUE abap_bool( ).
            DATA(t393) = t387.
            IF t393 IS NOT BOUND.
              t392 = abap_true.
            ELSE.
              t392 = xsdbool( t393->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t392 = abap_true.
              DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t394.
              t391 = t394.
            ELSE.
              DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t395.
              DATA(t396) = t387.
              DATA(t397) = |decimals|.
              t395 = t396->get( p0 = t397 ).
              t391 = t395.
            ENDIF.
            t386 = t391.
            t385 = t386.
            DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t398.
            DATA(t399) = VALUE abap_bool( ).
            DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t400.
            DATA(t401) = t385.
            CLEAR t400.
            IF t401 IS BOUND.
              t400 = t401.
            ENDIF.
            IF t400 IS NOT BOUND.
              t399 = abap_true.
            ELSE.
              t399 = xsdbool( t400->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t399 = abap_true.
              DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t402.
              t398 = t402.
            ELSE.
              DATA(t403) = VALUE string( ).
              DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t404.
              DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t405.
              DATA(t406) = t385.
              t405 = t406.
              t404 = t405.
              DATA(t407) = VALUE abap_bool( ).
              DATA(t408) = t404.
              IF t408 IS NOT BOUND.
                t407 = abap_true.
              ELSE.
                t407 = xsdbool( t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t407 = abap_true.
                DATA(t409) = NEW zlnt_exception_un_5f2d02892fe8( ).
                DATA(t410) = |src/objects/domain.ts:134:21|.
                t409->source_location = t410.
                RAISE EXCEPTION t409.
              ENDIF.
              DATA(t411) = VALUE string( ).
              DATA(t412) = t404.
              IF t412 IS BOUND.
                t411 = t412->to_string( ).
              ELSE.
                t411 = `undefined`.
              ENDIF.
              t403 = t411.
              DATA(t413) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t413->has = abap_true.
              t413->value = t403.
              t398 = t413.
            ENDIF.
            t384 = t398.
            t383 = t384.
            DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t414.
            DATA t415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t415.
            DATA(t416) = VALUE abap_bool( ).
            DATA(t417) = t320.
            IF t417 IS INITIAL.
              t416 = abap_true.
            ENDIF.
            IF t416 = abap_true.
              DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t418.
              t415 = t418.
            ELSE.
              DATA(t419) = VALUE string( ).
              DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t420.
              DATA(t421) = t320.
              t420 = t421.
              t419 = t420->as_string( ).
              DATA(t422) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t422->has = abap_true.
              t422->value = t419.
              t415 = t422.
            ENDIF.
            t414 = t415.
            DATA t423 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t423.
            DATA t424 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t424.
            DATA(t425) = abap_true.
            IF t425 = abap_true.
              DATA(t426) = t73.
              t424 = t426.
            ELSE.
              DATA t427 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t427.
              t424 = t427.
            ENDIF.
            t423 = t424.
            DATA t428 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t428.
            DATA t429 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t429.
            DATA(t430) = abap_true.
            IF t430 = abap_true.
              DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t431.
              CREATE OBJECT t431.
              t429 = t431.
            ELSE.
              DATA t432 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t432.
              t429 = t432.
            ENDIF.
            t428 = t429.
            t333 = NEW zcl_lnt_shape_b346f020( i_description = t334 i_datatype_9e1e = t343 i_length = t352 i_decimals_2eed = t383 i_conversion_exit = t414 i_values = t423 i_values_translations = t428 ).
            CREATE OBJECT t333->zlnt_view_ownkeys_b0e8086400eb.
            t333->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t433.
            IF t333->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t433 ).
            ENDIF.
            DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t434.
            IF t333->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `datatype` p1 = t434 ).
            ENDIF.
            DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t435.
            IF t333->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t435 ).
            ENDIF.
            DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t436.
            IF t333->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t436 ).
            ENDIF.
            DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t437.
            IF t333->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t437 ).
            ENDIF.
            DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t438.
            IF t333->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `values` p1 = t438 ).
            ENDIF.
            DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t439.
            IF t333->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `valuesTranslations` p1 = t439 ).
            ENDIF.
            CREATE OBJECT t333->zlnt_json_ownkeys_70e5fd461788.
            t333->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t440) = |description|.
            DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t441.
            IF t333->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t333->zlnt_json_ownkeys_70e5fd461788->put( p0 = t440 p1 = t441 ).
            ENDIF.
            DATA(t442) = |datatype|.
            DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t443.
            IF t333->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t333->zlnt_json_ownkeys_70e5fd461788->put( p0 = t442 p1 = t443 ).
            ENDIF.
            DATA(t444) = |length|.
            DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t445.
            IF t333->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t333->zlnt_json_ownkeys_70e5fd461788->put( p0 = t444 p1 = t445 ).
            ENDIF.
            DATA(t446) = |decimals|.
            DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t447.
            IF t333->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t333->zlnt_json_ownkeys_70e5fd461788->put( p0 = t446 p1 = t447 ).
            ENDIF.
            DATA(t448) = |conversionExit|.
            DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t449.
            IF t333->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t333->zlnt_json_ownkeys_70e5fd461788->put( p0 = t448 p1 = t449 ).
            ENDIF.
            DATA(t450) = |values|.
            DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t451.
            IF t333->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t333->zlnt_json_ownkeys_70e5fd461788->put( p0 = t450 p1 = t451 ).
            ENDIF.
            DATA(t452) = |valuesTranslations|.
            DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t453.
            IF t333->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t333->zlnt_json_ownkeys_70e5fd461788->put( p0 = t452 p1 = t453 ).
            ENDIF.
            t293 = t333.
            t291 = t293.
          ELSE.
            DATA t454 TYPE REF TO zcl_lnt_shape_b346f020.
            CLEAR t454.
            t291 = t454.
          ENDIF.
          me->parsed_xml = t291.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
        CATCH zlnt_exception_cl_30eec8e8805d INTO t41.
          DATA(t455) = t41->payload.
      ENDTRY.
      DATA(t456) = VALUE f( ).
      DATA(t457) = VALUE f( ).
      DATA(t458) = 0.
      t457 = zlnt_runtime_tele_970d5104e5f4=>now( ).
      t456 = t457.
      DATA t459 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t459.
      DATA(t460) = VALUE abap_bool( ).
      DATA(t461) = abap_true.
      t460 = t461.
      DATA(t462) = VALUE f( ).
      DATA(t463) = VALUE f( ).
      DATA(t464) = t456.
      DATA(t465) = t16.
      t463 = t464 - t465.
      t462 = t463.
      DATA t466 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t466.
      DATA t467 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t467.
      t466 = t467.
      t459 = NEW zcl_lnt_iparse_result( i_updated = t460 i_runtime = t462 i_runtime_extra = t466 ).
      CREATE OBJECT t459->zlnt_view_ownkeys_b0e8086400eb.
      t459->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t468.
      IF t459->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t459->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t468 ).
      ENDIF.
      DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t469.
      IF t459->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t459->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t469 ).
      ENDIF.
      CREATE OBJECT t459->zlnt_json_ownkeys_70e5fd461788.
      t459->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t470) = |updated|.
      DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t471.
      IF t459->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t459->zlnt_json_ownkeys_70e5fd461788->put( p0 = t470 p1 = t471 ).
      ENDIF.
      DATA(t472) = |runtime|.
      DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t473.
      IF t459->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t459->zlnt_json_ownkeys_70e5fd461788->put( p0 = t472 p1 = t473 ).
      ENDIF.
      result = t459.
      RETURN.
    ENDIF.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t474.
    DATA(t475) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t474 = t475.
    DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t476.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    DATA(t478) = VALUE abap_bool( ).
    DATA(t479) = t474.
    IF t479 IS INITIAL.
      t478 = abap_true.
    ENDIF.
    IF t478 = abap_true.
      DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t480.
      t477 = t480.
    ELSE.
      DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t481.
      DATA(t482) = t474.
      t481 = t482.
      t477 = t481.
    ENDIF.
    t476 = t477.
    DATA(t483) = VALUE abap_bool( ).
    DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t484.
    DATA(t485) = t476.
    t484 = t485.
    DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t486.
    DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t487.
    t486 = t487.
    DATA(t488) = VALUE abap_bool( ).
    DATA(t489) = t484.
    IF t489 IS INITIAL.
      t488 = abap_true.
    ENDIF.
    t483 = t488.
    IF t483 = abap_true.
      DATA t490 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t490.
      DATA(t491) = VALUE abap_bool( ).
      DATA(t492) = abap_false.
      t491 = t492.
      DATA(t493) = VALUE f( ).
      DATA(t494) = CONV f( 0 ).
      t493 = t494.
      DATA t495 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t495.
      DATA t496 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t496.
      t495 = t496.
      t490 = NEW zcl_lnt_iparse_result( i_updated = t491 i_runtime = t493 i_runtime_extra = t495 ).
      CREATE OBJECT t490->zlnt_view_ownkeys_b0e8086400eb.
      t490->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t497.
      IF t490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t497 ).
      ENDIF.
      DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t498.
      IF t490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t498 ).
      ENDIF.
      CREATE OBJECT t490->zlnt_json_ownkeys_70e5fd461788.
      t490->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t499) = |updated|.
      DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t500.
      IF t490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t499 p1 = t500 ).
      ENDIF.
      DATA(t501) = |runtime|.
      DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t502.
      IF t490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t501 p1 = t502 ).
      ENDIF.
      result = t490.
      RETURN.
    ENDIF.
    DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t503.
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t504.
    DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t505.
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t506.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t507.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t508.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t509.
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t510.
    DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t511.
    DATA(t512) = t476.
    t511 = t512.
    DATA(t513) = |abapGit|.
    t510 = t511->get( p0 = t513 ).
    t509 = t510.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t514.
    DATA(t515) = VALUE abap_bool( ).
    DATA(t516) = t509.
    IF t516 IS NOT BOUND.
      t515 = abap_true.
    ELSE.
      t515 = xsdbool( t516->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t515 = abap_true.
      DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t517.
      t514 = t517.
    ELSE.
      DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t518.
      DATA(t519) = t509.
      DATA(t520) = |asx:abap|.
      t518 = t519->get( p0 = t520 ).
      t514 = t518.
    ENDIF.
    t508 = t514.
    t507 = t508.
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t521.
    DATA(t522) = VALUE abap_bool( ).
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t523.
    DATA(t524) = t507.
    CLEAR t523.
    IF t524 IS BOUND.
      t523 = t524.
    ENDIF.
    IF t523 IS NOT BOUND.
      t522 = abap_true.
    ELSE.
      t522 = xsdbool( t523->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t522 = abap_true.
      DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t525.
      t521 = t525.
    ELSE.
      DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t526.
      DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t527.
      DATA(t528) = t507.
      t527 = t528.
      DATA(t529) = |asx:values|.
      t526 = t527->get( p0 = t529 ).
      t521 = t526.
    ENDIF.
    t506 = t521.
    t505 = t506.
    DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t530.
    DATA(t531) = VALUE abap_bool( ).
    DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t532.
    DATA(t533) = t505.
    CLEAR t532.
    IF t533 IS BOUND.
      t532 = t533.
    ENDIF.
    IF t532 IS NOT BOUND.
      t531 = abap_true.
    ELSE.
      t531 = xsdbool( t532->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t531 = abap_true.
      DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t534.
      t530 = t534.
    ELSE.
      DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t535.
      DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t536.
      DATA(t537) = t505.
      t536 = t537.
      DATA(t538) = |DD01V|.
      t535 = t536->get( p0 = t538 ).
      t530 = t535.
    ENDIF.
    t504 = t530.
    t503 = t504.
    DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t539.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t540.
    DATA(t541) = VALUE abap_bool( ).
    DATA(t542) = t503.
    IF t542 IS INITIAL.
      t541 = abap_true.
    ENDIF.
    IF t541 = abap_true.
      DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t543.
      t540 = t543.
    ELSE.
      DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t544.
      DATA(t545) = t503.
      t544 = t545.
      t540 = t544.
    ENDIF.
    t539 = t540.
    DATA t546 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t546.
    DATA t547 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t547.
    DATA t548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t548.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t549.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t550.
    DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t551.
    DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t552.
    DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t553.
    DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t554.
    DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t555.
    DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t556.
    DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t557.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t558.
    DATA(t559) = t476.
    t558 = t559.
    DATA(t560) = |abapGit|.
    t557 = t558->get( p0 = t560 ).
    t556 = t557.
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t561.
    DATA(t562) = VALUE abap_bool( ).
    DATA(t563) = t556.
    IF t563 IS NOT BOUND.
      t562 = abap_true.
    ELSE.
      t562 = xsdbool( t563->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t562 = abap_true.
      DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t564.
      t561 = t564.
    ELSE.
      DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t565.
      DATA(t566) = t556.
      DATA(t567) = |asx:abap|.
      t565 = t566->get( p0 = t567 ).
      t561 = t565.
    ENDIF.
    t555 = t561.
    t554 = t555.
    DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t568.
    DATA(t569) = VALUE abap_bool( ).
    DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t570.
    DATA(t571) = t554.
    CLEAR t570.
    IF t571 IS BOUND.
      t570 = t571.
    ENDIF.
    IF t570 IS NOT BOUND.
      t569 = abap_true.
    ELSE.
      t569 = xsdbool( t570->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t569 = abap_true.
      DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t572.
      t568 = t572.
    ELSE.
      DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t573.
      DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t574.
      DATA(t575) = t554.
      t574 = t575.
      DATA(t576) = |asx:values|.
      t573 = t574->get( p0 = t576 ).
      t568 = t573.
    ENDIF.
    t553 = t568.
    t552 = t553.
    DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t577.
    DATA(t578) = VALUE abap_bool( ).
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t579.
    DATA(t580) = t552.
    CLEAR t579.
    IF t580 IS BOUND.
      t579 = t580.
    ENDIF.
    IF t579 IS NOT BOUND.
      t578 = abap_true.
    ELSE.
      t578 = xsdbool( t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t578 = abap_true.
      DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t581.
      t577 = t581.
    ELSE.
      DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t582.
      DATA t583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t583.
      DATA(t584) = t552.
      t583 = t584.
      DATA(t585) = |DD07V_TAB|.
      t582 = t583->get( p0 = t585 ).
      t577 = t582.
    ENDIF.
    t551 = t577.
    t550 = t551.
    DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t586.
    DATA(t587) = VALUE abap_bool( ).
    DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t588.
    DATA(t589) = t550.
    CLEAR t588.
    IF t589 IS BOUND.
      t588 = t589.
    ENDIF.
    IF t588 IS NOT BOUND.
      t587 = abap_true.
    ELSE.
      t587 = xsdbool( t588->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t587 = abap_true.
      DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t590.
      t586 = t590.
    ELSE.
      DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t591.
      DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t592.
      DATA(t593) = t550.
      t592 = t593.
      DATA(t594) = |DD07V|.
      t591 = t592->get( p0 = t594 ).
      t586 = t591.
    ENDIF.
    t549 = t586.
    CLEAR t548.
    IF t549 IS BOUND.
      t548 = t549.
    ENDIF.
    t547 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t548 ).
    t546 = t547.
    DATA t595 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t595.
    DATA t596 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t596.
    CREATE OBJECT t596.
    t595 = t596.
    DATA(t597) = t546.
    DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t598.
    DATA t599 TYPE REF TO object.
    CLEAR t599.
    DATA(t600) = VALUE i( ).
    DO.
      t597->load( ).
      IF t600 >= lines( t597->items ).
        EXIT.
      ENDIF.
      CLEAR t599.
      READ TABLE t597->items INDEX t600 + 1 INTO t599.
      t600 = t600 + 1.
      DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t601.
      CLEAR t598.
      IF t599 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t601 ?= t599.
        t598 = t601.
      ELSE.
        IF t599 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t602 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t602.
          t602 ?= t599.
          CLEAR t598.
          IF t602 IS BOUND.
            CREATE OBJECT t598.
            t598->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t598->cval = t602.
          ENDIF.
        ELSE.
          CLEAR t598.
          IF t599 IS BOUND.
            DATA t603 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t603.
            DATA t604 TYPE REF TO object.
            CLEAR t604.
            CLEAR t603.
            t604 = t599.
            TRY.
                t598 ?= t604.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t598 IS NOT BOUND.
              TRY.
                  t603 ?= t599.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t603 IS BOUND.
                t598 = t603->source( ).
              ENDIF.
              IF t598 IS NOT BOUND.
                CREATE OBJECT t598.
                t598->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t598->oval = t599.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t605 TYPE REF TO zcl_lnt_domain_value.
      CLEAR t605.
      DATA t606 TYPE REF TO zcl_lnt_domain_value.
      CLEAR t606.
      DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t607.
      DATA t608 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t608.
      DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t609.
      DATA(t610) = t598.
      t609 = t610.
      DATA t611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t611.
      DATA(t612) = VALUE abap_bool( ).
      DATA(t613) = t609.
      IF t613 IS NOT BOUND.
        t612 = abap_true.
      ELSE.
        t612 = xsdbool( t613->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t612 = abap_true.
        DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t614.
        t611 = t614.
      ELSE.
        DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t615.
        DATA(t616) = t609.
        DATA(t617) = |DDTEXT|.
        t615 = t616->get( p0 = t617 ).
        t611 = t615.
      ENDIF.
      t608 = t611.
      t607 = t608.
      DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t618.
      DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t619.
      DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t620.
      DATA(t621) = t598.
      t620 = t621.
      DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t622.
      DATA(t623) = VALUE abap_bool( ).
      DATA(t624) = t620.
      IF t624 IS NOT BOUND.
        t623 = abap_true.
      ELSE.
        t623 = xsdbool( t624->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t623 = abap_true.
        DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t625.
        t622 = t625.
      ELSE.
        DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t626.
        DATA(t627) = t620.
        DATA(t628) = |DOMVALUE_L|.
        t626 = t627->get( p0 = t628 ).
        t622 = t626.
      ENDIF.
      t619 = t622.
      t618 = t619.
      DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t629.
      DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t630.
      DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t631.
      DATA(t632) = t598.
      t631 = t632.
      DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t633.
      DATA(t634) = VALUE abap_bool( ).
      DATA(t635) = t631.
      IF t635 IS NOT BOUND.
        t634 = abap_true.
      ELSE.
        t634 = xsdbool( t635->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t634 = abap_true.
        DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t636.
        t633 = t636.
      ELSE.
        DATA t637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t637.
        DATA(t638) = t631.
        DATA(t639) = |DOMVALUE_H|.
        t637 = t638->get( p0 = t639 ).
        t633 = t637.
      ENDIF.
      t630 = t633.
      t629 = t630.
      DATA t640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t640.
      DATA t641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t641.
      DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t642.
      DATA(t643) = t598.
      t642 = t643.
      DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t644.
      DATA(t645) = VALUE abap_bool( ).
      DATA(t646) = t642.
      IF t646 IS NOT BOUND.
        t645 = abap_true.
      ELSE.
        t645 = xsdbool( t646->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t645 = abap_true.
        DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t647.
        t644 = t647.
      ELSE.
        DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t648.
        DATA(t649) = t642.
        DATA(t650) = |DDLANGUAGE|.
        t648 = t649->get( p0 = t650 ).
        t644 = t648.
      ENDIF.
      t641 = t644.
      t640 = t641.
      DATA t651 TYPE REF TO zcl_lnt_domain_value.
      CLEAR t651.
      DATA t652 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t652.
      DATA t653 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t653.
      DATA(t654) = VALUE abap_bool( ).
      DATA(t655) = t607.
      IF t655 IS INITIAL.
        t654 = abap_true.
      ENDIF.
      IF t654 = abap_true.
        DATA t656 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t656.
        t653 = t656.
      ELSE.
        DATA(t657) = VALUE string( ).
        DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t658.
        DATA(t659) = t607.
        t658 = t659.
        t657 = t658->as_string( ).
        DATA(t660) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t660->has = abap_true.
        t660->value = t657.
        t653 = t660.
      ENDIF.
      t652 = t653.
      DATA t661 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t661.
      DATA t662 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t662.
      DATA(t663) = VALUE abap_bool( ).
      DATA(t664) = t618.
      IF t664 IS INITIAL.
        t663 = abap_true.
      ENDIF.
      IF t663 = abap_true.
        DATA t665 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t665.
        t662 = t665.
      ELSE.
        DATA(t666) = VALUE string( ).
        DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t667.
        DATA(t668) = t618.
        t667 = t668.
        t666 = t667->as_string( ).
        DATA(t669) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t669->has = abap_true.
        t669->value = t666.
        t662 = t669.
      ENDIF.
      t661 = t662.
      DATA t670 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t670.
      DATA t671 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t671.
      DATA(t672) = VALUE abap_bool( ).
      DATA(t673) = t629.
      IF t673 IS INITIAL.
        t672 = abap_true.
      ENDIF.
      IF t672 = abap_true.
        DATA t674 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t674.
        t671 = t674.
      ELSE.
        DATA(t675) = VALUE string( ).
        DATA t676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t676.
        DATA(t677) = t629.
        t676 = t677.
        t675 = t676->as_string( ).
        DATA(t678) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t678->has = abap_true.
        t678->value = t675.
        t671 = t678.
      ENDIF.
      t670 = t671.
      DATA t679 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t679.
      DATA t680 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t680.
      DATA(t681) = VALUE abap_bool( ).
      DATA(t682) = t640.
      IF t682 IS INITIAL.
        t681 = abap_true.
      ENDIF.
      IF t681 = abap_true.
        DATA t683 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t683.
        t680 = t683.
      ELSE.
        DATA(t684) = VALUE string( ).
        DATA t685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t685.
        DATA(t686) = t640.
        t685 = t686.
        t684 = t685->as_string( ).
        DATA(t687) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t687->has = abap_true.
        t687->value = t684.
        t680 = t687.
      ENDIF.
      t679 = t680.
      t651 = NEW zcl_lnt_domain_value( i_language = t679 i_low_a740 = t661 i_high = t670 i_description = t652 ).
      CREATE OBJECT t651->zlnt_view_ownkeys_b0e8086400eb.
      t651->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t688.
      IF t651->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t651->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t688 ).
      ENDIF.
      DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t689.
      IF t651->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t651->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `low` p1 = t689 ).
      ENDIF.
      DATA t690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t690.
      IF t651->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t651->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `high` p1 = t690 ).
      ENDIF.
      DATA t691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t691.
      IF t651->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t651->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t691 ).
      ENDIF.
      CREATE OBJECT t651->zlnt_json_ownkeys_70e5fd461788.
      t651->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t692) = |description|.
      DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t693.
      IF t651->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t651->zlnt_json_ownkeys_70e5fd461788->put( p0 = t692 p1 = t693 ).
      ENDIF.
      DATA(t694) = |low|.
      DATA t695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t695.
      IF t651->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t651->zlnt_json_ownkeys_70e5fd461788->put( p0 = t694 p1 = t695 ).
      ENDIF.
      DATA(t696) = |high|.
      DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t697.
      IF t651->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t651->zlnt_json_ownkeys_70e5fd461788->put( p0 = t696 p1 = t697 ).
      ENDIF.
      DATA(t698) = |language|.
      DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t699.
      IF t651->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t651->zlnt_json_ownkeys_70e5fd461788->put( p0 = t698 p1 = t699 ).
      ENDIF.
      t606 = t651.
      t605 = t606.
      DATA(t700) = t595.
      DATA(t701) = t605.
      t700->load( ).
      APPEND t701 TO t700->items.
      t700->save( ).
    ENDDO.
    DATA t702 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t702.
    DATA t703 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t703.
    DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t704.
    DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t705.
    DATA t706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t706.
    DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t707.
    DATA t708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t708.
    DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t709.
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t710.
    DATA t711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t711.
    DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t712.
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t713.
    DATA t714 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t714.
    DATA(t715) = t476.
    t714 = t715.
    DATA(t716) = |abapGit|.
    t713 = t714->get( p0 = t716 ).
    t712 = t713.
    DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t717.
    DATA(t718) = VALUE abap_bool( ).
    DATA(t719) = t712.
    IF t719 IS NOT BOUND.
      t718 = abap_true.
    ELSE.
      t718 = xsdbool( t719->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t718 = abap_true.
      DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t720.
      t717 = t720.
    ELSE.
      DATA t721 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t721.
      DATA(t722) = t712.
      DATA(t723) = |asx:abap|.
      t721 = t722->get( p0 = t723 ).
      t717 = t721.
    ENDIF.
    t711 = t717.
    t710 = t711.
    DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t724.
    DATA(t725) = VALUE abap_bool( ).
    DATA t726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t726.
    DATA(t727) = t710.
    CLEAR t726.
    IF t727 IS BOUND.
      t726 = t727.
    ENDIF.
    IF t726 IS NOT BOUND.
      t725 = abap_true.
    ELSE.
      t725 = xsdbool( t726->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t725 = abap_true.
      DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t728.
      t724 = t728.
    ELSE.
      DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t729.
      DATA t730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t730.
      DATA(t731) = t710.
      t730 = t731.
      DATA(t732) = |asx:values|.
      t729 = t730->get( p0 = t732 ).
      t724 = t729.
    ENDIF.
    t709 = t724.
    t708 = t709.
    DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t733.
    DATA(t734) = VALUE abap_bool( ).
    DATA t735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t735.
    DATA(t736) = t708.
    CLEAR t735.
    IF t736 IS BOUND.
      t735 = t736.
    ENDIF.
    IF t735 IS NOT BOUND.
      t734 = abap_true.
    ELSE.
      t734 = xsdbool( t735->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t734 = abap_true.
      DATA t737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t737.
      t733 = t737.
    ELSE.
      DATA t738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t738.
      DATA t739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t739.
      DATA(t740) = t708.
      t739 = t740.
      DATA(t741) = |DD07_TEXTS|.
      t738 = t739->get( p0 = t741 ).
      t733 = t738.
    ENDIF.
    t707 = t733.
    t706 = t707.
    DATA t742 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t742.
    DATA(t743) = VALUE abap_bool( ).
    DATA t744 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t744.
    DATA(t745) = t706.
    CLEAR t744.
    IF t745 IS BOUND.
      t744 = t745.
    ENDIF.
    IF t744 IS NOT BOUND.
      t743 = abap_true.
    ELSE.
      t743 = xsdbool( t744->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t743 = abap_true.
      DATA t746 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t746.
      t742 = t746.
    ELSE.
      DATA t747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t747.
      DATA t748 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t748.
      DATA(t749) = t706.
      t748 = t749.
      DATA(t750) = |item|.
      t747 = t748->get( p0 = t750 ).
      t742 = t747.
    ENDIF.
    t705 = t742.
    CLEAR t704.
    IF t705 IS BOUND.
      t704 = t705.
    ENDIF.
    t703 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t704 ).
    t702 = t703.
    DATA t751 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t751.
    DATA t752 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t752.
    CREATE OBJECT t752.
    t751 = t752.
    DATA(t753) = t702.
    DATA t754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t754.
    DATA t755 TYPE REF TO object.
    CLEAR t755.
    DATA(t756) = VALUE i( ).
    DO.
      t753->load( ).
      IF t756 >= lines( t753->items ).
        EXIT.
      ENDIF.
      CLEAR t755.
      READ TABLE t753->items INDEX t756 + 1 INTO t755.
      t756 = t756 + 1.
      DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t757.
      CLEAR t754.
      IF t755 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t757 ?= t755.
        t754 = t757.
      ELSE.
        IF t755 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t758 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t758.
          t758 ?= t755.
          CLEAR t754.
          IF t758 IS BOUND.
            CREATE OBJECT t754.
            t754->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t754->cval = t758.
          ENDIF.
        ELSE.
          CLEAR t754.
          IF t755 IS BOUND.
            DATA t759 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t759.
            DATA t760 TYPE REF TO object.
            CLEAR t760.
            CLEAR t759.
            t760 = t755.
            TRY.
                t754 ?= t760.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t754 IS NOT BOUND.
              TRY.
                  t759 ?= t755.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t759 IS BOUND.
                t754 = t759->source( ).
              ENDIF.
              IF t754 IS NOT BOUND.
                CREATE OBJECT t754.
                t754->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t754->oval = t755.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t761 TYPE REF TO zcl_lnt_dmn_vl_trnsltn.
      CLEAR t761.
      DATA t762 TYPE REF TO zcl_lnt_dmn_vl_trnsltn.
      CLEAR t762.
      DATA t763 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t763.
      DATA t764 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t764.
      DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t765.
      DATA(t766) = t754.
      t765 = t766.
      DATA t767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t767.
      DATA(t768) = VALUE abap_bool( ).
      DATA(t769) = t765.
      IF t769 IS NOT BOUND.
        t768 = abap_true.
      ELSE.
        t768 = xsdbool( t769->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t768 = abap_true.
        DATA t770 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t770.
        t767 = t770.
      ELSE.
        DATA t771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t771.
        DATA(t772) = t765.
        DATA(t773) = |DDLANGUAGE|.
        t771 = t772->get( p0 = t773 ).
        t767 = t771.
      ENDIF.
      t764 = t767.
      t763 = t764.
      DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t774.
      DATA t775 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t775.
      DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t776.
      DATA(t777) = t754.
      t776 = t777.
      DATA t778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t778.
      DATA(t779) = VALUE abap_bool( ).
      DATA(t780) = t776.
      IF t780 IS NOT BOUND.
        t779 = abap_true.
      ELSE.
        t779 = xsdbool( t780->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t779 = abap_true.
        DATA t781 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t781.
        t778 = t781.
      ELSE.
        DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t782.
        DATA(t783) = t776.
        DATA(t784) = |DDTEXT|.
        t782 = t783->get( p0 = t784 ).
        t778 = t782.
      ENDIF.
      t775 = t778.
      t774 = t775.
      DATA t785 TYPE REF TO zcl_lnt_dmn_vl_trnsltn.
      CLEAR t785.
      DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t786.
      DATA t787 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t787.
      DATA(t788) = VALUE abap_bool( ).
      DATA(t789) = t763.
      IF t789 IS INITIAL.
        t788 = abap_true.
      ENDIF.
      IF t788 = abap_true.
        DATA t790 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t790.
        t787 = t790.
      ELSE.
        DATA(t791) = VALUE string( ).
        DATA t792 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t792.
        DATA(t793) = t763.
        t792 = t793.
        t791 = t792->as_string( ).
        DATA(t794) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t794->has = abap_true.
        t794->value = t791.
        t787 = t794.
      ENDIF.
      t786 = t787.
      DATA t795 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t795.
      DATA t796 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t796.
      DATA(t797) = VALUE abap_bool( ).
      DATA(t798) = t774.
      IF t798 IS INITIAL.
        t797 = abap_true.
      ENDIF.
      IF t797 = abap_true.
        DATA t799 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t799.
        t796 = t799.
      ELSE.
        DATA(t800) = VALUE string( ).
        DATA t801 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t801.
        DATA(t802) = t774.
        t801 = t802.
        t800 = t801->as_string( ).
        DATA(t803) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t803->has = abap_true.
        t803->value = t800.
        t796 = t803.
      ENDIF.
      t795 = t796.
      t785 = NEW zcl_lnt_dmn_vl_trnsltn( i_language = t786 i_description = t795 ).
      CREATE OBJECT t785->zlnt_view_ownkeys_b0e8086400eb.
      t785->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t804.
      IF t785->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t785->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t804 ).
      ENDIF.
      DATA t805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t805.
      IF t785->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t785->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t805 ).
      ENDIF.
      CREATE OBJECT t785->zlnt_json_ownkeys_70e5fd461788.
      t785->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t806) = |language|.
      DATA t807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t807.
      IF t785->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t785->zlnt_json_ownkeys_70e5fd461788->put( p0 = t806 p1 = t807 ).
      ENDIF.
      DATA(t808) = |description|.
      DATA t809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t809.
      IF t785->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t785->zlnt_json_ownkeys_70e5fd461788->put( p0 = t808 p1 = t809 ).
      ENDIF.
      t762 = t785.
      t761 = t762.
      DATA(t810) = t751.
      DATA(t811) = t761.
      t810->load( ).
      APPEND t811 TO t810->items.
      t810->save( ).
    ENDDO.
    DATA t812 TYPE REF TO zcl_lnt_shape_b346f020.
    CLEAR t812.
    DATA(t813) = abap_true.
    IF t813 = abap_true.
      DATA t814 TYPE REF TO zcl_lnt_shape_b346f020.
      CLEAR t814.
      DATA t815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t815.
      DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t816.
      DATA t817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t817.
      DATA(t818) = t539.
      t817 = t818.
      DATA t819 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t819.
      DATA(t820) = VALUE abap_bool( ).
      DATA t821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t821.
      DATA(t822) = t817.
      CLEAR t821.
      IF t822 IS BOUND.
        t821 = t822.
      ENDIF.
      IF t821 IS NOT BOUND.
        t820 = abap_true.
      ELSE.
        t820 = xsdbool( t821->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t820 = abap_true.
        DATA t823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t823.
        t819 = t823.
      ELSE.
        DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t824.
        DATA t825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t825.
        DATA(t826) = t817.
        t825 = t826.
        DATA(t827) = |DDTEXT|.
        t824 = t825->get( p0 = t827 ).
        t819 = t824.
      ENDIF.
      t816 = t819.
      t815 = t816.
      DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t828.
      DATA t829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t829.
      DATA t830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t830.
      DATA(t831) = t539.
      t830 = t831.
      DATA t832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t832.
      DATA(t833) = VALUE abap_bool( ).
      DATA t834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t834.
      DATA(t835) = t830.
      CLEAR t834.
      IF t835 IS BOUND.
        t834 = t835.
      ENDIF.
      IF t834 IS NOT BOUND.
        t833 = abap_true.
      ELSE.
        t833 = xsdbool( t834->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t833 = abap_true.
        DATA t836 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t836.
        t832 = t836.
      ELSE.
        DATA t837 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t837.
        DATA t838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t838.
        DATA(t839) = t830.
        t838 = t839.
        DATA(t840) = |DATATYPE|.
        t837 = t838->get( p0 = t840 ).
        t832 = t837.
      ENDIF.
      t829 = t832.
      t828 = t829.
      DATA t841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t841.
      DATA t842 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t842.
      DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t843.
      DATA(t844) = t539.
      t843 = t844.
      DATA t845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t845.
      DATA(t846) = VALUE abap_bool( ).
      DATA t847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t847.
      DATA(t848) = t843.
      CLEAR t847.
      IF t848 IS BOUND.
        t847 = t848.
      ENDIF.
      IF t847 IS NOT BOUND.
        t846 = abap_true.
      ELSE.
        t846 = xsdbool( t847->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t846 = abap_true.
        DATA t849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t849.
        t845 = t849.
      ELSE.
        DATA t850 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t850.
        DATA t851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t851.
        DATA(t852) = t843.
        t851 = t852.
        DATA(t853) = |LENG|.
        t850 = t851->get( p0 = t853 ).
        t845 = t850.
      ENDIF.
      t842 = t845.
      t841 = t842.
      DATA t854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t854.
      DATA t855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t855.
      DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t856.
      DATA(t857) = t539.
      t856 = t857.
      DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t858.
      DATA(t859) = VALUE abap_bool( ).
      DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t860.
      DATA(t861) = t856.
      CLEAR t860.
      IF t861 IS BOUND.
        t860 = t861.
      ENDIF.
      IF t860 IS NOT BOUND.
        t859 = abap_true.
      ELSE.
        t859 = xsdbool( t860->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t859 = abap_true.
        DATA t862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t862.
        t858 = t862.
      ELSE.
        DATA t863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t863.
        DATA t864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t864.
        DATA(t865) = t856.
        t864 = t865.
        DATA(t866) = |CONVEXIT|.
        t863 = t864->get( p0 = t866 ).
        t858 = t863.
      ENDIF.
      t855 = t858.
      t854 = t855.
      DATA t867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t867.
      DATA t868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t868.
      DATA t869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t869.
      DATA(t870) = t539.
      t869 = t870.
      DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t871.
      DATA(t872) = VALUE abap_bool( ).
      DATA t873 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t873.
      DATA(t874) = t869.
      CLEAR t873.
      IF t874 IS BOUND.
        t873 = t874.
      ENDIF.
      IF t873 IS NOT BOUND.
        t872 = abap_true.
      ELSE.
        t872 = xsdbool( t873->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t872 = abap_true.
        DATA t875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t875.
        t871 = t875.
      ELSE.
        DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t876.
        DATA t877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t877.
        DATA(t878) = t869.
        t877 = t878.
        DATA(t879) = |DECIMALS|.
        t876 = t877->get( p0 = t879 ).
        t871 = t876.
      ENDIF.
      t868 = t871.
      t867 = t868.
      DATA t880 TYPE REF TO zcl_lnt_shape_b346f020.
      CLEAR t880.
      DATA t881 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t881.
      DATA t882 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t882.
      DATA(t883) = VALUE abap_bool( ).
      DATA(t884) = t815.
      IF t884 IS INITIAL.
        t883 = abap_true.
      ENDIF.
      IF t883 = abap_true.
        DATA t885 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t885.
        t882 = t885.
      ELSE.
        DATA(t886) = VALUE string( ).
        DATA t887 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t887.
        DATA(t888) = t815.
        t887 = t888.
        t886 = t887->as_string( ).
        DATA(t889) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t889->has = abap_true.
        t889->value = t886.
        t882 = t889.
      ENDIF.
      t881 = t882.
      DATA t890 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t890.
      DATA t891 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t891.
      DATA(t892) = VALUE abap_bool( ).
      DATA(t893) = t828.
      IF t893 IS INITIAL.
        t892 = abap_true.
      ENDIF.
      IF t892 = abap_true.
        DATA t894 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t894.
        t891 = t894.
      ELSE.
        DATA(t895) = VALUE string( ).
        DATA t896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t896.
        DATA(t897) = t828.
        t896 = t897.
        t895 = t896->as_string( ).
        DATA(t898) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t898->has = abap_true.
        t898->value = t895.
        t891 = t898.
      ENDIF.
      t890 = t891.
      DATA t899 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t899.
      DATA t900 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t900.
      DATA(t901) = VALUE abap_bool( ).
      DATA(t902) = t841.
      IF t902 IS INITIAL.
        t901 = abap_true.
      ENDIF.
      IF t901 = abap_true.
        DATA t903 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t903.
        t900 = t903.
      ELSE.
        DATA(t904) = VALUE string( ).
        DATA t905 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t905.
        DATA(t906) = t841.
        t905 = t906.
        t904 = t905->as_string( ).
        DATA(t907) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t907->has = abap_true.
        t907->value = t904.
        t900 = t907.
      ENDIF.
      t899 = t900.
      DATA t908 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t908.
      DATA t909 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t909.
      DATA(t910) = VALUE abap_bool( ).
      DATA(t911) = t854.
      IF t911 IS INITIAL.
        t910 = abap_true.
      ENDIF.
      IF t910 = abap_true.
        DATA t912 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t912.
        t909 = t912.
      ELSE.
        DATA(t913) = VALUE string( ).
        DATA t914 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t914.
        DATA(t915) = t854.
        t914 = t915.
        t913 = t914->as_string( ).
        DATA(t916) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t916->has = abap_true.
        t916->value = t913.
        t909 = t916.
      ENDIF.
      t908 = t909.
      DATA t917 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t917.
      DATA t918 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t918.
      DATA(t919) = VALUE abap_bool( ).
      DATA(t920) = t867.
      IF t920 IS INITIAL.
        t919 = abap_true.
      ENDIF.
      IF t919 = abap_true.
        DATA t921 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t921.
        t918 = t921.
      ELSE.
        DATA(t922) = VALUE string( ).
        DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t923.
        DATA(t924) = t867.
        t923 = t924.
        t922 = t923->as_string( ).
        DATA(t925) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t925->has = abap_true.
        t925->value = t922.
        t918 = t925.
      ENDIF.
      t917 = t918.
      DATA t926 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t926.
      DATA t927 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t927.
      DATA(t928) = abap_true.
      IF t928 = abap_true.
        DATA(t929) = t595.
        t927 = t929.
      ELSE.
        DATA t930 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t930.
        t927 = t930.
      ENDIF.
      t926 = t927.
      DATA t931 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t931.
      DATA t932 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t932.
      DATA(t933) = abap_true.
      IF t933 = abap_true.
        DATA(t934) = t751.
        t932 = t934.
      ELSE.
        DATA t935 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t935.
        t932 = t935.
      ENDIF.
      t931 = t932.
      t880 = NEW zcl_lnt_shape_b346f020( i_description = t881 i_datatype_9e1e = t890 i_length = t899 i_decimals_2eed = t917 i_conversion_exit = t908 i_values = t926 i_values_translations = t931 ).
      CREATE OBJECT t880->zlnt_view_ownkeys_b0e8086400eb.
      t880->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t936.
      IF t880->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t880->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t936 ).
      ENDIF.
      DATA t937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t937.
      IF t880->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t880->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `datatype` p1 = t937 ).
      ENDIF.
      DATA t938 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t938.
      IF t880->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t880->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t938 ).
      ENDIF.
      DATA t939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t939.
      IF t880->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t880->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t939 ).
      ENDIF.
      DATA t940 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t940.
      IF t880->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t880->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t940 ).
      ENDIF.
      DATA t941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t941.
      IF t880->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t880->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `values` p1 = t941 ).
      ENDIF.
      DATA t942 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t942.
      IF t880->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t880->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `valuesTranslations` p1 = t942 ).
      ENDIF.
      CREATE OBJECT t880->zlnt_json_ownkeys_70e5fd461788.
      t880->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t943) = |description|.
      DATA t944 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t944.
      IF t880->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t880->zlnt_json_ownkeys_70e5fd461788->put( p0 = t943 p1 = t944 ).
      ENDIF.
      DATA(t945) = |datatype|.
      DATA t946 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t946.
      IF t880->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t880->zlnt_json_ownkeys_70e5fd461788->put( p0 = t945 p1 = t946 ).
      ENDIF.
      DATA(t947) = |length|.
      DATA t948 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t948.
      IF t880->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t880->zlnt_json_ownkeys_70e5fd461788->put( p0 = t947 p1 = t948 ).
      ENDIF.
      DATA(t949) = |conversionExit|.
      DATA t950 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t950.
      IF t880->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t880->zlnt_json_ownkeys_70e5fd461788->put( p0 = t949 p1 = t950 ).
      ENDIF.
      DATA(t951) = |decimals|.
      DATA t952 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t952.
      IF t880->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t880->zlnt_json_ownkeys_70e5fd461788->put( p0 = t951 p1 = t952 ).
      ENDIF.
      DATA(t953) = |values|.
      DATA t954 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t954.
      IF t880->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t880->zlnt_json_ownkeys_70e5fd461788->put( p0 = t953 p1 = t954 ).
      ENDIF.
      DATA(t955) = |valuesTranslations|.
      DATA t956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t956.
      IF t880->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t880->zlnt_json_ownkeys_70e5fd461788->put( p0 = t955 p1 = t956 ).
      ENDIF.
      t814 = t880.
      t812 = t814.
    ELSE.
      DATA t957 TYPE REF TO zcl_lnt_shape_b346f020.
      CLEAR t957.
      t812 = t957.
    ENDIF.
    me->parsed_xml = t812.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA(t958) = VALUE f( ).
    DATA(t959) = VALUE f( ).
    DATA(t960) = 0.
    t959 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t958 = t959.
    DATA t961 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t961.
    DATA(t962) = VALUE abap_bool( ).
    DATA(t963) = abap_true.
    t962 = t963.
    DATA(t964) = VALUE f( ).
    DATA(t965) = VALUE f( ).
    DATA(t966) = t958.
    DATA(t967) = t16.
    t965 = t966 - t967.
    t964 = t965.
    DATA t968 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t968.
    DATA t969 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t969.
    t968 = t969.
    t961 = NEW zcl_lnt_iparse_result( i_updated = t962 i_runtime = t964 i_runtime_extra = t968 ).
    CREATE OBJECT t961->zlnt_view_ownkeys_b0e8086400eb.
    t961->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t970 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t970.
    IF t961->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t961->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t970 ).
    ENDIF.
    DATA t971 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t971.
    IF t961->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t961->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t971 ).
    ENDIF.
    CREATE OBJECT t961->zlnt_json_ownkeys_70e5fd461788.
    t961->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t972) = |updated|.
    DATA t973 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t973.
    IF t961->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t961->zlnt_json_ownkeys_70e5fd461788->put( p0 = t972 p1 = t973 ).
    ENDIF.
    DATA(t974) = |runtime|.
    DATA t975 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t975.
    IF t961->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t961->zlnt_json_ownkeys_70e5fd461788->put( p0 = t974 p1 = t975 ).
    ENDIF.
    result = t961.

  ENDMETHOD.

  METHOD get_fixed_values.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA(t5) = me->parsed_xml.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t4.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t9.
      t6 = t9.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t11 TYPE REF TO zcl_lnt_shape_b346f020.
      DATA(t12) = t4.
      t11 = t12.
      t10 = t11->values.
      t6 = t10.
    ENDIF.
    t3 = t6.
    t2 = t3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t2.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t16.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = t2.
      t17 = t18.
      t13 = t17.
    ENDIF.
    t1 = t13.
    result = t1.

  ENDMETHOD.

  METHOD get_fixed_values_translations.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_shape_b346f020.
    DATA(t5) = me->parsed_xml.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t4.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t9.
      t6 = t9.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t11 TYPE REF TO zcl_lnt_shape_b346f020.
      DATA(t12) = t4.
      t11 = t12.
      t10 = t11->values_translations.
      t6 = t10.
    ENDIF.
    t3 = t6.
    t2 = t3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t2.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t16.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = t2.
      t17 = t18.
      t13 = t17.
    ENDIF.
    t1 = t13.
    result = t1.

  ENDMETHOD.

  METHOD get_aff_file.
    DATA t1 TYPE REF TO zif_lnt_file.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t4.
    t6 = t7->files.
    t3 = t6.
    t2 = t3.
    DATA t8 TYPE i.
    DATA t9 TYPE i.
    DATA(t10) = t2.
    t10->load( ).
    t9 = lines( t10->items ).
    t8 = t9.
    DATA t11 TYPE i.
    DATA(t12) = 0.
    t11 = t12.
    DATA t13 TYPE REF TO zif_lnt_file.
    DATA t14 TYPE REF TO zif_lnt_file.
    CLEAR t14.
    t13 = t14.
    DO.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t11.
      DATA(t17) = t8.
      t15 = xsdbool( t16 < t17 ).
      IF t15 = abap_false.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_file.
      CLEAR t18.
      DATA t19 TYPE REF TO zif_lnt_file.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_file.
      CLEAR t20.
      DATA(t21) = t2.
      DATA(t22) = t11.
      DATA t23 TYPE REF TO object.
      t23 = t21->get( p0 = t22 ).
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t20.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t23.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t20 ?= t25.
      ELSE.
        t20 ?= t23.
      ENDIF.
      t19 = t20.
      t18 = t19.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE string.
      DATA t28 TYPE string.
      DATA(t29) = t18.
      t28 = t29->get_filename( ).
      DATA(t30) = strlen( t28 ).
      t27 = t28.
      TRANSLATE t27 TO LOWER CASE.
      DATA(t31) = |.doma.json|.
      DATA(t32) = strlen( t27 ).
      DATA t33 TYPE i.
      DATA(t34) = VALUE i( ).
      DATA(t35) = VALUE string( ).
      t33 = strlen( t31 ).
      IF t33 = 0.
        t26 = abap_true.
      ELSEIF t33 <= t32.
        t34 = 0.
        t34 = t32 - t33.
        t35 = t27+t34(t33).
        IF t35 = t31.
          t26 = abap_true.
        ENDIF.
      ENDIF.
      IF t26 = abap_true.
        DATA t36 TYPE REF TO zif_lnt_file.
        CLEAR t36.
        DATA(t37) = abap_true.
        IF t37 = abap_true.
          DATA(t38) = t18.
          t36 = t38.
        ELSE.
          DATA t39 TYPE REF TO zif_lnt_file.
          CLEAR t39.
          t36 = t39.
        ENDIF.
        t13 = t36.
        EXIT.
      ENDIF.
      DATA t40 TYPE i.
      DATA(t41) = t11.
      DATA(t42) = 1.
      t40 = t41 + t42.
      t11 = t40.
    ENDDO.
    DATA(t43) = t13.
    t1 = t43.
    result = t1.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_instn_src_objct_dmn_ts_dmn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1243_332432e07897.
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~parse_type.
    result = me->parse_type( i_reg_f149 = i_reg_f149 i_data_element = i_data_element i_description = i_description ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~parse_type.
    result = me->parse_type( i_reg_f149 = i_reg_f149 i_data_element = i_data_element i_description = i_description ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.
ENDCLASS.
