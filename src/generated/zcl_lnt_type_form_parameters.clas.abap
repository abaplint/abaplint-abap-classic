* TS: src/rules/type_form_parameters.ts:13:1 TypeFormParameters
CLASS zcl_lnt_type_form_parameters DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_typ_frm_prmtrs_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_parameter_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_ty_fr_pr_ts_ty_fr_pr RETURNING VALUE(result) TYPE REF TO zcl_lnt_typ_frm_prmtrs_cnf.
    METHODS s_c_i_s_r_ty_fr_pr_ts_ty_fr_pr IMPORTING i_conf TYPE REF TO zcl_lnt_typ_frm_prmtrs_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_type_form_parameters IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_typ_frm_prmtrs_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |type_form_parameters|.
    DATA(t3) = |Type FORM parameters|.
    DATA(t4) = |Checks for untyped FORM parameters|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |FORM foo USING bar.|.
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
      DATA(t13) = |FORM foo USING bar TYPE string.|.
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
      DATA(t24) = |SingleFile|.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t11 i_extended_information = t17 i_tags = t18 i_pragma = t27 i_pseudo_comment = t28 ).
    result = t1.

  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = i_parameter_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/type_form_parameters.ts:30|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD g_c_i_s_r_ty_fr_pr_ts_ty_fr_pr.
    DATA(t1) = CAST zcl_lnt_typ_frm_prmtrs_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_ty_fr_pr_ts_ty_fr_pr.
    DATA(t1) = CAST zcl_lnt_typ_frm_prmtrs_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/type_form_parameters.ts:38|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/type_form_parameters.ts:42|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_typ_frm_prmtrs_cnf( me->g_c_i_s_r_ty_fr_pr_ts_ty_fr_pr(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_typ_frm_prmtrs_cnf( me->g_c_i_s_r_ty_fr_pr_ts_ty_fr_pr(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_typ_frm_prmtrs_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_ty_fr_pr_ts_ty_fr_pr( i_conf = t1 ).

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1635_f8f587679206.
  ENDMETHOD.
ENDCLASS.
