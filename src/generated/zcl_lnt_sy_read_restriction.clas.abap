* TS: src/rules/sy_read_restriction.ts:45:1 SyReadRestriction
CLASS zcl_lnt_sy_read_restriction DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_sy_rd_rstrctn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_sy_rd_rs_ts_sy_rd_rs RETURNING VALUE(result) TYPE REF TO zcl_lnt_sy_rd_rstrctn_cnf.
    METHODS s_c_i_s_r_sy_rd_rs_ts_sy_rd_rs IMPORTING i_conf TYPE REF TO zcl_lnt_sy_rd_rstrctn_cnf.
    METHODS r_p_i_s_r_sy_rd_rs_ts_sy_rd_rs IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_ac26 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_read_restriction IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_sy_rd_rstrctn_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |sy_read_restriction|.
    DATA(t3) = |SY field read restriction|.
    DATA(t4) = |Finds reads of SY fields not allowed in the current language|.
    t4 = t4 && | version|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |lv = sy-uname.|.
      DATA(t8) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t8->has = abap_true.
      t8->value = t7.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      t5 = t9.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA(t11) = abap_true.
    IF t11 = abap_true.
      DATA(t12) = |IF sy-subrc = 0. ENDIF.|.
      DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t13->has = abap_true.
      t13->value = t12.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t10 = t14.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE string.
      DATA t18 TYPE string.
      DATA t19 TYPE string.
      DATA(t20) = |In ABAP Cloud, only 17 system fields may be read; reads of o|.
      t20 = t20 && |ther fields produce a warning.|.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t21 INTO t20 RESPECTING BLANKS.
      DATA(t22) = |In ABAP for Key Users, only 5 system fields may be read:|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t23 INTO t22 RESPECTING BLANKS.
      DATA(t24) = strlen( t20 ).
      t19 = |{ t20 }{ t22 }|.
      DATA(t25) = |SY-DBCNT, SY-FDPOS, SY-INDEX, SY-SUBRC, SY-TABIX.|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t25 t26 INTO t25 RESPECTING BLANKS.
      DATA(t27) = strlen( t19 ).
      t18 = |{ t19 }{ t25 }|.
      DATA(t28) = |https://help.sap.com/doc/abapdocu_cp_index_htm/CLOUD/en-US/A|.
      t28 = t28 && |BENSYSTEM_FIELDS.html|.
      DATA(t29) = strlen( t18 ).
      t17 = |{ t18 }{ t28 }|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t17.
      t15 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t15 = t31.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t32.
    DATA(t33) = abap_true.
    IF t33 = abap_true.
      DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t36.
      t35 = t36.
      DATA(t37) = CAST zlnt_runtime_arra_8ecd6afe19e0( t35 ).
      DATA(t38) = |SingleFile|.
      APPEND t38 TO t37->items.
      DATA(t39) = CAST zlnt_runtime_arra_8ecd6afe19e0( t35 ).
      t34 = t39.
      t32 = t34.
    ELSE.
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t40.
      t32 = t40.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t42.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t10 i_extended_information = t15 i_tags = t32 i_pragma = t41 i_pseudo_comment = t42 ).
    result = t1.
    
  ENDMETHOD.
  METHOD g_c_i_s_r_sy_rd_rs_ts_sy_rd_rs.
    DATA(t1) = CAST zcl_lnt_sy_rd_rstrctn_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD s_c_i_s_r_sy_rd_rs_ts_sy_rd_rs.
    DATA(t1) = CAST zcl_lnt_sy_rd_rstrctn_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/sy_read_restriction.ts:69|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_sy_rd_rs_ts_sy_rd_rs.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_ac26 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/sy_read_restriction.ts:73|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_sy_rd_rstrctn_cnf( me->g_c_i_s_r_sy_rd_rs_ts_sy_rd_rs(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_sy_rd_rstrctn_cnf( me->g_c_i_s_r_sy_rd_rs_ts_sy_rd_rs(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_sy_rd_rstrctn_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_sy_rd_rs_ts_sy_rd_rs( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_sy_rd_rs_ts_sy_rd_rs( i_file = i_file i_obj_ac26 = i_obj_1ed0 ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1627_6db6c66c834c.
  ENDMETHOD.
ENDCLASS.
