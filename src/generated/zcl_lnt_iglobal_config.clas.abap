* TS: src/_config.ts:4:1 IGlobalConfig
CLASS zcl_lnt_iglobal_config DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    DATA zlnt_view_source_36f3bf68b9b8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_read_sr_d2433d29e192 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_write_s_2dab73635014 IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_read_sr_ea2eb1e9b48c RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_dce29fd19cfa IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_125104471a9e RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_f6512af3e8da IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_b7f9c8e395fa RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_f5b85ce7f676 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_d33d8b9cacb6 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_07f361bf2a1f IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_7fd47aff77b0 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_ec86a93c6930 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_dc41fb6d744a RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_d52832f730c5 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_591d3df58352 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_07710377fe27 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_ce2a50732551 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_6b600dd0f06d IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_4799a82dd6de RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_e400ffda6d35 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_fb0e05af1c6f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_write_s_a2d667baaf85 IMPORTING p0 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_read_sr_79da0a01acfb RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_write_s_3bb0adbcf1f5 IMPORTING p0 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA files TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA skip_generated_bopf_interfaces TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA skip_generated_function_groups TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA skip_generated_gateway_classes TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA skp_gnrtd_prsstnt_clsss TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA skip_generated_proxy_classes TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA skp_gnrtd_prxy_intrfcs TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA use_apack_dependencies TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA skip_includes_without_main TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA error_on_duplicate_filenames TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA exclude TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA no_issues TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING i_files TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_skp_gnrtd_bpf_intrfcs TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_skp_gnrtd_fnctn_grps TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL
    i_skp_gnrtd_gtwy_clsss TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_skp_gnrtd_prsstnt_clsss TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_skip_generated_proxy_classes TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL
    i_skp_gnrtd_prxy_intrfcs TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_use_apack_dependencies TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_skip_includes_without_main TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL
    i_error_on_duplicate_filenames TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_exclude TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL i_no_issues TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL view_source TYPE REF TO
    zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iglobal_config IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = i_files.
    DATA(t2) = i_skp_gnrtd_bpf_intrfcs.
    DATA(t3) = i_skp_gnrtd_fnctn_grps.
    DATA(t4) = i_skp_gnrtd_gtwy_clsss.
    DATA(t5) = i_skp_gnrtd_prsstnt_clsss.
    DATA(t6) = i_skip_generated_proxy_classes.
    DATA(t7) = i_skp_gnrtd_prxy_intrfcs.
    DATA(t8) = i_use_apack_dependencies.
    DATA(t9) = i_skip_includes_without_main.
    DATA(t10) = i_error_on_duplicate_filenames.
    DATA(t11) = i_exclude.
    DATA(t12) = i_no_issues.
    DATA(t13) = t1.
    me->zlnt_view_write_s_2dab73635014( p0 = t13 ).
    DATA(t14) = t2.
    me->zlnt_view_write_s_dce29fd19cfa( p0 = t14 ).
    DATA(t15) = t3.
    me->zlnt_view_write_s_f6512af3e8da( p0 = t15 ).
    DATA(t16) = t4.
    me->zlnt_view_write_s_f5b85ce7f676( p0 = t16 ).
    DATA(t17) = t5.
    me->zlnt_view_write_s_07f361bf2a1f( p0 = t17 ).
    DATA(t18) = t6.
    me->zlnt_view_write_s_ec86a93c6930( p0 = t18 ).
    DATA(t19) = t7.
    me->zlnt_view_write_s_d52832f730c5( p0 = t19 ).
    DATA(t20) = t8.
    me->zlnt_view_write_s_07710377fe27( p0 = t20 ).
    DATA(t21) = t9.
    me->zlnt_view_write_s_6b600dd0f06d( p0 = t21 ).
    DATA(t22) = t10.
    me->zlnt_view_write_s_e400ffda6d35( p0 = t22 ).
    DATA(t23) = t11.
    me->zlnt_view_write_s_a2d667baaf85( p0 = t23 ).
    DATA(t24) = t12.
    me->zlnt_view_write_s_3bb0adbcf1f5( p0 = t24 ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d0_5ecc9e9989d6ba.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_d2433d29e192.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `files` ) ).
      result = t1.
    ELSE.
      result = me->files.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_2dab73635014.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `files` p1 = t1 ).
    ELSE.
      me->files = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `files` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `files`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_ea2eb1e9b48c.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `skipGeneratedBOPFInterfaces` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->skip_generated_bopf_interfaces.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_dce29fd19cfa.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `skipGeneratedBOPFInterfaces` p1 = t1 ).
    ELSE.
      me->skip_generated_bopf_interfaces = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedBOPFInterfaces` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipGeneratedBOPFInterfaces`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_125104471a9e.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `skipGeneratedFunctionGroups` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->skip_generated_function_groups.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_f6512af3e8da.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `skipGeneratedFunctionGroups` p1 = t1 ).
    ELSE.
      me->skip_generated_function_groups = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedFunctionGroups` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipGeneratedFunctionGroups`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_b7f9c8e395fa.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `skipGeneratedGatewayClasses` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->skip_generated_gateway_classes.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_f5b85ce7f676.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `skipGeneratedGatewayClasses` p1 = t1 ).
    ELSE.
      me->skip_generated_gateway_classes = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedGatewayClasses` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipGeneratedGatewayClasses`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_d33d8b9cacb6.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `skipGeneratedPersistentClasses` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->skp_gnrtd_prsstnt_clsss.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_07f361bf2a1f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `skipGeneratedPersistentClasses` p1 = t1 ).
    ELSE.
      me->skp_gnrtd_prsstnt_clsss = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedPersistentClasses` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipGeneratedPersistentClasses`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_7fd47aff77b0.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `skipGeneratedProxyClasses` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->skip_generated_proxy_classes.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_ec86a93c6930.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `skipGeneratedProxyClasses` p1 = t1 ).
    ELSE.
      me->skip_generated_proxy_classes = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedProxyClasses` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipGeneratedProxyClasses`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_dc41fb6d744a.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `skipGeneratedProxyInterfaces` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->skp_gnrtd_prxy_intrfcs.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_d52832f730c5.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `skipGeneratedProxyInterfaces` p1 = t1 ).
    ELSE.
      me->skp_gnrtd_prxy_intrfcs = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipGeneratedProxyInterfaces` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipGeneratedProxyInterfaces`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_591d3df58352.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `useApackDependencies` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->use_apack_dependencies.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_07710377fe27.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `useApackDependencies` p1 = t1 ).
    ELSE.
      me->use_apack_dependencies = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `useApackDependencies` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `useApackDependencies`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_ce2a50732551.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `skipIncludesWithoutMain` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->skip_includes_without_main.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_6b600dd0f06d.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `skipIncludesWithoutMain` p1 = t1 ).
    ELSE.
      me->skip_includes_without_main = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `skipIncludesWithoutMain` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipIncludesWithoutMain`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_4799a82dd6de.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `errorOnDuplicateFilenames` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->error_on_duplicate_filenames.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_e400ffda6d35.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `errorOnDuplicateFilenames` p1 = t1 ).
    ELSE.
      me->error_on_duplicate_filenames = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorOnDuplicateFilenames` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `errorOnDuplicateFilenames`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_fb0e05af1c6f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `exclude` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        CLEAR result.
        IF t1 IS BOUND.
          IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                result ?= t1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT result.
            result->source = t1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          result->load( ).
        ENDIF.
      ENDIF.
    ELSE.
      result = me->exclude.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_a2d667baaf85.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
        CLEAR t1.
        IF p0 IS BOUND.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          DATA t3 TYPE REF TO object.
          CLEAR t3.
          CLEAR t2.
          t3 = p0.
          TRY.
              t1 ?= t3.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t1 IS NOT BOUND.
            TRY.
                t2 ?= p0.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t2 IS BOUND.
              t1 = t2->source( ).
            ENDIF.
            IF t1 IS NOT BOUND.
              CREATE OBJECT t1.
              t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t1->oval = p0.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `exclude` p1 = t1 ).
    ELSE.
      me->exclude = p0.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `exclude` p1 = t4 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exclude`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_79da0a01acfb.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `noIssues` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        CLEAR result.
        IF t1 IS BOUND.
          IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                result ?= t1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT result.
            result->source = t1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          result->load( ).
        ENDIF.
      ENDIF.
    ELSE.
      result = me->no_issues.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_3bb0adbcf1f5.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
        CLEAR t1.
        IF p0 IS BOUND.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          DATA t3 TYPE REF TO object.
          CLEAR t3.
          CLEAR t2.
          t3 = p0.
          TRY.
              t1 ?= t3.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t1 IS NOT BOUND.
            TRY.
                t2 ?= p0.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t2 IS BOUND.
              t1 = t2->source( ).
            ENDIF.
            IF t1 IS NOT BOUND.
              CREATE OBJECT t1.
              t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t1->oval = p0.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `noIssues` p1 = t1 ).
    ELSE.
      me->no_issues = p0.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `noIssues` p1 = t4 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `noIssues`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~structural.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~source.
    result = me->zlnt_view_source_36f3bf68b9b8.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.has: own-key metadata absent`.
    ENDIF.
    result = me->zlnt_view_ownkeys_b0e8086400eb->has( p0 ).
    IF result = abap_false AND me->zlnt_view_extras_47272813ead1 IS BOUND.
      result = me->zlnt_view_extras_47272813ead1->has( p0 ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~delete.
    DATA ignored TYPE abap_bool.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->delete( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `files`.
        CLEAR me->files.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `skipGeneratedBOPFInterfaces`.
        CLEAR me->skip_generated_bopf_interfaces.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `skipGeneratedFunctionGroups`.
        CLEAR me->skip_generated_function_groups.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `skipGeneratedGatewayClasses`.
        CLEAR me->skip_generated_gateway_classes.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `skipGeneratedPersistentClasses`.
        CLEAR me->skp_gnrtd_prsstnt_clsss.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `skipGeneratedProxyClasses`.
        CLEAR me->skip_generated_proxy_classes.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `skipGeneratedProxyInterfaces`.
        CLEAR me->skp_gnrtd_prxy_intrfcs.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `useApackDependencies`.
        CLEAR me->use_apack_dependencies.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `skipIncludesWithoutMain`.
        CLEAR me->skip_includes_without_main.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `errorOnDuplicateFilenames`.
        CLEAR me->error_on_duplicate_filenames.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `exclude`.
        CLEAR me->exclude.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `noIssues`.
        CLEAR me->no_issues.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN OTHERS.
        ignored = zlnt_runtime_nati_be494c0b072c=>run( p0 = me key = p0 ).
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          ignored = me->zlnt_view_extras_47272813ead1->delete( p0 ).
        ENDIF.
    ENDCASE.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      ignored = me->zlnt_view_ownkeys_b0e8086400eb->delete( p0 ).
    ENDIF.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_own_storage_4c72afe8366e~keys.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = zlnt_runtime_ownk_4497b85e405d=>keys( me->zlnt_view_source_36f3bf68b9b8 ).
      RETURN.
    ENDIF.
    t1 = me->zlnt_view_ownkeys_b0e8086400eb.
    IF t1 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: keys: structural own-key metadata absent`.
    ENDIF.
    result = zlnt_runtime_ownk_4497b85e405d=>keys( t1 ).
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~get.
    IF p0 = `constructor` OR p0 = `toString` OR p0 = `toLocaleString` OR p0 = `valueOf` OR p0 = `hasOwnProperty` OR p0 = `isPrototypeOf` OR p0 = `propertyIsEnumerable` OR p0 = `__proto__` OR p0 = `__defineGetter__` OR p0 =
    `__defineSetter__` OR p0 = `__lookupGetter__` OR p0 = `__lookupSetter__`.
      IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
        IF me->zlnt_view_source_36f3bf68b9b8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE me->zlnt_view_source_36f3bf68b9b8->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
          IF sy-subrc <> 0.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from graph`.
          ENDIF.
        ELSEIF me->zlnt_view_source_36f3bf68b9b8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: primitive prototype lookup unavailable`.
        ENDIF.
      ELSE.
        IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: prototype presence metadata absent`.
        ENDIF.
        READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
        IF sy-subrc <> 0.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from native slots`.
        ENDIF.
      ENDIF.
    ENDIF.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->get( p0 ).
      RETURN.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get src/_config.ts.IGlobalConfig: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `files`.
        result = me->files.
      WHEN `skipGeneratedBOPFInterfaces`.
        CLEAR result.
        IF me->skip_generated_bopf_interfaces IS BOUND AND me->skip_generated_bopf_interfaces->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->skip_generated_bopf_interfaces->value.
        ENDIF.
      WHEN `skipGeneratedFunctionGroups`.
        CLEAR result.
        IF me->skip_generated_function_groups IS BOUND AND me->skip_generated_function_groups->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->skip_generated_function_groups->value.
        ENDIF.
      WHEN `skipGeneratedGatewayClasses`.
        CLEAR result.
        IF me->skip_generated_gateway_classes IS BOUND AND me->skip_generated_gateway_classes->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->skip_generated_gateway_classes->value.
        ENDIF.
      WHEN `skipGeneratedPersistentClasses`.
        CLEAR result.
        IF me->skp_gnrtd_prsstnt_clsss IS BOUND AND me->skp_gnrtd_prsstnt_clsss->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->skp_gnrtd_prsstnt_clsss->value.
        ENDIF.
      WHEN `skipGeneratedProxyClasses`.
        CLEAR result.
        IF me->skip_generated_proxy_classes IS BOUND AND me->skip_generated_proxy_classes->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->skip_generated_proxy_classes->value.
        ENDIF.
      WHEN `skipGeneratedProxyInterfaces`.
        CLEAR result.
        IF me->skp_gnrtd_prxy_intrfcs IS BOUND AND me->skp_gnrtd_prxy_intrfcs->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->skp_gnrtd_prxy_intrfcs->value.
        ENDIF.
      WHEN `useApackDependencies`.
        CLEAR result.
        IF me->use_apack_dependencies IS BOUND AND me->use_apack_dependencies->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->use_apack_dependencies->value.
        ENDIF.
      WHEN `skipIncludesWithoutMain`.
        CLEAR result.
        IF me->skip_includes_without_main IS BOUND AND me->skip_includes_without_main->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->skip_includes_without_main->value.
        ENDIF.
      WHEN `errorOnDuplicateFilenames`.
        CLEAR result.
        IF me->error_on_duplicate_filenames IS BOUND AND me->error_on_duplicate_filenames->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->error_on_duplicate_filenames->value.
        ENDIF.
      WHEN `exclude`.
        CLEAR result.
        IF me->exclude IS BOUND.
          CLEAR result.
          IF me->exclude IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = me->exclude.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= me->exclude.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->exclude.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `noIssues`.
        CLEAR result.
        IF me->no_issues IS BOUND.
          CLEAR result.
          IF me->no_issues IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->no_issues.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->no_issues.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->no_issues.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN OTHERS.
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          result = me->zlnt_view_extras_47272813ead1->get( p0 ).
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = p0 p1 = p1 ).
      RETURN.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put src/_config.ts.IGlobalConfig: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `files`.
        me->files = p1.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `files`.
      WHEN `skipGeneratedBOPFInterfaces`.
        CLEAR me->skip_generated_bopf_interfaces.
        IF p1 IS BOUND.
          me->skip_generated_bopf_interfaces = NEW #( ).
          me->skip_generated_bopf_interfaces->has = abap_true.
          me->skip_generated_bopf_interfaces->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipGeneratedBOPFInterfaces`.
      WHEN `skipGeneratedFunctionGroups`.
        CLEAR me->skip_generated_function_groups.
        IF p1 IS BOUND.
          me->skip_generated_function_groups = NEW #( ).
          me->skip_generated_function_groups->has = abap_true.
          me->skip_generated_function_groups->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipGeneratedFunctionGroups`.
      WHEN `skipGeneratedGatewayClasses`.
        CLEAR me->skip_generated_gateway_classes.
        IF p1 IS BOUND.
          me->skip_generated_gateway_classes = NEW #( ).
          me->skip_generated_gateway_classes->has = abap_true.
          me->skip_generated_gateway_classes->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipGeneratedGatewayClasses`.
      WHEN `skipGeneratedPersistentClasses`.
        CLEAR me->skp_gnrtd_prsstnt_clsss.
        IF p1 IS BOUND.
          me->skp_gnrtd_prsstnt_clsss = NEW #( ).
          me->skp_gnrtd_prsstnt_clsss->has = abap_true.
          me->skp_gnrtd_prsstnt_clsss->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipGeneratedPersistentClasses`.
      WHEN `skipGeneratedProxyClasses`.
        CLEAR me->skip_generated_proxy_classes.
        IF p1 IS BOUND.
          me->skip_generated_proxy_classes = NEW #( ).
          me->skip_generated_proxy_classes->has = abap_true.
          me->skip_generated_proxy_classes->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipGeneratedProxyClasses`.
      WHEN `skipGeneratedProxyInterfaces`.
        CLEAR me->skp_gnrtd_prxy_intrfcs.
        IF p1 IS BOUND.
          me->skp_gnrtd_prxy_intrfcs = NEW #( ).
          me->skp_gnrtd_prxy_intrfcs->has = abap_true.
          me->skp_gnrtd_prxy_intrfcs->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipGeneratedProxyInterfaces`.
      WHEN `useApackDependencies`.
        CLEAR me->use_apack_dependencies.
        IF p1 IS BOUND.
          me->use_apack_dependencies = NEW #( ).
          me->use_apack_dependencies->has = abap_true.
          me->use_apack_dependencies->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `useApackDependencies`.
      WHEN `skipIncludesWithoutMain`.
        CLEAR me->skip_includes_without_main.
        IF p1 IS BOUND.
          me->skip_includes_without_main = NEW #( ).
          me->skip_includes_without_main->has = abap_true.
          me->skip_includes_without_main->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipIncludesWithoutMain`.
      WHEN `errorOnDuplicateFilenames`.
        CLEAR me->error_on_duplicate_filenames.
        IF p1 IS BOUND.
          me->error_on_duplicate_filenames = NEW #( ).
          me->error_on_duplicate_filenames->has = abap_true.
          me->error_on_duplicate_filenames->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `errorOnDuplicateFilenames`.
      WHEN `exclude`.
        CLEAR me->exclude.
        IF p1 IS BOUND.
          CLEAR me->exclude.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->exclude ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->exclude.
              me->exclude->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->exclude->load( ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exclude`.
      WHEN `noIssues`.
        CLEAR me->no_issues.
        IF p1 IS BOUND.
          CLEAR me->no_issues.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->no_issues ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->no_issues.
              me->no_issues->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->no_issues->load( ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `noIssues`.
      WHEN OTHERS.
        IF p0 = `__proto__`.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: prototype mutation unavailable`.
        ENDIF.
        IF me->zlnt_view_extras_47272813ead1 IS NOT BOUND.
          me->zlnt_view_extras_47272813ead1 = NEW #( ).
          me->zlnt_view_extras_47272813ead1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        ENDIF.
        me->zlnt_view_extras_47272813ead1->put( p0 = p0 p1 = p1 ).
    ENDCASE.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = p0 p1 = VALUE #( ) ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t1 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
