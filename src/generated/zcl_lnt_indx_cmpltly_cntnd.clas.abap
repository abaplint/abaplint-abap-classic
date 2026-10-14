* TS: src/rules/index_completely_contained.ts:11:1 IndexCompletelyContained
CLASS zcl_lnt_indx_cmpltly_cntnd DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_indx_cmpltly_cntnd_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS i_i_sr_rl_in_cm_cn_ts_in_cm_cn RETURNING VALUE(result) TYPE REF TO zcl_lnt_indx_cmpltly_cntnd.
    METHODS g_c_i_s_r_in_cm_cn_ts_in_cm_cn RETURNING VALUE(result) TYPE REF TO zcl_lnt_indx_cmpltly_cntnd_cnf.
    METHODS s_c_i_s_r_in_cm_cn_ts_in_cm_cn IMPORTING i_conf TYPE REF TO zcl_lnt_indx_cmpltly_cntnd_cnf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_indx_cmpltly_cntnd IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_indx_cmpltly_cntnd_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |index_completely_contained|.
    DATA(t3) = |Check if database table indexes are completely contained|.
    DATA(t4) = |If indexes are completely contained in other indexes, they c|.
    t4 = t4 && |an be removed to improve performance.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11 = t12.
      DATA(t13) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      DATA(t14) = |Performance|.
      APPEND t14 TO t13->items.
      DATA(t15) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      DATA(t16) = |SingleFile|.
      APPEND t16 TO t15->items.
      DATA(t17) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      t10 = t17.
      t8 = t10.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t18.
      t8 = t18.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t8 i_pragma = t19 i_pseudo_comment = t20 ).
    result = t1.
    
  ENDMETHOD.
  METHOD i_i_sr_rl_in_cm_cn_ts_in_cm_cn.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/index_completely_contained.ts:23|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD g_c_i_s_r_in_cm_cn_ts_in_cm_cn.
    DATA(t1) = CAST zcl_lnt_indx_cmpltly_cntnd_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD s_c_i_s_r_in_cm_cn_ts_in_cm_cn.
    DATA(t1) = CAST zcl_lnt_indx_cmpltly_cntnd_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/index_completely_contained.ts:31|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/index_completely_contained.ts:35|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/index_completely_contained.ts:23|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_indx_cmpltly_cntnd_cnf( me->g_c_i_s_r_in_cm_cn_ts_in_cm_cn(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_indx_cmpltly_cntnd_cnf( me->g_c_i_s_r_in_cm_cn_ts_in_cm_cn(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/index_completely_contained.ts:31|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1447_fcaa86797a54.
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
