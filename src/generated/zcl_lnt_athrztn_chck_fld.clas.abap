* TS: src/objects/authorization_check_field.ts:8:1 AuthorizationCheckField
CLASS zcl_lnt_athrztn_chck_fld DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_e3559bc5.
    INTERFACES zif_lnt_union_42a36aec.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_90553f00.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_data_element_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS p_t_i_s_o_at_ch_fl_ts_at_ch_fl IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS p_i_sr_ob_at_ch_fl_ts_at_ch_fl RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS parse REDEFINITION.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_data_element TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_athrztn_chck_fld IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |AUTH|.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = CONV f( 30 ) i_allow_namespace = abap_true i_custom_regex = t6 ).
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

  METHOD set_dirty.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_description.
    CLEAR result.

  ENDMETHOD.

  METHOD get_data_element_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->p_i_sr_ob_at_ch_fl_ts_at_ch_fl( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_90553f00.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->rollname_3628.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD p_t_i_s_o_at_ch_fl_ts_at_ch_fl.
    DATA(t1) = i_reg_f149.
    DATA(t2) = CAST zcl_lnt_iparse_result( me->p_i_sr_ob_at_ch_fl_ts_at_ch_fl( ) ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zcl_lnt_ddic.
    t5 = NEW zcl_lnt_ddic( i_reg_f149 = t1 ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t10 TYPE REF TO zcl_lnt_shape_90553f00.
    t10 = me->parsed_xml.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t10 IS INITIAL ) = abap_true.
    ELSE.
      t12 = t10->rollname_3628.
    ENDIF.
    t9 = t12.
    IF t9 IS BOUND.
      IF t9->has = abap_true.
        t8 = xsdbool( strlen( t9->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t8 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t21 TYPE REF TO zcl_lnt_ddic.
      t21 = t5.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t26 TYPE string.
      t26 = me->parsed_xml->rollname_3628->value.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t26.
      t23 = t30.
      DATA t32 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t34 = t23.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t38) = VALUE abap_bool( ).
      IF t34 IS INITIAL.
        t38 = abap_true.
      ELSEIF t34->has = abap_false.
        t38 = abap_true.
      ENDIF.
      IF t38 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t41 TYPE REF TO zcl_lnt_abstract_type.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t41 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupDataElement| i_qualified_name = t44 ).
        DATA t45 TYPE REF TO zif_lnt_object.
        t40 = NEW zcl_lnt_ilookup_result( i_type_9913 = t41 i_object_19cd = t45 ).
        CREATE OBJECT t40->zlnt_view_ownkeys_b0e8086400eb.
        t40->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t47 ).
        CREATE OBJECT t40->zlnt_json_ownkeys_70e5fd461788.
        t40->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t49 ).
        t32 = t40.
      ELSE.
        DATA t51 TYPE REF TO zcl_lnt_data_element.
        DATA t52 TYPE REF TO zcl_lnt_data_element.
        DATA t54 TYPE REF TO zif_lnt_registry.
        t54 = t21->reg.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = |DTEL|.
        t56 = t59.
        DATA t63 TYPE string.
        t63 = t23->value.
        DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t65->has = abap_true.
        t65->value = t63.
        DATA t67 TYPE REF TO object.
        t67 = t54->get_object( i_type_9913 = t56 i_name = t65 ).
        t52 ?= t67.
        t51 = t52.
        DATA t68 TYPE REF TO zcl_lnt_ilookup_result.
        IF xsdbool( t51 IS BOUND ) = abap_true.
          DATA t71 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t72 TYPE REF TO zcl_lnt_abstract_type.
          DATA t74 TYPE REF TO zcl_lnt_data_element.
          t74 = t51.
          DATA t76 TYPE REF TO zif_lnt_registry.
          t76 = t21->reg.
          DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t72 = t74->parse_type( i_reg_f149 = t76 i_data_element = t78 i_description = t79 ).
          DATA t80 TYPE REF TO zif_lnt_object.
          t80 = t51.
          t71 = NEW zcl_lnt_ilookup_result( i_type_9913 = t72 i_object_19cd = t80 ).
          CREATE OBJECT t71->zlnt_view_ownkeys_b0e8086400eb.
          t71->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t83 ).
          DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t84 ).
          ENDIF.
          CREATE OBJECT t71->zlnt_json_ownkeys_70e5fd461788.
          t71->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t86 ).
          DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t88 ).
          ENDIF.
          t68 = t71.
        ELSE.
          DATA t89 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t91 TYPE REF TO zif_lnt_registry.
          t91 = t21->reg.
          DATA t93 TYPE string.
          t93 = t23->value.
          IF t91->in_error_namespace( i_name = t93 ) = abap_true.
            DATA t95 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t96 TYPE REF TO zcl_lnt_abstract_type.
            DATA t99 TYPE string.
            t99 = t23->value.
            DATA(t102) = strlen( t99 ).
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t96 = NEW zcl_lnt_unknown_type( i_error = |{ t99 }{ | not found, lookupDataElement| }| i_qualified_name = t103 ).
            DATA t104 TYPE REF TO zif_lnt_object.
            t95 = NEW zcl_lnt_ilookup_result( i_type_9913 = t96 i_object_19cd = t104 ).
            CREATE OBJECT t95->zlnt_view_ownkeys_b0e8086400eb.
            t95->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t95->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t106 ).
            CREATE OBJECT t95->zlnt_json_ownkeys_70e5fd461788.
            t95->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t95->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t108 ).
            t89 = t95.
          ELSE.
            DATA t109 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t110 TYPE REF TO zcl_lnt_abstract_type.
            DATA t114 TYPE string.
            t114 = t23->value.
            DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t116->has = abap_true.
            t116->value = t114.
            DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t110 = zcl_lnt_void_type=>get_db65( i_voided = t116 i_qualified_name = t118 ).
            DATA t119 TYPE REF TO zif_lnt_object.
            t109 = NEW zcl_lnt_ilookup_result( i_type_9913 = t110 i_object_19cd = t119 ).
            CREATE OBJECT t109->zlnt_view_ownkeys_b0e8086400eb.
            t109->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t121 ).
            CREATE OBJECT t109->zlnt_json_ownkeys_70e5fd461788.
            t109->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t123 ).
            t89 = t109.
          ENDIF.
          t68 = t89.
        ENDIF.
        t32 = t68.
      ENDIF.
      t19 = t32.
      DATA t125 TYPE REF TO zif_lnt_object.
      t125 = t19->zlnt_view_read_sr_2de0200e6505( ).
      IF xsdbool( t125 IS BOUND ) = abap_true.
        DATA t128 TYPE REF TO zcl_lnt_iobject_and_token.
        DATA t136 TYPE REF TO zcl_lnt_abstract_token.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t128 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t19->zlnt_view_read_sr_2de0200e6505( ) i_token = t136 i_filename = t138 ).
        CREATE OBJECT t128->zlnt_view_ownkeys_b0e8086400eb.
        t128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t140 ).
        CREATE OBJECT t128->zlnt_json_ownkeys_70e5fd461788.
        t128->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t142 ).
        t3->load( ).
        APPEND t128 TO t3->items.
        t3->save( ).
        t1->get_ddic_references( )->set_using( i_obj_1ed0 = me i_using = t3 ).
        result = t19->zlnt_view_read_sr_9be58e2d4893( ).
        RETURN.
      ELSE.
        DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t155 TYPE string.
        t155 = me->parsed_xml->rollname_3628->value.
        DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t159->has = abap_true.
        t159->value = t155.
        t152 = t159.
        DATA(t161) = VALUE abap_bool( ).
        DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t163 = t152.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t167) = VALUE abap_bool( ).
        IF t163 IS INITIAL.
          t167 = abap_true.
        ELSEIF t163->has = abap_false.
          t167 = abap_true.
        ENDIF.
        IF t167 = abap_true.
          t161 = abap_true.
        ELSE.
          DATA t171 TYPE REF TO zif_lnt_registry.
          t171 = t5->reg.
          DATA t173 TYPE string.
          t173 = t152->value.
          t161 = t171->in_error_namespace( i_name = t173 ).
        ENDIF.
        IF t161 = abap_true.
          DATA t177 TYPE string.
          t177 = me->parsed_xml->rollname_3628->value.
          DATA(t182) = strlen( t177 ).
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = NEW zcl_lnt_unknown_type( i_error = |{ t177 }{ | not found| }| i_qualified_name = t183 ).
          RETURN.
        ELSE.
          DATA t187 TYPE string.
          t187 = me->parsed_xml->rollname_3628->value.
          DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t191->has = abap_true.
          t191->value = t187.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t191 i_qualified_name = t193 ).
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_unknown_type( i_error = |Parsing error| i_qualified_name = t196 ).

    ENDIF.
  ENDMETHOD.

  METHOD p_i_sr_ob_at_ch_fl_ts_at_ch_fl.
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
    DATA t21 TYPE REF TO zcl_lnt_shape_90553f00.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t21 = NEW zcl_lnt_shape_90553f00( i_rollname_aa57 = t22 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    me->parsed_xml = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t25 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t25 IS INITIAL ) = abap_true.
    ELSE.
      t28 = t25.
    ENDIF.
    t27 = t28.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = VALUE abap_bool( ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t36 = xsdbool( t27 IS INITIAL ).
    t35 = t36.
    IF t36 = abap_false.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t45 = t27->get( p0 = |abapGit| ).
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t35 = xsdbool( t45 IS INITIAL ).
    ENDIF.
    t34 = t35.
    IF t35 = abap_false.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t58 = t27->get( p0 = |abapGit| ).
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t64) = VALUE abap_bool( ).
      IF t58 IS NOT BOUND.
        t64 = abap_true.
      ELSE.
        t64 = xsdbool( t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t64 = abap_true.
      ELSE.
        t63 = t58->get( p0 = |asx:abap| ).
      ENDIF.
      t56 = t63.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t71) = VALUE abap_bool( ).
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56 IS BOUND.
        t72 = t56.
      ENDIF.
      IF t72 IS NOT BOUND.
        t71 = abap_true.
      ELSE.
        t71 = xsdbool( t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t71 = abap_true.
      ELSE.
        t70 = t56->get( p0 = |asx:values| ).
      ENDIF.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t34 = xsdbool( t70 IS INITIAL ).
    ENDIF.
    IF t34 = abap_true.
      DATA t83 TYPE REF TO zcl_lnt_iparse_result.
      DATA t88 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t83 = NEW zcl_lnt_iparse_result( i_updated = abap_false i_runtime = CONV f( 0 ) i_runtime_extra = t88 ).
      CREATE OBJECT t83->zlnt_view_ownkeys_b0e8086400eb.
      t83->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t90 ).
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t91 ).
      ENDIF.
      CREATE OBJECT t83->zlnt_json_ownkeys_70e5fd461788.
      t83->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t93 ).
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t95 ).
      ENDIF.
      result = t83.
      RETURN.
    ENDIF.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t104 = t27->get( p0 = |abapGit| ).
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = VALUE abap_bool( ).
    IF t104 IS NOT BOUND.
      t110 = abap_true.
    ELSE.
      t110 = xsdbool( t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t110 = abap_true.
    ELSE.
      t109 = t104->get( p0 = |asx:abap| ).
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
      t116 = t102->get( p0 = |asx:values| ).
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
      t125 = t100->get( p0 = |AUTHX| ).
    ENDIF.
    t98 = t125.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t135) = VALUE abap_bool( ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t98 IS BOUND.
      t136 = t98.
    ENDIF.
    IF t136 IS NOT BOUND.
      t135 = abap_true.
    ELSE.
      t135 = xsdbool( t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t135 = abap_true.
    ELSE.
      t134 = t98->get( p0 = |ROLLNAME| ).
    ENDIF.
    t96 = t134.
    DATA t143 TYPE REF TO zcl_lnt_shape_90553f00.
    t143 = me->parsed_xml.
    DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t96 IS INITIAL ) = abap_true.
    ELSE.
      DATA t149 TYPE string.
      t149 = t96->as_string( ).
      DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t152->has = abap_true.
      t152->value = t149.
      t145 = t152.
    ENDIF.
    t143->rollname_3628 = t145.
    DELETE t143->zlnt_record_delet_0597644d88b4 WHERE table_line = `rollname`.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `rollname` p1 = t153 ).
    ENDIF.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |rollname| p1 = t155 ).
    ENDIF.
    DATA t157 TYPE f.
    DATA(t158) = 0.
    t157 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t159 TYPE REF TO zcl_lnt_iparse_result.
    DATA t162 TYPE f.
    t162 = t157 - t17.
    DATA t166 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t159 = NEW zcl_lnt_iparse_result( i_updated = abap_true i_runtime = t162 i_runtime_extra = t166 ).
    CREATE OBJECT t159->zlnt_view_ownkeys_b0e8086400eb.
    t159->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t168 ).
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t169 ).
    ENDIF.
    CREATE OBJECT t159->zlnt_json_ownkeys_70e5fd461788.
    t159->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t171 ).
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t173 ).
    ENDIF.
    result = t159.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->p_i_sr_ob_at_ch_fl_ts_at_ch_fl( ) ).

  ENDMETHOD.

  METHOD parse_type.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA(t5) = i_reg_f149.
    result = me->p_t_i_s_o_at_ch_fl_ts_at_ch_fl( i_reg_f149 = t5 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1200_4e5faec67292.
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~parse_type.
    result = me->parse_type( i_reg_f149 = i_reg_f149 i_data_element = i_data_element i_description = i_description ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~update_file.
    me->update_file( i_file = i_file ).
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
ENDCLASS.
