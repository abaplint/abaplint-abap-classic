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
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
    CLEAR me->parser_error.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parserError`.
    CLEAR me->parsed_data.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
  ENDMETHOD.

  METHOD get_type.
    result = |DDLS|.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 40 ).
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

  METHOD get_sql_view_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_dfn_ts_dt_dfn( ) ).
    DATA t3 TYPE REF TO zcl_lnt_parsed_data_definition.
    t3 = me->parsed_data.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_parsed_data_definition.
      t10 = t3.
      t9 = t10->sql_view_name.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_definition_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_dfn_ts_dt_dfn( ) ).
    DATA t3 TYPE REF TO zcl_lnt_parsed_data_definition.
    t3 = me->parsed_data.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_parsed_data_definition.
      t10 = t3.
      t9 = t10->definition_name.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_dfn_ts_dt_dfn( ) ).
    DATA t3 TYPE REF TO zcl_lnt_parsed_data_definition.
    t3 = me->parsed_data.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_parsed_data_definition.
      t10 = t3.
      t9 = t10->description.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD pr_ty_in_sr_ob_dt_df_ts_dt_dfn.
    DATA(t1) = i_reg_f149.
    DATA(t2) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_dfn_ts_dt_dfn( ) ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t4) = NEW zcl_lnt_cds_determine_types( ).
    DATA t6 TYPE REF TO zcl_lnt_parsed_data_definition.
    t6 = me->parsed_data.
    DATA t8 TYPE string.
    DATA t9 TYPE REF TO zcl_lnt_abstract_object.
    t9 = me.
    DATA t11 TYPE string.
    t11 = t9->name.
    t8 = t11.
    t3 = t4->parse_type( i_reg_f149 = t1 i_parsed_data = t6 i_ddls_name = t8 ).
    result = t3.

  ENDMETHOD.

  METHOD get_parsed_data.
    result = me->parsed_data.

  ENDMETHOD.

  METHOD list_sources.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_dfn_ts_dt_dfn( ) ).
    DATA t3 TYPE REF TO zcl_lnt_parsed_data_definition.
    t3 = me->parsed_data.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zcl_lnt_parsed_data_definition.
      t10 = t3.
      t9 = t10->sources.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_data.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    CLEAR me->parser_error.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parserError`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD find_source_file.
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
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE string.
      t28 = t18->get_filename( ).
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
      DATA t47 TYPE i.
      DATA(t49) = 1.
      t47 = t11 + t49.
      t11 = t47.
    ENDDO.
    result = t13.

  ENDMETHOD.

  METHOD has_parser_error.
    result = me->parser_error.

  ENDMETHOD.

  METHOD list_keys.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_dfn_ts_dt_dfn( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_parsed_data_definition.
    t7 = me->parsed_data.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = xsdbool( t7 IS INITIAL ).
    IF t10 = abap_true.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zcl_lnt_parsed_data_definition.
      t14 = t7.
      t13 = t14->fields_464c.
      t9 = t13.
    ENDIF.
    t5 = t9.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE abap_bool.
    t17 = xsdbool( t5 IS BOUND ).
    IF t17 = abap_true.
      t16 = t5.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t21.
      t16 = t21.
    ENDIF.
    t4 = t16.
    DATA t22 TYPE REF TO zcl_lnt_shape_5383185c.
    DATA t23 TYPE REF TO object.
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
      t28 = t22->key.
      t27 = xsdbool( t28 = abap_true ).
      IF t27 = abap_true.
        DATA t32 TYPE string.
        t32 = t22->name.
        t2->load( ).
        APPEND t32 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD pr_in_src_obj_dt_dfn_ts_dt_dfn.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE REF TO zcl_lnt_abstract_object.
    t3 = me.
    DATA t5 TYPE abap_bool.
    t5 = t3->dirty.
    t2 = t5.
    t1 = xsdbool( t2 = abap_false ).
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_iparse_result.
      DATA t9 TYPE abap_bool.
      t9 = abap_false.
      DATA t11 TYPE f.
      DATA(t12) = CONV f( 0 ).
      t11 = t12.
      DATA t13 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t8 = NEW zcl_lnt_iparse_result( i_updated = t9 i_runtime = t11 i_runtime_extra = t13 ).
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
      DATA(t17) = |updated|.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
      DATA(t19) = |runtime|.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
      ENDIF.
      result = t8.
      RETURN.
    ENDIF.
    DATA t22 TYPE f.
    DATA(t23) = 0.
    t22 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t26 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zif_lnt_file.
    t37 = CAST zif_lnt_file( me->find_source_file( ) ).
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t40) = xsdbool( t37 IS INITIAL ).
    IF t40 = abap_true.
    ELSE.
      DATA t43 TYPE string.
      DATA t44 TYPE REF TO zif_lnt_file.
      t44 = t37.
      t43 = t44->get_raw( ).
      DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t46->has = abap_true.
      t46->value = t43.
      t39 = t46.
    ENDIF.
    t35 = t39.
    DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t48) = VALUE abap_bool( ).
    IF t35 IS INITIAL.
      t48 = abap_true.
    ELSEIF t35->has = abap_false.
      t48 = abap_true.
    ENDIF.
    IF t48 = abap_true.
    ELSE.
      DATA t53 TYPE string.
      t53 = t35->value.
      DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t57 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t58) = `@EndUserText\.label: '([\w,.:-=#%&() ]+)'`.
      DATA(t59) = `@EndUserText\.label: '([A-Za-z0-9_,.:-=#%&() ]+)'`.
      DATA(t60) = ||.
      CREATE OBJECT t57 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t59 flags = t60.
      t57->source = t58.
      t55 = t57->match( t53 ).
      t47 = t55.
    ENDIF.
    t33 = t47.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t62 TYPE abap_bool.
    t62 = xsdbool( t33 IS BOUND ).
    IF t62 = abap_true.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t65 = t33.
      DATA(t67) = 1.
      t64 = t65->get( p0 = t67 ).
      t61 = t64.
    ELSE.
      CLEAR t61.
    ENDIF.
    t31 = t61.
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
    t26 = NEW zcl_lnt_parsed_data_definition( i_sql_view_name = t27 i_definition_name = t29 i_description = t31 i_fields_62af = t69 i_sources = t71 i_associations = t75 i_relations = t73 i_tree = t77 ).
    CREATE OBJECT t26->zlnt_view_ownkeys_b0e8086400eb.
    t26->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sqlViewName` p1 = t79 ).
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionName` p1 = t80 ).
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t81 ).
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fields` p1 = t82 ).
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sources` p1 = t83 ).
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `relations` p1 = t84 ).
    ENDIF.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `associations` p1 = t85 ).
    ENDIF.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tree` p1 = t86 ).
    ENDIF.
    CREATE OBJECT t26->zlnt_json_ownkeys_70e5fd461788.
    t26->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t87) = |sqlViewName|.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t87 p1 = t88 ).
    DATA(t89) = |definitionName|.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
    ENDIF.
    DATA(t91) = |description|.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
    ENDIF.
    DATA(t93) = |fields|.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
    ENDIF.
    DATA(t95) = |sources|.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
    ENDIF.
    DATA(t97) = |relations|.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
    ENDIF.
    DATA(t99) = |associations|.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t99 p1 = t100 ).
    ENDIF.
    DATA(t101) = |tree|.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
    ENDIF.
    me->parsed_data = t26.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t108 TYPE REF TO zif_lnt_file.
    t108 = CAST zif_lnt_file( me->find_source_file( ) ).
    DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t111) = xsdbool( t108 IS INITIAL ).
    IF t111 = abap_true.
    ELSE.
      DATA t114 TYPE string.
      DATA t115 TYPE REF TO zif_lnt_file.
      t115 = t108.
      t114 = t115->get_raw( ).
      DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t117->has = abap_true.
      t117->value = t114.
      t110 = t117.
    ENDIF.
    t106 = t110.
    DATA t118 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t119) = VALUE abap_bool( ).
    IF t106 IS INITIAL.
      t119 = abap_true.
    ELSEIF t106->has = abap_false.
      t119 = abap_true.
    ENDIF.
    IF t119 = abap_true.
    ELSE.
      DATA t124 TYPE string.
      t124 = t106->value.
      DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t128 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t129) = `@AbapCatalog\.sqlViewName: '([\w/]+)'`.
      DATA(t130) = `@AbapCatalog\.sqlViewName: '([A-Za-z0-9_/]+)'`.
      DATA(t131) = ||.
      CREATE OBJECT t128 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t130 flags = t131.
      t128->source = t129.
      t126 = t128->match( t124 ).
      t118 = t126.
    ENDIF.
    t104 = t118.
    DATA t132 TYPE abap_bool.
    t132 = xsdbool( t104 IS BOUND ).
    IF t132 = abap_true.
      DATA t134 TYPE REF TO zcl_lnt_parsed_data_definition.
      t134 = me->parsed_data.
      DATA t138 TYPE string.
      DATA t139 TYPE string.
      DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t141 = t104.
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
      t134->sql_view_name = t145.
      DELETE t134->zlnt_record_delet_0597644d88b4 WHERE table_line = `sqlViewName`.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t134->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t134->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sqlViewName` p1 = t147 ).
      ENDIF.
      DATA(t148) = |sqlViewName|.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t134->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t134->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
      ENDIF.
    ENDIF.
    DATA t150 TYPE REF TO zcl_lnt_parsed_data_definition.
    t150 = me->parsed_data.
    DATA t152 TYPE REF TO zcl_lnt_expression_node.
    DATA(t153) = NEW zcl_lnt_cds_parser( ).
    DATA(t154) = CAST zif_lnt_file( me->find_source_file( ) ).
    t152 = t153->parse( i_file = t154 ).
    t150->tree = t152.
    DELETE t150->zlnt_record_delet_0597644d88b4 WHERE table_line = `tree`.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tree` p1 = t155 ).
    ENDIF.
    DATA(t156) = |tree|.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
    ENDIF.
    DATA t158 TYPE abap_bool.
    DATA t159 TYPE REF TO zcl_lnt_expression_node.
    DATA t160 TYPE REF TO zcl_lnt_parsed_data_definition.
    t160 = me->parsed_data.
    t159 = t160->tree.
    t158 = xsdbool( t159 IS BOUND ).
    IF t158 = abap_true.
      DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t165 TYPE REF TO zcl_lnt_expression_node.
      DATA t167 TYPE REF TO zcl_lnt_expression_node.
      DATA t168 TYPE REF TO zcl_lnt_parsed_data_definition.
      t168 = me->parsed_data.
      t167 = t168->tree.
      t165 = t167.
      DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t171) = xsdbool( t165 IS INITIAL ).
      IF t171 = abap_true.
      ELSE.
        DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t176 TYPE REF TO zcl_lnt_abstract_node.
        t176 = t165.
        DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t178 = t176->children.
        t175 = t178.
        t174 ?= t175.
        t170 = t174.
      ENDIF.
      t163 = t170.
      DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t181 TYPE abap_bool.
      t181 = xsdbool( t163 IS BOUND ).
      IF t181 = abap_true.
        t180 = t163.
      ELSE.
        DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t185.
        t180 = t185.
      ENDIF.
      t162 = t180.
      DATA t186 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t187 TYPE REF TO object.
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
        t192 = t186->get_db65( ).
        t191 = xsdbool( t192 IS BOUND AND t192 IS INSTANCE OF zcl_lnt_cds_annotation ).
        IF t191 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t194 TYPE abap_bool.
        t194 = xsdbool( t186 IS BOUND AND t186 IS INSTANCE OF zcl_lnt_expression_node ).
        IF t194 = abap_true.
          DATA t196 TYPE REF TO zcl_lnt_parsed_data_definition.
          t196 = me->parsed_data.
          DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t199.
          DATA t201 TYPE REF TO zcl_lnt_expression_node.
          DATA t202 TYPE REF TO zcl_lnt_expression_node.
          DATA t203 TYPE REF TO zcl_lnt_expression_node.
          DATA t205 TYPE REF TO object.
          t205 = t186.
          t203 ?= t205.
          DATA(t206) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
          t202 = t203->find_first_expression( i_type_9913 = t206 ).
          t201 = t202.
          DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t207.
          DATA(t208) = xsdbool( t201 IS INITIAL ).
          IF t208 = abap_true.
            CLEAR t207.
          ELSE.
            DATA t211 TYPE string.
            DATA t212 TYPE REF TO zcl_lnt_expression_node.
            t212 = t201.
            t211 = t212->concat_tokens( ).
            DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t214->has = abap_true.
            t214->value = t211.
            t207 = t214.
          ENDIF.
          t199 = t207.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t215.
          DATA(t216) = VALUE abap_bool( ).
          IF t199 IS INITIAL.
            t216 = abap_true.
          ELSEIF t199->has = abap_false.
            t216 = abap_true.
          ENDIF.
          IF t216 = abap_true.
            CLEAR t215.
          ELSE.
            DATA t219 TYPE string.
            DATA t220 TYPE string.
            t220 = t199->value.
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
          t196->definition_name = t215.
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
      t233 = me->parsed_data.
      t232 = t233->tree.
      t231 = t232.
      me->find_sources_and_relations( i_tree = t231 ).
      DATA t235 TYPE REF TO zcl_lnt_expression_node.
      DATA t236 TYPE REF TO zcl_lnt_expression_node.
      DATA t237 TYPE REF TO zcl_lnt_parsed_data_definition.
      t237 = me->parsed_data.
      t236 = t237->tree.
      t235 = t236.
      me->find_field_names( i_tree = t235 ).
    ELSE.
      DATA(t242) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t242->has = abap_true.
      t242->value = abap_true.
      me->parser_error = t242.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parserError`.
    ENDIF.
    me->dirty = abap_false.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dirty`.
    DATA t245 TYPE REF TO zcl_lnt_iparse_result.
    DATA t246 TYPE abap_bool.
    t246 = abap_true.
    DATA t248 TYPE f.
    DATA t249 TYPE f.
    DATA t250 TYPE f.
    DATA(t251) = 0.
    t250 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t249 = t250 - t22.
    t248 = t249.
    DATA t253 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t245 = NEW zcl_lnt_iparse_result( i_updated = t246 i_runtime = t248 i_runtime_extra = t253 ).
    CREATE OBJECT t245->zlnt_view_ownkeys_b0e8086400eb.
    t245->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t255 ).
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t256 ).
    ENDIF.
    CREATE OBJECT t245->zlnt_json_ownkeys_70e5fd461788.
    t245->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t257) = |updated|.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t257 p1 = t258 ).
    DATA(t259) = |runtime|.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t259 p1 = t260 ).
    ENDIF.
    result = t245.

  ENDMETHOD.

  METHOD get_tree.
    DATA t2 TYPE REF TO zcl_lnt_parsed_data_definition.
    t2 = me->parsed_data.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = xsdbool( t2 IS INITIAL ).
    IF t5 = abap_true.
    ELSE.
      DATA t8 TYPE REF TO zcl_lnt_expression_node.
      DATA t9 TYPE REF TO zcl_lnt_parsed_data_definition.
      t9 = t2.
      t8 = t9->tree.
      t4 = t8.
    ENDIF.
    result = t4.

  ENDMETHOD.

  METHOD find_sql_view_name.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t5 TYPE REF TO zif_lnt_file.
    t5 = CAST zif_lnt_file( me->find_source_file( ) ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t8) = xsdbool( t5 IS INITIAL ).
    IF t8 = abap_true.
    ELSE.
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zif_lnt_file.
      t12 = t5.
      t11 = t12->get_raw( ).
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t11.
      t7 = t14.
    ENDIF.
    t3 = t7.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t16) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t16 = abap_true.
    ELSEIF t3->has = abap_false.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
    ELSE.
      DATA t21 TYPE string.
      t21 = t3->value.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t25 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t26) = `@AbapCatalog\.sqlViewName: '([\w/]+)'`.
      DATA(t27) = `@AbapCatalog\.sqlViewName: '([A-Za-z0-9_/]+)'`.
      DATA(t28) = ||.
      CREATE OBJECT t25 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t27 flags = t28.
      t25->source = t26.
      t23 = t25->match( t21 ).
      t15 = t23.
    ENDIF.
    t1 = t15.
    DATA t29 TYPE abap_bool.
    t29 = xsdbool( t1 IS BOUND ).
    IF t29 = abap_true.
      DATA t31 TYPE REF TO zcl_lnt_parsed_data_definition.
      t31 = me->parsed_data.
      DATA t35 TYPE string.
      DATA t36 TYPE string.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t38 = t1.
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
      t31->sql_view_name = t42.
      DELETE t31->zlnt_record_delet_0597644d88b4 WHERE table_line = `sqlViewName`.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sqlViewName` p1 = t44 ).
      ENDIF.
      DATA(t45) = |sqlViewName|.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD find_description.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t5 TYPE REF TO zif_lnt_file.
    t5 = CAST zif_lnt_file( me->find_source_file( ) ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t8) = xsdbool( t5 IS INITIAL ).
    IF t8 = abap_true.
    ELSE.
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zif_lnt_file.
      t12 = t5.
      t11 = t12->get_raw( ).
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t11.
      t7 = t14.
    ENDIF.
    t3 = t7.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t16) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t16 = abap_true.
    ELSEIF t3->has = abap_false.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
    ELSE.
      DATA t21 TYPE string.
      t21 = t3->value.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t25 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t26) = `@EndUserText\.label: '([\w,.:-=#%&() ]+)'`.
      DATA(t27) = `@EndUserText\.label: '([A-Za-z0-9_,.:-=#%&() ]+)'`.
      DATA(t28) = ||.
      CREATE OBJECT t25 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t27 flags = t28.
      t25->source = t26.
      t23 = t25->match( t21 ).
      t15 = t23.
    ENDIF.
    t1 = t15.
    DATA t29 TYPE abap_bool.
    t29 = xsdbool( t1 IS BOUND ).
    IF t29 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t32 = t1.
      DATA(t34) = 1.
      t31 = t32->get( p0 = t34 ).
      result = t31.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD find_field_names.
    DATA(t1) = i_tree.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1112_606bcf340c7d.
    t3 = t1->find_first_expression( i_type_9913 = t5 ).
    t2 = t3.
    DATA(t6) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t6 = xsdbool( t2 IS INITIAL ).
    IF t6 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1086_e2f8f5b9ee22.
      t13 = t1->find_first_expression( i_type_9913 = t15 ).
      t2 = t13.
    ENDIF.
    DATA(t16) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16 = xsdbool( t2 IS INITIAL ).
    IF t16 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1105_a133f02ea9f8.
      t23 = t1->find_first_expression( i_type_9913 = t25 ).
      t2 = t23.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    t29 = t2.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t32) = xsdbool( t29 IS INITIAL ).
    IF t32 = abap_true.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      t36 = t29.
      DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
      t35 = t36->find_direct_expressions( i_type_9913 = t38 ).
      t31 = t35.
    ENDIF.
    t27 = t31.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE abap_bool.
    t40 = xsdbool( t27 IS BOUND ).
    IF t40 = abap_true.
      t39 = t27.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t44.
      t39 = t44.
    ENDIF.
    t26 = t39.
    DATA t45 TYPE REF TO zcl_lnt_expression_node.
    DATA t46 TYPE REF TO object.
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
      t50 = ||.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      DATA t54 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t54.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
      t57 = t45->find_direct_expression( i_type_9913 = t59 ).
      t56 = t57.
      DATA t60 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t60.
      DATA(t61) = xsdbool( t56 IS INITIAL ).
      IF t61 = abap_true.
        CLEAR t60.
      ELSE.
        DATA t64 TYPE REF TO zcl_lnt_expression_node.
        DATA t65 TYPE REF TO zcl_lnt_expression_node.
        t65 = t56.
        DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
        t64 = t65->find_direct_expression( i_type_9913 = t67 ).
        t60 = t64.
      ENDIF.
      t54 = t60.
      DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t68.
      DATA t70 TYPE REF TO zcl_lnt_expression_node.
      DATA t71 TYPE REF TO zcl_lnt_expression_node.
      DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
      t71 = t45->find_direct_expression( i_type_9913 = t73 ).
      t70 = t71.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t74.
      DATA(t75) = xsdbool( t70 IS INITIAL ).
      IF t75 = abap_true.
        CLEAR t74.
      ELSE.
        DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t79 TYPE REF TO zcl_lnt_expression_node.
        t79 = t70.
        DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
        t78 = t79->find_all_expressions( i_type_9913 = t81 ).
        t74 = t78.
      ENDIF.
      t68 = t74.
      DATA(t82) = VALUE abap_bool( ).
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = xsdbool( t68 IS INITIAL ).
      t87 = xsdbool( t88 = abap_false ).
      t82 = t87.
      IF t82 = abap_true.
        DATA(t90) = VALUE abap_bool( ).
        DATA t91 TYPE abap_bool.
        DATA t92 TYPE abap_bool.
        DATA t93 TYPE i.
        DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t94 = t68.
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
          t100 = t45->concat_tokens( ).
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
        t109 = t68.
        t109->load( ).
        t108 = lines( t109->items ).
        DATA(t111) = 1.
        t107 = xsdbool( t108 > t111 ).
        t106 = t107.
        IF t107 = abap_true.
          DATA t112 TYPE abap_bool.
          t112 = xsdbool( t90 = abap_false ).
          t106 = t112.
        ENDIF.
        IF t106 = abap_true.
          DATA(t115) = VALUE string( ).
          DATA t116 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t116.
          DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t117 = t68.
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
          DATA(t124) = VALUE string( ).
          DATA t125 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t125.
          DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t126 = t68.
          DATA t128 TYPE i.
          DATA t129 TYPE i.
          DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t130 = t68.
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
          t52 = t136.
        ENDIF.
        DATA(t138) = VALUE abap_bool( ).
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        t138 = xsdbool( t54 IS INITIAL ).
        IF t138 = abap_true.
          DATA t147 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t147.
          DATA t148 TYPE abap_bool.
          t148 = xsdbool( t90 = abap_true ).
          IF t148 = abap_true.
            DATA t151 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t151.
            DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t152 = t68.
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
            t158 = t68.
            DATA t160 TYPE i.
            DATA t161 TYPE i.
            DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t162 = t68.
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
          t54 = t147.
        ENDIF.
      ENDIF.
      DATA(t169) = VALUE abap_bool( ).
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t172.
      t169 = xsdbool( t54 IS INITIAL ).
      IF t169 = abap_true.
        DATA(t176) = VALUE abap_bool( ).
        DATA t178 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t180) = |VIRTUAL|.
        t178 = t45->find_direct_token_by_text( i_text = t180 ).
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        DATA(t183) = VALUE abap_bool( ).
        DATA(t184) = xsdbool( t178 IS INITIAL ).
        t183 = xsdbool( t184 = abap_false ).
        t176 = t183.
        IF t176 = abap_true.
          DATA t186 TYPE REF TO zcl_lnt_expression_node.
          DATA(t188) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
          t186 = t45->find_first_expression( i_type_9913 = t188 ).
          t54 = t186.
        ENDIF.
      ENDIF.
      DATA(t189) = VALUE abap_bool( ).
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t192.
      t189 = xsdbool( t54 IS INITIAL ).
      IF t189 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t196.
      DATA t198 TYPE REF TO zcl_lnt_expression_node.
      t198 = t54.
      DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t201.
      DATA(t202) = xsdbool( t198 IS INITIAL ).
      IF t202 = abap_true.
        CLEAR t201.
      ELSE.
        DATA t205 TYPE string.
        t205 = t198->concat_tokens( ).
        DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t207->has = abap_true.
        t207->value = t205.
        t201 = t207.
      ENDIF.
      t196 = t201.
      DATA(t208) = VALUE abap_bool( ).
      DATA t209 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t209.
      DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t210.
      DATA t212 TYPE REF TO zcl_lnt_parsed_data_definition.
      t212 = me->parsed_data.
      DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t214.
      DATA(t215) = xsdbool( t212 IS INITIAL ).
      IF t215 = abap_true.
        CLEAR t214.
      ELSE.
        DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t219 TYPE REF TO zcl_lnt_parsed_data_definition.
        t219 = t212.
        t218 = t219->associations.
        t214 = t218.
      ENDIF.
      t210 = t214.
      DATA t221 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t221.
      DATA(t222) = xsdbool( t210 IS INITIAL ).
      IF t222 = abap_true.
        CLEAR t221.
      ELSE.
        DATA(t225) = VALUE abap_bool( ).
        DATA t226 TYPE abap_bool.
        t226 = abap_false.
        DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t228 = t210.
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
          t238 = t230->name.
          DATA(t240) = strlen( t238 ).
          t237 = t238.
          IF t237 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t237 TO UPPER CASE.
          ELSE.
            t237 = zlnt_runtime_uppe_91169605024d=>full( t237 ).
          ENDIF.
          DATA t241 TYPE string.
          DATA t242 TYPE string.
          t242 = t196->value.
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
            t248 = t230->as.
            t247 = t248.
            DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t250.
            DATA(t251) = VALUE abap_bool( ).
            IF t247 IS INITIAL.
              t251 = abap_true.
            ELSEIF t247->has = abap_false.
              t251 = abap_true.
            ENDIF.
            IF t251 = abap_true.
              CLEAR t250.
            ELSE.
              DATA t254 TYPE string.
              DATA t255 TYPE string.
              t255 = t247->value.
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
            DATA t261 TYPE string.
            DATA t262 TYPE string.
            t262 = t196->value.
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
            t226 = abap_true.
            EXIT.
          ENDIF.
        ENDDO.
        t225 = t226.
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
      DATA(t276) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
      t274 = t45->find_direct_expressions( i_type_9913 = t276 ).
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
        DATA t283 TYPE string.
        t283 = t277->concat_tokens( ).
        t272->load( ).
        APPEND t283 TO t272->items.
        t272->save( ).
      ENDDO.
      DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t286 TYPE REF TO zcl_lnt_parsed_data_definition.
      t286 = me->parsed_data.
      t285 = t286->fields_464c.
      DATA t288 TYPE REF TO zcl_lnt_shape_5383185c.
      CLEAR t288.
      DATA t289 TYPE string.
      DATA t290 TYPE string.
      t290 = t196->value.
      t289 = t290.
      DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t292 = t52.
      DATA t294 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t294.
      t294 = t272.
      DATA t299 TYPE string.
      t299 = t50.
      DATA(t301) = VALUE abap_bool( ).
      DATA(t302) = VALUE abap_bool( ).
      DATA t304 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t306) = |KEY|.
      t304 = t45->find_direct_token_by_text( i_text = t306 ).
      DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t307.
      DATA(t309) = VALUE abap_bool( ).
      DATA(t310) = xsdbool( t304 IS INITIAL ).
      t309 = xsdbool( t310 = abap_false ).
      t302 = t309.
      t301 = t302.
      t288 = NEW zcl_lnt_shape_5383185c( i_key = t301 i_name = t289 i_name_in_source = t292 i_prefix = t299 i_annotations = t294 ).
      CREATE OBJECT t288->zlnt_view_ownkeys_b0e8086400eb.
      t288->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t312.
      t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t312 ).
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
      t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t317 p1 = t318 ).
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
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    t2 = t1->find_all_expressions( i_type_9913 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO object.
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
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      DATA t18 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t18.
      DATA t19 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_node.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_abstract_node.
      t21 = t5.
      DATA t25 TYPE REF TO zif_lnt_node.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t26 = t21->children.
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
      t20 = t25.
      t19 ?= t20.
      t18 = t19.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA(t33) = xsdbool( t18 IS INITIAL ).
      IF t33 = abap_true.
        CLEAR t32.
      ELSE.
        DATA t36 TYPE string.
        DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
        t37 = t18.
        t36 = t37->concat_tokens( ).
        DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t39->has = abap_true.
        t39->value = t36.
        t32 = t39.
      ENDIF.
      t16 = t32.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      IF t16 IS INITIAL.
        t41 = abap_true.
      ELSEIF t16->has = abap_false.
        t41 = abap_true.
      ENDIF.
      IF t41 = abap_true.
        CLEAR t40.
      ELSE.
        DATA t44 TYPE string.
        DATA t45 TYPE string.
        t45 = t16->value.
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
      t14 = t40.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      DATA(t50) = VALUE abap_bool( ).
      IF t14 IS INITIAL.
        t50 = abap_true.
      ELSEIF t14->has = abap_false.
        t50 = abap_true.
      ENDIF.
      IF t50 = abap_true.
        CLEAR t49.
      ELSE.
        DATA t53 TYPE string.
        DATA t54 TYPE string.
        t54 = t14->value.
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
      t12 = t49.
      DATA(t62) = VALUE string( ).
      DATA(t63) = VALUE abap_bool( ).
      IF t12 IS BOUND.
        IF t12->has = abap_true.
          t63 = xsdbool( strlen( t12->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t63 = abap_true.
        DATA t65 TYPE string.
        t65 = t12->value.
        t62 = t65.
      ELSE.
        t62 = |ERROR|.
      ENDIF.
      t11 = t62.
      t10 = t11.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t70.
      DATA t72 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t72.
      DATA t74 TYPE REF TO zcl_lnt_expression_node.
      DATA t75 TYPE REF TO zcl_lnt_expression_node.
      DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
      t75 = t5->find_direct_expression( i_type_9913 = t77 ).
      t74 = t75.
      DATA t78 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t78.
      DATA(t79) = xsdbool( t74 IS INITIAL ).
      IF t79 = abap_true.
        CLEAR t78.
      ELSE.
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        DATA t83 TYPE REF TO zcl_lnt_expression_node.
        t83 = t74.
        DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
        t82 = t83->find_direct_expression( i_type_9913 = t85 ).
        t78 = t82.
      ENDIF.
      t72 = t78.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      DATA(t87) = xsdbool( t72 IS INITIAL ).
      IF t87 = abap_true.
        CLEAR t86.
      ELSE.
        DATA t90 TYPE string.
        DATA t91 TYPE REF TO zcl_lnt_expression_node.
        t91 = t72.
        t90 = t91->concat_tokens( ).
        DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t93->has = abap_true.
        t93->value = t90.
        t86 = t93.
      ENDIF.
      t70 = t86.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t94.
      DATA(t95) = VALUE abap_bool( ).
      IF t70 IS INITIAL.
        t95 = abap_true.
      ELSEIF t70->has = abap_false.
        t95 = abap_true.
      ENDIF.
      IF t95 = abap_true.
        CLEAR t94.
      ELSE.
        DATA t98 TYPE string.
        DATA t99 TYPE string.
        t99 = t70->value.
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
      DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t104 TYPE REF TO zcl_lnt_parsed_data_definition.
      t104 = me->parsed_data.
      t103 = t104->sources.
      DATA t106 TYPE REF TO zcl_lnt_shape_35310764.
      DATA t107 TYPE string.
      t107 = t10.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t109 = t94.
      t106 = NEW zcl_lnt_shape_35310764( i_name = t107 i_as = t109 ).
      CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
      t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t111 ).
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
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
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
    DATA(t119) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1092_b2702bebb604.
    t117 = t1->find_all_expressions( i_type_9913 = t119 ).
    DATA t120 TYPE REF TO zcl_lnt_expression_node.
    DATA t121 TYPE REF TO object.
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
      DATA(t128) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
      t126 = t120->find_direct_expression( i_type_9913 = t128 ).
      t125 = t126.
      DATA t129 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t129.
      DATA t130 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t130.
      DATA(t131) = NEW zlnt_runtime_set__1827558fd4c7( ).
      DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t132.
      DATA t133 TYPE abap_bool.
      t133 = xsdbool( t125 IS BOUND ).
      IF t133 = abap_true.
        DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t137.
        t136 = t137.
        DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t139 TYPE REF TO zcl_lnt_expression_node.
        t139 = t125.
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
          DATA(t147) = VALUE string( ).
          DATA(t148) = VALUE string( ).
          DATA(t149) = VALUE string( ).
          DATA(t150) = VALUE string( ).
          DATA(t151) = ||.
          DATA(t152) = VALUE string( ).
          DATA t153 TYPE f.
          DATA t158 TYPE REF TO zcl_lnt_position.
          t158 = t141->start.
          DATA t160 TYPE f.
          t160 = t158->row.
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
          DATA t172 TYPE REF TO zcl_lnt_position.
          t172 = t141->start.
          DATA t174 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t174 = t172->col.
          t167 = t174.
          t166 = zlnt_runtime_numb_290eb04a9758=>text( t167 ).
          DATA(t176) = strlen( t149 ).
          t148 = |{ t149 }{ t166 }|.
          DATA(t177) = ||.
          DATA(t178) = strlen( t148 ).
          t147 = |{ t148 }{ t177 }|.
          t136->load( ).
          APPEND t147 TO t136->items.
          t136->save( ).
        ENDDO.
        t132 = t136.
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
      t191 = t120->get_tokens( ).
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
        DATA(t201) = VALUE string( ).
        DATA(t202) = VALUE string( ).
        DATA(t203) = VALUE string( ).
        DATA(t204) = VALUE string( ).
        DATA(t205) = ||.
        DATA(t206) = VALUE string( ).
        DATA t207 TYPE f.
        DATA t212 TYPE REF TO zcl_lnt_position.
        t212 = t193->start.
        DATA t214 TYPE f.
        t214 = t212->row.
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
        DATA t226 TYPE REF TO zcl_lnt_position.
        t226 = t193->start.
        DATA t228 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t228 = t226->col.
        t221 = t228.
        t220 = zlnt_runtime_numb_290eb04a9758=>text( t221 ).
        DATA(t230) = strlen( t203 ).
        t202 = |{ t203 }{ t220 }|.
        DATA(t231) = ||.
        DATA(t232) = strlen( t202 ).
        t201 = |{ t202 }{ t231 }|.
        t199 = t129->has( p0 = t201 ).
        t198 = xsdbool( t199 = abap_false ).
        IF t198 = abap_true.
          t189->load( ).
          APPEND t193 TO t189->items.
          t189->save( ).
        ENDIF.
      ENDDO.
      t188 = t189.
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
        DATA t242 TYPE string.
        DATA t245 TYPE string.
        t245 = t236->str.
        t242 = t245.
        t186->load( ).
        APPEND t242 TO t186->items.
        t186->save( ).
      ENDDO.
      t185 = t186.
      DATA(t248) = ||.
      DATA(t249) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t249->has = abap_true.
      t249->value = t248.
      t184 = t185->join( p0 = t249 ).
      t183 = t184.
      DATA(t250) = VALUE string( ).
      DATA t251 TYPE abap_bool.
      t251 = xsdbool( strlen( t183 ) > 0 ).
      IF t251 = abap_true.
        t250 = t183.
      ELSE.
        t250 = |ERROR|.
      ENDIF.
      t182 = t250.
      t181 = t182.
      DATA t257 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t257.
      DATA t259 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t259.
      DATA t261 TYPE REF TO zcl_lnt_expression_node.
      t261 = t125.
      DATA t263 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t263.
      DATA(t264) = xsdbool( t261 IS INITIAL ).
      IF t264 = abap_true.
        CLEAR t263.
      ELSE.
        DATA t267 TYPE REF TO zcl_lnt_expression_node.
        DATA t268 TYPE REF TO zcl_lnt_expression_node.
        t268 = t261.
        DATA(t270) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
        t267 = t268->find_direct_expression( i_type_9913 = t270 ).
        t263 = t267.
      ENDIF.
      t259 = t263.
      DATA t271 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t271.
      DATA(t272) = xsdbool( t259 IS INITIAL ).
      IF t272 = abap_true.
        CLEAR t271.
      ELSE.
        DATA t275 TYPE REF TO zcl_lnt_abstract_token.
        DATA t276 TYPE REF TO zcl_lnt_expression_node.
        t276 = t259.
        t275 = t276->get_first_token( ).
        t271 = t275.
      ENDIF.
      t257 = t271.
      DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t278.
      DATA(t279) = xsdbool( t257 IS INITIAL ).
      IF t279 = abap_true.
        CLEAR t278.
      ELSE.
        DATA t286 TYPE string.
        t286 = t257->str.
        DATA(t288) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t288->has = abap_true.
        t288->value = t286.
        t278 = t288.
      ENDIF.
      DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t290 TYPE REF TO zcl_lnt_parsed_data_definition.
      t290 = me->parsed_data.
      t289 = t290->relations.
      DATA t292 TYPE REF TO zcl_lnt_shape_35310764.
      DATA t293 TYPE string.
      t293 = t181.
      DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t295 = t278.
      t292 = NEW zcl_lnt_shape_35310764( i_name = t293 i_as = t295 ).
      CREATE OBJECT t292->zlnt_view_ownkeys_b0e8086400eb.
      t292->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t297.
      t292->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t297 ).
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
      t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = t299 p1 = t300 ).
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
    DATA(t305) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    t303 = t1->find_all_expressions( i_type_9913 = t305 ).
    DATA t306 TYPE REF TO zcl_lnt_expression_node.
    DATA t307 TYPE REF TO object.
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
      DATA(t314) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1092_b2702bebb604.
      t312 = t306->find_direct_expression( i_type_9913 = t314 ).
      t311 = t312.
      DATA(t315) = VALUE abap_bool( ).
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t318.
      t315 = xsdbool( t311 IS INITIAL ).
      IF t315 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t322 TYPE REF TO zcl_lnt_expression_node.
      DATA t323 TYPE REF TO zcl_lnt_expression_node.
      DATA t324 TYPE REF TO zcl_lnt_expression_node.
      t324 = t311.
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
      t331 = xsdbool( t322 IS BOUND ).
      IF t331 = abap_true.
        DATA t334 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t335.
        t334 = t335.
        DATA t336 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t337 TYPE REF TO zcl_lnt_expression_node.
        t337 = t322.
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
          DATA(t345) = VALUE string( ).
          DATA(t346) = VALUE string( ).
          DATA(t347) = VALUE string( ).
          DATA(t348) = VALUE string( ).
          DATA(t349) = ||.
          DATA(t350) = VALUE string( ).
          DATA t351 TYPE f.
          DATA t356 TYPE REF TO zcl_lnt_position.
          t356 = t339->start.
          DATA t358 TYPE f.
          t358 = t356->row.
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
          DATA t370 TYPE REF TO zcl_lnt_position.
          t370 = t339->start.
          DATA t372 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t372 = t370->col.
          t365 = t372.
          t364 = zlnt_runtime_numb_290eb04a9758=>text( t365 ).
          DATA(t374) = strlen( t347 ).
          t346 = |{ t347 }{ t364 }|.
          DATA(t375) = ||.
          DATA(t376) = strlen( t346 ).
          t345 = |{ t346 }{ t375 }|.
          t334->load( ).
          APPEND t345 TO t334->items.
          t334->save( ).
        ENDDO.
        t330 = t334.
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
      t390 = t311.
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
        DATA(t400) = VALUE string( ).
        DATA(t401) = VALUE string( ).
        DATA(t402) = VALUE string( ).
        DATA(t403) = VALUE string( ).
        DATA(t404) = ||.
        DATA(t405) = VALUE string( ).
        DATA t406 TYPE f.
        DATA t411 TYPE REF TO zcl_lnt_position.
        t411 = t392->start.
        DATA t413 TYPE f.
        t413 = t411->row.
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
        DATA t425 TYPE REF TO zcl_lnt_position.
        t425 = t392->start.
        DATA t427 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t427 = t425->col.
        t420 = t427.
        t419 = zlnt_runtime_numb_290eb04a9758=>text( t420 ).
        DATA(t429) = strlen( t402 ).
        t401 = |{ t402 }{ t419 }|.
        DATA(t430) = ||.
        DATA(t431) = strlen( t401 ).
        t400 = |{ t401 }{ t430 }|.
        t398 = t327->has( p0 = t400 ).
        t397 = xsdbool( t398 = abap_false ).
        IF t397 = abap_true.
          t387->load( ).
          APPEND t392 TO t387->items.
          t387->save( ).
        ENDIF.
      ENDDO.
      t386 = t387.
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
        DATA t441 TYPE string.
        DATA t444 TYPE string.
        t444 = t435->str.
        t441 = t444.
        t384->load( ).
        APPEND t441 TO t384->items.
        t384->save( ).
      ENDDO.
      t383 = t384.
      DATA(t447) = ||.
      DATA(t448) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t448->has = abap_true.
      t448->value = t447.
      t382 = t383->join( p0 = t448 ).
      t381 = t382.
      DATA(t449) = VALUE string( ).
      DATA t450 TYPE abap_bool.
      t450 = xsdbool( strlen( t381 ) > 0 ).
      IF t450 = abap_true.
        t449 = t381.
      ELSE.
        t449 = |ERROR|.
      ENDIF.
      t380 = t449.
      t379 = t380.
      DATA t456 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t456.
      DATA t458 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t458.
      DATA t460 TYPE REF TO zcl_lnt_expression_node.
      t460 = t322.
      DATA t462 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t462.
      DATA(t463) = xsdbool( t460 IS INITIAL ).
      IF t463 = abap_true.
        CLEAR t462.
      ELSE.
        DATA t466 TYPE REF TO zcl_lnt_expression_node.
        DATA t467 TYPE REF TO zcl_lnt_expression_node.
        t467 = t460.
        DATA(t469) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
        t466 = t467->find_direct_expression( i_type_9913 = t469 ).
        t462 = t466.
      ENDIF.
      t458 = t462.
      DATA t470 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t470.
      DATA(t471) = xsdbool( t458 IS INITIAL ).
      IF t471 = abap_true.
        CLEAR t470.
      ELSE.
        DATA t474 TYPE REF TO zcl_lnt_abstract_token.
        DATA t475 TYPE REF TO zcl_lnt_expression_node.
        t475 = t458.
        t474 = t475->get_first_token( ).
        t470 = t474.
      ENDIF.
      t456 = t470.
      DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t477.
      DATA(t478) = xsdbool( t456 IS INITIAL ).
      IF t478 = abap_true.
        CLEAR t477.
      ELSE.
        DATA t485 TYPE string.
        t485 = t456->str.
        DATA(t487) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t487->has = abap_true.
        t487->value = t485.
        t477 = t487.
      ENDIF.
      DATA t488 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t489 TYPE REF TO zcl_lnt_parsed_data_definition.
      t489 = me->parsed_data.
      t488 = t489->associations.
      DATA t491 TYPE REF TO zcl_lnt_shape_35310764.
      DATA t492 TYPE string.
      t492 = t379.
      DATA t494 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t494 = t477.
      t491 = NEW zcl_lnt_shape_35310764( i_name = t492 i_as = t494 ).
      CREATE OBJECT t491->zlnt_view_ownkeys_b0e8086400eb.
      t491->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t496.
      t491->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t496 ).
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
      t491->zlnt_json_ownkeys_70e5fd461788->put( p0 = t498 p1 = t499 ).
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
    result = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_dt_dfn_ts_dt_dfn( ) ).

  ENDMETHOD.

  METHOD parse_type.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t5) = i_reg_f149.
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
