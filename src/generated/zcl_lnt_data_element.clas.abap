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
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
    CLEAR t3.
    me->parsed_xml = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t4.
    me->parsed_type = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedType`.
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |DTEL|.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->description.
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
    DATA t1 TYPE REF TO zcl_lnt_shape_50142cbd.
    CLEAR t1.
    me->parsed_xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t2.
    me->parsed_type = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedType`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_domain_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->domname.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_data_type.
    DATA(t1) = i_reg_f149.
    DATA(t2) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA(t6) = me->parsed_xml.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t5.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t12 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t13) = t5.
      t12 = t13.
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
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA t16 TYPE string.
        DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t18 TYPE REF TO zcl_lnt_shape_50142cbd.
        DATA(t19) = me->parsed_xml.
        t18 = t19.
        t17 = t18->datatype_2b0f.
        t16 = t17->value.
        DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t20->has = abap_true.
        t20->value = t16.
        t14 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        t14 = t21.
      ENDIF.
      result = t14.
      RETURN.
    ENDIF.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE abap_bool.
    DATA t24 TYPE abap_bool.
    DATA(t25) = t1.
    t24 = xsdbool( t25 IS BOUND ).
    t23 = t24.
    IF t24 = abap_true.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t29) = me->parsed_xml.
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = t28.
      IF t32 IS INITIAL.
        t31 = abap_true.
      ENDIF.
      IF t31 = abap_true.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        t30 = t33.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t35 TYPE REF TO zcl_lnt_shape_50142cbd.
        DATA(t36) = t28.
        t35 = t36.
        t34 = t35->refkind.
        t30 = t34.
      ENDIF.
      t27 = t30.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA(t38) = abap_true.
      IF t38 = abap_true.
        DATA(t39) = |D|.
        DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t40->has = abap_true.
        t40->value = t39.
        t37 = t40.
      ELSE.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        t37 = t41.
      ENDIF.
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
      DATA(t47) = me->parsed_xml.
      t46 = t47.
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
      CLEAR t48.
      DATA t49 TYPE REF TO zif_lnt_object.
      CLEAR t49.
      DATA t50 TYPE REF TO zif_lnt_registry.
      DATA(t51) = t1.
      t50 = t51.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      DATA(t53) = abap_true.
      IF t53 = abap_true.
        DATA(t54) = |DOMA|.
        DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t55->has = abap_true.
        t55->value = t54.
        t52 = t55.
      ELSE.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        t52 = t56.
      ENDIF.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t57.
      DATA(t58) = abap_true.
      IF t58 = abap_true.
        DATA t59 TYPE string.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t61 TYPE REF TO zcl_lnt_shape_50142cbd.
        DATA(t62) = me->parsed_xml.
        t61 = t62.
        t60 = t61->domname.
        t59 = t60->value.
        DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t63->has = abap_true.
        t63->value = t59.
        t57 = t63.
      ELSE.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t64.
        t57 = t64.
      ENDIF.
      t49 = t50->get_object( i_type_9913 = t52 i_name = t57 ).
      t48 = t49.
      DATA t65 TYPE abap_bool.
      DATA(t66) = t48.
      t65 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_domain ).
      IF t65 = abap_true.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA t68 TYPE REF TO zcl_lnt_domain.
        DATA t69 TYPE REF TO zcl_lnt_domain.
        DATA(t70) = t48.
        DATA t71 TYPE REF TO object.
        t71 = t70.
        t69 ?= t71.
        t68 = t69.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        DATA t73 TYPE REF TO zcl_lnt_iparse_result.
        DATA(t74) = t68.
        t73 = t74->prs_instn_src_objct_dmn_ts_dmn( ).
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        DATA t76 TYPE REF TO zcl_lnt_shape_b346f020.
        DATA t77 TYPE REF TO zcl_lnt_shape_b346f020.
        DATA(t78) = t68.
        t77 = t78->parsed_xml.
        t76 = t77.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = t76.
        IF t81 IS INITIAL.
          t80 = abap_true.
        ENDIF.
        IF t80 = abap_true.
          DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t82.
          t79 = t82.
        ELSE.
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t84 TYPE REF TO zcl_lnt_shape_b346f020.
          DATA(t85) = t76.
          t84 = t85.
          t83 = t84->datatype_2b0f.
          t79 = t83.
        ENDIF.
        t75 = t79.
        t72 = t75.
        t67 = t72.
        result = t67.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t86.
    result = t86.

  ENDMETHOD.

  METHOD get_texts.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t2 TYPE REF TO zcl_lnt_shape_66add1d1.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA(t4) = me->parsed_xml.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_shape_66add1d1.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t3.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_shape_66add1d1.
      CLEAR t8.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA t10 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->texts.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_text_max_lengths.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t2 TYPE REF TO zcl_lnt_shape_66add1d1.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA(t4) = me->parsed_xml.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_shape_66add1d1.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t3.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_shape_66add1d1.
      CLEAR t8.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA t10 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->text_max_lengths.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_texts_translations.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA(t4) = me->parsed_xml.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->texts_translations.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_dtel_master.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_50142cbd.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->dtelmaster.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD pr_ty_in_sr_ob_dt_el_ts_dt_elm.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_shape_50142cbd.
    CLEAR t8.
    DATA(t9) = me->parsed_xml.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA t16 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t16.
        DATA t17 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_unknown_type.
        CLEAR t18.
        DATA(t19) = VALUE string( ).
        DATA(t20) = VALUE string( ).
        DATA(t21) = |Data Element |.
        DATA(t22) = VALUE string( ).
        DATA t23 TYPE REF TO zcl_lnt_abstract_object.
        CLEAR t23.
        DATA(t24) = me.
        t23 = t24.
        DATA(t25) = VALUE string( ).
        DATA(t26) = t23.
        t25 = t26->name.
        t22 = t25.
        DATA(t27) = strlen( t21 ).
        t20 = |{ t21 }{ t22 }|.
        DATA(t28) = |, parser error|.
        DATA(t29) = strlen( t20 ).
        t19 = |{ t20 }{ t28 }|.
        DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t30.
        t18 = NEW zcl_lnt_unknown_type( i_error = t19 i_qualified_name = t30 ).
        t17 = t18.
        DATA t31 TYPE REF TO zif_lnt_object.
        CLEAR t31.
        DATA t32 TYPE REF TO zif_lnt_object.
        CLEAR t32.
        t31 = t32.
        t16 = NEW zcl_lnt_ilookup_result( i_type_9913 = t17 i_object_19cd = t31 ).
        CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
        t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t33 ).
        ENDIF.
        CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
        t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t34) = |type|.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
        ENDIF.
        t14 = t16.
      ELSE.
        DATA t36 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t36.
        t14 = t36.
      ENDIF.
      t4 = t14.
    ELSE.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = me->parsed_type.
      t37 = xsdbool( t38 IS BOUND ).
      IF t37 = abap_true.
        DATA t39 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t39.
        DATA(t40) = me->parsed_type.
        t39 = t40.
        result = t39.
        RETURN.
      ENDIF.
      DATA t41 TYPE REF TO zcl_lnt_ddic.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_ddic.
      CLEAR t42.
      DATA(t43) = t1.
      t42 = NEW zcl_lnt_ddic( i_reg_f149 = t43 ).
      t41 = t42.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      DATA t46 TYPE REF TO zcl_lnt_shape_50142cbd.
      CLEAR t46.
      DATA(t47) = me->parsed_xml.
      t46 = t47.
      t45 = t46->aff_category.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA(t49) = abap_true.
      IF t49 = abap_true.
        DATA(t50) = |referenceToPredefinedType|.
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = t50.
        t48 = t51.
      ELSE.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        t48 = t52.
      ENDIF.
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
        CLEAR t55.
        DATA t56 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t56.
        DATA t57 TYPE REF TO zcl_lnt_ddic.
        CLEAR t57.
        DATA(t58) = t41.
        t57 = t58.
        DATA t59 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t59.
        DATA(t60) = VALUE abap_bool( ).
        DATA(t61) = VALUE abap_bool( ).
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA t64 TYPE REF TO zcl_lnt_shape_50142cbd.
        CLEAR t64.
        DATA(t65) = me->parsed_xml.
        t64 = t65.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = t64.
        IF t68 IS INITIAL.
          t67 = abap_true.
        ENDIF.
        IF t67 = abap_true.
          DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t69.
          t66 = t69.
        ELSE.
          DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t70.
          DATA t71 TYPE REF TO zcl_lnt_shape_50142cbd.
          CLEAR t71.
          DATA(t72) = t64.
          t71 = t72.
          t70 = t71->datatype_2b0f.
          t66 = t70.
        ENDIF.
        t63 = t66.
        t62 = t63.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        t73 = t74.
        DATA(t75) = VALUE abap_bool( ).
        DATA(t76) = t62.
        IF t76 IS INITIAL.
          t75 = abap_true.
        ELSEIF t76->has = abap_false.
          t75 = abap_true.
        ENDIF.
        t61 = t75.
        t60 = t61.
        IF t61 = abap_false.
          DATA(t77) = VALUE abap_bool( ).
          DATA(t78) = VALUE string( ).
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          DATA t80 TYPE REF TO zcl_lnt_shape_50142cbd.
          CLEAR t80.
          DATA(t81) = me->parsed_xml.
          t80 = t81.
          t79 = t80->datatype_2b0f.
          t78 = t79->value.
          DATA(t82) = ||.
          t77 = xsdbool( t78 = t82 ).
          t60 = t77.
        ENDIF.
        IF t60 = abap_true.
          DATA t83 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t83.
          DATA t84 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t84.
          DATA t85 TYPE REF TO zcl_lnt_unknown_type.
          CLEAR t85.
          DATA(t86) = VALUE string( ).
          DATA(t87) = |DATATYPE unexpectely empty in |.
          DATA(t88) = VALUE string( ).
          DATA t89 TYPE REF TO zcl_lnt_abstract_object.
          CLEAR t89.
          DATA(t90) = me.
          t89 = t90.
          DATA(t91) = VALUE string( ).
          DATA(t92) = t89.
          t91 = t92->name.
          t88 = t91.
          DATA(t93) = strlen( t87 ).
          t86 = |{ t87 }{ t88 }|.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t94.
          t85 = NEW zcl_lnt_unknown_type( i_error = t86 i_qualified_name = t94 ).
          t84 = t85.
          DATA t95 TYPE REF TO zif_lnt_object.
          CLEAR t95.
          DATA t96 TYPE REF TO zif_lnt_object.
          CLEAR t96.
          t95 = t96.
          t83 = NEW zcl_lnt_ilookup_result( i_type_9913 = t84 i_object_19cd = t95 ).
          CREATE OBJECT t83->zlnt_view_ownkeys_b0e8086400eb.
          t83->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t97.
          IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t97 ).
          ENDIF.
          CREATE OBJECT t83->zlnt_json_ownkeys_70e5fd461788.
          t83->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t98) = |type|.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t99.
          IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
          ENDIF.
          t59 = t83.
        ELSE.
          DATA t100 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t100.
          DATA t101 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t101.
          DATA t102 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t102.
          DATA(t103) = t57.
          DATA t104 TYPE REF TO zcl_lnt_shape_4a88086c.
          CLEAR t104.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t105.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t106.
          DATA(t107) = abap_true.
          IF t107 = abap_true.
            DATA(t108) = VALUE string( ).
            DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t109.
            DATA t110 TYPE REF TO zcl_lnt_shape_50142cbd.
            CLEAR t110.
            DATA(t111) = me->parsed_xml.
            t110 = t111.
            t109 = t110->datatype_2b0f.
            t108 = t109->value.
            DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t112->has = abap_true.
            t112->value = t108.
            t106 = t112.
          ELSE.
            DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t113.
            t106 = t113.
          ENDIF.
          t105 = t106.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t114.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA t116 TYPE REF TO zcl_lnt_shape_50142cbd.
          CLEAR t116.
          DATA(t117) = me->parsed_xml.
          t116 = t117.
          t115 = t116->leng_e82a.
          t114 = t115.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t118.
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t119.
          DATA t120 TYPE REF TO zcl_lnt_shape_50142cbd.
          CLEAR t120.
          DATA(t121) = me->parsed_xml.
          t120 = t121.
          t119 = t120->decimals_29bf.
          t118 = t119.
          DATA(t122) = VALUE string( ).
          DATA(t123) = VALUE string( ).
          DATA t124 TYPE REF TO zcl_lnt_abstract_object.
          CLEAR t124.
          DATA(t125) = me.
          t124 = t125.
          DATA(t126) = VALUE string( ).
          DATA(t127) = t124.
          t126 = t127->name.
          t123 = t126.
          t122 = t123.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t128.
          DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t129.
          DATA(t130) = abap_true.
          IF t130 = abap_true.
            DATA(t131) = VALUE string( ).
            DATA t132 TYPE REF TO zcl_lnt_abstract_object.
            CLEAR t132.
            DATA(t133) = me.
            t132 = t133.
            DATA(t134) = VALUE string( ).
            DATA(t135) = t132.
            t134 = t135->name.
            t131 = t134.
            DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t136->has = abap_true.
            t136->value = t131.
            t129 = t136.
          ELSE.
            DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t137.
            t129 = t137.
          ENDIF.
          t128 = t129.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t139.
          t138 = t139.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t140.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t141.
          DATA(t142) = abap_true.
          IF t142 = abap_true.
            DATA(t143) = VALUE string( ).
            DATA t144 TYPE REF TO zcl_lnt_abstract_object.
            CLEAR t144.
            DATA(t145) = me.
            t144 = t145.
            DATA(t146) = VALUE string( ).
            DATA(t147) = t144.
            t146 = t147->name.
            t143 = t146.
            DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t148->has = abap_true.
            t148->value = t143.
            t141 = t148.
          ELSE.
            DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t149.
            t141 = t149.
          ENDIF.
          t140 = t141.
          DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t150.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          DATA t152 TYPE REF TO zcl_lnt_shape_66add1d1.
          CLEAR t152.
          DATA t153 TYPE REF TO zcl_lnt_shape_66add1d1.
          CLEAR t153.
          DATA t154 TYPE REF TO zcl_lnt_shape_50142cbd.
          CLEAR t154.
          DATA(t155) = me->parsed_xml.
          t154 = t155.
          t153 = t154->texts.
          t152 = t153.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t156.
          DATA(t157) = VALUE abap_bool( ).
          DATA(t158) = t152.
          IF t158 IS INITIAL.
            t157 = abap_true.
          ENDIF.
          IF t157 = abap_true.
            DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t159.
            t156 = t159.
          ELSE.
            DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t160.
            DATA t161 TYPE REF TO zcl_lnt_shape_66add1d1.
            CLEAR t161.
            DATA(t162) = t152.
            t161 = t162.
            t160 = t161->heading.
            t156 = t160.
          ENDIF.
          t151 = t156.
          t150 = t151.
          t104 = NEW zcl_lnt_shape_4a88086c( i_text = t105 i_length = t114 i_decimals_2eed = t118 i_info_text = t122 i_qualified_name = t128 i_conversion_exit = t138 i_ddic_name = t140 i_description = t150 ).
          CREATE OBJECT t104->zlnt_view_ownkeys_b0e8086400eb.
          t104->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `text` p1 = t163 ).
          ENDIF.
          DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t164.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t164 ).
          ENDIF.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t165 ).
          ENDIF.
          DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t166.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `infoText` p1 = t166 ).
          ENDIF.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t167 ).
          ENDIF.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t168.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t168 ).
          ENDIF.
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t169 ).
          ENDIF.
          DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t170.
          IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t170 ).
          ENDIF.
          CREATE OBJECT t104->zlnt_json_ownkeys_70e5fd461788.
          t104->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t171) = |text|.
          DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t172.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
          ENDIF.
          DATA(t173) = |length|.
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t174.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t173 p1 = t174 ).
          ENDIF.
          DATA(t175) = |decimals|.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t176.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t175 p1 = t176 ).
          ENDIF.
          DATA(t177) = |infoText|.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t177 p1 = t178 ).
          ENDIF.
          DATA(t179) = |qualifiedName|.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t180.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t179 p1 = t180 ).
          ENDIF.
          DATA(t181) = |conversionExit|.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t182.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
          ENDIF.
          DATA(t183) = |ddicName|.
          DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t184.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
          ENDIF.
          DATA(t185) = |description|.
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t186.
          IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
          ENDIF.
          t102 = t103->text_to_type( i_input_967e = t104 ).
          t101 = t102.
          DATA t187 TYPE REF TO zif_lnt_object.
          CLEAR t187.
          DATA t188 TYPE REF TO zif_lnt_object.
          CLEAR t188.
          t187 = t188.
          t100 = NEW zcl_lnt_ilookup_result( i_type_9913 = t101 i_object_19cd = t187 ).
          CREATE OBJECT t100->zlnt_view_ownkeys_b0e8086400eb.
          t100->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t189.
          IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t189 ).
          ENDIF.
          CREATE OBJECT t100->zlnt_json_ownkeys_70e5fd461788.
          t100->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t190) = |type|.
          DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t191.
          IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
          ENDIF.
          t59 = t100.
        ENDIF.
        t56 = t59.
        t55 = t56.
        DATA t192 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t192.
        DATA(t193) = abap_true.
        IF t193 = abap_true.
          DATA t194 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t194.
          DATA(t195) = VALUE abap_bool( ).
          DATA t196 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t196.
          DATA(t197) = t55.
          t196 = t197->zlnt_view_read_sr_9be58e2d4893( ).
          t195 = xsdbool( t196 IS BOUND AND t196 IS INSTANCE OF zcl_lnt_unknown_type ).
          IF t195 = abap_true.
            DATA(t198) = t55.
            t194 = t198.
          ELSE.
            DATA t199 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t199.
            DATA t200 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t200.
            DATA t201 TYPE REF TO zcl_lnt_data_reference.
            CLEAR t201.
            DATA t202 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t202.
            DATA(t203) = t55.
            t202 = t203->zlnt_view_read_sr_9be58e2d4893( ).
            DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t204.
            DATA(t205) = abap_true.
            IF t205 = abap_true.
              DATA(t206) = VALUE string( ).
              DATA t207 TYPE REF TO zcl_lnt_abstract_object.
              CLEAR t207.
              DATA(t208) = me.
              t207 = t208.
              DATA(t209) = VALUE string( ).
              DATA(t210) = t207.
              t209 = t210->name.
              t206 = t209.
              DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t211->has = abap_true.
              t211->value = t206.
              t204 = t211.
            ELSE.
              DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t212.
              t204 = t212.
            ENDIF.
            t201 = NEW zcl_lnt_data_reference( i_type_9913 = t202 i_qualified_name = t204 ).
            t200 = t201.
            DATA t213 TYPE REF TO zif_lnt_object.
            CLEAR t213.
            DATA t214 TYPE REF TO zif_lnt_object.
            CLEAR t214.
            t213 = t214.
            t199 = NEW zcl_lnt_ilookup_result( i_type_9913 = t200 i_object_19cd = t213 ).
            CREATE OBJECT t199->zlnt_view_ownkeys_b0e8086400eb.
            t199->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t215.
            IF t199->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t215 ).
            ENDIF.
            CREATE OBJECT t199->zlnt_json_ownkeys_70e5fd461788.
            t199->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t216) = |type|.
            DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t217.
            IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = t216 p1 = t217 ).
            ENDIF.
            t194 = t199.
          ENDIF.
          t192 = t194.
        ELSE.
          DATA t218 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t218.
          t192 = t218.
        ENDIF.
        t4 = t192.
      ELSE.
        DATA(t219) = VALUE abap_bool( ).
        DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t220.
        DATA t221 TYPE REF TO zcl_lnt_shape_50142cbd.
        CLEAR t221.
        DATA(t222) = me->parsed_xml.
        t221 = t222.
        t220 = t221->aff_category.
        DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t223.
        DATA(t224) = abap_true.
        IF t224 = abap_true.
          DATA(t225) = |referenceDictionaryType|.
          DATA(t226) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t226->has = abap_true.
          t226->value = t225.
          t223 = t226.
        ELSE.
          DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t227.
          t223 = t227.
        ENDIF.
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
          CLEAR t232.
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t233.
          DATA t234 TYPE REF TO zcl_lnt_shape_50142cbd.
          CLEAR t234.
          DATA(t235) = me->parsed_xml.
          t234 = t235.
          t233 = t234->domname.
          t232 = t233.
          DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t236.
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t237.
          t236 = t237.
          DATA(t238) = VALUE abap_bool( ).
          DATA(t239) = t232.
          IF t239 IS INITIAL.
            t238 = abap_true.
          ELSEIF t239->has = abap_false.
            t238 = abap_true.
          ENDIF.
          t231 = t238.
          t230 = t231.
          IF t231 = abap_false.
            DATA(t240) = VALUE abap_bool( ).
            DATA(t241) = VALUE string( ).
            DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t242.
            DATA t243 TYPE REF TO zcl_lnt_shape_50142cbd.
            CLEAR t243.
            DATA(t244) = me->parsed_xml.
            t243 = t244.
            t242 = t243->domname.
            t241 = t242->value.
            DATA(t245) = ||.
            t240 = xsdbool( t241 = t245 ).
            t230 = t240.
          ENDIF.
          IF t230 = abap_true.
            DATA t246 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t246.
            DATA(t247) = abap_true.
            IF t247 = abap_true.
              DATA t248 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t248.
              DATA t249 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t249.
              DATA t250 TYPE REF TO zcl_lnt_unknown_type.
              CLEAR t250.
              DATA(t251) = VALUE string( ).
              DATA(t252) = |Type name unexpectely empty in |.
              DATA(t253) = VALUE string( ).
              DATA t254 TYPE REF TO zcl_lnt_abstract_object.
              CLEAR t254.
              DATA(t255) = me.
              t254 = t255.
              DATA(t256) = VALUE string( ).
              DATA(t257) = t254.
              t256 = t257->name.
              t253 = t256.
              DATA(t258) = strlen( t252 ).
              t251 = |{ t252 }{ t253 }|.
              DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t259.
              t250 = NEW zcl_lnt_unknown_type( i_error = t251 i_qualified_name = t259 ).
              t249 = t250.
              DATA t260 TYPE REF TO zif_lnt_object.
              CLEAR t260.
              DATA t261 TYPE REF TO zif_lnt_object.
              CLEAR t261.
              t260 = t261.
              t248 = NEW zcl_lnt_ilookup_result( i_type_9913 = t249 i_object_19cd = t260 ).
              CREATE OBJECT t248->zlnt_view_ownkeys_b0e8086400eb.
              t248->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t262.
              IF t248->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t262 ).
              ENDIF.
              CREATE OBJECT t248->zlnt_json_ownkeys_70e5fd461788.
              t248->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t263) = |type|.
              DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t264.
              IF t248->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
              ENDIF.
              t246 = t248.
            ELSE.
              DATA t265 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t265.
              t246 = t265.
            ENDIF.
            t4 = t246.
          ELSE.
            DATA t266 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t266.
            DATA t267 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t267.
            DATA t268 TYPE REF TO zcl_lnt_ddic.
            CLEAR t268.
            DATA(t269) = t41.
            t268 = t269.
            DATA(t270) = VALUE string( ).
            DATA(t271) = VALUE string( ).
            DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t272.
            DATA t273 TYPE REF TO zcl_lnt_shape_50142cbd.
            CLEAR t273.
            DATA(t274) = me->parsed_xml.
            t273 = t274.
            t272 = t273->domname.
            t271 = t272->value.
            t270 = t271.
            DATA t275 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t275.
            DATA t276 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t276.
            DATA t277 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t277.
            DATA(t278) = t268.
            DATA(t279) = t270.
            t277 = t278->lookup_no_void( i_name = t279 ).
            t276 = t277.
            DATA t280 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t280.
            DATA(t281) = VALUE abap_bool( ).
            DATA(t282) = t276.
            t281 = xsdbool( t282 IS BOUND ).
            IF t281 = abap_true.
              DATA t283 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t283.
              DATA(t284) = t276.
              t283 = t284.
              t280 = t283.
            ELSE.
              DATA t285 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t285.
              DATA(t286) = VALUE abap_bool( ).
              DATA t287 TYPE REF TO zif_lnt_registry.
              CLEAR t287.
              DATA(t288) = t268.
              t287 = t288->reg.
              DATA(t289) = t270.
              t286 = t287->in_error_namespace( i_name = t289 ).
              IF t286 = abap_true.
                DATA t290 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t290.
                DATA t291 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t291.
                DATA t292 TYPE REF TO zcl_lnt_unknown_type.
                CLEAR t292.
                DATA(t293) = VALUE string( ).
                DATA(t294) = t270.
                DATA(t295) = | not found, lookup|.
                DATA(t296) = strlen( t294 ).
                t293 = |{ t294 }{ t295 }|.
                DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t297.
                t292 = NEW zcl_lnt_unknown_type( i_error = t293 i_qualified_name = t297 ).
                t291 = t292.
                DATA t298 TYPE REF TO zif_lnt_object.
                CLEAR t298.
                DATA t299 TYPE REF TO zif_lnt_object.
                CLEAR t299.
                t298 = t299.
                t290 = NEW zcl_lnt_ilookup_result( i_type_9913 = t291 i_object_19cd = t298 ).
                CREATE OBJECT t290->zlnt_view_ownkeys_b0e8086400eb.
                t290->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t300.
                IF t290->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t290->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t300 ).
                ENDIF.
                CREATE OBJECT t290->zlnt_json_ownkeys_70e5fd461788.
                t290->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t301) = |type|.
                DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t302.
                IF t290->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t290->zlnt_json_ownkeys_70e5fd461788->put( p0 = t301 p1 = t302 ).
                ENDIF.
                t285 = t290.
              ELSE.
                DATA t303 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t303.
                DATA t304 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t304.
                DATA t305 TYPE REF TO zcl_lnt_void_type.
                CLEAR t305.
                DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t306.
                DATA(t307) = abap_true.
                IF t307 = abap_true.
                  DATA(t308) = t270.
                  DATA(t309) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t309->has = abap_true.
                  t309->value = t308.
                  t306 = t309.
                ELSE.
                  DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t310.
                  t306 = t310.
                ENDIF.
                DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t311.
                t305 = zcl_lnt_void_type=>get_db65( i_voided = t306 i_qualified_name = t311 ).
                t304 = t305.
                DATA t312 TYPE REF TO zif_lnt_object.
                CLEAR t312.
                DATA t313 TYPE REF TO zif_lnt_object.
                CLEAR t313.
                t312 = t313.
                t303 = NEW zcl_lnt_ilookup_result( i_type_9913 = t304 i_object_19cd = t312 ).
                CREATE OBJECT t303->zlnt_view_ownkeys_b0e8086400eb.
                t303->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t314.
                IF t303->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t303->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t314 ).
                ENDIF.
                CREATE OBJECT t303->zlnt_json_ownkeys_70e5fd461788.
                t303->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t315) = |type|.
                DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t316.
                IF t303->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t303->zlnt_json_ownkeys_70e5fd461788->put( p0 = t315 p1 = t316 ).
                ENDIF.
                t285 = t303.
              ENDIF.
              t280 = t285.
            ENDIF.
            t275 = t280.
            t267 = t275.
            t266 = t267.
            DATA t317 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t317.
            DATA(t318) = abap_true.
            IF t318 = abap_true.
              DATA t319 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t319.
              DATA(t320) = VALUE abap_bool( ).
              DATA t321 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t321.
              DATA(t322) = t266.
              t321 = t322->zlnt_view_read_sr_9be58e2d4893( ).
              t320 = xsdbool( t321 IS BOUND AND t321 IS INSTANCE OF zcl_lnt_unknown_type ).
              IF t320 = abap_true.
                DATA(t323) = t266.
                t319 = t323.
              ELSE.
                DATA t324 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t324.
                DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t325.
                DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t326.
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
                    CLEAR t331.
                    CLEAR t331.
                    IF t329 IS BOUND.
                      DATA t332 TYPE REF TO zlnt_view_storage_74017ca272ac.
                      CLEAR t332.
                      DATA t333 TYPE REF TO object.
                      CLEAR t333.
                      CLEAR t332.
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
                    ENDIF.
                    t330->source_value = t331.
                    RAISE EXCEPTION t330.
                ENDTRY.
                t325 = t326.
                DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t334.
                DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t335.
                DATA(t336) = t266.
                CLEAR t335.
                IF t336 IS BOUND.
                  DATA t337 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t337.
                  DATA t338 TYPE REF TO object.
                  CLEAR t338.
                  CLEAR t337.
                  t338 = t336.
                  TRY.
                      t335 ?= t338.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t335 IS NOT BOUND.
                    TRY.
                        t337 ?= t336.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t337 IS BOUND.
                      t335 = t337->source( ).
                    ENDIF.
                    IF t335 IS NOT BOUND.
                      CREATE OBJECT t335.
                      t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t335->oval = t336.
                    ENDIF.
                  ENDIF.
                ENDIF.
                t334 = t335.
                DATA(t339) = VALUE abap_bool( ).
                DATA(t340) = VALUE abap_bool( ).
                DATA(t341) = t334.
                IF t341 IS NOT BOUND.
                  t340 = abap_true.
                ELSE.
                  t340 = xsdbool( t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
                ENDIF.
                t339 = xsdbool( t340 = abap_false ).
                IF t339 = abap_true.
                  DATA t342 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t342.
                  DATA(t343) = t334.
                  t342 = zlnt_runtime_ownk_4497b85e405d=>keys( t343 ).
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
                    DATA(t346) = t325.
                    DATA(t347) = t344.
                    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t348.
                    DATA(t349) = t334.
                    DATA(t350) = t344.
                    t348 = t349->get( p0 = t350 ).
                    t346->put( p0 = t347 p1 = t348 ).
                  ENDDO.
                ENDIF.
                DATA(t351) = t325.
                DATA(t352) = |type|.
                DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t353.
                DATA t354 TYPE REF TO zcl_lnt_data_reference.
                CLEAR t354.
                DATA t355 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t355.
                DATA(t356) = t266.
                t355 = t356->zlnt_view_read_sr_9be58e2d4893( ).
                DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t357.
                DATA(t358) = abap_true.
                IF t358 = abap_true.
                  DATA(t359) = VALUE string( ).
                  DATA t360 TYPE REF TO zcl_lnt_abstract_object.
                  CLEAR t360.
                  DATA(t361) = me.
                  t360 = t361.
                  DATA(t362) = VALUE string( ).
                  DATA(t363) = t360.
                  t362 = t363->name.
                  t359 = t362.
                  DATA(t364) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t364->has = abap_true.
                  t364->value = t359.
                  t357 = t364.
                ELSE.
                  DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t365.
                  t357 = t365.
                ENDIF.
                t354 = NEW zcl_lnt_data_reference( i_type_9913 = t355 i_qualified_name = t357 ).
                CLEAR t353.
                IF t354 IS BOUND.
                  DATA t366 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t366.
                  DATA t367 TYPE REF TO object.
                  CLEAR t367.
                  CLEAR t366.
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
                ENDIF.
                t351->put( p0 = t352 p1 = t353 ).
                DATA t368 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t368.
                DATA(t369) = t325.
                CLEAR t368.
                IF t369 IS BOUND.
                  IF t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    TRY.
                        t368 ?= t369->oval.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                  ENDIF.
                  IF t368 IS NOT BOUND.
                    IF t369->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t370 TYPE REF TO zlnt_view_storage_74017ca272ac.
                      CLEAR t370.
                      IF t369->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                      ENDIF.
                      TRY.
                          t370 ?= t369->oval.
                        CATCH cx_sy_move_cast_error.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                      ENDTRY.
                      IF t370->structural( ) <> abap_true.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                      ENDIF.
                    ENDIF.
                    DATA t371 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t371.
                    DATA t372 TYPE REF TO zif_lnt_object.
                    CLEAR t372.
                    t368 = NEW zcl_lnt_ilookup_result( view_source = t369 i_type_9913 = t371 i_object_19cd = t372 ).
                  ENDIF.
                ENDIF.
                t324 = t368.
                t319 = t324.
              ENDIF.
              t317 = t319.
            ELSE.
              DATA t373 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t373.
              t317 = t373.
            ENDIF.
            t4 = t317.
          ENDIF.
        ELSE.
          DATA(t374) = VALUE abap_bool( ).
          DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t375.
          DATA t376 TYPE REF TO zcl_lnt_shape_50142cbd.
          CLEAR t376.
          DATA(t377) = me->parsed_xml.
          t376 = t377.
          t375 = t376->aff_category.
          DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t378.
          DATA(t379) = abap_true.
          IF t379 = abap_true.
            DATA(t380) = |referenceClasIntType|.
            DATA(t381) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t381->has = abap_true.
            t381->value = t380.
            t378 = t381.
          ELSE.
            DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t382.
            t378 = t382.
          ENDIF.
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
            CLEAR t387.
            DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t388.
            DATA t389 TYPE REF TO zcl_lnt_shape_50142cbd.
            CLEAR t389.
            DATA(t390) = me->parsed_xml.
            t389 = t390.
            t388 = t389->domname.
            t387 = t388.
            DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t391.
            DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t392.
            t391 = t392.
            DATA(t393) = VALUE abap_bool( ).
            DATA(t394) = t387.
            IF t394 IS INITIAL.
              t393 = abap_true.
            ELSEIF t394->has = abap_false.
              t393 = abap_true.
            ENDIF.
            t386 = t393.
            t385 = t386.
            IF t386 = abap_false.
              DATA(t395) = VALUE abap_bool( ).
              DATA(t396) = VALUE string( ).
              DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t397.
              DATA t398 TYPE REF TO zcl_lnt_shape_50142cbd.
              CLEAR t398.
              DATA(t399) = me->parsed_xml.
              t398 = t399.
              t397 = t398->domname.
              t396 = t397->value.
              DATA(t400) = ||.
              t395 = xsdbool( t396 = t400 ).
              t385 = t395.
            ENDIF.
            IF t385 = abap_true.
              DATA t401 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t401.
              DATA(t402) = abap_true.
              IF t402 = abap_true.
                DATA t403 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t403.
                DATA t404 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t404.
                DATA t405 TYPE REF TO zcl_lnt_unknown_type.
                CLEAR t405.
                DATA(t406) = VALUE string( ).
                DATA(t407) = |Type name unexpectely empty in |.
                DATA(t408) = VALUE string( ).
                DATA t409 TYPE REF TO zcl_lnt_abstract_object.
                CLEAR t409.
                DATA(t410) = me.
                t409 = t410.
                DATA(t411) = VALUE string( ).
                DATA(t412) = t409.
                t411 = t412->name.
                t408 = t411.
                DATA(t413) = strlen( t407 ).
                t406 = |{ t407 }{ t408 }|.
                DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t414.
                t405 = NEW zcl_lnt_unknown_type( i_error = t406 i_qualified_name = t414 ).
                t404 = t405.
                DATA t415 TYPE REF TO zif_lnt_object.
                CLEAR t415.
                DATA t416 TYPE REF TO zif_lnt_object.
                CLEAR t416.
                t415 = t416.
                t403 = NEW zcl_lnt_ilookup_result( i_type_9913 = t404 i_object_19cd = t415 ).
                CREATE OBJECT t403->zlnt_view_ownkeys_b0e8086400eb.
                t403->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t417.
                IF t403->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t403->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t417 ).
                ENDIF.
                CREATE OBJECT t403->zlnt_json_ownkeys_70e5fd461788.
                t403->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t418) = |type|.
                DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t419.
                IF t403->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t403->zlnt_json_ownkeys_70e5fd461788->put( p0 = t418 p1 = t419 ).
                ENDIF.
                t401 = t403.
              ELSE.
                DATA t420 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t420.
                t401 = t420.
              ENDIF.
              t4 = t401.
            ELSE.
              DATA t421 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t421.
              DATA(t422) = abap_true.
              IF t422 = abap_true.
                DATA t423 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t423.
                DATA(t424) = t41.
                DATA(t425) = VALUE string( ).
                DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t426.
                DATA t427 TYPE REF TO zcl_lnt_shape_50142cbd.
                CLEAR t427.
                DATA(t428) = me->parsed_xml.
                t427 = t428.
                t426 = t427->domname.
                t425 = t426->value.
                t423 = t424->lookup_object( i_name = t425 ).
                t421 = t423.
              ELSE.
                DATA t429 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t429.
                t421 = t429.
              ENDIF.
              t4 = t421.
            ENDIF.
          ELSE.
            DATA(t430) = VALUE abap_bool( ).
            DATA(t431) = VALUE abap_bool( ).
            DATA(t432) = VALUE abap_bool( ).
            DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t433.
            DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t434.
            DATA t435 TYPE REF TO zcl_lnt_shape_50142cbd.
            CLEAR t435.
            DATA(t436) = me->parsed_xml.
            t435 = t436.
            t434 = t435->aff_category.
            t433 = t434.
            DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t437.
            DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t438.
            t437 = t438.
            DATA(t439) = VALUE abap_bool( ).
            DATA(t440) = VALUE abap_bool( ).
            DATA(t441) = t433.
            IF t441 IS INITIAL.
              t440 = abap_true.
            ELSEIF t441->has = abap_false.
              t440 = abap_true.
            ENDIF.
            t439 = xsdbool( t440 = abap_false ).
            t432 = t439.
            t431 = t432.
            IF t432 = abap_true.
              DATA(t442) = VALUE abap_bool( ).
              DATA(t443) = VALUE string( ).
              DATA t444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t444.
              DATA t445 TYPE REF TO zcl_lnt_shape_50142cbd.
              CLEAR t445.
              DATA(t446) = me->parsed_xml.
              t445 = t446.
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
              CLEAR t450.
              DATA t451 TYPE REF TO zcl_lnt_shape_50142cbd.
              CLEAR t451.
              DATA(t452) = me->parsed_xml.
              t451 = t452.
              t450 = t451->aff_category.
              t449 = t450->value.
              DATA(t453) = |predefinedType|.
              t448 = xsdbool( t449 <> t453 ).
              t430 = t448.
            ENDIF.
            IF t430 = abap_true.
              DATA t454 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t454.
              DATA(t455) = abap_true.
              IF t455 = abap_true.
                DATA t456 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t456.
                DATA t457 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t457.
                DATA t458 TYPE REF TO zcl_lnt_unknown_type.
                CLEAR t458.
                DATA(t459) = VALUE string( ).
                DATA(t460) = VALUE string( ).
                DATA(t461) = VALUE string( ).
                DATA(t462) = |Unknown AFF data type category |.
                DATA(t463) = VALUE string( ).
                DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t464.
                DATA t465 TYPE REF TO zcl_lnt_shape_50142cbd.
                CLEAR t465.
                DATA(t466) = me->parsed_xml.
                t465 = t466.
                t464 = t465->aff_category.
                t463 = t464->value.
                DATA(t467) = strlen( t462 ).
                t461 = |{ t462 }{ t463 }|.
                DATA(t468) = | in |.
                DATA(t469) = strlen( t461 ).
                t460 = |{ t461 }{ t468 }|.
                DATA(t470) = VALUE string( ).
                DATA t471 TYPE REF TO zcl_lnt_abstract_object.
                CLEAR t471.
                DATA(t472) = me.
                t471 = t472.
                DATA(t473) = VALUE string( ).
                DATA(t474) = t471.
                t473 = t474->name.
                t470 = t473.
                DATA(t475) = strlen( t460 ).
                t459 = |{ t460 }{ t470 }|.
                DATA t476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t476.
                t458 = NEW zcl_lnt_unknown_type( i_error = t459 i_qualified_name = t476 ).
                t457 = t458.
                DATA t477 TYPE REF TO zif_lnt_object.
                CLEAR t477.
                DATA t478 TYPE REF TO zif_lnt_object.
                CLEAR t478.
                t477 = t478.
                t456 = NEW zcl_lnt_ilookup_result( i_type_9913 = t457 i_object_19cd = t477 ).
                CREATE OBJECT t456->zlnt_view_ownkeys_b0e8086400eb.
                t456->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t479.
                IF t456->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t456->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t479 ).
                ENDIF.
                CREATE OBJECT t456->zlnt_json_ownkeys_70e5fd461788.
                t456->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t480) = |type|.
                DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t481.
                IF t456->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t456->zlnt_json_ownkeys_70e5fd461788->put( p0 = t480 p1 = t481 ).
                ENDIF.
                t454 = t456.
              ELSE.
                DATA t482 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t482.
                t454 = t482.
              ENDIF.
              t4 = t454.
            ELSE.
              DATA(t483) = VALUE abap_bool( ).
              DATA t484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t484.
              DATA t485 TYPE REF TO zcl_lnt_shape_50142cbd.
              CLEAR t485.
              DATA(t486) = me->parsed_xml.
              t485 = t486.
              t484 = t485->refkind.
              DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t487.
              DATA(t488) = abap_true.
              IF t488 = abap_true.
                DATA(t489) = |D|.
                DATA(t490) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t490->has = abap_true.
                t490->value = t489.
                t487 = t490.
              ELSE.
                DATA t491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t491.
                t487 = t491.
              ENDIF.
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
                CLEAR t496.
                DATA t497 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t497.
                DATA t498 TYPE REF TO zcl_lnt_shape_50142cbd.
                CLEAR t498.
                DATA(t499) = me->parsed_xml.
                t498 = t499.
                t497 = t498->domname.
                t496 = t497.
                DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t500.
                DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t501.
                t500 = t501.
                DATA(t502) = VALUE abap_bool( ).
                DATA(t503) = t496.
                IF t503 IS INITIAL.
                  t502 = abap_true.
                ELSEIF t503->has = abap_false.
                  t502 = abap_true.
                ENDIF.
                t495 = t502.
                t494 = t495.
                IF t495 = abap_false.
                  DATA(t504) = VALUE abap_bool( ).
                  DATA(t505) = VALUE string( ).
                  DATA t506 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t506.
                  DATA t507 TYPE REF TO zcl_lnt_shape_50142cbd.
                  CLEAR t507.
                  DATA(t508) = me->parsed_xml.
                  t507 = t508.
                  t506 = t507->domname.
                  t505 = t506->value.
                  DATA(t509) = ||.
                  t504 = xsdbool( t505 = t509 ).
                  t494 = t504.
                ENDIF.
                IF t494 = abap_true.
                  DATA t510 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t510.
                  DATA(t511) = abap_true.
                  IF t511 = abap_true.
                    DATA t512 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t512.
                    DATA t513 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t513.
                    DATA t514 TYPE REF TO zcl_lnt_unknown_type.
                    CLEAR t514.
                    DATA(t515) = VALUE string( ).
                    DATA(t516) = |DOMNAME unexpectely empty in |.
                    DATA(t517) = VALUE string( ).
                    DATA t518 TYPE REF TO zcl_lnt_abstract_object.
                    CLEAR t518.
                    DATA(t519) = me.
                    t518 = t519.
                    DATA(t520) = VALUE string( ).
                    DATA(t521) = t518.
                    t520 = t521->name.
                    t517 = t520.
                    DATA(t522) = strlen( t516 ).
                    t515 = |{ t516 }{ t517 }|.
                    DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t523.
                    t514 = NEW zcl_lnt_unknown_type( i_error = t515 i_qualified_name = t523 ).
                    t513 = t514.
                    DATA t524 TYPE REF TO zif_lnt_object.
                    CLEAR t524.
                    DATA t525 TYPE REF TO zif_lnt_object.
                    CLEAR t525.
                    t524 = t525.
                    t512 = NEW zcl_lnt_ilookup_result( i_type_9913 = t513 i_object_19cd = t524 ).
                    CREATE OBJECT t512->zlnt_view_ownkeys_b0e8086400eb.
                    t512->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t526.
                    IF t512->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t512->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t526 ).
                    ENDIF.
                    CREATE OBJECT t512->zlnt_json_ownkeys_70e5fd461788.
                    t512->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t527) = |type|.
                    DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t528.
                    IF t512->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t512->zlnt_json_ownkeys_70e5fd461788->put( p0 = t527 p1 = t528 ).
                    ENDIF.
                    t510 = t512.
                  ELSE.
                    DATA t529 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t529.
                    t510 = t529.
                  ENDIF.
                  t4 = t510.
                ELSE.
                  DATA t530 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t530.
                  DATA(t531) = abap_true.
                  IF t531 = abap_true.
                    DATA t532 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t532.
                    DATA t533 TYPE REF TO zcl_lnt_ddic.
                    CLEAR t533.
                    DATA(t534) = t41.
                    t533 = t534.
                    DATA(t535) = VALUE string( ).
                    DATA(t536) = VALUE string( ).
                    DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t537.
                    DATA t538 TYPE REF TO zcl_lnt_shape_50142cbd.
                    CLEAR t538.
                    DATA(t539) = me->parsed_xml.
                    t538 = t539.
                    t537 = t538->domname.
                    t536 = t537->value.
                    t535 = t536.
                    DATA t540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t540.
                    DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t541.
                    DATA(t542) = abap_true.
                    IF t542 = abap_true.
                      DATA(t543) = VALUE string( ).
                      DATA t544 TYPE REF TO zcl_lnt_abstract_object.
                      CLEAR t544.
                      DATA(t545) = me.
                      t544 = t545.
                      DATA(t546) = VALUE string( ).
                      DATA(t547) = t544.
                      t546 = t547->name.
                      t543 = t546.
                      DATA(t548) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t548->has = abap_true.
                      t548->value = t543.
                      t541 = t548.
                    ELSE.
                      DATA t549 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t549.
                      t541 = t549.
                    ENDIF.
                    t540 = t541.
                    DATA t550 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t550.
                    DATA t551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t551.
                    DATA(t552) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
                    DATA t553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t553.
                    DATA t554 TYPE REF TO zcl_lnt_shape_50142cbd.
                    CLEAR t554.
                    DATA(t555) = me->parsed_xml.
                    t554 = t555.
                    DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t556.
                    DATA(t557) = VALUE abap_bool( ).
                    DATA(t558) = t554.
                    IF t558 IS INITIAL.
                      t557 = abap_true.
                    ENDIF.
                    IF t557 = abap_true.
                      DATA t559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t559.
                      t556 = t559.
                    ELSE.
                      DATA t560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t560.
                      DATA t561 TYPE REF TO zcl_lnt_shape_50142cbd.
                      CLEAR t561.
                      DATA(t562) = t554.
                      t561 = t562.
                      t560 = t561->description.
                      t556 = t560.
                    ENDIF.
                    t553 = t556.
                    t551 = t553.
                    t550 = t551.
                    DATA t563 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t563.
                    DATA t564 TYPE REF TO zcl_lnt_domain.
                    CLEAR t564.
                    DATA t565 TYPE REF TO zcl_lnt_domain.
                    CLEAR t565.
                    DATA t566 TYPE REF TO zif_lnt_object.
                    CLEAR t566.
                    DATA t567 TYPE REF TO zif_lnt_registry.
                    CLEAR t567.
                    DATA(t568) = t533.
                    t567 = t568->reg.
                    DATA t569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t569.
                    DATA(t570) = abap_true.
                    IF t570 = abap_true.
                      DATA(t571) = |DOMA|.
                      DATA(t572) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t572->has = abap_true.
                      t572->value = t571.
                      t569 = t572.
                    ELSE.
                      DATA t573 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t573.
                      t569 = t573.
                    ENDIF.
                    DATA t574 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t574.
                    DATA(t575) = abap_true.
                    IF t575 = abap_true.
                      DATA(t576) = t535.
                      DATA(t577) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t577->has = abap_true.
                      t577->value = t576.
                      t574 = t577.
                    ELSE.
                      DATA t578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t578.
                      t574 = t578.
                    ENDIF.
                    t566 = t567->get_object( i_type_9913 = t569 i_name = t574 ).
                    DATA t579 TYPE REF TO object.
                    CLEAR t579.
                    t579 = t566.
                    t565 ?= t579.
                    t564 = t565.
                    DATA t580 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t580.
                    DATA(t581) = VALUE abap_bool( ).
                    DATA(t582) = t564.
                    t581 = xsdbool( t582 IS BOUND ).
                    IF t581 = abap_true.
                      DATA t583 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t583.
                      DATA t584 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t584.
                      DATA t585 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t585.
                      DATA t586 TYPE REF TO zcl_lnt_domain.
                      CLEAR t586.
                      DATA(t587) = t564.
                      t586 = t587.
                      DATA t588 TYPE REF TO zif_lnt_registry.
                      CLEAR t588.
                      DATA(t589) = t533.
                      t588 = t589->reg.
                      DATA(t590) = t540.
                      DATA(t591) = t550.
                      t585 = t586->parse_type( i_reg_f149 = t588 i_data_element = t590 i_description = t591 ).
                      t584 = t585.
                      DATA t592 TYPE REF TO zif_lnt_object.
                      CLEAR t592.
                      DATA t593 TYPE REF TO zcl_lnt_domain.
                      CLEAR t593.
                      DATA(t594) = t564.
                      t593 = t594.
                      t592 = t593.
                      t583 = NEW zcl_lnt_ilookup_result( i_type_9913 = t584 i_object_19cd = t592 ).
                      CREATE OBJECT t583->zlnt_view_ownkeys_b0e8086400eb.
                      t583->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t595.
                      IF t583->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t583->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t595 ).
                      ENDIF.
                      DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t596.
                      IF t583->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t583->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t596 ).
                      ENDIF.
                      CREATE OBJECT t583->zlnt_json_ownkeys_70e5fd461788.
                      t583->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t597) = |type|.
                      DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t598.
                      IF t583->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t583->zlnt_json_ownkeys_70e5fd461788->put( p0 = t597 p1 = t598 ).
                      ENDIF.
                      DATA(t599) = |object|.
                      DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t600.
                      IF t583->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t583->zlnt_json_ownkeys_70e5fd461788->put( p0 = t599 p1 = t600 ).
                      ENDIF.
                      t580 = t583.
                    ELSE.
                      DATA t601 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t601.
                      DATA(t602) = VALUE abap_bool( ).
                      DATA t603 TYPE REF TO zif_lnt_registry.
                      CLEAR t603.
                      DATA(t604) = t533.
                      t603 = t604->reg.
                      DATA(t605) = t535.
                      t602 = t603->in_error_namespace( i_name = t605 ).
                      IF t602 = abap_true.
                        DATA t606 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t606.
                        DATA t607 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t607.
                        DATA t608 TYPE REF TO zcl_lnt_unknown_type.
                        CLEAR t608.
                        DATA(t609) = VALUE string( ).
                        DATA(t610) = t535.
                        DATA(t611) = |, lookupDomain|.
                        DATA(t612) = strlen( t610 ).
                        t609 = |{ t610 }{ t611 }|.
                        DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t613.
                        t608 = NEW zcl_lnt_unknown_type( i_error = t609 i_qualified_name = t613 ).
                        t607 = t608.
                        DATA t614 TYPE REF TO zif_lnt_object.
                        CLEAR t614.
                        DATA t615 TYPE REF TO zif_lnt_object.
                        CLEAR t615.
                        t614 = t615.
                        t606 = NEW zcl_lnt_ilookup_result( i_type_9913 = t607 i_object_19cd = t614 ).
                        CREATE OBJECT t606->zlnt_view_ownkeys_b0e8086400eb.
                        t606->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t616.
                        IF t606->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t606->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t616 ).
                        ENDIF.
                        DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t617.
                        IF t606->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t606->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t617 ).
                        ENDIF.
                        CREATE OBJECT t606->zlnt_json_ownkeys_70e5fd461788.
                        t606->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA(t618) = |type|.
                        DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t619.
                        IF t606->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t606->zlnt_json_ownkeys_70e5fd461788->put( p0 = t618 p1 = t619 ).
                        ENDIF.
                        DATA(t620) = |object|.
                        DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t621.
                        IF t606->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t606->zlnt_json_ownkeys_70e5fd461788->put( p0 = t620 p1 = t621 ).
                        ENDIF.
                        t601 = t606.
                      ELSE.
                        DATA t622 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t622.
                        DATA t623 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t623.
                        DATA t624 TYPE REF TO zcl_lnt_void_type.
                        CLEAR t624.
                        DATA t625 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t625.
                        DATA(t626) = abap_true.
                        IF t626 = abap_true.
                          DATA(t627) = t535.
                          DATA(t628) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t628->has = abap_true.
                          t628->value = t627.
                          t625 = t628.
                        ELSE.
                          DATA t629 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t629.
                          t625 = t629.
                        ENDIF.
                        DATA t630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t630.
                        t624 = zcl_lnt_void_type=>get_db65( i_voided = t625 i_qualified_name = t630 ).
                        t623 = t624.
                        DATA t631 TYPE REF TO zif_lnt_object.
                        CLEAR t631.
                        DATA t632 TYPE REF TO zif_lnt_object.
                        CLEAR t632.
                        t631 = t632.
                        t622 = NEW zcl_lnt_ilookup_result( i_type_9913 = t623 i_object_19cd = t631 ).
                        CREATE OBJECT t622->zlnt_view_ownkeys_b0e8086400eb.
                        t622->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t633.
                        IF t622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t633 ).
                        ENDIF.
                        DATA t634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t634.
                        IF t622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t634 ).
                        ENDIF.
                        CREATE OBJECT t622->zlnt_json_ownkeys_70e5fd461788.
                        t622->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA(t635) = |type|.
                        DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t636.
                        IF t622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t635 p1 = t636 ).
                        ENDIF.
                        DATA(t637) = |object|.
                        DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t638.
                        IF t622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t637 p1 = t638 ).
                        ENDIF.
                        t601 = t622.
                      ENDIF.
                      t580 = t601.
                    ENDIF.
                    t563 = t580.
                    t532 = t563.
                    t530 = t532.
                  ELSE.
                    DATA t639 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t639.
                    t530 = t639.
                  ENDIF.
                  t4 = t530.
                ENDIF.
              ELSE.
                DATA(t640) = VALUE abap_bool( ).
                DATA t641 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t641.
                DATA t642 TYPE REF TO zcl_lnt_shape_50142cbd.
                CLEAR t642.
                DATA(t643) = me->parsed_xml.
                t642 = t643.
                t641 = t642->refkind.
                DATA t644 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t644.
                DATA(t645) = abap_true.
                IF t645 = abap_true.
                  DATA(t646) = |R|.
                  DATA(t647) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t647->has = abap_true.
                  t647->value = t646.
                  t644 = t647.
                ELSE.
                  DATA t648 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t648.
                  t644 = t648.
                ENDIF.
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
                  CLEAR t653.
                  DATA t654 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t654.
                  DATA t655 TYPE REF TO zcl_lnt_shape_50142cbd.
                  CLEAR t655.
                  DATA(t656) = me->parsed_xml.
                  t655 = t656.
                  t654 = t655->domname.
                  t653 = t654.
                  DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t657.
                  DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t658.
                  t657 = t658.
                  DATA(t659) = VALUE abap_bool( ).
                  DATA(t660) = t653.
                  IF t660 IS INITIAL.
                    t659 = abap_true.
                  ELSEIF t660->has = abap_false.
                    t659 = abap_true.
                  ENDIF.
                  t652 = t659.
                  t651 = t652.
                  IF t652 = abap_false.
                    DATA(t661) = VALUE abap_bool( ).
                    DATA(t662) = VALUE string( ).
                    DATA t663 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t663.
                    DATA t664 TYPE REF TO zcl_lnt_shape_50142cbd.
                    CLEAR t664.
                    DATA(t665) = me->parsed_xml.
                    t664 = t665.
                    t663 = t664->domname.
                    t662 = t663->value.
                    DATA(t666) = ||.
                    t661 = xsdbool( t662 = t666 ).
                    t651 = t661.
                  ENDIF.
                  IF t651 = abap_true.
                    DATA t667 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t667.
                    DATA(t668) = abap_true.
                    IF t668 = abap_true.
                      DATA t669 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t669.
                      DATA t670 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t670.
                      DATA t671 TYPE REF TO zcl_lnt_unknown_type.
                      CLEAR t671.
                      DATA(t672) = VALUE string( ).
                      DATA(t673) = |DOMNAME unexpectely empty in |.
                      DATA(t674) = VALUE string( ).
                      DATA t675 TYPE REF TO zcl_lnt_abstract_object.
                      CLEAR t675.
                      DATA(t676) = me.
                      t675 = t676.
                      DATA(t677) = VALUE string( ).
                      DATA(t678) = t675.
                      t677 = t678->name.
                      t674 = t677.
                      DATA(t679) = strlen( t673 ).
                      t672 = |{ t673 }{ t674 }|.
                      DATA t680 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t680.
                      t671 = NEW zcl_lnt_unknown_type( i_error = t672 i_qualified_name = t680 ).
                      t670 = t671.
                      DATA t681 TYPE REF TO zif_lnt_object.
                      CLEAR t681.
                      DATA t682 TYPE REF TO zif_lnt_object.
                      CLEAR t682.
                      t681 = t682.
                      t669 = NEW zcl_lnt_ilookup_result( i_type_9913 = t670 i_object_19cd = t681 ).
                      CREATE OBJECT t669->zlnt_view_ownkeys_b0e8086400eb.
                      t669->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t683.
                      IF t669->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t669->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t683 ).
                      ENDIF.
                      CREATE OBJECT t669->zlnt_json_ownkeys_70e5fd461788.
                      t669->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t684) = |type|.
                      DATA t685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t685.
                      IF t669->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t669->zlnt_json_ownkeys_70e5fd461788->put( p0 = t684 p1 = t685 ).
                      ENDIF.
                      t667 = t669.
                    ELSE.
                      DATA t686 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t686.
                      t667 = t686.
                    ENDIF.
                    t4 = t667.
                  ELSE.
                    DATA t687 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t687.
                    DATA(t688) = abap_true.
                    IF t688 = abap_true.
                      DATA t689 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t689.
                      DATA(t690) = t41.
                      DATA(t691) = VALUE string( ).
                      DATA t692 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t692.
                      DATA t693 TYPE REF TO zcl_lnt_shape_50142cbd.
                      CLEAR t693.
                      DATA(t694) = me->parsed_xml.
                      t693 = t694.
                      t692 = t693->domname.
                      t691 = t692->value.
                      t689 = t690->lookup_object( i_name = t691 ).
                      t687 = t689.
                    ELSE.
                      DATA t695 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t695.
                      t687 = t695.
                    ENDIF.
                    t4 = t687.
                  ENDIF.
                ELSE.
                  DATA t696 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t696.
                  DATA(t697) = abap_true.
                  IF t697 = abap_true.
                    DATA t698 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t698.
                    DATA t699 TYPE REF TO zcl_lnt_ddic.
                    CLEAR t699.
                    DATA(t700) = t41.
                    t699 = t700.
                    DATA t701 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t701.
                    DATA(t702) = VALUE abap_bool( ).
                    DATA(t703) = VALUE abap_bool( ).
                    DATA t704 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t704.
                    DATA t705 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t705.
                    DATA t706 TYPE REF TO zcl_lnt_shape_50142cbd.
                    CLEAR t706.
                    DATA(t707) = me->parsed_xml.
                    t706 = t707.
                    DATA t708 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t708.
                    DATA(t709) = VALUE abap_bool( ).
                    DATA(t710) = t706.
                    IF t710 IS INITIAL.
                      t709 = abap_true.
                    ENDIF.
                    IF t709 = abap_true.
                      DATA t711 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t711.
                      t708 = t711.
                    ELSE.
                      DATA t712 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t712.
                      DATA t713 TYPE REF TO zcl_lnt_shape_50142cbd.
                      CLEAR t713.
                      DATA(t714) = t706.
                      t713 = t714.
                      t712 = t713->datatype_2b0f.
                      t708 = t712.
                    ENDIF.
                    t705 = t708.
                    t704 = t705.
                    DATA t715 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t715.
                    DATA t716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t716.
                    t715 = t716.
                    DATA(t717) = VALUE abap_bool( ).
                    DATA(t718) = t704.
                    IF t718 IS INITIAL.
                      t717 = abap_true.
                    ELSEIF t718->has = abap_false.
                      t717 = abap_true.
                    ENDIF.
                    t703 = t717.
                    t702 = t703.
                    IF t703 = abap_false.
                      DATA(t719) = VALUE abap_bool( ).
                      DATA(t720) = VALUE string( ).
                      DATA t721 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t721.
                      DATA t722 TYPE REF TO zcl_lnt_shape_50142cbd.
                      CLEAR t722.
                      DATA(t723) = me->parsed_xml.
                      t722 = t723.
                      t721 = t722->datatype_2b0f.
                      t720 = t721->value.
                      DATA(t724) = ||.
                      t719 = xsdbool( t720 = t724 ).
                      t702 = t719.
                    ENDIF.
                    IF t702 = abap_true.
                      DATA t725 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t725.
                      DATA t726 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t726.
                      DATA t727 TYPE REF TO zcl_lnt_unknown_type.
                      CLEAR t727.
                      DATA(t728) = VALUE string( ).
                      DATA(t729) = |DATATYPE unexpectely empty in |.
                      DATA(t730) = VALUE string( ).
                      DATA t731 TYPE REF TO zcl_lnt_abstract_object.
                      CLEAR t731.
                      DATA(t732) = me.
                      t731 = t732.
                      DATA(t733) = VALUE string( ).
                      DATA(t734) = t731.
                      t733 = t734->name.
                      t730 = t733.
                      DATA(t735) = strlen( t729 ).
                      t728 = |{ t729 }{ t730 }|.
                      DATA t736 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t736.
                      t727 = NEW zcl_lnt_unknown_type( i_error = t728 i_qualified_name = t736 ).
                      t726 = t727.
                      DATA t737 TYPE REF TO zif_lnt_object.
                      CLEAR t737.
                      DATA t738 TYPE REF TO zif_lnt_object.
                      CLEAR t738.
                      t737 = t738.
                      t725 = NEW zcl_lnt_ilookup_result( i_type_9913 = t726 i_object_19cd = t737 ).
                      CREATE OBJECT t725->zlnt_view_ownkeys_b0e8086400eb.
                      t725->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t739.
                      IF t725->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t725->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t739 ).
                      ENDIF.
                      CREATE OBJECT t725->zlnt_json_ownkeys_70e5fd461788.
                      t725->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t740) = |type|.
                      DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t741.
                      IF t725->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t725->zlnt_json_ownkeys_70e5fd461788->put( p0 = t740 p1 = t741 ).
                      ENDIF.
                      t701 = t725.
                    ELSE.
                      DATA t742 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t742.
                      DATA t743 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t743.
                      DATA t744 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t744.
                      DATA(t745) = t699.
                      DATA t746 TYPE REF TO zcl_lnt_shape_4a88086c.
                      CLEAR t746.
                      DATA t747 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t747.
                      DATA t748 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t748.
                      DATA(t749) = abap_true.
                      IF t749 = abap_true.
                        DATA(t750) = VALUE string( ).
                        DATA t751 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t751.
                        DATA t752 TYPE REF TO zcl_lnt_shape_50142cbd.
                        CLEAR t752.
                        DATA(t753) = me->parsed_xml.
                        t752 = t753.
                        t751 = t752->datatype_2b0f.
                        t750 = t751->value.
                        DATA(t754) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t754->has = abap_true.
                        t754->value = t750.
                        t748 = t754.
                      ELSE.
                        DATA t755 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t755.
                        t748 = t755.
                      ENDIF.
                      t747 = t748.
                      DATA t756 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t756.
                      DATA t757 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t757.
                      DATA t758 TYPE REF TO zcl_lnt_shape_50142cbd.
                      CLEAR t758.
                      DATA(t759) = me->parsed_xml.
                      t758 = t759.
                      t757 = t758->leng_e82a.
                      t756 = t757.
                      DATA t760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t760.
                      DATA t761 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t761.
                      DATA t762 TYPE REF TO zcl_lnt_shape_50142cbd.
                      CLEAR t762.
                      DATA(t763) = me->parsed_xml.
                      t762 = t763.
                      t761 = t762->decimals_29bf.
                      t760 = t761.
                      DATA(t764) = VALUE string( ).
                      DATA(t765) = VALUE string( ).
                      DATA t766 TYPE REF TO zcl_lnt_abstract_object.
                      CLEAR t766.
                      DATA(t767) = me.
                      t766 = t767.
                      DATA(t768) = VALUE string( ).
                      DATA(t769) = t766.
                      t768 = t769->name.
                      t765 = t768.
                      t764 = t765.
                      DATA t770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t770.
                      DATA t771 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t771.
                      DATA(t772) = abap_true.
                      IF t772 = abap_true.
                        DATA(t773) = VALUE string( ).
                        DATA t774 TYPE REF TO zcl_lnt_abstract_object.
                        CLEAR t774.
                        DATA(t775) = me.
                        t774 = t775.
                        DATA(t776) = VALUE string( ).
                        DATA(t777) = t774.
                        t776 = t777->name.
                        t773 = t776.
                        DATA(t778) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t778->has = abap_true.
                        t778->value = t773.
                        t771 = t778.
                      ELSE.
                        DATA t779 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t779.
                        t771 = t779.
                      ENDIF.
                      t770 = t771.
                      DATA t780 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t780.
                      DATA t781 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t781.
                      t780 = t781.
                      DATA t782 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t782.
                      DATA t783 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t783.
                      DATA(t784) = abap_true.
                      IF t784 = abap_true.
                        DATA(t785) = VALUE string( ).
                        DATA t786 TYPE REF TO zcl_lnt_abstract_object.
                        CLEAR t786.
                        DATA(t787) = me.
                        t786 = t787.
                        DATA(t788) = VALUE string( ).
                        DATA(t789) = t786.
                        t788 = t789->name.
                        t785 = t788.
                        DATA(t790) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t790->has = abap_true.
                        t790->value = t785.
                        t783 = t790.
                      ELSE.
                        DATA t791 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t791.
                        t783 = t791.
                      ENDIF.
                      t782 = t783.
                      DATA t792 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t792.
                      DATA t793 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t793.
                      DATA t794 TYPE REF TO zcl_lnt_shape_66add1d1.
                      CLEAR t794.
                      DATA t795 TYPE REF TO zcl_lnt_shape_66add1d1.
                      CLEAR t795.
                      DATA t796 TYPE REF TO zcl_lnt_shape_50142cbd.
                      CLEAR t796.
                      DATA(t797) = me->parsed_xml.
                      t796 = t797.
                      t795 = t796->texts.
                      t794 = t795.
                      DATA t798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t798.
                      DATA(t799) = VALUE abap_bool( ).
                      DATA(t800) = t794.
                      IF t800 IS INITIAL.
                        t799 = abap_true.
                      ENDIF.
                      IF t799 = abap_true.
                        DATA t801 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t801.
                        t798 = t801.
                      ELSE.
                        DATA t802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t802.
                        DATA t803 TYPE REF TO zcl_lnt_shape_66add1d1.
                        CLEAR t803.
                        DATA(t804) = t794.
                        t803 = t804.
                        t802 = t803->heading.
                        t798 = t802.
                      ENDIF.
                      t793 = t798.
                      t792 = t793.
                      t746 = NEW zcl_lnt_shape_4a88086c( i_text = t747 i_length = t756 i_decimals_2eed = t760 i_info_text = t764 i_qualified_name = t770 i_conversion_exit = t780 i_ddic_name = t782 i_description = t792 ).
                      CREATE OBJECT t746->zlnt_view_ownkeys_b0e8086400eb.
                      t746->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t805.
                      IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `text` p1 = t805 ).
                      ENDIF.
                      DATA t806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t806.
                      IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t806 ).
                      ENDIF.
                      DATA t807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t807.
                      IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t807 ).
                      ENDIF.
                      DATA t808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t808.
                      IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `infoText` p1 = t808 ).
                      ENDIF.
                      DATA t809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t809.
                      IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t809 ).
                      ENDIF.
                      DATA t810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t810.
                      IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t810 ).
                      ENDIF.
                      DATA t811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t811.
                      IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t811 ).
                      ENDIF.
                      DATA t812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t812.
                      IF t746->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t746->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t812 ).
                      ENDIF.
                      CREATE OBJECT t746->zlnt_json_ownkeys_70e5fd461788.
                      t746->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t813) = |text|.
                      DATA t814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t814.
                      IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t813 p1 = t814 ).
                      ENDIF.
                      DATA(t815) = |length|.
                      DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t816.
                      IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t815 p1 = t816 ).
                      ENDIF.
                      DATA(t817) = |decimals|.
                      DATA t818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t818.
                      IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t817 p1 = t818 ).
                      ENDIF.
                      DATA(t819) = |infoText|.
                      DATA t820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t820.
                      IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t819 p1 = t820 ).
                      ENDIF.
                      DATA(t821) = |qualifiedName|.
                      DATA t822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t822.
                      IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t821 p1 = t822 ).
                      ENDIF.
                      DATA(t823) = |conversionExit|.
                      DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t824.
                      IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t823 p1 = t824 ).
                      ENDIF.
                      DATA(t825) = |ddicName|.
                      DATA t826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t826.
                      IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t825 p1 = t826 ).
                      ENDIF.
                      DATA(t827) = |description|.
                      DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t828.
                      IF t746->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t746->zlnt_json_ownkeys_70e5fd461788->put( p0 = t827 p1 = t828 ).
                      ENDIF.
                      t744 = t745->text_to_type( i_input_967e = t746 ).
                      t743 = t744.
                      DATA t829 TYPE REF TO zif_lnt_object.
                      CLEAR t829.
                      DATA t830 TYPE REF TO zif_lnt_object.
                      CLEAR t830.
                      t829 = t830.
                      t742 = NEW zcl_lnt_ilookup_result( i_type_9913 = t743 i_object_19cd = t829 ).
                      CREATE OBJECT t742->zlnt_view_ownkeys_b0e8086400eb.
                      t742->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t831 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t831.
                      IF t742->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t742->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t831 ).
                      ENDIF.
                      CREATE OBJECT t742->zlnt_json_ownkeys_70e5fd461788.
                      t742->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t832) = |type|.
                      DATA t833 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t833.
                      IF t742->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t742->zlnt_json_ownkeys_70e5fd461788->put( p0 = t832 p1 = t833 ).
                      ENDIF.
                      t701 = t742.
                    ENDIF.
                    t698 = t701.
                    t696 = t698.
                  ELSE.
                    DATA t834 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t834.
                    t696 = t834.
                  ENDIF.
                  t4 = t696.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t835) = VALUE abap_bool( ).
    DATA t836 TYPE REF TO zif_lnt_object.
    CLEAR t836.
    DATA t837 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t837.
    DATA(t838) = t4.
    t837 = t838.
    t836 = t837->zlnt_view_read_sr_2de0200e6505( ).
    t835 = xsdbool( t836 IS BOUND ).
    IF t835 = abap_true.
      DATA(t839) = t2.
      DATA t840 TYPE REF TO zcl_lnt_iobject_and_token.
      CLEAR t840.
      DATA t841 TYPE REF TO zif_lnt_object.
      CLEAR t841.
      DATA t842 TYPE REF TO zif_lnt_object.
      CLEAR t842.
      DATA(t843) = abap_true.
      IF t843 = abap_true.
        DATA t844 TYPE REF TO zif_lnt_object.
        CLEAR t844.
        DATA t845 TYPE REF TO zif_lnt_object.
        CLEAR t845.
        DATA t846 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t846.
        DATA(t847) = t4.
        t846 = t847.
        t845 = t846->zlnt_view_read_sr_2de0200e6505( ).
        t844 = t845.
        t842 = t844.
      ELSE.
        DATA t848 TYPE REF TO zif_lnt_object.
        CLEAR t848.
        t842 = t848.
      ENDIF.
      t841 = t842.
      DATA t849 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t849.
      DATA t850 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t850.
      t849 = t850.
      DATA t851 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t851.
      DATA t852 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t852.
      t851 = t852.
      t840 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t841 i_token = t849 i_filename = t851 ).
      CREATE OBJECT t840->zlnt_view_ownkeys_b0e8086400eb.
      t840->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t853.
      IF t840->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t840->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t853 ).
      ENDIF.
      CREATE OBJECT t840->zlnt_json_ownkeys_70e5fd461788.
      t840->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t854) = |object|.
      DATA t855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t855.
      IF t840->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t840->zlnt_json_ownkeys_70e5fd461788->put( p0 = t854 p1 = t855 ).
      ENDIF.
      t839->load( ).
      APPEND t840 TO t839->items.
      t839->save( ).
    ENDIF.
    DATA t856 TYPE REF TO zif_lnt_ddic_references.
    CLEAR t856.
    DATA(t857) = t1.
    t856 = t857->get_ddic_references( ).
    DATA(t858) = me.
    DATA(t859) = t2.
    t856->set_using( i_obj_1ed0 = t858 i_using = t859 ).
    DATA(t860) = VALUE abap_bool( ).
    DATA(t861) = VALUE abap_bool( ).
    DATA t862 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t862.
    DATA t863 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t863.
    DATA(t864) = t4.
    t863 = t864.
    t862 = t863->zlnt_view_read_sr_9be58e2d4893( ).
    t861 = xsdbool( t862 IS BOUND AND t862 IS INSTANCE OF zcl_lnt_unknown_type ).
    t860 = xsdbool( t861 = abap_false ).
    IF t860 = abap_true.
      DATA t865 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t865.
      DATA(t866) = abap_true.
      IF t866 = abap_true.
        DATA t867 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t867.
        DATA t868 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t868.
        DATA(t869) = t4.
        t868 = t869.
        t867 = t868->zlnt_view_read_sr_9be58e2d4893( ).
        t865 = t867.
      ELSE.
        DATA t870 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t870.
        t865 = t870.
      ENDIF.
      me->parsed_type = t865.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedType`.
    ENDIF.
    DATA t871 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t871.
    DATA t872 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t872.
    DATA(t873) = t4.
    t872 = t873.
    t871 = t872->zlnt_view_read_sr_9be58e2d4893( ).
    result = t871.

  ENDMETHOD.

  METHOD pr_in_src_obj_dt_elm_ts_dt_elm.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_50142cbd.
    CLEAR t2.
    DATA(t3) = me->parsed_xml.
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
      DATA t9 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t9.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = abap_false.
      t10 = t11.
      DATA(t12) = VALUE f( ).
      DATA(t13) = CONV f( 0 ).
      t12 = t13.
      DATA t14 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t15.
      t14 = t15.
      t9 = NEW zcl_lnt_iparse_result( i_updated = t10 i_runtime = t12 i_runtime_extra = t14 ).
      CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
      t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t16 ).
      ENDIF.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t17 ).
      ENDIF.
      CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
      t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t18) = |updated|.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
      ENDIF.
      DATA(t20) = |runtime|.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
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
    DATA t25 TYPE REF TO zcl_lnt_shape_50142cbd.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_shape_50142cbd.
      CLEAR t27.
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
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t32 = t33.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t34 = t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t36 = t37.
      DATA t38 TYPE REF TO zcl_lnt_shape_66add1d1.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_shape_66add1d1.
      CLEAR t39.
      t38 = t39.
      DATA t40 TYPE REF TO zcl_lnt_shape_66add1d1.
      CLEAR t40.
      DATA t41 TYPE REF TO zcl_lnt_shape_66add1d1.
      CLEAR t41.
      t40 = t41.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t42.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t43.
      t42 = t43.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      t44 = t45.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      t46 = t47.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      t48 = t49.
      t27 = NEW zcl_lnt_shape_50142cbd( i_description = t28 i_refkind = t30 i_domname = t32 i_datatype_9e1e = t34 i_leng_b7d5 = t36 i_texts = t38 i_text_max_lengths = t40 i_texts_translations = t42 i_decimals_2eed = t44 i_dtelmaster = t46
      i_aff_category = t48 ).
      CREATE OBJECT t27->zlnt_view_ownkeys_b0e8086400eb.
      t27->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t27->zlnt_json_ownkeys_70e5fd461788.
      t27->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t25 = t27.
    ELSE.
      DATA t50 TYPE REF TO zcl_lnt_shape_50142cbd.
      CLEAR t50.
      t25 = t50.
    ENDIF.
    me->parsed_xml = t25.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t51 TYPE REF TO zif_lnt_file.
    CLEAR t51.
    DATA(t52) = CAST zif_lnt_file( me->get_aff_file( ) ).
    t51 = t52.
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = t51.
    t53 = xsdbool( t54 IS BOUND ).
    IF t53 = abap_true.
      DATA t55 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t55.
      TRY.
          DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t56.
          DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t57.
          DATA(t58) = VALUE string( ).
          DATA t59 TYPE REF TO zif_lnt_file.
          CLEAR t59.
          DATA(t60) = t51.
          t59 = t60.
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
              CLEAR t64.
              CLEAR t64.
              IF t62 IS BOUND.
                DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t65.
                DATA t66 TYPE REF TO object.
                CLEAR t66.
                CLEAR t65.
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
              ENDIF.
              t63->source_value = t64.
              RAISE EXCEPTION t63.
          ENDTRY.
          t56 = t57.
          DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t67.
          DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t68.
          DATA(t69) = t56.
          DATA(t70) = |dataTypeInformation|.
          t68 = t69->get( p0 = t70 ).
          t67 = t68.
          DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t71.
          DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t72.
          DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t73.
          DATA(t74) = t67.
          t73 = t74.
          DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t75.
          DATA(t76) = VALUE abap_bool( ).
          DATA(t77) = t73.
          IF t77 IS NOT BOUND.
            t76 = abap_true.
          ELSE.
            t76 = xsdbool( t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t76 = abap_true.
            DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t78.
            t75 = t78.
          ELSE.
            DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t79.
            DATA(t80) = t73.
            DATA(t81) = |predefinedType|.
            t79 = t80->get( p0 = t81 ).
            t75 = t79.
          ENDIF.
          t72 = t75.
          t71 = t72.
          DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t82.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t83.
          DATA(t84) = VALUE abap_bool( ).
          DATA(t85) = t71.
          IF t85 IS INITIAL.
            t84 = abap_true.
          ENDIF.
          IF t84 = abap_true.
            DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t86.
            t83 = t86.
          ELSE.
            DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t87.
            DATA(t88) = t71.
            t87 = t88.
            t83 = t87.
          ENDIF.
          t82 = t83.
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t89.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t90.
          DATA(t91) = t56.
          DATA(t92) = |fieldLabels|.
          t90 = t91->get( p0 = t92 ).
          t89 = t90.
          DATA t93 TYPE REF TO zcl_lnt_shape_50142cbd.
          CLEAR t93.
          DATA(t94) = abap_true.
          IF t94 = abap_true.
            DATA t95 TYPE REF TO zcl_lnt_shape_50142cbd.
            CLEAR t95.
            DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t96.
            DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t97.
            DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t98.
            DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t99.
            DATA(t100) = t56.
            DATA(t101) = |header|.
            t99 = t100->get( p0 = t101 ).
            t98 = t99.
            DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t102.
            DATA(t103) = VALUE abap_bool( ).
            DATA(t104) = t98.
            IF t104 IS NOT BOUND.
              t103 = abap_true.
            ELSE.
              t103 = xsdbool( t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t103 = abap_true.
              DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t105.
              t102 = t105.
            ELSE.
              DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t106.
              DATA(t107) = t98.
              DATA(t108) = |description|.
              t106 = t107->get( p0 = t108 ).
              t102 = t106.
            ENDIF.
            t97 = t102.
            t96 = t97.
            DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t109.
            DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t110.
            DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t111.
            DATA(t112) = t67.
            t111 = t112.
            DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t113.
            DATA(t114) = VALUE abap_bool( ).
            DATA(t115) = t111.
            IF t115 IS NOT BOUND.
              t114 = abap_true.
            ELSE.
              t114 = xsdbool( t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t114 = abap_true.
              DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t116.
              t113 = t116.
            ELSE.
              DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t117.
              DATA(t118) = t111.
              DATA(t119) = |category|.
              t117 = t118->get( p0 = t119 ).
              t113 = t117.
            ENDIF.
            t110 = t113.
            t109 = t110.
            DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t120.
            DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t121.
            DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t122.
            DATA(t123) = t67.
            t122 = t123.
            DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t124.
            DATA(t125) = VALUE abap_bool( ).
            DATA(t126) = t122.
            IF t126 IS NOT BOUND.
              t125 = abap_true.
            ELSE.
              t125 = xsdbool( t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t125 = abap_true.
              DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t127.
              t124 = t127.
            ELSE.
              DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t128.
              DATA(t129) = t122.
              DATA(t130) = |typeName|.
              t128 = t129->get( p0 = t130 ).
              t124 = t128.
            ENDIF.
            t121 = t124.
            t120 = t121.
            DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t131.
            DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t132.
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t133.
            DATA(t134) = t82.
            t133 = t134.
            DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t135.
            DATA(t136) = VALUE abap_bool( ).
            DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t137.
            DATA(t138) = t133.
            CLEAR t137.
            IF t138 IS BOUND.
              t137 = t138.
            ENDIF.
            IF t137 IS NOT BOUND.
              t136 = abap_true.
            ELSE.
              t136 = xsdbool( t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t136 = abap_true.
              DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t139.
              t135 = t139.
            ELSE.
              DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t140.
              DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t141.
              DATA(t142) = t133.
              t141 = t142.
              DATA(t143) = |dataType|.
              t140 = t141->get( p0 = t143 ).
              t135 = t140.
            ENDIF.
            t132 = t135.
            t131 = t132.
            DATA t144 TYPE REF TO zcl_lnt_shape_50142cbd.
            CLEAR t144.
            DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t145.
            DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t146.
            DATA(t147) = VALUE abap_bool( ).
            DATA(t148) = t96.
            IF t148 IS INITIAL.
              t147 = abap_true.
            ENDIF.
            IF t147 = abap_true.
              DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t149.
              t146 = t149.
            ELSE.
              DATA(t150) = VALUE string( ).
              DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t151.
              DATA(t152) = t96.
              t151 = t152.
              t150 = t151->as_string( ).
              DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t153->has = abap_true.
              t153->value = t150.
              t146 = t153.
            ENDIF.
            t145 = t146.
            DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t154.
            DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t155.
            DATA(t156) = VALUE abap_bool( ).
            DATA(t157) = t109.
            IF t157 IS INITIAL.
              t156 = abap_true.
            ENDIF.
            IF t156 = abap_true.
              DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t158.
              t155 = t158.
            ELSE.
              DATA(t159) = VALUE string( ).
              DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t160.
              DATA(t161) = t109.
              t160 = t161.
              t159 = t160->as_string( ).
              DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t162->has = abap_true.
              t162->value = t159.
              t155 = t162.
            ENDIF.
            t154 = t155.
            DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t163.
            DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t164.
            DATA(t165) = VALUE abap_bool( ).
            DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t166.
            DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t167.
            DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t168.
            DATA(t169) = t67.
            t168 = t169.
            DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t170.
            DATA(t171) = VALUE abap_bool( ).
            DATA(t172) = t168.
            IF t172 IS NOT BOUND.
              t171 = abap_true.
            ELSE.
              t171 = xsdbool( t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t171 = abap_true.
              DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t173.
              t170 = t173.
            ELSE.
              DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t174.
              DATA(t175) = t168.
              DATA(t176) = |category|.
              t174 = t175->get( p0 = t176 ).
              t170 = t174.
            ENDIF.
            t167 = t170.
            CLEAR t166.
            IF t167 IS BOUND.
              t166 = t167.
            ENDIF.
            DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t177.
            DATA(t178) = |domain|.
            CLEAR t177.
            CREATE OBJECT t177.
            t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t177->sval = t178.
            IF t166 IS NOT BOUND.
              t165 = xsdbool( t177 IS NOT BOUND ).
            ELSE.
              t165 = t166->strict_equals( t177 ).
            ENDIF.
            IF t165 = abap_true.
              DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t179.
              DATA(t180) = abap_true.
              IF t180 = abap_true.
                DATA(t181) = |D|.
                DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t182->has = abap_true.
                t182->value = t181.
                t179 = t182.
              ELSE.
                DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t183.
                t179 = t183.
              ENDIF.
              t164 = t179.
            ELSE.
              DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t184.
              t164 = t184.
            ENDIF.
            t163 = t164.
            DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t185.
            DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t186.
            DATA(t187) = VALUE abap_bool( ).
            DATA(t188) = t120.
            IF t188 IS INITIAL.
              t187 = abap_true.
            ENDIF.
            IF t187 = abap_true.
              DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t189.
              t186 = t189.
            ELSE.
              DATA(t190) = VALUE string( ).
              DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t191.
              DATA(t192) = t120.
              t191 = t192.
              t190 = t191->as_string( ).
              DATA(t193) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t193->has = abap_true.
              t193->value = t190.
              t186 = t193.
            ENDIF.
            t185 = t186.
            DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t194.
            DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t195.
            DATA(t196) = VALUE abap_bool( ).
            DATA(t197) = t131.
            IF t197 IS INITIAL.
              t196 = abap_true.
            ENDIF.
            IF t196 = abap_true.
              DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t198.
              t195 = t198.
            ELSE.
              DATA(t199) = VALUE string( ).
              DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t200.
              DATA(t201) = t131.
              t200 = t201.
              t199 = t200->as_string( ).
              DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t202->has = abap_true.
              t202->value = t199.
              t195 = t202.
            ENDIF.
            t194 = t195.
            DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t203.
            DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t204.
            DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t205.
            DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t206.
            DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t207.
            DATA(t208) = t82.
            t207 = t208.
            DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t209.
            DATA(t210) = VALUE abap_bool( ).
            DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t211.
            DATA(t212) = t207.
            CLEAR t211.
            IF t212 IS BOUND.
              t211 = t212.
            ENDIF.
            IF t211 IS NOT BOUND.
              t210 = abap_true.
            ELSE.
              t210 = xsdbool( t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t210 = abap_true.
              DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t213.
              t209 = t213.
            ELSE.
              DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t214.
              DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t215.
              DATA(t216) = t207.
              t215 = t216.
              DATA(t217) = |length|.
              t214 = t215->get( p0 = t217 ).
              t209 = t214.
            ENDIF.
            t206 = t209.
            t205 = t206.
            DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t218.
            DATA(t219) = VALUE abap_bool( ).
            DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t220.
            DATA(t221) = t205.
            CLEAR t220.
            IF t221 IS BOUND.
              t220 = t221.
            ENDIF.
            IF t220 IS NOT BOUND.
              t219 = abap_true.
            ELSE.
              t219 = xsdbool( t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t219 = abap_true.
              DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t222.
              t218 = t222.
            ELSE.
              DATA(t223) = VALUE string( ).
              DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t224.
              DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t225.
              DATA(t226) = t205.
              t225 = t226.
              t224 = t225.
              DATA(t227) = VALUE abap_bool( ).
              DATA(t228) = t224.
              IF t228 IS NOT BOUND.
                t227 = abap_true.
              ELSE.
                t227 = xsdbool( t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t227 = abap_true.
                DATA(t229) = NEW zlnt_exception_un_5f2d02892fe8( ).
                DATA(t230) = |src/objects/data_element.ts:228:17|.
                t229->source_location = t230.
                RAISE EXCEPTION t229.
              ENDIF.
              DATA(t231) = VALUE string( ).
              DATA(t232) = t224.
              IF t232 IS BOUND.
                t231 = t232->to_string( ).
              ELSE.
                t231 = `undefined`.
              ENDIF.
              t223 = t231.
              DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t233->has = abap_true.
              t233->value = t223.
              t218 = t233.
            ENDIF.
            t204 = t218.
            t203 = t204.
            DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t234.
            DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t235.
            DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t236.
            DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t237.
            DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t238.
            DATA(t239) = t82.
            t238 = t239.
            DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t240.
            DATA(t241) = VALUE abap_bool( ).
            DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t242.
            DATA(t243) = t238.
            CLEAR t242.
            IF t243 IS BOUND.
              t242 = t243.
            ENDIF.
            IF t242 IS NOT BOUND.
              t241 = abap_true.
            ELSE.
              t241 = xsdbool( t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t241 = abap_true.
              DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t244.
              t240 = t244.
            ELSE.
              DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t245.
              DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t246.
              DATA(t247) = t238.
              t246 = t247.
              DATA(t248) = |decimals|.
              t245 = t246->get( p0 = t248 ).
              t240 = t245.
            ENDIF.
            t237 = t240.
            t236 = t237.
            DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t249.
            DATA(t250) = VALUE abap_bool( ).
            DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t251.
            DATA(t252) = t236.
            CLEAR t251.
            IF t252 IS BOUND.
              t251 = t252.
            ENDIF.
            IF t251 IS NOT BOUND.
              t250 = abap_true.
            ELSE.
              t250 = xsdbool( t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
            ENDIF.
            IF t250 = abap_true.
              DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t253.
              t249 = t253.
            ELSE.
              DATA(t254) = VALUE string( ).
              DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t255.
              DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t256.
              DATA(t257) = t236.
              t256 = t257.
              t255 = t256.
              DATA(t258) = VALUE abap_bool( ).
              DATA(t259) = t255.
              IF t259 IS NOT BOUND.
                t258 = abap_true.
              ELSE.
                t258 = xsdbool( t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t258 = abap_true.
                DATA(t260) = NEW zlnt_exception_un_5f2d02892fe8( ).
                DATA(t261) = |src/objects/data_element.ts:229:21|.
                t260->source_location = t261.
                RAISE EXCEPTION t260.
              ENDIF.
              DATA(t262) = VALUE string( ).
              DATA(t263) = t255.
              IF t263 IS BOUND.
                t262 = t263->to_string( ).
              ELSE.
                t262 = `undefined`.
              ENDIF.
              t254 = t262.
              DATA(t264) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t264->has = abap_true.
              t264->value = t254.
              t249 = t264.
            ENDIF.
            t235 = t249.
            t234 = t235.
            DATA t265 TYPE REF TO zcl_lnt_shape_66add1d1.
            CLEAR t265.
            DATA t266 TYPE REF TO zcl_lnt_shape_66add1d1.
            CLEAR t266.
            DATA(t267) = abap_true.
            IF t267 = abap_true.
              DATA t268 TYPE REF TO zcl_lnt_shape_66add1d1.
              CLEAR t268.
              DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t269.
              DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t270.
              DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t271.
              DATA(t272) = t89.
              t271 = t272.
              DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t273.
              DATA(t274) = VALUE abap_bool( ).
              DATA(t275) = t271.
              IF t275 IS NOT BOUND.
                t274 = abap_true.
              ELSE.
                t274 = xsdbool( t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t274 = abap_true.
                DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t276.
                t273 = t276.
              ELSE.
                DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t277.
                DATA(t278) = t271.
                DATA(t279) = |short|.
                t277 = t278->get( p0 = t279 ).
                t273 = t277.
              ENDIF.
              t270 = t273.
              t269 = t270.
              DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t280.
              DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t281.
              DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t282.
              DATA(t283) = t89.
              t282 = t283.
              DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t284.
              DATA(t285) = VALUE abap_bool( ).
              DATA(t286) = t282.
              IF t286 IS NOT BOUND.
                t285 = abap_true.
              ELSE.
                t285 = xsdbool( t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t285 = abap_true.
                DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t287.
                t284 = t287.
              ELSE.
                DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t288.
                DATA(t289) = t282.
                DATA(t290) = |medium|.
                t288 = t289->get( p0 = t290 ).
                t284 = t288.
              ENDIF.
              t281 = t284.
              t280 = t281.
              DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t291.
              DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t292.
              DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t293.
              DATA(t294) = t89.
              t293 = t294.
              DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t295.
              DATA(t296) = VALUE abap_bool( ).
              DATA(t297) = t293.
              IF t297 IS NOT BOUND.
                t296 = abap_true.
              ELSE.
                t296 = xsdbool( t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t296 = abap_true.
                DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t298.
                t295 = t298.
              ELSE.
                DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t299.
                DATA(t300) = t293.
                DATA(t301) = |long|.
                t299 = t300->get( p0 = t301 ).
                t295 = t299.
              ENDIF.
              t292 = t295.
              t291 = t292.
              DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t302.
              DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t303.
              DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t304.
              DATA(t305) = t89.
              t304 = t305.
              DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t306.
              DATA(t307) = VALUE abap_bool( ).
              DATA(t308) = t304.
              IF t308 IS NOT BOUND.
                t307 = abap_true.
              ELSE.
                t307 = xsdbool( t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t307 = abap_true.
                DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t309.
                t306 = t309.
              ELSE.
                DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t310.
                DATA(t311) = t304.
                DATA(t312) = |heading|.
                t310 = t311->get( p0 = t312 ).
                t306 = t310.
              ENDIF.
              t303 = t306.
              t302 = t303.
              DATA t313 TYPE REF TO zcl_lnt_shape_66add1d1.
              CLEAR t313.
              DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t314.
              DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t315.
              DATA(t316) = VALUE abap_bool( ).
              DATA(t317) = t269.
              IF t317 IS INITIAL.
                t316 = abap_true.
              ENDIF.
              IF t316 = abap_true.
                DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t318.
                t315 = t318.
              ELSE.
                DATA(t319) = VALUE string( ).
                DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t320.
                DATA(t321) = t269.
                t320 = t321.
                t319 = t320->as_string( ).
                DATA(t322) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t322->has = abap_true.
                t322->value = t319.
                t315 = t322.
              ENDIF.
              t314 = t315.
              DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t323.
              DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t324.
              DATA(t325) = VALUE abap_bool( ).
              DATA(t326) = t280.
              IF t326 IS INITIAL.
                t325 = abap_true.
              ENDIF.
              IF t325 = abap_true.
                DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t327.
                t324 = t327.
              ELSE.
                DATA(t328) = VALUE string( ).
                DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t329.
                DATA(t330) = t280.
                t329 = t330.
                t328 = t329->as_string( ).
                DATA(t331) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t331->has = abap_true.
                t331->value = t328.
                t324 = t331.
              ENDIF.
              t323 = t324.
              DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t332.
              DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t333.
              DATA(t334) = VALUE abap_bool( ).
              DATA(t335) = t291.
              IF t335 IS INITIAL.
                t334 = abap_true.
              ENDIF.
              IF t334 = abap_true.
                DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t336.
                t333 = t336.
              ELSE.
                DATA(t337) = VALUE string( ).
                DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t338.
                DATA(t339) = t291.
                t338 = t339.
                t337 = t338->as_string( ).
                DATA(t340) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t340->has = abap_true.
                t340->value = t337.
                t333 = t340.
              ENDIF.
              t332 = t333.
              DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t341.
              DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t342.
              DATA(t343) = VALUE abap_bool( ).
              DATA(t344) = t302.
              IF t344 IS INITIAL.
                t343 = abap_true.
              ENDIF.
              IF t343 = abap_true.
                DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t345.
                t342 = t345.
              ELSE.
                DATA(t346) = VALUE string( ).
                DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t347.
                DATA(t348) = t302.
                t347 = t348.
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
              CLEAR t350.
              IF t313->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `short` p1 = t350 ).
              ENDIF.
              DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t351.
              IF t313->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `medium` p1 = t351 ).
              ENDIF.
              DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t352.
              IF t313->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `long` p1 = t352 ).
              ENDIF.
              DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t353.
              IF t313->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `heading` p1 = t353 ).
              ENDIF.
              CREATE OBJECT t313->zlnt_json_ownkeys_70e5fd461788.
              t313->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t354) = |short|.
              DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t355.
              IF t313->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = t354 p1 = t355 ).
              ENDIF.
              DATA(t356) = |medium|.
              DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t357.
              IF t313->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
              ENDIF.
              DATA(t358) = |long|.
              DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t359.
              IF t313->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = t358 p1 = t359 ).
              ENDIF.
              DATA(t360) = |heading|.
              DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t361.
              IF t313->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = t360 p1 = t361 ).
              ENDIF.
              t268 = t313.
              t266 = t268.
            ELSE.
              DATA t362 TYPE REF TO zcl_lnt_shape_66add1d1.
              CLEAR t362.
              t266 = t362.
            ENDIF.
            t265 = t266.
            DATA t363 TYPE REF TO zcl_lnt_shape_66add1d1.
            CLEAR t363.
            DATA t364 TYPE REF TO zcl_lnt_shape_66add1d1.
            CLEAR t364.
            DATA(t365) = abap_true.
            IF t365 = abap_true.
              DATA t366 TYPE REF TO zcl_lnt_shape_66add1d1.
              CLEAR t366.
              DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t367.
              DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t368.
              DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t369.
              DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t370.
              DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t371.
              DATA(t372) = t89.
              t371 = t372.
              DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t373.
              DATA(t374) = VALUE abap_bool( ).
              DATA(t375) = t371.
              IF t375 IS NOT BOUND.
                t374 = abap_true.
              ELSE.
                t374 = xsdbool( t375->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t374 = abap_true.
                DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t376.
                t373 = t376.
              ELSE.
                DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t377.
                DATA(t378) = t371.
                DATA(t379) = |shortLength|.
                t377 = t378->get( p0 = t379 ).
                t373 = t377.
              ENDIF.
              t370 = t373.
              t369 = t370.
              DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t380.
              DATA(t381) = VALUE abap_bool( ).
              DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t382.
              DATA(t383) = t369.
              CLEAR t382.
              IF t383 IS BOUND.
                t382 = t383.
              ENDIF.
              IF t382 IS NOT BOUND.
                t381 = abap_true.
              ELSE.
                t381 = xsdbool( t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t381 = abap_true.
                DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t384.
                t380 = t384.
              ELSE.
                DATA(t385) = VALUE string( ).
                DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t386.
                DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t387.
                DATA(t388) = t369.
                t387 = t388.
                t386 = t387.
                DATA(t389) = VALUE abap_bool( ).
                DATA(t390) = t386.
                IF t390 IS NOT BOUND.
                  t389 = abap_true.
                ELSE.
                  t389 = xsdbool( t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
                ENDIF.
                IF t389 = abap_true.
                  DATA(t391) = NEW zlnt_exception_un_5f2d02892fe8( ).
                  DATA(t392) = |src/objects/data_element.ts:237:20|.
                  t391->source_location = t392.
                  RAISE EXCEPTION t391.
                ENDIF.
                DATA(t393) = VALUE string( ).
                DATA(t394) = t386.
                IF t394 IS BOUND.
                  t393 = t394->to_string( ).
                ELSE.
                  t393 = `undefined`.
                ENDIF.
                t385 = t393.
                DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t395->has = abap_true.
                t395->value = t385.
                t380 = t395.
              ENDIF.
              t368 = t380.
              t367 = t368.
              DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t396.
              DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t397.
              DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t398.
              DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t399.
              DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t400.
              DATA(t401) = t89.
              t400 = t401.
              DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t402.
              DATA(t403) = VALUE abap_bool( ).
              DATA(t404) = t400.
              IF t404 IS NOT BOUND.
                t403 = abap_true.
              ELSE.
                t403 = xsdbool( t404->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t403 = abap_true.
                DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t405.
                t402 = t405.
              ELSE.
                DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t406.
                DATA(t407) = t400.
                DATA(t408) = |mediumLength|.
                t406 = t407->get( p0 = t408 ).
                t402 = t406.
              ENDIF.
              t399 = t402.
              t398 = t399.
              DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t409.
              DATA(t410) = VALUE abap_bool( ).
              DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t411.
              DATA(t412) = t398.
              CLEAR t411.
              IF t412 IS BOUND.
                t411 = t412.
              ENDIF.
              IF t411 IS NOT BOUND.
                t410 = abap_true.
              ELSE.
                t410 = xsdbool( t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t410 = abap_true.
                DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t413.
                t409 = t413.
              ELSE.
                DATA(t414) = VALUE string( ).
                DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t415.
                DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t416.
                DATA(t417) = t398.
                t416 = t417.
                t415 = t416.
                DATA(t418) = VALUE abap_bool( ).
                DATA(t419) = t415.
                IF t419 IS NOT BOUND.
                  t418 = abap_true.
                ELSE.
                  t418 = xsdbool( t419->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
                ENDIF.
                IF t418 = abap_true.
                  DATA(t420) = NEW zlnt_exception_un_5f2d02892fe8( ).
                  DATA(t421) = |src/objects/data_element.ts:238:21|.
                  t420->source_location = t421.
                  RAISE EXCEPTION t420.
                ENDIF.
                DATA(t422) = VALUE string( ).
                DATA(t423) = t415.
                IF t423 IS BOUND.
                  t422 = t423->to_string( ).
                ELSE.
                  t422 = `undefined`.
                ENDIF.
                t414 = t422.
                DATA(t424) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t424->has = abap_true.
                t424->value = t414.
                t409 = t424.
              ENDIF.
              t397 = t409.
              t396 = t397.
              DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t425.
              DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t426.
              DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t427.
              DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t428.
              DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t429.
              DATA(t430) = t89.
              t429 = t430.
              DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t431.
              DATA(t432) = VALUE abap_bool( ).
              DATA(t433) = t429.
              IF t433 IS NOT BOUND.
                t432 = abap_true.
              ELSE.
                t432 = xsdbool( t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t432 = abap_true.
                DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t434.
                t431 = t434.
              ELSE.
                DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t435.
                DATA(t436) = t429.
                DATA(t437) = |longLength|.
                t435 = t436->get( p0 = t437 ).
                t431 = t435.
              ENDIF.
              t428 = t431.
              t427 = t428.
              DATA t438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t438.
              DATA(t439) = VALUE abap_bool( ).
              DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t440.
              DATA(t441) = t427.
              CLEAR t440.
              IF t441 IS BOUND.
                t440 = t441.
              ENDIF.
              IF t440 IS NOT BOUND.
                t439 = abap_true.
              ELSE.
                t439 = xsdbool( t440->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t439 = abap_true.
                DATA t442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t442.
                t438 = t442.
              ELSE.
                DATA(t443) = VALUE string( ).
                DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t444.
                DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t445.
                DATA(t446) = t427.
                t445 = t446.
                t444 = t445.
                DATA(t447) = VALUE abap_bool( ).
                DATA(t448) = t444.
                IF t448 IS NOT BOUND.
                  t447 = abap_true.
                ELSE.
                  t447 = xsdbool( t448->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
                ENDIF.
                IF t447 = abap_true.
                  DATA(t449) = NEW zlnt_exception_un_5f2d02892fe8( ).
                  DATA(t450) = |src/objects/data_element.ts:239:19|.
                  t449->source_location = t450.
                  RAISE EXCEPTION t449.
                ENDIF.
                DATA(t451) = VALUE string( ).
                DATA(t452) = t444.
                IF t452 IS BOUND.
                  t451 = t452->to_string( ).
                ELSE.
                  t451 = `undefined`.
                ENDIF.
                t443 = t451.
                DATA(t453) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t453->has = abap_true.
                t453->value = t443.
                t438 = t453.
              ENDIF.
              t426 = t438.
              t425 = t426.
              DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t454.
              DATA t455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t455.
              DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t456.
              DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t457.
              DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t458.
              DATA(t459) = t89.
              t458 = t459.
              DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t460.
              DATA(t461) = VALUE abap_bool( ).
              DATA(t462) = t458.
              IF t462 IS NOT BOUND.
                t461 = abap_true.
              ELSE.
                t461 = xsdbool( t462->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t461 = abap_true.
                DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t463.
                t460 = t463.
              ELSE.
                DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t464.
                DATA(t465) = t458.
                DATA(t466) = |headingLength|.
                t464 = t465->get( p0 = t466 ).
                t460 = t464.
              ENDIF.
              t457 = t460.
              t456 = t457.
              DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t467.
              DATA(t468) = VALUE abap_bool( ).
              DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t469.
              DATA(t470) = t456.
              CLEAR t469.
              IF t470 IS BOUND.
                t469 = t470.
              ENDIF.
              IF t469 IS NOT BOUND.
                t468 = abap_true.
              ELSE.
                t468 = xsdbool( t469->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
              ENDIF.
              IF t468 = abap_true.
                DATA t471 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t471.
                t467 = t471.
              ELSE.
                DATA(t472) = VALUE string( ).
                DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t473.
                DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t474.
                DATA(t475) = t456.
                t474 = t475.
                t473 = t474.
                DATA(t476) = VALUE abap_bool( ).
                DATA(t477) = t473.
                IF t477 IS NOT BOUND.
                  t476 = abap_true.
                ELSE.
                  t476 = xsdbool( t477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
                ENDIF.
                IF t476 = abap_true.
                  DATA(t478) = NEW zlnt_exception_un_5f2d02892fe8( ).
                  DATA(t479) = |src/objects/data_element.ts:240:22|.
                  t478->source_location = t479.
                  RAISE EXCEPTION t478.
                ENDIF.
                DATA(t480) = VALUE string( ).
                DATA(t481) = t473.
                IF t481 IS BOUND.
                  t480 = t481->to_string( ).
                ELSE.
                  t480 = `undefined`.
                ENDIF.
                t472 = t480.
                DATA(t482) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t482->has = abap_true.
                t482->value = t472.
                t467 = t482.
              ENDIF.
              t455 = t467.
              t454 = t455.
              t366 = NEW zcl_lnt_shape_66add1d1( i_short = t367 i_medium = t396 i_long = t425 i_heading = t454 ).
              CREATE OBJECT t366->zlnt_view_ownkeys_b0e8086400eb.
              t366->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t483.
              IF t366->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `short` p1 = t483 ).
              ENDIF.
              DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t484.
              IF t366->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `medium` p1 = t484 ).
              ENDIF.
              DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t485.
              IF t366->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `long` p1 = t485 ).
              ENDIF.
              DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t486.
              IF t366->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `heading` p1 = t486 ).
              ENDIF.
              CREATE OBJECT t366->zlnt_json_ownkeys_70e5fd461788.
              t366->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t487) = |short|.
              DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t488.
              IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t487 p1 = t488 ).
              ENDIF.
              DATA(t489) = |medium|.
              DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t490.
              IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t489 p1 = t490 ).
              ENDIF.
              DATA(t491) = |long|.
              DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t492.
              IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t491 p1 = t492 ).
              ENDIF.
              DATA(t493) = |heading|.
              DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t494.
              IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t493 p1 = t494 ).
              ENDIF.
              t364 = t366.
            ELSE.
              DATA t495 TYPE REF TO zcl_lnt_shape_66add1d1.
              CLEAR t495.
              t364 = t495.
            ENDIF.
            t363 = t364.
            DATA t496 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t496.
            DATA t497 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t497.
            t496 = t497.
            DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t498.
            DATA t499 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t499.
            t498 = t499.
            t144 = NEW zcl_lnt_shape_50142cbd( i_description = t145 i_refkind = t163 i_domname = t185 i_datatype_9e1e = t194 i_leng_b7d5 = t203 i_texts = t265 i_text_max_lengths = t363 i_texts_translations = t496 i_decimals_2eed = t234
            i_dtelmaster = t498 i_aff_category = t154 ).
            CREATE OBJECT t144->zlnt_view_ownkeys_b0e8086400eb.
            t144->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t500.
            IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t500 ).
            ENDIF.
            DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t501.
            IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `affCategory` p1 = t501 ).
            ENDIF.
            DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t502.
            IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `refkind` p1 = t502 ).
            ENDIF.
            DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t503.
            IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `domname` p1 = t503 ).
            ENDIF.
            DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t504.
            IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `datatype` p1 = t504 ).
            ENDIF.
            DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t505.
            IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `leng` p1 = t505 ).
            ENDIF.
            DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t506.
            IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t506 ).
            ENDIF.
            DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t507.
            IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `texts` p1 = t507 ).
            ENDIF.
            DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t508.
            IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textMaxLengths` p1 = t508 ).
            ENDIF.
            CREATE OBJECT t144->zlnt_json_ownkeys_70e5fd461788.
            t144->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t509) = |description|.
            DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t510.
            IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t509 p1 = t510 ).
            ENDIF.
            DATA(t511) = |affCategory|.
            DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t512.
            IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t511 p1 = t512 ).
            ENDIF.
            DATA(t513) = |refkind|.
            DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t514.
            IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t513 p1 = t514 ).
            ENDIF.
            DATA(t515) = |domname|.
            DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t516.
            IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t515 p1 = t516 ).
            ENDIF.
            DATA(t517) = |datatype|.
            DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t518.
            IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t517 p1 = t518 ).
            ENDIF.
            DATA(t519) = |leng|.
            DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t520.
            IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t519 p1 = t520 ).
            ENDIF.
            DATA(t521) = |decimals|.
            DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t522.
            IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t521 p1 = t522 ).
            ENDIF.
            DATA(t523) = |texts|.
            DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t524.
            IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t523 p1 = t524 ).
            ENDIF.
            DATA(t525) = |textMaxLengths|.
            DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t526.
            IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = t525 p1 = t526 ).
            ENDIF.
            t95 = t144.
            t93 = t95.
          ELSE.
            DATA t527 TYPE REF TO zcl_lnt_shape_50142cbd.
            CLEAR t527.
            t93 = t527.
          ENDIF.
          me->parsed_xml = t93.
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
      CLEAR t532.
      DATA(t533) = VALUE abap_bool( ).
      DATA(t534) = abap_true.
      t533 = t534.
      DATA(t535) = VALUE f( ).
      DATA(t536) = VALUE f( ).
      DATA(t537) = t529.
      DATA(t538) = t22.
      t536 = t537 - t538.
      t535 = t536.
      DATA t539 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t539.
      DATA t540 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t540.
      t539 = t540.
      t532 = NEW zcl_lnt_iparse_result( i_updated = t533 i_runtime = t535 i_runtime_extra = t539 ).
      CREATE OBJECT t532->zlnt_view_ownkeys_b0e8086400eb.
      t532->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t541.
      IF t532->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t532->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t541 ).
      ENDIF.
      DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t542.
      IF t532->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t532->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t542 ).
      ENDIF.
      CREATE OBJECT t532->zlnt_json_ownkeys_70e5fd461788.
      t532->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t543) = |updated|.
      DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t544.
      IF t532->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t532->zlnt_json_ownkeys_70e5fd461788->put( p0 = t543 p1 = t544 ).
      ENDIF.
      DATA(t545) = |runtime|.
      DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t546.
      IF t532->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t532->zlnt_json_ownkeys_70e5fd461788->put( p0 = t545 p1 = t546 ).
      ENDIF.
      result = t532.
      RETURN.
    ENDIF.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t547.
    DATA(t548) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t547 = t548.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t549.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t550.
    DATA(t551) = VALUE abap_bool( ).
    DATA(t552) = t547.
    IF t552 IS INITIAL.
      t551 = abap_true.
    ENDIF.
    IF t551 = abap_true.
      DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t553.
      t550 = t553.
    ELSE.
      DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t554.
      DATA(t555) = t547.
      t554 = t555.
      t550 = t554.
    ENDIF.
    t549 = t550.
    DATA(t556) = VALUE abap_bool( ).
    DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t557.
    DATA(t558) = t549.
    t557 = t558.
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t559.
    DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t560.
    t559 = t560.
    DATA(t561) = VALUE abap_bool( ).
    DATA(t562) = t557.
    IF t562 IS INITIAL.
      t561 = abap_true.
    ENDIF.
    t556 = t561.
    IF t556 = abap_true.
      DATA t563 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t563.
      DATA(t564) = VALUE abap_bool( ).
      DATA(t565) = abap_false.
      t564 = t565.
      DATA(t566) = VALUE f( ).
      DATA(t567) = CONV f( 0 ).
      t566 = t567.
      DATA t568 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t568.
      DATA t569 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t569.
      t568 = t569.
      t563 = NEW zcl_lnt_iparse_result( i_updated = t564 i_runtime = t566 i_runtime_extra = t568 ).
      CREATE OBJECT t563->zlnt_view_ownkeys_b0e8086400eb.
      t563->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t570.
      IF t563->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t563->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t570 ).
      ENDIF.
      DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t571.
      IF t563->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t563->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t571 ).
      ENDIF.
      CREATE OBJECT t563->zlnt_json_ownkeys_70e5fd461788.
      t563->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t572) = |updated|.
      DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t573.
      IF t563->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t563->zlnt_json_ownkeys_70e5fd461788->put( p0 = t572 p1 = t573 ).
      ENDIF.
      DATA(t574) = |runtime|.
      DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t575.
      IF t563->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t563->zlnt_json_ownkeys_70e5fd461788->put( p0 = t574 p1 = t575 ).
      ENDIF.
      result = t563.
      RETURN.
    ENDIF.
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t576.
    DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t577.
    DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t578.
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t579.
    DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t580.
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t581.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t582.
    DATA t583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t583.
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t584.
    DATA(t585) = t549.
    t584 = t585.
    DATA(t586) = |abapGit|.
    t583 = t584->get( p0 = t586 ).
    t582 = t583.
    DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t587.
    DATA(t588) = VALUE abap_bool( ).
    DATA(t589) = t582.
    IF t589 IS NOT BOUND.
      t588 = abap_true.
    ELSE.
      t588 = xsdbool( t589->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t588 = abap_true.
      DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t590.
      t587 = t590.
    ELSE.
      DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t591.
      DATA(t592) = t582.
      DATA(t593) = |asx:abap|.
      t591 = t592->get( p0 = t593 ).
      t587 = t591.
    ENDIF.
    t581 = t587.
    t580 = t581.
    DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t594.
    DATA(t595) = VALUE abap_bool( ).
    DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t596.
    DATA(t597) = t580.
    CLEAR t596.
    IF t597 IS BOUND.
      t596 = t597.
    ENDIF.
    IF t596 IS NOT BOUND.
      t595 = abap_true.
    ELSE.
      t595 = xsdbool( t596->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t595 = abap_true.
      DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t598.
      t594 = t598.
    ELSE.
      DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t599.
      DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t600.
      DATA(t601) = t580.
      t600 = t601.
      DATA(t602) = |asx:values|.
      t599 = t600->get( p0 = t602 ).
      t594 = t599.
    ENDIF.
    t579 = t594.
    t578 = t579.
    DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t603.
    DATA(t604) = VALUE abap_bool( ).
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t605.
    DATA(t606) = t578.
    CLEAR t605.
    IF t606 IS BOUND.
      t605 = t606.
    ENDIF.
    IF t605 IS NOT BOUND.
      t604 = abap_true.
    ELSE.
      t604 = xsdbool( t605->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t604 = abap_true.
      DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t607.
      t603 = t607.
    ELSE.
      DATA t608 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t608.
      DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t609.
      DATA(t610) = t578.
      t609 = t610.
      DATA(t611) = |DD04V|.
      t608 = t609->get( p0 = t611 ).
      t603 = t608.
    ENDIF.
    t577 = t603.
    t576 = t577.
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t612.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t613.
    DATA(t614) = VALUE abap_bool( ).
    DATA(t615) = t576.
    IF t615 IS INITIAL.
      t614 = abap_true.
    ENDIF.
    IF t614 = abap_true.
      DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t616.
      t613 = t616.
    ELSE.
      DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t617.
      DATA(t618) = t576.
      t617 = t618.
      t613 = t617.
    ENDIF.
    t612 = t613.
    DATA t619 TYPE REF TO zcl_lnt_shape_50142cbd.
    CLEAR t619.
    DATA(t620) = abap_true.
    IF t620 = abap_true.
      DATA t621 TYPE REF TO zcl_lnt_shape_50142cbd.
      CLEAR t621.
      DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t622.
      DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t623.
      DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t624.
      DATA(t625) = t612.
      t624 = t625.
      DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t626.
      DATA(t627) = VALUE abap_bool( ).
      DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t628.
      DATA(t629) = t624.
      CLEAR t628.
      IF t629 IS BOUND.
        t628 = t629.
      ENDIF.
      IF t628 IS NOT BOUND.
        t627 = abap_true.
      ELSE.
        t627 = xsdbool( t628->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t627 = abap_true.
        DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t630.
        t626 = t630.
      ELSE.
        DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t631.
        DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t632.
        DATA(t633) = t624.
        t632 = t633.
        DATA(t634) = |DDTEXT|.
        t631 = t632->get( p0 = t634 ).
        t626 = t631.
      ENDIF.
      t623 = t626.
      t622 = t623.
      DATA t635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t635.
      DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t636.
      DATA t637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t637.
      DATA(t638) = t612.
      t637 = t638.
      DATA t639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t639.
      DATA(t640) = VALUE abap_bool( ).
      DATA t641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t641.
      DATA(t642) = t637.
      CLEAR t641.
      IF t642 IS BOUND.
        t641 = t642.
      ENDIF.
      IF t641 IS NOT BOUND.
        t640 = abap_true.
      ELSE.
        t640 = xsdbool( t641->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t640 = abap_true.
        DATA t643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t643.
        t639 = t643.
      ELSE.
        DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t644.
        DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t645.
        DATA(t646) = t637.
        t645 = t646.
        DATA(t647) = |REFKIND|.
        t644 = t645->get( p0 = t647 ).
        t639 = t644.
      ENDIF.
      t636 = t639.
      t635 = t636.
      DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t648.
      DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t649.
      DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t650.
      DATA(t651) = t612.
      t650 = t651.
      DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t652.
      DATA(t653) = VALUE abap_bool( ).
      DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t654.
      DATA(t655) = t650.
      CLEAR t654.
      IF t655 IS BOUND.
        t654 = t655.
      ENDIF.
      IF t654 IS NOT BOUND.
        t653 = abap_true.
      ELSE.
        t653 = xsdbool( t654->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t653 = abap_true.
        DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t656.
        t652 = t656.
      ELSE.
        DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t657.
        DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t658.
        DATA(t659) = t650.
        t658 = t659.
        DATA(t660) = |DOMNAME|.
        t657 = t658->get( p0 = t660 ).
        t652 = t657.
      ENDIF.
      t649 = t652.
      t648 = t649.
      DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t661.
      DATA t662 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t662.
      DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t663.
      DATA(t664) = t612.
      t663 = t664.
      DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t665.
      DATA(t666) = VALUE abap_bool( ).
      DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t667.
      DATA(t668) = t663.
      CLEAR t667.
      IF t668 IS BOUND.
        t667 = t668.
      ENDIF.
      IF t667 IS NOT BOUND.
        t666 = abap_true.
      ELSE.
        t666 = xsdbool( t667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t666 = abap_true.
        DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t669.
        t665 = t669.
      ELSE.
        DATA t670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t670.
        DATA t671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t671.
        DATA(t672) = t663.
        t671 = t672.
        DATA(t673) = |DATATYPE|.
        t670 = t671->get( p0 = t673 ).
        t665 = t670.
      ENDIF.
      t662 = t665.
      t661 = t662.
      DATA t674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t674.
      DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t675.
      DATA t676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t676.
      DATA(t677) = t612.
      t676 = t677.
      DATA t678 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t678.
      DATA(t679) = VALUE abap_bool( ).
      DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t680.
      DATA(t681) = t676.
      CLEAR t680.
      IF t681 IS BOUND.
        t680 = t681.
      ENDIF.
      IF t680 IS NOT BOUND.
        t679 = abap_true.
      ELSE.
        t679 = xsdbool( t680->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t679 = abap_true.
        DATA t682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t682.
        t678 = t682.
      ELSE.
        DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t683.
        DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t684.
        DATA(t685) = t676.
        t684 = t685.
        DATA(t686) = |LENG|.
        t683 = t684->get( p0 = t686 ).
        t678 = t683.
      ENDIF.
      t675 = t678.
      t674 = t675.
      DATA t687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t687.
      DATA t688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t688.
      DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t689.
      DATA(t690) = t612.
      t689 = t690.
      DATA t691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t691.
      DATA(t692) = VALUE abap_bool( ).
      DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t693.
      DATA(t694) = t689.
      CLEAR t693.
      IF t694 IS BOUND.
        t693 = t694.
      ENDIF.
      IF t693 IS NOT BOUND.
        t692 = abap_true.
      ELSE.
        t692 = xsdbool( t693->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t692 = abap_true.
        DATA t695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t695.
        t691 = t695.
      ELSE.
        DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t696.
        DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t697.
        DATA(t698) = t689.
        t697 = t698.
        DATA(t699) = |DECIMALS|.
        t696 = t697->get( p0 = t699 ).
        t691 = t696.
      ENDIF.
      t688 = t691.
      t687 = t688.
      DATA t700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t700.
      DATA t701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t701.
      DATA t702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t702.
      DATA(t703) = t612.
      t702 = t703.
      DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t704.
      DATA(t705) = VALUE abap_bool( ).
      DATA t706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t706.
      DATA(t707) = t702.
      CLEAR t706.
      IF t707 IS BOUND.
        t706 = t707.
      ENDIF.
      IF t706 IS NOT BOUND.
        t705 = abap_true.
      ELSE.
        t705 = xsdbool( t706->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t705 = abap_true.
        DATA t708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t708.
        t704 = t708.
      ELSE.
        DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t709.
        DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t710.
        DATA(t711) = t702.
        t710 = t711.
        DATA(t712) = |DTELMASTER|.
        t709 = t710->get( p0 = t712 ).
        t704 = t709.
      ENDIF.
      t701 = t704.
      t700 = t701.
      DATA t713 TYPE REF TO zcl_lnt_shape_50142cbd.
      CLEAR t713.
      DATA t714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t714.
      DATA t715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t715.
      DATA(t716) = VALUE abap_bool( ).
      DATA(t717) = t622.
      IF t717 IS INITIAL.
        t716 = abap_true.
      ENDIF.
      IF t716 = abap_true.
        DATA t718 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t718.
        t715 = t718.
      ELSE.
        DATA(t719) = VALUE string( ).
        DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t720.
        DATA(t721) = t622.
        t720 = t721.
        t719 = t720->as_string( ).
        DATA(t722) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t722->has = abap_true.
        t722->value = t719.
        t715 = t722.
      ENDIF.
      t714 = t715.
      DATA t723 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t723.
      DATA t724 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t724.
      DATA(t725) = VALUE abap_bool( ).
      DATA(t726) = t635.
      IF t726 IS INITIAL.
        t725 = abap_true.
      ENDIF.
      IF t725 = abap_true.
        DATA t727 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t727.
        t724 = t727.
      ELSE.
        DATA(t728) = VALUE string( ).
        DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t729.
        DATA(t730) = t635.
        t729 = t730.
        t728 = t729->as_string( ).
        DATA(t731) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t731->has = abap_true.
        t731->value = t728.
        t724 = t731.
      ENDIF.
      t723 = t724.
      DATA t732 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t732.
      DATA t733 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t733.
      DATA(t734) = VALUE abap_bool( ).
      DATA(t735) = t648.
      IF t735 IS INITIAL.
        t734 = abap_true.
      ENDIF.
      IF t734 = abap_true.
        DATA t736 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t736.
        t733 = t736.
      ELSE.
        DATA(t737) = VALUE string( ).
        DATA t738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t738.
        DATA(t739) = t648.
        t738 = t739.
        t737 = t738->as_string( ).
        DATA(t740) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t740->has = abap_true.
        t740->value = t737.
        t733 = t740.
      ENDIF.
      t732 = t733.
      DATA t741 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t741.
      DATA t742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t742.
      DATA(t743) = VALUE abap_bool( ).
      DATA(t744) = t661.
      IF t744 IS INITIAL.
        t743 = abap_true.
      ENDIF.
      IF t743 = abap_true.
        DATA t745 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t745.
        t742 = t745.
      ELSE.
        DATA(t746) = VALUE string( ).
        DATA t747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t747.
        DATA(t748) = t661.
        t747 = t748.
        t746 = t747->as_string( ).
        DATA(t749) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t749->has = abap_true.
        t749->value = t746.
        t742 = t749.
      ENDIF.
      t741 = t742.
      DATA t750 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t750.
      DATA t751 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t751.
      DATA(t752) = VALUE abap_bool( ).
      DATA(t753) = t674.
      IF t753 IS INITIAL.
        t752 = abap_true.
      ENDIF.
      IF t752 = abap_true.
        DATA t754 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t754.
        t751 = t754.
      ELSE.
        DATA(t755) = VALUE string( ).
        DATA t756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t756.
        DATA(t757) = t674.
        t756 = t757.
        t755 = t756->as_string( ).
        DATA(t758) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t758->has = abap_true.
        t758->value = t755.
        t751 = t758.
      ENDIF.
      t750 = t751.
      DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t759.
      DATA t760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t760.
      DATA(t761) = VALUE abap_bool( ).
      DATA(t762) = t687.
      IF t762 IS INITIAL.
        t761 = abap_true.
      ENDIF.
      IF t761 = abap_true.
        DATA t763 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t763.
        t760 = t763.
      ELSE.
        DATA(t764) = VALUE string( ).
        DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t765.
        DATA(t766) = t687.
        t765 = t766.
        t764 = t765->as_string( ).
        DATA(t767) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t767->has = abap_true.
        t767->value = t764.
        t760 = t767.
      ENDIF.
      t759 = t760.
      DATA t768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t768.
      DATA t769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t769.
      DATA(t770) = VALUE abap_bool( ).
      DATA(t771) = t700.
      IF t771 IS INITIAL.
        t770 = abap_true.
      ENDIF.
      IF t770 = abap_true.
        DATA t772 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t772.
        t769 = t772.
      ELSE.
        DATA(t773) = VALUE string( ).
        DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t774.
        DATA(t775) = t700.
        t774 = t775.
        t773 = t774->as_string( ).
        DATA(t776) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t776->has = abap_true.
        t776->value = t773.
        t769 = t776.
      ENDIF.
      t768 = t769.
      DATA t777 TYPE REF TO zcl_lnt_shape_66add1d1.
      CLEAR t777.
      DATA t778 TYPE REF TO zcl_lnt_shape_66add1d1.
      CLEAR t778.
      DATA(t779) = abap_true.
      IF t779 = abap_true.
        DATA t780 TYPE REF TO zcl_lnt_shape_66add1d1.
        CLEAR t780.
        DATA t781 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t781.
        DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t782.
        DATA t783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t783.
        DATA(t784) = t612.
        t783 = t784.
        DATA t785 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t785.
        DATA(t786) = VALUE abap_bool( ).
        DATA t787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t787.
        DATA(t788) = t783.
        CLEAR t787.
        IF t788 IS BOUND.
          t787 = t788.
        ENDIF.
        IF t787 IS NOT BOUND.
          t786 = abap_true.
        ELSE.
          t786 = xsdbool( t787->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t786 = abap_true.
          DATA t789 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t789.
          t785 = t789.
        ELSE.
          DATA t790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t790.
          DATA t791 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t791.
          DATA(t792) = t783.
          t791 = t792.
          DATA(t793) = |SCRTEXT_S|.
          t790 = t791->get( p0 = t793 ).
          t785 = t790.
        ENDIF.
        t782 = t785.
        t781 = t782.
        DATA t794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t794.
        DATA t795 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t795.
        DATA t796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t796.
        DATA(t797) = t612.
        t796 = t797.
        DATA t798 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t798.
        DATA(t799) = VALUE abap_bool( ).
        DATA t800 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t800.
        DATA(t801) = t796.
        CLEAR t800.
        IF t801 IS BOUND.
          t800 = t801.
        ENDIF.
        IF t800 IS NOT BOUND.
          t799 = abap_true.
        ELSE.
          t799 = xsdbool( t800->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t799 = abap_true.
          DATA t802 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t802.
          t798 = t802.
        ELSE.
          DATA t803 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t803.
          DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t804.
          DATA(t805) = t796.
          t804 = t805.
          DATA(t806) = |SCRTEXT_M|.
          t803 = t804->get( p0 = t806 ).
          t798 = t803.
        ENDIF.
        t795 = t798.
        t794 = t795.
        DATA t807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t807.
        DATA t808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t808.
        DATA t809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t809.
        DATA(t810) = t612.
        t809 = t810.
        DATA t811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t811.
        DATA(t812) = VALUE abap_bool( ).
        DATA t813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t813.
        DATA(t814) = t809.
        CLEAR t813.
        IF t814 IS BOUND.
          t813 = t814.
        ENDIF.
        IF t813 IS NOT BOUND.
          t812 = abap_true.
        ELSE.
          t812 = xsdbool( t813->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t812 = abap_true.
          DATA t815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t815.
          t811 = t815.
        ELSE.
          DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t816.
          DATA t817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t817.
          DATA(t818) = t809.
          t817 = t818.
          DATA(t819) = |SCRTEXT_L|.
          t816 = t817->get( p0 = t819 ).
          t811 = t816.
        ENDIF.
        t808 = t811.
        t807 = t808.
        DATA t820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t820.
        DATA t821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t821.
        DATA t822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t822.
        DATA(t823) = t612.
        t822 = t823.
        DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t824.
        DATA(t825) = VALUE abap_bool( ).
        DATA t826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t826.
        DATA(t827) = t822.
        CLEAR t826.
        IF t827 IS BOUND.
          t826 = t827.
        ENDIF.
        IF t826 IS NOT BOUND.
          t825 = abap_true.
        ELSE.
          t825 = xsdbool( t826->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t825 = abap_true.
          DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t828.
          t824 = t828.
        ELSE.
          DATA t829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t829.
          DATA t830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t830.
          DATA(t831) = t822.
          t830 = t831.
          DATA(t832) = |REPTEXT|.
          t829 = t830->get( p0 = t832 ).
          t824 = t829.
        ENDIF.
        t821 = t824.
        t820 = t821.
        DATA t833 TYPE REF TO zcl_lnt_shape_66add1d1.
        CLEAR t833.
        DATA t834 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t834.
        DATA t835 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t835.
        DATA(t836) = VALUE abap_bool( ).
        DATA(t837) = t781.
        IF t837 IS INITIAL.
          t836 = abap_true.
        ENDIF.
        IF t836 = abap_true.
          DATA t838 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t838.
          t835 = t838.
        ELSE.
          DATA(t839) = VALUE string( ).
          DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t840.
          DATA(t841) = t781.
          t840 = t841.
          t839 = t840->as_string( ).
          DATA(t842) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t842->has = abap_true.
          t842->value = t839.
          t835 = t842.
        ENDIF.
        t834 = t835.
        DATA t843 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t843.
        DATA t844 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t844.
        DATA(t845) = VALUE abap_bool( ).
        DATA(t846) = t794.
        IF t846 IS INITIAL.
          t845 = abap_true.
        ENDIF.
        IF t845 = abap_true.
          DATA t847 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t847.
          t844 = t847.
        ELSE.
          DATA(t848) = VALUE string( ).
          DATA t849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t849.
          DATA(t850) = t794.
          t849 = t850.
          t848 = t849->as_string( ).
          DATA(t851) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t851->has = abap_true.
          t851->value = t848.
          t844 = t851.
        ENDIF.
        t843 = t844.
        DATA t852 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t852.
        DATA t853 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t853.
        DATA(t854) = VALUE abap_bool( ).
        DATA(t855) = t807.
        IF t855 IS INITIAL.
          t854 = abap_true.
        ENDIF.
        IF t854 = abap_true.
          DATA t856 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t856.
          t853 = t856.
        ELSE.
          DATA(t857) = VALUE string( ).
          DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t858.
          DATA(t859) = t807.
          t858 = t859.
          t857 = t858->as_string( ).
          DATA(t860) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t860->has = abap_true.
          t860->value = t857.
          t853 = t860.
        ENDIF.
        t852 = t853.
        DATA t861 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t861.
        DATA t862 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t862.
        DATA(t863) = VALUE abap_bool( ).
        DATA(t864) = t820.
        IF t864 IS INITIAL.
          t863 = abap_true.
        ENDIF.
        IF t863 = abap_true.
          DATA t865 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t865.
          t862 = t865.
        ELSE.
          DATA(t866) = VALUE string( ).
          DATA t867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t867.
          DATA(t868) = t820.
          t867 = t868.
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
        CLEAR t870.
        IF t833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `short` p1 = t870 ).
        ENDIF.
        DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t871.
        IF t833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `medium` p1 = t871 ).
        ENDIF.
        DATA t872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t872.
        IF t833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `long` p1 = t872 ).
        ENDIF.
        DATA t873 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t873.
        IF t833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `heading` p1 = t873 ).
        ENDIF.
        CREATE OBJECT t833->zlnt_json_ownkeys_70e5fd461788.
        t833->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t874) = |short|.
        DATA t875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t875.
        IF t833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t874 p1 = t875 ).
        ENDIF.
        DATA(t876) = |medium|.
        DATA t877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t877.
        IF t833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t876 p1 = t877 ).
        ENDIF.
        DATA(t878) = |long|.
        DATA t879 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t879.
        IF t833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t878 p1 = t879 ).
        ENDIF.
        DATA(t880) = |heading|.
        DATA t881 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t881.
        IF t833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t880 p1 = t881 ).
        ENDIF.
        t780 = t833.
        t778 = t780.
      ELSE.
        DATA t882 TYPE REF TO zcl_lnt_shape_66add1d1.
        CLEAR t882.
        t778 = t882.
      ENDIF.
      t777 = t778.
      DATA t883 TYPE REF TO zcl_lnt_shape_66add1d1.
      CLEAR t883.
      DATA t884 TYPE REF TO zcl_lnt_shape_66add1d1.
      CLEAR t884.
      DATA(t885) = abap_true.
      IF t885 = abap_true.
        DATA t886 TYPE REF TO zcl_lnt_shape_66add1d1.
        CLEAR t886.
        DATA t887 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t887.
        DATA t888 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t888.
        DATA t889 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t889.
        DATA(t890) = t612.
        t889 = t890.
        DATA t891 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t891.
        DATA(t892) = VALUE abap_bool( ).
        DATA t893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t893.
        DATA(t894) = t889.
        CLEAR t893.
        IF t894 IS BOUND.
          t893 = t894.
        ENDIF.
        IF t893 IS NOT BOUND.
          t892 = abap_true.
        ELSE.
          t892 = xsdbool( t893->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t892 = abap_true.
          DATA t895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t895.
          t891 = t895.
        ELSE.
          DATA t896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t896.
          DATA t897 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t897.
          DATA(t898) = t889.
          t897 = t898.
          DATA(t899) = |SCRLEN1|.
          t896 = t897->get( p0 = t899 ).
          t891 = t896.
        ENDIF.
        t888 = t891.
        t887 = t888.
        DATA t900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t900.
        DATA t901 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t901.
        DATA t902 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t902.
        DATA(t903) = t612.
        t902 = t903.
        DATA t904 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t904.
        DATA(t905) = VALUE abap_bool( ).
        DATA t906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t906.
        DATA(t907) = t902.
        CLEAR t906.
        IF t907 IS BOUND.
          t906 = t907.
        ENDIF.
        IF t906 IS NOT BOUND.
          t905 = abap_true.
        ELSE.
          t905 = xsdbool( t906->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t905 = abap_true.
          DATA t908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t908.
          t904 = t908.
        ELSE.
          DATA t909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t909.
          DATA t910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t910.
          DATA(t911) = t902.
          t910 = t911.
          DATA(t912) = |SCRLEN2|.
          t909 = t910->get( p0 = t912 ).
          t904 = t909.
        ENDIF.
        t901 = t904.
        t900 = t901.
        DATA t913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t913.
        DATA t914 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t914.
        DATA t915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t915.
        DATA(t916) = t612.
        t915 = t916.
        DATA t917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t917.
        DATA(t918) = VALUE abap_bool( ).
        DATA t919 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t919.
        DATA(t920) = t915.
        CLEAR t919.
        IF t920 IS BOUND.
          t919 = t920.
        ENDIF.
        IF t919 IS NOT BOUND.
          t918 = abap_true.
        ELSE.
          t918 = xsdbool( t919->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t918 = abap_true.
          DATA t921 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t921.
          t917 = t921.
        ELSE.
          DATA t922 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t922.
          DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t923.
          DATA(t924) = t915.
          t923 = t924.
          DATA(t925) = |SCRLEN3|.
          t922 = t923->get( p0 = t925 ).
          t917 = t922.
        ENDIF.
        t914 = t917.
        t913 = t914.
        DATA t926 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t926.
        DATA t927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t927.
        DATA t928 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t928.
        DATA(t929) = t612.
        t928 = t929.
        DATA t930 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t930.
        DATA(t931) = VALUE abap_bool( ).
        DATA t932 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t932.
        DATA(t933) = t928.
        CLEAR t932.
        IF t933 IS BOUND.
          t932 = t933.
        ENDIF.
        IF t932 IS NOT BOUND.
          t931 = abap_true.
        ELSE.
          t931 = xsdbool( t932->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t931 = abap_true.
          DATA t934 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t934.
          t930 = t934.
        ELSE.
          DATA t935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t935.
          DATA t936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t936.
          DATA(t937) = t928.
          t936 = t937.
          DATA(t938) = |HEADLEN|.
          t935 = t936->get( p0 = t938 ).
          t930 = t935.
        ENDIF.
        t927 = t930.
        t926 = t927.
        DATA t939 TYPE REF TO zcl_lnt_shape_66add1d1.
        CLEAR t939.
        DATA t940 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t940.
        DATA t941 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t941.
        DATA(t942) = VALUE abap_bool( ).
        DATA(t943) = t887.
        IF t943 IS INITIAL.
          t942 = abap_true.
        ENDIF.
        IF t942 = abap_true.
          DATA t944 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t944.
          t941 = t944.
        ELSE.
          DATA(t945) = VALUE string( ).
          DATA t946 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t946.
          DATA(t947) = t887.
          t946 = t947.
          t945 = t946->as_string( ).
          DATA(t948) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t948->has = abap_true.
          t948->value = t945.
          t941 = t948.
        ENDIF.
        t940 = t941.
        DATA t949 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t949.
        DATA t950 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t950.
        DATA(t951) = VALUE abap_bool( ).
        DATA(t952) = t900.
        IF t952 IS INITIAL.
          t951 = abap_true.
        ENDIF.
        IF t951 = abap_true.
          DATA t953 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t953.
          t950 = t953.
        ELSE.
          DATA(t954) = VALUE string( ).
          DATA t955 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t955.
          DATA(t956) = t900.
          t955 = t956.
          t954 = t955->as_string( ).
          DATA(t957) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t957->has = abap_true.
          t957->value = t954.
          t950 = t957.
        ENDIF.
        t949 = t950.
        DATA t958 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t958.
        DATA t959 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t959.
        DATA(t960) = VALUE abap_bool( ).
        DATA(t961) = t913.
        IF t961 IS INITIAL.
          t960 = abap_true.
        ENDIF.
        IF t960 = abap_true.
          DATA t962 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t962.
          t959 = t962.
        ELSE.
          DATA(t963) = VALUE string( ).
          DATA t964 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t964.
          DATA(t965) = t913.
          t964 = t965.
          t963 = t964->as_string( ).
          DATA(t966) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t966->has = abap_true.
          t966->value = t963.
          t959 = t966.
        ENDIF.
        t958 = t959.
        DATA t967 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t967.
        DATA t968 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t968.
        DATA(t969) = VALUE abap_bool( ).
        DATA(t970) = t926.
        IF t970 IS INITIAL.
          t969 = abap_true.
        ENDIF.
        IF t969 = abap_true.
          DATA t971 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t971.
          t968 = t971.
        ELSE.
          DATA(t972) = VALUE string( ).
          DATA t973 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t973.
          DATA(t974) = t926.
          t973 = t974.
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
        CLEAR t976.
        IF t939->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `short` p1 = t976 ).
        ENDIF.
        DATA t977 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t977.
        IF t939->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `medium` p1 = t977 ).
        ENDIF.
        DATA t978 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t978.
        IF t939->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `long` p1 = t978 ).
        ENDIF.
        DATA t979 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t979.
        IF t939->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `heading` p1 = t979 ).
        ENDIF.
        CREATE OBJECT t939->zlnt_json_ownkeys_70e5fd461788.
        t939->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t980) = |short|.
        DATA t981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t981.
        IF t939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t939->zlnt_json_ownkeys_70e5fd461788->put( p0 = t980 p1 = t981 ).
        ENDIF.
        DATA(t982) = |medium|.
        DATA t983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t983.
        IF t939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t939->zlnt_json_ownkeys_70e5fd461788->put( p0 = t982 p1 = t983 ).
        ENDIF.
        DATA(t984) = |long|.
        DATA t985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t985.
        IF t939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t939->zlnt_json_ownkeys_70e5fd461788->put( p0 = t984 p1 = t985 ).
        ENDIF.
        DATA(t986) = |heading|.
        DATA t987 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t987.
        IF t939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t939->zlnt_json_ownkeys_70e5fd461788->put( p0 = t986 p1 = t987 ).
        ENDIF.
        t886 = t939.
        t884 = t886.
      ELSE.
        DATA t988 TYPE REF TO zcl_lnt_shape_66add1d1.
        CLEAR t988.
        t884 = t988.
      ENDIF.
      t883 = t884.
      DATA t989 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t989.
      DATA t990 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t990.
      t989 = t990.
      DATA t991 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t991.
      DATA t992 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t992.
      t991 = t992.
      t713 = NEW zcl_lnt_shape_50142cbd( i_description = t714 i_refkind = t723 i_domname = t732 i_datatype_9e1e = t741 i_leng_b7d5 = t750 i_texts = t777 i_text_max_lengths = t883 i_texts_translations = t989 i_decimals_2eed = t759
      i_dtelmaster = t768 i_aff_category = t991 ).
      CREATE OBJECT t713->zlnt_view_ownkeys_b0e8086400eb.
      t713->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t993 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t993.
      IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t993 ).
      ENDIF.
      DATA t994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t994.
      IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `refkind` p1 = t994 ).
      ENDIF.
      DATA t995 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t995.
      IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `domname` p1 = t995 ).
      ENDIF.
      DATA t996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t996.
      IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `datatype` p1 = t996 ).
      ENDIF.
      DATA t997 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t997.
      IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `leng` p1 = t997 ).
      ENDIF.
      DATA t998 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t998.
      IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t998 ).
      ENDIF.
      DATA t999 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t999.
      IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dtelmaster` p1 = t999 ).
      ENDIF.
      DATA t1000 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1000.
      IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `texts` p1 = t1000 ).
      ENDIF.
      DATA t1001 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1001.
      IF t713->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t713->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textMaxLengths` p1 = t1001 ).
      ENDIF.
      CREATE OBJECT t713->zlnt_json_ownkeys_70e5fd461788.
      t713->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t1002) = |description|.
      DATA t1003 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1003.
      IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1002 p1 = t1003 ).
      ENDIF.
      DATA(t1004) = |refkind|.
      DATA t1005 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1005.
      IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1004 p1 = t1005 ).
      ENDIF.
      DATA(t1006) = |domname|.
      DATA t1007 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1007.
      IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1006 p1 = t1007 ).
      ENDIF.
      DATA(t1008) = |datatype|.
      DATA t1009 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1009.
      IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1008 p1 = t1009 ).
      ENDIF.
      DATA(t1010) = |leng|.
      DATA t1011 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1011.
      IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1010 p1 = t1011 ).
      ENDIF.
      DATA(t1012) = |decimals|.
      DATA t1013 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1013.
      IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1012 p1 = t1013 ).
      ENDIF.
      DATA(t1014) = |dtelmaster|.
      DATA t1015 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1015.
      IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1014 p1 = t1015 ).
      ENDIF.
      DATA(t1016) = |texts|.
      DATA t1017 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1017.
      IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1016 p1 = t1017 ).
      ENDIF.
      DATA(t1018) = |textMaxLengths|.
      DATA t1019 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1019.
      IF t713->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t713->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1018 p1 = t1019 ).
      ENDIF.
      t621 = t713.
      t619 = t621.
    ELSE.
      DATA t1020 TYPE REF TO zcl_lnt_shape_50142cbd.
      CLEAR t1020.
      t619 = t1020.
    ENDIF.
    me->parsed_xml = t619.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t1021 TYPE REF TO zcl_lnt_shape_50142cbd.
    CLEAR t1021.
    DATA(t1022) = me->parsed_xml.
    t1021 = t1022.
    DATA t1023 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1023.
    DATA(t1024) = abap_true.
    IF t1024 = abap_true.
      DATA t1025 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t1025.
      CREATE OBJECT t1025.
      t1023 = t1025.
    ELSE.
      DATA t1026 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t1026.
      t1023 = t1026.
    ENDIF.
    t1021->texts_translations = t1023.
    DELETE t1021->zlnt_record_delet_0597644d88b4 WHERE table_line = `textsTranslations`.
    DATA t1027 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1027.
    IF t1021->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1021->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textsTranslations` p1 = t1027 ).
    ENDIF.
    DATA(t1028) = |textsTranslations|.
    DATA t1029 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1029.
    IF t1021->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1021->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1028 p1 = t1029 ).
    ENDIF.
    DATA t1030 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1030.
    DATA t1031 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1031.
    DATA t1032 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1032.
    DATA t1033 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1033.
    DATA t1034 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1034.
    DATA t1035 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1035.
    DATA t1036 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1036.
    DATA t1037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1037.
    DATA t1038 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1038.
    DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1039.
    DATA t1040 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1040.
    DATA t1041 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1041.
    DATA(t1042) = t549.
    t1041 = t1042.
    DATA(t1043) = |abapGit|.
    t1040 = t1041->get( p0 = t1043 ).
    t1039 = t1040.
    DATA t1044 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1044.
    DATA(t1045) = VALUE abap_bool( ).
    DATA(t1046) = t1039.
    IF t1046 IS NOT BOUND.
      t1045 = abap_true.
    ELSE.
      t1045 = xsdbool( t1046->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t1045 = abap_true.
      DATA t1047 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1047.
      t1044 = t1047.
    ELSE.
      DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1048.
      DATA(t1049) = t1039.
      DATA(t1050) = |asx:abap|.
      t1048 = t1049->get( p0 = t1050 ).
      t1044 = t1048.
    ENDIF.
    t1038 = t1044.
    t1037 = t1038.
    DATA t1051 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1051.
    DATA(t1052) = VALUE abap_bool( ).
    DATA t1053 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1053.
    DATA(t1054) = t1037.
    CLEAR t1053.
    IF t1054 IS BOUND.
      t1053 = t1054.
    ENDIF.
    IF t1053 IS NOT BOUND.
      t1052 = abap_true.
    ELSE.
      t1052 = xsdbool( t1053->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t1052 = abap_true.
      DATA t1055 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1055.
      t1051 = t1055.
    ELSE.
      DATA t1056 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1056.
      DATA t1057 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1057.
      DATA(t1058) = t1037.
      t1057 = t1058.
      DATA(t1059) = |asx:values|.
      t1056 = t1057->get( p0 = t1059 ).
      t1051 = t1056.
    ENDIF.
    t1036 = t1051.
    t1035 = t1036.
    DATA t1060 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1060.
    DATA(t1061) = VALUE abap_bool( ).
    DATA t1062 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1062.
    DATA(t1063) = t1035.
    CLEAR t1062.
    IF t1063 IS BOUND.
      t1062 = t1063.
    ENDIF.
    IF t1062 IS NOT BOUND.
      t1061 = abap_true.
    ELSE.
      t1061 = xsdbool( t1062->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t1061 = abap_true.
      DATA t1064 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1064.
      t1060 = t1064.
    ELSE.
      DATA t1065 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1065.
      DATA t1066 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1066.
      DATA(t1067) = t1035.
      t1066 = t1067.
      DATA(t1068) = |DD04_TEXTS|.
      t1065 = t1066->get( p0 = t1068 ).
      t1060 = t1065.
    ENDIF.
    t1034 = t1060.
    t1033 = t1034.
    DATA t1069 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1069.
    DATA(t1070) = VALUE abap_bool( ).
    DATA t1071 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1071.
    DATA(t1072) = t1033.
    CLEAR t1071.
    IF t1072 IS BOUND.
      t1071 = t1072.
    ENDIF.
    IF t1071 IS NOT BOUND.
      t1070 = abap_true.
    ELSE.
      t1070 = xsdbool( t1071->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t1070 = abap_true.
      DATA t1073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1073.
      t1069 = t1073.
    ELSE.
      DATA t1074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1074.
      DATA t1075 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1075.
      DATA(t1076) = t1033.
      t1075 = t1076.
      DATA(t1077) = |item|.
      t1074 = t1075->get( p0 = t1077 ).
      t1069 = t1074.
    ENDIF.
    t1032 = t1069.
    CLEAR t1031.
    IF t1032 IS BOUND.
      t1031 = t1032.
    ENDIF.
    t1030 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t1031 ).
    DATA t1078 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1078.
    DATA t1079 TYPE REF TO object.
    CLEAR t1079.
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
      DATA(t1088) = me->parsed_xml.
      t1087 = t1088.
      t1086 = t1087->texts_translations.
      t1085 = t1086.
      DATA t1089 TYPE REF TO zcl_lnt_shape_0802eb0f.
      CLEAR t1089.
      DATA t1090 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1090.
      DATA t1091 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1091.
      DATA(t1092) = t1078.
      DATA(t1093) = |DDLANGUAGE|.
      t1091 = t1092->get( p0 = t1093 ).
      t1090 = t1091.
      DATA t1094 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1094.
      DATA t1095 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1095.
      DATA(t1096) = t1078.
      DATA(t1097) = |DDTEXT|.
      t1095 = t1096->get( p0 = t1097 ).
      t1094 = t1095.
      DATA t1098 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1098.
      DATA t1099 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1099.
      DATA(t1100) = t1078.
      DATA(t1101) = |SCRTEXT_S|.
      t1099 = t1100->get( p0 = t1101 ).
      t1098 = t1099.
      DATA t1102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1102.
      DATA t1103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1103.
      DATA(t1104) = t1078.
      DATA(t1105) = |SCRTEXT_M|.
      t1103 = t1104->get( p0 = t1105 ).
      t1102 = t1103.
      DATA t1106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1106.
      DATA t1107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1107.
      DATA(t1108) = t1078.
      DATA(t1109) = |SCRTEXT_L|.
      t1107 = t1108->get( p0 = t1109 ).
      t1106 = t1107.
      DATA t1110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1110.
      DATA t1111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1111.
      DATA(t1112) = t1078.
      DATA(t1113) = |REPTEXT|.
      t1111 = t1112->get( p0 = t1113 ).
      t1110 = t1111.
      DATA t1114 TYPE REF TO zcl_lnt_shape_0802eb0f.
      CLEAR t1114.
      DATA t1115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1115.
      DATA t1116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1116.
      DATA(t1117) = VALUE abap_bool( ).
      DATA(t1118) = t1090.
      IF t1118 IS INITIAL.
        t1117 = abap_true.
      ENDIF.
      IF t1117 = abap_true.
        DATA t1119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1119.
        t1116 = t1119.
      ELSE.
        DATA(t1120) = VALUE string( ).
        DATA(t1121) = t1090.
        t1120 = t1121->as_string( ).
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
      DATA(t1125) = VALUE abap_bool( ).
      DATA(t1126) = t1094.
      IF t1126 IS INITIAL.
        t1125 = abap_true.
      ENDIF.
      IF t1125 = abap_true.
        DATA t1127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1127.
        t1124 = t1127.
      ELSE.
        DATA(t1128) = VALUE string( ).
        DATA(t1129) = t1094.
        t1128 = t1129->as_string( ).
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
      DATA(t1133) = VALUE abap_bool( ).
      DATA(t1134) = t1098.
      IF t1134 IS INITIAL.
        t1133 = abap_true.
      ENDIF.
      IF t1133 = abap_true.
        DATA t1135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1135.
        t1132 = t1135.
      ELSE.
        DATA(t1136) = VALUE string( ).
        DATA(t1137) = t1098.
        t1136 = t1137->as_string( ).
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
      DATA(t1141) = VALUE abap_bool( ).
      DATA(t1142) = t1102.
      IF t1142 IS INITIAL.
        t1141 = abap_true.
      ENDIF.
      IF t1141 = abap_true.
        DATA t1143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1143.
        t1140 = t1143.
      ELSE.
        DATA(t1144) = VALUE string( ).
        DATA(t1145) = t1102.
        t1144 = t1145->as_string( ).
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
      DATA(t1149) = VALUE abap_bool( ).
      DATA(t1150) = t1106.
      IF t1150 IS INITIAL.
        t1149 = abap_true.
      ENDIF.
      IF t1149 = abap_true.
        DATA t1151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1151.
        t1148 = t1151.
      ELSE.
        DATA(t1152) = VALUE string( ).
        DATA(t1153) = t1106.
        t1152 = t1153->as_string( ).
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
      DATA(t1157) = VALUE abap_bool( ).
      DATA(t1158) = t1110.
      IF t1158 IS INITIAL.
        t1157 = abap_true.
      ENDIF.
      IF t1157 = abap_true.
        DATA t1159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1159.
        t1156 = t1159.
      ELSE.
        DATA(t1160) = VALUE string( ).
        DATA(t1161) = t1110.
        t1160 = t1161->as_string( ).
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
      IF t1114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t1163 ).
      ENDIF.
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
      IF t1114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1169 p1 = t1170 ).
      ENDIF.
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
    CLEAR t1184.
    DATA(t1185) = VALUE abap_bool( ).
    DATA(t1186) = abap_true.
    t1185 = t1186.
    DATA(t1187) = VALUE f( ).
    DATA(t1188) = VALUE f( ).
    DATA(t1189) = t1181.
    DATA(t1190) = t22.
    t1188 = t1189 - t1190.
    t1187 = t1188.
    DATA t1191 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t1191.
    DATA t1192 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t1192.
    t1191 = t1192.
    t1184 = NEW zcl_lnt_iparse_result( i_updated = t1185 i_runtime = t1187 i_runtime_extra = t1191 ).
    CREATE OBJECT t1184->zlnt_view_ownkeys_b0e8086400eb.
    t1184->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1193.
    IF t1184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t1193 ).
    ENDIF.
    DATA t1194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1194.
    IF t1184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t1194 ).
    ENDIF.
    CREATE OBJECT t1184->zlnt_json_ownkeys_70e5fd461788.
    t1184->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1195) = |updated|.
    DATA t1196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1196.
    IF t1184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1195 p1 = t1196 ).
    ENDIF.
    DATA(t1197) = |runtime|.
    DATA t1198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1198.
    IF t1184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1197 p1 = t1198 ).
    ENDIF.
    result = t1184.

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
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_elm_ts_dt_elm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD fn_lookup_predefined_type.
    DATA(t1) = i_ddic.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA(t7) = me->parsed_xml.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t6.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t13 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t14) = t6.
      t13 = t14.
      t12 = t13->datatype_2b0f.
      t8 = t12.
    ENDIF.
    t5 = t8.
    t4 = t5.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t4.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ELSEIF t18->has = abap_false.
      t17 = abap_true.
    ENDIF.
    t3 = t17.
    t2 = t3.
    IF t3 = abap_false.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE string.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t22 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t23) = me->parsed_xml.
      t22 = t23.
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
      DATA(t32) = me.
      t31 = t32.
      DATA t33 TYPE string.
      DATA(t34) = t31.
      t33 = t34->name.
      t30 = t33.
      DATA(t35) = strlen( t29 ).
      t28 = |{ t29 }{ t30 }|.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      t27 = NEW zcl_lnt_unknown_type( i_error = t28 i_qualified_name = t36 ).
      t26 = t27.
      DATA t37 TYPE REF TO zif_lnt_object.
      DATA t38 TYPE REF TO zif_lnt_object.
      CLEAR t38.
      t37 = t38.
      t25 = NEW zcl_lnt_ilookup_result( i_type_9913 = t26 i_object_19cd = t37 ).
      CREATE OBJECT t25->zlnt_view_ownkeys_b0e8086400eb.
      t25->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      IF t25->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t39 ).
      ENDIF.
      CREATE OBJECT t25->zlnt_json_ownkeys_70e5fd461788.
      t25->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t40) = |type|.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      IF t25->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
      ENDIF.
      result = t25.
      RETURN.
    ENDIF.
    DATA t42 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t42.
    DATA t43 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t43.
    DATA t44 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t44.
    DATA(t45) = t1.
    DATA t46 TYPE REF TO zcl_lnt_shape_4a88086c.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t48.
    DATA(t49) = abap_true.
    IF t49 = abap_true.
      DATA t50 TYPE string.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t52 TYPE REF TO zcl_lnt_shape_50142cbd.
      DATA(t53) = me->parsed_xml.
      t52 = t53.
      t51 = t52->datatype_2b0f.
      t50 = t51->value.
      DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t54->has = abap_true.
      t54->value = t50.
      t48 = t54.
    ELSE.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      t48 = t55.
    ENDIF.
    t47 = t48.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t58 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA(t59) = me->parsed_xml.
    t58 = t59.
    t57 = t58->leng_e82a.
    t56 = t57.
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t62 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA(t63) = me->parsed_xml.
    t62 = t63.
    t61 = t62->decimals_29bf.
    t60 = t61.
    DATA t64 TYPE string.
    DATA t65 TYPE string.
    DATA t66 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t67) = me.
    t66 = t67.
    DATA t68 TYPE string.
    DATA(t69) = t66.
    t68 = t69->name.
    t65 = t68.
    t64 = t65.
    DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t71.
    DATA(t72) = abap_true.
    IF t72 = abap_true.
      DATA t73 TYPE string.
      DATA t74 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t75) = me.
      t74 = t75.
      DATA t76 TYPE string.
      DATA(t77) = t74.
      t76 = t77->name.
      t73 = t76.
      DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t78->has = abap_true.
      t78->value = t73.
      t71 = t78.
    ELSE.
      DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t79.
      t71 = t79.
    ENDIF.
    t70 = t71.
    DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t81.
    t80 = t81.
    DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t83.
    DATA(t84) = abap_true.
    IF t84 = abap_true.
      DATA t85 TYPE string.
      DATA t86 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t87) = me.
      t86 = t87.
      DATA t88 TYPE string.
      DATA(t89) = t86.
      t88 = t89->name.
      t85 = t88.
      DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t90->has = abap_true.
      t90->value = t85.
      t83 = t90.
    ELSE.
      DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t91.
      t83 = t91.
    ENDIF.
    t82 = t83.
    DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t93.
    DATA t94 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA t95 TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA t96 TYPE REF TO zcl_lnt_shape_50142cbd.
    DATA(t97) = me->parsed_xml.
    t96 = t97.
    t95 = t96->texts.
    t94 = t95.
    DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t98.
    DATA(t99) = VALUE abap_bool( ).
    DATA(t100) = t94.
    IF t100 IS INITIAL.
      t99 = abap_true.
    ENDIF.
    IF t99 = abap_true.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t101.
      t98 = t101.
    ELSE.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t103 TYPE REF TO zcl_lnt_shape_66add1d1.
      DATA(t104) = t94.
      t103 = t104.
      t102 = t103->heading.
      t98 = t102.
    ENDIF.
    t93 = t98.
    t92 = t93.
    t46 = NEW zcl_lnt_shape_4a88086c( i_text = t47 i_length = t56 i_decimals_2eed = t60 i_info_text = t64 i_qualified_name = t70 i_conversion_exit = t80 i_ddic_name = t82 i_description = t92 ).
    CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
    t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `text` p1 = t105 ).
    ENDIF.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t106 ).
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t107 ).
    ENDIF.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `infoText` p1 = t108 ).
    ENDIF.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t109 ).
    ENDIF.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t110 ).
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t111 ).
    ENDIF.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t112 ).
    ENDIF.
    CREATE OBJECT t46->zlnt_json_ownkeys_70e5fd461788.
    t46->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t113) = |text|.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
    ENDIF.
    DATA(t115) = |length|.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
    ENDIF.
    DATA(t117) = |decimals|.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
    ENDIF.
    DATA(t119) = |infoText|.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
    ENDIF.
    DATA(t121) = |qualifiedName|.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t121 p1 = t122 ).
    ENDIF.
    DATA(t123) = |conversionExit|.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
    ENDIF.
    DATA(t125) = |ddicName|.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
    ENDIF.
    DATA(t127) = |description|.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
    ENDIF.
    t44 = t45->text_to_type( i_input_967e = t46 ).
    t43 = t44.
    DATA t129 TYPE REF TO zif_lnt_object.
    DATA t130 TYPE REF TO zif_lnt_object.
    CLEAR t130.
    t129 = t130.
    t42 = NEW zcl_lnt_ilookup_result( i_type_9913 = t43 i_object_19cd = t129 ).
    CREATE OBJECT t42->zlnt_view_ownkeys_b0e8086400eb.
    t42->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t131 ).
    ENDIF.
    CREATE OBJECT t42->zlnt_json_ownkeys_70e5fd461788.
    t42->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t132) = |type|.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
    ENDIF.
    result = t42.

  ENDMETHOD.

  METHOD parse_type.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t5) = t1.
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
