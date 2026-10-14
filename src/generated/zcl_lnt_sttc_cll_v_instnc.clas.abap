* TS: src/rules/static_call_via_instance.ts:19:1 StaticCallViaInstance
CLASS zcl_lnt_sttc_cll_v_instnc DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_sttc_cll_v_instnc_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_s_c_v_i_t_st_cl_v_in RETURNING VALUE(result) TYPE REF TO zcl_lnt_sttc_cll_v_instnc_cnf.
    METHODS s_c_i_s_r_s_c_v_i_t_st_cl_v_in IMPORTING i_conf TYPE REF TO zcl_lnt_sttc_cll_v_instnc_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS list_method_calls IMPORTING i_filename TYPE string i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sttc_cll_v_instnc IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_sttc_cll_v_instnc_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |static_call_via_instance|.
    DATA(t3) = |Static call via instance variable|.
    DATA(t4) = |Static method call via instance variable|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |METHOD run.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  NEW lcl_helper( )->static_method( ).|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDMETHOD.|.
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
      DATA(t14) = |METHOD run.|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t15 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |  lcl_helper=>static_method( ).|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t16 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |ENDMETHOD.|.
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
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t21 = t21 && |nABAP.md#dont-call-static-methods-through-instance-variables|.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t21.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t19 = t23.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t24.
    DATA(t25) = abap_true.
    IF t25 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t28.
      t27 = t28.
      DATA(t29) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      DATA(t30) = |Styleguide|.
      APPEND t30 TO t29->items.
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      t26 = t31.
      t24 = t26.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t32.
      t24 = t32.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t12 i_extended_information = t19 i_tags = t24 i_pragma = t33 i_pseudo_comment = t34 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_s_r_s_c_v_i_t_st_cl_v_in.
    DATA(t1) = CAST zcl_lnt_sttc_cll_v_instnc_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_s_c_v_i_t_st_cl_v_in.
    DATA(t1) = CAST zcl_lnt_sttc_cll_v_instnc_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/static_call_via_instance.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/static_call_via_instance.ts:47|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD list_method_calls.
    DATA(t1) = i_filename.
    DATA(t2) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/static_call_via_instance.ts:76|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_sttc_cll_v_instnc_cnf( me->g_c_i_s_r_s_c_v_i_t_st_cl_v_in(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_sttc_cll_v_instnc_cnf( me->g_c_i_s_r_s_c_v_i_t_st_cl_v_in(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_sttc_cll_v_instnc_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_s_c_v_i_t_st_cl_v_in( i_conf = t1 ).

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1617_ce6e1a00ffa4.
  ENDMETHOD.
ENDCLASS.
