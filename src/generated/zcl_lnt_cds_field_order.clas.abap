* TS: src/rules/cds_field_order.ts:13:1 CDSFieldOrder
CLASS zcl_lnt_cds_field_order DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cds_field_order_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_cd_fl_or_ts_cd_fl_or RETURNING VALUE(result) TYPE REF TO zcl_lnt_cds_field_order_conf.
    METHODS s_c_i_s_r_cd_fl_or_ts_cd_fl_or IMPORTING i_conf TYPE REF TO zcl_lnt_cds_field_order_conf.
    METHODS i_i_sr_rl_cd_fl_or_ts_cd_fl_or IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS r_i_sr_rl_cd_fl_or_ts_cd_fl_or IMPORTING i_o TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_association_names IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    METHODS is_association_element IMPORTING i_element TYPE REF TO zcl_lnt_expression_node i_association_names TYPE REF TO zlnt_runtime_set__1827558fd4c7 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_field_order IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_cds_field_order_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |cds_field_order|.
    DATA(t3) = |CDS Field Order|.
    DATA(t4) = |Checks that CDS key fields are listed first and associations|.
    t4 = t4 && | last in the field list|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |define view entity test as select from source|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  association [1..1] to target as _Assoc on _Assoc.id = sour|.
      t7 = t7 && |ce.id|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |\{|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  field1,|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  key id,|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  _Assoc|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |\}|.
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t7.
      t5 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t5 = t15.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA(t18) = |define view entity test as select from source|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t19 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |  association [1..1] to target as _Assoc on _Assoc.id = sour|.
      t18 = t18 && |ce.id|.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t20 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |\{|.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t21 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |  key id,|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t22 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |  field1,|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t23 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |  _Assoc|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t24 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |\}|.
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t18.
      t16 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      t16 = t26.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t28.
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t32.
      t31 = t32.
      DATA(t33) = CAST zlnt_runtime_arra_8ecd6afe19e0( t31 ).
      DATA(t34) = |SingleFile|.
      APPEND t34 TO t33->items.
      DATA(t35) = CAST zlnt_runtime_arra_8ecd6afe19e0( t31 ).
      t30 = t35.
      t28 = t30.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t36.
      t28 = t36.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t38.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t16 i_extended_information = t27 i_tags = t28 i_pragma = t37 i_pseudo_comment = t38 ).
    result = t1.
    
  ENDMETHOD.
  METHOD g_c_i_s_r_cd_fl_or_ts_cd_fl_or.
    DATA(t1) = CAST zcl_lnt_cds_field_order_conf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD s_c_i_s_r_cd_fl_or_ts_cd_fl_or.
    DATA(t1) = CAST zcl_lnt_cds_field_order_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_field_order.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD i_i_sr_rl_cd_fl_or_ts_cd_fl_or.
    DATA(t1) = CAST zif_lnt_registry( i_reg_d009 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_field_order.ts:47|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_i_sr_rl_cd_fl_or_ts_cd_fl_or.
    DATA(t1) = CAST zif_lnt_object( i_o ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_field_order.ts:51|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_association_names.
    DATA(t1) = CAST zcl_lnt_expression_node( i_tree ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_field_order.ts:104|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD is_association_element.
    DATA(t1) = CAST zcl_lnt_expression_node( i_element ).
    DATA(t2) = CAST zlnt_runtime_set__1827558fd4c7( i_association_names ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/cds_field_order.ts:126|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cds_field_order_conf( me->g_c_i_s_r_cd_fl_or_ts_cd_fl_or(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cds_field_order_conf( me->g_c_i_s_r_cd_fl_or_ts_cd_fl_or(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_field_order.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_field_order.ts:47|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cds_field_order.ts:51|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1323_3dc9f979a3fd.
  ENDMETHOD.
  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata(  ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config.
    me->get_config(  ).
  ENDMETHOD.
  METHOD zif_lnt_rule~set_config.
    me->set_config(  i_conf = i_conf ).
  ENDMETHOD.
  METHOD zif_lnt_rule~initialize.
    result = me->initialize(  i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~run.
    result = me->run(  i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value(  ).
  ENDMETHOD.
ENDCLASS.
