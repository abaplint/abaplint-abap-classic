* TS: src/rules/allowed_object_naming.ts:12:1 AllowedObjectNaming
CLASS zcl_lnt_allowed_object_naming DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_allwd_objct_nmng_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS i_i_sr_rl_al_ob_nm_ts_al_ob_nm IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_allowed_object_naming.
    METHODS g_c_i_s_r_al_ob_nm_ts_al_ob_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_allwd_objct_nmng_cnf.
    METHODS s_c_i_s_r_al_ob_nm_ts_al_ob_nm IMPORTING i_conf TYPE REF TO zcl_lnt_allwd_objct_nmng_cnf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_allowed_object_naming IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_allwd_objct_nmng_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |allowed_object_naming|.
    DATA(t3) = |Allowed object naming|.
    DATA(t4) = |Enforces basic name length and namespace restrictions, see n|.
    t4 = t4 && |ote SAP 104010|.
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
      DATA(t14) = |Naming|.
      APPEND t14 TO t13->items.
      DATA(t15) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      DATA(t16) = |SingleFile|.
      APPEND t16 TO t15->items.
      DATA(t17) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      DATA(t18) = |Syntax|.
      APPEND t18 TO t17->items.
      DATA(t19) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      t10 = t19.
      t8 = t10.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t20.
      t8 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t8 i_pragma = t21 i_pseudo_comment = t22 ).
    result = t1.
    
  ENDMETHOD.
  METHOD i_i_sr_rl_al_ob_nm_ts_al_ob_nm.
    DATA(t1) = CAST zif_lnt_registry( i_reg_d009 ).
    DATA(t2) = CAST zcl_lnt_allowed_object_naming( me ).
    result = t2.
    
  ENDMETHOD.
  METHOD g_c_i_s_r_al_ob_nm_ts_al_ob_nm.
    DATA(t1) = CAST zcl_lnt_allwd_objct_nmng_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD s_c_i_s_r_al_ob_nm_ts_al_ob_nm.
    DATA(t1) = CAST zcl_lnt_allwd_objct_nmng_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/allowed_object_naming.ts:32|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA t2 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t3 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA(t4) = CAST zif_lnt_object( t1 ).
    t3 = t4->get_allowed_naming(  ).
    t2 = t3.
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA(t7) = CAST zif_lnt_object( t1 ).
    t6 = t7->get_name(  ).
    t5 = t6.
    DATA t8 TYPE string.
    DATA(t9) = ||.
    t8 = t9.
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE int8.
    DATA t12 TYPE i.
    DATA(t13) = t5.
    DATA(t14) = strlen( t13 ).
    t12 = t14.
    t11 = t12.
    DATA t15 TYPE int8.
    DATA(t16) = CAST zcl_lnt_iallowed_naming( t2 ).
    t15 = t16->max_length.
    t10 = xsdbool( t11 > t15 ).
    IF t10 = abap_true.
      DATA t17 TYPE string.
      DATA(t18) = |Name exceeds max length, allowed is |.
      DATA t19 TYPE string.
      DATA t20 TYPE int8.
      DATA(t21) = CAST zcl_lnt_iallowed_naming( t2 ).
      t20 = t21->max_length.
      t19 = |{ t20 }|.
      DATA(t22) = strlen( t18 ).
      t17 = |{ t18 }{ t19 }|.
      t8 = t17.
    ELSE.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE abap_bool.
      DATA(t26) = CAST zcl_lnt_iallowed_naming( t2 ).
      t25 = t26->allow_namespace.
      DATA(t27) = abap_false.
      t24 = xsdbool( t25 = t27 ).
      t23 = t24.
      IF t24 = abap_true.
        DATA(t28) = VALUE abap_bool( ).
        DATA(t29) = VALUE i( ).
        DATA(t30) = t5.
        DATA(t31) = |/|.
        DATA(t32) = strlen( t30 ).
        IF t31 IS INITIAL.
          t29 = 0.
        ELSE.
          FIND t31 IN t30 MATCH OFFSET t29.
          IF sy-subrc <> 0.
            t29 = -1.
          ENDIF.
        ENDIF.
        DATA(t33) = 0.
        t28 = xsdbool( t29 >= t33 ).
        t23 = t28.
      ENDIF.
      IF t23 = abap_true.
        DATA(t34) = |Namespace not allowed for object type|.
        t8 = t34.
      ELSE.
        DATA(t35) = VALUE abap_bool( ).
        DATA t36 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA t37 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA(t38) = CAST zcl_lnt_iallowed_naming( t2 ).
        t37 = t38->custom_regex.
        t36 = t37.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t40.
        t39 = t40.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = CAST zlnt_runtime_rege_5a210f82384e( t36 ).
        IF t43 IS INITIAL.
          t42 = abap_true.
        ENDIF.
        t41 = xsdbool( t42 = abap_false ).
        t35 = t41.
        IF t35 = abap_true.
          DATA t44 TYPE abap_bool.
          DATA t45 TYPE string.
          DATA(t46) = t5.
          t45 = t46.
          DATA t47 TYPE abap_bool.
          DATA t48 TYPE abap_bool.
          DATA t49 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          DATA t50 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          DATA(t51) = CAST zcl_lnt_iallowed_naming( t2 ).
          t50 = t51->custom_regex.
          t49 = t50.
          DATA(t52) = t45.
          t48 = t49->match_test( p0 = t52 ).
          t47 = xsdbool( t48 = abap_false ).
          t44 = t47.
          IF t44 = abap_true.
            DATA(t53) = VALUE string( ).
            DATA(t54) = |Name not allowed, expected to match |.
            DATA t55 TYPE string.
            DATA t56 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            DATA t57 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            DATA(t58) = CAST zcl_lnt_iallowed_naming( t2 ).
            t57 = t58->custom_regex.
            t56 = t57.
            t55 = |/{ t56->source }/|.
            IF t56->global = abap_true.
              t55 = t55 && `g`.
            ENDIF.
            IF t56->ignore_case = abap_true.
              t55 = t55 && `i`.
            ENDIF.
            DATA(t59) = strlen( t54 ).
            t53 = |{ t54 }{ t55 }|.
            t8 = t53.
          ENDIF.
        ELSE.
          DATA(t60) = VALUE abap_bool( ).
          DATA t61 TYPE string.
          DATA(t62) = t5.
          t61 = t62.
          DATA(t63) = VALUE abap_bool( ).
          DATA(t64) = VALUE abap_bool( ).
          DATA t65 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t65.
          IF zcl_lnt_allwd_objct_nmng_mdl=>zlnt_builtin_init_b4b04a677b0b = abap_false.
            zcl_lnt_allwd_objct_nmng_mdl=>zlnt_builtin_init_2b08683d792f( ).
          ENDIF.
          t65 = zcl_lnt_allwd_objct_nmng_mdl=>name_regex.
          DATA(t66) = t61.
          t64 = t65->match_test( p0 = t66 ).
          t63 = xsdbool( t64 = abap_false ).
          t60 = t63.
          IF t60 = abap_true.
            DATA(t67) = |Name not allowed|.
            t8 = t67.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t68 TYPE abap_bool.
    DATA t69 TYPE i.
    DATA(t70) = t8.
    DATA(t71) = strlen( t70 ).
    t69 = t71.
    DATA(t72) = 0.
    t68 = xsdbool( t69 > t72 ).
    IF t68 = abap_true.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t73.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t75.
      t74 = t75.
      DATA(t76) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
      DATA t77 TYPE REF TO zcl_lnt_issue.
      CLEAR t77.
      DATA t78 TYPE REF TO zif_lnt_file.
      DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t80) = CAST zif_lnt_object( t1 ).
      t79 = t80->get_files(  ).
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      READ TABLE t79->items INDEX 1 INTO t81.
      t78 ?= t81.
      DATA(t82) = CONV int8( 1 ).
      DATA(t83) = t8.
      DATA(t84) = VALUE string( ).
      DATA t85 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t85.
      DATA(t86) = |allowed_object_naming|.
      DATA(t87) = |Allowed object naming|.
      DATA(t88) = |Enforces basic name length and namespace restrictions, see n|.
      t88 = t88 && |ote SAP 104010|.
      DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t89.
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t91.
      DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t92.
      DATA(t93) = abap_true.
      IF t93 = abap_true.
        DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t96.
        t95 = t96.
        DATA(t97) = CAST zlnt_runtime_arra_8ecd6afe19e0( t95 ).
        DATA(t98) = |Naming|.
        APPEND t98 TO t97->items.
        DATA(t99) = CAST zlnt_runtime_arra_8ecd6afe19e0( t95 ).
        DATA(t100) = |SingleFile|.
        APPEND t100 TO t99->items.
        DATA(t101) = CAST zlnt_runtime_arra_8ecd6afe19e0( t95 ).
        DATA(t102) = |Syntax|.
        APPEND t102 TO t101->items.
        DATA(t103) = CAST zlnt_runtime_arra_8ecd6afe19e0( t95 ).
        t94 = t103.
        t92 = t94.
      ELSE.
        DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t104.
        t92 = t104.
      ENDIF.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t105.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t106.
      t85 = NEW zcl_lnt_irule_metadata( i_key = t86 i_title = t87 i_short_description = t88 i_bad_example = t89 i_good_example = t90 i_extended_information = t91 i_tags = t92 i_pragma = t105 i_pseudo_comment = t106 ).
      t84 = t85->key.
      DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t108) = CAST zcl_lnt_allwd_objct_nmng_cnf( me->conf ).
      t107 = t108->severity.
      t77 = zcl_lnt_issue=>at_row( i_file = t78 i_row = t82 i_message_26cb = t83 i_key = t84 i_severity = t107 ).
      APPEND t77 TO t76->items.
      DATA(t109) = CAST zlnt_runtime_arra_c22708faf2e3( t74 ).
      t73 = t109.
      result = t73.
      RETURN.
    ENDIF.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t110.
    result = t110.
    
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA t2 TYPE REF TO zcl_lnt_allowed_object_naming.
    DATA(t3) = CAST zif_lnt_registry( t1 ).
    t2 = me->i_i_sr_rl_al_ob_nm_ts_al_ob_nm( i_reg_d009 = t3 ).
    result = t2.
    
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_allwd_objct_nmng_cnf( me->g_c_i_s_r_al_ob_nm_ts_al_ob_nm(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_allwd_objct_nmng_cnf( me->g_c_i_s_r_al_ob_nm_ts_al_ob_nm(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/allowed_object_naming.ts:32|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1301_53631e4eb972.
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
