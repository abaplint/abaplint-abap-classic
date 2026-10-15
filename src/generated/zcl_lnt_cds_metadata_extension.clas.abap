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
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3.
    me->parser_error = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parserError`.
    DATA t4 TYPE REF TO zcl_lnt_prsd_mtdt_extnsn.
    CLEAR t4.
    me->parsed_data = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |DDLX|.
    result = t1.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 40 ).
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

  METHOD has_parser_error.
    DATA(t1) = me->parser_error.
    result = t1.

  ENDMETHOD.

  METHOD p_i_sr_ob_cd_mt_ex_ts_cd_mt_ex.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t4) = me.
    t3 = t4.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t3.
    t5 = t6->dirty.
    t2 = t5.
    DATA(t7) = abap_false.
    t1 = xsdbool( t2 = t7 ).
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_iparse_result.
      DATA t9 TYPE abap_bool.
      DATA(t10) = abap_false.
      t9 = t10.
      DATA t11 TYPE f.
      DATA(t12) = CONV f( 0 ).
      t11 = t12.
      DATA t13 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t14 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t14.
      t13 = t14.
      t8 = NEW zcl_lnt_iparse_result( i_updated = t9 i_runtime = t11 i_runtime_extra = t13 ).
      CREATE OBJECT t8->zlnt_view_ownkeys_b0e8086400eb.
      t8->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t15 ).
      ENDIF.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t16 ).
      ENDIF.
      CREATE OBJECT t8->zlnt_json_ownkeys_70e5fd461788.
      t8->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t17) = |updated|.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
      ENDIF.
      DATA(t19) = |runtime|.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
      ENDIF.
      result = t8.
      RETURN.
    ENDIF.
    DATA t21 TYPE f.
    DATA t22 TYPE f.
    DATA(t23) = 0.
    t22 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t21 = t22.
    DATA t24 TYPE REF TO zcl_lnt_prsd_mtdt_extnsn.
    CLEAR t24.
    DATA(t25) = abap_true.
    IF t25 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_prsd_mtdt_extnsn.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t28.
      t27 = t28.
      t26 = NEW zcl_lnt_prsd_mtdt_extnsn( i_tree = t27 ).
      CREATE OBJECT t26->zlnt_view_ownkeys_b0e8086400eb.
      t26->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tree` p1 = t29 ).
      ENDIF.
      CREATE OBJECT t26->zlnt_json_ownkeys_70e5fd461788.
      t26->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t30) = |tree|.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
      ENDIF.
      t24 = t26.
    ELSE.
      DATA t32 TYPE REF TO zcl_lnt_prsd_mtdt_extnsn.
      CLEAR t32.
      t24 = t32.
    ENDIF.
    me->parsed_data = t24.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    DATA t33 TYPE REF TO zcl_lnt_prsd_mtdt_extnsn.
    DATA(t34) = me->parsed_data.
    t33 = t34.
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    DATA(t36) = NEW zcl_lnt_cds_parser( ).
    DATA(t37) = CAST zif_lnt_file( me->find_source_file( ) ).
    t35 = t36->parse( i_file = t37 ).
    t33->tree = t35.
    DELETE t33->zlnt_record_delet_0597644d88b4 WHERE table_line = `tree`.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tree` p1 = t38 ).
    ENDIF.
    DATA(t39) = |tree|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = VALUE abap_bool( ).
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    DATA t43 TYPE REF TO zcl_lnt_expression_node.
    DATA t44 TYPE REF TO zcl_lnt_prsd_mtdt_extnsn.
    DATA(t45) = me->parsed_data.
    t44 = t45.
    t43 = t44->tree.
    t42 = t43.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    t46 = t47.
    DATA(t48) = VALUE abap_bool( ).
    DATA(t49) = t42.
    IF t49 IS INITIAL.
      t48 = abap_true.
    ENDIF.
    t41 = t48.
    IF t41 = abap_true.
      DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t50.
      DATA(t51) = abap_true.
      IF t51 = abap_true.
        DATA(t52) = abap_true.
        DATA(t53) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t53->has = abap_true.
        t53->value = t52.
        t50 = t53.
      ELSE.
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t54.
        t50 = t54.
      ENDIF.
      me->parser_error = t50.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parserError`.
    ENDIF.
    DATA(t55) = abap_false.
    me->dirty = t55.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dirty`.
    DATA t56 TYPE REF TO zcl_lnt_iparse_result.
    DATA t57 TYPE abap_bool.
    DATA(t58) = abap_true.
    t57 = t58.
    DATA t59 TYPE f.
    DATA t60 TYPE f.
    DATA t61 TYPE f.
    DATA(t62) = 0.
    t61 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA(t63) = t21.
    t60 = t61 - t63.
    t59 = t60.
    DATA t64 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA t65 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t65.
    t64 = t65.
    t56 = NEW zcl_lnt_iparse_result( i_updated = t57 i_runtime = t59 i_runtime_extra = t64 ).
    CREATE OBJECT t56->zlnt_view_ownkeys_b0e8086400eb.
    t56->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t66 ).
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t67 ).
    ENDIF.
    CREATE OBJECT t56->zlnt_json_ownkeys_70e5fd461788.
    t56->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t68) = |updated|.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t68 p1 = t69 ).
    ENDIF.
    DATA(t70) = |runtime|.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
    ENDIF.
    result = t56.

  ENDMETHOD.

  METHOD get_description.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    result = t1.

  ENDMETHOD.

  METHOD find_source_file.
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
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE string.
      DATA(t29) = t18.
      t28 = t29->get_filename( ).
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
        DATA(t37) = t18.
        t36 = t37->get_filename( ).
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
        DATA t43 TYPE REF TO zif_lnt_file.
        CLEAR t43.
        DATA(t44) = abap_true.
        IF t44 = abap_true.
          DATA(t45) = t18.
          t43 = t45.
        ELSE.
          DATA t46 TYPE REF TO zif_lnt_file.
          CLEAR t46.
          t43 = t46.
        ENDIF.
        t13 = t43.
        EXIT.
      ENDIF.
      DATA t47 TYPE i.
      DATA(t48) = t11.
      DATA(t49) = 1.
      t47 = t48 + t49.
      t11 = t47.
    ENDDO.
    DATA(t50) = t13.
    t1 = t50.
    result = t1.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->p_i_sr_ob_cd_mt_ex_ts_cd_mt_ex( ) ).
    result = t1.

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
