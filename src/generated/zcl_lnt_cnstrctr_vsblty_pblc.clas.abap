* TS: src/rules/constructor_visibility_public.ts:12:1 ConstructorVisibilityPublic
CLASS zcl_lnt_cnstrctr_vsblty_pblc DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cnstrc_vsblty_pblc_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_cn_vs_pb_ts_cn_vs_pb RETURNING VALUE(result) TYPE REF TO zcl_lnt_cnstrc_vsblty_pblc_cnf.
    METHODS i_i_sr_rl_cn_vs_pb_ts_cn_vs_pb IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_cnstrctr_vsblty_pblc.
    METHODS s_c_i_s_r_cn_vs_pb_ts_cn_vs_pb IMPORTING i_conf TYPE REF TO zcl_lnt_cnstrc_vsblty_pblc_cnf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cnstrctr_vsblty_pblc IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_cnstrc_vsblty_pblc_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |constructor_visibility_public|.
    DATA(t3) = |Check constructor visibility is public|.
    DATA(t4) = |Constructor must be placed in the public section, even if th|.
    t4 = t4 && |e class is not CREATE PUBLIC.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |CLASS zcl_foo DEFINITION PUBLIC CREATE PRIVATE.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  PRIVATE SECTION.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    METHODS constructor.|.
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
      DATA(t15) = |CLASS zcl_foo DEFINITION PUBLIC CREATE PRIVATE.|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t16 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |  PUBLIC SECTION.|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t17 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |    METHODS constructor.|.
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
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = ||.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t24 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |This only applies to global classes.|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t25 INTO t23 RESPECTING BLANKS.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t26 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t23 = t23 && |nABAP.md#if-your-global-class-is-create-private-leave-the-co|.
      t23 = t23 && |nstructor-public|.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t27 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
      t23 = t23 && |-US/abeninstance_constructor_guidl.html|.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t23.
      t21 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t21 = t29.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t30.
    DATA(t31) = abap_true.
    IF t31 = abap_true.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t34.
      t33 = t34.
      DATA(t35) = CAST zlnt_runtime_arra_8ecd6afe19e0( t33 ).
      DATA(t36) = |Styleguide|.
      APPEND t36 TO t35->items.
      DATA(t37) = CAST zlnt_runtime_arra_8ecd6afe19e0( t33 ).
      DATA(t38) = |SingleFile|.
      APPEND t38 TO t37->items.
      DATA(t39) = CAST zlnt_runtime_arra_8ecd6afe19e0( t33 ).
      t32 = t39.
      t30 = t32.
    ELSE.
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t40.
      t30 = t40.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t42.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t13 i_extended_information = t21 i_tags = t30 i_pragma = t41 i_pseudo_comment = t42 ).
    result = t1.

  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/constructor_visibility_public.ts:38|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD g_c_i_s_r_cn_vs_pb_ts_cn_vs_pb.
    DATA(t1) = CAST zcl_lnt_cnstrc_vsblty_pblc_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD i_i_sr_rl_cn_vs_pb_ts_cn_vs_pb.
    DATA(t1) = CAST zif_lnt_registry( i_reg_d009 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/constructor_visibility_public.ts:46|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD s_c_i_s_r_cn_vs_pb_ts_cn_vs_pb.
    DATA(t1) = CAST zcl_lnt_cnstrc_vsblty_pblc_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/constructor_visibility_public.ts:50|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/constructor_visibility_public.ts:54|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cnstrc_vsblty_pblc_cnf( me->g_c_i_s_r_cn_vs_pb_ts_cn_vs_pb(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cnstrc_vsblty_pblc_cnf( me->g_c_i_s_r_cn_vs_pb_ts_cn_vs_pb(  ) ).
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/constructor_visibility_public.ts:46|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/constructor_visibility_public.ts:50|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1366_7f4b9d42b947.
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
