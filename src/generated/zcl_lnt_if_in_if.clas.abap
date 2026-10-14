* TS: src/rules/if_in_if.ts:14:1 IfInIf
CLASS zcl_lnt_if_in_if DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_if_in_if_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_if_in_if_ts_if_in_if RETURNING VALUE(result) TYPE REF TO zcl_lnt_if_in_if_conf.
    METHODS s_c_i_s_r_if_in_if_ts_if_in_if IMPORTING i_conf TYPE REF TO zcl_lnt_if_in_if_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_if_in_if IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_if_in_if_conf( ).
    me->conf = t1.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |if_in_if|.
    DATA(t3) = |IF in IF|.
    DATA(t4) = |Detects nested ifs which can be refactored.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |IF condition1.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  IF condition2.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    ...|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  ENDIF.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDIF.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |IF condition1.|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t14 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  ...|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t15 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ELSE.|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t16 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  IF condition2.|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t17 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    ...|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t18 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  ENDIF.|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t19 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDIF.|.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t7.
      t5 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t5 = t21.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA(t23) = abap_true.
    IF t23 = abap_true.
      DATA(t24) = |IF ( condition1 ) AND ( condition2 ).|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t25 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |  ...|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t26 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |ENDIF.|.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t27 INTO t24 RESPECTING BLANKS.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t28 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |IF condition1.|.
      DATA t29 TYPE c LENGTH 1.
      CLEAR t29.
      t29 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t29 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |  ...|.
      DATA t30 TYPE c LENGTH 1.
      CLEAR t30.
      t30 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t30 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |ELSEIF condition2.|.
      DATA t31 TYPE c LENGTH 1.
      CLEAR t31.
      t31 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t31 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |  ...|.
      DATA t32 TYPE c LENGTH 1.
      CLEAR t32.
      t32 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t32 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |ENDIF.|.
      DATA t33 TYPE c LENGTH 1.
      CLEAR t33.
      t33 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t33 INTO t24 RESPECTING BLANKS.
      DATA t34 TYPE c LENGTH 1.
      CLEAR t34.
      t34 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t34 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |CASE variable.|.
      DATA t35 TYPE c LENGTH 1.
      CLEAR t35.
      t35 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t35 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |  WHEN value1.|.
      DATA t36 TYPE c LENGTH 1.
      CLEAR t36.
      t36 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t36 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |  ...|.
      DATA t37 TYPE c LENGTH 1.
      CLEAR t37.
      t37 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t37 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |  WHEN value2.|.
      DATA t38 TYPE c LENGTH 1.
      CLEAR t38.
      t38 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t38 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |    IF condition2.|.
      DATA t39 TYPE c LENGTH 1.
      CLEAR t39.
      t39 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t39 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |      ...|.
      DATA t40 TYPE c LENGTH 1.
      CLEAR t40.
      t40 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t40 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |    ENDIF.|.
      DATA t41 TYPE c LENGTH 1.
      CLEAR t41.
      t41 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t24 t41 INTO t24 RESPECTING BLANKS.
      t24 = t24 && |ENDCASE.|.
      DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t42->has = abap_true.
      t42->value = t24.
      t22 = t42.
    ELSE.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      t22 = t43.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t44.
    DATA(t45) = abap_true.
    IF t45 = abap_true.
      DATA(t46) = ||.
      DATA t47 TYPE c LENGTH 1.
      CLEAR t47.
      t47 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t46 t47 INTO t46 RESPECTING BLANKS.
      t46 = t46 && |Directly nested IFs without ELSE can be refactored to a sing|.
      t46 = t46 && |le condition using AND.|.
      DATA t48 TYPE c LENGTH 1.
      CLEAR t48.
      t48 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t46 t48 INTO t46 RESPECTING BLANKS.
      DATA t49 TYPE c LENGTH 1.
      CLEAR t49.
      t49 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t46 t49 INTO t46 RESPECTING BLANKS.
      t46 = t46 && |ELSE condtions with directly nested IF refactored to ELSEIF,|.
      t46 = t46 && | quickfixes are suggested for this case.|.
      DATA t50 TYPE c LENGTH 1.
      CLEAR t50.
      t50 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t46 t50 INTO t46 RESPECTING BLANKS.
      DATA t51 TYPE c LENGTH 1.
      CLEAR t51.
      t51 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t46 t51 INTO t46 RESPECTING BLANKS.
      t46 = t46 && |https://docs.abapopenchecks.org/checks/01/|.
      DATA t52 TYPE c LENGTH 1.
      CLEAR t52.
      t52 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t46 t52 INTO t46 RESPECTING BLANKS.
      t46 = t46 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t46 = t46 && |nABAP.md#keep-the-nesting-depth-low|.
      DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t53->has = abap_true.
      t53->value = t46.
      t44 = t53.
    ELSE.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      t44 = t54.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t55.
    DATA(t56) = abap_true.
    IF t56 = abap_true.
      DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t59.
      t58 = t59.
      DATA(t60) = t58.
      DATA(t61) = |Styleguide|.
      APPEND t61 TO t60->items.
      DATA(t62) = t58.
      DATA(t63) = |SingleFile|.
      APPEND t63 TO t62->items.
      DATA(t64) = t58.
      DATA(t65) = |Quickfix|.
      APPEND t65 TO t64->items.
      DATA(t66) = t58.
      t57 = t66.
      t55 = t57.
    ELSE.
      DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t67.
      t55 = t67.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t69.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t22 i_extended_information = t44 i_tags = t55 i_pragma = t68 i_pseudo_comment = t69 ).
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_if_in_if_ts_if_in_if.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_if_in_if_ts_if_in_if.
    DATA(t1) = i_conf.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/if_in_if.ts:69|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/if_in_if.ts:73|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_if_in_if_conf( me->g_c_i_s_r_if_in_if_ts_if_in_if( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_if_in_if_conf( me->g_c_i_s_r_if_in_if_ts_if_in_if( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_if_in_if_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_if_in_if_ts_if_in_if( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1436_a954f677b322.
  ENDMETHOD.
ENDCLASS.
