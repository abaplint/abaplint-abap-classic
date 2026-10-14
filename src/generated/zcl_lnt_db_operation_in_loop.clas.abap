* TS: src/rules/db_operation_in_loop.ts:13:1 DbOperationInLoop
CLASS zcl_lnt_db_operation_in_loop DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_db_oprtn_in_lp_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_d_o_i_l_t_d_op_in_lp RETURNING VALUE(result) TYPE REF TO zcl_lnt_db_oprtn_in_lp_cnf.
    METHODS s_c_i_s_r_d_o_i_l_t_d_op_in_lp IMPORTING i_conf TYPE REF TO zcl_lnt_db_oprtn_in_lp_cnf.
    METHODS r_p_i_s_r_d_o_i_l_t_d_op_in_lp IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_db_operation_in_loop IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_db_oprtn_in_lp_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |db_operation_in_loop|.
    DATA(t3) = |Database operation in loop|.
    DATA(t4) = |Database operation in LOOP/DO/WHILE|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |LOOP AT lt_items INTO DATA(ls_item).|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  SELECT SINGLE name FROM zcustomer INTO @DATA(lv_name) WHER|.
      t7 = t7 && |E id = @ls_item-customer_id.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDLOOP.|.
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
      DATA(t14) = |ASSERT lines( lt_items ) > 0.|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t15 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |SELECT id, name FROM zcustomer INTO TABLE @DATA(lt_customers|.
      t14 = t14 && |)|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t16 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |  FOR ALL ENTRIES IN @lt_items|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t17 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |  WHERE id = @lt_items-customer_id.|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t18 INTO t14 RESPECTING BLANKS.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t19 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |LOOP AT lt_items INTO DATA(ls_item).|.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t20 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |  READ TABLE lt_customers INTO DATA(ls_customer) WITH KEY id|.
      t14 = t14 && | = ls_item-customer_id.|.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t14 t21 INTO t14 RESPECTING BLANKS.
      t14 = t14 && |ENDLOOP.|.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t14.
      t12 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t12 = t23.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t29.
      t28 = t29.
      DATA(t30) = CAST zlnt_runtime_arra_8ecd6afe19e0( t28 ).
      DATA(t31) = |SingleFile|.
      APPEND t31 TO t30->items.
      DATA(t32) = CAST zlnt_runtime_arra_8ecd6afe19e0( t28 ).
      DATA(t33) = |Performance|.
      APPEND t33 TO t32->items.
      DATA(t34) = CAST zlnt_runtime_arra_8ecd6afe19e0( t28 ).
      t27 = t34.
      t25 = t27.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t35.
      t25 = t35.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t12 i_extended_information = t24 i_tags = t25 i_pragma = t36 i_pseudo_comment = t37 ).
    result = t1.
    
  ENDMETHOD.
  METHOD g_c_i_s_r_d_o_i_l_t_d_op_in_lp.
    DATA(t1) = CAST zcl_lnt_db_oprtn_in_lp_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD s_c_i_s_r_d_o_i_l_t_d_op_in_lp.
    DATA(t1) = CAST zcl_lnt_db_oprtn_in_lp_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/db_operation_in_loop.ts:41|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_d_o_i_l_t_d_op_in_lp.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/db_operation_in_loop.ts:45|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_db_oprtn_in_lp_cnf( me->g_c_i_s_r_d_o_i_l_t_d_op_in_lp(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_db_oprtn_in_lp_cnf( me->g_c_i_s_r_d_o_i_l_t_d_op_in_lp(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_db_oprtn_in_lp_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_d_o_i_l_t_d_op_in_lp( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_d_o_i_l_t_d_op_in_lp( i_file = i_file ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1376_9d55e8666060.
  ENDMETHOD.
ENDCLASS.
