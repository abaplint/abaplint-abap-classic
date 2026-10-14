* TS: src/rules/check_syntax.ts:14:1 CheckSyntax
CLASS zcl_lnt_check_syntax DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_check_syntax_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_ch_sy_ts_ch_syn RETURNING VALUE(result) TYPE REF TO zcl_lnt_check_syntax_conf.
    METHODS in_in_sr_rl_chc_syn_ts_chc_syn IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_check_syntax.
    METHODS st_cn_in_sr_rl_ch_sy_ts_ch_syn IMPORTING i_conf TYPE REF TO zcl_lnt_check_syntax_conf.
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
CLASS zcl_lnt_check_syntax IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_check_syntax_conf( ).
    me->conf = t1.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
    DATA(t3) = |Check syntax|.
    DATA(t4) = |Enables syntax check and variable resolution|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11 = t12.
      DATA(t13) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      DATA(t14) = |Syntax|.
      APPEND t14 TO t13->items.
      DATA(t15) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      t10 = t15.
      t8 = t10.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t16.
      t8 = t16.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t8 i_pragma = t17 i_pseudo_comment = t18 ).
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ch_sy_ts_ch_syn.
    DATA(t1) = CAST zcl_lnt_check_syntax_conf( me->conf ).
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_chc_syn_ts_chc_syn.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_registry( t1 ).
    me->reg = t2.
    DATA(t3) = CAST zcl_lnt_check_syntax( me ).
    result = t3.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ch_sy_ts_ch_syn.
    DATA(t1) = CAST zcl_lnt_check_syntax_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/check_syntax.ts:36|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = CAST zif_lnt_object( t1 ).
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_abap_object ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t9 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t10) = CAST zif_lnt_registry( me->reg ).
    DATA t11 TYPE REF TO zcl_lnt_abap_object.
    DATA(t12) = CAST zif_lnt_object( t1 ).
    DATA t13 TYPE REF TO object.
    t13 = t12.
    t11 ?= t13.
    t9 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t10 i_object_19cd = t11 ).
    t8 = t9->run( ).
    t7 = t8->issues.
    t6 = t7.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t17) = CAST zcl_lnt_check_syntax_conf( me->conf ).
    t16 = t17->severity.
    IF t16 IS BOUND.
      IF t16->has = abap_true.
        t15 = xsdbool( strlen( t16->value ) > 0 ).
      ENDIF.
    ENDIF.
    t14 = t15.
    IF t15 = abap_true.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE string.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t21) = CAST zcl_lnt_check_syntax_conf( me->conf ).
      t20 = t21->severity.
      t19 = t20->value.
      DATA(t22) = |Error|.
      t18 = xsdbool( t19 <> t22 ).
      t14 = t18.
    ENDIF.
    IF t14 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
      t24 = t25.
      DATA t26 TYPE i.
      DATA t27 TYPE i.
      DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t24 ).
      t27 = lines( t28->items ).
      t26 = t27.
      DATA t29 TYPE i.
      DATA(t30) = 0.
      t29 = t30.
      DO.
        DATA t31 TYPE abap_bool.
        DATA(t32) = t29.
        DATA(t33) = t26.
        t31 = xsdbool( t32 < t33 ).
        IF t31 = abap_false.
          EXIT.
        ENDIF.
        DATA t34 TYPE REF TO zcl_lnt_issue.
        DATA t35 TYPE REF TO zcl_lnt_issue.
        DATA t36 TYPE REF TO zcl_lnt_issue.
        DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t24 ).
        DATA(t38) = t29.
        DATA t39 TYPE REF TO object.
        t39 = t37->get( p0 = t38 ).
        t36 ?= t39.
        t35 = t36.
        t34 = t35.
        DATA t40 TYPE i.
        DATA(t41) = t29.
        t40 = t41.
        DATA t42 TYPE REF TO zcl_lnt_iissue_data.
        DATA t43 TYPE REF TO zcl_lnt_iissue_data.
        DATA(t44) = CAST zcl_lnt_issue( t34 ).
        t43 = t44->get_data( ).
        t42 = t43.
        DATA(t45) = CAST zcl_lnt_iissue_data( t42 ).
        DATA t46 TYPE string.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t48) = CAST zcl_lnt_check_syntax_conf( me->conf ).
        t47 = t48->severity.
        t46 = t47->value.
        t45->severity = t46.
        DATA(t49) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
        DATA(t50) = t40.
        DATA t51 TYPE REF TO zcl_lnt_issue.
        DATA(t52) = CAST zcl_lnt_iissue_data( t42 ).
        t51 = NEW zcl_lnt_issue( i_data_dc02 = t52 ).
        t50 = t50 + 1.
        DATA t53 TYPE REF TO object.
        CLEAR t53.
        CLEAR t53.
        WHILE lines( t49->items ) < t50.
          APPEND t53 TO t49->items.
        ENDWHILE.
        MODIFY t49->items FROM t51 INDEX t50.
        DATA t54 TYPE i.
        DATA(t55) = t29.
        DATA(t56) = 1.
        t54 = t55 + t56.
        t29 = t54.
      ENDDO.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      t23 = t57.
    ENDIF.
    DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    result = t58.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_check_syntax_conf( me->gt_cn_in_sr_rl_ch_sy_ts_ch_syn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_check_syntax_conf( me->gt_cn_in_sr_rl_ch_sy_ts_ch_syn( ) ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA t2 TYPE REF TO zcl_lnt_check_syntax.
    DATA(t3) = CAST zif_lnt_registry( t1 ).
    t2 = me->in_in_sr_rl_chc_syn_ts_chc_syn( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/check_syntax.ts:36|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1345_8c467e7ba9bb.
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
