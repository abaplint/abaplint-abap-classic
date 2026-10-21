* TS: src/objects/cds_metadata_extension.ts:11:1 CDSMetadataExtension
CLASS zcl_lnt_cds_metadata_extension DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_ce65ceec.
    DATA parser_error TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA parsed_data TYPE REF TO zcl_lnt_prsd_mtdt_extnsn.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS has_parser_error RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS p_i_sr_ob_cd_mt_ex_ts_cd_mt_ex RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS get_description REDEFINITION.
    METHODS find_source_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_metadata_extension IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
    CLEAR me->parser_error.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parserError`.
    CLEAR me->parsed_data.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
  ENDMETHOD.

  METHOD get_type.
    result = |DDLX|.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = CONV f( 40 ) i_allow_namespace = abap_true i_custom_regex = t6 ).
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

  METHOD has_parser_error.
    result = me->parser_error.

  ENDMETHOD.

  METHOD p_i_sr_ob_cd_mt_ex_ts_cd_mt_ex.
    DATA t3 TYPE REF TO zcl_lnt_abstract_object.
    t3 = me.
    IF xsdbool( t3->dirty = abap_false ) = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_iparse_result.
      DATA t13 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t8 = NEW zcl_lnt_iparse_result( i_updated = abap_false i_runtime = CONV f( 0 ) i_runtime_extra = t13 ).
      CREATE OBJECT t8->zlnt_view_ownkeys_b0e8086400eb.
      t8->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t15 ).
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t16 ).
      ENDIF.
      CREATE OBJECT t8->zlnt_json_ownkeys_70e5fd461788.
      t8->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t18 ).
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t20 ).
      ENDIF.
      result = t8.
      RETURN.
    ENDIF.
    DATA t22 TYPE f.
    DATA(t23) = 0.
    t22 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t26 TYPE REF TO zcl_lnt_prsd_mtdt_extnsn.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    t26 = NEW zcl_lnt_prsd_mtdt_extnsn( i_tree = t27 ).
    CREATE OBJECT t26->zlnt_view_ownkeys_b0e8086400eb.
    t26->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tree` p1 = t29 ).
    CREATE OBJECT t26->zlnt_json_ownkeys_70e5fd461788.
    t26->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tree| p1 = t31 ).
    me->parsed_data = t26.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    DATA t33 TYPE REF TO zcl_lnt_prsd_mtdt_extnsn.
    t33 = me->parsed_data.
    t33->tree = NEW zcl_lnt_cds_parser( )->parse( i_file = CAST zif_lnt_file( me->find_source_file( ) ) ).
    DELETE t33->zlnt_record_delet_0597644d88b4 WHERE table_line = `tree`.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tree` p1 = t38 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tree| p1 = t40 ).
    ENDIF.
    DATA t43 TYPE REF TO zcl_lnt_expression_node.
    t43 = me->parsed_data->tree.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t43 IS INITIAL ) = abap_true.
      DATA(t53) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t53->has = abap_true.
      t53->value = abap_true.
      me->parser_error = t53.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parserError`.
    ENDIF.
    me->dirty = abap_false.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dirty`.
    DATA t56 TYPE REF TO zcl_lnt_iparse_result.
    DATA t59 TYPE f.
    DATA t61 TYPE f.
    DATA(t62) = 0.
    t61 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t59 = t61 - t22.
    DATA t64 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t56 = NEW zcl_lnt_iparse_result( i_updated = abap_true i_runtime = t59 i_runtime_extra = t64 ).
    CREATE OBJECT t56->zlnt_view_ownkeys_b0e8086400eb.
    t56->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t66 ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t67 ).
    ENDIF.
    CREATE OBJECT t56->zlnt_json_ownkeys_70e5fd461788.
    t56->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t69 ).
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t71 ).
    ENDIF.
    result = t56.

  ENDMETHOD.

  METHOD get_description.
    CLEAR result.

  ENDMETHOD.

  METHOD find_source_file.
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
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE string.
      t28 = t18->get_filename( ).
      DATA(t30) = |.asddlxs|.
      DATA(t31) = strlen( t28 ).
      DATA t32 TYPE i.
      DATA(t33) = VALUE i( ).
      DATA(t34) = VALUE string( ).
      t32 = strlen( t30 ).
      IF t32 = 0.
        t27 = abap_true.
      ELSEIF t32 <= t31.
        t33 = 0.
        t33 = t31 - t32.
        t34 = t28+t33(t32).
        IF t34 = t30.
          t27 = abap_true.
        ENDIF.
      ENDIF.
      t26 = t27.
      IF t27 = abap_false.
        DATA(t35) = VALUE abap_bool( ).
        DATA t36 TYPE string.
        t36 = t18->get_filename( ).
        DATA(t38) = |.acds|.
        DATA(t39) = strlen( t36 ).
        DATA t40 TYPE i.
        DATA(t41) = VALUE i( ).
        DATA(t42) = VALUE string( ).
        t40 = strlen( t38 ).
        IF t40 = 0.
          t35 = abap_true.
        ELSEIF t40 <= t39.
          t41 = 0.
          t41 = t39 - t40.
          t42 = t36+t41(t40).
          IF t42 = t38.
            t35 = abap_true.
          ENDIF.
        ENDIF.
        t26 = t35.
      ENDIF.
      IF t26 = abap_true.
        t13 = t18.
        EXIT.
      ENDIF.
      DATA(t49) = 1.
      t11 = t11 + t49.
    ENDDO.
    result = t13.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->p_i_sr_ob_cd_mt_ex_ts_cd_mt_ex( ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1219_a72fddfb7b6c.
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~find_source_file.
    result = me->find_source_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~has_parser_error.
    result = me->has_parser_error( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_ce65ceec~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.
ENDCLASS.
