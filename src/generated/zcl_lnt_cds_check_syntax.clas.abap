* TS: src/rules/cds_check_syntax.ts:36:1 CDSCheckSyntax
CLASS zcl_lnt_cds_check_syntax DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_cds_check_syntax_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_cd_ch_sy_ts_cd_ch_sy RETURNING VALUE(result) TYPE REF TO zcl_lnt_cds_check_syntax_conf.
    METHODS s_c_i_s_r_cd_ch_sy_ts_cd_ch_sy IMPORTING i_conf TYPE REF TO zcl_lnt_cds_check_syntax_conf.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS r_i_sr_rl_cd_ch_sy_ts_cd_ch_sy IMPORTING i_object_19cd TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_sources IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_ddic TYPE REF TO zcl_lnt_ddic i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO
    zlnt_runtime_arra_c22708faf2e3.
    METHODS check_relations IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_ddic TYPE REF TO zcl_lnt_ddic i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS check_types IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_ddic TYPE REF TO zcl_lnt_ddic i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS check_root_projection IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_ddic TYPE REF TO zcl_lnt_ddic i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS check_field_annotations IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_ddic TYPE REF TO zcl_lnt_ddic i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS determine_semantic_type IMPORTING i_type_node TYPE REF TO zcl_lnt_expression_node i_ddic TYPE REF TO zcl_lnt_ddic RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS find_semantic_reference IMPORTING i_annotations TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_type_9913 TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS has_companion_annotation IMPORTING i_annotations TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_type_9913 TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS check_labels IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS check_view_entity_annotations IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS check_searchable IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS has_search_annotation IMPORTING i_normalized TYPE string i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS check_reserved_names IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS check_fields IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_sources TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_object_19cd TYPE REF TO zcl_lnt_ob_data_definition i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3
    i_file TYPE REF TO zif_lnt_file.
    METHODS name IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE string.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_check_syntax IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_cds_check_syntax_conf( ).
    me->conf = t1.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |cds_check_syntax|.
    DATA(t3) = |CDS Check Syntax|.
    DATA(t4) = |Checks CDS source, field, type, and semantic annotation refe|.
    t4 = t4 && |rences|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |Performs semantic checks which require other DDIC objects to|.
      t9 = t9 && | be available.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t10 INTO t9 RESPECTING BLANKS.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t11 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |Missing objects are only reported when their names match the|.
      t9 = t9 && | configured errorNamespace.|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t9.
      t7 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t7 = t13.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA(t15) = abap_true.
    IF t15 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t18.
      t17 = t18.
      DATA(t19) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
      DATA(t20) = |Syntax|.
      APPEND t20 TO t19->items.
      DATA(t21) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
      t16 = t21.
      t14 = t16.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t22.
      t14 = t22.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t14 i_pragma = t23 i_pseudo_comment = t24 ).
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_cd_ch_sy_ts_cd_ch_sy.
    DATA(t1) = CAST zcl_lnt_cds_check_syntax_conf( me->conf ).
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_cd_ch_sy_ts_cd_ch_sy.
    DATA(t1) = CAST zcl_lnt_cds_check_syntax_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_check_syntax.ts:56|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_check_syntax.ts:60|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD r_i_sr_rl_cd_ch_sy_ts_cd_ch_sy.
    DATA(t1) = CAST zif_lnt_object( i_object_19cd ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_check_syntax.ts:65|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD find_sources.
    DATA(t1) = CAST zcl_lnt_expression_node( i_tree ).
    DATA(t2) = CAST zcl_lnt_ddic( i_ddic ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t4) = CAST zif_lnt_file( i_file ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/cds_check_syntax.ts:93|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.

  METHOD check_relations.
    DATA(t1) = CAST zcl_lnt_expression_node( i_tree ).
    DATA(t2) = CAST zcl_lnt_ddic( i_ddic ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t4) = CAST zif_lnt_file( i_file ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/cds_check_syntax.ts:126|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.

  METHOD check_types.
    DATA(t1) = CAST zcl_lnt_expression_node( i_tree ).
    DATA(t2) = CAST zcl_lnt_ddic( i_ddic ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t4) = CAST zif_lnt_file( i_file ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/cds_check_syntax.ts:141|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.

  METHOD check_root_projection.
    DATA(t1) = CAST zcl_lnt_expression_node( i_tree ).
    DATA(t2) = CAST zcl_lnt_ddic( i_ddic ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t4) = CAST zif_lnt_file( i_file ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/cds_check_syntax.ts:156|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.

  METHOD check_field_annotations.
    DATA(t1) = CAST zcl_lnt_expression_node( i_tree ).
    DATA(t2) = CAST zcl_lnt_ddic( i_ddic ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t4) = CAST zif_lnt_file( i_file ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/cds_check_syntax.ts:178|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.

  METHOD determine_semantic_type.
    DATA(t1) = CAST zcl_lnt_expression_node( i_type_node ).
    DATA(t2) = CAST zcl_lnt_ddic( i_ddic ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/cds_check_syntax.ts:258|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD find_semantic_reference.
    DATA(t1) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_annotations ).
    DATA(t2) = i_type_9913.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/cds_check_syntax.ts:277|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD has_companion_annotation.
    DATA(t1) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_annotations ).
    DATA(t2) = i_type_9913.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/cds_check_syntax.ts:290|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD check_labels.
    DATA(t1) = CAST zcl_lnt_expression_node( i_tree ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t3) = CAST zif_lnt_file( i_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/cds_check_syntax.ts:300|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD check_view_entity_annotations.
    DATA(t1) = CAST zcl_lnt_expression_node( i_tree ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t3) = CAST zif_lnt_file( i_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/cds_check_syntax.ts:321|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD check_searchable.
    DATA(t1) = CAST zcl_lnt_expression_node( i_tree ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t3) = CAST zif_lnt_file( i_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/cds_check_syntax.ts:342|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD has_search_annotation.
    DATA(t1) = i_normalized.
    DATA(t2) = i_name.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/cds_check_syntax.ts:362|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD check_reserved_names.
    DATA(t1) = CAST zcl_lnt_expression_node( i_tree ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t3) = CAST zif_lnt_file( i_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/cds_check_syntax.ts:369|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD check_fields.
    DATA(t1) = CAST zcl_lnt_expression_node( i_tree ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_sources ).
    DATA(t3) = CAST zcl_lnt_ob_data_definition( i_object_19cd ).
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t5) = CAST zif_lnt_file( i_file ).
    DATA(t6) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t7) = |src/rules/cds_check_syntax.ts:392|.
    t6->source_location = t7.
    RAISE EXCEPTION t6.
  ENDMETHOD.

  METHOD name.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_check_syntax.ts:453|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cds_check_syntax_conf( me->g_c_i_s_r_cd_ch_sy_ts_cd_ch_sy( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cds_check_syntax_conf( me->g_c_i_s_r_cd_ch_sy_ts_cd_ch_sy( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_check_syntax.ts:56|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_check_syntax.ts:65|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1319_f10c5c1c5bd2.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
