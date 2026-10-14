* TS: src/rules/no_public_attributes.ts:18:1 NoPublicAttributes
CLASS zcl_lnt_no_public_attributes DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_n_pblc_attrbts_cnf.
    DATA file TYPE REF TO zcl_lnt_abap_file.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_sr_rl_n_pb_at_ts_n_pb_at RETURNING VALUE(result) TYPE REF TO zcl_lnt_n_pblc_attrbts_cnf.
    METHODS s_c_i_sr_rl_n_pb_at_ts_n_pb_at IMPORTING i_conf TYPE REF TO zcl_lnt_n_pblc_attrbts_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_all_public_attributes IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS gt_all_pblc_clss_attrbts IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS gt_all_pblc_intrfc_attrbts RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_all_issues IMPORTING i_attributes TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_public_attributes IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_n_pblc_attrbts_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |no_public_attributes|.
    DATA(t3) = |No public attributes|.
    DATA(t4) = |Checks that classes and interfaces don't contain any public |.
    t4 = t4 && |attributes.|.
    DATA t5 TYPE c LENGTH 1.
    CLEAR t5.
    t5 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t5 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |Exceptions are excluded from this rule.|.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA(t7) = abap_true.
    IF t7 = abap_true.
      DATA(t8) = |CLASS zcl_foo DEFINITION PUBLIC.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t8 t9 INTO t8 RESPECTING BLANKS.
      t8 = t8 && |  PUBLIC SECTION.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t8 t10 INTO t8 RESPECTING BLANKS.
      t8 = t8 && |    DATA counter TYPE i.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t8 t11 INTO t8 RESPECTING BLANKS.
      t8 = t8 && |ENDCLASS.|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t8.
      t6 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t6 = t13.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA(t15) = abap_true.
    IF t15 = abap_true.
      DATA(t16) = |CLASS zcl_foo DEFINITION PUBLIC.|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t17 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |  PRIVATE SECTION.|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t18 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |    DATA counter TYPE i.|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t19 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |ENDCLASS.|.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t16.
      t14 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t14 = t21.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA(t23) = abap_true.
    IF t23 = abap_true.
      DATA(t24) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t24 = t24 && |nABAP.md#members-private-by-default-protected-only-if-needed|.
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t24.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      t22 = t26.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t31.
      t30 = t31.
      DATA(t32) = CAST zlnt_runtime_arra_8ecd6afe19e0( t30 ).
      DATA(t33) = |Styleguide|.
      APPEND t33 TO t32->items.
      DATA(t34) = CAST zlnt_runtime_arra_8ecd6afe19e0( t30 ).
      DATA(t35) = |SingleFile|.
      APPEND t35 TO t34->items.
      DATA(t36) = CAST zlnt_runtime_arra_8ecd6afe19e0( t30 ).
      t29 = t36.
      t27 = t29.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t37.
      t27 = t37.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t6 i_good_example = t14 i_extended_information = t22 i_tags = t27 i_pragma = t38 i_pseudo_comment = t39 ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = i_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_public_attributes.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD g_c_i_sr_rl_n_pb_at_ts_n_pb_at.
    DATA(t1) = CAST zcl_lnt_n_pblc_attrbts_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD s_c_i_sr_rl_n_pb_at_ts_n_pb_at.
    DATA(t1) = CAST zcl_lnt_n_pblc_attrbts_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_public_attributes.ts:51|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/no_public_attributes.ts:55|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_all_public_attributes.
    DATA(t1) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_public_attributes.ts:61|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD gt_all_pblc_clss_attrbts.
    DATA(t1) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_public_attributes.ts:68|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD gt_all_pblc_intrfc_attrbts.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/no_public_attributes.ts:80|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD find_all_issues.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_attributes ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_public_attributes.ts:88|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_n_pblc_attrbts_cnf( me->g_c_i_sr_rl_n_pb_at_ts_n_pb_at(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_n_pblc_attrbts_cnf( me->g_c_i_sr_rl_n_pb_at_ts_n_pb_at(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_pblc_attrbts_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_sr_rl_n_pb_at_ts_n_pb_at( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1526_7f1390a7ee25.
  ENDMETHOD.
ENDCLASS.
