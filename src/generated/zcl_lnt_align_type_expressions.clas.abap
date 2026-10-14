* TS: src/rules/align_type_expressions.ts:23:1 AlignTypeExpressions
CLASS zcl_lnt_align_type_expressions DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_algn_typ_exprssns_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_al_ty_ex_ts_al_ty_ex RETURNING VALUE(result) TYPE REF TO zcl_lnt_algn_typ_exprssns_cnf.
    METHODS s_c_i_s_r_al_ty_ex_ts_al_ty_ex IMPORTING i_conf TYPE REF TO zcl_lnt_algn_typ_exprssns_cnf.
    METHODS r_p_i_s_r_al_ty_ex_ts_al_ty_ex IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_bf6e IMPORTING i_fields_62af TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_column TYPE int8 i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_methods IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_events IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_types IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_align_type_expressions IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_algn_typ_exprssns_cnf( ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |align_type_expressions|.
    DATA(t3) = |Align TYPE expressions|.
    DATA(t4) = |Align TYPE expressions in statements|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = ||.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |TYPES: BEGIN OF foo,|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |         bar TYPE i,|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |         foobar TYPE i,|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |       END OF foo.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |INTERFACE lif.|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t14 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  METHODS bar|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t15 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    IMPORTING|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t16 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |      foo TYPE i|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t17 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |      foobar TYPE i.|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t18 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDINTERFACE.|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t7.
      t5 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t5 = t20.
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
      t23 = t23 && |TYPES: BEGIN OF foo,|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t25 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |         bar    TYPE i,|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t26 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |         foobar TYPE i,|.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t27 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |       END OF foo.|.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t28 INTO t23 RESPECTING BLANKS.
      DATA t29 TYPE c LENGTH 1.
      CLEAR t29.
      t29 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t29 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |INTERFACE lif.|.
      DATA t30 TYPE c LENGTH 1.
      CLEAR t30.
      t30 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t30 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |  METHODS bar|.
      DATA t31 TYPE c LENGTH 1.
      CLEAR t31.
      t31 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t31 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |    IMPORTING|.
      DATA t32 TYPE c LENGTH 1.
      CLEAR t32.
      t32 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t32 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |      foo    TYPE i|.
      DATA t33 TYPE c LENGTH 1.
      CLEAR t33.
      t33 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t33 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |      foobar TYPE i.|.
      DATA t34 TYPE c LENGTH 1.
      CLEAR t34.
      t34 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t34 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |ENDINTERFACE.|.
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = t23.
      t21 = t35.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      t21 = t36.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA(t39) = ||.
      DATA t40 TYPE c LENGTH 1.
      CLEAR t40.
      t40 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t39 t40 INTO t39 RESPECTING BLANKS.
      t39 = t39 && |Currently works for METHODS + BEGIN OF|.
      DATA t41 TYPE c LENGTH 1.
      CLEAR t41.
      t41 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t39 t41 INTO t39 RESPECTING BLANKS.
      DATA t42 TYPE c LENGTH 1.
      CLEAR t42.
      t42 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t39 t42 INTO t39 RESPECTING BLANKS.
      t39 = t39 && |If BEGIN OF has an INCLUDE TYPE its ignored|.
      DATA t43 TYPE c LENGTH 1.
      CLEAR t43.
      t43 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t39 t43 INTO t39 RESPECTING BLANKS.
      DATA t44 TYPE c LENGTH 1.
      CLEAR t44.
      t44 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t39 t44 INTO t39 RESPECTING BLANKS.
      t39 = t39 && |Also note that clean ABAP does not recommend aligning TYPE c|.
      t39 = t39 && |lauses:|.
      DATA t45 TYPE c LENGTH 1.
      CLEAR t45.
      t45 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t39 t45 INTO t39 RESPECTING BLANKS.
      t39 = t39 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t39 = t39 && |nABAP.md#dont-align-type-clauses|.
      DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t46->has = abap_true.
      t46->value = t39.
      t37 = t46.
    ELSE.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      t37 = t47.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t48.
    DATA(t49) = abap_true.
    IF t49 = abap_true.
      DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t52.
      t51 = t52.
      DATA(t53) = CAST zlnt_runtime_arra_8ecd6afe19e0( t51 ).
      DATA(t54) = |SingleFile|.
      APPEND t54 TO t53->items.
      DATA(t55) = CAST zlnt_runtime_arra_8ecd6afe19e0( t51 ).
      DATA(t56) = |Whitespace|.
      APPEND t56 TO t55->items.
      DATA(t57) = CAST zlnt_runtime_arra_8ecd6afe19e0( t51 ).
      DATA(t58) = |Quickfix|.
      APPEND t58 TO t57->items.
      DATA(t59) = CAST zlnt_runtime_arra_8ecd6afe19e0( t51 ).
      t50 = t59.
      t48 = t50.
    ELSE.
      DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t60.
      t48 = t60.
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t62.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t21 i_extended_information = t37 i_tags = t48 i_pragma = t61 i_pseudo_comment = t62 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_s_r_al_ty_ex_ts_al_ty_ex.
    DATA(t1) = CAST zcl_lnt_algn_typ_exprssns_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_al_ty_ex_ts_al_ty_ex.
    DATA(t1) = CAST zcl_lnt_algn_typ_exprssns_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/align_type_expressions.ts:70|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_al_ty_ex_ts_al_ty_ex.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/align_type_expressions.ts:74|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD check_bf6e.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_fields_62af ).
    DATA(t2) = i_column.
    DATA(t3) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/align_type_expressions.ts:100|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD check_methods.
    DATA(t1) = CAST zcl_lnt_structure_node( i_stru ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/align_type_expressions.ts:132|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD check_events.
    DATA(t1) = CAST zcl_lnt_structure_node( i_stru ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/align_type_expressions.ts:165|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD check_types.
    DATA(t1) = CAST zcl_lnt_structure_node( i_stru ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/align_type_expressions.ts:188|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_algn_typ_exprssns_cnf( me->g_c_i_s_r_al_ty_ex_ts_al_ty_ex( ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_algn_typ_exprssns_cnf( me->g_c_i_s_r_al_ty_ex_ts_al_ty_ex( ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_algn_typ_exprssns_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_al_ty_ex_ts_al_ty_ex( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_al_ty_ex_ts_al_ty_ex( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1299_00e2e3e9eecb.
  ENDMETHOD.
ENDCLASS.
