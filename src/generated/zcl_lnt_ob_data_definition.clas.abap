* TS: src/objects/data_definition.ts:22:1 DataDefinition
CLASS zcl_lnt_ob_data_definition DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_c74a232f.
    INTERFACES zif_lnt_union_ce65ceec.
    DATA parser_error TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA parsed_data TYPE REF TO zcl_lnt_parsed_data_definition.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_sql_view_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_definition_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_description REDEFINITION.
    METHODS pr_ty_in_sr_ob_dt_df_ts_dt_dfn IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS get_parsed_data RETURNING VALUE(result) TYPE REF TO zcl_lnt_parsed_data_definition.
    METHODS list_sources RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS set_dirty REDEFINITION.
    METHODS find_source_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS has_parser_error RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS list_keys RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS pr_in_src_obj_dt_dfn_ts_dt_dfn RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS get_tree RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS find_sql_view_name.
    METHODS find_description RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS find_field_names IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node.
    METHODS find_sources_and_relations IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node.
    METHODS parse REDEFINITION.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_data_element TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ob_data_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3.
    me->parser_error = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parserError`.
    DATA t4 TYPE REF TO zcl_lnt_parsed_data_definition.
    CLEAR t4.
    me->parsed_data = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |DDLS|.
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

  METHOD get_sql_view_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_dfn_ts_dt_dfn( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA(t4) = me->parsed_data.
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
      DATA t10 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->sql_view_name.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_definition_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_dfn_ts_dt_dfn( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA(t4) = me->parsed_data.
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
      DATA t10 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->definition_name.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_dfn_ts_dt_dfn( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA(t4) = me->parsed_data.
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
      DATA t10 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->description.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD pr_ty_in_sr_ob_dt_df_ts_dt_dfn.
    DATA(t1) = i_reg_f149.
    DATA(t2) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_dfn_ts_dt_dfn( ) ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t4) = NEW zcl_lnt_cds_determine_types( ).
    DATA(t5) = t1.
    DATA t6 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA(t7) = me->parsed_data.
    t6 = t7.
    DATA t8 TYPE string.
    DATA t9 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t10) = me.
    t9 = t10.
    DATA t11 TYPE string.
    DATA(t12) = t9.
    t11 = t12->name.
    t8 = t11.
    t3 = t4->parse_type( i_reg_f149 = t5 i_parsed_data = t6 i_ddls_name = t8 ).
    result = t3.

  ENDMETHOD.

  METHOD get_parsed_data.
    DATA(t1) = me->parsed_data.
    result = t1.

  ENDMETHOD.

  METHOD list_sources.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_dfn_ts_dt_dfn( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA(t4) = me->parsed_data.
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
      DATA t10 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->sources.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_parsed_data_definition.
    CLEAR t1.
    me->parsed_data = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    DATA t2 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2.
    me->parser_error = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parserError`.
    super->set_dirty( ).
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
      DATA(t30) = |.asddls|.
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

  METHOD has_parser_error.
    DATA(t1) = me->parser_error.
    result = t1.

  ENDMETHOD.

  METHOD list_keys.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_dfn_ts_dt_dfn( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA(t8) = me->parsed_data.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t7.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t12.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t15) = t7.
      t14 = t15.
      t13 = t14->fields_464c.
      t9 = t13.
    ENDIF.
    t6 = t9.
    t5 = t6.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE abap_bool.
    DATA(t18) = t5.
    t17 = xsdbool( t18 IS BOUND ).
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t20) = t5.
      t19 = t20.
      t16 = t19.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t21.
      t16 = t21.
    ENDIF.
    t4 = t16.
    DATA t22 TYPE REF TO zcl_lnt_shape_5383185c.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
    DATA(t24) = VALUE i( ).
    DO.
      t4->load( ).
      IF t24 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t4->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE abap_bool.
      DATA(t29) = t22.
      t28 = t29->key.
      DATA(t30) = abap_true.
      t27 = xsdbool( t28 = t30 ).
      IF t27 = abap_true.
        DATA(t31) = t2.
        DATA t32 TYPE string.
        DATA(t33) = t22.
        t32 = t33->name.
        t31->load( ).
        APPEND t32 TO t31->items.
        t31->save( ).
      ENDIF.
    ENDDO.
    DATA(t34) = t2.
    result = t34.

  ENDMETHOD.

  METHOD pr_in_src_obj_dt_dfn_ts_dt_dfn.
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
    DATA t24 TYPE REF TO zcl_lnt_parsed_data_definition.
    CLEAR t24.
    DATA(t25) = abap_true.
    IF t25 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_parsed_data_definition.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      t27 = t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA t37 TYPE REF TO zif_lnt_file.
      DATA(t38) = CAST zif_lnt_file( me->find_source_file( ) ).
      t37 = t38.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = t37.
      IF t41 IS INITIAL.
        t40 = abap_true.
      ENDIF.
      IF t40 = abap_true.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        t39 = t42.
      ELSE.
        DATA t43 TYPE string.
        DATA t44 TYPE REF TO zif_lnt_file.
        DATA(t45) = t37.
        t44 = t45.
        t43 = t44->get_raw( ).
        DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t46->has = abap_true.
        t46->value = t43.
        t39 = t46.
      ENDIF.
      t36 = t39.
      t35 = t36.
      DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t47.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t35.
      IF t49 IS INITIAL.
        t48 = abap_true.
      ELSEIF t49->has = abap_false.
        t48 = abap_true.
      ENDIF.
      IF t48 = abap_true.
        DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t50.
        t47 = t50.
      ELSE.
        DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t52 TYPE string.
        DATA t53 TYPE string.
        DATA(t54) = t35.
        t53 = t54->value.
        t52 = t53.
        DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t56) = t52.
        DATA t57 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t57.
        DATA(t58) = `@EndUserText\.label: '([\w,.:-=#%&() ]+)'`.
        DATA(t59) = `@EndUserText\.label: '([A-Za-z0-9_,.:-=#%&() ]+)'`.
        DATA(t60) = ||.
        CREATE OBJECT t57 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t59 flags = t60.
        t57->source = t58.
        t55 = t57->match( t56 ).
        t51 = t55.
        t47 = t51.
      ENDIF.
      t34 = t47.
      t33 = t34.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t61.
      DATA t62 TYPE abap_bool.
      DATA(t63) = t33.
      t62 = xsdbool( t63 IS BOUND ).
      IF t62 = abap_true.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t66) = t33.
        t65 = t66.
        DATA(t67) = 1.
        t64 = t65->get( p0 = t67 ).
        t61 = t64.
      ELSE.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        t61 = t68.
      ENDIF.
      t32 = t61.
      t31 = t32.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t70.
      t69 = t70.
      DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t72.
      t71 = t72.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t74.
      t73 = t74.
      DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t76.
      t75 = t76.
      DATA t77 TYPE REF TO zcl_lnt_expression_node.
      DATA t78 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t78.
      t77 = t78.
      t26 = NEW zcl_lnt_parsed_data_definition( i_sql_view_name = t27 i_definition_name = t29 i_description = t31 i_fields_62af = t69 i_sources = t71 i_associations = t75 i_relations = t73 i_tree = t77 ).
      CREATE OBJECT t26->zlnt_view_ownkeys_b0e8086400eb.
      t26->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sqlViewName` p1 = t79 ).
      ENDIF.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionName` p1 = t80 ).
      ENDIF.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t81 ).
      ENDIF.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fields` p1 = t82 ).
      ENDIF.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sources` p1 = t83 ).
      ENDIF.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t84.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `relations` p1 = t84 ).
      ENDIF.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `associations` p1 = t85 ).
      ENDIF.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tree` p1 = t86 ).
      ENDIF.
      CREATE OBJECT t26->zlnt_json_ownkeys_70e5fd461788.
      t26->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t87) = |sqlViewName|.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t87 p1 = t88 ).
      ENDIF.
      DATA(t89) = |definitionName|.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
      ENDIF.
      DATA(t91) = |description|.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
      ENDIF.
      DATA(t93) = |fields|.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
      ENDIF.
      DATA(t95) = |sources|.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
      ENDIF.
      DATA(t97) = |relations|.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
      ENDIF.
      DATA(t99) = |associations|.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t99 p1 = t100 ).
      ENDIF.
      DATA(t101) = |tree|.
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t102.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
      ENDIF.
      t24 = t26.
    ELSE.
      DATA t103 TYPE REF TO zcl_lnt_parsed_data_definition.
      CLEAR t103.
      t24 = t103.
    ENDIF.
    me->parsed_data = t24.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t107.
    DATA t108 TYPE REF TO zif_lnt_file.
    DATA(t109) = CAST zif_lnt_file( me->find_source_file( ) ).
    t108 = t109.
    DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t110.
    DATA(t111) = VALUE abap_bool( ).
    DATA(t112) = t108.
    IF t112 IS INITIAL.
      t111 = abap_true.
    ENDIF.
    IF t111 = abap_true.
      DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t113.
      t110 = t113.
    ELSE.
      DATA t114 TYPE string.
      DATA t115 TYPE REF TO zif_lnt_file.
      DATA(t116) = t108.
      t115 = t116.
      t114 = t115->get_raw( ).
      DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t117->has = abap_true.
      t117->value = t114.
      t110 = t117.
    ENDIF.
    t107 = t110.
    t106 = t107.
    DATA t118 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t118.
    DATA(t119) = VALUE abap_bool( ).
    DATA(t120) = t106.
    IF t120 IS INITIAL.
      t119 = abap_true.
    ELSEIF t120->has = abap_false.
      t119 = abap_true.
    ENDIF.
    IF t119 = abap_true.
      DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t121.
      t118 = t121.
    ELSE.
      DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t123 TYPE string.
      DATA t124 TYPE string.
      DATA(t125) = t106.
      t124 = t125->value.
      t123 = t124.
      DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t127) = t123.
      DATA t128 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t128.
      DATA(t129) = `@AbapCatalog\.sqlViewName: '([\w/]+)'`.
      DATA(t130) = `@AbapCatalog\.sqlViewName: '([A-Za-z0-9_/]+)'`.
      DATA(t131) = ||.
      CREATE OBJECT t128 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t130 flags = t131.
      t128->source = t129.
      t126 = t128->match( t127 ).
      t122 = t126.
      t118 = t122.
    ENDIF.
    t105 = t118.
    t104 = t105.
    DATA t132 TYPE abap_bool.
    DATA(t133) = t104.
    t132 = xsdbool( t133 IS BOUND ).
    IF t132 = abap_true.
      DATA t134 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t135) = me->parsed_data.
      t134 = t135.
      DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t136.
      DATA(t137) = abap_true.
      IF t137 = abap_true.
        DATA t138 TYPE string.
        DATA t139 TYPE string.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t142) = t104.
        t141 = t142.
        DATA(t143) = 1.
        t140 = t141->get( p0 = t143 ).
        t139 = t140->value.
        DATA(t144) = strlen( t139 ).
        t138 = t139.
        IF t138 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t138 TO UPPER CASE.
        ELSE.
          t138 = zlnt_runtime_uppe_91169605024d=>full( t138 ).
        ENDIF.
        DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t145->has = abap_true.
        t145->value = t138.
        t136 = t145.
      ELSE.
        DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t146.
        t136 = t146.
      ENDIF.
      t134->sql_view_name = t136.
      DELETE t134->zlnt_record_delet_0597644d88b4 WHERE table_line = `sqlViewName`.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      IF t134->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t134->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sqlViewName` p1 = t147 ).
      ENDIF.
      DATA(t148) = |sqlViewName|.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      IF t134->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t134->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
      ENDIF.
    ENDIF.
    DATA t150 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA(t151) = me->parsed_data.
    t150 = t151.
    DATA t152 TYPE REF TO zcl_lnt_expression_node.
    DATA(t153) = NEW zcl_lnt_cds_parser( ).
    DATA(t154) = CAST zif_lnt_file( me->find_source_file( ) ).
    t152 = t153->parse( i_file = t154 ).
    t150->tree = t152.
    DELETE t150->zlnt_record_delet_0597644d88b4 WHERE table_line = `tree`.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tree` p1 = t155 ).
    ENDIF.
    DATA(t156) = |tree|.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
    ENDIF.
    DATA t158 TYPE abap_bool.
    DATA t159 TYPE REF TO zcl_lnt_expression_node.
    DATA t160 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA(t161) = me->parsed_data.
    t160 = t161.
    t159 = t160->tree.
    t158 = xsdbool( t159 IS BOUND ).
    IF t158 = abap_true.
      DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t162.
      DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t163.
      DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t164.
      DATA t165 TYPE REF TO zcl_lnt_expression_node.
      DATA t166 TYPE REF TO zcl_lnt_expression_node.
      DATA t167 TYPE REF TO zcl_lnt_expression_node.
      DATA t168 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t169) = me->parsed_data.
      t168 = t169.
      t167 = t168->tree.
      t166 = t167.
      t165 = t166.
      DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t170.
      DATA(t171) = VALUE abap_bool( ).
      DATA(t172) = t165.
      IF t172 IS INITIAL.
        t171 = abap_true.
      ENDIF.
      IF t171 = abap_true.
        DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t173.
        t170 = t173.
      ELSE.
        DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t176 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t177) = t165.
        t176 = t177.
        DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t179) = t176.
        t178 = t179->children.
        t175 = t178.
        t174 ?= t175.
        t170 = t174.
      ENDIF.
      t164 = t170.
      t163 = t164.
      DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t180.
      DATA t181 TYPE abap_bool.
      DATA(t182) = t163.
      t181 = xsdbool( t182 IS BOUND ).
      IF t181 = abap_true.
        DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t184) = t163.
        t183 = t184.
        t180 = t183.
      ELSE.
        DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t185.
        t180 = t185.
      ENDIF.
      t162 = t180.
      DATA t186 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t186.
      DATA t187 TYPE REF TO object.
      CLEAR t187.
      DATA(t188) = VALUE i( ).
      DO.
        t162->load( ).
        IF t188 >= lines( t162->items ).
          EXIT.
        ENDIF.
        CLEAR t187.
        READ TABLE t162->items INDEX t188 + 1 INTO t187.
        t188 = t188 + 1.
        DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t189.
        CLEAR t186.
        IF t187 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t189 ?= t187.
          DATA t190 TYPE REF TO object.
          t190 = t189->as_ref( ).
          t186 ?= t190.
        ELSE.
          t186 ?= t187.
        ENDIF.
        DATA t191 TYPE abap_bool.
        DATA t192 TYPE REF TO object.
        DATA(t193) = t186.
        t192 = t193->get_db65( ).
        t191 = xsdbool( t192 IS BOUND AND t192 IS INSTANCE OF zcl_lnt_cds_annotation ).
        IF t191 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t194 TYPE abap_bool.
        DATA(t195) = t186.
        t194 = xsdbool( t195 IS BOUND AND t195 IS INSTANCE OF zcl_lnt_expression_node ).
        IF t194 = abap_true.
          DATA t196 TYPE REF TO zcl_lnt_parsed_data_definition.
          DATA(t197) = me->parsed_data.
          t196 = t197.
          DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t198.
          DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t199.
          DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t200.
          DATA t201 TYPE REF TO zcl_lnt_expression_node.
          DATA t202 TYPE REF TO zcl_lnt_expression_node.
          DATA t203 TYPE REF TO zcl_lnt_expression_node.
          DATA(t204) = t186.
          DATA t205 TYPE REF TO object.
          t205 = t204.
          t203 ?= t205.
          DATA(t206) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
          t202 = t203->find_first_expression( i_type_9913 = t206 ).
          t201 = t202.
          DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t207.
          DATA(t208) = VALUE abap_bool( ).
          DATA(t209) = t201.
          IF t209 IS INITIAL.
            t208 = abap_true.
          ENDIF.
          IF t208 = abap_true.
            DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t210.
            t207 = t210.
          ELSE.
            DATA t211 TYPE string.
            DATA t212 TYPE REF TO zcl_lnt_expression_node.
            DATA(t213) = t201.
            t212 = t213.
            t211 = t212->concat_tokens( ).
            DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t214->has = abap_true.
            t214->value = t211.
            t207 = t214.
          ENDIF.
          t200 = t207.
          t199 = t200.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t215.
          DATA(t216) = VALUE abap_bool( ).
          DATA(t217) = t199.
          IF t217 IS INITIAL.
            t216 = abap_true.
          ELSEIF t217->has = abap_false.
            t216 = abap_true.
          ENDIF.
          IF t216 = abap_true.
            DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t218.
            t215 = t218.
          ELSE.
            DATA t219 TYPE string.
            DATA t220 TYPE string.
            DATA(t221) = t199.
            t220 = t221->value.
            DATA t222 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t222.
            DATA(t223) = | |.
            DATA(t224) = |g|.
            CREATE OBJECT t222 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t223 flags = t224 checked = abap_true.
            DATA(t225) = ||.
            DATA(t226) = strlen( t220 ).
            t219 = t222->replace( p0 = t220 p1 = t225 ).
            DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t227->has = abap_true.
            t227->value = t219.
            t215 = t227.
          ENDIF.
          t198 = t215.
          t196->definition_name = t198.
          DELETE t196->zlnt_record_delet_0597644d88b4 WHERE table_line = `definitionName`.
          DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t228.
          IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionName` p1 = t228 ).
          ENDIF.
          DATA(t229) = |definitionName|.
          DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t230.
          IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t229 p1 = t230 ).
          ENDIF.
          EXIT.
        ENDIF.
      ENDDO.
      DATA t231 TYPE REF TO zcl_lnt_expression_node.
      DATA t232 TYPE REF TO zcl_lnt_expression_node.
      DATA t233 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t234) = me->parsed_data.
      t233 = t234.
      t232 = t233->tree.
      t231 = t232.
      me->find_sources_and_relations( i_tree = t231 ).
      DATA t235 TYPE REF TO zcl_lnt_expression_node.
      DATA t236 TYPE REF TO zcl_lnt_expression_node.
      DATA t237 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t238) = me->parsed_data.
      t237 = t238.
      t236 = t237->tree.
      t235 = t236.
      me->find_field_names( i_tree = t235 ).
    ELSE.
      DATA t239 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t239.
      DATA(t240) = abap_true.
      IF t240 = abap_true.
        DATA(t241) = abap_true.
        DATA(t242) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t242->has = abap_true.
        t242->value = t241.
        t239 = t242.
      ELSE.
        DATA t243 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t243.
        t239 = t243.
      ENDIF.
      me->parser_error = t239.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parserError`.
    ENDIF.
    DATA(t244) = abap_false.
    me->dirty = t244.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dirty`.
    DATA t245 TYPE REF TO zcl_lnt_iparse_result.
    DATA t246 TYPE abap_bool.
    DATA(t247) = abap_true.
    t246 = t247.
    DATA t248 TYPE f.
    DATA t249 TYPE f.
    DATA t250 TYPE f.
    DATA(t251) = 0.
    t250 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA(t252) = t21.
    t249 = t250 - t252.
    t248 = t249.
    DATA t253 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA t254 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t254.
    t253 = t254.
    t245 = NEW zcl_lnt_iparse_result( i_updated = t246 i_runtime = t248 i_runtime_extra = t253 ).
    CREATE OBJECT t245->zlnt_view_ownkeys_b0e8086400eb.
    t245->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    IF t245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t255 ).
    ENDIF.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    IF t245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t256 ).
    ENDIF.
    CREATE OBJECT t245->zlnt_json_ownkeys_70e5fd461788.
    t245->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t257) = |updated|.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    IF t245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t257 p1 = t258 ).
    ENDIF.
    DATA(t259) = |runtime|.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    IF t245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t259 p1 = t260 ).
    ENDIF.
    result = t245.

  ENDMETHOD.

  METHOD get_tree.
    DATA t1 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA(t3) = me->parsed_data.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t2.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zcl_lnt_expression_node.
      DATA t9 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t10) = t2.
      t9 = t10.
      t8 = t9->tree.
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD find_sql_view_name.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_file.
    DATA(t6) = CAST zif_lnt_file( me->find_source_file( ) ).
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
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zif_lnt_file.
      DATA(t13) = t5.
      t12 = t13.
      t11 = t12->get_raw( ).
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t11.
      t7 = t14.
    ENDIF.
    t4 = t7.
    t3 = t4.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t3.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ELSEIF t17->has = abap_false.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA(t22) = t3.
      t21 = t22->value.
      t20 = t21.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t24) = t20.
      DATA t25 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t25.
      DATA(t26) = `@AbapCatalog\.sqlViewName: '([\w/]+)'`.
      DATA(t27) = `@AbapCatalog\.sqlViewName: '([A-Za-z0-9_/]+)'`.
      DATA(t28) = ||.
      CREATE OBJECT t25 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t27 flags = t28.
      t25->source = t26.
      t23 = t25->match( t24 ).
      t19 = t23.
      t15 = t19.
    ENDIF.
    t2 = t15.
    t1 = t2.
    DATA t29 TYPE abap_bool.
    DATA(t30) = t1.
    t29 = xsdbool( t30 IS BOUND ).
    IF t29 = abap_true.
      DATA t31 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t32) = me->parsed_data.
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA t35 TYPE string.
        DATA t36 TYPE string.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t39) = t1.
        t38 = t39.
        DATA(t40) = 1.
        t37 = t38->get( p0 = t40 ).
        t36 = t37->value.
        DATA(t41) = strlen( t36 ).
        t35 = t36.
        IF t35 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t35 TO UPPER CASE.
        ELSE.
          t35 = zlnt_runtime_uppe_91169605024d=>full( t35 ).
        ENDIF.
        DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t42->has = abap_true.
        t42->value = t35.
        t33 = t42.
      ELSE.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        t33 = t43.
      ENDIF.
      t31->sql_view_name = t33.
      DELETE t31->zlnt_record_delet_0597644d88b4 WHERE table_line = `sqlViewName`.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sqlViewName` p1 = t44 ).
      ENDIF.
      DATA(t45) = |sqlViewName|.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD find_description.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_file.
    DATA(t6) = CAST zif_lnt_file( me->find_source_file( ) ).
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
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zif_lnt_file.
      DATA(t13) = t5.
      t12 = t13.
      t11 = t12->get_raw( ).
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t11.
      t7 = t14.
    ENDIF.
    t4 = t7.
    t3 = t4.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t3.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ELSEIF t17->has = abap_false.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA(t22) = t3.
      t21 = t22->value.
      t20 = t21.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t24) = t20.
      DATA t25 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t25.
      DATA(t26) = `@EndUserText\.label: '([\w,.:-=#%&() ]+)'`.
      DATA(t27) = `@EndUserText\.label: '([A-Za-z0-9_,.:-=#%&() ]+)'`.
      DATA(t28) = ||.
      CREATE OBJECT t25 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t27 flags = t28.
      t25->source = t26.
      t23 = t25->match( t24 ).
      t19 = t23.
      t15 = t19.
    ENDIF.
    t2 = t15.
    t1 = t2.
    DATA t29 TYPE abap_bool.
    DATA(t30) = t1.
    t29 = xsdbool( t30 IS BOUND ).
    IF t29 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t33) = t1.
      t32 = t33.
      DATA(t34) = 1.
      t31 = t32->get( p0 = t34 ).
      result = t31.
      RETURN.
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    result = t35.

  ENDMETHOD.

  METHOD find_field_names.
    DATA(t1) = i_tree.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1112_606bcf340c7d.
    t3 = t4->find_first_expression( i_type_9913 = t5 ).
    t2 = t3.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = t2.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t7.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    IF t6 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA(t14) = t1.
      DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1086_e2f8f5b9ee22.
      t13 = t14->find_first_expression( i_type_9913 = t15 ).
      t2 = t13.
    ENDIF.
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA(t18) = t2.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    t19 = t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t17.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    t16 = t21.
    IF t16 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA(t24) = t1.
      DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1105_a133f02ea9f8.
      t23 = t24->find_first_expression( i_type_9913 = t25 ).
      t2 = t23.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA(t30) = t2.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t31.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = t29.
    IF t33 IS INITIAL.
      t32 = abap_true.
    ENDIF.
    IF t32 = abap_true.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t34.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = t29.
      t36 = t37.
      DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
      t35 = t36->find_direct_expressions( i_type_9913 = t38 ).
      t31 = t35.
    ENDIF.
    t28 = t31.
    t27 = t28.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t39.
    DATA t40 TYPE abap_bool.
    DATA(t41) = t27.
    t40 = xsdbool( t41 IS BOUND ).
    IF t40 = abap_true.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t43) = t27.
      t42 = t43.
      t39 = t42.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t44.
      t39 = t44.
    ENDIF.
    t26 = t39.
    DATA t45 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t45.
    DATA t46 TYPE REF TO object.
    CLEAR t46.
    DATA(t47) = VALUE i( ).
    DO.
      t26->load( ).
      IF t47 >= lines( t26->items ).
        EXIT.
      ENDIF.
      CLEAR t46.
      READ TABLE t26->items INDEX t47 + 1 INTO t46.
      t47 = t47 + 1.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      CLEAR t45.
      IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t48 ?= t46.
        DATA t49 TYPE REF TO object.
        t49 = t48->as_ref( ).
        t45 ?= t49.
      ELSE.
        t45 ?= t46.
      ENDIF.
      DATA t50 TYPE string.
      DATA(t51) = ||.
      t50 = t51.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      t52 = t53.
      DATA t54 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t55.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      DATA(t58) = t45.
      DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
      t57 = t58->find_direct_expression( i_type_9913 = t59 ).
      t56 = t57.
      DATA t60 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t60.
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = t56.
      IF t62 IS INITIAL.
        t61 = abap_true.
      ENDIF.
      IF t61 = abap_true.
        DATA t63 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t63.
        t60 = t63.
      ELSE.
        DATA t64 TYPE REF TO zcl_lnt_expression_node.
        DATA t65 TYPE REF TO zcl_lnt_expression_node.
        DATA(t66) = t56.
        t65 = t66.
        DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
        t64 = t65->find_direct_expression( i_type_9913 = t67 ).
        t60 = t64.
      ENDIF.
      t55 = t60.
      t54 = t55.
      DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t68.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t69.
      DATA t70 TYPE REF TO zcl_lnt_expression_node.
      DATA t71 TYPE REF TO zcl_lnt_expression_node.
      DATA(t72) = t45.
      DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
      t71 = t72->find_direct_expression( i_type_9913 = t73 ).
      t70 = t71.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t74.
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = t70.
      IF t76 IS INITIAL.
        t75 = abap_true.
      ENDIF.
      IF t75 = abap_true.
        DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t77.
        t74 = t77.
      ELSE.
        DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t79 TYPE REF TO zcl_lnt_expression_node.
        DATA(t80) = t70.
        t79 = t80.
        DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
        t78 = t79->find_all_expressions( i_type_9913 = t81 ).
        t74 = t78.
      ENDIF.
      t69 = t74.
      t68 = t69.
      DATA(t82) = VALUE abap_bool( ).
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t84) = t68.
      t83 = t84.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      t85 = t86.
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = t83.
      IF t89 IS INITIAL.
        t88 = abap_true.
      ENDIF.
      t87 = xsdbool( t88 = abap_false ).
      t82 = t87.
      IF t82 = abap_true.
        DATA(t90) = VALUE abap_bool( ).
        DATA t91 TYPE abap_bool.
        DATA t92 TYPE abap_bool.
        DATA t93 TYPE i.
        DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t95) = t68.
        t94 = t95.
        t94->load( ).
        t93 = lines( t94->items ).
        DATA(t96) = 1.
        t92 = xsdbool( t93 > t96 ).
        t91 = t92.
        IF t92 = abap_true.
          DATA(t97) = VALUE abap_bool( ).
          DATA(t98) = VALUE i( ).
          DATA t99 TYPE string.
          DATA t100 TYPE string.
          DATA(t101) = t45.
          t100 = t101->concat_tokens( ).
          DATA(t102) = strlen( t100 ).
          t99 = t100.
          IF t99 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t99 TO UPPER CASE.
          ELSE.
            t99 = zlnt_runtime_uppe_91169605024d=>full( t99 ).
          ENDIF.
          DATA(t103) = | REDIRECTED TO |.
          DATA(t104) = strlen( t99 ).
          IF t103 IS INITIAL.
            t98 = 0.
          ELSE.
            FIND t103 IN t99 MATCH OFFSET t98.
            IF sy-subrc <> 0.
              t98 = -1.
            ENDIF.
          ENDIF.
          DATA(t105) = 0.
          t97 = xsdbool( t98 >= t105 ).
          t91 = t97.
        ENDIF.
        t90 = t91.
        DATA t106 TYPE abap_bool.
        DATA t107 TYPE abap_bool.
        DATA t108 TYPE i.
        DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t110) = t68.
        t109 = t110.
        t109->load( ).
        t108 = lines( t109->items ).
        DATA(t111) = 1.
        t107 = xsdbool( t108 > t111 ).
        t106 = t107.
        IF t107 = abap_true.
          DATA t112 TYPE abap_bool.
          DATA(t113) = t90.
          DATA(t114) = abap_false.
          t112 = xsdbool( t113 = t114 ).
          t106 = t112.
        ENDIF.
        IF t106 = abap_true.
          DATA(t115) = VALUE string( ).
          DATA t116 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t116.
          DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t118) = t68.
          t117 = t118.
          DATA t119 TYPE REF TO object.
          CLEAR t119.
          t117->load( ).
          CLEAR t119.
          READ TABLE t117->items INDEX 1 INTO t119.
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t120.
          CLEAR t116.
          IF t119 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t120 ?= t119.
            DATA t121 TYPE REF TO object.
            t121 = t120->as_ref( ).
            t116 ?= t121.
          ELSE.
            t116 ?= t119.
          ENDIF.
          t115 = t116->concat_tokens( ).
          t50 = t115.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          DATA(t123) = abap_true.
          IF t123 = abap_true.
            DATA(t124) = VALUE string( ).
            DATA t125 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t125.
            DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t127) = t68.
            t126 = t127.
            DATA t128 TYPE i.
            DATA t129 TYPE i.
            DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t131) = t68.
            t130 = t131.
            t130->load( ).
            t129 = lines( t130->items ).
            DATA(t132) = 1.
            t128 = t129 - t132.
            t128 = t128 + 1.
            DATA t133 TYPE REF TO object.
            CLEAR t133.
            t126->load( ).
            CLEAR t133.
            READ TABLE t126->items INDEX t128 INTO t133.
            DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t134.
            CLEAR t125.
            IF t133 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t134 ?= t133.
              DATA t135 TYPE REF TO object.
              t135 = t134->as_ref( ).
              t125 ?= t135.
            ELSE.
              t125 ?= t133.
            ENDIF.
            t124 = t125->concat_tokens( ).
            DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t136->has = abap_true.
            t136->value = t124.
            t122 = t136.
          ELSE.
            DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t137.
            t122 = t137.
          ENDIF.
          t52 = t122.
        ENDIF.
        DATA(t138) = VALUE abap_bool( ).
        DATA t139 TYPE REF TO zcl_lnt_expression_node.
        DATA(t140) = t54.
        t139 = t140.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        t141 = t142.
        DATA(t143) = VALUE abap_bool( ).
        DATA(t144) = t139.
        IF t144 IS INITIAL.
          t143 = abap_true.
        ENDIF.
        t138 = t143.
        IF t138 = abap_true.
          DATA t145 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t145.
          DATA(t146) = abap_true.
          IF t146 = abap_true.
            DATA t147 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t147.
            DATA t148 TYPE abap_bool.
            DATA(t149) = t90.
            DATA(t150) = abap_true.
            t148 = xsdbool( t149 = t150 ).
            IF t148 = abap_true.
              DATA t151 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t151.
              DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t153) = t68.
              t152 = t153.
              DATA t154 TYPE REF TO object.
              CLEAR t154.
              t152->load( ).
              CLEAR t154.
              READ TABLE t152->items INDEX 1 INTO t154.
              DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t155.
              CLEAR t151.
              IF t154 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t155 ?= t154.
                DATA t156 TYPE REF TO object.
                t156 = t155->as_ref( ).
                t151 ?= t156.
              ELSE.
                t151 ?= t154.
              ENDIF.
              t147 = t151.
            ELSE.
              DATA t157 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t157.
              DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t159) = t68.
              t158 = t159.
              DATA t160 TYPE i.
              DATA t161 TYPE i.
              DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t163) = t68.
              t162 = t163.
              t162->load( ).
              t161 = lines( t162->items ).
              DATA(t164) = 1.
              t160 = t161 - t164.
              t160 = t160 + 1.
              DATA t165 TYPE REF TO object.
              CLEAR t165.
              t158->load( ).
              CLEAR t165.
              READ TABLE t158->items INDEX t160 INTO t165.
              DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t166.
              CLEAR t157.
              IF t165 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t166 ?= t165.
                DATA t167 TYPE REF TO object.
                t167 = t166->as_ref( ).
                t157 ?= t167.
              ELSE.
                t157 ?= t165.
              ENDIF.
              t147 = t157.
            ENDIF.
            t145 = t147.
          ELSE.
            DATA t168 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t168.
            t145 = t168.
          ENDIF.
          t54 = t145.
        ENDIF.
      ENDIF.
      DATA(t169) = VALUE abap_bool( ).
      DATA t170 TYPE REF TO zcl_lnt_expression_node.
      DATA(t171) = t54.
      t170 = t171.
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t173.
      t172 = t173.
      DATA(t174) = VALUE abap_bool( ).
      DATA(t175) = t170.
      IF t175 IS INITIAL.
        t174 = abap_true.
      ENDIF.
      t169 = t174.
      IF t169 = abap_true.
        DATA(t176) = VALUE abap_bool( ).
        DATA t177 TYPE REF TO zcl_lnt_abstract_token.
        DATA t178 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t179) = t45.
        DATA(t180) = |VIRTUAL|.
        t178 = t179->find_direct_token_by_text( i_text = t180 ).
        t177 = t178.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        t181 = t182.
        DATA(t183) = VALUE abap_bool( ).
        DATA(t184) = VALUE abap_bool( ).
        DATA(t185) = t177.
        IF t185 IS INITIAL.
          t184 = abap_true.
        ENDIF.
        t183 = xsdbool( t184 = abap_false ).
        t176 = t183.
        IF t176 = abap_true.
          DATA t186 TYPE REF TO zcl_lnt_expression_node.
          DATA(t187) = t45.
          DATA(t188) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
          t186 = t187->find_first_expression( i_type_9913 = t188 ).
          t54 = t186.
        ENDIF.
      ENDIF.
      DATA(t189) = VALUE abap_bool( ).
      DATA t190 TYPE REF TO zcl_lnt_expression_node.
      DATA(t191) = t54.
      t190 = t191.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t193.
      t192 = t193.
      DATA(t194) = VALUE abap_bool( ).
      DATA(t195) = t190.
      IF t195 IS INITIAL.
        t194 = abap_true.
      ENDIF.
      t189 = t194.
      IF t189 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t196.
      DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t197.
      DATA t198 TYPE REF TO zcl_lnt_expression_node.
      DATA t199 TYPE REF TO zcl_lnt_expression_node.
      DATA(t200) = t54.
      t199 = t200.
      t198 = t199.
      DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t201.
      DATA(t202) = VALUE abap_bool( ).
      DATA(t203) = t198.
      IF t203 IS INITIAL.
        t202 = abap_true.
      ENDIF.
      IF t202 = abap_true.
        DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t204.
        t201 = t204.
      ELSE.
        DATA t205 TYPE string.
        DATA(t206) = t198.
        t205 = t206->concat_tokens( ).
        DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t207->has = abap_true.
        t207->value = t205.
        t201 = t207.
      ENDIF.
      t197 = t201.
      t196 = t197.
      DATA(t208) = VALUE abap_bool( ).
      DATA t209 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t209.
      DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t210.
      DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t211.
      DATA t212 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t213) = me->parsed_data.
      t212 = t213.
      DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t214.
      DATA(t215) = VALUE abap_bool( ).
      DATA(t216) = t212.
      IF t216 IS INITIAL.
        t215 = abap_true.
      ENDIF.
      IF t215 = abap_true.
        DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t217.
        t214 = t217.
      ELSE.
        DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t219 TYPE REF TO zcl_lnt_parsed_data_definition.
        DATA(t220) = t212.
        t219 = t220.
        t218 = t219->associations.
        t214 = t218.
      ENDIF.
      t211 = t214.
      t210 = t211.
      DATA t221 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t221.
      DATA(t222) = VALUE abap_bool( ).
      DATA(t223) = t210.
      IF t223 IS INITIAL.
        t222 = abap_true.
      ENDIF.
      IF t222 = abap_true.
        DATA t224 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t224.
        t221 = t224.
      ELSE.
        DATA(t225) = VALUE abap_bool( ).
        DATA t226 TYPE abap_bool.
        DATA(t227) = abap_false.
        t226 = t227.
        DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t229) = t210.
        t228 = t229.
        DATA t230 TYPE REF TO zcl_lnt_shape_35310764.
        CLEAR t230.
        DATA t231 TYPE REF TO object.
        CLEAR t231.
        DATA(t232) = VALUE i( ).
        DO.
          t228->load( ).
          IF t232 >= lines( t228->items ).
            EXIT.
          ENDIF.
          CLEAR t231.
          READ TABLE t228->items INDEX t232 + 1 INTO t231.
          t232 = t232 + 1.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          CLEAR t230.
          IF t231 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t233 ?= t231.
            DATA t234 TYPE REF TO object.
            t234 = t233->as_ref( ).
            t230 ?= t234.
          ELSE.
            t230 ?= t231.
          ENDIF.
          DATA(t235) = VALUE abap_bool( ).
          DATA(t236) = VALUE abap_bool( ).
          DATA t237 TYPE string.
          DATA t238 TYPE string.
          DATA(t239) = t230.
          t238 = t239->name.
          DATA(t240) = strlen( t238 ).
          t237 = t238.
          IF t237 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t237 TO UPPER CASE.
          ELSE.
            t237 = zlnt_runtime_uppe_91169605024d=>full( t237 ).
          ENDIF.
          DATA t241 TYPE string.
          DATA t242 TYPE string.
          DATA(t243) = t196.
          t242 = t243->value.
          DATA(t244) = strlen( t242 ).
          t241 = t242.
          IF t241 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t241 TO UPPER CASE.
          ELSE.
            t241 = zlnt_runtime_uppe_91169605024d=>full( t241 ).
          ENDIF.
          t236 = xsdbool( t237 = t241 ).
          t235 = t236.
          IF t236 = abap_false.
            DATA(t245) = VALUE abap_bool( ).
            DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t246.
            DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t249) = t230.
            t248 = t249->as.
            t247 = t248.
            DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t250.
            DATA(t251) = VALUE abap_bool( ).
            DATA(t252) = t247.
            IF t252 IS INITIAL.
              t251 = abap_true.
            ELSEIF t252->has = abap_false.
              t251 = abap_true.
            ENDIF.
            IF t251 = abap_true.
              DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t253.
              t250 = t253.
            ELSE.
              DATA t254 TYPE string.
              DATA t255 TYPE string.
              DATA(t256) = t247.
              t255 = t256->value.
              DATA(t257) = strlen( t255 ).
              t254 = t255.
              IF t254 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t254 TO UPPER CASE.
              ELSE.
                t254 = zlnt_runtime_uppe_91169605024d=>full( t254 ).
              ENDIF.
              DATA(t258) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t258->has = abap_true.
              t258->value = t254.
              t250 = t258.
            ENDIF.
            t246 = t250.
            DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t259.
            DATA(t260) = abap_true.
            IF t260 = abap_true.
              DATA t261 TYPE string.
              DATA t262 TYPE string.
              DATA(t263) = t196.
              t262 = t263->value.
              DATA(t264) = strlen( t262 ).
              t261 = t262.
              IF t261 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t261 TO UPPER CASE.
              ELSE.
                t261 = zlnt_runtime_uppe_91169605024d=>full( t261 ).
              ENDIF.
              DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t265->has = abap_true.
              t265->value = t261.
              t259 = t265.
            ELSE.
              DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t266.
              t259 = t266.
            ENDIF.
            DATA(t267) = VALUE abap_bool( ).
            DATA(t268) = VALUE abap_bool( ).
            IF t246 IS BOUND.
              t267 = t246->has.
            ENDIF.
            IF t259 IS BOUND.
              t268 = t259->has.
            ENDIF.
            IF t267 = t268.
              IF t267 = abap_false.
                t245 = abap_true.
              ELSEIF t246->value = t259->value.
                t245 = abap_true.
              ENDIF.
            ENDIF.
            t235 = t245.
          ENDIF.
          IF t235 = abap_true.
            DATA(t269) = abap_true.
            t226 = t269.
            EXIT.
          ENDIF.
        ENDDO.
        DATA(t270) = t226.
        t225 = t270.
        DATA(t271) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t271->has = abap_true.
        t271->value = t225.
        t221 = t271.
      ENDIF.
      t209 = t221.
      IF t209 IS BOUND.
        IF t209->has = abap_true.
          t208 = xsdbool( t209->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t208 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t273 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t273.
      t272 = t273.
      DATA t274 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t275) = t45.
      DATA(t276) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
      t274 = t275->find_direct_expressions( i_type_9913 = t276 ).
      DATA t277 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t277.
      DATA t278 TYPE REF TO object.
      CLEAR t278.
      DATA(t279) = VALUE i( ).
      DO.
        t274->load( ).
        IF t279 >= lines( t274->items ).
          EXIT.
        ENDIF.
        CLEAR t278.
        READ TABLE t274->items INDEX t279 + 1 INTO t278.
        t279 = t279 + 1.
        DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t280.
        CLEAR t277.
        IF t278 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t280 ?= t278.
          DATA t281 TYPE REF TO object.
          t281 = t280->as_ref( ).
          t277 ?= t281.
        ELSE.
          t277 ?= t278.
        ENDIF.
        DATA(t282) = t272.
        DATA t283 TYPE string.
        DATA(t284) = t277.
        t283 = t284->concat_tokens( ).
        t282->load( ).
        APPEND t283 TO t282->items.
        t282->save( ).
      ENDDO.
      DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t286 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t287) = me->parsed_data.
      t286 = t287.
      t285 = t286->fields_464c.
      DATA t288 TYPE REF TO zcl_lnt_shape_5383185c.
      CLEAR t288.
      DATA t289 TYPE string.
      DATA t290 TYPE string.
      DATA(t291) = t196.
      t290 = t291->value.
      t289 = t290.
      DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t293) = t52.
      t292 = t293.
      DATA t294 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t294.
      DATA t295 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t295.
      DATA(t296) = abap_true.
      IF t296 = abap_true.
        DATA(t297) = t272.
        t295 = t297.
      ELSE.
        DATA t298 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t298.
        t295 = t298.
      ENDIF.
      t294 = t295.
      DATA t299 TYPE string.
      DATA(t300) = t50.
      t299 = t300.
      DATA(t301) = VALUE abap_bool( ).
      DATA(t302) = VALUE abap_bool( ).
      DATA t303 TYPE REF TO zcl_lnt_abstract_token.
      DATA t304 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t305) = t45.
      DATA(t306) = |KEY|.
      t304 = t305->find_direct_token_by_text( i_text = t306 ).
      t303 = t304.
      DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t308.
      t307 = t308.
      DATA(t309) = VALUE abap_bool( ).
      DATA(t310) = VALUE abap_bool( ).
      DATA(t311) = t303.
      IF t311 IS INITIAL.
        t310 = abap_true.
      ENDIF.
      t309 = xsdbool( t310 = abap_false ).
      t302 = t309.
      t301 = t302.
      t288 = NEW zcl_lnt_shape_5383185c( i_key = t301 i_name = t289 i_name_in_source = t292 i_prefix = t299 i_annotations = t294 ).
      CREATE OBJECT t288->zlnt_view_ownkeys_b0e8086400eb.
      t288->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t312.
      IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t312 ).
      ENDIF.
      DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t313.
      IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `nameInSource` p1 = t313 ).
      ENDIF.
      DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t314.
      IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `annotations` p1 = t314 ).
      ENDIF.
      DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t315.
      IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `prefix` p1 = t315 ).
      ENDIF.
      DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t316.
      IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t316 ).
      ENDIF.
      CREATE OBJECT t288->zlnt_json_ownkeys_70e5fd461788.
      t288->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t317) = |name|.
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t318.
      IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t317 p1 = t318 ).
      ENDIF.
      DATA(t319) = |nameInSource|.
      DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t320.
      IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t319 p1 = t320 ).
      ENDIF.
      DATA(t321) = |annotations|.
      DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t322.
      IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t321 p1 = t322 ).
      ENDIF.
      DATA(t323) = |prefix|.
      DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t324.
      IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t323 p1 = t324 ).
      ENDIF.
      DATA(t325) = |key|.
      DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t326.
      IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t325 p1 = t326 ).
      ENDIF.
      t285->load( ).
      APPEND t288 TO t285->items.
      t285->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD find_sources_and_relations.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_tree.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    t2 = t3->find_all_expressions( i_type_9913 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t2->load( ).
      IF t7 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t2->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA(t10) = VALUE string( ).
      DATA(t11) = VALUE string( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t18.
      DATA t19 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_node.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t22) = t5.
      t21 = t22.
      DATA t23 TYPE REF TO zif_lnt_node.
      CLEAR t23.
      DATA(t24) = abap_true.
      IF t24 = abap_true.
        DATA t25 TYPE REF TO zif_lnt_node.
        CLEAR t25.
        DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t27) = t21.
        t26 = t27->children.
        DATA t28 TYPE REF TO object.
        CLEAR t28.
        t26->load( ).
        CLEAR t28.
        READ TABLE t26->items INDEX 1 INTO t28.
        DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t29.
        CLEAR t25.
        IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t29 ?= t28.
          DATA t30 TYPE REF TO object.
          t30 = t29->as_ref( ).
          t25 ?= t30.
        ELSE.
          t25 ?= t28.
        ENDIF.
        t23 = t25.
      ELSE.
        DATA t31 TYPE REF TO zif_lnt_node.
        CLEAR t31.
        t23 = t31.
      ENDIF.
      t20 = t23.
      t19 ?= t20.
      t18 = t19.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = t18.
      IF t34 IS INITIAL.
        t33 = abap_true.
      ENDIF.
      IF t33 = abap_true.
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t35.
        t32 = t35.
      ELSE.
        DATA t36 TYPE string.
        DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t38) = t18.
        t37 = t38.
        t36 = t37->concat_tokens( ).
        DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t39->has = abap_true.
        t39->value = t36.
        t32 = t39.
      ENDIF.
      t17 = t32.
      t16 = t17.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = t16.
      IF t42 IS INITIAL.
        t41 = abap_true.
      ELSEIF t42->has = abap_false.
        t41 = abap_true.
      ENDIF.
      IF t41 = abap_true.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        t40 = t43.
      ELSE.
        DATA t44 TYPE string.
        DATA t45 TYPE string.
        DATA(t46) = t16.
        t45 = t46->value.
        DATA(t47) = strlen( t45 ).
        t44 = t45.
        IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t44 TO UPPER CASE.
        ELSE.
          t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
        ENDIF.
        DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t48->has = abap_true.
        t48->value = t44.
        t40 = t48.
      ENDIF.
      t15 = t40.
      t14 = t15.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = t14.
      IF t51 IS INITIAL.
        t50 = abap_true.
      ELSEIF t51->has = abap_false.
        t50 = abap_true.
      ENDIF.
      IF t50 = abap_true.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        t49 = t52.
      ELSE.
        DATA t53 TYPE string.
        DATA t54 TYPE string.
        DATA(t55) = t14.
        t54 = t55->value.
        DATA t56 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t56.
        DATA(t57) = | |.
        DATA(t58) = |g|.
        CREATE OBJECT t56 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t57 flags = t58 checked = abap_true.
        DATA(t59) = ||.
        DATA(t60) = strlen( t54 ).
        t53 = t56->replace( p0 = t54 p1 = t59 ).
        DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t61->has = abap_true.
        t61->value = t53.
        t49 = t61.
      ENDIF.
      t13 = t49.
      t12 = t13.
      DATA(t62) = VALUE string( ).
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = t12.
      IF t64 IS BOUND.
        IF t64->has = abap_true.
          t63 = xsdbool( strlen( t64->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t63 = abap_true.
        DATA t65 TYPE string.
        DATA(t66) = t12.
        t65 = t66->value.
        t62 = t65.
      ELSE.
        DATA(t67) = |ERROR|.
        t62 = t67.
      ENDIF.
      t11 = t62.
      t10 = t11.
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t68.
      DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t69.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t70.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t71.
      DATA t72 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t72.
      DATA t73 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t73.
      DATA t74 TYPE REF TO zcl_lnt_expression_node.
      DATA t75 TYPE REF TO zcl_lnt_expression_node.
      DATA(t76) = t5.
      DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
      t75 = t76->find_direct_expression( i_type_9913 = t77 ).
      t74 = t75.
      DATA t78 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t78.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = t74.
      IF t80 IS INITIAL.
        t79 = abap_true.
      ENDIF.
      IF t79 = abap_true.
        DATA t81 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t81.
        t78 = t81.
      ELSE.
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        DATA t83 TYPE REF TO zcl_lnt_expression_node.
        DATA(t84) = t74.
        t83 = t84.
        DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
        t82 = t83->find_direct_expression( i_type_9913 = t85 ).
        t78 = t82.
      ENDIF.
      t73 = t78.
      t72 = t73.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = t72.
      IF t88 IS INITIAL.
        t87 = abap_true.
      ENDIF.
      IF t87 = abap_true.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        t86 = t89.
      ELSE.
        DATA t90 TYPE string.
        DATA t91 TYPE REF TO zcl_lnt_expression_node.
        DATA(t92) = t72.
        t91 = t92.
        t90 = t91->concat_tokens( ).
        DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t93->has = abap_true.
        t93->value = t90.
        t86 = t93.
      ENDIF.
      t71 = t86.
      t70 = t71.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t94.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = t70.
      IF t96 IS INITIAL.
        t95 = abap_true.
      ELSEIF t96->has = abap_false.
        t95 = abap_true.
      ENDIF.
      IF t95 = abap_true.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        t94 = t97.
      ELSE.
        DATA t98 TYPE string.
        DATA t99 TYPE string.
        DATA(t100) = t70.
        t99 = t100->value.
        DATA(t101) = strlen( t99 ).
        t98 = t99.
        IF t98 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t98 TO UPPER CASE.
        ELSE.
          t98 = zlnt_runtime_uppe_91169605024d=>full( t98 ).
        ENDIF.
        DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t102->has = abap_true.
        t102->value = t98.
        t94 = t102.
      ENDIF.
      t69 = t94.
      t68 = t69.
      DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t104 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t105) = me->parsed_data.
      t104 = t105.
      t103 = t104->sources.
      DATA t106 TYPE REF TO zcl_lnt_shape_35310764.
      DATA t107 TYPE string.
      DATA(t108) = t10.
      t107 = t108.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t110) = t68.
      t109 = t110.
      t106 = NEW zcl_lnt_shape_35310764( i_name = t107 i_as = t109 ).
      CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
      t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t111 ).
      ENDIF.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `as` p1 = t112 ).
      ENDIF.
      CREATE OBJECT t106->zlnt_json_ownkeys_70e5fd461788.
      t106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t113) = |name|.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t114.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
      ENDIF.
      DATA(t115) = |as|.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
      ENDIF.
      t103->load( ).
      APPEND t106 TO t103->items.
      t103->save( ).
    ENDDO.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t118) = t1.
    DATA(t119) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1092_b2702bebb604.
    t117 = t118->find_all_expressions( i_type_9913 = t119 ).
    DATA t120 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t120.
    DATA t121 TYPE REF TO object.
    CLEAR t121.
    DATA(t122) = VALUE i( ).
    DO.
      t117->load( ).
      IF t122 >= lines( t117->items ).
        EXIT.
      ENDIF.
      CLEAR t121.
      READ TABLE t117->items INDEX t122 + 1 INTO t121.
      t122 = t122 + 1.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      CLEAR t120.
      IF t121 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t123 ?= t121.
        DATA t124 TYPE REF TO object.
        t124 = t123->as_ref( ).
        t120 ?= t124.
      ELSE.
        t120 ?= t121.
      ENDIF.
      DATA t125 TYPE REF TO zcl_lnt_expression_node.
      DATA t126 TYPE REF TO zcl_lnt_expression_node.
      DATA(t127) = t120.
      DATA(t128) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
      t126 = t127->find_direct_expression( i_type_9913 = t128 ).
      t125 = t126.
      DATA t129 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t129.
      DATA t130 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t130.
      DATA(t131) = NEW zlnt_runtime_set__1827558fd4c7( ).
      DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t132.
      DATA t133 TYPE abap_bool.
      DATA(t134) = t125.
      t133 = xsdbool( t134 IS BOUND ).
      IF t133 = abap_true.
        DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t135.
        DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t137.
        t136 = t137.
        DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t139 TYPE REF TO zcl_lnt_expression_node.
        DATA(t140) = t125.
        t139 = t140.
        t138 = t139->get_tokens( ).
        DATA t141 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t141.
        DATA t142 TYPE REF TO object.
        CLEAR t142.
        DATA(t143) = VALUE i( ).
        DO.
          t138->load( ).
          IF t143 >= lines( t138->items ).
            EXIT.
          ENDIF.
          CLEAR t142.
          READ TABLE t138->items INDEX t143 + 1 INTO t142.
          t143 = t143 + 1.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          CLEAR t141.
          IF t142 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t144 ?= t142.
            DATA t145 TYPE REF TO object.
            t145 = t144->as_ref( ).
            t141 ?= t145.
          ELSE.
            t141 ?= t142.
          ENDIF.
          DATA(t146) = t136.
          DATA(t147) = VALUE string( ).
          DATA(t148) = VALUE string( ).
          DATA(t149) = VALUE string( ).
          DATA(t150) = VALUE string( ).
          DATA(t151) = ||.
          DATA(t152) = VALUE string( ).
          DATA t153 TYPE f.
          DATA t154 TYPE REF TO zcl_lnt_position.
          DATA t155 TYPE REF TO zcl_lnt_position.
          DATA t156 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t157) = t141.
          t156 = t157.
          DATA t158 TYPE REF TO zcl_lnt_position.
          DATA(t159) = t156.
          t158 = t159->start.
          t155 = t158.
          t154 = t155.
          DATA t160 TYPE f.
          DATA(t161) = t154.
          t160 = t161->row.
          t153 = t160.
          IF t153 <> trunc( t153 ) OR t153 > range_safe_integer OR t153 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t162) = CONV int8( t153 ).
          t152 = |{ t162 }|.
          DATA(t163) = strlen( t151 ).
          t150 = |{ t151 }{ t152 }|.
          DATA(t164) = |:|.
          DATA(t165) = strlen( t150 ).
          t149 = |{ t150 }{ t164 }|.
          DATA t166 TYPE string.
          DATA t167 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t168 TYPE REF TO zcl_lnt_position.
          DATA t169 TYPE REF TO zcl_lnt_position.
          DATA t170 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t171) = t141.
          t170 = t171.
          DATA t172 TYPE REF TO zcl_lnt_position.
          DATA(t173) = t170.
          t172 = t173->start.
          t169 = t172.
          t168 = t169.
          DATA t174 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t175) = t168.
          t174 = t175->col.
          t167 = t174.
          t166 = zlnt_runtime_numb_290eb04a9758=>text( t167 ).
          DATA(t176) = strlen( t149 ).
          t148 = |{ t149 }{ t166 }|.
          DATA(t177) = ||.
          DATA(t178) = strlen( t148 ).
          t147 = |{ t148 }{ t177 }|.
          t146->load( ).
          APPEND t147 TO t146->items.
          t146->save( ).
        ENDDO.
        DATA(t179) = t136.
        t135 = t179.
        t132 = t135.
      ELSE.
        DATA t180 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t180.
        t132 = t180.
      ENDIF.
      t130 = t131->fromarray( p0 = t132 ).
      t129 = t130.
      DATA(t181) = VALUE string( ).
      DATA(t182) = VALUE string( ).
      DATA(t183) = VALUE string( ).
      DATA(t184) = VALUE string( ).
      DATA t185 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t185.
      DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t187.
      t186 = t187.
      DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t188.
      DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t190.
      t189 = t190.
      DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t192) = t120.
      t191 = t192->get_tokens( ).
      DATA t193 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t193.
      DATA t194 TYPE REF TO object.
      CLEAR t194.
      DATA(t195) = VALUE i( ).
      DO.
        t191->load( ).
        IF t195 >= lines( t191->items ).
          EXIT.
        ENDIF.
        CLEAR t194.
        READ TABLE t191->items INDEX t195 + 1 INTO t194.
        t195 = t195 + 1.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        CLEAR t193.
        IF t194 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t196 ?= t194.
          DATA t197 TYPE REF TO object.
          t197 = t196->as_ref( ).
          t193 ?= t197.
        ELSE.
          t193 ?= t194.
        ENDIF.
        DATA(t198) = VALUE abap_bool( ).
        DATA(t199) = VALUE abap_bool( ).
        DATA(t200) = t129.
        DATA(t201) = VALUE string( ).
        DATA(t202) = VALUE string( ).
        DATA(t203) = VALUE string( ).
        DATA(t204) = VALUE string( ).
        DATA(t205) = ||.
        DATA(t206) = VALUE string( ).
        DATA t207 TYPE f.
        DATA t208 TYPE REF TO zcl_lnt_position.
        DATA t209 TYPE REF TO zcl_lnt_position.
        DATA t210 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t211) = t193.
        t210 = t211.
        DATA t212 TYPE REF TO zcl_lnt_position.
        DATA(t213) = t210.
        t212 = t213->start.
        t209 = t212.
        t208 = t209.
        DATA t214 TYPE f.
        DATA(t215) = t208.
        t214 = t215->row.
        t207 = t214.
        IF t207 <> trunc( t207 ) OR t207 > range_safe_integer OR t207 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t216) = CONV int8( t207 ).
        t206 = |{ t216 }|.
        DATA(t217) = strlen( t205 ).
        t204 = |{ t205 }{ t206 }|.
        DATA(t218) = |:|.
        DATA(t219) = strlen( t204 ).
        t203 = |{ t204 }{ t218 }|.
        DATA t220 TYPE string.
        DATA t221 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t222 TYPE REF TO zcl_lnt_position.
        DATA t223 TYPE REF TO zcl_lnt_position.
        DATA t224 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t225) = t193.
        t224 = t225.
        DATA t226 TYPE REF TO zcl_lnt_position.
        DATA(t227) = t224.
        t226 = t227->start.
        t223 = t226.
        t222 = t223.
        DATA t228 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t229) = t222.
        t228 = t229->col.
        t221 = t228.
        t220 = zlnt_runtime_numb_290eb04a9758=>text( t221 ).
        DATA(t230) = strlen( t203 ).
        t202 = |{ t203 }{ t220 }|.
        DATA(t231) = ||.
        DATA(t232) = strlen( t202 ).
        t201 = |{ t202 }{ t231 }|.
        t199 = t200->has( p0 = t201 ).
        t198 = xsdbool( t199 = abap_false ).
        IF t198 = abap_true.
          DATA(t233) = t189.
          DATA(t234) = t193.
          t233->load( ).
          APPEND t234 TO t233->items.
          t233->save( ).
        ENDIF.
      ENDDO.
      DATA(t235) = t189.
      t188 = t235.
      DATA t236 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t236.
      DATA t237 TYPE REF TO object.
      CLEAR t237.
      DATA(t238) = VALUE i( ).
      DO.
        t188->load( ).
        IF t238 >= lines( t188->items ).
          EXIT.
        ENDIF.
        CLEAR t237.
        READ TABLE t188->items INDEX t238 + 1 INTO t237.
        t238 = t238 + 1.
        DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t239.
        CLEAR t236.
        IF t237 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t239 ?= t237.
          DATA t240 TYPE REF TO object.
          t240 = t239->as_ref( ).
          t236 ?= t240.
        ELSE.
          t236 ?= t237.
        ENDIF.
        DATA(t241) = t186.
        DATA t242 TYPE string.
        DATA t243 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t244) = t236.
        t243 = t244.
        DATA t245 TYPE string.
        DATA(t246) = t243.
        t245 = t246->str.
        t242 = t245.
        t241->load( ).
        APPEND t242 TO t241->items.
        t241->save( ).
      ENDDO.
      DATA(t247) = t186.
      t185 = t247.
      DATA(t248) = ||.
      DATA(t249) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t249->has = abap_true.
      t249->value = t248.
      t184 = t185->join( p0 = t249 ).
      t183 = t184.
      DATA(t250) = VALUE string( ).
      DATA t251 TYPE abap_bool.
      DATA(t252) = t183.
      t251 = xsdbool( strlen( t252 ) > 0 ).
      IF t251 = abap_true.
        DATA(t253) = t183.
        t250 = t253.
      ELSE.
        DATA(t254) = |ERROR|.
        t250 = t254.
      ENDIF.
      t182 = t250.
      t181 = t182.
      DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t255.
      DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t256.
      DATA t257 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t257.
      DATA t258 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t258.
      DATA t259 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t259.
      DATA t260 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t260.
      DATA t261 TYPE REF TO zcl_lnt_expression_node.
      DATA(t262) = t125.
      t261 = t262.
      DATA t263 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t263.
      DATA(t264) = VALUE abap_bool( ).
      DATA(t265) = t261.
      IF t265 IS INITIAL.
        t264 = abap_true.
      ENDIF.
      IF t264 = abap_true.
        DATA t266 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t266.
        t263 = t266.
      ELSE.
        DATA t267 TYPE REF TO zcl_lnt_expression_node.
        DATA t268 TYPE REF TO zcl_lnt_expression_node.
        DATA(t269) = t261.
        t268 = t269.
        DATA(t270) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
        t267 = t268->find_direct_expression( i_type_9913 = t270 ).
        t263 = t267.
      ENDIF.
      t260 = t263.
      t259 = t260.
      DATA t271 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t271.
      DATA(t272) = VALUE abap_bool( ).
      DATA(t273) = t259.
      IF t273 IS INITIAL.
        t272 = abap_true.
      ENDIF.
      IF t272 = abap_true.
        DATA t274 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t274.
        t271 = t274.
      ELSE.
        DATA t275 TYPE REF TO zcl_lnt_abstract_token.
        DATA t276 TYPE REF TO zcl_lnt_expression_node.
        DATA(t277) = t259.
        t276 = t277.
        t275 = t276->get_first_token( ).
        t271 = t275.
      ENDIF.
      t258 = t271.
      t257 = t258.
      DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t278.
      DATA(t279) = VALUE abap_bool( ).
      DATA(t280) = t257.
      IF t280 IS INITIAL.
        t279 = abap_true.
      ENDIF.
      IF t279 = abap_true.
        DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t281.
        t278 = t281.
      ELSE.
        DATA t282 TYPE string.
        DATA t283 TYPE REF TO zcl_lnt_abstract_token.
        DATA t284 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t285) = t257.
        t284 = t285.
        t283 = t284.
        DATA t286 TYPE string.
        DATA(t287) = t283.
        t286 = t287->str.
        t282 = t286.
        DATA(t288) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t288->has = abap_true.
        t288->value = t282.
        t278 = t288.
      ENDIF.
      t256 = t278.
      t255 = t256.
      DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t290 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t291) = me->parsed_data.
      t290 = t291.
      t289 = t290->relations.
      DATA t292 TYPE REF TO zcl_lnt_shape_35310764.
      DATA t293 TYPE string.
      DATA(t294) = t181.
      t293 = t294.
      DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t296) = t255.
      t295 = t296.
      t292 = NEW zcl_lnt_shape_35310764( i_name = t293 i_as = t295 ).
      CREATE OBJECT t292->zlnt_view_ownkeys_b0e8086400eb.
      t292->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t297.
      IF t292->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t292->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t297 ).
      ENDIF.
      DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t298.
      IF t292->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t292->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `as` p1 = t298 ).
      ENDIF.
      CREATE OBJECT t292->zlnt_json_ownkeys_70e5fd461788.
      t292->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t299) = |name|.
      DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t300.
      IF t292->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = t299 p1 = t300 ).
      ENDIF.
      DATA(t301) = |as|.
      DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t302.
      IF t292->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = t301 p1 = t302 ).
      ENDIF.
      t289->load( ).
      APPEND t292 TO t289->items.
      t289->save( ).
    ENDDO.
    DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t304) = t1.
    DATA(t305) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    t303 = t304->find_all_expressions( i_type_9913 = t305 ).
    DATA t306 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t306.
    DATA t307 TYPE REF TO object.
    CLEAR t307.
    DATA(t308) = VALUE i( ).
    DO.
      t303->load( ).
      IF t308 >= lines( t303->items ).
        EXIT.
      ENDIF.
      CLEAR t307.
      READ TABLE t303->items INDEX t308 + 1 INTO t307.
      t308 = t308 + 1.
      DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t309.
      CLEAR t306.
      IF t307 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t309 ?= t307.
        DATA t310 TYPE REF TO object.
        t310 = t309->as_ref( ).
        t306 ?= t310.
      ELSE.
        t306 ?= t307.
      ENDIF.
      DATA t311 TYPE REF TO zcl_lnt_expression_node.
      DATA t312 TYPE REF TO zcl_lnt_expression_node.
      DATA(t313) = t306.
      DATA(t314) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1092_b2702bebb604.
      t312 = t313->find_direct_expression( i_type_9913 = t314 ).
      t311 = t312.
      DATA(t315) = VALUE abap_bool( ).
      DATA t316 TYPE REF TO zcl_lnt_expression_node.
      DATA(t317) = t311.
      t316 = t317.
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t319.
      t318 = t319.
      DATA(t320) = VALUE abap_bool( ).
      DATA(t321) = t316.
      IF t321 IS INITIAL.
        t320 = abap_true.
      ENDIF.
      t315 = t320.
      IF t315 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t322 TYPE REF TO zcl_lnt_expression_node.
      DATA t323 TYPE REF TO zcl_lnt_expression_node.
      DATA t324 TYPE REF TO zcl_lnt_expression_node.
      DATA(t325) = t311.
      t324 = t325.
      DATA(t326) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
      t323 = t324->find_direct_expression( i_type_9913 = t326 ).
      t322 = t323.
      DATA t327 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t327.
      DATA t328 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t328.
      DATA(t329) = NEW zlnt_runtime_set__1827558fd4c7( ).
      DATA t330 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t330.
      DATA t331 TYPE abap_bool.
      DATA(t332) = t322.
      t331 = xsdbool( t332 IS BOUND ).
      IF t331 = abap_true.
        DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t333.
        DATA t334 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t335.
        t334 = t335.
        DATA t336 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t337 TYPE REF TO zcl_lnt_expression_node.
        DATA(t338) = t322.
        t337 = t338.
        t336 = t337->get_tokens( ).
        DATA t339 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t339.
        DATA t340 TYPE REF TO object.
        CLEAR t340.
        DATA(t341) = VALUE i( ).
        DO.
          t336->load( ).
          IF t341 >= lines( t336->items ).
            EXIT.
          ENDIF.
          CLEAR t340.
          READ TABLE t336->items INDEX t341 + 1 INTO t340.
          t341 = t341 + 1.
          DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t342.
          CLEAR t339.
          IF t340 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t342 ?= t340.
            DATA t343 TYPE REF TO object.
            t343 = t342->as_ref( ).
            t339 ?= t343.
          ELSE.
            t339 ?= t340.
          ENDIF.
          DATA(t344) = t334.
          DATA(t345) = VALUE string( ).
          DATA(t346) = VALUE string( ).
          DATA(t347) = VALUE string( ).
          DATA(t348) = VALUE string( ).
          DATA(t349) = ||.
          DATA(t350) = VALUE string( ).
          DATA t351 TYPE f.
          DATA t352 TYPE REF TO zcl_lnt_position.
          DATA t353 TYPE REF TO zcl_lnt_position.
          DATA t354 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t355) = t339.
          t354 = t355.
          DATA t356 TYPE REF TO zcl_lnt_position.
          DATA(t357) = t354.
          t356 = t357->start.
          t353 = t356.
          t352 = t353.
          DATA t358 TYPE f.
          DATA(t359) = t352.
          t358 = t359->row.
          t351 = t358.
          IF t351 <> trunc( t351 ) OR t351 > range_safe_integer OR t351 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t360) = CONV int8( t351 ).
          t350 = |{ t360 }|.
          DATA(t361) = strlen( t349 ).
          t348 = |{ t349 }{ t350 }|.
          DATA(t362) = |:|.
          DATA(t363) = strlen( t348 ).
          t347 = |{ t348 }{ t362 }|.
          DATA t364 TYPE string.
          DATA t365 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t366 TYPE REF TO zcl_lnt_position.
          DATA t367 TYPE REF TO zcl_lnt_position.
          DATA t368 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t369) = t339.
          t368 = t369.
          DATA t370 TYPE REF TO zcl_lnt_position.
          DATA(t371) = t368.
          t370 = t371->start.
          t367 = t370.
          t366 = t367.
          DATA t372 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t373) = t366.
          t372 = t373->col.
          t365 = t372.
          t364 = zlnt_runtime_numb_290eb04a9758=>text( t365 ).
          DATA(t374) = strlen( t347 ).
          t346 = |{ t347 }{ t364 }|.
          DATA(t375) = ||.
          DATA(t376) = strlen( t346 ).
          t345 = |{ t346 }{ t375 }|.
          t344->load( ).
          APPEND t345 TO t344->items.
          t344->save( ).
        ENDDO.
        DATA(t377) = t334.
        t333 = t377.
        t330 = t333.
      ELSE.
        DATA t378 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t378.
        t330 = t378.
      ENDIF.
      t328 = t329->fromarray( p0 = t330 ).
      t327 = t328.
      DATA(t379) = VALUE string( ).
      DATA(t380) = VALUE string( ).
      DATA(t381) = VALUE string( ).
      DATA(t382) = VALUE string( ).
      DATA t383 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t383.
      DATA t384 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t385 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t385.
      t384 = t385.
      DATA t386 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t386.
      DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t388 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t388.
      t387 = t388.
      DATA t389 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t390 TYPE REF TO zcl_lnt_expression_node.
      DATA(t391) = t311.
      t390 = t391.
      t389 = t390->get_tokens( ).
      DATA t392 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t392.
      DATA t393 TYPE REF TO object.
      CLEAR t393.
      DATA(t394) = VALUE i( ).
      DO.
        t389->load( ).
        IF t394 >= lines( t389->items ).
          EXIT.
        ENDIF.
        CLEAR t393.
        READ TABLE t389->items INDEX t394 + 1 INTO t393.
        t394 = t394 + 1.
        DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t395.
        CLEAR t392.
        IF t393 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t395 ?= t393.
          DATA t396 TYPE REF TO object.
          t396 = t395->as_ref( ).
          t392 ?= t396.
        ELSE.
          t392 ?= t393.
        ENDIF.
        DATA(t397) = VALUE abap_bool( ).
        DATA(t398) = VALUE abap_bool( ).
        DATA(t399) = t327.
        DATA(t400) = VALUE string( ).
        DATA(t401) = VALUE string( ).
        DATA(t402) = VALUE string( ).
        DATA(t403) = VALUE string( ).
        DATA(t404) = ||.
        DATA(t405) = VALUE string( ).
        DATA t406 TYPE f.
        DATA t407 TYPE REF TO zcl_lnt_position.
        DATA t408 TYPE REF TO zcl_lnt_position.
        DATA t409 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t410) = t392.
        t409 = t410.
        DATA t411 TYPE REF TO zcl_lnt_position.
        DATA(t412) = t409.
        t411 = t412->start.
        t408 = t411.
        t407 = t408.
        DATA t413 TYPE f.
        DATA(t414) = t407.
        t413 = t414->row.
        t406 = t413.
        IF t406 <> trunc( t406 ) OR t406 > range_safe_integer OR t406 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t415) = CONV int8( t406 ).
        t405 = |{ t415 }|.
        DATA(t416) = strlen( t404 ).
        t403 = |{ t404 }{ t405 }|.
        DATA(t417) = |:|.
        DATA(t418) = strlen( t403 ).
        t402 = |{ t403 }{ t417 }|.
        DATA t419 TYPE string.
        DATA t420 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t421 TYPE REF TO zcl_lnt_position.
        DATA t422 TYPE REF TO zcl_lnt_position.
        DATA t423 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t424) = t392.
        t423 = t424.
        DATA t425 TYPE REF TO zcl_lnt_position.
        DATA(t426) = t423.
        t425 = t426->start.
        t422 = t425.
        t421 = t422.
        DATA t427 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t428) = t421.
        t427 = t428->col.
        t420 = t427.
        t419 = zlnt_runtime_numb_290eb04a9758=>text( t420 ).
        DATA(t429) = strlen( t402 ).
        t401 = |{ t402 }{ t419 }|.
        DATA(t430) = ||.
        DATA(t431) = strlen( t401 ).
        t400 = |{ t401 }{ t430 }|.
        t398 = t399->has( p0 = t400 ).
        t397 = xsdbool( t398 = abap_false ).
        IF t397 = abap_true.
          DATA(t432) = t387.
          DATA(t433) = t392.
          t432->load( ).
          APPEND t433 TO t432->items.
          t432->save( ).
        ENDIF.
      ENDDO.
      DATA(t434) = t387.
      t386 = t434.
      DATA t435 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t435.
      DATA t436 TYPE REF TO object.
      CLEAR t436.
      DATA(t437) = VALUE i( ).
      DO.
        t386->load( ).
        IF t437 >= lines( t386->items ).
          EXIT.
        ENDIF.
        CLEAR t436.
        READ TABLE t386->items INDEX t437 + 1 INTO t436.
        t437 = t437 + 1.
        DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t438.
        CLEAR t435.
        IF t436 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t438 ?= t436.
          DATA t439 TYPE REF TO object.
          t439 = t438->as_ref( ).
          t435 ?= t439.
        ELSE.
          t435 ?= t436.
        ENDIF.
        DATA(t440) = t384.
        DATA t441 TYPE string.
        DATA t442 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t443) = t435.
        t442 = t443.
        DATA t444 TYPE string.
        DATA(t445) = t442.
        t444 = t445->str.
        t441 = t444.
        t440->load( ).
        APPEND t441 TO t440->items.
        t440->save( ).
      ENDDO.
      DATA(t446) = t384.
      t383 = t446.
      DATA(t447) = ||.
      DATA(t448) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t448->has = abap_true.
      t448->value = t447.
      t382 = t383->join( p0 = t448 ).
      t381 = t382.
      DATA(t449) = VALUE string( ).
      DATA t450 TYPE abap_bool.
      DATA(t451) = t381.
      t450 = xsdbool( strlen( t451 ) > 0 ).
      IF t450 = abap_true.
        DATA(t452) = t381.
        t449 = t452.
      ELSE.
        DATA(t453) = |ERROR|.
        t449 = t453.
      ENDIF.
      t380 = t449.
      t379 = t380.
      DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t454.
      DATA t455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t455.
      DATA t456 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t456.
      DATA t457 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t457.
      DATA t458 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t458.
      DATA t459 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t459.
      DATA t460 TYPE REF TO zcl_lnt_expression_node.
      DATA(t461) = t322.
      t460 = t461.
      DATA t462 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t462.
      DATA(t463) = VALUE abap_bool( ).
      DATA(t464) = t460.
      IF t464 IS INITIAL.
        t463 = abap_true.
      ENDIF.
      IF t463 = abap_true.
        DATA t465 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t465.
        t462 = t465.
      ELSE.
        DATA t466 TYPE REF TO zcl_lnt_expression_node.
        DATA t467 TYPE REF TO zcl_lnt_expression_node.
        DATA(t468) = t460.
        t467 = t468.
        DATA(t469) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
        t466 = t467->find_direct_expression( i_type_9913 = t469 ).
        t462 = t466.
      ENDIF.
      t459 = t462.
      t458 = t459.
      DATA t470 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t470.
      DATA(t471) = VALUE abap_bool( ).
      DATA(t472) = t458.
      IF t472 IS INITIAL.
        t471 = abap_true.
      ENDIF.
      IF t471 = abap_true.
        DATA t473 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t473.
        t470 = t473.
      ELSE.
        DATA t474 TYPE REF TO zcl_lnt_abstract_token.
        DATA t475 TYPE REF TO zcl_lnt_expression_node.
        DATA(t476) = t458.
        t475 = t476.
        t474 = t475->get_first_token( ).
        t470 = t474.
      ENDIF.
      t457 = t470.
      t456 = t457.
      DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t477.
      DATA(t478) = VALUE abap_bool( ).
      DATA(t479) = t456.
      IF t479 IS INITIAL.
        t478 = abap_true.
      ENDIF.
      IF t478 = abap_true.
        DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t480.
        t477 = t480.
      ELSE.
        DATA t481 TYPE string.
        DATA t482 TYPE REF TO zcl_lnt_abstract_token.
        DATA t483 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t484) = t456.
        t483 = t484.
        t482 = t483.
        DATA t485 TYPE string.
        DATA(t486) = t482.
        t485 = t486->str.
        t481 = t485.
        DATA(t487) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t487->has = abap_true.
        t487->value = t481.
        t477 = t487.
      ENDIF.
      t455 = t477.
      t454 = t455.
      DATA t488 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t489 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t490) = me->parsed_data.
      t489 = t490.
      t488 = t489->associations.
      DATA t491 TYPE REF TO zcl_lnt_shape_35310764.
      DATA t492 TYPE string.
      DATA(t493) = t379.
      t492 = t493.
      DATA t494 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t495) = t454.
      t494 = t495.
      t491 = NEW zcl_lnt_shape_35310764( i_name = t492 i_as = t494 ).
      CREATE OBJECT t491->zlnt_view_ownkeys_b0e8086400eb.
      t491->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t496.
      IF t491->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t491->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t496 ).
      ENDIF.
      DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t497.
      IF t491->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t491->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `as` p1 = t497 ).
      ENDIF.
      CREATE OBJECT t491->zlnt_json_ownkeys_70e5fd461788.
      t491->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t498) = |name|.
      DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t499.
      IF t491->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t491->zlnt_json_ownkeys_70e5fd461788->put( p0 = t498 p1 = t499 ).
      ENDIF.
      DATA(t500) = |as|.
      DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t501.
      IF t491->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t491->zlnt_json_ownkeys_70e5fd461788->put( p0 = t500 p1 = t501 ).
      ENDIF.
      t488->load( ).
      APPEND t491 TO t488->items.
      t488->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_dfn_ts_dt_dfn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD parse_type.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t5) = t1.
    t4 = me->pr_ty_in_sr_ob_dt_df_ts_dt_dfn( i_reg_f149 = t5 ).
    result = t4.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1236_6872bb1bca37.
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~parse_type.
    result = me->parse_type( i_reg_f149 = i_reg_f149 i_data_element = i_data_element i_description = i_description ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~update_file.
    me->update_file( i_file = i_file ).
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
