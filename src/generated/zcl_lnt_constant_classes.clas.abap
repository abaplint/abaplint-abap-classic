* TS: src/rules/constant_classes.ts:29:1 ConstantClasses
CLASS zcl_lnt_constant_classes DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_constant_classes_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS in_in_sr_rl_cns_cls_ts_cns_cls IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_constant_classes.
    METHODS gt_cn_in_sr_rl_cn_cl_ts_cn_cls RETURNING VALUE(result) TYPE REF TO zcl_lnt_constant_classes_conf.
    METHODS st_cn_in_sr_rl_cn_cl_ts_cn_cls IMPORTING i_conf TYPE REF TO zcl_lnt_constant_classes_conf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS issue_at_constant IMPORTING i_constant_6eda TYPE REF TO zcl_lnt_info_constant i_message_26cb TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_constant_classes IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_constant_classes_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |constant_classes|.
    DATA(t3) = |Validate constant classes|.
    DATA(t4) = |Checks that a class contains exactly the constants correspon|.
    t4 = t4 && |ding to a domain's fixed values.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t9 = t9 && |nABAP.md#prefer-enum-to-constants-interfaces|.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t9.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t7 = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t12.
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t16.
      t15 = t16.
      DATA(t17) = CAST zlnt_runtime_arra_8ecd6afe19e0( t15 ).
      DATA(t18) = |Styleguide|.
      APPEND t18 TO t17->items.
      DATA(t19) = CAST zlnt_runtime_arra_8ecd6afe19e0( t15 ).
      t14 = t19.
      t12 = t14.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t20.
      t12 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t12 i_pragma = t21 i_pseudo_comment = t22 ).
    result = t1.
    
  ENDMETHOD.
  METHOD in_in_sr_rl_cns_cls_ts_cns_cls.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/constant_classes.ts:44|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_cn_cl_ts_cn_cls.
    DATA(t1) = CAST zcl_lnt_constant_classes_conf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_cn_cl_ts_cn_cls.
    DATA(t1) = CAST zcl_lnt_constant_classes_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/constant_classes.ts:53|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/constant_classes.ts:57|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD issue_at_constant.
    DATA(t1) = CAST zcl_lnt_info_constant( i_constant_6eda ).
    DATA(t2) = i_message_26cb.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/constant_classes.ts:171|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/constant_classes.ts:44|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_constant_classes_conf( me->gt_cn_in_sr_rl_cn_cl_ts_cn_cls(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_constant_classes_conf( me->gt_cn_in_sr_rl_cn_cl_ts_cn_cls(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/constant_classes.ts:53|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1364_0e50e52e518a.
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
