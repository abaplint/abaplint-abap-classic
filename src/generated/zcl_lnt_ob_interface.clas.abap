* TS: src/objects/interface.ts:7:1 Interface
CLASS zcl_lnt_ob_interface DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_291f04b3.
    INTERFACES zif_lnt_union_35a9fad2.
    DATA def TYPE REF TO zif_lnt_interface_definition.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_e272b380.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS st_dfn_ins_src_obj_int_ts_intr IMPORTING i_def TYPE REF TO zif_lnt_interface_definition.
    METHODS get_sequenced_files REDEFINITION.
    METHODS get_definition RETURNING VALUE(result) TYPE REF TO zif_lnt_interface_definition.
    METHODS get_interface RETURNING VALUE(result) TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    METHODS get_identifier REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_name_from_xml RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_description REDEFINITION.
    METHODS parse_xml.
    METHODS set_definition IMPORTING i_def TYPE REF TO zif_lnt_class_definition.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ob_interface IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t3.
    me->def = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
    DATA t4 TYPE REF TO zcl_lnt_shape_e272b380.
    CLEAR t4.
    me->parsed_xml = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |INTF|.
    result = t1.

  ENDMETHOD.

  METHOD st_dfn_ins_src_obj_int_ts_intr.
    DATA(t1) = i_def.
    DATA(t2) = t1.
    me->def = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
  ENDMETHOD.

  METHOD get_sequenced_files.
    DATA t1 TYPE REF TO zcl_lnt_abap_file.
    DATA(t2) = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    t1 = t2.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = t12.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    DATA(t16) = t1.
    t15 = t16.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t17) = t12.
    t11 = t17.
    result = t11.

  ENDMETHOD.

  METHOD get_definition.
    DATA(t1) = me->def.
    result = t1.

  ENDMETHOD.

  METHOD get_interface.
    DATA t1 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t4.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t9.
      t6 = t9.
    ELSE.
      DATA t10 TYPE REF TO zif_lnt_abap_file_information.
      DATA t11 TYPE REF TO zcl_lnt_abap_file.
      DATA t12 TYPE REF TO zcl_lnt_abap_file.
      DATA(t13) = t4.
      t12 = t13.
      t11 = t12.
      DATA t14 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t15) = t11.
      t14 = t15->info.
      t10 = t14.
      t6 = t10.
    ENDIF.
    t3 = t6.
    t2 = t3.
    DATA t16 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t2.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t19.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      DATA t21 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t22) = t2.
      t21 = t22.
      DATA t23 TYPE string.
      DATA t24 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t25) = me.
      t24 = t25.
      DATA t26 TYPE string.
      DATA(t27) = t24.
      t26 = t27->name.
      t23 = t26.
      t20 = t21->gt_intrfc_dfntn_by_nm( i_name = t23 ).
      t16 = t20.
    ENDIF.
    t1 = t16.
    result = t1.

  ENDMETHOD.

  METHOD get_identifier.
    DATA t1 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    t6 = t7.
    DATA t8 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t6.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t11.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zif_lnt_abap_file_information.
      DATA t13 TYPE REF TO zcl_lnt_abap_file.
      DATA t14 TYPE REF TO zcl_lnt_abap_file.
      DATA(t15) = t6.
      t14 = t15.
      t13 = t14.
      DATA t16 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t17) = t13.
      t16 = t17->info.
      t12 = t16.
      t8 = t12.
    ENDIF.
    t5 = t8.
    t4 = t5.
    DATA t18 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t4.
    IF t20 IS INITIAL.
      t19 = abap_true.
    ENDIF.
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t21.
      t18 = t21.
    ELSE.
      DATA t22 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      DATA t23 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t24) = t4.
      t23 = t24.
      DATA t25 TYPE string.
      DATA t26 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t27) = me.
      t26 = t27.
      DATA t28 TYPE string.
      DATA(t29) = t26.
      t28 = t29->name.
      t25 = t28.
      t22 = t23->gt_intrfc_dfntn_by_nm( i_name = t25 ).
      t18 = t22.
    ENDIF.
    t3 = t18.
    t2 = t3.
    DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = t2.
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    IF t31 = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t33.
      t30 = t33.
    ELSE.
      DATA t34 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t35 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      DATA(t36) = t2.
      t35 = t36.
      t34 = t35->identifier.
      t30 = t34.
    ENDIF.
    t1 = t30.
    result = t1.

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

  METHOD set_dirty.
    DATA t1 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t1.
    me->def = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
    DATA t2 TYPE REF TO zcl_lnt_shape_e272b380.
    CLEAR t2.
    me->parsed_xml = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_name_from_xml.
    me->parse_xml( ).
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA(t3) = me->parsed_xml.
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
      DATA t9 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t10) = t2.
      t9 = t10.
      t8 = t9->name.
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    me->parse_xml( ).
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA(t3) = me->parsed_xml.
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
      DATA t9 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t10) = t2.
      t9 = t10.
      t8 = t9->description.
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD parse_xml.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA(t3) = me->parsed_xml.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    DATA t9 TYPE REF TO zcl_lnt_shape_e272b380.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      t16 = t17.
      t11 = NEW zcl_lnt_shape_e272b380( i_name = t12 i_description = t14 i_category = t16 ).
      CREATE OBJECT t11->zlnt_view_ownkeys_b0e8086400eb.
      t11->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t11->zlnt_json_ownkeys_70e5fd461788.
      t11->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t9 = t11.
    ELSE.
      DATA t18 TYPE REF TO zcl_lnt_shape_e272b380.
      CLEAR t18.
      t9 = t18.
    ENDIF.
    me->parsed_xml = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t19.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t27) = t19.
      t26 = t27.
      t22 = t26.
    ENDIF.
    t21 = t22.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = VALUE abap_bool( ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = t21.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    t32 = t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = t30.
    IF t35 IS INITIAL.
      t34 = abap_true.
    ENDIF.
    t29 = t34.
    t28 = t29.
    IF t29 = abap_false.
      DATA(t36) = VALUE abap_bool( ).
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t44) = t21.
      t43 = t44.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      DATA(t46) = VALUE abap_bool( ).
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      DATA(t48) = t43.
      CLEAR t47.
      IF t48 IS BOUND.
        t47 = t48.
      ENDIF.
      IF t47 IS NOT BOUND.
        t46 = abap_true.
      ELSE.
        t46 = xsdbool( t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t46 = abap_true.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        t45 = t49.
      ELSE.
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t52) = t43.
        t51 = t52.
        DATA(t53) = |abapGit|.
        t50 = t51->get( p0 = t53 ).
        t45 = t50.
      ENDIF.
      t42 = t45.
      t41 = t42.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      DATA(t55) = VALUE abap_bool( ).
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      DATA(t57) = t41.
      CLEAR t56.
      IF t57 IS BOUND.
        t56 = t57.
      ENDIF.
      IF t56 IS NOT BOUND.
        t55 = abap_true.
      ELSE.
        t55 = xsdbool( t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t55 = abap_true.
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t58.
        t54 = t58.
      ELSE.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t61) = t41.
        t60 = t61.
        DATA(t62) = |asx:abap|.
        t59 = t60->get( p0 = t62 ).
        t54 = t59.
      ENDIF.
      t40 = t54.
      t39 = t40.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t63.
      DATA(t64) = VALUE abap_bool( ).
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      DATA(t66) = t39.
      CLEAR t65.
      IF t66 IS BOUND.
        t65 = t66.
      ENDIF.
      IF t65 IS NOT BOUND.
        t64 = abap_true.
      ELSE.
        t64 = xsdbool( t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t64 = abap_true.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        t63 = t67.
      ELSE.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t70) = t39.
        t69 = t70.
        DATA(t71) = |asx:values|.
        t68 = t69->get( p0 = t71 ).
        t63 = t68.
      ENDIF.
      t38 = t63.
      t37 = t38.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      t72 = t73.
      DATA(t74) = VALUE abap_bool( ).
      DATA(t75) = t37.
      IF t75 IS INITIAL.
        t74 = abap_true.
      ENDIF.
      t36 = t74.
      t28 = t36.
    ENDIF.
    IF t28 = abap_true.
      RETURN.
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = t21.
    t84 = t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = VALUE abap_bool( ).
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA(t89) = t84.
    CLEAR t88.
    IF t89 IS BOUND.
      t88 = t89.
    ENDIF.
    IF t88 IS NOT BOUND.
      t87 = abap_true.
    ELSE.
      t87 = xsdbool( t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t87 = abap_true.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      t86 = t90.
    ELSE.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t93) = t84.
      t92 = t93.
      DATA(t94) = |abapGit|.
      t91 = t92->get( p0 = t94 ).
      t86 = t91.
    ENDIF.
    t83 = t86.
    t82 = t83.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = VALUE abap_bool( ).
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA(t98) = t82.
    CLEAR t97.
    IF t98 IS BOUND.
      t97 = t98.
    ENDIF.
    IF t97 IS NOT BOUND.
      t96 = abap_true.
    ELSE.
      t96 = xsdbool( t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t96 = abap_true.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      t95 = t99.
    ELSE.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t102) = t82.
      t101 = t102.
      DATA(t103) = |asx:abap|.
      t100 = t101->get( p0 = t103 ).
      t95 = t100.
    ENDIF.
    t81 = t95.
    t80 = t81.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = VALUE abap_bool( ).
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = t80.
    CLEAR t106.
    IF t107 IS BOUND.
      t106 = t107.
    ENDIF.
    IF t106 IS NOT BOUND.
      t105 = abap_true.
    ELSE.
      t105 = xsdbool( t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t105 = abap_true.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      t104 = t108.
    ELSE.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t111) = t80.
      t110 = t111.
      DATA(t112) = |asx:values|.
      t109 = t110->get( p0 = t112 ).
      t104 = t109.
    ENDIF.
    t79 = t104.
    t78 = t79.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = VALUE abap_bool( ).
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = t78.
    CLEAR t115.
    IF t116 IS BOUND.
      t115 = t116.
    ENDIF.
    IF t115 IS NOT BOUND.
      t114 = abap_true.
    ELSE.
      t114 = xsdbool( t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t114 = abap_true.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      t113 = t117.
    ELSE.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t120) = t78.
      t119 = t120.
      DATA(t121) = |VSEOINTERF|.
      t118 = t119->get( p0 = t121 ).
      t113 = t118.
    ENDIF.
    t77 = t113.
    t76 = t77.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA(t124) = VALUE abap_bool( ).
    DATA(t125) = t76.
    IF t125 IS INITIAL.
      t124 = abap_true.
    ENDIF.
    IF t124 = abap_true.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      t123 = t126.
    ELSE.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t128) = t76.
      t127 = t128.
      t123 = t127.
    ENDIF.
    t122 = t123.
    DATA(t129) = VALUE abap_bool( ).
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t131) = t122.
    t130 = t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    t132 = t133.
    DATA(t134) = VALUE abap_bool( ).
    DATA(t135) = t130.
    IF t135 IS INITIAL.
      t134 = abap_true.
    ENDIF.
    t129 = t134.
    IF t129 = abap_true.
      DATA t136 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t137) = me->parsed_xml.
      t136 = t137.
      DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t138.
      DATA(t139) = abap_true.
      IF t139 = abap_true.
        DATA(t140) = ||.
        DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t141->has = abap_true.
        t141->value = t140.
        t138 = t141.
      ELSE.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        t138 = t142.
      ENDIF.
      t136->description = t138.
      DELETE t136->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t143 ).
      ENDIF.
      DATA(t144) = |description|.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t145.
      IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t144 p1 = t145 ).
      ENDIF.
      DATA t146 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t147) = me->parsed_xml.
      t146 = t147.
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t148.
      DATA(t149) = abap_true.
      IF t149 = abap_true.
        DATA(t150) = ||.
        DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t151->has = abap_true.
        t151->value = t150.
        t148 = t151.
      ELSE.
        DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t152.
        t148 = t152.
      ENDIF.
      t146->name = t148.
      DELETE t146->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      IF t146->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t146->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t153 ).
      ENDIF.
      DATA(t154) = |name|.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      IF t146->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t146->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
      ENDIF.
    ELSE.
      DATA t156 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t157) = me->parsed_xml.
      t156 = t157.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t158.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t162) = t122.
      t161 = t162.
      DATA(t163) = |DESCRIPT|.
      t160 = t161->get( p0 = t163 ).
      t159 = t160.
      DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t164.
      DATA(t165) = VALUE abap_bool( ).
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t168) = t122.
      t167 = t168.
      DATA(t169) = |DESCRIPT|.
      t166 = t167->get( p0 = t169 ).
      IF t166 IS BOUND.
        t165 = t166->truth( ).
      ENDIF.
      IF t165 = abap_true.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t170.
        DATA(t171) = VALUE abap_bool( ).
        DATA(t172) = t159.
        IF t172 IS INITIAL.
          t171 = abap_true.
        ENDIF.
        IF t171 = abap_true.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t173.
          t170 = t173.
        ELSE.
          DATA t174 TYPE string.
          DATA(t175) = t159.
          t174 = t175->as_string( ).
          DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t176->has = abap_true.
          t176->value = t174.
          t170 = t176.
        ENDIF.
        t164 = t170.
      ELSE.
        DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t177.
        DATA(t178) = abap_true.
        IF t178 = abap_true.
          DATA(t179) = ||.
          DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t180->has = abap_true.
          t180->value = t179.
          t177 = t180.
        ELSE.
          DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t181.
          t177 = t181.
        ENDIF.
        t164 = t177.
      ENDIF.
      t158 = t164.
      t156->description = t158.
      DELETE t156->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t182.
      IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t182 ).
      ENDIF.
      DATA(t183) = |description|.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t184.
      IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
      ENDIF.
      DATA t185 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t186) = me->parsed_xml.
      t185 = t186.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t187.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t191) = t122.
      t190 = t191.
      DATA(t192) = |CLSNAME|.
      t189 = t190->get( p0 = t192 ).
      t188 = t189.
      DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t193.
      DATA(t194) = VALUE abap_bool( ).
      DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t197) = t122.
      t196 = t197.
      DATA(t198) = |CLSNAME|.
      t195 = t196->get( p0 = t198 ).
      IF t195 IS BOUND.
        t194 = t195->truth( ).
      ENDIF.
      IF t194 = abap_true.
        DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t199.
        DATA(t200) = VALUE abap_bool( ).
        DATA(t201) = t188.
        IF t201 IS INITIAL.
          t200 = abap_true.
        ENDIF.
        IF t200 = abap_true.
          DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t202.
          t199 = t202.
        ELSE.
          DATA t203 TYPE string.
          DATA(t204) = t188.
          t203 = t204->as_string( ).
          DATA(t205) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t205->has = abap_true.
          t205->value = t203.
          t199 = t205.
        ENDIF.
        t193 = t199.
      ELSE.
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t206.
        DATA(t207) = abap_true.
        IF t207 = abap_true.
          DATA(t208) = ||.
          DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t209->has = abap_true.
          t209->value = t208.
          t206 = t209.
        ELSE.
          DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t210.
          t206 = t210.
        ENDIF.
        t193 = t206.
      ENDIF.
      t187 = t193.
      t185->name = t187.
      DELETE t185->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
      DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t211.
      IF t185->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t185->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t211 ).
      ENDIF.
      DATA(t212) = |name|.
      DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t213.
      IF t185->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t185->zlnt_json_ownkeys_70e5fd461788->put( p0 = t212 p1 = t213 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD set_definition.
    DATA(t1) = i_def.
    DATA t2 TYPE REF TO zif_lnt_interface_definition.
    DATA(t3) = t1.
    t2 ?= t3.
    me->st_dfn_ins_src_obj_int_ts_intr( i_def = t2 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1282_348684cb2f84.
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~debug_description.
    result = me->debug_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_abap_file_by_name.
    result = me->get_abap_file_by_name( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_abap_files.
    result = me->get_abap_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_definition.
    result = me->get_definition( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_main_abap_file.
    result = me->get_main_abap_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_name_from_xml.
    result = me->get_name_from_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_sequenced_files.
    result = me->get_sequenced_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_text_elements.
    result = me->get_text_elements( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_text_elements_translations.
    result = me->get_text_elements_translations( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_text_symbols.
    result = me->get_text_symbols( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~set_definition.
    me->set_definition( i_def = i_def ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~debug_description.
    result = me->debug_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_abap_file_by_name.
    result = me->get_abap_file_by_name( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_abap_files.
    result = me->get_abap_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_main_abap_file.
    result = me->get_main_abap_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_sequenced_files.
    result = me->get_sequenced_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_text_elements.
    result = me->get_text_elements( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_text_elements_translations.
    result = me->get_text_elements_translations( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_text_symbols.
    result = me->get_text_symbols( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.
ENDCLASS.
