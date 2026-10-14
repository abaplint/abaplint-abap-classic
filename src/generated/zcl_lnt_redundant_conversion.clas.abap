* TS: src/rules/redundant_conversion.ts:24:1 RedundantConversion
CLASS zcl_lnt_redundant_conversion DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_rdndnt_cnvrsn_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_rd_cn_ts_rd_cnv RETURNING VALUE(result) TYPE REF TO zcl_lnt_rdndnt_cnvrsn_cnf.
    METHODS st_cn_in_sr_rl_rd_cn_ts_rd_cnv IMPORTING i_conf TYPE REF TO zcl_lnt_rdndnt_cnvrsn_cnf.
    METHODS in_in_sr_rl_rdn_cnv_ts_rdn_cnv IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_redundant_conversion.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS arthmtc_uss_sm_trgt_typ IMPORTING i_conversion TYPE REF TO zcl_lnt_expression_node i_body_source TYPE REF TO zcl_lnt_expression_node i_file TYPE REF TO zcl_lnt_abap_file i_scope TYPE REF TO zif_lnt_spaghetti_scope_node
    i_conversion_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS source_type IMPORTING i_source_75cf TYPE REF TO zcl_lnt_expression_node i_scope TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS field_chain_type IMPORTING i_field_chain TYPE REF TO zcl_lnt_expression_node i_scope TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS infer IMPORTING i_context TYPE REF TO zcl_lnt_abstract_type i_found TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS same_type IMPORTING i_first TYPE REF TO zcl_lnt_abstract_type i_second TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_redundant_conversion IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_rdndnt_cnvrsn_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |redundant_conversion|.
    DATA(t3) = |Redundant Conversion|.
    DATA(t4) = |Find redundant CONV expressions|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |DATA text TYPE string.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |text = CONV string( text ).|.
      DATA(t9) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t9->has = abap_true.
      t9->value = t7.
      t5 = t9.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      t5 = t10.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA(t13) = |DATA text TYPE string.|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t13 t14 INTO t13 RESPECTING BLANKS.
      t13 = t13 && |text = text.|.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t13.
      t11 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      t11 = t16.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA(t19) = |Reports CONV expressions whose operand already has the conve|.
      t19 = t19 && |rsion's target type.|.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t19.
      t17 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t17 = t21.
    ENDIF.
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
      DATA(t28) = |Quickfix|.
      APPEND t28 TO t27->items.
      DATA(t29) = CAST zlnt_runtime_arra_8ecd6afe19e0( t25 ).
      t24 = t29.
      t22 = t24.
    ELSE.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t30.
      t22 = t30.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t11 i_extended_information = t17 i_tags = t22 i_pragma = t31 i_pseudo_comment = t32 ).
    result = t1.
    
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_rd_cn_ts_rd_cnv.
    DATA(t1) = CAST zcl_lnt_rdndnt_cnvrsn_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_rd_cn_ts_rd_cnv.
    DATA(t1) = CAST zcl_lnt_rdndnt_cnvrsn_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/redundant_conversion.ts:46|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD in_in_sr_rl_rdn_cnv_ts_rdn_cnv.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/redundant_conversion.ts:50|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/redundant_conversion.ts:55|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD arthmtc_uss_sm_trgt_typ.
    DATA(t1) = CAST zcl_lnt_expression_node( i_conversion ).
    DATA(t2) = CAST zcl_lnt_expression_node( i_body_source ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t4) = CAST zif_lnt_spaghetti_scope_node( i_scope ).
    DATA(t5) = CAST zcl_lnt_abstract_type( i_conversion_type ).
    DATA(t6) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t7) = |src/rules/redundant_conversion.ts:138|.
    t6->source_location = t7.
    RAISE EXCEPTION t6.
  ENDMETHOD.
  METHOD source_type.
    DATA(t1) = CAST zcl_lnt_expression_node( i_source_75cf ).
    DATA(t2) = CAST zif_lnt_spaghetti_scope_node( i_scope ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/redundant_conversion.ts:166|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD field_chain_type.
    DATA(t1) = CAST zcl_lnt_expression_node( i_field_chain ).
    DATA(t2) = CAST zif_lnt_spaghetti_scope_node( i_scope ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/redundant_conversion.ts:196|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD infer.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_context ).
    DATA(t2) = CAST zcl_lnt_abstract_type( i_found ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/redundant_conversion.ts:226|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD same_type.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_first ).
    DATA(t2) = CAST zcl_lnt_abstract_type( i_second ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/redundant_conversion.ts:237|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_rdndnt_cnvrsn_cnf( me->gt_cn_in_sr_rl_rd_cn_ts_rd_cnv(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_rdndnt_cnvrsn_cnf( me->gt_cn_in_sr_rl_rd_cn_ts_rd_cnv(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/redundant_conversion.ts:46|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/redundant_conversion.ts:50|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1579_6856162fce5a.
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
