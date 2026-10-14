* TS: src/rules/no_dynamic_stuff.ts:39:1 NoDynamicStuff
CLASS zcl_lnt_no_dynamic_stuff DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_no_dynamic_stuff_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_sr_rl_n_dy_st_ts_n_dy_st RETURNING VALUE(result) TYPE REF TO zcl_lnt_no_dynamic_stuff_conf.
    METHODS s_c_i_sr_rl_n_dy_st_ts_n_dy_st IMPORTING i_conf TYPE REF TO zcl_lnt_no_dynamic_stuff_conf.
    METHODS r_p_i_sr_rl_n_dy_st_ts_n_dy_st IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_bf6e IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS dynamic_method_source IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS dynamic_assign_component IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS has_dynamic IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS not_literal IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_literal IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_dynamic_stuff IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_no_dynamic_stuff_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |no_dynamic_stuff|.
    DATA(t3) = |No dynamic stuff|.
    DATA(t4) = |Detects dynamic calls and other dynamic language constructs|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |CALL METHOD (lv_class)=>(lv_method).|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |CALL METHOD go_calendar->('RESET_DAY_INFO').|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |CALL FUNCTION lv_function_module.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |CREATE OBJECT ref TYPE (lv_class).|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ASSIGN (lv_name) TO <fs>.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |SORT tab BY (lv_field).|.
      DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t13->has = abap_true.
      t13->value = t7.
      t5 = t13.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t5 = t14.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = |cl_class=>method( ).|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t18 INTO t17 RESPECTING BLANKS.
      t17 = t17 && |go_calendar->reset_day_info( ).|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t19 INTO t17 RESPECTING BLANKS.
      t17 = t17 && |CALL FUNCTION 'ZFOO'.|.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t20 INTO t17 RESPECTING BLANKS.
      t17 = t17 && |CREATE OBJECT ref TYPE cl_class.|.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t21 INTO t17 RESPECTING BLANKS.
      t17 = t17 && |ASSIGN foo TO <fs>.|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t22 INTO t17 RESPECTING BLANKS.
      t17 = t17 && |SORT tab BY field.|.
      DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t23->has = abap_true.
      t23->value = t17.
      t15 = t23.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      t15 = t24.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |Dynamic constructs cannot be checked statically, they are no|.
      t27 = t27 && |t found by|.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t27 t28 INTO t27 RESPECTING BLANKS.
      t27 = t27 && |where-used lists and refactorings, and they can introduce in|.
      t27 = t27 && |jection vulnerabilities.|.
      DATA t29 TYPE c LENGTH 1.
      CLEAR t29.
      t29 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t27 t29 INTO t27 RESPECTING BLANKS.
      DATA t30 TYPE c LENGTH 1.
      CLEAR t30.
      t30 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t27 t30 INTO t27 RESPECTING BLANKS.
      t27 = t27 && |Dynamic tokens are also reported when containing a literal, |.
      t27 = t27 && |eg. CALL METHOD go_calendar->('RESET_DAY_INFO'),|.
      DATA t31 TYPE c LENGTH 1.
      CLEAR t31.
      t31 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t27 t31 INTO t27 RESPECTING BLANKS.
      t27 = t27 && |the syntax check does not resolve these either, so they beha|.
      t27 = t27 && |ve like any other dynamic token.|.
      DATA t32 TYPE c LENGTH 1.
      CLEAR t32.
      t32 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t27 t32 INTO t27 RESPECTING BLANKS.
      DATA t33 TYPE c LENGTH 1.
      CLEAR t33.
      t33 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t27 t33 INTO t27 RESPECTING BLANKS.
      t27 = t27 && |Dynamic SQL is reported by rule dangerous_statement.|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t27.
      t25 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t25 = t35.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t36.
    DATA(t37) = abap_true.
    IF t37 = abap_true.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t40.
      t39 = t40.
      DATA(t41) = CAST zlnt_runtime_arra_8ecd6afe19e0( t39 ).
      DATA(t42) = |SingleFile|.
      APPEND t42 TO t41->items.
      DATA(t43) = CAST zlnt_runtime_arra_8ecd6afe19e0( t39 ).
      DATA(t44) = |Security|.
      APPEND t44 TO t43->items.
      DATA(t45) = CAST zlnt_runtime_arra_8ecd6afe19e0( t39 ).
      t38 = t45.
      t36 = t38.
    ELSE.
      DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t46.
      t36 = t46.
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t48.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t15 i_extended_information = t25 i_tags = t36 i_pragma = t47 i_pseudo_comment = t48 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_sr_rl_n_dy_st_ts_n_dy_st.
    DATA(t1) = CAST zcl_lnt_no_dynamic_stuff_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_sr_rl_n_dy_st_ts_n_dy_st.
    DATA(t1) = CAST zcl_lnt_no_dynamic_stuff_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_dynamic_stuff.ts:75|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_sr_rl_n_dy_st_ts_n_dy_st.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_dynamic_stuff.ts:79|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_bf6e.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_dynamic_stuff.ts:93|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD dynamic_method_source.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_dynamic_stuff.ts:170|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD dynamic_assign_component.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_dynamic_stuff.ts:181|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD has_dynamic.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_dynamic_stuff.ts:186|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD not_literal.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_dynamic_stuff.ts:190|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD is_literal.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_dynamic_stuff.ts:194|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_no_dynamic_stuff_conf( me->g_c_i_sr_rl_n_dy_st_ts_n_dy_st(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_no_dynamic_stuff_conf( me->g_c_i_sr_rl_n_dy_st_ts_n_dy_st(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_no_dynamic_stuff_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_sr_rl_n_dy_st_ts_n_dy_st( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_sr_rl_n_dy_st_ts_n_dy_st( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1512_b7dc4dc12307.
  ENDMETHOD.
ENDCLASS.
