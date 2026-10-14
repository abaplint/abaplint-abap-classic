* TS: src/rules/xml_consistency.ts:19:1 XMLConsistency
CLASS zcl_lnt_xml_consistency DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_xml_consistency_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_xm_cn_ts_xm_cns RETURNING VALUE(result) TYPE REF TO zcl_lnt_xml_consistency_conf.
    METHODS st_cn_in_sr_rl_xm_cn_ts_xm_cns IMPORTING i_conf TYPE REF TO zcl_lnt_xml_consistency_conf.
    METHODS in_in_sr_rl_xml_cns_ts_xml_cns IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_xml_consistency.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_class IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_class i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_text_pool IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_interface IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_ob_interface i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_text_length IMPORTING i_file TYPE REF TO zif_lnt_file i_field_name TYPE string i_text TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_max_length TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_lang TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS run_data_element IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_data_element i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_required_field IMPORTING i_file TYPE REF TO zif_lnt_file i_field_name TYPE string i_value TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS run_domain IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_domain i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_transaction IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_transaction i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_message_class IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_ob_message_class i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_lock_object IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_lock_object i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_table IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_table i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_xml_consistency IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_xml_consistency_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |xml_consistency|.
    DATA(t3) = |XML consistency|.
    DATA(t4) = |Checks the consistency of main XML files|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |Checks:|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t10 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* XML is well-formed and parseable|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t11 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* Naming for CLAS and INTF objects|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t12 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* QUAN fields in TABL objects have reference table and field|.
      t9 = t9 && | values|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t13 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* Transparent TABL objects have delivery class and size cate|.
      t9 = t9 && |gory set|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t14 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* Lock parameter names in ENQU objects are max 16 characters|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t15 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* Texts and translations do not exceed maximum allowed lengt|.
      t9 = t9 && |h.|.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = t9.
      t7 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      t7 = t17.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t18.
    DATA(t19) = abap_true.
    IF t19 = abap_true.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t22.
      t21 = t22.
      DATA(t23) = CAST zlnt_runtime_arra_8ecd6afe19e0( t21 ).
      DATA(t24) = |Naming|.
      APPEND t24 TO t23->items.
      DATA(t25) = CAST zlnt_runtime_arra_8ecd6afe19e0( t21 ).
      DATA(t26) = |Syntax|.
      APPEND t26 TO t25->items.
      DATA(t27) = CAST zlnt_runtime_arra_8ecd6afe19e0( t21 ).
      t20 = t27.
      t18 = t20.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t28.
      t18 = t28.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t18 i_pragma = t29 i_pseudo_comment = t30 ).
    result = t1.
    
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_xm_cn_ts_xm_cns.
    DATA(t1) = CAST zcl_lnt_xml_consistency_conf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_xm_cn_ts_xm_cns.
    DATA(t1) = CAST zcl_lnt_xml_consistency_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/xml_consistency.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD in_in_sr_rl_xml_cns_ts_xml_cns.
    DATA(t1) = CAST zif_lnt_registry( i_reg_d009 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/xml_consistency.ts:47|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/xml_consistency.ts:51|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run_class.
    DATA(t1) = CAST zcl_lnt_class( i_obj_1ed0 ).
    DATA(t2) = CAST zif_lnt_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/xml_consistency.ts:100|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD run_text_pool.
    DATA(t1) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t2) = CAST zif_lnt_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/xml_consistency.ts:115|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD run_interface.
    DATA(t1) = CAST zcl_lnt_ob_interface( i_obj_1ed0 ).
    DATA(t2) = CAST zif_lnt_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/xml_consistency.ts:129|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD check_text_length.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = i_field_name.
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_text ).
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( i_max_length ).
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_lang ).
    DATA(t6) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t7) = |src/rules/xml_consistency.ts:144|.
    t6->source_location = t7.
    RAISE EXCEPTION t6.
  ENDMETHOD.
  METHOD run_data_element.
    DATA(t1) = CAST zcl_lnt_data_element( i_obj_1ed0 ).
    DATA(t2) = CAST zif_lnt_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/xml_consistency.ts:159|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD check_required_field.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = i_field_name.
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_value ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/xml_consistency.ts:215|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD run_domain.
    DATA(t1) = CAST zcl_lnt_domain( i_obj_1ed0 ).
    DATA(t2) = CAST zif_lnt_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/xml_consistency.ts:223|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD run_transaction.
    DATA(t1) = CAST zcl_lnt_transaction( i_obj_1ed0 ).
    DATA(t2) = CAST zif_lnt_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/xml_consistency.ts:241|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD run_message_class.
    DATA(t1) = CAST zcl_lnt_ob_message_class( i_obj_1ed0 ).
    DATA(t2) = CAST zif_lnt_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/xml_consistency.ts:256|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD run_lock_object.
    DATA(t1) = CAST zcl_lnt_lock_object( i_obj_1ed0 ).
    DATA(t2) = CAST zif_lnt_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/xml_consistency.ts:273|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD run_table.
    DATA(t1) = CAST zcl_lnt_table( i_obj_1ed0 ).
    DATA(t2) = CAST zif_lnt_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/xml_consistency.ts:286|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_xml_consistency_conf( me->gt_cn_in_sr_rl_xm_cn_ts_xm_cns(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_xml_consistency_conf( me->gt_cn_in_sr_rl_xm_cn_ts_xm_cns(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/xml_consistency.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/xml_consistency.ts:47|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1682_28fcf90d5cf8.
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
