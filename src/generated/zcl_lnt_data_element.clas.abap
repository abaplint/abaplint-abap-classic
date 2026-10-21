* TS: src/objects/data_element.ts:13:1 DataElement
CLASS zcl_lnt_data_element DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_e3559bc5.
    INTERFACES zif_lnt_union_42a36aec.
    INTERFACES zif_lnt_union_864794cc.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA parsed_type TYPE REF TO zcl_lnt_abstract_type.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_identifier REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_domain_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_data_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_texts RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_66add1d1.
    METHODS get_text_max_lengths RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_66add1d1.
    METHODS get_texts_translations RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_dtel_master RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS pr_ty_in_sr_ob_dt_el_ts_dt_elm IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS pr_in_src_obj_dt_elm_ts_dt_elm RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS get_aff_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS parse REDEFINITION.
    METHODS fn_lookup_predefined_type IMPORTING i_ddic TYPE REF TO zcl_lnt_ddic RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_data_element TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_data_element IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    CLEAR me->parsed_type.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedType`.
  ENDMETHOD.

  METHOD get_type.
    result = |DTEL|.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->description.
    ENDIF.
    result = t5.

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

  METHOD get_identifier.
    DATA t1 TYPE REF TO zcl_lnt_fi_identifier.
    t1 = CAST zcl_lnt_fi_identifier( super->get_identifier( ) ).
    IF xsdbool( t1 IS BOUND ) = abap_true.
      result = t1.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_file.
    t10 = CAST zif_lnt_file( me->get_aff_file( ) ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t10 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zcl_lnt_position.
    DATA(t27) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t27->has = abap_true.
    t27->value = CONV f( 1 ).
    t24 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t27 ).
    DATA t29 TYPE REF TO zcl_lnt_abstract_object.
    t29 = me.
    DATA t31 TYPE string.
    t31 = t29->name.
    result = NEW zcl_lnt_fi_identifier( i_token = NEW zcl_lnt_lx_identifier( i_start = t24 i_str = t31 ) i_filename = t10->get_filename( ) ).

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    CLEAR me->parsed_type.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedType`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_domain_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->domname.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_data_type.
    DATA(t1) = i_reg_f149.
    DATA(t2) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t5 TYPE REF TO zcl_lnt_shape_50142cbd.
    t5 = me->parsed_xml.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
    ELSE.
      t7 = t5->datatype_2b0f.
    ENDIF.
    t4 = t7.
    IF t4 IS BOUND.
      IF t4->has = abap_true.
        t3 = xsdbool( strlen( t4->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t3 = abap_true.
      DATA t16 TYPE string.
      t16 = me->parsed_xml->datatype_2b0f->value.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t16.
      result = t20.
      RETURN.
    ENDIF.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE abap_bool.
    DATA t24 TYPE abap_bool.
    t24 = xsdbool( t1 IS BOUND ).
    t23 = t24.
    IF t24 = abap_true.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t28 TYPE REF TO zcl_lnt_shape_50142cbd.
      t28 = me->parsed_xml.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t28 IS INITIAL ) = abap_true.
      ELSE.
        t30 = t28->refkind.
      ENDIF.
      t27 = t30.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = |D|.
      t37 = t40.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = VALUE abap_bool( ).
      IF t27 IS BOUND.
        t42 = t27->has.
      ENDIF.
      IF t37 IS BOUND.
        t43 = t37->has.
      ENDIF.
      IF t42 = t43.
        IF t42 = abap_false.
          t26 = abap_true.
        ELSEIF t27->value = t37->value.
          t26 = abap_true.
        ENDIF.
      ENDIF.
      t23 = t26.
    ENDIF.
    t22 = t23.
    IF t23 = abap_true.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t45 = me->parsed_xml->domname.
      IF t45 IS BOUND.
        IF t45->has = abap_true.
          t44 = xsdbool( strlen( t45->value ) > 0 ).
        ENDIF.
      ENDIF.
      t22 = t44.
    ENDIF.
    IF t22 = abap_true.
      DATA t48 TYPE REF TO zif_lnt_object.
      DATA t50 TYPE REF TO zif_lnt_registry.
      t50 = t1.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t55->has = abap_true.
      t55->value = |DOMA|.
      t52 = t55.
      DATA t59 TYPE string.
      t59 = me->parsed_xml->domname->value.
      DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t63->has = abap_true.
      t63->value = t59.
      t48 = t50->get_object( i_type_9913 = t52 i_name = t63 ).
      IF xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_domain ) = abap_true.
        DATA t68 TYPE REF TO zcl_lnt_domain.
        DATA t69 TYPE REF TO zcl_lnt_domain.
        t69 ?= t48.
        t68 = t69.
        DATA t73 TYPE REF TO zcl_lnt_iparse_result.
        t73 = t68->prs_instn_src_objct_dmn_ts_dmn( ).
        DATA t76 TYPE REF TO zcl_lnt_shape_b346f020.
        t76 = t68->parsed_xml.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t76 IS INITIAL ) = abap_true.
        ELSE.
          t79 = t76->datatype_2b0f.
        ENDIF.
        result = t79.
        RETURN.
      ENDIF.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD get_texts.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zcl_lnt_shape_66add1d1.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->texts.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_text_max_lengths.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zcl_lnt_shape_66add1d1.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->text_max_lengths.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_texts_translations.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->texts_translations.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_dtel_master.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->dtelmaster.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD pr_ty_in_sr_ob_dt_el_ts_dt_elm.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_ilookup_result.
    DATA(t6) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_xml IS INITIAL ) = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t20) = VALUE string( ).
      DATA(t21) = |Data Element |.
      DATA(t22) = VALUE string( ).
      DATA t23 TYPE REF TO zcl_lnt_abstract_object.
      t23 = me.
      t22 = t23->name.
      DATA(t27) = strlen( t21 ).
      t20 = |{ t21 }{ t22 }|.
      DATA(t29) = strlen( t20 ).
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t17 = NEW zcl_lnt_unknown_type( i_error = |{ t20 }{ |, parser error| }| i_qualified_name = t30 ).
      DATA t31 TYPE REF TO zif_lnt_object.
      t16 = NEW zcl_lnt_ilookup_result( i_type_9913 = t17 i_object_19cd = t31 ).
      CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
      t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t33 ).
      CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
      t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t35 ).
      t4 = t16.
    ELSE.
      IF xsdbool( me->parsed_type IS BOUND ) = abap_true.
        result = me->parsed_type.
        RETURN.
      ENDIF.
      DATA t41 TYPE REF TO zcl_lnt_ddic.
      t41 = NEW zcl_lnt_ddic( i_reg_f149 = t1 ).
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t45 = me->parsed_xml->aff_category.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t51->has = abap_true.
      t51->value = |referenceToPredefinedType|.
      t48 = t51.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = VALUE abap_bool( ).
      IF t45 IS BOUND.
        t53 = t45->has.
      ENDIF.
      IF t48 IS BOUND.
        t54 = t48->has.
      ENDIF.
      IF t53 = t54.
        IF t53 = abap_false.
          t44 = abap_true.
        ELSEIF t45->value = t48->value.
          t44 = abap_true.
        ENDIF.
      ENDIF.
      IF t44 = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t59 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t60) = VALUE abap_bool( ).
        DATA(t61) = VALUE abap_bool( ).
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t64 TYPE REF TO zcl_lnt_shape_50142cbd.
        t64 = me->parsed_xml.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t64 IS INITIAL ) = abap_true.
        ELSE.
          t66 = t64->datatype_2b0f.
        ENDIF.
        t62 = t66.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t75) = VALUE abap_bool( ).
        IF t62 IS INITIAL.
          t75 = abap_true.
        ELSEIF t62->has = abap_false.
          t75 = abap_true.
        ENDIF.
        t61 = t75.
        t60 = t61.
        IF t61 = abap_false.
          DATA(t78) = VALUE string( ).
          t78 = me->parsed_xml->datatype_2b0f->value.
          t60 = xsdbool( t78 = || ).
        ENDIF.
        IF t60 = abap_true.
          DATA t83 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t84 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t87) = |DATATYPE unexpectely empty in |.
          DATA(t88) = VALUE string( ).
          DATA t89 TYPE REF TO zcl_lnt_abstract_object.
          t89 = me.
          t88 = t89->name.
          DATA(t93) = strlen( t87 ).
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t84 = NEW zcl_lnt_unknown_type( i_error = |{ t87 }{ t88 }| i_qualified_name = t94 ).
          DATA t95 TYPE REF TO zif_lnt_object.
          t83 = NEW zcl_lnt_ilookup_result( i_type_9913 = t84 i_object_19cd = t95 ).
          CREATE OBJECT t83->zlnt_view_ownkeys_b0e8086400eb.
          t83->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t97 ).
          CREATE OBJECT t83->zlnt_json_ownkeys_70e5fd461788.
          t83->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t99 ).
          t59 = t83.
        ELSE.
          DATA t100 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t104 TYPE REF TO zcl_lnt_shape_4a88086c.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t108) = VALUE string( ).
          t108 = me->parsed_xml->datatype_2b0f->value.
          DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t112->has = abap_true.
          t112->value = t108.
          t105 = t112.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t114 = me->parsed_xml->leng_e82a.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t118 = me->parsed_xml->decimals_29bf.
          DATA(t122) = VALUE string( ).
          DATA t124 TYPE REF TO zcl_lnt_abstract_object.
          t124 = me.
          t122 = t124->name.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t132 TYPE REF TO zcl_lnt_abstract_object.
          t132 = me.
          DATA(t134) = VALUE string( ).
          t134 = t132->name.
          DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t136->has = abap_true.
          t136->value = t134.
          t128 = t136.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t144 TYPE REF TO zcl_lnt_abstract_object.
          t144 = me.
          DATA(t146) = VALUE string( ).
          t146 = t144->name.
          DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t148->has = abap_true.
          t148->value = t146.
          t140 = t148.
          DATA t152 TYPE REF TO zcl_lnt_shape_66add1d1.
          t152 = me->parsed_xml->texts.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t152 IS INITIAL ) = abap_true.
          ELSE.
            t156 = t152->heading.
          ENDIF.
          t104 = NEW zcl_lnt_shape_4a88086c( i_text = t105 i_length = t114 i_decimals_2eed = t118 i_info_text = t122 i_qualified_name = t128 i_conversion_exit = t138 i_ddic_name = t140 i_description = t156 ).
          CREATE OBJECT t104->zlnt_view_ownkeys_b0e8086400eb.
          t104->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `text` p1 = t163 ).
          DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t164 ).
          ENDIF.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t165 ).
          ENDIF.
          DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `infoText` p1 = t166 ).
          ENDIF.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t167 ).
          ENDIF.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t168 ).
          ENDIF.
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t169 ).
          ENDIF.
          DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t170 ).
          ENDIF.
          CREATE OBJECT t104->zlnt_json_ownkeys_70e5fd461788.
          t104->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = |text| p1 = t172 ).
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = |length| p1 = t174 ).
          ENDIF.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = |decimals| p1 = t176 ).
          ENDIF.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = |infoText| p1 = t178 ).
          ENDIF.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t180 ).
          ENDIF.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = |conversionExit| p1 = t182 ).
          ENDIF.
          DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ddicName| p1 = t184 ).
          ENDIF.
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t186 ).
          ENDIF.
          DATA t187 TYPE REF TO zif_lnt_object.
          t100 = NEW zcl_lnt_ilookup_result( i_type_9913 = t41->text_to_type( i_input_967e = t104 ) i_object_19cd = t187 ).
          CREATE OBJECT t100->zlnt_view_ownkeys_b0e8086400eb.
          t100->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t189 ).
          CREATE OBJECT t100->zlnt_json_ownkeys_70e5fd461788.
          t100->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t191 ).
          t59 = t100.
        ENDIF.
        t55 = t59.
        DATA t194 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t196 TYPE REF TO zcl_lnt_abstract_type.
        t196 = t55->zlnt_view_read_sr_9be58e2d4893( ).
        IF xsdbool( t196 IS BOUND AND t196 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_true.
          t194 = t55.
        ELSE.
          DATA t199 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t200 TYPE REF TO zcl_lnt_abstract_type.
          DATA t202 TYPE REF TO zcl_lnt_abstract_type.
          t202 = t55->zlnt_view_read_sr_9be58e2d4893( ).
          DATA t207 TYPE REF TO zcl_lnt_abstract_object.
          t207 = me.
          DATA(t209) = VALUE string( ).
          t209 = t207->name.
          DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t211->has = abap_true.
          t211->value = t209.
          t200 = NEW zcl_lnt_data_reference( i_type_9913 = t202 i_qualified_name = t211 ).
          DATA t213 TYPE REF TO zif_lnt_object.
          t199 = NEW zcl_lnt_ilookup_result( i_type_9913 = t200 i_object_19cd = t213 ).
          CREATE OBJECT t199->zlnt_view_ownkeys_b0e8086400eb.
          t199->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t215 ).
          CREATE OBJECT t199->zlnt_json_ownkeys_70e5fd461788.
          t199->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t217 ).
          t194 = t199.
        ENDIF.
        t4 = t194.
      ELSE.
        DATA(t219) = VALUE abap_bool( ).
        DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t220 = me->parsed_xml->aff_category.
        DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t226) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t226->has = abap_true.
        t226->value = |referenceDictionaryType|.
        t223 = t226.
        DATA(t228) = VALUE abap_bool( ).
        DATA(t229) = VALUE abap_bool( ).
        IF t220 IS BOUND.
          t228 = t220->has.
        ENDIF.
        IF t223 IS BOUND.
          t229 = t223->has.
        ENDIF.
        IF t228 = t229.
          IF t228 = abap_false.
            t219 = abap_true.
          ELSEIF t220->value = t223->value.
            t219 = abap_true.
          ENDIF.
        ENDIF.
        IF t219 = abap_true.
          DATA(t230) = VALUE abap_bool( ).
          DATA(t231) = VALUE abap_bool( ).
          DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t232 = me->parsed_xml->domname.
          DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t238) = VALUE abap_bool( ).
          IF t232 IS INITIAL.
            t238 = abap_true.
          ELSEIF t232->has = abap_false.
            t238 = abap_true.
          ENDIF.
          t231 = t238.
          t230 = t231.
          IF t231 = abap_false.
            DATA(t241) = VALUE string( ).
            t241 = me->parsed_xml->domname->value.
            t230 = xsdbool( t241 = || ).
          ENDIF.
          IF t230 = abap_true.
            DATA t248 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t249 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t252) = |Type name unexpectely empty in |.
            DATA(t253) = VALUE string( ).
            DATA t254 TYPE REF TO zcl_lnt_abstract_object.
            t254 = me.
            t253 = t254->name.
            DATA(t258) = strlen( t252 ).
            DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t249 = NEW zcl_lnt_unknown_type( i_error = |{ t252 }{ t253 }| i_qualified_name = t259 ).
            DATA t260 TYPE REF TO zif_lnt_object.
            t248 = NEW zcl_lnt_ilookup_result( i_type_9913 = t249 i_object_19cd = t260 ).
            CREATE OBJECT t248->zlnt_view_ownkeys_b0e8086400eb.
            t248->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t262 ).
            CREATE OBJECT t248->zlnt_json_ownkeys_70e5fd461788.
            t248->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t264 ).
            t4 = t248.
          ELSE.
            DATA t266 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t268 TYPE REF TO zcl_lnt_ddic.
            t268 = t41.
            DATA(t270) = VALUE string( ).
            t270 = me->parsed_xml->domname->value.
            DATA t276 TYPE REF TO zcl_lnt_ilookup_result.
            t276 = t268->lookup_no_void( i_name = t270 ).
            DATA t280 TYPE REF TO zcl_lnt_ilookup_result.
            IF xsdbool( t276 IS BOUND ) = abap_true.
              t280 = t276.
            ELSE.
              DATA t285 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t287 TYPE REF TO zif_lnt_registry.
              t287 = t268->reg.
              IF t287->in_error_namespace( i_name = t270 ) = abap_true.
                DATA t290 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t291 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t296) = strlen( t270 ).
                DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t291 = NEW zcl_lnt_unknown_type( i_error = |{ t270 }{ | not found, lookup| }| i_qualified_name = t297 ).
                DATA t298 TYPE REF TO zif_lnt_object.
                t290 = NEW zcl_lnt_ilookup_result( i_type_9913 = t291 i_object_19cd = t298 ).
                CREATE OBJECT t290->zlnt_view_ownkeys_b0e8086400eb.
                t290->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t290->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t300 ).
                CREATE OBJECT t290->zlnt_json_ownkeys_70e5fd461788.
                t290->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t290->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t302 ).
                t285 = t290.
              ELSE.
                DATA t303 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t304 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t309) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t309->has = abap_true.
                t309->value = t270.
                DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t304 = zcl_lnt_void_type=>get_db65( i_voided = t309 i_qualified_name = t311 ).
                DATA t312 TYPE REF TO zif_lnt_object.
                t303 = NEW zcl_lnt_ilookup_result( i_type_9913 = t304 i_object_19cd = t312 ).
                CREATE OBJECT t303->zlnt_view_ownkeys_b0e8086400eb.
                t303->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t303->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t314 ).
                CREATE OBJECT t303->zlnt_json_ownkeys_70e5fd461788.
                t303->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t303->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t316 ).
                t285 = t303.
              ENDIF.
              t280 = t285.
            ENDIF.
            t266 = t280.
            DATA t319 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t321 TYPE REF TO zcl_lnt_abstract_type.
            t321 = t266->zlnt_view_read_sr_9be58e2d4893( ).
            IF xsdbool( t321 IS BOUND AND t321 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_true.
              t319 = t266.
            ELSE.
              DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              TRY.
                  t326 = zlnt_runtime_json_7c6b3012af76=>parse( |\{\}| ).
                CATCH zlnt_exception_js_ebcc2df7d5e4.
                  DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t328->has = abap_true.
                  t328->value = `Invalid JSON`.
                  DATA(t329) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t328 ).
                  DATA(t330) = NEW zlnt_exception_cl_30eec8e8805d( ).
                  t330->payload = t329.
                  DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t332 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  DATA t333 TYPE REF TO object.
                  t333 = t329.
                  TRY.
                      t331 ?= t333.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t331 IS NOT BOUND.
                    TRY.
                        t332 ?= t329.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t332 IS BOUND.
                      t331 = t332->source( ).
                    ENDIF.
                    IF t331 IS NOT BOUND.
                      CREATE OBJECT t331.
                      t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t331->oval = t329.
                    ENDIF.
                  ENDIF.
                  t330->source_value = t331.
                  RAISE EXCEPTION t330.
              ENDTRY.
              t325 = t326.
              DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t266 IS BOUND.
                DATA t337 TYPE REF TO zlnt_view_storage_74017ca272ac.
                DATA t338 TYPE REF TO object.
                t338 = t266.
                TRY.
                    t335 ?= t338.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t335 IS NOT BOUND.
                  TRY.
                      t337 ?= t266.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t337 IS BOUND.
                    t335 = t337->source( ).
                  ENDIF.
                  IF t335 IS NOT BOUND.
                    CREATE OBJECT t335.
                    t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t335->oval = t266.
                  ENDIF.
                ENDIF.
              ENDIF.
              t334 = t335.
              DATA(t340) = VALUE abap_bool( ).
              IF t334 IS NOT BOUND.
                t340 = abap_true.
              ELSE.
                t340 = xsdbool( t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF xsdbool( t340 = abap_false ) = abap_true.
                DATA t342 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                t342 = zlnt_runtime_ownk_4497b85e405d=>keys( t334 ).
                DATA(t344) = VALUE string( ).
                t342->dense( ).
                DATA(t345) = VALUE i( ).
                DO.
                  t342->load( ).
                  IF t345 >= lines( t342->items ).
                    EXIT.
                  ENDIF.
                  CLEAR t344.
                  READ TABLE t342->items INDEX t345 + 1 INTO t344.
                  IF t342->has( t345 ) = abap_false.
                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                  ENDIF.
                  t345 = t345 + 1.
                  t325->put( p0 = t344 p1 = t334->get( p0 = t344 ) ).
                ENDDO.
              ENDIF.
              DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t354 TYPE REF TO zcl_lnt_data_reference.
              DATA t355 TYPE REF TO zcl_lnt_abstract_type.
              t355 = t266->zlnt_view_read_sr_9be58e2d4893( ).
              DATA t360 TYPE REF TO zcl_lnt_abstract_object.
              t360 = me.
              DATA(t362) = VALUE string( ).
              t362 = t360->name.
              DATA(t364) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t364->has = abap_true.
              t364->value = t362.
              t354 = NEW zcl_lnt_data_reference( i_type_9913 = t355 i_qualified_name = t364 ).
              DATA t366 TYPE REF TO zlnt_view_storage_74017ca272ac.
              DATA t367 TYPE REF TO object.
              t367 = t354.
              TRY.
                  t353 ?= t367.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t353 IS NOT BOUND.
                TRY.
                    t366 ?= t354.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t366 IS BOUND.
                  t353 = t366->source( ).
                ENDIF.
                IF t353 IS NOT BOUND.
                  CREATE OBJECT t353.
                  t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t353->oval = t354.
                ENDIF.
              ENDIF.
              t325->put( p0 = |type| p1 = t353 ).
              DATA t368 TYPE REF TO zcl_lnt_ilookup_result.
              IF t325 IS BOUND.
                IF t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  TRY.
                      t368 ?= t325->oval.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                ENDIF.
                IF t368 IS NOT BOUND.
                  IF t325->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t370 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    IF t325->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                    ENDIF.
                    TRY.
                        t370 ?= t325->oval.
                      CATCH cx_sy_move_cast_error.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                    ENDTRY.
                    IF t370->structural( ) <> abap_true.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                    ENDIF.
                  ENDIF.
                  DATA t371 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t372 TYPE REF TO zif_lnt_object.
                  t368 = NEW zcl_lnt_ilookup_result( view_source = t325 i_type_9913 = t371 i_object_19cd = t372 ).
                ENDIF.
              ENDIF.
              t319 = t368.
            ENDIF.
            t4 = t319.
          ENDIF.
        ELSE.
          DATA(t374) = VALUE abap_bool( ).
          DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t375 = me->parsed_xml->aff_category.
          DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t381) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t381->has = abap_true.
          t381->value = |referenceClasIntType|.
          t378 = t381.
          DATA(t383) = VALUE abap_bool( ).
          DATA(t384) = VALUE abap_bool( ).
          IF t375 IS BOUND.
            t383 = t375->has.
          ENDIF.
          IF t378 IS BOUND.
            t384 = t378->has.
          ENDIF.
          IF t383 = t384.
            IF t383 = abap_false.
              t374 = abap_true.
            ELSEIF t375->value = t378->value.
              t374 = abap_true.
            ENDIF.
          ENDIF.
          IF t374 = abap_true.
            DATA(t385) = VALUE abap_bool( ).
            DATA(t386) = VALUE abap_bool( ).
            DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t387 = me->parsed_xml->domname.
            DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t393) = VALUE abap_bool( ).
            IF t387 IS INITIAL.
              t393 = abap_true.
            ELSEIF t387->has = abap_false.
              t393 = abap_true.
            ENDIF.
            t386 = t393.
            t385 = t386.
            IF t386 = abap_false.
              DATA(t396) = VALUE string( ).
              t396 = me->parsed_xml->domname->value.
              t385 = xsdbool( t396 = || ).
            ENDIF.
            IF t385 = abap_true.
              DATA t403 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t404 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t407) = |Type name unexpectely empty in |.
              DATA(t408) = VALUE string( ).
              DATA t409 TYPE REF TO zcl_lnt_abstract_object.
              t409 = me.
              t408 = t409->name.
              DATA(t413) = strlen( t407 ).
              DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t404 = NEW zcl_lnt_unknown_type( i_error = |{ t407 }{ t408 }| i_qualified_name = t414 ).
              DATA t415 TYPE REF TO zif_lnt_object.
              t403 = NEW zcl_lnt_ilookup_result( i_type_9913 = t404 i_object_19cd = t415 ).
              CREATE OBJECT t403->zlnt_view_ownkeys_b0e8086400eb.
              t403->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t403->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t417 ).
              CREATE OBJECT t403->zlnt_json_ownkeys_70e5fd461788.
              t403->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t403->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t419 ).
              t4 = t403.
            ELSE.
              DATA(t425) = VALUE string( ).
              t425 = me->parsed_xml->domname->value.
              t4 = t41->lookup_object( i_name = t425 ).
            ENDIF.
          ELSE.
            DATA(t430) = VALUE abap_bool( ).
            DATA(t431) = VALUE abap_bool( ).
            DATA(t432) = VALUE abap_bool( ).
            DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t433 = me->parsed_xml->aff_category.
            DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t440) = VALUE abap_bool( ).
            IF t433 IS INITIAL.
              t440 = abap_true.
            ELSEIF t433->has = abap_false.
              t440 = abap_true.
            ENDIF.
            t432 = xsdbool( t440 = abap_false ).
            t431 = t432.
            IF t432 = abap_true.
              DATA(t443) = VALUE string( ).
              t443 = me->parsed_xml->aff_category->value.
              t431 = xsdbool( t443 <> |domain| ).
            ENDIF.
            t430 = t431.
            IF t431 = abap_true.
              DATA(t449) = VALUE string( ).
              t449 = me->parsed_xml->aff_category->value.
              t430 = xsdbool( t449 <> |predefinedType| ).
            ENDIF.
            IF t430 = abap_true.
              DATA t456 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t457 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t460) = VALUE string( ).
              DATA(t461) = VALUE string( ).
              DATA(t462) = |Unknown AFF data type category |.
              DATA(t463) = VALUE string( ).
              t463 = me->parsed_xml->aff_category->value.
              DATA(t467) = strlen( t462 ).
              t461 = |{ t462 }{ t463 }|.
              DATA(t469) = strlen( t461 ).
              t460 = |{ t461 }{ | in | }|.
              DATA(t470) = VALUE string( ).
              DATA t471 TYPE REF TO zcl_lnt_abstract_object.
              t471 = me.
              t470 = t471->name.
              DATA(t475) = strlen( t460 ).
              DATA t476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t457 = NEW zcl_lnt_unknown_type( i_error = |{ t460 }{ t470 }| i_qualified_name = t476 ).
              DATA t477 TYPE REF TO zif_lnt_object.
              t456 = NEW zcl_lnt_ilookup_result( i_type_9913 = t457 i_object_19cd = t477 ).
              CREATE OBJECT t456->zlnt_view_ownkeys_b0e8086400eb.
              t456->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t456->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t479 ).
              CREATE OBJECT t456->zlnt_json_ownkeys_70e5fd461788.
              t456->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t456->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t481 ).
              t4 = t456.
            ELSE.
              DATA(t483) = VALUE abap_bool( ).
              DATA t484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t484 = me->parsed_xml->refkind.
              DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t490) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t490->has = abap_true.
              t490->value = |D|.
              t487 = t490.
              DATA(t492) = VALUE abap_bool( ).
              DATA(t493) = VALUE abap_bool( ).
              IF t484 IS BOUND.
                t492 = t484->has.
              ENDIF.
              IF t487 IS BOUND.
                t493 = t487->has.
              ENDIF.
              IF t492 = t493.
                IF t492 = abap_false.
                  t483 = abap_true.
                ELSEIF t484->value = t487->value.
                  t483 = abap_true.
                ENDIF.
              ENDIF.
              IF t483 = abap_true.
                DATA(t494) = VALUE abap_bool( ).
                DATA(t495) = VALUE abap_bool( ).
                DATA t496 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t496 = me->parsed_xml->domname.
                DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t502) = VALUE abap_bool( ).
                IF t496 IS INITIAL.
                  t502 = abap_true.
                ELSEIF t496->has = abap_false.
                  t502 = abap_true.
                ENDIF.
                t495 = t502.
                t494 = t495.
                IF t495 = abap_false.
                  DATA(t505) = VALUE string( ).
                  t505 = me->parsed_xml->domname->value.
                  t494 = xsdbool( t505 = || ).
                ENDIF.
                IF t494 = abap_true.
                  DATA t512 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t513 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t516) = |DOMNAME unexpectely empty in |.
                  DATA(t517) = VALUE string( ).
                  DATA t518 TYPE REF TO zcl_lnt_abstract_object.
                  t518 = me.
                  t517 = t518->name.
                  DATA(t522) = strlen( t516 ).
                  DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t513 = NEW zcl_lnt_unknown_type( i_error = |{ t516 }{ t517 }| i_qualified_name = t523 ).
                  DATA t524 TYPE REF TO zif_lnt_object.
                  t512 = NEW zcl_lnt_ilookup_result( i_type_9913 = t513 i_object_19cd = t524 ).
                  CREATE OBJECT t512->zlnt_view_ownkeys_b0e8086400eb.
                  t512->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t512->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t526 ).
                  CREATE OBJECT t512->zlnt_json_ownkeys_70e5fd461788.
                  t512->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t512->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t528 ).
                  t4 = t512.
                ELSE.
                  DATA t533 TYPE REF TO zcl_lnt_ddic.
                  t533 = t41.
                  DATA(t535) = VALUE string( ).
                  t535 = me->parsed_xml->domname->value.
                  DATA t544 TYPE REF TO zcl_lnt_abstract_object.
                  t544 = me.
                  DATA(t546) = VALUE string( ).
                  t546 = t544->name.
                  DATA(t548) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t548->has = abap_true.
                  t548->value = t546.
                  DATA(t552) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
                  DATA t554 TYPE REF TO zcl_lnt_shape_50142cbd.
                  t554 = me->parsed_xml.
                  DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  IF xsdbool( t554 IS INITIAL ) = abap_true.
                  ELSE.
                    t556 = t554->description.
                  ENDIF.
                  DATA t564 TYPE REF TO zcl_lnt_domain.
                  DATA t565 TYPE REF TO zcl_lnt_domain.
                  DATA t567 TYPE REF TO zif_lnt_registry.
                  t567 = t533->reg.
                  DATA t569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t572) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t572->has = abap_true.
                  t572->value = |DOMA|.
                  t569 = t572.
                  DATA(t577) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t577->has = abap_true.
                  t577->value = t535.
                  DATA t579 TYPE REF TO object.
                  t579 = t567->get_object( i_type_9913 = t569 i_name = t577 ).
                  t565 ?= t579.
                  t564 = t565.
                  DATA t580 TYPE REF TO zcl_lnt_ilookup_result.
                  IF xsdbool( t564 IS BOUND ) = abap_true.
                    DATA t583 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t584 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t586 TYPE REF TO zcl_lnt_domain.
                    t586 = t564.
                    DATA t588 TYPE REF TO zif_lnt_registry.
                    t588 = t533->reg.
                    t584 = t586->parse_type( i_reg_f149 = t588 i_data_element = t548 i_description = t556 ).
                    DATA t592 TYPE REF TO zif_lnt_object.
                    t592 = t564.
                    t583 = NEW zcl_lnt_ilookup_result( i_type_9913 = t584 i_object_19cd = t592 ).
                    CREATE OBJECT t583->zlnt_view_ownkeys_b0e8086400eb.
                    t583->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t583->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t595 ).
                    DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t583->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t583->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t596 ).
                    ENDIF.
                    CREATE OBJECT t583->zlnt_json_ownkeys_70e5fd461788.
                    t583->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t583->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t598 ).
                    DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t583->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t583->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t600 ).
                    ENDIF.
                    t580 = t583.
                  ELSE.
                    DATA t601 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t603 TYPE REF TO zif_lnt_registry.
                    t603 = t533->reg.
                    IF t603->in_error_namespace( i_name = t535 ) = abap_true.
                      DATA t606 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t607 TYPE REF TO zcl_lnt_abstract_type.
                      DATA(t612) = strlen( t535 ).
                      DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t607 = NEW zcl_lnt_unknown_type( i_error = |{ t535 }{ |, lookupDomain| }| i_qualified_name = t613 ).
                      DATA t614 TYPE REF TO zif_lnt_object.
                      t606 = NEW zcl_lnt_ilookup_result( i_type_9913 = t607 i_object_19cd = t614 ).
                      CREATE OBJECT t606->zlnt_view_ownkeys_b0e8086400eb.
                      t606->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t606->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t616 ).
                      DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      IF t606->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t606->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t617 ).
                      ENDIF.
                      CREATE OBJECT t606->zlnt_json_ownkeys_70e5fd461788.
                      t606->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t606->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t619 ).
                      DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      IF t606->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t606->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t621 ).
                      ENDIF.
                      t601 = t606.
                    ELSE.
                      DATA t622 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t623 TYPE REF TO zcl_lnt_abstract_type.
                      DATA(t628) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t628->has = abap_true.
                      t628->value = t535.
                      DATA t630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t623 = zcl_lnt_void_type=>get_db65( i_voided = t628 i_qualified_name = t630 ).
                      DATA t631 TYPE REF TO zif_lnt_object.
                      t622 = NEW zcl_lnt_ilookup_result( i_type_9913 = t623 i_object_19cd = t631 ).
                      CREATE OBJECT t622->zlnt_view_ownkeys_b0e8086400eb.
                      t622->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t633 ).
                      DATA t634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      IF t622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t634 ).
                      ENDIF.
                      CREATE OBJECT t622->zlnt_json_ownkeys_70e5fd461788.
                      t622->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t636 ).
                      DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      IF t622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t638 ).
                      ENDIF.
                      t601 = t622.
                    ENDIF.
                    t580 = t601.
                  ENDIF.
                  t4 = t580.
                ENDIF.
              ELSE.
                DATA(t640) = VALUE abap_bool( ).
                DATA t641 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t641 = me->parsed_xml->refkind.
                DATA t644 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t647) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t647->has = abap_true.
                t647->value = |R|.
                t644 = t647.
                DATA(t649) = VALUE abap_bool( ).
                DATA(t650) = VALUE abap_bool( ).
                IF t641 IS BOUND.
                  t649 = t641->has.
                ENDIF.
                IF t644 IS BOUND.
                  t650 = t644->has.
                ENDIF.
                IF t649 = t650.
                  IF t649 = abap_false.
                    t640 = abap_true.
                  ELSEIF t641->value = t644->value.
                    t640 = abap_true.
                  ENDIF.
                ENDIF.
                IF t640 = abap_true.
                  DATA(t651) = VALUE abap_bool( ).
                  DATA(t652) = VALUE abap_bool( ).
                  DATA t653 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t653 = me->parsed_xml->domname.
                  DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA(t659) = VALUE abap_bool( ).
                  IF t653 IS INITIAL.
                    t659 = abap_true.
                  ELSEIF t653->has = abap_false.
                    t659 = abap_true.
                  ENDIF.
                  t652 = t659.
                  t651 = t652.
                  IF t652 = abap_false.
                    DATA(t662) = VALUE string( ).
                    t662 = me->parsed_xml->domname->value.
                    t651 = xsdbool( t662 = || ).
                  ENDIF.
                  IF t651 = abap_true.
                    DATA t669 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t670 TYPE REF TO zcl_lnt_abstract_type.
                    DATA(t673) = |DOMNAME unexpectely empty in |.
                    DATA(t674) = VALUE string( ).
                    DATA t675 TYPE REF TO zcl_lnt_abstract_object.
                    t675 = me.
                    t674 = t675->name.
                    DATA(t679) = strlen( t673 ).
                    DATA t680 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t670 = NEW zcl_lnt_unknown_type( i_error = |{ t673 }{ t674 }| i_qualified_name = t680 ).
                    DATA t681 TYPE REF TO zif_lnt_object.
                    t669 = NEW zcl_lnt_ilookup_result( i_type_9913 = t670 i_object_19cd = t681 ).
                    CREATE OBJECT t669->zlnt_view_ownkeys_b0e8086400eb.
                    t669->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t669->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t683 ).
                    CREATE OBJECT t669->zlnt_json_ownkeys_70e5fd461788.
                    t669->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t669->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t685 ).
                    t4 = t669.
                  ELSE.
                    DATA(t691) = VALUE string( ).
                    t691 = me->parsed_xml->domname->value.
                    t4 = t41->lookup_object( i_name = t691 ).
                  ENDIF.
                ELSE.
                  DATA t701 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA(t702) = VALUE abap_bool( ).
                  DATA(t703) = VALUE abap_bool( ).
                  DATA t704 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t706 TYPE REF TO zcl_lnt_shape_50142cbd.
                  t706 = me->parsed_xml.
                  DATA t708 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  IF xsdbool( t706 IS INITIAL ) = abap_true.
                  ELSE.
                    t708 = t706->datatype_2b0f.
                  ENDIF.
                  t704 = t708.
                  DATA t715 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA(t717) = VALUE abap_bool( ).
                  IF t704 IS INITIAL.
                    t717 = abap_true.
                  ELSEIF t704->has = abap_false.
                    t717 = abap_true.
                  ENDIF.
                  t703 = t717.
                  t702 = t703.
                  IF t703 = abap_false.
                    DATA(t720) = VALUE string( ).
                    t720 = me->parsed_xml->datatype_2b0f->value.
                    t702 = xsdbool( t720 = || ).
                  ENDIF.
                  IF t702 = abap_true.
                    DATA t725 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t726 TYPE REF TO zcl_lnt_abstract_type.
                    DATA(t729) = |DATATYPE unexpectely empty in |.
                    DATA(t730) = VALUE string( ).
                    DATA t731 TYPE REF TO zcl_lnt_abstract_object.
                    t731 = me.
                    t730 = t731->name.
                    DATA(t735) = strlen( t729 ).
                    DATA t736 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t726 = NEW zcl_lnt_unknown_type( i_error = |{ t729 }{ t730 }| i_qualified_name = t736 ).
                    DATA t737 TYPE REF TO zif_lnt_object.
                    t725 = NEW zcl_lnt_ilookup_result( i_type_9913 = t726 i_object_19cd = t737 ).
                    CREATE OBJECT t725->zlnt_view_ownkeys_b0e8086400eb.
                    t725->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t725->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t739 ).
                    CREATE OBJECT t725->zlnt_json_ownkeys_70e5fd461788.
                    t725->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t725->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t741 ).
                    t701 = t725.
                  ELSE.
                    DATA t742 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t746 TYPE REF TO zcl_lnt_shape_4a88086c.
                    DATA t747 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t750) = VALUE string( ).
                    t750 = me->parsed_xml->datatype_2b0f->value.
                    DATA(t754) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t754->has = abap_true.
                    t754->value = t750.
                    t747 = t754.
                    DATA t756 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t756 = me->parsed_xml->leng_e82a.
                    DATA t760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t760 = me->parsed_xml->decimals_29bf.
                    DATA(t764) = VALUE string( ).
                    DATA t766 TYPE REF TO zcl_lnt_abstract_object.
                    t766 = me.
                    t764 = t766->name.
                    DATA t770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t774 TYPE REF TO zcl_lnt_abstract_object.
                    t774 = me.
                    DATA(t776) = VALUE string( ).
                    t776 = t774->name.
                    DATA(t778) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t778->has = abap_true.
                    t778->value = t776.
                    t770 = t778.
                    DATA t780 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t782 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t786 TYPE REF TO zcl_lnt_abstract_object.
                    t786 = me.
                    DATA(t788) = VALUE string( ).
                    t788 = t786->name.
                    DATA(t790) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t790->has = abap_true.
                    t790->value = t788.
                    t782 = t790.
                    DATA t794 TYPE REF TO zcl_lnt_shape_66add1d1.
                    t794 = me->parsed_xml->texts.
                    DATA t798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    IF xsdbool( t794 IS INITIAL ) = abap_true.
                    ELSE.
                      t798 = t794->heading.
                    ENDIF.
                    t746 = NEW zcl_lnt_shape_4a88086c( i_text = t747 i_length = t756 i_decimals_2eed = t760 i_info_text = t764 i_qualified_name = t770 i_conversion_exit = t780 i_ddic_name = t782 i_description = t798 ).
                    CREATE OBJECT t746->zlnt_view_ownkeys_b0e8086400eb.
                    t746->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `text` p1 = t805 ).
                    DATA t806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t806 ).
                    ENDIF.
                    DATA t807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t807 ).
                    ENDIF.
                    DATA t808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `infoText` p1 = t808 ).
                    ENDIF.
                    DATA t809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t809 ).
                    ENDIF.
                    DATA t810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t810 ).
                    ENDIF.
                    DATA t811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t811 ).
                    ENDIF.
                    DATA t812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t812 ).
                    ENDIF.
                    CREATE OBJECT t746->zlnt_json_ownkeys_70e5fd461788.
                    t746->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = |text| p1 = t814 ).
                    DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = |length| p1 = t816 ).
                    ENDIF.
                    DATA t818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = |decimals| p1 = t818 ).
                    ENDIF.
                    DATA t820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = |infoText| p1 = t820 ).
                    ENDIF.
                    DATA t822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t822 ).
                    ENDIF.
                    DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = |conversionExit| p1 = t824 ).
                    ENDIF.
                    DATA t826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ddicName| p1 = t826 ).
                    ENDIF.
                    DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t828 ).
                    ENDIF.
                    DATA t829 TYPE REF TO zif_lnt_object.
                    t742 = NEW zcl_lnt_ilookup_result( i_type_9913 = t41->text_to_type( i_input_967e = t746 ) i_object_19cd = t829 ).
                    CREATE OBJECT t742->zlnt_view_ownkeys_b0e8086400eb.
                    t742->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t831 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t742->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t831 ).
                    CREATE OBJECT t742->zlnt_json_ownkeys_70e5fd461788.
                    t742->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t833 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t742->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t833 ).
                    t701 = t742.
                  ENDIF.
                  t4 = t701.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t836 TYPE REF TO zif_lnt_object.
    t836 = t4->zlnt_view_read_sr_2de0200e6505( ).
    IF xsdbool( t836 IS BOUND ) = abap_true.
      DATA t840 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA t849 TYPE REF TO zcl_lnt_abstract_token.
      DATA t851 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t840 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t4->zlnt_view_read_sr_2de0200e6505( ) i_token = t849 i_filename = t851 ).
      CREATE OBJECT t840->zlnt_view_ownkeys_b0e8086400eb.
      t840->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t840->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t853 ).
      CREATE OBJECT t840->zlnt_json_ownkeys_70e5fd461788.
      t840->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t840->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t855 ).
      t2->load( ).
      APPEND t840 TO t2->items.
      t2->save( ).
    ENDIF.
    t1->get_ddic_references( )->set_using( i_obj_1ed0 = me i_using = t2 ).
    DATA t862 TYPE REF TO zcl_lnt_abstract_type.
    t862 = t4->zlnt_view_read_sr_9be58e2d4893( ).
    IF xsdbool( xsdbool( t862 IS BOUND AND t862 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ) = abap_true.
      me->parsed_type = t4->zlnt_view_read_sr_9be58e2d4893( ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedType`.
    ENDIF.
    result = t4->zlnt_view_read_sr_9be58e2d4893( ).

  ENDMETHOD.

  METHOD pr_in_src_obj_dt_elm_ts_dt_elm.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = xsdbool( me->parsed_xml IS INITIAL ).
    IF xsdbool( t7 = abap_false ) = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_iparse_result.
      DATA t14 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t9 = NEW zcl_lnt_iparse_result( i_updated = abap_false i_runtime = CONV f( 0 ) i_runtime_extra = t14 ).
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
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t19 ).
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t21 ).
      ENDIF.
      result = t9.
      RETURN.
    ENDIF.
    DATA(t22) = VALUE f( ).
    DATA(t24) = 0.
    t22 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t27 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA t40 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t27 = NEW zcl_lnt_shape_50142cbd( i_description = t28 i_refkind = t30 i_domname = t32 i_datatype_9e1e = t34 i_leng_b7d5 = t36 i_texts = t38 i_text_max_lengths = t40 i_texts_translations = t42 i_decimals_2eed = t44 i_dtelmaster = t46
      i_aff_category = t48 ).
    CREATE OBJECT t27->zlnt_view_ownkeys_b0e8086400eb.
    t27->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    CREATE OBJECT t27->zlnt_json_ownkeys_70e5fd461788.
    t27->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    me->parsed_xml = t27.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t51 TYPE REF TO zif_lnt_file.
    t51 = CAST zif_lnt_file( me->get_aff_file( ) ).
    IF xsdbool( t51 IS BOUND ) = abap_true.
      DATA t55 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      TRY.
          DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t58) = VALUE string( ).
          t58 = t51->get_raw( ).
          TRY.
              t57 = zlnt_runtime_json_7c6b3012af76=>parse( t58 ).
            CATCH zlnt_exception_js_ebcc2df7d5e4.
              DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t61->has = abap_true.
              t61->value = `Invalid JSON`.
              DATA(t62) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t61 ).
              DATA(t63) = NEW zlnt_exception_cl_30eec8e8805d( ).
              t63->payload = t62.
              DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
              DATA t66 TYPE REF TO object.
              t66 = t62.
              TRY.
                  t64 ?= t66.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t64 IS NOT BOUND.
                TRY.
                    t65 ?= t62.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t65 IS BOUND.
                  t64 = t65->source( ).
                ENDIF.
                IF t64 IS NOT BOUND.
                  CREATE OBJECT t64.
                  t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t64->oval = t62.
                ENDIF.
              ENDIF.
              t63->source_value = t64.
              RAISE EXCEPTION t63.
          ENDTRY.
          t56 = t57.
          DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t67 = t56->get( p0 = |dataTypeInformation| ).
          DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t73 = t67.
          DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t76) = VALUE abap_bool( ).
          IF t73 IS NOT BOUND.
            t76 = abap_true.
          ELSE.
            t76 = xsdbool( t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t76 = abap_true.
          ELSE.
            t75 = t73->get( p0 = |predefinedType| ).
          ENDIF.
          t71 = t75.
          DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF xsdbool( t71 IS INITIAL ) = abap_true.
          ELSE.
            t83 = t71.
          ENDIF.
          t82 = t83.
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t89 = t56->get( p0 = |fieldLabels| ).
          DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t98 = t56->get( p0 = |header| ).
          DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t103) = VALUE abap_bool( ).
          IF t98 IS NOT BOUND.
            t103 = abap_true.
          ELSE.
            t103 = xsdbool( t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t103 = abap_true.
          ELSE.
            t102 = t98->get( p0 = |description| ).
          ENDIF.
          t96 = t102.
          DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t111 = t67.
          DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t114) = VALUE abap_bool( ).
          IF t111 IS NOT BOUND.
            t114 = abap_true.
          ELSE.
            t114 = xsdbool( t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t114 = abap_true.
          ELSE.
            t113 = t111->get( p0 = |category| ).
          ENDIF.
          t109 = t113.
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t122 = t67.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t125) = VALUE abap_bool( ).
          IF t122 IS NOT BOUND.
            t125 = abap_true.
          ELSE.
            t125 = xsdbool( t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t125 = abap_true.
          ELSE.
            t124 = t122->get( p0 = |typeName| ).
          ENDIF.
          t120 = t124.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t133 = t82.
          DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t136) = VALUE abap_bool( ).
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t133 IS BOUND.
            t137 = t133.
          ENDIF.
          IF t137 IS NOT BOUND.
            t136 = abap_true.
          ELSE.
            t136 = xsdbool( t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t136 = abap_true.
          ELSE.
            t135 = t133->get( p0 = |dataType| ).
          ENDIF.
          t131 = t135.
          DATA t144 TYPE REF TO zcl_lnt_shape_50142cbd.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t96 IS INITIAL ) = abap_true.
          ELSE.
            DATA(t150) = VALUE string( ).
            t150 = t96->as_string( ).
            DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t153->has = abap_true.
            t153->value = t150.
            t146 = t153.
          ENDIF.
          t145 = t146.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t109 IS INITIAL ) = abap_true.
          ELSE.
            DATA(t159) = VALUE string( ).
            t159 = t109->as_string( ).
            DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t162->has = abap_true.
            t162->value = t159.
            t155 = t162.
          ENDIF.
          t154 = t155.
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t165) = VALUE abap_bool( ).
          DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t168 = t67.
          DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t171) = VALUE abap_bool( ).
          IF t168 IS NOT BOUND.
            t171 = abap_true.
          ELSE.
            t171 = xsdbool( t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t171 = abap_true.
          ELSE.
            t170 = t168->get( p0 = |category| ).
          ENDIF.
          t167 = t170.
          IF t167 IS BOUND.
            t166 = t167.
          ENDIF.
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t177->sval = |domain|.
          IF t166 IS NOT BOUND.
            t165 = xsdbool( t177 IS NOT BOUND ).
          ELSE.
            t165 = t166->strict_equals( t177 ).
          ENDIF.
          IF t165 = abap_true.
            DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t182->has = abap_true.
            t182->value = |D|.
            t164 = t182.
          ELSE.
            CLEAR t164.
          ENDIF.
          t163 = t164.
          DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t120 IS INITIAL ) = abap_true.
          ELSE.
            DATA(t190) = VALUE string( ).
            t190 = t120->as_string( ).
            DATA(t193) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t193->has = abap_true.
            t193->value = t190.
            t186 = t193.
          ENDIF.
          t185 = t186.
          DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t131 IS INITIAL ) = abap_true.
          ELSE.
            DATA(t199) = VALUE string( ).
            t199 = t131->as_string( ).
            DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t202->has = abap_true.
            t202->value = t199.
            t195 = t202.
          ENDIF.
          t194 = t195.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t207 = t82.
          DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t210) = VALUE abap_bool( ).
          DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t207 IS BOUND.
            t211 = t207.
          ENDIF.
          IF t211 IS NOT BOUND.
            t210 = abap_true.
          ELSE.
            t210 = xsdbool( t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t210 = abap_true.
          ELSE.
            t209 = t207->get( p0 = |length| ).
          ENDIF.
          t205 = t209.
          DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t219) = VALUE abap_bool( ).
          DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t205 IS BOUND.
            t220 = t205.
          ENDIF.
          IF t220 IS NOT BOUND.
            t219 = abap_true.
          ELSE.
            t219 = xsdbool( t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t219 = abap_true.
          ELSE.
            DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t224 = t205.
            DATA(t227) = VALUE abap_bool( ).
            IF t224 IS NOT BOUND.
              t227 = abap_true.
            ELSE.
              t227 = xsdbool( t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t227 = abap_true.
              DATA(t229) = NEW zlnt_exception_un_5f2d02892fe8( ).
              t229->source_location = |src/objects/data_element.ts:228:17|.
              RAISE EXCEPTION t229.
            ENDIF.
            DATA(t231) = VALUE string( ).
            IF t224 IS BOUND.
              t231 = t224->to_string( ).
            ELSE.
              t231 = `undefined`.
            ENDIF.
            DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t233->has = abap_true.
            t233->value = t231.
            t218 = t233.
          ENDIF.
          t203 = t218.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t238 = t82.
          DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t241) = VALUE abap_bool( ).
          DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t238 IS BOUND.
            t242 = t238.
          ENDIF.
          IF t242 IS NOT BOUND.
            t241 = abap_true.
          ELSE.
            t241 = xsdbool( t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t241 = abap_true.
          ELSE.
            t240 = t238->get( p0 = |decimals| ).
          ENDIF.
          t236 = t240.
          DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t250) = VALUE abap_bool( ).
          DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t236 IS BOUND.
            t251 = t236.
          ENDIF.
          IF t251 IS NOT BOUND.
            t250 = abap_true.
          ELSE.
            t250 = xsdbool( t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t250 = abap_true.
          ELSE.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t255 = t236.
            DATA(t258) = VALUE abap_bool( ).
            IF t255 IS NOT BOUND.
              t258 = abap_true.
            ELSE.
              t258 = xsdbool( t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t258 = abap_true.
              DATA(t260) = NEW zlnt_exception_un_5f2d02892fe8( ).
              t260->source_location = |src/objects/data_element.ts:229:21|.
              RAISE EXCEPTION t260.
            ENDIF.
            DATA(t262) = VALUE string( ).
            IF t255 IS BOUND.
              t262 = t255->to_string( ).
            ELSE.
              t262 = `undefined`.
            ENDIF.
            DATA(t264) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t264->has = abap_true.
            t264->value = t262.
            t249 = t264.
          ENDIF.
          t234 = t249.
          DATA t265 TYPE REF TO zcl_lnt_shape_66add1d1.
          DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t271 = t89.
          DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t274) = VALUE abap_bool( ).
          IF t271 IS NOT BOUND.
            t274 = abap_true.
          ELSE.
            t274 = xsdbool( t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t274 = abap_true.
          ELSE.
            t273 = t271->get( p0 = |short| ).
          ENDIF.
          t269 = t273.
          DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t282 = t89.
          DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t285) = VALUE abap_bool( ).
          IF t282 IS NOT BOUND.
            t285 = abap_true.
          ELSE.
            t285 = xsdbool( t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t285 = abap_true.
          ELSE.
            t284 = t282->get( p0 = |medium| ).
          ENDIF.
          t280 = t284.
          DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t293 = t89.
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t296) = VALUE abap_bool( ).
          IF t293 IS NOT BOUND.
            t296 = abap_true.
          ELSE.
            t296 = xsdbool( t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t296 = abap_true.
          ELSE.
            t295 = t293->get( p0 = |long| ).
          ENDIF.
          t291 = t295.
          DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t304 = t89.
          DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t307) = VALUE abap_bool( ).
          IF t304 IS NOT BOUND.
            t307 = abap_true.
          ELSE.
            t307 = xsdbool( t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t307 = abap_true.
          ELSE.
            t306 = t304->get( p0 = |heading| ).
          ENDIF.
          t302 = t306.
          DATA t313 TYPE REF TO zcl_lnt_shape_66add1d1.
          DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t269 IS INITIAL ) = abap_true.
          ELSE.
            DATA(t319) = VALUE string( ).
            t319 = t269->as_string( ).
            DATA(t322) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t322->has = abap_true.
            t322->value = t319.
            t315 = t322.
          ENDIF.
          t314 = t315.
          DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t280 IS INITIAL ) = abap_true.
          ELSE.
            DATA(t328) = VALUE string( ).
            t328 = t280->as_string( ).
            DATA(t331) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t331->has = abap_true.
            t331->value = t328.
            t324 = t331.
          ENDIF.
          t323 = t324.
          DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t291 IS INITIAL ) = abap_true.
          ELSE.
            DATA(t337) = VALUE string( ).
            t337 = t291->as_string( ).
            DATA(t340) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t340->has = abap_true.
            t340->value = t337.
            t333 = t340.
          ENDIF.
          t332 = t333.
          DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t302 IS INITIAL ) = abap_true.
          ELSE.
            DATA(t346) = VALUE string( ).
            t346 = t302->as_string( ).
            DATA(t349) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t349->has = abap_true.
            t349->value = t346.
            t342 = t349.
          ENDIF.
          t313 = NEW zcl_lnt_shape_66add1d1( i_short = t314 i_medium = t323 i_long = t332 i_heading = t342 ).
          CREATE OBJECT t313->zlnt_view_ownkeys_b0e8086400eb.
          t313->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `short` p1 = t350 ).
          DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t313->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `medium` p1 = t351 ).
          ENDIF.
          DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t313->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `long` p1 = t352 ).
          ENDIF.
          DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t313->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `heading` p1 = t353 ).
          ENDIF.
          CREATE OBJECT t313->zlnt_json_ownkeys_70e5fd461788.
          t313->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = |short| p1 = t355 ).
          DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t313->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = |medium| p1 = t357 ).
          ENDIF.
          DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t313->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = |long| p1 = t359 ).
          ENDIF.
          DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t313->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = |heading| p1 = t361 ).
          ENDIF.
          t265 = t313.
          DATA t366 TYPE REF TO zcl_lnt_shape_66add1d1.
          DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t371 = t89.
          DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t374) = VALUE abap_bool( ).
          IF t371 IS NOT BOUND.
            t374 = abap_true.
          ELSE.
            t374 = xsdbool( t371->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t374 = abap_true.
          ELSE.
            t373 = t371->get( p0 = |shortLength| ).
          ENDIF.
          t369 = t373.
          DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t381) = VALUE abap_bool( ).
          DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t369 IS BOUND.
            t382 = t369.
          ENDIF.
          IF t382 IS NOT BOUND.
            t381 = abap_true.
          ELSE.
            t381 = xsdbool( t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t381 = abap_true.
          ELSE.
            DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t386 = t369.
            DATA(t389) = VALUE abap_bool( ).
            IF t386 IS NOT BOUND.
              t389 = abap_true.
            ELSE.
              t389 = xsdbool( t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t389 = abap_true.
              DATA(t391) = NEW zlnt_exception_un_5f2d02892fe8( ).
              t391->source_location = |src/objects/data_element.ts:237:20|.
              RAISE EXCEPTION t391.
            ENDIF.
            DATA(t393) = VALUE string( ).
            IF t386 IS BOUND.
              t393 = t386->to_string( ).
            ELSE.
              t393 = `undefined`.
            ENDIF.
            DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t395->has = abap_true.
            t395->value = t393.
            t380 = t395.
          ENDIF.
          t367 = t380.
          DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t400 = t89.
          DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t403) = VALUE abap_bool( ).
          IF t400 IS NOT BOUND.
            t403 = abap_true.
          ELSE.
            t403 = xsdbool( t400->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t403 = abap_true.
          ELSE.
            t402 = t400->get( p0 = |mediumLength| ).
          ENDIF.
          t398 = t402.
          DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t410) = VALUE abap_bool( ).
          DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t398 IS BOUND.
            t411 = t398.
          ENDIF.
          IF t411 IS NOT BOUND.
            t410 = abap_true.
          ELSE.
            t410 = xsdbool( t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t410 = abap_true.
          ELSE.
            DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t415 = t398.
            DATA(t418) = VALUE abap_bool( ).
            IF t415 IS NOT BOUND.
              t418 = abap_true.
            ELSE.
              t418 = xsdbool( t415->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t418 = abap_true.
              DATA(t420) = NEW zlnt_exception_un_5f2d02892fe8( ).
              t420->source_location = |src/objects/data_element.ts:238:21|.
              RAISE EXCEPTION t420.
            ENDIF.
            DATA(t422) = VALUE string( ).
            IF t415 IS BOUND.
              t422 = t415->to_string( ).
            ELSE.
              t422 = `undefined`.
            ENDIF.
            DATA(t424) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t424->has = abap_true.
            t424->value = t422.
            t409 = t424.
          ENDIF.
          t396 = t409.
          DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t429 = t89.
          DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t432) = VALUE abap_bool( ).
          IF t429 IS NOT BOUND.
            t432 = abap_true.
          ELSE.
            t432 = xsdbool( t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t432 = abap_true.
          ELSE.
            t431 = t429->get( p0 = |longLength| ).
          ENDIF.
          t427 = t431.
          DATA t438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t439) = VALUE abap_bool( ).
          DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t427 IS BOUND.
            t440 = t427.
          ENDIF.
          IF t440 IS NOT BOUND.
            t439 = abap_true.
          ELSE.
            t439 = xsdbool( t440->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t439 = abap_true.
          ELSE.
            DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t444 = t427.
            DATA(t447) = VALUE abap_bool( ).
            IF t444 IS NOT BOUND.
              t447 = abap_true.
            ELSE.
              t447 = xsdbool( t444->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t447 = abap_true.
              DATA(t449) = NEW zlnt_exception_un_5f2d02892fe8( ).
              t449->source_location = |src/objects/data_element.ts:239:19|.
              RAISE EXCEPTION t449.
            ENDIF.
            DATA(t451) = VALUE string( ).
            IF t444 IS BOUND.
              t451 = t444->to_string( ).
            ELSE.
              t451 = `undefined`.
            ENDIF.
            DATA(t453) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t453->has = abap_true.
            t453->value = t451.
            t438 = t453.
          ENDIF.
          t425 = t438.
          DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t458 = t89.
          DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t461) = VALUE abap_bool( ).
          IF t458 IS NOT BOUND.
            t461 = abap_true.
          ELSE.
            t461 = xsdbool( t458->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t461 = abap_true.
          ELSE.
            t460 = t458->get( p0 = |headingLength| ).
          ENDIF.
          t456 = t460.
          DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t468) = VALUE abap_bool( ).
          DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t456 IS BOUND.
            t469 = t456.
          ENDIF.
          IF t469 IS NOT BOUND.
            t468 = abap_true.
          ELSE.
            t468 = xsdbool( t469->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t468 = abap_true.
          ELSE.
            DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t473 = t456.
            DATA(t476) = VALUE abap_bool( ).
            IF t473 IS NOT BOUND.
              t476 = abap_true.
            ELSE.
              t476 = xsdbool( t473->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t476 = abap_true.
              DATA(t478) = NEW zlnt_exception_un_5f2d02892fe8( ).
              t478->source_location = |src/objects/data_element.ts:240:22|.
              RAISE EXCEPTION t478.
            ENDIF.
            DATA(t480) = VALUE string( ).
            IF t473 IS BOUND.
              t480 = t473->to_string( ).
            ELSE.
              t480 = `undefined`.
            ENDIF.
            DATA(t482) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t482->has = abap_true.
            t482->value = t480.
            t467 = t482.
          ENDIF.
          t366 = NEW zcl_lnt_shape_66add1d1( i_short = t367 i_medium = t396 i_long = t425 i_heading = t467 ).
          CREATE OBJECT t366->zlnt_view_ownkeys_b0e8086400eb.
          t366->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `short` p1 = t483 ).
          DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t366->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `medium` p1 = t484 ).
          ENDIF.
          DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t366->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `long` p1 = t485 ).
          ENDIF.
          DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t366->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `heading` p1 = t486 ).
          ENDIF.
          CREATE OBJECT t366->zlnt_json_ownkeys_70e5fd461788.
          t366->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = |short| p1 = t488 ).
          DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = |medium| p1 = t490 ).
          ENDIF.
          DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = |long| p1 = t492 ).
          ENDIF.
          DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = |heading| p1 = t494 ).
          ENDIF.
          DATA t496 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t144 = NEW zcl_lnt_shape_50142cbd( i_description = t145 i_refkind = t163 i_domname = t185 i_datatype_9e1e = t194 i_leng_b7d5 = t203 i_texts = t265 i_text_max_lengths = t366 i_texts_translations = t496 i_decimals_2eed = t234
            i_dtelmaster = t498 i_aff_category = t154 ).
          CREATE OBJECT t144->zlnt_view_ownkeys_b0e8086400eb.
          t144->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t500 ).
          DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `affCategory` p1 = t501 ).
          ENDIF.
          DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `refkind` p1 = t502 ).
          ENDIF.
          DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `domname` p1 = t503 ).
          ENDIF.
          DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `datatype` p1 = t504 ).
          ENDIF.
          DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `leng` p1 = t505 ).
          ENDIF.
          DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t506 ).
          ENDIF.
          DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `texts` p1 = t507 ).
          ENDIF.
          DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textMaxLengths` p1 = t508 ).
          ENDIF.
          CREATE OBJECT t144->zlnt_json_ownkeys_70e5fd461788.
          t144->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t510 ).
          DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |affCategory| p1 = t512 ).
          ENDIF.
          DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |refkind| p1 = t514 ).
          ENDIF.
          DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |domname| p1 = t516 ).
          ENDIF.
          DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |datatype| p1 = t518 ).
          ENDIF.
          DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |leng| p1 = t520 ).
          ENDIF.
          DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |decimals| p1 = t522 ).
          ENDIF.
          DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |texts| p1 = t524 ).
          ENDIF.
          DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textMaxLengths| p1 = t526 ).
          ENDIF.
          me->parsed_xml = t144.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
        CATCH zlnt_exception_cl_30eec8e8805d INTO t55.
          DATA(t528) = t55->payload.
      ENDTRY.
      DATA(t529) = VALUE f( ).
      DATA(t531) = 0.
      t529 = zlnt_runtime_tele_970d5104e5f4=>now( ).
      DATA t532 TYPE REF TO zcl_lnt_iparse_result.
      DATA(t535) = VALUE f( ).
      t535 = t529 - t22.
      DATA t539 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t532 = NEW zcl_lnt_iparse_result( i_updated = abap_true i_runtime = t535 i_runtime_extra = t539 ).
      CREATE OBJECT t532->zlnt_view_ownkeys_b0e8086400eb.
      t532->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t532->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t541 ).
      DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t532->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t532->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t542 ).
      ENDIF.
      CREATE OBJECT t532->zlnt_json_ownkeys_70e5fd461788.
      t532->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t532->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t544 ).
      DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t532->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t532->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t546 ).
      ENDIF.
      result = t532.
      RETURN.
    ENDIF.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t547 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t547 IS INITIAL ) = abap_true.
    ELSE.
      t550 = t547.
    ENDIF.
    t549 = t550.
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t549 IS INITIAL ) = abap_true.
      DATA t563 TYPE REF TO zcl_lnt_iparse_result.
      DATA t568 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t563 = NEW zcl_lnt_iparse_result( i_updated = abap_false i_runtime = CONV f( 0 ) i_runtime_extra = t568 ).
      CREATE OBJECT t563->zlnt_view_ownkeys_b0e8086400eb.
      t563->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t563->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t570 ).
      DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t563->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t563->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t571 ).
      ENDIF.
      CREATE OBJECT t563->zlnt_json_ownkeys_70e5fd461788.
      t563->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t563->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t573 ).
      DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t563->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t563->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t575 ).
      ENDIF.
      result = t563.
      RETURN.
    ENDIF.
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t582 = t549->get( p0 = |abapGit| ).
    DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t588) = VALUE abap_bool( ).
    IF t582 IS NOT BOUND.
      t588 = abap_true.
    ELSE.
      t588 = xsdbool( t582->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t588 = abap_true.
    ELSE.
      t587 = t582->get( p0 = |asx:abap| ).
    ENDIF.
    t580 = t587.
    DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t595) = VALUE abap_bool( ).
    DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t580 IS BOUND.
      t596 = t580.
    ENDIF.
    IF t596 IS NOT BOUND.
      t595 = abap_true.
    ELSE.
      t595 = xsdbool( t596->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t595 = abap_true.
    ELSE.
      t594 = t580->get( p0 = |asx:values| ).
    ENDIF.
    t578 = t594.
    DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t604) = VALUE abap_bool( ).
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t578 IS BOUND.
      t605 = t578.
    ENDIF.
    IF t605 IS NOT BOUND.
      t604 = abap_true.
    ELSE.
      t604 = xsdbool( t605->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t604 = abap_true.
    ELSE.
      t603 = t578->get( p0 = |DD04V| ).
    ENDIF.
    t576 = t603.
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t576 IS INITIAL ) = abap_true.
    ELSE.
      t613 = t576.
    ENDIF.
    t612 = t613.
    DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t624 = t612.
    DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t627) = VALUE abap_bool( ).
    DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t624 IS BOUND.
      t628 = t624.
    ENDIF.
    IF t628 IS NOT BOUND.
      t627 = abap_true.
    ELSE.
      t627 = xsdbool( t628->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t627 = abap_true.
    ELSE.
      t626 = t624->get( p0 = |DDTEXT| ).
    ENDIF.
    t622 = t626.
    DATA t635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t637 = t612.
    DATA t639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t640) = VALUE abap_bool( ).
    DATA t641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t637 IS BOUND.
      t641 = t637.
    ENDIF.
    IF t641 IS NOT BOUND.
      t640 = abap_true.
    ELSE.
      t640 = xsdbool( t641->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t640 = abap_true.
    ELSE.
      t639 = t637->get( p0 = |REFKIND| ).
    ENDIF.
    t635 = t639.
    DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t650 = t612.
    DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t653) = VALUE abap_bool( ).
    DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t650 IS BOUND.
      t654 = t650.
    ENDIF.
    IF t654 IS NOT BOUND.
      t653 = abap_true.
    ELSE.
      t653 = xsdbool( t654->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t653 = abap_true.
    ELSE.
      t652 = t650->get( p0 = |DOMNAME| ).
    ENDIF.
    t648 = t652.
    DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t663 = t612.
    DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t666) = VALUE abap_bool( ).
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t663 IS BOUND.
      t667 = t663.
    ENDIF.
    IF t667 IS NOT BOUND.
      t666 = abap_true.
    ELSE.
      t666 = xsdbool( t667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t666 = abap_true.
    ELSE.
      t665 = t663->get( p0 = |DATATYPE| ).
    ENDIF.
    t661 = t665.
    DATA t674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t676 = t612.
    DATA t678 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t679) = VALUE abap_bool( ).
    DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t676 IS BOUND.
      t680 = t676.
    ENDIF.
    IF t680 IS NOT BOUND.
      t679 = abap_true.
    ELSE.
      t679 = xsdbool( t680->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t679 = abap_true.
    ELSE.
      t678 = t676->get( p0 = |LENG| ).
    ENDIF.
    t674 = t678.
    DATA t687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t689 = t612.
    DATA t691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t692) = VALUE abap_bool( ).
    DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t689 IS BOUND.
      t693 = t689.
    ENDIF.
    IF t693 IS NOT BOUND.
      t692 = abap_true.
    ELSE.
      t692 = xsdbool( t693->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t692 = abap_true.
    ELSE.
      t691 = t689->get( p0 = |DECIMALS| ).
    ENDIF.
    t687 = t691.
    DATA t700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t702 = t612.
    DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t705) = VALUE abap_bool( ).
    DATA t706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t702 IS BOUND.
      t706 = t702.
    ENDIF.
    IF t706 IS NOT BOUND.
      t705 = abap_true.
    ELSE.
      t705 = xsdbool( t706->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t705 = abap_true.
    ELSE.
      t704 = t702->get( p0 = |DTELMASTER| ).
    ENDIF.
    t700 = t704.
    DATA t713 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA t714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t622 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t719) = VALUE string( ).
      t719 = t622->as_string( ).
      DATA(t722) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t722->has = abap_true.
      t722->value = t719.
      t715 = t722.
    ENDIF.
    t714 = t715.
    DATA t723 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t724 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t635 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t728) = VALUE string( ).
      t728 = t635->as_string( ).
      DATA(t731) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t731->has = abap_true.
      t731->value = t728.
      t724 = t731.
    ENDIF.
    t723 = t724.
    DATA t732 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t733 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t648 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t737) = VALUE string( ).
      t737 = t648->as_string( ).
      DATA(t740) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t740->has = abap_true.
      t740->value = t737.
      t733 = t740.
    ENDIF.
    t732 = t733.
    DATA t741 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t661 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t746) = VALUE string( ).
      t746 = t661->as_string( ).
      DATA(t749) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t749->has = abap_true.
      t749->value = t746.
      t742 = t749.
    ENDIF.
    t741 = t742.
    DATA t750 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t751 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t674 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t755) = VALUE string( ).
      t755 = t674->as_string( ).
      DATA(t758) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t758->has = abap_true.
      t758->value = t755.
      t751 = t758.
    ENDIF.
    t750 = t751.
    DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t687 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t764) = VALUE string( ).
      t764 = t687->as_string( ).
      DATA(t767) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t767->has = abap_true.
      t767->value = t764.
      t760 = t767.
    ENDIF.
    t759 = t760.
    DATA t768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t700 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t773) = VALUE string( ).
      t773 = t700->as_string( ).
      DATA(t776) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t776->has = abap_true.
      t776->value = t773.
      t769 = t776.
    ENDIF.
    t768 = t769.
    DATA t777 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA t781 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t783 = t612.
    DATA t785 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t786) = VALUE abap_bool( ).
    DATA t787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t783 IS BOUND.
      t787 = t783.
    ENDIF.
    IF t787 IS NOT BOUND.
      t786 = abap_true.
    ELSE.
      t786 = xsdbool( t787->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t786 = abap_true.
    ELSE.
      t785 = t783->get( p0 = |SCRTEXT_S| ).
    ENDIF.
    t781 = t785.
    DATA t794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t796 = t612.
    DATA t798 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t799) = VALUE abap_bool( ).
    DATA t800 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t796 IS BOUND.
      t800 = t796.
    ENDIF.
    IF t800 IS NOT BOUND.
      t799 = abap_true.
    ELSE.
      t799 = xsdbool( t800->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t799 = abap_true.
    ELSE.
      t798 = t796->get( p0 = |SCRTEXT_M| ).
    ENDIF.
    t794 = t798.
    DATA t807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t809 = t612.
    DATA t811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t812) = VALUE abap_bool( ).
    DATA t813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t809 IS BOUND.
      t813 = t809.
    ENDIF.
    IF t813 IS NOT BOUND.
      t812 = abap_true.
    ELSE.
      t812 = xsdbool( t813->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t812 = abap_true.
    ELSE.
      t811 = t809->get( p0 = |SCRTEXT_L| ).
    ENDIF.
    t807 = t811.
    DATA t820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t822 = t612.
    DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t825) = VALUE abap_bool( ).
    DATA t826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t822 IS BOUND.
      t826 = t822.
    ENDIF.
    IF t826 IS NOT BOUND.
      t825 = abap_true.
    ELSE.
      t825 = xsdbool( t826->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t825 = abap_true.
    ELSE.
      t824 = t822->get( p0 = |REPTEXT| ).
    ENDIF.
    t820 = t824.
    DATA t833 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA t834 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t835 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t781 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t839) = VALUE string( ).
      t839 = t781->as_string( ).
      DATA(t842) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t842->has = abap_true.
      t842->value = t839.
      t835 = t842.
    ENDIF.
    t834 = t835.
    DATA t843 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t844 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t794 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t848) = VALUE string( ).
      t848 = t794->as_string( ).
      DATA(t851) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t851->has = abap_true.
      t851->value = t848.
      t844 = t851.
    ENDIF.
    t843 = t844.
    DATA t852 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t853 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t807 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t857) = VALUE string( ).
      t857 = t807->as_string( ).
      DATA(t860) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t860->has = abap_true.
      t860->value = t857.
      t853 = t860.
    ENDIF.
    t852 = t853.
    DATA t862 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t820 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t866) = VALUE string( ).
      t866 = t820->as_string( ).
      DATA(t869) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t869->has = abap_true.
      t869->value = t866.
      t862 = t869.
    ENDIF.
    t833 = NEW zcl_lnt_shape_66add1d1( i_short = t834 i_medium = t843 i_long = t852 i_heading = t862 ).
    CREATE OBJECT t833->zlnt_view_ownkeys_b0e8086400eb.
    t833->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `short` p1 = t870 ).
    DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `medium` p1 = t871 ).
    ENDIF.
    DATA t872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `long` p1 = t872 ).
    ENDIF.
    DATA t873 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `heading` p1 = t873 ).
    ENDIF.
    CREATE OBJECT t833->zlnt_json_ownkeys_70e5fd461788.
    t833->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t833->zlnt_json_ownkeys_70e5fd461788->put( p0 = |short| p1 = t875 ).
    DATA t877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t833->zlnt_json_ownkeys_70e5fd461788->put( p0 = |medium| p1 = t877 ).
    ENDIF.
    DATA t879 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t833->zlnt_json_ownkeys_70e5fd461788->put( p0 = |long| p1 = t879 ).
    ENDIF.
    DATA t881 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t833->zlnt_json_ownkeys_70e5fd461788->put( p0 = |heading| p1 = t881 ).
    ENDIF.
    t777 = t833.
    DATA t887 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t889 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t889 = t612.
    DATA t891 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t892) = VALUE abap_bool( ).
    DATA t893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t889 IS BOUND.
      t893 = t889.
    ENDIF.
    IF t893 IS NOT BOUND.
      t892 = abap_true.
    ELSE.
      t892 = xsdbool( t893->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t892 = abap_true.
    ELSE.
      t891 = t889->get( p0 = |SCRLEN1| ).
    ENDIF.
    t887 = t891.
    DATA t900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t902 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t902 = t612.
    DATA t904 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t905) = VALUE abap_bool( ).
    DATA t906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t902 IS BOUND.
      t906 = t902.
    ENDIF.
    IF t906 IS NOT BOUND.
      t905 = abap_true.
    ELSE.
      t905 = xsdbool( t906->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t905 = abap_true.
    ELSE.
      t904 = t902->get( p0 = |SCRLEN2| ).
    ENDIF.
    t900 = t904.
    DATA t913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t915 = t612.
    DATA t917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t918) = VALUE abap_bool( ).
    DATA t919 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t915 IS BOUND.
      t919 = t915.
    ENDIF.
    IF t919 IS NOT BOUND.
      t918 = abap_true.
    ELSE.
      t918 = xsdbool( t919->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t918 = abap_true.
    ELSE.
      t917 = t915->get( p0 = |SCRLEN3| ).
    ENDIF.
    t913 = t917.
    DATA t926 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t928 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t928 = t612.
    DATA t930 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t931) = VALUE abap_bool( ).
    DATA t932 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t928 IS BOUND.
      t932 = t928.
    ENDIF.
    IF t932 IS NOT BOUND.
      t931 = abap_true.
    ELSE.
      t931 = xsdbool( t932->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t931 = abap_true.
    ELSE.
      t930 = t928->get( p0 = |HEADLEN| ).
    ENDIF.
    t926 = t930.
    DATA t939 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA t940 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t941 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t887 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t945) = VALUE string( ).
      t945 = t887->as_string( ).
      DATA(t948) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t948->has = abap_true.
      t948->value = t945.
      t941 = t948.
    ENDIF.
    t940 = t941.
    DATA t949 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t950 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t900 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t954) = VALUE string( ).
      t954 = t900->as_string( ).
      DATA(t957) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t957->has = abap_true.
      t957->value = t954.
      t950 = t957.
    ENDIF.
    t949 = t950.
    DATA t958 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t959 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t913 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t963) = VALUE string( ).
      t963 = t913->as_string( ).
      DATA(t966) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t966->has = abap_true.
      t966->value = t963.
      t959 = t966.
    ENDIF.
    t958 = t959.
    DATA t968 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t926 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t972) = VALUE string( ).
      t972 = t926->as_string( ).
      DATA(t975) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t975->has = abap_true.
      t975->value = t972.
      t968 = t975.
    ENDIF.
    t939 = NEW zcl_lnt_shape_66add1d1( i_short = t940 i_medium = t949 i_long = t958 i_heading = t968 ).
    CREATE OBJECT t939->zlnt_view_ownkeys_b0e8086400eb.
    t939->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t976 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `short` p1 = t976 ).
    DATA t977 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t939->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `medium` p1 = t977 ).
    ENDIF.
    DATA t978 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t939->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `long` p1 = t978 ).
    ENDIF.
    DATA t979 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t939->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `heading` p1 = t979 ).
    ENDIF.
    CREATE OBJECT t939->zlnt_json_ownkeys_70e5fd461788.
    t939->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t939->zlnt_json_ownkeys_70e5fd461788->put( p0 = |short| p1 = t981 ).
    DATA t983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t939->zlnt_json_ownkeys_70e5fd461788->put( p0 = |medium| p1 = t983 ).
    ENDIF.
    DATA t985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t939->zlnt_json_ownkeys_70e5fd461788->put( p0 = |long| p1 = t985 ).
    ENDIF.
    DATA t987 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t939->zlnt_json_ownkeys_70e5fd461788->put( p0 = |heading| p1 = t987 ).
    ENDIF.
    DATA t989 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t991 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t713 = NEW zcl_lnt_shape_50142cbd( i_description = t714 i_refkind = t723 i_domname = t732 i_datatype_9e1e = t741 i_leng_b7d5 = t750 i_texts = t777 i_text_max_lengths = t939 i_texts_translations = t989 i_decimals_2eed = t759
      i_dtelmaster = t768 i_aff_category = t991 ).
    CREATE OBJECT t713->zlnt_view_ownkeys_b0e8086400eb.
    t713->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t993 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t993 ).
    DATA t994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `refkind` p1 = t994 ).
    ENDIF.
    DATA t995 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `domname` p1 = t995 ).
    ENDIF.
    DATA t996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `datatype` p1 = t996 ).
    ENDIF.
    DATA t997 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `leng` p1 = t997 ).
    ENDIF.
    DATA t998 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t998 ).
    ENDIF.
    DATA t999 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dtelmaster` p1 = t999 ).
    ENDIF.
    DATA t1000 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `texts` p1 = t1000 ).
    ENDIF.
    DATA t1001 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textMaxLengths` p1 = t1001 ).
    ENDIF.
    CREATE OBJECT t713->zlnt_json_ownkeys_70e5fd461788.
    t713->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1003 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t1003 ).
    DATA t1005 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = |refkind| p1 = t1005 ).
    ENDIF.
    DATA t1007 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = |domname| p1 = t1007 ).
    ENDIF.
    DATA t1009 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = |datatype| p1 = t1009 ).
    ENDIF.
    DATA t1011 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = |leng| p1 = t1011 ).
    ENDIF.
    DATA t1013 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = |decimals| p1 = t1013 ).
    ENDIF.
    DATA t1015 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = |dtelmaster| p1 = t1015 ).
    ENDIF.
    DATA t1017 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = |texts| p1 = t1017 ).
    ENDIF.
    DATA t1019 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textMaxLengths| p1 = t1019 ).
    ENDIF.
    me->parsed_xml = t713.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t1021 TYPE REF TO zcl_lnt_shape_50142cbd.
    t1021 = me->parsed_xml.
    DATA t1025 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1025.
    t1021->texts_translations = t1025.
    DELETE t1021->zlnt_record_delet_0597644d88b4 WHERE table_line = `textsTranslations`.
    DATA t1027 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1021->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1021->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textsTranslations` p1 = t1027 ).
    ENDIF.
    DATA t1029 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1021->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1021->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textsTranslations| p1 = t1029 ).
    ENDIF.
    DATA t1030 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1031 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1032 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1033 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1035 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1039 = t549->get( p0 = |abapGit| ).
    DATA t1044 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1045) = VALUE abap_bool( ).
    IF t1039 IS NOT BOUND.
      t1045 = abap_true.
    ELSE.
      t1045 = xsdbool( t1039->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t1045 = abap_true.
    ELSE.
      t1044 = t1039->get( p0 = |asx:abap| ).
    ENDIF.
    t1037 = t1044.
    DATA t1051 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1052) = VALUE abap_bool( ).
    DATA t1053 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1037 IS BOUND.
      t1053 = t1037.
    ENDIF.
    IF t1053 IS NOT BOUND.
      t1052 = abap_true.
    ELSE.
      t1052 = xsdbool( t1053->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t1052 = abap_true.
    ELSE.
      t1051 = t1037->get( p0 = |asx:values| ).
    ENDIF.
    t1035 = t1051.
    DATA t1060 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1061) = VALUE abap_bool( ).
    DATA t1062 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1035 IS BOUND.
      t1062 = t1035.
    ENDIF.
    IF t1062 IS NOT BOUND.
      t1061 = abap_true.
    ELSE.
      t1061 = xsdbool( t1062->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t1061 = abap_true.
    ELSE.
      t1060 = t1035->get( p0 = |DD04_TEXTS| ).
    ENDIF.
    t1033 = t1060.
    DATA t1069 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1070) = VALUE abap_bool( ).
    DATA t1071 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1033 IS BOUND.
      t1071 = t1033.
    ENDIF.
    IF t1071 IS NOT BOUND.
      t1070 = abap_true.
    ELSE.
      t1070 = xsdbool( t1071->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t1070 = abap_true.
    ELSE.
      t1069 = t1033->get( p0 = |item| ).
    ENDIF.
    t1032 = t1069.
    IF t1032 IS BOUND.
      t1031 = t1032.
    ENDIF.
    t1030 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t1031 ).
    DATA t1078 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1079 TYPE REF TO object.
    DATA(t1080) = VALUE i( ).
    DO.
      t1030->load( ).
      IF t1080 >= lines( t1030->items ).
        EXIT.
      ENDIF.
      CLEAR t1079.
      READ TABLE t1030->items INDEX t1080 + 1 INTO t1079.
      t1080 = t1080 + 1.
      DATA t1081 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1081.
      CLEAR t1078.
      IF t1079 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t1081 ?= t1079.
        t1078 = t1081.
      ELSE.
        IF t1079 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t1082 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t1082.
          t1082 ?= t1079.
          CLEAR t1078.
          IF t1082 IS BOUND.
            CREATE OBJECT t1078.
            t1078->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t1078->cval = t1082.
          ENDIF.
        ELSE.
          CLEAR t1078.
          IF t1079 IS BOUND.
            DATA t1083 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1083.
            CLEAR t1083.
            TRY.
                t1078 ?= t1079.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t1078 IS NOT BOUND.
              TRY.
                  t1083 ?= t1079.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1083 IS BOUND.
                t1078 = t1083->source( ).
              ENDIF.
              IF t1078 IS NOT BOUND.
                CREATE OBJECT t1078.
                t1078->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t1078->oval = t1079.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t1085 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t1085 = me->parsed_xml->texts_translations.
      DATA t1089 TYPE REF TO zcl_lnt_shape_0802eb0f.
      CLEAR t1089.
      DATA t1090 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1090 = t1078->get( p0 = |DDLANGUAGE| ).
      DATA t1094 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1094 = t1078->get( p0 = |DDTEXT| ).
      DATA t1098 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1098 = t1078->get( p0 = |SCRTEXT_S| ).
      DATA t1102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1102 = t1078->get( p0 = |SCRTEXT_M| ).
      DATA t1106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1106 = t1078->get( p0 = |SCRTEXT_L| ).
      DATA t1110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1110 = t1078->get( p0 = |REPTEXT| ).
      DATA t1114 TYPE REF TO zcl_lnt_shape_0802eb0f.
      CLEAR t1114.
      DATA t1115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1115.
      DATA t1116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1116.
      IF xsdbool( t1090 IS INITIAL ) = abap_true.
        CLEAR t1116.
      ELSE.
        DATA(t1120) = VALUE string( ).
        t1120 = t1090->as_string( ).
        DATA(t1122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1122->has = abap_true.
        t1122->value = t1120.
        t1116 = t1122.
      ENDIF.
      t1115 = t1116.
      DATA t1123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1123.
      DATA t1124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1124.
      IF xsdbool( t1094 IS INITIAL ) = abap_true.
        CLEAR t1124.
      ELSE.
        DATA(t1128) = VALUE string( ).
        t1128 = t1094->as_string( ).
        DATA(t1130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1130->has = abap_true.
        t1130->value = t1128.
        t1124 = t1130.
      ENDIF.
      t1123 = t1124.
      DATA t1131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1131.
      DATA t1132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1132.
      IF xsdbool( t1098 IS INITIAL ) = abap_true.
        CLEAR t1132.
      ELSE.
        DATA(t1136) = VALUE string( ).
        t1136 = t1098->as_string( ).
        DATA(t1138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1138->has = abap_true.
        t1138->value = t1136.
        t1132 = t1138.
      ENDIF.
      t1131 = t1132.
      DATA t1139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1139.
      DATA t1140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1140.
      IF xsdbool( t1102 IS INITIAL ) = abap_true.
        CLEAR t1140.
      ELSE.
        DATA(t1144) = VALUE string( ).
        t1144 = t1102->as_string( ).
        DATA(t1146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1146->has = abap_true.
        t1146->value = t1144.
        t1140 = t1146.
      ENDIF.
      t1139 = t1140.
      DATA t1147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1147.
      DATA t1148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1148.
      IF xsdbool( t1106 IS INITIAL ) = abap_true.
        CLEAR t1148.
      ELSE.
        DATA(t1152) = VALUE string( ).
        t1152 = t1106->as_string( ).
        DATA(t1154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1154->has = abap_true.
        t1154->value = t1152.
        t1148 = t1154.
      ENDIF.
      t1147 = t1148.
      DATA t1156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1156.
      IF xsdbool( t1110 IS INITIAL ) = abap_true.
        CLEAR t1156.
      ELSE.
        DATA(t1160) = VALUE string( ).
        t1160 = t1110->as_string( ).
        DATA(t1162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1162->has = abap_true.
        t1162->value = t1160.
        t1156 = t1162.
      ENDIF.
      t1114 = NEW zcl_lnt_shape_0802eb0f( i_language = t1115 i_description = t1123 i_short = t1131 i_medium = t1139 i_long = t1147 i_heading = t1156 ).
      CREATE OBJECT t1114->zlnt_view_ownkeys_b0e8086400eb.
      t1114->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t1163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1163.
      t1114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t1163 ).
      DATA t1164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1164.
      IF t1114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t1164 ).
      ENDIF.
      DATA t1165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1165.
      IF t1114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `short` p1 = t1165 ).
      ENDIF.
      DATA t1166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1166.
      IF t1114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `medium` p1 = t1166 ).
      ENDIF.
      DATA t1167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1167.
      IF t1114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `long` p1 = t1167 ).
      ENDIF.
      DATA t1168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1168.
      IF t1114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `heading` p1 = t1168 ).
      ENDIF.
      CREATE OBJECT t1114->zlnt_json_ownkeys_70e5fd461788.
      t1114->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t1170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1170.
      t1114->zlnt_json_ownkeys_70e5fd461788->put( p0 = |language| p1 = t1170 ).
      DATA t1172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1172.
      IF t1114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1114->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t1172 ).
      ENDIF.
      DATA t1174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1174.
      IF t1114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1114->zlnt_json_ownkeys_70e5fd461788->put( p0 = |short| p1 = t1174 ).
      ENDIF.
      DATA t1176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1176.
      IF t1114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1114->zlnt_json_ownkeys_70e5fd461788->put( p0 = |medium| p1 = t1176 ).
      ENDIF.
      DATA t1178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1178.
      IF t1114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1114->zlnt_json_ownkeys_70e5fd461788->put( p0 = |long| p1 = t1178 ).
      ENDIF.
      DATA t1180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1180.
      IF t1114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1114->zlnt_json_ownkeys_70e5fd461788->put( p0 = |heading| p1 = t1180 ).
      ENDIF.
      t1089 = t1114.
      t1085->load( ).
      APPEND t1089 TO t1085->items.
      t1085->save( ).
    ENDDO.
    DATA(t1181) = VALUE f( ).
    DATA(t1183) = 0.
    t1181 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t1184 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t1187) = VALUE f( ).
    t1187 = t1181 - t22.
    DATA t1191 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t1184 = NEW zcl_lnt_iparse_result( i_updated = abap_true i_runtime = t1187 i_runtime_extra = t1191 ).
    CREATE OBJECT t1184->zlnt_view_ownkeys_b0e8086400eb.
    t1184->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t1193 ).
    DATA t1194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t1194 ).
    ENDIF.
    CREATE OBJECT t1184->zlnt_json_ownkeys_70e5fd461788.
    t1184->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1184->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t1196 ).
    DATA t1198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1184->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t1198 ).
    ENDIF.
    result = t1184.

  ENDMETHOD.

  METHOD get_aff_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    t4 = me.
    t2 = t4->files.
    DATA t8 TYPE i.
    t2->load( ).
    t8 = lines( t2->items ).
    DATA t11 TYPE i.
    t11 = 0.
    DATA t13 TYPE REF TO zif_lnt_file.
    DO.
      IF xsdbool( t11 < t8 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_file.
      CLEAR t18.
      DATA t20 TYPE REF TO zif_lnt_file.
      CLEAR t20.
      DATA t23 TYPE REF TO object.
      t23 = t2->get( p0 = t11 ).
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
      t18 = t20.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE string.
      DATA t28 TYPE string.
      t28 = t18->get_filename( ).
      DATA(t30) = strlen( t28 ).
      t27 = t28.
      TRANSLATE t27 TO LOWER CASE.
      DATA(t31) = |.dtel.json|.
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
        t13 = t18.
        EXIT.
      ENDIF.
      DATA(t42) = 1.
      t11 = t11 + t42.
    ENDDO.
    result = t13.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).

  ENDMETHOD.

  METHOD fn_lookup_predefined_type.
    DATA(t1) = i_ddic.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t6 TYPE REF TO zcl_lnt_shape_50142cbd.
    t6 = me->parsed_xml.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      t8 = t6->datatype_2b0f.
    ENDIF.
    t4 = t8.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t17) = VALUE abap_bool( ).
    IF t4 IS INITIAL.
      t17 = abap_true.
    ELSEIF t4->has = abap_false.
      t17 = abap_true.
    ENDIF.
    t3 = t17.
    t2 = t3.
    IF t3 = abap_false.
      DATA t20 TYPE string.
      t20 = me->parsed_xml->datatype_2b0f->value.
      t2 = xsdbool( t20 = || ).
    ENDIF.
    IF t2 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t29) = |DATATYPE unexpectely empty in |.
      DATA t30 TYPE string.
      DATA t31 TYPE REF TO zcl_lnt_abstract_object.
      t31 = me.
      t30 = t31->name.
      DATA(t35) = strlen( t29 ).
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t26 = NEW zcl_lnt_unknown_type( i_error = |{ t29 }{ t30 }| i_qualified_name = t36 ).
      DATA t37 TYPE REF TO zif_lnt_object.
      t25 = NEW zcl_lnt_ilookup_result( i_type_9913 = t26 i_object_19cd = t37 ).
      CREATE OBJECT t25->zlnt_view_ownkeys_b0e8086400eb.
      t25->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t39 ).
      CREATE OBJECT t25->zlnt_json_ownkeys_70e5fd461788.
      t25->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t41 ).
      result = t25.
      RETURN.
    ENDIF.
    DATA t42 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t46 TYPE REF TO zcl_lnt_shape_4a88086c.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t50 TYPE string.
    t50 = me->parsed_xml->datatype_2b0f->value.
    DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t54->has = abap_true.
    t54->value = t50.
    t47 = t54.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t56 = me->parsed_xml->leng_e82a.
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t60 = me->parsed_xml->decimals_29bf.
    DATA t64 TYPE string.
    DATA t66 TYPE REF TO zcl_lnt_abstract_object.
    t66 = me.
    t64 = t66->name.
    DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t74 TYPE REF TO zcl_lnt_abstract_object.
    t74 = me.
    DATA t76 TYPE string.
    t76 = t74->name.
    DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t78->has = abap_true.
    t78->value = t76.
    t70 = t78.
    DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t86 TYPE REF TO zcl_lnt_abstract_object.
    t86 = me.
    DATA t88 TYPE string.
    t88 = t86->name.
    DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t90->has = abap_true.
    t90->value = t88.
    t82 = t90.
    DATA t94 TYPE REF TO zcl_lnt_shape_66add1d1.
    t94 = me->parsed_xml->texts.
    DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t94 IS INITIAL ) = abap_true.
    ELSE.
      t98 = t94->heading.
    ENDIF.
    t46 = NEW zcl_lnt_shape_4a88086c( i_text = t47 i_length = t56 i_decimals_2eed = t60 i_info_text = t64 i_qualified_name = t70 i_conversion_exit = t80 i_ddic_name = t82 i_description = t98 ).
    CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
    t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `text` p1 = t105 ).
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t106 ).
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t107 ).
    ENDIF.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `infoText` p1 = t108 ).
    ENDIF.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t109 ).
    ENDIF.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t110 ).
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t111 ).
    ENDIF.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t112 ).
    ENDIF.
    CREATE OBJECT t46->zlnt_json_ownkeys_70e5fd461788.
    t46->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |text| p1 = t114 ).
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |length| p1 = t116 ).
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |decimals| p1 = t118 ).
    ENDIF.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |infoText| p1 = t120 ).
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t122 ).
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |conversionExit| p1 = t124 ).
    ENDIF.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ddicName| p1 = t126 ).
    ENDIF.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t128 ).
    ENDIF.
    DATA t129 TYPE REF TO zif_lnt_object.
    t42 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1->text_to_type( i_input_967e = t46 ) i_object_19cd = t129 ).
    CREATE OBJECT t42->zlnt_view_ownkeys_b0e8086400eb.
    t42->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t131 ).
    CREATE OBJECT t42->zlnt_json_ownkeys_70e5fd461788.
    t42->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t133 ).
    result = t42.

  ENDMETHOD.

  METHOD parse_type.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA(t5) = i_reg_f149.
    result = me->pr_ty_in_sr_ob_dt_el_ts_dt_elm( i_reg_f149 = t5 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1237_d1e4d0feefd6.
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
