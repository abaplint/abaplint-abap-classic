* TS: src/rules/form_tables_obsolete.ts:13:1 FormTablesObsolete
CLASS zcl_lnt_form_tables_obsolete DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_frm_tbls_obslt_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_fr_tb_ob_ts_fr_tb_ob RETURNING VALUE(result) TYPE REF TO zcl_lnt_frm_tbls_obslt_cnf.
    METHODS s_c_i_s_r_fr_tb_ob_ts_fr_tb_ob IMPORTING i_conf TYPE REF TO zcl_lnt_frm_tbls_obslt_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_form_tables_obsolete IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_frm_tbls_obslt_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |form_tables_obsolete|.
    DATA(t3) = |TABLES parameters are obsolete|.
    DATA(t4) = |Checks for TABLES parameters in forms.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |FORM update_items TABLES items.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDFORM.|.
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
      DATA(t13) = |FORM update_items CHANGING items TYPE ty_items.|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t13 t14 INTO t13 RESPECTING BLANKS.
      t13 = t13 && |ENDFORM.|.
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
      DATA(t19) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
      t19 = t19 && |-US/abapform_tables.html|.
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
      DATA(t28) = |SingleFile|.
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
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/form_tables_obsolete.ts:31|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD g_c_i_s_r_fr_tb_ob_ts_fr_tb_ob.
    DATA(t1) = CAST zcl_lnt_frm_tbls_obslt_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_fr_tb_ob_ts_fr_tb_ob.
    DATA(t1) = CAST zcl_lnt_frm_tbls_obslt_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/form_tables_obsolete.ts:39|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/form_tables_obsolete.ts:43|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_frm_tbls_obslt_cnf( me->g_c_i_s_r_fr_tb_ob_ts_fr_tb_ob(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_frm_tbls_obslt_cnf( me->g_c_i_s_r_fr_tb_ob_ts_fr_tb_ob(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_frm_tbls_obslt_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_fr_tb_ob_ts_fr_tb_ob( i_conf = t1 ).

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1413_c0d73ff2b062.
  ENDMETHOD.
ENDCLASS.
