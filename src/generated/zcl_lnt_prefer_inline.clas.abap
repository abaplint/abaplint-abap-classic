* TS: src/rules/prefer_inline.ts:28:1 PreferInline
CLASS zcl_lnt_prefer_inline DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_prefer_inline_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_pr_in_ts_pr_inl RETURNING VALUE(result) TYPE REF TO zcl_lnt_prefer_inline_conf.
    METHODS in_in_sr_rl_prf_inl_ts_prf_inl IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_prefer_inline.
    METHODS st_cn_in_sr_rl_pr_in_ts_pr_inl IMPORTING i_conf TYPE REF TO zcl_lnt_prefer_inline_conf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze_scope IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_next_token IMPORTING i_ref TYPE REF TO zcl_lnt_ivariable_reference i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS first_use_is_write IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_identifier TYPE REF TO zcl_lnt_typed_identifier RETURNING VALUE(result) TYPE REF TO zcl_lnt_ivariable_reference.
    METHODS statement_has_generic_read IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_local_definition IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_identifier TYPE REF TO zcl_lnt_typed_identifier RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_scope_candidates IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prefer_inline IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_prefer_inline_conf( ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |prefer_inline|.
    DATA(t3) = |Prefer Inline Declarations|.
    DATA(t4) = |Prefer inline to up-front declarations.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |DATA foo TYPE i.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |foo = 2.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |DATA percentage TYPE decfloat34.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |percentage = ( comment_number / abs_statement_number ) * 100|.
      t7 = t7 && |.|.
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
      DATA(t15) = |DATA(foo) = 2.|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t16 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |DATA(percentage) = CONV decfloat34( comment_number / abs_sta|.
      t15 = t15 && |tement_number ) * 100.|.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t15.
      t13 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t13 = t18.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = |EXPERIMENTAL|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t22 INTO t21 RESPECTING BLANKS.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t23 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |Activates if language version is v740sp02 or above.|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t24 INTO t21 RESPECTING BLANKS.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t25 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |Variables must be local(METHOD or FORM).|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t26 INTO t21 RESPECTING BLANKS.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t27 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |No generic or void typed variables. No syntax errors.|.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t28 INTO t21 RESPECTING BLANKS.
      DATA t29 TYPE c LENGTH 1.
      CLEAR t29.
      t29 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t29 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |First position used must be a full/pure write.|.
      DATA t30 TYPE c LENGTH 1.
      CLEAR t30.
      t30 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t30 INTO t21 RESPECTING BLANKS.
      DATA t31 TYPE c LENGTH 1.
      CLEAR t31.
      t31 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t31 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |Move statment is not a cast(?=)|.
      DATA t32 TYPE c LENGTH 1.
      CLEAR t32.
      t32 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t32 INTO t21 RESPECTING BLANKS.
      DATA t33 TYPE c LENGTH 1.
      CLEAR t33.
      t33 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t33 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t21 = t21 && |nABAP.md#prefer-inline-to-up-front-declarations|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t21.
      t19 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t19 = t35.
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
      DATA(t42) = |Styleguide|.
      APPEND t42 TO t41->items.
      DATA(t43) = CAST zlnt_runtime_arra_8ecd6afe19e0( t39 ).
      DATA(t44) = |Upport|.
      APPEND t44 TO t43->items.
      DATA(t45) = CAST zlnt_runtime_arra_8ecd6afe19e0( t39 ).
      DATA(t46) = |Experimental|.
      APPEND t46 TO t45->items.
      DATA(t47) = CAST zlnt_runtime_arra_8ecd6afe19e0( t39 ).
      DATA(t48) = |Quickfix|.
      APPEND t48 TO t47->items.
      DATA(t49) = CAST zlnt_runtime_arra_8ecd6afe19e0( t39 ).
      t38 = t49.
      t36 = t38.
    ELSE.
      DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t50.
      t36 = t50.
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t52.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t13 i_extended_information = t19 i_tags = t36 i_pragma = t51 i_pseudo_comment = t52 ).
    result = t1.

  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_pr_in_ts_pr_inl.
    DATA(t1) = CAST zcl_lnt_prefer_inline_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD in_in_sr_rl_prf_inl_ts_prf_inl.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/prefer_inline.ts:64|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_pr_in_ts_pr_inl.
    DATA(t1) = CAST zcl_lnt_prefer_inline_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/prefer_inline.ts:69|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/prefer_inline.ts:73|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD analyze_scope.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/prefer_inline.ts:102|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD find_next_token.
    DATA(t1) = CAST zcl_lnt_ivariable_reference( i_ref ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/prefer_inline.ts:174|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD first_use_is_write.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA(t2) = CAST zcl_lnt_typed_identifier( i_identifier ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/prefer_inline.ts:190|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD statement_has_generic_read.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_statement ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/prefer_inline.ts:238|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD is_local_definition.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA(t2) = CAST zcl_lnt_typed_identifier( i_identifier ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/prefer_inline.ts:254|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD find_scope_candidates.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/prefer_inline.ts:264|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prefer_inline_conf( me->gt_cn_in_sr_rl_pr_in_ts_pr_inl( ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prefer_inline_conf( me->gt_cn_in_sr_rl_pr_in_ts_pr_inl( ) ).
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/prefer_inline.ts:64|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/prefer_inline.ts:69|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1557_93a2fd328614.
  ENDMETHOD.
  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.
  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
