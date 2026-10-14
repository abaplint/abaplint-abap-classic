* TS: src/rules/method_length.ts:29:1 MethodLength
CLASS zcl_lnt_method_length DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_method_length_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_description IMPORTING i_issue_type TYPE int8 i_actual TYPE string i_type_9913 TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_mt_ln_ts_mt_lng RETURNING VALUE(result) TYPE REF TO zcl_lnt_method_length_conf.
    METHODS st_cn_in_sr_rl_mt_ln_ts_mt_lng IMPORTING i_conf TYPE REF TO zcl_lnt_method_length_conf.
    METHODS in_in_sr_rl_mth_lng_ts_mth_lng IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_method_length.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_bf6e IMPORTING i_stats TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_type_9913 TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_abstract IMPORTING i_result TYPE REF TO zcl_lnt_imethod_length_result RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_method_length IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_method_length_conf( ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |method_length|.
    DATA(t3) = |Method/Form/Function Module Length|.
    DATA(t4) = |Checks relating to method/form/function module length.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t9 = t9 && |nABAP.md#keep-methods-small|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t10 INTO t9 RESPECTING BLANKS.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t11 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |Abstract methods without statements are considered okay.|.
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
      DATA(t20) = |Styleguide|.
      APPEND t20 TO t19->items.
      DATA(t21) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
      DATA(t22) = |SingleFile|.
      APPEND t22 TO t21->items.
      DATA(t23) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
      t16 = t23.
      t14 = t16.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t24.
      t14 = t24.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t14 i_pragma = t25 i_pseudo_comment = t26 ).
    result = t1.

  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = i_issue_type.
    DATA(t2) = i_actual.
    DATA(t3) = i_type_9913.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/method_length.ts:45|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_mt_ln_ts_mt_lng.
    DATA(t1) = CAST zcl_lnt_method_length_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cn_in_sr_rl_mt_ln_ts_mt_lng.
    DATA(t1) = CAST zcl_lnt_method_length_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/method_length.ts:63|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD in_in_sr_rl_mth_lng_ts_mth_lng.
    DATA(t1) = CAST zif_lnt_registry( i_reg_d009 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/method_length.ts:67|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/method_length.ts:71|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_bf6e.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_stats ).
    DATA(t2) = i_type_9913.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/method_length.ts:99|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD is_abstract.
    DATA(t1) = CAST zcl_lnt_imethod_length_result( i_result ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/method_length.ts:126|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_method_length_conf( me->gt_cn_in_sr_rl_mt_ln_ts_mt_lng( ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_method_length_conf( me->gt_cn_in_sr_rl_mt_ln_ts_mt_lng( ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/method_length.ts:63|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/method_length.ts:67|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1488_ec55584c6d15.
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
