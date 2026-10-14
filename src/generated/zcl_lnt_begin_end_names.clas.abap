* TS: src/rules/begin_end_names.ts:17:1 BeginEndNames
CLASS zcl_lnt_begin_end_names DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_begin_end_names_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_bg_en_nm_ts_bg_en_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_begin_end_names_conf.
    METHODS s_c_i_s_r_bg_en_nm_ts_bg_en_nm IMPORTING i_conf TYPE REF TO zcl_lnt_begin_end_names_conf.
    METHODS r_p_i_s_r_bg_en_nm_ts_bg_en_nm IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS test IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 i_b TYPE REF TO zlnt_runtime_clas_a39833db3295 i_e TYPE REF TO zlnt_runtime_clas_a39833db3295 i_file TYPE REF TO
    zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_begin_end_names IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_begin_end_names_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |begin_end_names|.
    DATA(t3) = |Check BEGIN END names|.
    DATA(t4) = |Check BEGIN OF and END OF names match, plus there must be st|.
    t4 = t4 && |atements between BEGIN and END|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |DATA: BEGIN OF stru,|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |        field TYPE i,|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |      END OF structure_not_the_same.|.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t7.
      t5 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t5 = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA(t14) = |DATA: BEGIN OF stru,|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t15 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |        field TYPE i,|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t16 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |      END OF stru.|.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t14.
      t12 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t12 = t18.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t24.
      t23 = t24.
      DATA(t25) = CAST zlnt_runtime_arra_8ecd6afe19e0( t23 ).
      DATA(t26) = |Syntax|.
      APPEND t26 TO t25->items.
      DATA(t27) = CAST zlnt_runtime_arra_8ecd6afe19e0( t23 ).
      DATA(t28) = |Quickfix|.
      APPEND t28 TO t27->items.
      DATA(t29) = CAST zlnt_runtime_arra_8ecd6afe19e0( t23 ).
      DATA(t30) = |SingleFile|.
      APPEND t30 TO t29->items.
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t23 ).
      t22 = t31.
      t20 = t22.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t32.
      t20 = t32.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t12 i_extended_information = t19 i_tags = t20 i_pragma = t33 i_pseudo_comment = t34 ).
    result = t1.
    
  ENDMETHOD.
  METHOD g_c_i_s_r_bg_en_nm_ts_bg_en_nm.
    DATA(t1) = CAST zcl_lnt_begin_end_names_conf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD s_c_i_s_r_bg_en_nm_ts_bg_en_nm.
    DATA(t1) = CAST zcl_lnt_begin_end_names_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/begin_end_names.ts:39|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_bg_en_nm_ts_bg_en_nm.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/begin_end_names.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD test.
    DATA(t1) = CAST zcl_lnt_structure_node( i_stru ).
    DATA(t2) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA(t3) = CAST zlnt_runtime_clas_a39833db3295( i_b ).
    DATA(t4) = CAST zlnt_runtime_clas_a39833db3295( i_e ).
    DATA(t5) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t6) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t7) = |src/rules/begin_end_names.ts:66|.
    t6->source_location = t7.
    RAISE EXCEPTION t6.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_begin_end_names_conf( me->g_c_i_s_r_bg_en_nm_ts_bg_en_nm(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_begin_end_names_conf( me->g_c_i_s_r_bg_en_nm_ts_bg_en_nm(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_begin_end_names_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_bg_en_nm_ts_bg_en_nm( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_bg_en_nm_ts_bg_en_nm( i_file = i_file ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1309_831bf78a7978.
  ENDMETHOD.
ENDCLASS.
