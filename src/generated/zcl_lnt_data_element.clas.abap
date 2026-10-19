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
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_50142cbd.
      t10 = t3.
      t9 = t10->description.
      t5 = t9.
    ENDIF.
    result = t5.

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

  METHOD get_identifier.
    DATA t1 TYPE REF TO zcl_lnt_fi_identifier.
    t1 = CAST zcl_lnt_fi_identifier( super->get_identifier( ) ).
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( t1 IS BOUND ).
    IF t3 = abap_true.
      result = t1.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_file.
    t10 = CAST zif_lnt_file( me->get_aff_file( ) ).
    DATA(t12) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t12 = xsdbool( t10 IS INITIAL ).
    IF t12 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
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
    t29 = me.
    DATA t31 TYPE string.
    t31 = t29->name.
    t28 = t31.
    t23 = NEW zcl_lnt_lx_identifier( i_start = t24 i_str = t28 ).
    DATA t33 TYPE string.
    DATA t34 TYPE REF TO zif_lnt_file.
    t34 = t10.
    t33 = t34->get_filename( ).
    t22 = NEW zcl_lnt_fi_identifier( i_token = t23 i_filename = t33 ).
    result = t22.

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
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_50142cbd.
      t10 = t3.
      t9 = t10->domname.
      t5 = t9.
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
    DATA(t8) = xsdbool( t5 IS INITIAL ).
    IF t8 = abap_true.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t12 TYPE REF TO zcl_lnt_shape_50142cbd.
      t12 = t5.
      t11 = t12->datatype_2b0f.
      t7 = t11.
    ENDIF.
    t4 = t7.
    IF t4 IS BOUND.
      IF t4->has = abap_true.
        t3 = xsdbool( strlen( t4->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t3 = abap_true.
      DATA t16 TYPE string.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t18 TYPE REF TO zcl_lnt_shape_50142cbd.
      t18 = me->parsed_xml.
      t17 = t18->datatype_2b0f.
      t16 = t17->value.
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
      DATA(t31) = xsdbool( t28 IS INITIAL ).
      IF t31 = abap_true.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t35 TYPE REF TO zcl_lnt_shape_50142cbd.
        t35 = t28.
        t34 = t35->refkind.
        t30 = t34.
      ENDIF.
      t27 = t30.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t39) = |D|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
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
      DATA t46 TYPE REF TO zcl_lnt_shape_50142cbd.
      t46 = me->parsed_xml.
      t45 = t46->domname.
      IF t45 IS BOUND.
        IF t45->has = abap_true.
          t44 = xsdbool( strlen( t45->value ) > 0 ).
        ENDIF.
      ENDIF.
      t22 = t44.
    ENDIF.
    IF t22 = abap_true.
      DATA t48 TYPE REF TO zif_lnt_object.
      DATA t49 TYPE REF TO zif_lnt_object.
      DATA t50 TYPE REF TO zif_lnt_registry.
      t50 = t1.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t54) = |DOMA|.
      DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t55->has = abap_true.
      t55->value = t54.
      t52 = t55.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t59 TYPE string.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t61 TYPE REF TO zcl_lnt_shape_50142cbd.
      t61 = me->parsed_xml.
      t60 = t61->domname.
      t59 = t60->value.
      DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t63->has = abap_true.
      t63->value = t59.
      t57 = t63.
      t49 = t50->get_object( i_type_9913 = t52 i_name = t57 ).
      t48 = t49.
      DATA t65 TYPE abap_bool.
      t65 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_domain ).
      IF t65 = abap_true.
        DATA t68 TYPE REF TO zcl_lnt_domain.
        DATA t69 TYPE REF TO zcl_lnt_domain.
        DATA t71 TYPE REF TO object.
        t71 = t48.
        t69 ?= t71.
        t68 = t69.
        DATA t73 TYPE REF TO zcl_lnt_iparse_result.
        t73 = t68->prs_instn_src_objct_dmn_ts_dmn( ).
        DATA t76 TYPE REF TO zcl_lnt_shape_b346f020.
        DATA t77 TYPE REF TO zcl_lnt_shape_b346f020.
        t77 = t68->parsed_xml.
        t76 = t77.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t80) = xsdbool( t76 IS INITIAL ).
        IF t80 = abap_true.
        ELSE.
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t84 TYPE REF TO zcl_lnt_shape_b346f020.
          t84 = t76.
          t83 = t84->datatype_2b0f.
          t79 = t83.
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
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA t10 TYPE REF TO zcl_lnt_shape_50142cbd.
      t10 = t3.
      t9 = t10->texts.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_text_max_lengths.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA t10 TYPE REF TO zcl_lnt_shape_50142cbd.
      t10 = t3.
      t9 = t10->text_max_lengths.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_texts_translations.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zcl_lnt_shape_50142cbd.
      t10 = t3.
      t9 = t10->texts_translations.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_dtel_master.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_50142cbd.
      t10 = t3.
      t9 = t10->dtelmaster.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD pr_ty_in_sr_ob_dt_el_ts_dt_elm.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_ilookup_result.
    DATA(t6) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA(t7) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7 = xsdbool( me->parsed_xml IS INITIAL ).
    IF t7 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      DATA t18 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t19) = VALUE string( ).
      DATA(t20) = VALUE string( ).
      DATA(t21) = |Data Element |.
      DATA(t22) = VALUE string( ).
      DATA t23 TYPE REF TO zcl_lnt_abstract_object.
      t23 = me.
      DATA(t25) = VALUE string( ).
      t25 = t23->name.
      t22 = t25.
      DATA(t27) = strlen( t21 ).
      t20 = |{ t21 }{ t22 }|.
      DATA(t28) = |, parser error|.
      DATA(t29) = strlen( t20 ).
      t19 = |{ t20 }{ t28 }|.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t18 = NEW zcl_lnt_unknown_type( i_error = t19 i_qualified_name = t30 ).
      t17 = t18.
      DATA t31 TYPE REF TO zif_lnt_object.
      t16 = NEW zcl_lnt_ilookup_result( i_type_9913 = t17 i_object_19cd = t31 ).
      CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
      t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t33 ).
      CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
      t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t34) = |type|.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
      t4 = t16.
    ELSE.
      DATA(t37) = VALUE abap_bool( ).
      t37 = xsdbool( me->parsed_type IS BOUND ).
      IF t37 = abap_true.
        result = me->parsed_type.
        RETURN.
      ENDIF.
      DATA t41 TYPE REF TO zcl_lnt_ddic.
      DATA t42 TYPE REF TO zcl_lnt_ddic.
      t42 = NEW zcl_lnt_ddic( i_reg_f149 = t1 ).
      t41 = t42.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t46 TYPE REF TO zcl_lnt_shape_50142cbd.
      t46 = me->parsed_xml.
      t45 = t46->aff_category.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t50) = |referenceToPredefinedType|.
      DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t51->has = abap_true.
      t51->value = t50.
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
        DATA(t67) = xsdbool( t64 IS INITIAL ).
        IF t67 = abap_true.
        ELSE.
          DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t71 TYPE REF TO zcl_lnt_shape_50142cbd.
          t71 = t64.
          t70 = t71->datatype_2b0f.
          t66 = t70.
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
          DATA(t77) = VALUE abap_bool( ).
          DATA(t78) = VALUE string( ).
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t80 TYPE REF TO zcl_lnt_shape_50142cbd.
          t80 = me->parsed_xml.
          t79 = t80->datatype_2b0f.
          t78 = t79->value.
          DATA(t82) = ||.
          t77 = xsdbool( t78 = t82 ).
          t60 = t77.
        ENDIF.
        IF t60 = abap_true.
          DATA t83 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t84 TYPE REF TO zcl_lnt_abstract_type.
          DATA t85 TYPE REF TO zcl_lnt_unknown_type.
          DATA(t86) = VALUE string( ).
          DATA(t87) = |DATATYPE unexpectely empty in |.
          DATA(t88) = VALUE string( ).
          DATA t89 TYPE REF TO zcl_lnt_abstract_object.
          t89 = me.
          DATA(t91) = VALUE string( ).
          t91 = t89->name.
          t88 = t91.
          DATA(t93) = strlen( t87 ).
          t86 = |{ t87 }{ t88 }|.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t85 = NEW zcl_lnt_unknown_type( i_error = t86 i_qualified_name = t94 ).
          t84 = t85.
          DATA t95 TYPE REF TO zif_lnt_object.
          t83 = NEW zcl_lnt_ilookup_result( i_type_9913 = t84 i_object_19cd = t95 ).
          CREATE OBJECT t83->zlnt_view_ownkeys_b0e8086400eb.
          t83->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t97 ).
          CREATE OBJECT t83->zlnt_json_ownkeys_70e5fd461788.
          t83->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t98) = |type|.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
          t59 = t83.
        ELSE.
          DATA t100 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t101 TYPE REF TO zcl_lnt_abstract_type.
          DATA t102 TYPE REF TO zcl_lnt_abstract_type.
          DATA t104 TYPE REF TO zcl_lnt_shape_4a88086c.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t108) = VALUE string( ).
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t110 TYPE REF TO zcl_lnt_shape_50142cbd.
          t110 = me->parsed_xml.
          t109 = t110->datatype_2b0f.
          t108 = t109->value.
          DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t112->has = abap_true.
          t112->value = t108.
          t105 = t112.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t116 TYPE REF TO zcl_lnt_shape_50142cbd.
          t116 = me->parsed_xml.
          t115 = t116->leng_e82a.
          t114 = t115.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t120 TYPE REF TO zcl_lnt_shape_50142cbd.
          t120 = me->parsed_xml.
          t119 = t120->decimals_29bf.
          t118 = t119.
          DATA(t122) = VALUE string( ).
          DATA(t123) = VALUE string( ).
          DATA t124 TYPE REF TO zcl_lnt_abstract_object.
          t124 = me.
          DATA(t126) = VALUE string( ).
          t126 = t124->name.
          t123 = t126.
          t122 = t123.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t131) = VALUE string( ).
          DATA t132 TYPE REF TO zcl_lnt_abstract_object.
          t132 = me.
          DATA(t134) = VALUE string( ).
          t134 = t132->name.
          t131 = t134.
          DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t136->has = abap_true.
          t136->value = t131.
          t128 = t136.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t143) = VALUE string( ).
          DATA t144 TYPE REF TO zcl_lnt_abstract_object.
          t144 = me.
          DATA(t146) = VALUE string( ).
          t146 = t144->name.
          t143 = t146.
          DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t148->has = abap_true.
          t148->value = t143.
          t140 = t148.
          DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t152 TYPE REF TO zcl_lnt_shape_66add1d1.
          DATA t153 TYPE REF TO zcl_lnt_shape_66add1d1.
          DATA t154 TYPE REF TO zcl_lnt_shape_50142cbd.
          t154 = me->parsed_xml.
          t153 = t154->texts.
          t152 = t153.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t157) = xsdbool( t152 IS INITIAL ).
          IF t157 = abap_true.
          ELSE.
            DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t161 TYPE REF TO zcl_lnt_shape_66add1d1.
            t161 = t152.
            t160 = t161->heading.
            t156 = t160.
          ENDIF.
          t150 = t156.
          t104 = NEW zcl_lnt_shape_4a88086c( i_text = t105 i_length = t114 i_decimals_2eed = t118 i_info_text = t122 i_qualified_name = t128 i_conversion_exit = t138 i_ddic_name = t140 i_description = t150 ).
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
          DATA(t171) = |text|.
          DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
          DATA(t173) = |length|.
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t173 p1 = t174 ).
          ENDIF.
          DATA(t175) = |decimals|.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t175 p1 = t176 ).
          ENDIF.
          DATA(t177) = |infoText|.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t177 p1 = t178 ).
          ENDIF.
          DATA(t179) = |qualifiedName|.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t179 p1 = t180 ).
          ENDIF.
          DATA(t181) = |conversionExit|.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
          ENDIF.
          DATA(t183) = |ddicName|.
          DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
          ENDIF.
          DATA(t185) = |description|.
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
          ENDIF.
          t102 = t41->text_to_type( i_input_967e = t104 ).
          t101 = t102.
          DATA t187 TYPE REF TO zif_lnt_object.
          t100 = NEW zcl_lnt_ilookup_result( i_type_9913 = t101 i_object_19cd = t187 ).
          CREATE OBJECT t100->zlnt_view_ownkeys_b0e8086400eb.
          t100->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t189 ).
          CREATE OBJECT t100->zlnt_json_ownkeys_70e5fd461788.
          t100->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t190) = |type|.
          DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
          t59 = t100.
        ENDIF.
        t55 = t59.
        DATA t194 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t195) = VALUE abap_bool( ).
        DATA t196 TYPE REF TO zcl_lnt_abstract_type.
        t196 = t55->zlnt_view_read_sr_9be58e2d4893( ).
        t195 = xsdbool( t196 IS BOUND AND t196 IS INSTANCE OF zcl_lnt_unknown_type ).
        IF t195 = abap_true.
          t194 = t55.
        ELSE.
          DATA t199 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t200 TYPE REF TO zcl_lnt_abstract_type.
          DATA t201 TYPE REF TO zcl_lnt_data_reference.
          DATA t202 TYPE REF TO zcl_lnt_abstract_type.
          t202 = t55->zlnt_view_read_sr_9be58e2d4893( ).
          DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t206) = VALUE string( ).
          DATA t207 TYPE REF TO zcl_lnt_abstract_object.
          t207 = me.
          DATA(t209) = VALUE string( ).
          t209 = t207->name.
          t206 = t209.
          DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t211->has = abap_true.
          t211->value = t206.
          t204 = t211.
          t201 = NEW zcl_lnt_data_reference( i_type_9913 = t202 i_qualified_name = t204 ).
          t200 = t201.
          DATA t213 TYPE REF TO zif_lnt_object.
          t199 = NEW zcl_lnt_ilookup_result( i_type_9913 = t200 i_object_19cd = t213 ).
          CREATE OBJECT t199->zlnt_view_ownkeys_b0e8086400eb.
          t199->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t215 ).
          CREATE OBJECT t199->zlnt_json_ownkeys_70e5fd461788.
          t199->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t216) = |type|.
          DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = t216 p1 = t217 ).
          t194 = t199.
        ENDIF.
        t4 = t194.
      ELSE.
        DATA(t219) = VALUE abap_bool( ).
        DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t221 TYPE REF TO zcl_lnt_shape_50142cbd.
        t221 = me->parsed_xml.
        t220 = t221->aff_category.
        DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t225) = |referenceDictionaryType|.
        DATA(t226) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t226->has = abap_true.
        t226->value = t225.
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
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t234 TYPE REF TO zcl_lnt_shape_50142cbd.
          t234 = me->parsed_xml.
          t233 = t234->domname.
          t232 = t233.
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
            DATA(t240) = VALUE abap_bool( ).
            DATA(t241) = VALUE string( ).
            DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t243 TYPE REF TO zcl_lnt_shape_50142cbd.
            t243 = me->parsed_xml.
            t242 = t243->domname.
            t241 = t242->value.
            DATA(t245) = ||.
            t240 = xsdbool( t241 = t245 ).
            t230 = t240.
          ENDIF.
          IF t230 = abap_true.
            DATA t248 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t249 TYPE REF TO zcl_lnt_abstract_type.
            DATA t250 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t251) = VALUE string( ).
            DATA(t252) = |Type name unexpectely empty in |.
            DATA(t253) = VALUE string( ).
            DATA t254 TYPE REF TO zcl_lnt_abstract_object.
            t254 = me.
            DATA(t256) = VALUE string( ).
            t256 = t254->name.
            t253 = t256.
            DATA(t258) = strlen( t252 ).
            t251 = |{ t252 }{ t253 }|.
            DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t250 = NEW zcl_lnt_unknown_type( i_error = t251 i_qualified_name = t259 ).
            t249 = t250.
            DATA t260 TYPE REF TO zif_lnt_object.
            t248 = NEW zcl_lnt_ilookup_result( i_type_9913 = t249 i_object_19cd = t260 ).
            CREATE OBJECT t248->zlnt_view_ownkeys_b0e8086400eb.
            t248->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t262 ).
            CREATE OBJECT t248->zlnt_json_ownkeys_70e5fd461788.
            t248->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t263) = |type|.
            DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
            t4 = t248.
          ELSE.
            DATA t266 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t268 TYPE REF TO zcl_lnt_ddic.
            t268 = t41.
            DATA(t270) = VALUE string( ).
            DATA(t271) = VALUE string( ).
            DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t273 TYPE REF TO zcl_lnt_shape_50142cbd.
            t273 = me->parsed_xml.
            t272 = t273->domname.
            t271 = t272->value.
            t270 = t271.
            DATA t276 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t277 TYPE REF TO zcl_lnt_ilookup_result.
            t277 = t268->lookup_no_void( i_name = t270 ).
            t276 = t277.
            DATA t280 TYPE REF TO zcl_lnt_ilookup_result.
            DATA(t281) = VALUE abap_bool( ).
            t281 = xsdbool( t276 IS BOUND ).
            IF t281 = abap_true.
              t280 = t276.
            ELSE.
              DATA t285 TYPE REF TO zcl_lnt_ilookup_result.
              DATA(t286) = VALUE abap_bool( ).
              DATA t287 TYPE REF TO zif_lnt_registry.
              t287 = t268->reg.
              t286 = t287->in_error_namespace( i_name = t270 ).
              IF t286 = abap_true.
                DATA t290 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t291 TYPE REF TO zcl_lnt_abstract_type.
                DATA t292 TYPE REF TO zcl_lnt_unknown_type.
                DATA(t293) = VALUE string( ).
                DATA(t295) = | not found, lookup|.
                DATA(t296) = strlen( t270 ).
                t293 = |{ t270 }{ t295 }|.
                DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t292 = NEW zcl_lnt_unknown_type( i_error = t293 i_qualified_name = t297 ).
                t291 = t292.
                DATA t298 TYPE REF TO zif_lnt_object.
                t290 = NEW zcl_lnt_ilookup_result( i_type_9913 = t291 i_object_19cd = t298 ).
                CREATE OBJECT t290->zlnt_view_ownkeys_b0e8086400eb.
                t290->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t290->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t300 ).
                CREATE OBJECT t290->zlnt_json_ownkeys_70e5fd461788.
                t290->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t301) = |type|.
                DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t290->zlnt_json_ownkeys_70e5fd461788->put( p0 = t301 p1 = t302 ).
                t285 = t290.
              ELSE.
                DATA t303 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t304 TYPE REF TO zcl_lnt_abstract_type.
                DATA t305 TYPE REF TO zcl_lnt_void_type.
                DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t309) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t309->has = abap_true.
                t309->value = t270.
                t306 = t309.
                DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t305 = zcl_lnt_void_type=>get_db65( i_voided = t306 i_qualified_name = t311 ).
                t304 = t305.
                DATA t312 TYPE REF TO zif_lnt_object.
                t303 = NEW zcl_lnt_ilookup_result( i_type_9913 = t304 i_object_19cd = t312 ).
                CREATE OBJECT t303->zlnt_view_ownkeys_b0e8086400eb.
                t303->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t303->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t314 ).
                CREATE OBJECT t303->zlnt_json_ownkeys_70e5fd461788.
                t303->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t315) = |type|.
                DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t303->zlnt_json_ownkeys_70e5fd461788->put( p0 = t315 p1 = t316 ).
                t285 = t303.
              ENDIF.
              t280 = t285.
            ENDIF.
            t266 = t280.
            DATA t319 TYPE REF TO zcl_lnt_ilookup_result.
            DATA(t320) = VALUE abap_bool( ).
            DATA t321 TYPE REF TO zcl_lnt_abstract_type.
            t321 = t266->zlnt_view_read_sr_9be58e2d4893( ).
            t320 = xsdbool( t321 IS BOUND AND t321 IS INSTANCE OF zcl_lnt_unknown_type ).
            IF t320 = abap_true.
              t319 = t266.
            ELSE.
              DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t327) = |\{\}|.
              TRY.
                  t326 = zlnt_runtime_json_7c6b3012af76=>parse( t327 ).
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
              DATA(t339) = VALUE abap_bool( ).
              DATA(t340) = VALUE abap_bool( ).
              IF t334 IS NOT BOUND.
                t340 = abap_true.
              ELSE.
                t340 = xsdbool( t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              t339 = xsdbool( t340 = abap_false ).
              IF t339 = abap_true.
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
                  DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t348.
                  t348 = t334->get( p0 = t344 ).
                  t325->put( p0 = t344 p1 = t348 ).
                ENDDO.
              ENDIF.
              DATA(t352) = |type|.
              DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t354 TYPE REF TO zcl_lnt_data_reference.
              DATA t355 TYPE REF TO zcl_lnt_abstract_type.
              t355 = t266->zlnt_view_read_sr_9be58e2d4893( ).
              DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t359) = VALUE string( ).
              DATA t360 TYPE REF TO zcl_lnt_abstract_object.
              t360 = me.
              DATA(t362) = VALUE string( ).
              t362 = t360->name.
              t359 = t362.
              DATA(t364) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t364->has = abap_true.
              t364->value = t359.
              t357 = t364.
              t354 = NEW zcl_lnt_data_reference( i_type_9913 = t355 i_qualified_name = t357 ).
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
              t325->put( p0 = t352 p1 = t353 ).
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
          DATA t376 TYPE REF TO zcl_lnt_shape_50142cbd.
          t376 = me->parsed_xml.
          t375 = t376->aff_category.
          DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t380) = |referenceClasIntType|.
          DATA(t381) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t381->has = abap_true.
          t381->value = t380.
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
            DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t389 TYPE REF TO zcl_lnt_shape_50142cbd.
            t389 = me->parsed_xml.
            t388 = t389->domname.
            t387 = t388.
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
              DATA(t395) = VALUE abap_bool( ).
              DATA(t396) = VALUE string( ).
              DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t398 TYPE REF TO zcl_lnt_shape_50142cbd.
              t398 = me->parsed_xml.
              t397 = t398->domname.
              t396 = t397->value.
              DATA(t400) = ||.
              t395 = xsdbool( t396 = t400 ).
              t385 = t395.
            ENDIF.
            IF t385 = abap_true.
              DATA t403 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t404 TYPE REF TO zcl_lnt_abstract_type.
              DATA t405 TYPE REF TO zcl_lnt_unknown_type.
              DATA(t406) = VALUE string( ).
              DATA(t407) = |Type name unexpectely empty in |.
              DATA(t408) = VALUE string( ).
              DATA t409 TYPE REF TO zcl_lnt_abstract_object.
              t409 = me.
              DATA(t411) = VALUE string( ).
              t411 = t409->name.
              t408 = t411.
              DATA(t413) = strlen( t407 ).
              t406 = |{ t407 }{ t408 }|.
              DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t405 = NEW zcl_lnt_unknown_type( i_error = t406 i_qualified_name = t414 ).
              t404 = t405.
              DATA t415 TYPE REF TO zif_lnt_object.
              t403 = NEW zcl_lnt_ilookup_result( i_type_9913 = t404 i_object_19cd = t415 ).
              CREATE OBJECT t403->zlnt_view_ownkeys_b0e8086400eb.
              t403->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t403->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t417 ).
              CREATE OBJECT t403->zlnt_json_ownkeys_70e5fd461788.
              t403->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t418) = |type|.
              DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t403->zlnt_json_ownkeys_70e5fd461788->put( p0 = t418 p1 = t419 ).
              t4 = t403.
            ELSE.
              DATA t423 TYPE REF TO zcl_lnt_ilookup_result.
              DATA(t425) = VALUE string( ).
              DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t427 TYPE REF TO zcl_lnt_shape_50142cbd.
              t427 = me->parsed_xml.
              t426 = t427->domname.
              t425 = t426->value.
              t423 = t41->lookup_object( i_name = t425 ).
              t4 = t423.
            ENDIF.
          ELSE.
            DATA(t430) = VALUE abap_bool( ).
            DATA(t431) = VALUE abap_bool( ).
            DATA(t432) = VALUE abap_bool( ).
            DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t435 TYPE REF TO zcl_lnt_shape_50142cbd.
            t435 = me->parsed_xml.
            t434 = t435->aff_category.
            t433 = t434.
            DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t439) = VALUE abap_bool( ).
            DATA(t440) = VALUE abap_bool( ).
            IF t433 IS INITIAL.
              t440 = abap_true.
            ELSEIF t433->has = abap_false.
              t440 = abap_true.
            ENDIF.
            t439 = xsdbool( t440 = abap_false ).
            t432 = t439.
            t431 = t432.
            IF t432 = abap_true.
              DATA(t442) = VALUE abap_bool( ).
              DATA(t443) = VALUE string( ).
              DATA t444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t445 TYPE REF TO zcl_lnt_shape_50142cbd.
              t445 = me->parsed_xml.
              t444 = t445->aff_category.
              t443 = t444->value.
              DATA(t447) = |domain|.
              t442 = xsdbool( t443 <> t447 ).
              t431 = t442.
            ENDIF.
            t430 = t431.
            IF t431 = abap_true.
              DATA(t448) = VALUE abap_bool( ).
              DATA(t449) = VALUE string( ).
              DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t451 TYPE REF TO zcl_lnt_shape_50142cbd.
              t451 = me->parsed_xml.
              t450 = t451->aff_category.
              t449 = t450->value.
              DATA(t453) = |predefinedType|.
              t448 = xsdbool( t449 <> t453 ).
              t430 = t448.
            ENDIF.
            IF t430 = abap_true.
              DATA t456 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t457 TYPE REF TO zcl_lnt_abstract_type.
              DATA t458 TYPE REF TO zcl_lnt_unknown_type.
              DATA(t459) = VALUE string( ).
              DATA(t460) = VALUE string( ).
              DATA(t461) = VALUE string( ).
              DATA(t462) = |Unknown AFF data type category |.
              DATA(t463) = VALUE string( ).
              DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t465 TYPE REF TO zcl_lnt_shape_50142cbd.
              t465 = me->parsed_xml.
              t464 = t465->aff_category.
              t463 = t464->value.
              DATA(t467) = strlen( t462 ).
              t461 = |{ t462 }{ t463 }|.
              DATA(t468) = | in |.
              DATA(t469) = strlen( t461 ).
              t460 = |{ t461 }{ t468 }|.
              DATA(t470) = VALUE string( ).
              DATA t471 TYPE REF TO zcl_lnt_abstract_object.
              t471 = me.
              DATA(t473) = VALUE string( ).
              t473 = t471->name.
              t470 = t473.
              DATA(t475) = strlen( t460 ).
              t459 = |{ t460 }{ t470 }|.
              DATA t476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t458 = NEW zcl_lnt_unknown_type( i_error = t459 i_qualified_name = t476 ).
              t457 = t458.
              DATA t477 TYPE REF TO zif_lnt_object.
              t456 = NEW zcl_lnt_ilookup_result( i_type_9913 = t457 i_object_19cd = t477 ).
              CREATE OBJECT t456->zlnt_view_ownkeys_b0e8086400eb.
              t456->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t456->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t479 ).
              CREATE OBJECT t456->zlnt_json_ownkeys_70e5fd461788.
              t456->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t480) = |type|.
              DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t456->zlnt_json_ownkeys_70e5fd461788->put( p0 = t480 p1 = t481 ).
              t4 = t456.
            ELSE.
              DATA(t483) = VALUE abap_bool( ).
              DATA t484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t485 TYPE REF TO zcl_lnt_shape_50142cbd.
              t485 = me->parsed_xml.
              t484 = t485->refkind.
              DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t489) = |D|.
              DATA(t490) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t490->has = abap_true.
              t490->value = t489.
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
                DATA t497 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t498 TYPE REF TO zcl_lnt_shape_50142cbd.
                t498 = me->parsed_xml.
                t497 = t498->domname.
                t496 = t497.
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
                  DATA(t504) = VALUE abap_bool( ).
                  DATA(t505) = VALUE string( ).
                  DATA t506 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t507 TYPE REF TO zcl_lnt_shape_50142cbd.
                  t507 = me->parsed_xml.
                  t506 = t507->domname.
                  t505 = t506->value.
                  DATA(t509) = ||.
                  t504 = xsdbool( t505 = t509 ).
                  t494 = t504.
                ENDIF.
                IF t494 = abap_true.
                  DATA t512 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t513 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t514 TYPE REF TO zcl_lnt_unknown_type.
                  DATA(t515) = VALUE string( ).
                  DATA(t516) = |DOMNAME unexpectely empty in |.
                  DATA(t517) = VALUE string( ).
                  DATA t518 TYPE REF TO zcl_lnt_abstract_object.
                  t518 = me.
                  DATA(t520) = VALUE string( ).
                  t520 = t518->name.
                  t517 = t520.
                  DATA(t522) = strlen( t516 ).
                  t515 = |{ t516 }{ t517 }|.
                  DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t514 = NEW zcl_lnt_unknown_type( i_error = t515 i_qualified_name = t523 ).
                  t513 = t514.
                  DATA t524 TYPE REF TO zif_lnt_object.
                  t512 = NEW zcl_lnt_ilookup_result( i_type_9913 = t513 i_object_19cd = t524 ).
                  CREATE OBJECT t512->zlnt_view_ownkeys_b0e8086400eb.
                  t512->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t512->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t526 ).
                  CREATE OBJECT t512->zlnt_json_ownkeys_70e5fd461788.
                  t512->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t527) = |type|.
                  DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t512->zlnt_json_ownkeys_70e5fd461788->put( p0 = t527 p1 = t528 ).
                  t4 = t512.
                ELSE.
                  DATA t533 TYPE REF TO zcl_lnt_ddic.
                  t533 = t41.
                  DATA(t535) = VALUE string( ).
                  DATA(t536) = VALUE string( ).
                  DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t538 TYPE REF TO zcl_lnt_shape_50142cbd.
                  t538 = me->parsed_xml.
                  t537 = t538->domname.
                  t536 = t537->value.
                  t535 = t536.
                  DATA(t543) = VALUE string( ).
                  DATA t544 TYPE REF TO zcl_lnt_abstract_object.
                  t544 = me.
                  DATA(t546) = VALUE string( ).
                  t546 = t544->name.
                  t543 = t546.
                  DATA(t548) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t548->has = abap_true.
                  t548->value = t543.
                  DATA(t552) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
                  DATA t554 TYPE REF TO zcl_lnt_shape_50142cbd.
                  t554 = me->parsed_xml.
                  DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t557) = xsdbool( t554 IS INITIAL ).
                  IF t557 = abap_true.
                  ELSE.
                    DATA t560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t561 TYPE REF TO zcl_lnt_shape_50142cbd.
                    t561 = t554.
                    t560 = t561->description.
                    t556 = t560.
                  ENDIF.
                  DATA t564 TYPE REF TO zcl_lnt_domain.
                  DATA t565 TYPE REF TO zcl_lnt_domain.
                  DATA t566 TYPE REF TO zif_lnt_object.
                  DATA t567 TYPE REF TO zif_lnt_registry.
                  t567 = t533->reg.
                  DATA t569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t571) = |DOMA|.
                  DATA(t572) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t572->has = abap_true.
                  t572->value = t571.
                  t569 = t572.
                  DATA t574 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t577) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t577->has = abap_true.
                  t577->value = t535.
                  t574 = t577.
                  t566 = t567->get_object( i_type_9913 = t569 i_name = t574 ).
                  DATA t579 TYPE REF TO object.
                  t579 = t566.
                  t565 ?= t579.
                  t564 = t565.
                  DATA t580 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA(t581) = VALUE abap_bool( ).
                  t581 = xsdbool( t564 IS BOUND ).
                  IF t581 = abap_true.
                    DATA t583 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t584 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t585 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t586 TYPE REF TO zcl_lnt_domain.
                    t586 = t564.
                    DATA t588 TYPE REF TO zif_lnt_registry.
                    t588 = t533->reg.
                    t585 = t586->parse_type( i_reg_f149 = t588 i_data_element = t548 i_description = t556 ).
                    t584 = t585.
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
                    DATA(t597) = |type|.
                    DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t583->zlnt_json_ownkeys_70e5fd461788->put( p0 = t597 p1 = t598 ).
                    DATA(t599) = |object|.
                    DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t583->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t583->zlnt_json_ownkeys_70e5fd461788->put( p0 = t599 p1 = t600 ).
                    ENDIF.
                    t580 = t583.
                  ELSE.
                    DATA t601 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA(t602) = VALUE abap_bool( ).
                    DATA t603 TYPE REF TO zif_lnt_registry.
                    t603 = t533->reg.
                    t602 = t603->in_error_namespace( i_name = t535 ).
                    IF t602 = abap_true.
                      DATA t606 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t607 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t608 TYPE REF TO zcl_lnt_unknown_type.
                      DATA(t609) = VALUE string( ).
                      DATA(t611) = |, lookupDomain|.
                      DATA(t612) = strlen( t535 ).
                      t609 = |{ t535 }{ t611 }|.
                      DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t608 = NEW zcl_lnt_unknown_type( i_error = t609 i_qualified_name = t613 ).
                      t607 = t608.
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
                      DATA(t618) = |type|.
                      DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t606->zlnt_json_ownkeys_70e5fd461788->put( p0 = t618 p1 = t619 ).
                      DATA(t620) = |object|.
                      DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      IF t606->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t606->zlnt_json_ownkeys_70e5fd461788->put( p0 = t620 p1 = t621 ).
                      ENDIF.
                      t601 = t606.
                    ELSE.
                      DATA t622 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t623 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t624 TYPE REF TO zcl_lnt_void_type.
                      DATA t625 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t628) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t628->has = abap_true.
                      t628->value = t535.
                      t625 = t628.
                      DATA t630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t624 = zcl_lnt_void_type=>get_db65( i_voided = t625 i_qualified_name = t630 ).
                      t623 = t624.
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
                      DATA(t635) = |type|.
                      DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t635 p1 = t636 ).
                      DATA(t637) = |object|.
                      DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      IF t622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t637 p1 = t638 ).
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
                DATA t642 TYPE REF TO zcl_lnt_shape_50142cbd.
                t642 = me->parsed_xml.
                t641 = t642->refkind.
                DATA t644 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t646) = |R|.
                DATA(t647) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t647->has = abap_true.
                t647->value = t646.
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
                  DATA t654 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t655 TYPE REF TO zcl_lnt_shape_50142cbd.
                  t655 = me->parsed_xml.
                  t654 = t655->domname.
                  t653 = t654.
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
                    DATA(t661) = VALUE abap_bool( ).
                    DATA(t662) = VALUE string( ).
                    DATA t663 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t664 TYPE REF TO zcl_lnt_shape_50142cbd.
                    t664 = me->parsed_xml.
                    t663 = t664->domname.
                    t662 = t663->value.
                    DATA(t666) = ||.
                    t661 = xsdbool( t662 = t666 ).
                    t651 = t661.
                  ENDIF.
                  IF t651 = abap_true.
                    DATA t669 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t670 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t671 TYPE REF TO zcl_lnt_unknown_type.
                    DATA(t672) = VALUE string( ).
                    DATA(t673) = |DOMNAME unexpectely empty in |.
                    DATA(t674) = VALUE string( ).
                    DATA t675 TYPE REF TO zcl_lnt_abstract_object.
                    t675 = me.
                    DATA(t677) = VALUE string( ).
                    t677 = t675->name.
                    t674 = t677.
                    DATA(t679) = strlen( t673 ).
                    t672 = |{ t673 }{ t674 }|.
                    DATA t680 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t671 = NEW zcl_lnt_unknown_type( i_error = t672 i_qualified_name = t680 ).
                    t670 = t671.
                    DATA t681 TYPE REF TO zif_lnt_object.
                    t669 = NEW zcl_lnt_ilookup_result( i_type_9913 = t670 i_object_19cd = t681 ).
                    CREATE OBJECT t669->zlnt_view_ownkeys_b0e8086400eb.
                    t669->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t669->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t683 ).
                    CREATE OBJECT t669->zlnt_json_ownkeys_70e5fd461788.
                    t669->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t684) = |type|.
                    DATA t685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t669->zlnt_json_ownkeys_70e5fd461788->put( p0 = t684 p1 = t685 ).
                    t4 = t669.
                  ELSE.
                    DATA t689 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA(t691) = VALUE string( ).
                    DATA t692 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t693 TYPE REF TO zcl_lnt_shape_50142cbd.
                    t693 = me->parsed_xml.
                    t692 = t693->domname.
                    t691 = t692->value.
                    t689 = t41->lookup_object( i_name = t691 ).
                    t4 = t689.
                  ENDIF.
                ELSE.
                  DATA t701 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA(t702) = VALUE abap_bool( ).
                  DATA(t703) = VALUE abap_bool( ).
                  DATA t704 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t706 TYPE REF TO zcl_lnt_shape_50142cbd.
                  t706 = me->parsed_xml.
                  DATA t708 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t709) = xsdbool( t706 IS INITIAL ).
                  IF t709 = abap_true.
                  ELSE.
                    DATA t712 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t713 TYPE REF TO zcl_lnt_shape_50142cbd.
                    t713 = t706.
                    t712 = t713->datatype_2b0f.
                    t708 = t712.
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
                    DATA(t719) = VALUE abap_bool( ).
                    DATA(t720) = VALUE string( ).
                    DATA t721 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t722 TYPE REF TO zcl_lnt_shape_50142cbd.
                    t722 = me->parsed_xml.
                    t721 = t722->datatype_2b0f.
                    t720 = t721->value.
                    DATA(t724) = ||.
                    t719 = xsdbool( t720 = t724 ).
                    t702 = t719.
                  ENDIF.
                  IF t702 = abap_true.
                    DATA t725 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t726 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t727 TYPE REF TO zcl_lnt_unknown_type.
                    DATA(t728) = VALUE string( ).
                    DATA(t729) = |DATATYPE unexpectely empty in |.
                    DATA(t730) = VALUE string( ).
                    DATA t731 TYPE REF TO zcl_lnt_abstract_object.
                    t731 = me.
                    DATA(t733) = VALUE string( ).
                    t733 = t731->name.
                    t730 = t733.
                    DATA(t735) = strlen( t729 ).
                    t728 = |{ t729 }{ t730 }|.
                    DATA t736 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t727 = NEW zcl_lnt_unknown_type( i_error = t728 i_qualified_name = t736 ).
                    t726 = t727.
                    DATA t737 TYPE REF TO zif_lnt_object.
                    t725 = NEW zcl_lnt_ilookup_result( i_type_9913 = t726 i_object_19cd = t737 ).
                    CREATE OBJECT t725->zlnt_view_ownkeys_b0e8086400eb.
                    t725->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t725->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t739 ).
                    CREATE OBJECT t725->zlnt_json_ownkeys_70e5fd461788.
                    t725->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t740) = |type|.
                    DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t725->zlnt_json_ownkeys_70e5fd461788->put( p0 = t740 p1 = t741 ).
                    t701 = t725.
                  ELSE.
                    DATA t742 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t743 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t744 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t746 TYPE REF TO zcl_lnt_shape_4a88086c.
                    DATA t747 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t750) = VALUE string( ).
                    DATA t751 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t752 TYPE REF TO zcl_lnt_shape_50142cbd.
                    t752 = me->parsed_xml.
                    t751 = t752->datatype_2b0f.
                    t750 = t751->value.
                    DATA(t754) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t754->has = abap_true.
                    t754->value = t750.
                    t747 = t754.
                    DATA t756 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t757 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t758 TYPE REF TO zcl_lnt_shape_50142cbd.
                    t758 = me->parsed_xml.
                    t757 = t758->leng_e82a.
                    t756 = t757.
                    DATA t760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t761 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t762 TYPE REF TO zcl_lnt_shape_50142cbd.
                    t762 = me->parsed_xml.
                    t761 = t762->decimals_29bf.
                    t760 = t761.
                    DATA(t764) = VALUE string( ).
                    DATA(t765) = VALUE string( ).
                    DATA t766 TYPE REF TO zcl_lnt_abstract_object.
                    t766 = me.
                    DATA(t768) = VALUE string( ).
                    t768 = t766->name.
                    t765 = t768.
                    t764 = t765.
                    DATA t770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t773) = VALUE string( ).
                    DATA t774 TYPE REF TO zcl_lnt_abstract_object.
                    t774 = me.
                    DATA(t776) = VALUE string( ).
                    t776 = t774->name.
                    t773 = t776.
                    DATA(t778) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t778->has = abap_true.
                    t778->value = t773.
                    t770 = t778.
                    DATA t780 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t782 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t785) = VALUE string( ).
                    DATA t786 TYPE REF TO zcl_lnt_abstract_object.
                    t786 = me.
                    DATA(t788) = VALUE string( ).
                    t788 = t786->name.
                    t785 = t788.
                    DATA(t790) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t790->has = abap_true.
                    t790->value = t785.
                    t782 = t790.
                    DATA t792 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t794 TYPE REF TO zcl_lnt_shape_66add1d1.
                    DATA t795 TYPE REF TO zcl_lnt_shape_66add1d1.
                    DATA t796 TYPE REF TO zcl_lnt_shape_50142cbd.
                    t796 = me->parsed_xml.
                    t795 = t796->texts.
                    t794 = t795.
                    DATA t798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t799) = xsdbool( t794 IS INITIAL ).
                    IF t799 = abap_true.
                    ELSE.
                      DATA t802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t803 TYPE REF TO zcl_lnt_shape_66add1d1.
                      t803 = t794.
                      t802 = t803->heading.
                      t798 = t802.
                    ENDIF.
                    t792 = t798.
                    t746 = NEW zcl_lnt_shape_4a88086c( i_text = t747 i_length = t756 i_decimals_2eed = t760 i_info_text = t764 i_qualified_name = t770 i_conversion_exit = t780 i_ddic_name = t782 i_description = t792 ).
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
                    DATA(t813) = |text|.
                    DATA t814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t813 p1 = t814 ).
                    DATA(t815) = |length|.
                    DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t815 p1 = t816 ).
                    ENDIF.
                    DATA(t817) = |decimals|.
                    DATA t818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t817 p1 = t818 ).
                    ENDIF.
                    DATA(t819) = |infoText|.
                    DATA t820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t819 p1 = t820 ).
                    ENDIF.
                    DATA(t821) = |qualifiedName|.
                    DATA t822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t821 p1 = t822 ).
                    ENDIF.
                    DATA(t823) = |conversionExit|.
                    DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t823 p1 = t824 ).
                    ENDIF.
                    DATA(t825) = |ddicName|.
                    DATA t826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t825 p1 = t826 ).
                    ENDIF.
                    DATA(t827) = |description|.
                    DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t827 p1 = t828 ).
                    ENDIF.
                    t744 = t41->text_to_type( i_input_967e = t746 ).
                    t743 = t744.
                    DATA t829 TYPE REF TO zif_lnt_object.
                    t742 = NEW zcl_lnt_ilookup_result( i_type_9913 = t743 i_object_19cd = t829 ).
                    CREATE OBJECT t742->zlnt_view_ownkeys_b0e8086400eb.
                    t742->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t831 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t742->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t831 ).
                    CREATE OBJECT t742->zlnt_json_ownkeys_70e5fd461788.
                    t742->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t832) = |type|.
                    DATA t833 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t742->zlnt_json_ownkeys_70e5fd461788->put( p0 = t832 p1 = t833 ).
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
    DATA(t835) = VALUE abap_bool( ).
    DATA t836 TYPE REF TO zif_lnt_object.
    DATA t837 TYPE REF TO zcl_lnt_ilookup_result.
    t837 = t4.
    t836 = t837->zlnt_view_read_sr_2de0200e6505( ).
    t835 = xsdbool( t836 IS BOUND ).
    IF t835 = abap_true.
      DATA t840 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA t841 TYPE REF TO zif_lnt_object.
      DATA t845 TYPE REF TO zif_lnt_object.
      DATA t846 TYPE REF TO zcl_lnt_ilookup_result.
      t846 = t4.
      t845 = t846->zlnt_view_read_sr_2de0200e6505( ).
      t841 = t845.
      DATA t849 TYPE REF TO zcl_lnt_abstract_token.
      DATA t851 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t840 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t841 i_token = t849 i_filename = t851 ).
      CREATE OBJECT t840->zlnt_view_ownkeys_b0e8086400eb.
      t840->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t840->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t853 ).
      CREATE OBJECT t840->zlnt_json_ownkeys_70e5fd461788.
      t840->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t854) = |object|.
      DATA t855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t840->zlnt_json_ownkeys_70e5fd461788->put( p0 = t854 p1 = t855 ).
      t2->load( ).
      APPEND t840 TO t2->items.
      t2->save( ).
    ENDIF.
    DATA t856 TYPE REF TO zif_lnt_ddic_references.
    t856 = t1->get_ddic_references( ).
    t856->set_using( i_obj_1ed0 = me i_using = t2 ).
    DATA(t860) = VALUE abap_bool( ).
    DATA(t861) = VALUE abap_bool( ).
    DATA t862 TYPE REF TO zcl_lnt_abstract_type.
    DATA t863 TYPE REF TO zcl_lnt_ilookup_result.
    t863 = t4.
    t862 = t863->zlnt_view_read_sr_9be58e2d4893( ).
    t861 = xsdbool( t862 IS BOUND AND t862 IS INSTANCE OF zcl_lnt_unknown_type ).
    t860 = xsdbool( t861 = abap_false ).
    IF t860 = abap_true.
      DATA t867 TYPE REF TO zcl_lnt_abstract_type.
      DATA t868 TYPE REF TO zcl_lnt_ilookup_result.
      t868 = t4.
      t867 = t868->zlnt_view_read_sr_9be58e2d4893( ).
      me->parsed_type = t867.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedType`.
    ENDIF.
    DATA t871 TYPE REF TO zcl_lnt_abstract_type.
    DATA t872 TYPE REF TO zcl_lnt_ilookup_result.
    t872 = t4.
    t871 = t872->zlnt_view_read_sr_9be58e2d4893( ).
    result = t871.

  ENDMETHOD.

  METHOD pr_in_src_obj_dt_elm_ts_dt_elm.
    DATA(t1) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = xsdbool( me->parsed_xml IS INITIAL ).
    t6 = xsdbool( t7 = abap_false ).
    t1 = t6.
    IF t1 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_iparse_result.
      DATA(t10) = VALUE abap_bool( ).
      t10 = abap_false.
      DATA(t12) = VALUE f( ).
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
    DATA(t22) = VALUE f( ).
    DATA(t23) = VALUE f( ).
    DATA(t24) = 0.
    t23 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t22 = t23.
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
    DATA(t53) = VALUE abap_bool( ).
    t53 = xsdbool( t51 IS BOUND ).
    IF t53 = abap_true.
      DATA t55 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      TRY.
          DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t58) = VALUE string( ).
          DATA t59 TYPE REF TO zif_lnt_file.
          t59 = t51.
          t58 = t59->get_raw( ).
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
          DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t70) = |dataTypeInformation|.
          t68 = t56->get( p0 = t70 ).
          t67 = t68.
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
            DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t81) = |predefinedType|.
            t79 = t73->get( p0 = t81 ).
            t75 = t79.
          ENDIF.
          t71 = t75.
          DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t84) = xsdbool( t71 IS INITIAL ).
          IF t84 = abap_true.
          ELSE.
            t83 = t71.
          ENDIF.
          t82 = t83.
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t92) = |fieldLabels|.
          t90 = t56->get( p0 = t92 ).
          t89 = t90.
          DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t101) = |header|.
          t99 = t56->get( p0 = t101 ).
          t98 = t99.
          DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t103) = VALUE abap_bool( ).
          IF t98 IS NOT BOUND.
            t103 = abap_true.
          ELSE.
            t103 = xsdbool( t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t103 = abap_true.
          ELSE.
            DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t108) = |description|.
            t106 = t98->get( p0 = t108 ).
            t102 = t106.
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
            DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t119) = |category|.
            t117 = t111->get( p0 = t119 ).
            t113 = t117.
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
            DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t130) = |typeName|.
            t128 = t122->get( p0 = t130 ).
            t124 = t128.
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
            DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t141 = t133.
            DATA(t143) = |dataType|.
            t140 = t141->get( p0 = t143 ).
            t135 = t140.
          ENDIF.
          t131 = t135.
          DATA t144 TYPE REF TO zcl_lnt_shape_50142cbd.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t147) = xsdbool( t96 IS INITIAL ).
          IF t147 = abap_true.
          ELSE.
            DATA(t150) = VALUE string( ).
            DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t151 = t96.
            t150 = t151->as_string( ).
            DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t153->has = abap_true.
            t153->value = t150.
            t146 = t153.
          ENDIF.
          t145 = t146.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t156) = xsdbool( t109 IS INITIAL ).
          IF t156 = abap_true.
          ELSE.
            DATA(t159) = VALUE string( ).
            DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t160 = t109.
            t159 = t160->as_string( ).
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
            DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t176) = |category|.
            t174 = t168->get( p0 = t176 ).
            t170 = t174.
          ENDIF.
          t167 = t170.
          IF t167 IS BOUND.
            t166 = t167.
          ENDIF.
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t178) = |domain|.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t177->sval = t178.
          IF t166 IS NOT BOUND.
            t165 = xsdbool( t177 IS NOT BOUND ).
          ELSE.
            t165 = t166->strict_equals( t177 ).
          ENDIF.
          IF t165 = abap_true.
            DATA(t181) = |D|.
            DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t182->has = abap_true.
            t182->value = t181.
            t164 = t182.
          ELSE.
            CLEAR t164.
          ENDIF.
          t163 = t164.
          DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t187) = xsdbool( t120 IS INITIAL ).
          IF t187 = abap_true.
          ELSE.
            DATA(t190) = VALUE string( ).
            DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t191 = t120.
            t190 = t191->as_string( ).
            DATA(t193) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t193->has = abap_true.
            t193->value = t190.
            t186 = t193.
          ENDIF.
          t185 = t186.
          DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t196) = xsdbool( t131 IS INITIAL ).
          IF t196 = abap_true.
          ELSE.
            DATA(t199) = VALUE string( ).
            DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t200 = t131.
            t199 = t200->as_string( ).
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
            DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t215 = t207.
            DATA(t217) = |length|.
            t214 = t215->get( p0 = t217 ).
            t209 = t214.
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
            DATA(t223) = VALUE string( ).
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
            t223 = t231.
            DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t233->has = abap_true.
            t233->value = t223.
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
            DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t246 = t238.
            DATA(t248) = |decimals|.
            t245 = t246->get( p0 = t248 ).
            t240 = t245.
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
            DATA(t254) = VALUE string( ).
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
            t254 = t262.
            DATA(t264) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t264->has = abap_true.
            t264->value = t254.
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
            DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t279) = |short|.
            t277 = t271->get( p0 = t279 ).
            t273 = t277.
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
            DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t290) = |medium|.
            t288 = t282->get( p0 = t290 ).
            t284 = t288.
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
            DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t301) = |long|.
            t299 = t293->get( p0 = t301 ).
            t295 = t299.
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
            DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t312) = |heading|.
            t310 = t304->get( p0 = t312 ).
            t306 = t310.
          ENDIF.
          t302 = t306.
          DATA t313 TYPE REF TO zcl_lnt_shape_66add1d1.
          DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t316) = xsdbool( t269 IS INITIAL ).
          IF t316 = abap_true.
          ELSE.
            DATA(t319) = VALUE string( ).
            DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t320 = t269.
            t319 = t320->as_string( ).
            DATA(t322) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t322->has = abap_true.
            t322->value = t319.
            t315 = t322.
          ENDIF.
          t314 = t315.
          DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t325) = xsdbool( t280 IS INITIAL ).
          IF t325 = abap_true.
          ELSE.
            DATA(t328) = VALUE string( ).
            DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t329 = t280.
            t328 = t329->as_string( ).
            DATA(t331) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t331->has = abap_true.
            t331->value = t328.
            t324 = t331.
          ENDIF.
          t323 = t324.
          DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t334) = xsdbool( t291 IS INITIAL ).
          IF t334 = abap_true.
          ELSE.
            DATA(t337) = VALUE string( ).
            DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t338 = t291.
            t337 = t338->as_string( ).
            DATA(t340) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t340->has = abap_true.
            t340->value = t337.
            t333 = t340.
          ENDIF.
          t332 = t333.
          DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t343) = xsdbool( t302 IS INITIAL ).
          IF t343 = abap_true.
          ELSE.
            DATA(t346) = VALUE string( ).
            DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t347 = t302.
            t346 = t347->as_string( ).
            DATA(t349) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t349->has = abap_true.
            t349->value = t346.
            t342 = t349.
          ENDIF.
          t341 = t342.
          t313 = NEW zcl_lnt_shape_66add1d1( i_short = t314 i_medium = t323 i_long = t332 i_heading = t341 ).
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
          DATA(t354) = |short|.
          DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = t354 p1 = t355 ).
          DATA(t356) = |medium|.
          DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t313->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
          ENDIF.
          DATA(t358) = |long|.
          DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t313->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = t358 p1 = t359 ).
          ENDIF.
          DATA(t360) = |heading|.
          DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t313->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = t360 p1 = t361 ).
          ENDIF.
          t265 = t313.
          DATA t363 TYPE REF TO zcl_lnt_shape_66add1d1.
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
            DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t379) = |shortLength|.
            t377 = t371->get( p0 = t379 ).
            t373 = t377.
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
            DATA(t385) = VALUE string( ).
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
            t385 = t393.
            DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t395->has = abap_true.
            t395->value = t385.
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
            DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t408) = |mediumLength|.
            t406 = t400->get( p0 = t408 ).
            t402 = t406.
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
            DATA(t414) = VALUE string( ).
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
            t414 = t422.
            DATA(t424) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t424->has = abap_true.
            t424->value = t414.
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
            DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t437) = |longLength|.
            t435 = t429->get( p0 = t437 ).
            t431 = t435.
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
            DATA(t443) = VALUE string( ).
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
            t443 = t451.
            DATA(t453) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t453->has = abap_true.
            t453->value = t443.
            t438 = t453.
          ENDIF.
          t425 = t438.
          DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
            DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t466) = |headingLength|.
            t464 = t458->get( p0 = t466 ).
            t460 = t464.
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
            DATA(t472) = VALUE string( ).
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
            t472 = t480.
            DATA(t482) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t482->has = abap_true.
            t482->value = t472.
            t467 = t482.
          ENDIF.
          t454 = t467.
          t366 = NEW zcl_lnt_shape_66add1d1( i_short = t367 i_medium = t396 i_long = t425 i_heading = t454 ).
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
          DATA(t487) = |short|.
          DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t487 p1 = t488 ).
          DATA(t489) = |medium|.
          DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t489 p1 = t490 ).
          ENDIF.
          DATA(t491) = |long|.
          DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t491 p1 = t492 ).
          ENDIF.
          DATA(t493) = |heading|.
          DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t493 p1 = t494 ).
          ENDIF.
          t363 = t366.
          DATA t496 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t144 = NEW zcl_lnt_shape_50142cbd( i_description = t145 i_refkind = t163 i_domname = t185 i_datatype_9e1e = t194 i_leng_b7d5 = t203 i_texts = t265 i_text_max_lengths = t363 i_texts_translations = t496 i_decimals_2eed = t234
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
          DATA(t509) = |description|.
          DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t509 p1 = t510 ).
          DATA(t511) = |affCategory|.
          DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t511 p1 = t512 ).
          ENDIF.
          DATA(t513) = |refkind|.
          DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t513 p1 = t514 ).
          ENDIF.
          DATA(t515) = |domname|.
          DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t515 p1 = t516 ).
          ENDIF.
          DATA(t517) = |datatype|.
          DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t517 p1 = t518 ).
          ENDIF.
          DATA(t519) = |leng|.
          DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t519 p1 = t520 ).
          ENDIF.
          DATA(t521) = |decimals|.
          DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t521 p1 = t522 ).
          ENDIF.
          DATA(t523) = |texts|.
          DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t523 p1 = t524 ).
          ENDIF.
          DATA(t525) = |textMaxLengths|.
          DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t525 p1 = t526 ).
          ENDIF.
          me->parsed_xml = t144.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
        CATCH zlnt_exception_cl_30eec8e8805d INTO t55.
          DATA(t528) = t55->payload.
      ENDTRY.
      DATA(t529) = VALUE f( ).
      DATA(t530) = VALUE f( ).
      DATA(t531) = 0.
      t530 = zlnt_runtime_tele_970d5104e5f4=>now( ).
      t529 = t530.
      DATA t532 TYPE REF TO zcl_lnt_iparse_result.
      DATA(t533) = VALUE abap_bool( ).
      t533 = abap_true.
      DATA(t535) = VALUE f( ).
      DATA(t536) = VALUE f( ).
      t536 = t529 - t22.
      t535 = t536.
      DATA t539 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t532 = NEW zcl_lnt_iparse_result( i_updated = t533 i_runtime = t535 i_runtime_extra = t539 ).
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
      DATA(t543) = |updated|.
      DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t532->zlnt_json_ownkeys_70e5fd461788->put( p0 = t543 p1 = t544 ).
      DATA(t545) = |runtime|.
      DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t532->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t532->zlnt_json_ownkeys_70e5fd461788->put( p0 = t545 p1 = t546 ).
      ENDIF.
      result = t532.
      RETURN.
    ENDIF.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t547 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t551) = xsdbool( t547 IS INITIAL ).
    IF t551 = abap_true.
    ELSE.
      t550 = t547.
    ENDIF.
    t549 = t550.
    DATA(t556) = VALUE abap_bool( ).
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t556 = xsdbool( t549 IS INITIAL ).
    IF t556 = abap_true.
      DATA t563 TYPE REF TO zcl_lnt_iparse_result.
      DATA(t564) = VALUE abap_bool( ).
      t564 = abap_false.
      DATA(t566) = VALUE f( ).
      DATA(t567) = CONV f( 0 ).
      t566 = t567.
      DATA t568 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t563 = NEW zcl_lnt_iparse_result( i_updated = t564 i_runtime = t566 i_runtime_extra = t568 ).
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
      DATA(t572) = |updated|.
      DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t563->zlnt_json_ownkeys_70e5fd461788->put( p0 = t572 p1 = t573 ).
      DATA(t574) = |runtime|.
      DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t563->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t563->zlnt_json_ownkeys_70e5fd461788->put( p0 = t574 p1 = t575 ).
      ENDIF.
      result = t563.
      RETURN.
    ENDIF.
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t584 = t549.
    DATA(t586) = |abapGit|.
    t583 = t584->get( p0 = t586 ).
    t582 = t583.
    DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t588) = VALUE abap_bool( ).
    IF t582 IS NOT BOUND.
      t588 = abap_true.
    ELSE.
      t588 = xsdbool( t582->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t588 = abap_true.
    ELSE.
      DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t593) = |asx:abap|.
      t591 = t582->get( p0 = t593 ).
      t587 = t591.
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
      DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t600 = t580.
      DATA(t602) = |asx:values|.
      t599 = t600->get( p0 = t602 ).
      t594 = t599.
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
      DATA t608 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t609 = t578.
      DATA(t611) = |DD04V|.
      t608 = t609->get( p0 = t611 ).
      t603 = t608.
    ENDIF.
    t576 = t603.
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t614) = xsdbool( t576 IS INITIAL ).
    IF t614 = abap_true.
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
      DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t632 = t624.
      DATA(t634) = |DDTEXT|.
      t631 = t632->get( p0 = t634 ).
      t626 = t631.
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
      DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t645 = t637.
      DATA(t647) = |REFKIND|.
      t644 = t645->get( p0 = t647 ).
      t639 = t644.
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
      DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t658 = t650.
      DATA(t660) = |DOMNAME|.
      t657 = t658->get( p0 = t660 ).
      t652 = t657.
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
      DATA t670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t671 = t663.
      DATA(t673) = |DATATYPE|.
      t670 = t671->get( p0 = t673 ).
      t665 = t670.
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
      DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t684 = t676.
      DATA(t686) = |LENG|.
      t683 = t684->get( p0 = t686 ).
      t678 = t683.
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
      DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t697 = t689.
      DATA(t699) = |DECIMALS|.
      t696 = t697->get( p0 = t699 ).
      t691 = t696.
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
      DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t710 = t702.
      DATA(t712) = |DTELMASTER|.
      t709 = t710->get( p0 = t712 ).
      t704 = t709.
    ENDIF.
    t700 = t704.
    DATA t713 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA t714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t716) = xsdbool( t622 IS INITIAL ).
    IF t716 = abap_true.
    ELSE.
      DATA(t719) = VALUE string( ).
      DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t720 = t622.
      t719 = t720->as_string( ).
      DATA(t722) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t722->has = abap_true.
      t722->value = t719.
      t715 = t722.
    ENDIF.
    t714 = t715.
    DATA t723 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t724 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t725) = xsdbool( t635 IS INITIAL ).
    IF t725 = abap_true.
    ELSE.
      DATA(t728) = VALUE string( ).
      DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t729 = t635.
      t728 = t729->as_string( ).
      DATA(t731) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t731->has = abap_true.
      t731->value = t728.
      t724 = t731.
    ENDIF.
    t723 = t724.
    DATA t732 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t733 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t734) = xsdbool( t648 IS INITIAL ).
    IF t734 = abap_true.
    ELSE.
      DATA(t737) = VALUE string( ).
      DATA t738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t738 = t648.
      t737 = t738->as_string( ).
      DATA(t740) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t740->has = abap_true.
      t740->value = t737.
      t733 = t740.
    ENDIF.
    t732 = t733.
    DATA t741 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t743) = xsdbool( t661 IS INITIAL ).
    IF t743 = abap_true.
    ELSE.
      DATA(t746) = VALUE string( ).
      DATA t747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t747 = t661.
      t746 = t747->as_string( ).
      DATA(t749) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t749->has = abap_true.
      t749->value = t746.
      t742 = t749.
    ENDIF.
    t741 = t742.
    DATA t750 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t751 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t752) = xsdbool( t674 IS INITIAL ).
    IF t752 = abap_true.
    ELSE.
      DATA(t755) = VALUE string( ).
      DATA t756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t756 = t674.
      t755 = t756->as_string( ).
      DATA(t758) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t758->has = abap_true.
      t758->value = t755.
      t751 = t758.
    ENDIF.
    t750 = t751.
    DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t761) = xsdbool( t687 IS INITIAL ).
    IF t761 = abap_true.
    ELSE.
      DATA(t764) = VALUE string( ).
      DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t765 = t687.
      t764 = t765->as_string( ).
      DATA(t767) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t767->has = abap_true.
      t767->value = t764.
      t760 = t767.
    ENDIF.
    t759 = t760.
    DATA t768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t770) = xsdbool( t700 IS INITIAL ).
    IF t770 = abap_true.
    ELSE.
      DATA(t773) = VALUE string( ).
      DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t774 = t700.
      t773 = t774->as_string( ).
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
      DATA t790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t791 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t791 = t783.
      DATA(t793) = |SCRTEXT_S|.
      t790 = t791->get( p0 = t793 ).
      t785 = t790.
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
      DATA t803 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t804 = t796.
      DATA(t806) = |SCRTEXT_M|.
      t803 = t804->get( p0 = t806 ).
      t798 = t803.
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
      DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t817 = t809.
      DATA(t819) = |SCRTEXT_L|.
      t816 = t817->get( p0 = t819 ).
      t811 = t816.
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
      DATA t829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t830 = t822.
      DATA(t832) = |REPTEXT|.
      t829 = t830->get( p0 = t832 ).
      t824 = t829.
    ENDIF.
    t820 = t824.
    DATA t833 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA t834 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t835 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t836) = xsdbool( t781 IS INITIAL ).
    IF t836 = abap_true.
    ELSE.
      DATA(t839) = VALUE string( ).
      DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t840 = t781.
      t839 = t840->as_string( ).
      DATA(t842) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t842->has = abap_true.
      t842->value = t839.
      t835 = t842.
    ENDIF.
    t834 = t835.
    DATA t843 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t844 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t845) = xsdbool( t794 IS INITIAL ).
    IF t845 = abap_true.
    ELSE.
      DATA(t848) = VALUE string( ).
      DATA t849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t849 = t794.
      t848 = t849->as_string( ).
      DATA(t851) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t851->has = abap_true.
      t851->value = t848.
      t844 = t851.
    ENDIF.
    t843 = t844.
    DATA t852 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t853 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t854) = xsdbool( t807 IS INITIAL ).
    IF t854 = abap_true.
    ELSE.
      DATA(t857) = VALUE string( ).
      DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t858 = t807.
      t857 = t858->as_string( ).
      DATA(t860) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t860->has = abap_true.
      t860->value = t857.
      t853 = t860.
    ENDIF.
    t852 = t853.
    DATA t861 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t862 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t863) = xsdbool( t820 IS INITIAL ).
    IF t863 = abap_true.
    ELSE.
      DATA(t866) = VALUE string( ).
      DATA t867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t867 = t820.
      t866 = t867->as_string( ).
      DATA(t869) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t869->has = abap_true.
      t869->value = t866.
      t862 = t869.
    ENDIF.
    t861 = t862.
    t833 = NEW zcl_lnt_shape_66add1d1( i_short = t834 i_medium = t843 i_long = t852 i_heading = t861 ).
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
    DATA(t874) = |short|.
    DATA t875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t874 p1 = t875 ).
    DATA(t876) = |medium|.
    DATA t877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t876 p1 = t877 ).
    ENDIF.
    DATA(t878) = |long|.
    DATA t879 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t878 p1 = t879 ).
    ENDIF.
    DATA(t880) = |heading|.
    DATA t881 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t880 p1 = t881 ).
    ENDIF.
    t777 = t833.
    DATA t883 TYPE REF TO zcl_lnt_shape_66add1d1.
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
      DATA t896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t897 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t897 = t889.
      DATA(t899) = |SCRLEN1|.
      t896 = t897->get( p0 = t899 ).
      t891 = t896.
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
      DATA t909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t910 = t902.
      DATA(t912) = |SCRLEN2|.
      t909 = t910->get( p0 = t912 ).
      t904 = t909.
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
      DATA t922 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t923 = t915.
      DATA(t925) = |SCRLEN3|.
      t922 = t923->get( p0 = t925 ).
      t917 = t922.
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
      DATA t935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t936 = t928.
      DATA(t938) = |HEADLEN|.
      t935 = t936->get( p0 = t938 ).
      t930 = t935.
    ENDIF.
    t926 = t930.
    DATA t939 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA t940 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t941 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t942) = xsdbool( t887 IS INITIAL ).
    IF t942 = abap_true.
    ELSE.
      DATA(t945) = VALUE string( ).
      DATA t946 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t946 = t887.
      t945 = t946->as_string( ).
      DATA(t948) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t948->has = abap_true.
      t948->value = t945.
      t941 = t948.
    ENDIF.
    t940 = t941.
    DATA t949 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t950 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t951) = xsdbool( t900 IS INITIAL ).
    IF t951 = abap_true.
    ELSE.
      DATA(t954) = VALUE string( ).
      DATA t955 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t955 = t900.
      t954 = t955->as_string( ).
      DATA(t957) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t957->has = abap_true.
      t957->value = t954.
      t950 = t957.
    ENDIF.
    t949 = t950.
    DATA t958 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t959 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t960) = xsdbool( t913 IS INITIAL ).
    IF t960 = abap_true.
    ELSE.
      DATA(t963) = VALUE string( ).
      DATA t964 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t964 = t913.
      t963 = t964->as_string( ).
      DATA(t966) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t966->has = abap_true.
      t966->value = t963.
      t959 = t966.
    ENDIF.
    t958 = t959.
    DATA t967 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t968 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t969) = xsdbool( t926 IS INITIAL ).
    IF t969 = abap_true.
    ELSE.
      DATA(t972) = VALUE string( ).
      DATA t973 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t973 = t926.
      t972 = t973->as_string( ).
      DATA(t975) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t975->has = abap_true.
      t975->value = t972.
      t968 = t975.
    ENDIF.
    t967 = t968.
    t939 = NEW zcl_lnt_shape_66add1d1( i_short = t940 i_medium = t949 i_long = t958 i_heading = t967 ).
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
    DATA(t980) = |short|.
    DATA t981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t939->zlnt_json_ownkeys_70e5fd461788->put( p0 = t980 p1 = t981 ).
    DATA(t982) = |medium|.
    DATA t983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t939->zlnt_json_ownkeys_70e5fd461788->put( p0 = t982 p1 = t983 ).
    ENDIF.
    DATA(t984) = |long|.
    DATA t985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t939->zlnt_json_ownkeys_70e5fd461788->put( p0 = t984 p1 = t985 ).
    ENDIF.
    DATA(t986) = |heading|.
    DATA t987 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t939->zlnt_json_ownkeys_70e5fd461788->put( p0 = t986 p1 = t987 ).
    ENDIF.
    t883 = t939.
    DATA t989 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t991 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t713 = NEW zcl_lnt_shape_50142cbd( i_description = t714 i_refkind = t723 i_domname = t732 i_datatype_9e1e = t741 i_leng_b7d5 = t750 i_texts = t777 i_text_max_lengths = t883 i_texts_translations = t989 i_decimals_2eed = t759
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
    DATA(t1002) = |description|.
    DATA t1003 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1002 p1 = t1003 ).
    DATA(t1004) = |refkind|.
    DATA t1005 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1004 p1 = t1005 ).
    ENDIF.
    DATA(t1006) = |domname|.
    DATA t1007 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1006 p1 = t1007 ).
    ENDIF.
    DATA(t1008) = |datatype|.
    DATA t1009 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1008 p1 = t1009 ).
    ENDIF.
    DATA(t1010) = |leng|.
    DATA t1011 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1010 p1 = t1011 ).
    ENDIF.
    DATA(t1012) = |decimals|.
    DATA t1013 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1012 p1 = t1013 ).
    ENDIF.
    DATA(t1014) = |dtelmaster|.
    DATA t1015 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1014 p1 = t1015 ).
    ENDIF.
    DATA(t1016) = |texts|.
    DATA t1017 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1016 p1 = t1017 ).
    ENDIF.
    DATA(t1018) = |textMaxLengths|.
    DATA t1019 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1018 p1 = t1019 ).
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
    DATA(t1028) = |textsTranslations|.
    DATA t1029 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1021->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1021->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1028 p1 = t1029 ).
    ENDIF.
    DATA t1030 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1031 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1032 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1033 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1035 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1040 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1041 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1041 = t549.
    DATA(t1043) = |abapGit|.
    t1040 = t1041->get( p0 = t1043 ).
    t1039 = t1040.
    DATA t1044 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1045) = VALUE abap_bool( ).
    IF t1039 IS NOT BOUND.
      t1045 = abap_true.
    ELSE.
      t1045 = xsdbool( t1039->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t1045 = abap_true.
    ELSE.
      DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t1050) = |asx:abap|.
      t1048 = t1039->get( p0 = t1050 ).
      t1044 = t1048.
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
      DATA t1056 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t1057 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1057 = t1037.
      DATA(t1059) = |asx:values|.
      t1056 = t1057->get( p0 = t1059 ).
      t1051 = t1056.
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
      DATA t1065 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t1066 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1066 = t1035.
      DATA(t1068) = |DD04_TEXTS|.
      t1065 = t1066->get( p0 = t1068 ).
      t1060 = t1065.
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
      DATA t1074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t1075 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1075 = t1033.
      DATA(t1077) = |item|.
      t1074 = t1075->get( p0 = t1077 ).
      t1069 = t1074.
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
            DATA t1084 TYPE REF TO object.
            CLEAR t1084.
            CLEAR t1083.
            t1084 = t1079.
            TRY.
                t1078 ?= t1084.
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
      CLEAR t1085.
      DATA t1086 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t1086.
      DATA t1087 TYPE REF TO zcl_lnt_shape_50142cbd.
      CLEAR t1087.
      t1087 = me->parsed_xml.
      t1086 = t1087->texts_translations.
      t1085 = t1086.
      DATA t1089 TYPE REF TO zcl_lnt_shape_0802eb0f.
      CLEAR t1089.
      DATA t1090 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1090.
      DATA t1091 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1091.
      DATA(t1093) = |DDLANGUAGE|.
      t1091 = t1078->get( p0 = t1093 ).
      t1090 = t1091.
      DATA t1094 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1094.
      DATA t1095 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1095.
      DATA(t1097) = |DDTEXT|.
      t1095 = t1078->get( p0 = t1097 ).
      t1094 = t1095.
      DATA t1098 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1098.
      DATA t1099 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1099.
      DATA(t1101) = |SCRTEXT_S|.
      t1099 = t1078->get( p0 = t1101 ).
      t1098 = t1099.
      DATA t1102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1102.
      DATA t1103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1103.
      DATA(t1105) = |SCRTEXT_M|.
      t1103 = t1078->get( p0 = t1105 ).
      t1102 = t1103.
      DATA t1106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1106.
      DATA t1107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1107.
      DATA(t1109) = |SCRTEXT_L|.
      t1107 = t1078->get( p0 = t1109 ).
      t1106 = t1107.
      DATA t1110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1110.
      DATA t1111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1111.
      DATA(t1113) = |REPTEXT|.
      t1111 = t1078->get( p0 = t1113 ).
      t1110 = t1111.
      DATA t1114 TYPE REF TO zcl_lnt_shape_0802eb0f.
      CLEAR t1114.
      DATA t1115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1115.
      DATA t1116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1116.
      DATA(t1117) = xsdbool( t1090 IS INITIAL ).
      IF t1117 = abap_true.
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
      DATA(t1125) = xsdbool( t1094 IS INITIAL ).
      IF t1125 = abap_true.
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
      DATA(t1133) = xsdbool( t1098 IS INITIAL ).
      IF t1133 = abap_true.
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
      DATA(t1141) = xsdbool( t1102 IS INITIAL ).
      IF t1141 = abap_true.
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
      DATA(t1149) = xsdbool( t1106 IS INITIAL ).
      IF t1149 = abap_true.
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
      DATA t1155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1155.
      DATA t1156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1156.
      DATA(t1157) = xsdbool( t1110 IS INITIAL ).
      IF t1157 = abap_true.
        CLEAR t1156.
      ELSE.
        DATA(t1160) = VALUE string( ).
        t1160 = t1110->as_string( ).
        DATA(t1162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1162->has = abap_true.
        t1162->value = t1160.
        t1156 = t1162.
      ENDIF.
      t1155 = t1156.
      t1114 = NEW zcl_lnt_shape_0802eb0f( i_language = t1115 i_description = t1123 i_short = t1131 i_medium = t1139 i_long = t1147 i_heading = t1155 ).
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
      DATA(t1169) = |language|.
      DATA t1170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1170.
      t1114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1169 p1 = t1170 ).
      DATA(t1171) = |description|.
      DATA t1172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1172.
      IF t1114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1171 p1 = t1172 ).
      ENDIF.
      DATA(t1173) = |short|.
      DATA t1174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1174.
      IF t1114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1173 p1 = t1174 ).
      ENDIF.
      DATA(t1175) = |medium|.
      DATA t1176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1176.
      IF t1114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1175 p1 = t1176 ).
      ENDIF.
      DATA(t1177) = |long|.
      DATA t1178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1178.
      IF t1114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1177 p1 = t1178 ).
      ENDIF.
      DATA(t1179) = |heading|.
      DATA t1180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1180.
      IF t1114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1179 p1 = t1180 ).
      ENDIF.
      t1089 = t1114.
      t1085->load( ).
      APPEND t1089 TO t1085->items.
      t1085->save( ).
    ENDDO.
    DATA(t1181) = VALUE f( ).
    DATA(t1182) = VALUE f( ).
    DATA(t1183) = 0.
    t1182 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t1181 = t1182.
    DATA t1184 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t1185) = VALUE abap_bool( ).
    t1185 = abap_true.
    DATA(t1187) = VALUE f( ).
    DATA(t1188) = VALUE f( ).
    t1188 = t1181 - t22.
    t1187 = t1188.
    DATA t1191 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t1184 = NEW zcl_lnt_iparse_result( i_updated = t1185 i_runtime = t1187 i_runtime_extra = t1191 ).
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
    DATA(t1195) = |updated|.
    DATA t1196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1195 p1 = t1196 ).
    DATA(t1197) = |runtime|.
    DATA t1198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1197 p1 = t1198 ).
    ENDIF.
    result = t1184.

  ENDMETHOD.

  METHOD get_aff_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    t4 = me.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t4->files.
    t2 = t6.
    DATA t8 TYPE i.
    DATA t9 TYPE i.
    t2->load( ).
    t9 = lines( t2->items ).
    t8 = t9.
    DATA t11 TYPE i.
    t11 = 0.
    DATA t13 TYPE REF TO zif_lnt_file.
    DO.
      DATA t15 TYPE abap_bool.
      t15 = xsdbool( t11 < t8 ).
      IF t15 = abap_false.
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
      DATA t40 TYPE i.
      DATA(t42) = 1.
      t40 = t11 + t42.
      t11 = t40.
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
    DATA(t9) = xsdbool( t6 IS INITIAL ).
    IF t9 = abap_true.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t13 TYPE REF TO zcl_lnt_shape_50142cbd.
      t13 = t6.
      t12 = t13->datatype_2b0f.
      t8 = t12.
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
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE string.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t22 TYPE REF TO zcl_lnt_shape_50142cbd.
      t22 = me->parsed_xml.
      t21 = t22->datatype_2b0f.
      t20 = t21->value.
      DATA(t24) = ||.
      t19 = xsdbool( t20 = t24 ).
      t2 = t19.
    ENDIF.
    IF t2 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      DATA t27 TYPE REF TO zcl_lnt_unknown_type.
      DATA t28 TYPE string.
      DATA(t29) = |DATATYPE unexpectely empty in |.
      DATA t30 TYPE string.
      DATA t31 TYPE REF TO zcl_lnt_abstract_object.
      t31 = me.
      DATA t33 TYPE string.
      t33 = t31->name.
      t30 = t33.
      DATA(t35) = strlen( t29 ).
      t28 = |{ t29 }{ t30 }|.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t27 = NEW zcl_lnt_unknown_type( i_error = t28 i_qualified_name = t36 ).
      t26 = t27.
      DATA t37 TYPE REF TO zif_lnt_object.
      t25 = NEW zcl_lnt_ilookup_result( i_type_9913 = t26 i_object_19cd = t37 ).
      CREATE OBJECT t25->zlnt_view_ownkeys_b0e8086400eb.
      t25->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t39 ).
      CREATE OBJECT t25->zlnt_json_ownkeys_70e5fd461788.
      t25->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t40) = |type|.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
      result = t25.
      RETURN.
    ENDIF.
    DATA t42 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t43 TYPE REF TO zcl_lnt_abstract_type.
    DATA t44 TYPE REF TO zcl_lnt_abstract_type.
    DATA t46 TYPE REF TO zcl_lnt_shape_4a88086c.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t50 TYPE string.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t52 TYPE REF TO zcl_lnt_shape_50142cbd.
    t52 = me->parsed_xml.
    t51 = t52->datatype_2b0f.
    t50 = t51->value.
    DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t54->has = abap_true.
    t54->value = t50.
    t47 = t54.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t58 TYPE REF TO zcl_lnt_shape_50142cbd.
    t58 = me->parsed_xml.
    t57 = t58->leng_e82a.
    t56 = t57.
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t62 TYPE REF TO zcl_lnt_shape_50142cbd.
    t62 = me->parsed_xml.
    t61 = t62->decimals_29bf.
    t60 = t61.
    DATA t64 TYPE string.
    DATA t66 TYPE REF TO zcl_lnt_abstract_object.
    t66 = me.
    DATA t68 TYPE string.
    t68 = t66->name.
    t64 = t68.
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
    DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t94 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA t95 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA t96 TYPE REF TO zcl_lnt_shape_50142cbd.
    t96 = me->parsed_xml.
    t95 = t96->texts.
    t94 = t95.
    DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t99) = xsdbool( t94 IS INITIAL ).
    IF t99 = abap_true.
    ELSE.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t103 TYPE REF TO zcl_lnt_shape_66add1d1.
      t103 = t94.
      t102 = t103->heading.
      t98 = t102.
    ENDIF.
    t92 = t98.
    t46 = NEW zcl_lnt_shape_4a88086c( i_text = t47 i_length = t56 i_decimals_2eed = t60 i_info_text = t64 i_qualified_name = t70 i_conversion_exit = t80 i_ddic_name = t82 i_description = t92 ).
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
    DATA(t113) = |text|.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
    DATA(t115) = |length|.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
    ENDIF.
    DATA(t117) = |decimals|.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
    ENDIF.
    DATA(t119) = |infoText|.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
    ENDIF.
    DATA(t121) = |qualifiedName|.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t121 p1 = t122 ).
    ENDIF.
    DATA(t123) = |conversionExit|.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
    ENDIF.
    DATA(t125) = |ddicName|.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
    ENDIF.
    DATA(t127) = |description|.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
    ENDIF.
    t44 = t1->text_to_type( i_input_967e = t46 ).
    t43 = t44.
    DATA t129 TYPE REF TO zif_lnt_object.
    t42 = NEW zcl_lnt_ilookup_result( i_type_9913 = t43 i_object_19cd = t129 ).
    CREATE OBJECT t42->zlnt_view_ownkeys_b0e8086400eb.
    t42->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t131 ).
    CREATE OBJECT t42->zlnt_json_ownkeys_70e5fd461788.
    t42->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t132) = |type|.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
    result = t42.

  ENDMETHOD.

  METHOD parse_type.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t5) = i_reg_f149.
    t4 = me->pr_ty_in_sr_ob_dt_el_ts_dt_elm( i_reg_f149 = t5 ).
    result = t4.

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
