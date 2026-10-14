* TS: src/rules/class_attribute_names.ts:27:1 ClassAttributeNames
CLASS zcl_lnt_class_attribute_names DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_clss_attrbt_nms_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_actual TYPE string i_expected TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_cl_at_nm_ts_cl_at_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_clss_attrbt_nms_cnf.
    METHODS s_c_i_s_r_cl_at_nm_ts_cl_at_nm IMPORTING i_conf TYPE REF TO zcl_lnt_clss_attrbt_nms_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS check_attributes IMPORTING i_attr TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_name IMPORTING i_attr TYPE REF TO zcl_lnt_fi_identifier i_expected TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_class_attribute_names IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_clss_attrbt_nms_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |class_attribute_names|.
    DATA(t3) = |Class attributes naming|.
    DATA(t4) = |Allows you to enforce a pattern, such as a prefix, for class|.
    t4 = t4 && | variable names.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |CLASS zcl_foo DEFINITION PUBLIC.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  PUBLIC SECTION.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    DATA counter TYPE i.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDCLASS.|.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = t7.
      t5 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t5 = t12.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA(t14) = abap_true.
    IF t14 = abap_true.
      DATA(t15) = |CLASS zcl_foo DEFINITION PUBLIC.|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t16 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |  PUBLIC SECTION.|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t17 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |    DATA mv_counter TYPE i.|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t18 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |ENDCLASS.|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t15.
      t13 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t13 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t22.
    DATA(t23) = abap_true.
    IF t23 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t26.
      t25 = t26.
      DATA(t27) = CAST zlnt_runtime_arra_8ecd6afe19e0( t25 ).
      DATA(t28) = |Naming|.
      APPEND t28 TO t27->items.
      DATA(t29) = CAST zlnt_runtime_arra_8ecd6afe19e0( t25 ).
      DATA(t30) = |SingleFile|.
      APPEND t30 TO t29->items.
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t25 ).
      t24 = t31.
      t22 = t24.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t32.
      t22 = t32.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t13 i_extended_information = t21 i_tags = t22 i_pragma = t33 i_pseudo_comment = t34 ).
    result = t1.

  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = i_actual.
    DATA(t2) = i_expected.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/class_attribute_names.ts:48|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD g_c_i_s_r_cl_at_nm_ts_cl_at_nm.
    DATA(t1) = CAST zcl_lnt_clss_attrbt_nms_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_cl_at_nm_ts_cl_at_nm.
    DATA(t1) = CAST zcl_lnt_clss_attrbt_nms_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/class_attribute_names.ts:58|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/class_attribute_names.ts:62|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD check_attributes.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_attr ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/class_attribute_names.ts:90|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_name.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_attr ).
    DATA(t2) = i_expected.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/class_attribute_names.ts:114|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_clss_attrbt_nms_cnf( me->g_c_i_s_r_cl_at_nm_ts_cl_at_nm(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_clss_attrbt_nms_cnf( me->g_c_i_s_r_cl_at_nm_ts_cl_at_nm(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_clss_attrbt_nms_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_cl_at_nm_ts_cl_at_nm( i_conf = t1 ).

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1351_2227ca26f8c5.
  ENDMETHOD.
ENDCLASS.
