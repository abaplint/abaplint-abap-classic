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
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
    CLEAR me->def.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
  ENDMETHOD.

  METHOD get_type.
    result = |INTF|.

  ENDMETHOD.

  METHOD st_dfn_ins_src_obj_int_ts_intr.
    me->def = i_def.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
  ENDMETHOD.

  METHOD get_sequenced_files.
    DATA t1 TYPE REF TO zcl_lnt_abap_file.
    t1 = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    t15 = t1.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    result = t12.

  ENDMETHOD.

  METHOD get_definition.
    result = me->def.

  ENDMETHOD.

  METHOD get_interface.
    DATA t2 TYPE REF TO zif_lnt_abap_file_information.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    t4 = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    DATA t6 TYPE REF TO zif_lnt_abap_file_information.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
    ELSE.
      t6 = t4->info.
    ENDIF.
    t2 = t6.
    DATA t16 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
    ELSE.
      DATA t21 TYPE REF TO zif_lnt_abap_file_information.
      t21 = t2.
      DATA t23 TYPE string.
      DATA t24 TYPE REF TO zcl_lnt_abstract_object.
      t24 = me.
      t23 = t24->name.
      t16 = t21->gt_intrfc_dfntn_by_nm( i_name = t23 ).
    ENDIF.
    result = t16.

  ENDMETHOD.

  METHOD get_identifier.
    DATA t2 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA t4 TYPE REF TO zif_lnt_abap_file_information.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    t6 = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    DATA t8 TYPE REF TO zif_lnt_abap_file_information.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      t8 = t6->info.
    ENDIF.
    t4 = t8.
    DATA t18 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
    ELSE.
      DATA t23 TYPE REF TO zif_lnt_abap_file_information.
      t23 = t4.
      DATA t25 TYPE string.
      DATA t26 TYPE REF TO zcl_lnt_abstract_object.
      t26 = me.
      t25 = t26->name.
      t18 = t23->gt_intrfc_dfntn_by_nm( i_name = t25 ).
    ENDIF.
    t2 = t18.
    DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
    ELSE.
      t30 = t2->identifier.
    ENDIF.
    result = t30.

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
    CLEAR me->def.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_name_from_xml.
    me->parse_xml( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_e272b380.
    t2 = me->parsed_xml.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
    ELSE.
      t4 = t2->name.
    ENDIF.
    result = t4.

  ENDMETHOD.

  METHOD get_description.
    me->parse_xml( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_e272b380.
    t2 = me->parsed_xml.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
    ELSE.
      t4 = t2->description.
    ENDIF.
    result = t4.

  ENDMETHOD.

  METHOD parse_xml.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = xsdbool( me->parsed_xml IS INITIAL ).
    IF xsdbool( t7 = abap_false ) = abap_true.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t11 = NEW zcl_lnt_shape_e272b380( i_name = t12 i_description = t14 i_category = t16 ).
    CREATE OBJECT t11->zlnt_view_ownkeys_b0e8086400eb.
    t11->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    CREATE OBJECT t11->zlnt_json_ownkeys_70e5fd461788.
    t11->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    me->parsed_xml = t11.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t19 IS INITIAL ) = abap_true.
    ELSE.
      t22 = t19.
    ENDIF.
    t21 = t22.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = VALUE abap_bool( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t29 = xsdbool( t21 IS INITIAL ).
    t28 = t29.
    IF t29 = abap_false.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t43 = t21.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t46) = VALUE abap_bool( ).
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t43 IS BOUND.
        t47 = t43.
      ENDIF.
      IF t47 IS NOT BOUND.
        t46 = abap_true.
      ELSE.
        t46 = xsdbool( t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t46 = abap_true.
      ELSE.
        t45 = t43->get( p0 = |abapGit| ).
      ENDIF.
      t41 = t45.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t55) = VALUE abap_bool( ).
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t41 IS BOUND.
        t56 = t41.
      ENDIF.
      IF t56 IS NOT BOUND.
        t55 = abap_true.
      ELSE.
        t55 = xsdbool( t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t55 = abap_true.
      ELSE.
        t54 = t41->get( p0 = |asx:abap| ).
      ENDIF.
      t39 = t54.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t64) = VALUE abap_bool( ).
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t39 IS BOUND.
        t65 = t39.
      ENDIF.
      IF t65 IS NOT BOUND.
        t64 = abap_true.
      ELSE.
        t64 = xsdbool( t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t64 = abap_true.
      ELSE.
        t63 = t39->get( p0 = |asx:values| ).
      ENDIF.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t28 = xsdbool( t63 IS INITIAL ).
    ENDIF.
    IF t28 = abap_true.
      RETURN.
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t84 = t21.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t87) = VALUE abap_bool( ).
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t84 IS BOUND.
      t88 = t84.
    ENDIF.
    IF t88 IS NOT BOUND.
      t87 = abap_true.
    ELSE.
      t87 = xsdbool( t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t87 = abap_true.
    ELSE.
      t86 = t84->get( p0 = |abapGit| ).
    ENDIF.
    t82 = t86.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = VALUE abap_bool( ).
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t82 IS BOUND.
      t97 = t82.
    ENDIF.
    IF t97 IS NOT BOUND.
      t96 = abap_true.
    ELSE.
      t96 = xsdbool( t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t96 = abap_true.
    ELSE.
      t95 = t82->get( p0 = |asx:abap| ).
    ENDIF.
    t80 = t95.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t105) = VALUE abap_bool( ).
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t80 IS BOUND.
      t106 = t80.
    ENDIF.
    IF t106 IS NOT BOUND.
      t105 = abap_true.
    ELSE.
      t105 = xsdbool( t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t105 = abap_true.
    ELSE.
      t104 = t80->get( p0 = |asx:values| ).
    ENDIF.
    t78 = t104.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t114) = VALUE abap_bool( ).
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78 IS BOUND.
      t115 = t78.
    ENDIF.
    IF t115 IS NOT BOUND.
      t114 = abap_true.
    ELSE.
      t114 = xsdbool( t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t114 = abap_true.
    ELSE.
      t113 = t78->get( p0 = |VSEOINTERF| ).
    ENDIF.
    t76 = t113.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t76 IS INITIAL ) = abap_true.
    ELSE.
      t123 = t76.
    ENDIF.
    t122 = t123.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t122 IS INITIAL ) = abap_true.
      DATA t136 TYPE REF TO zcl_lnt_shape_e272b380.
      t136 = me->parsed_xml.
      DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t141->has = abap_true.
      t141->value = ||.
      t136->description = t141.
      DELETE t136->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t143 ).
      ENDIF.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t145 ).
      ENDIF.
      DATA t146 TYPE REF TO zcl_lnt_shape_e272b380.
      t146 = me->parsed_xml.
      DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t151->has = abap_true.
      t151->value = ||.
      t146->name = t151.
      DELETE t146->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t146->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t146->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t153 ).
      ENDIF.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t146->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t146->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t155 ).
      ENDIF.
    ELSE.
      DATA t156 TYPE REF TO zcl_lnt_shape_e272b380.
      t156 = me->parsed_xml.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t159 = t122->get( p0 = |DESCRIPT| ).
      DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t165) = VALUE abap_bool( ).
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t166 = t122->get( p0 = |DESCRIPT| ).
      IF t166 IS BOUND.
        t165 = t166->truth( ).
      ENDIF.
      IF t165 = abap_true.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t159 IS INITIAL ) = abap_true.
        ELSE.
          DATA t174 TYPE string.
          t174 = t159->as_string( ).
          DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t176->has = abap_true.
          t176->value = t174.
          t170 = t176.
        ENDIF.
        t164 = t170.
      ELSE.
        DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t180->has = abap_true.
        t180->value = ||.
        t164 = t180.
      ENDIF.
      t156->description = t164.
      DELETE t156->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t182 ).
      ENDIF.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t184 ).
      ENDIF.
      DATA t185 TYPE REF TO zcl_lnt_shape_e272b380.
      t185 = me->parsed_xml.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t188 = t122->get( p0 = |CLSNAME| ).
      DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t194) = VALUE abap_bool( ).
      DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t195 = t122->get( p0 = |CLSNAME| ).
      IF t195 IS BOUND.
        t194 = t195->truth( ).
      ENDIF.
      IF t194 = abap_true.
        DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t188 IS INITIAL ) = abap_true.
        ELSE.
          DATA t203 TYPE string.
          t203 = t188->as_string( ).
          DATA(t205) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t205->has = abap_true.
          t205->value = t203.
          t199 = t205.
        ENDIF.
        t193 = t199.
      ELSE.
        DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t209->has = abap_true.
        t209->value = ||.
        t193 = t209.
      ENDIF.
      t185->name = t193.
      DELETE t185->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
      DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t185->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t185->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t211 ).
      ENDIF.
      DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t185->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t185->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t213 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD set_definition.
    DATA t2 TYPE REF TO zif_lnt_interface_definition.
    t2 ?= i_def.
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
