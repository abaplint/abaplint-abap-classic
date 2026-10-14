* TS: src/rules/easy_to_find_messages.ts:15:1 EasyToFindMessages
CLASS zcl_lnt_easy_to_find_messages DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_esy_t_fnd_mssgs_cnf.
    DATA msag_references TYPE REF TO zif_lnt_msag_references.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_e_t_f_m_t_es_t_fn_ms RETURNING VALUE(result) TYPE REF TO zcl_lnt_esy_t_fnd_mssgs_cnf.
    METHODS s_c_i_s_r_e_t_f_m_t_es_t_fn_ms IMPORTING i_conf TYPE REF TO zcl_lnt_esy_t_fnd_mssgs_cnf.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS r_i_s_r_e_t_f_ms_ts_es_t_fn_ms IMPORTING i_object_19cd TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_easy_to_find_messages IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_esy_t_fnd_mssgs_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |easy_to_find_messages|.
    DATA(t3) = |Easy to find messages|.
    DATA(t4) = |Make messages easy to find|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |All messages must be statically referenced exactly once|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t10 INTO t9 RESPECTING BLANKS.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t11 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |Only MESSAGE and RAISE statments are counted as static refer|.
      t9 = t9 && |ences|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t12 INTO t9 RESPECTING BLANKS.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t13 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |Also see rule "message_exists"|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t14 INTO t9 RESPECTING BLANKS.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t15 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t9 = t9 && |nABAP.md#make-messages-easy-to-find|.
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
      DATA(t24) = |Styleguide|.
      APPEND t24 TO t23->items.
      DATA(t25) = CAST zlnt_runtime_arra_8ecd6afe19e0( t21 ).
      t20 = t25.
      t18 = t20.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t26.
      t18 = t26.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t18 i_pragma = t27 i_pseudo_comment = t28 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_s_r_e_t_f_m_t_es_t_fn_ms.
    DATA(t1) = CAST zcl_lnt_esy_t_fnd_mssgs_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_e_t_f_m_t_es_t_fn_ms.
    DATA(t1) = CAST zcl_lnt_esy_t_fnd_mssgs_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/easy_to_find_messages.ts:39|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/easy_to_find_messages.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_i_s_r_e_t_f_ms_ts_es_t_fn_ms.
    DATA(t1) = CAST zif_lnt_object( i_object_19cd ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/easy_to_find_messages.ts:56|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_esy_t_fnd_mssgs_cnf( me->g_c_i_s_r_e_t_f_m_t_es_t_fn_ms(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_esy_t_fnd_mssgs_cnf( me->g_c_i_s_r_e_t_f_m_t_es_t_fn_ms(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/easy_to_find_messages.ts:39|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/easy_to_find_messages.ts:56|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1389_b0baa401b165.
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
