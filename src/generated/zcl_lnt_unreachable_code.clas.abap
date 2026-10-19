* TS: src/rules/unreachable_code.ts:14:1 UnreachableCode
CLASS zcl_lnt_unreachable_code DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_unreachable_code_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_un_cd_ts_unr_cd RETURNING VALUE(result) TYPE REF TO zcl_lnt_unreachable_code_conf.
    METHODS st_cn_in_sr_rl_un_cd_ts_unr_cd IMPORTING i_conf TYPE REF TO zcl_lnt_unreachable_code_conf.
    METHODS rn_pr_in_sr_rl_un_cd_ts_unr_cd IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_exit IMPORTING i_n_0c97 TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_structure IMPORTING i_s TYPE REF TO zif_lnt_statement RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unreachable_code IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_unreachable_code_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = |RETURN.\nWRITE 'hello'.|.
    t18 = t22.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = |WRITE 'hello'.\nRETURN.|.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |unreachable_code| i_title = |Unreachable code| i_short_description = |Checks for unreachable code.| i_bad_example = t18 i_good_example = t28 i_extended_information = t30 i_tags = t8 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t43 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t45 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Unreachable code|.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_un_cd_ts_unr_cd.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_cd_ts_unr_cd.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_un_cd_ts_unr_cd.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE abap_bool.
    t4 = abap_false.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t1->statements.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    DATA t12 TYPE REF TO object.
    DATA(t13) = VALUE i( ).
    DO.
      t6->load( ).
      IF t13 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t6->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE REF TO zif_lnt_statement.
      t19 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_comment ).
      t17 = t18.
      IF t18 = abap_false.
        DATA t22 TYPE REF TO zif_lnt_statement.
        t22 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t17 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_macro_content ).
      ENDIF.
      t16 = t17.
      IF t17 = abap_false.
        DATA t25 TYPE REF TO zif_lnt_statement.
        t25 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t16 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_empty ).
      ENDIF.
      IF t16 = abap_true.
        CONTINUE.
      ELSE.
        DATA t28 TYPE REF TO zif_lnt_statement.
        t28 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        DATA(t31) = VALUE abap_bool( ).
        DATA(t32) = VALUE abap_bool( ).
        DATA(t33) = VALUE abap_bool( ).
        DATA(t34) = VALUE abap_bool( ).
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = VALUE abap_bool( ).
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = VALUE abap_bool( ).
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = VALUE abap_bool( ).
        DATA t51 TYPE abap_bool.
        DATA t52 TYPE abap_bool.
        t52 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_end_if ).
        t51 = t52.
        IF t52 = abap_false.
          t51 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_st_else ).
        ENDIF.
        t50 = t51.
        IF t51 = abap_false.
          t50 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_end_loop ).
        ENDIF.
        t49 = t50.
        IF t50 = abap_false.
          t49 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_end_try ).
        ENDIF.
        t48 = t49.
        IF t49 = abap_false.
          t48 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_end_method ).
        ENDIF.
        t47 = t48.
        IF t48 = abap_false.
          t47 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_end_module ).
        ENDIF.
        t46 = t47.
        IF t47 = abap_false.
          t46 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_end_form ).
        ENDIF.
        t45 = t46.
        IF t46 = abap_false.
          t45 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_end_test_seam ).
        ENDIF.
        t44 = t45.
        IF t45 = abap_false.
          t44 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_end_at ).
        ENDIF.
        t43 = t44.
        IF t44 = abap_false.
          t43 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_end_select ).
        ENDIF.
        t42 = t43.
        IF t43 = abap_false.
          t42 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
        ENDIF.
        t41 = t42.
        IF t42 = abap_false.
          t41 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_end_function ).
        ENDIF.
        t40 = t41.
        IF t41 = abap_false.
          t40 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_end_case ).
        ENDIF.
        t39 = t40.
        IF t40 = abap_false.
          t39 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_end_while ).
        ENDIF.
        t38 = t39.
        IF t39 = abap_false.
          t38 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_end_do ).
        ENDIF.
        t37 = t38.
        IF t38 = abap_false.
          t37 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_st_cleanup ).
        ENDIF.
        t36 = t37.
        IF t37 = abap_false.
          t36 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_st_when ).
        ENDIF.
        t35 = t36.
        IF t36 = abap_false.
          t35 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_when_others ).
        ENDIF.
        t34 = t35.
        IF t35 = abap_false.
          t34 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_st_when_type ).
        ENDIF.
        t33 = t34.
        IF t34 = abap_false.
          t33 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_st_catch ).
        ENDIF.
        t32 = t33.
        IF t33 = abap_false.
          t32 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_st_else_if ).
        ENDIF.
        IF t32 = abap_true.
          t31 = abap_true.
        ELSE.
          t31 = abap_false.
        ENDIF.
        IF t31 = abap_true.
          t4 = abap_false.
          CONTINUE.
        ENDIF.
      ENDIF.
      IF xsdbool( t4 = abap_true ) = abap_true.
        DATA t101 TYPE REF TO zcl_lnt_issue.
        CLEAR t101.
        DATA(t105) = VALUE string( ).
        DATA t106 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t106.
        DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t113.
        DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t117.
        t117->load( ).
        APPEND |SingleFile| TO t117->items.
        t117->save( ).
        t113 = t117.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t127->has = abap_true.
        t127->value = |RETURN.\nWRITE 'hello'.|.
        t123 = t127.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t129.
        DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t133->has = abap_true.
        t133->value = |WRITE 'hello'.\nRETURN.|.
        t129 = t133.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t135.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t137.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        t106 = NEW zcl_lnt_irule_metadata( i_key = |unreachable_code| i_title = |Unreachable code| i_short_description = |Checks for unreachable code.| i_bad_example = t123 i_good_example = t129 i_extended_information = t135 i_tags = t113 i_pragma = t137 i_pseudo_comment = t139 ).
        CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
        t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t141 ).
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t142 ).
        ENDIF.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t143 ).
        ENDIF.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t144 ).
        ENDIF.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t145 ).
        ENDIF.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t146 ).
        ENDIF.
        CREATE OBJECT t106->zlnt_json_ownkeys_70e5fd461788.
        t106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t148.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t148 ).
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t150 ).
        ENDIF.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t152 ).
        ENDIF.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t154 ).
        ENDIF.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t156 ).
        ENDIF.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t158 ).
        ENDIF.
        t105 = t106->key.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t159 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t161 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t161.
        DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t162.
        t101 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t11 i_message_26cb = |Unreachable code| i_key = t105 i_severity = t159 i_fix = t161 i_alternative_fixes = t162 ).
        t2->load( ).
        APPEND t101 TO t2->items.
        t2->save( ).
        t4 = abap_false.
        CONTINUE.
      ELSE.
        IF me->is_exit( i_n_0c97 = t11 ) = abap_true.
          t4 = abap_true.
          CONTINUE.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD is_exit.
    DATA(t1) = i_n_0c97.
    DATA t2 TYPE REF TO zif_lnt_statement.
    t2 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    t6 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_submit ).
    t5 = t6.
    IF t6 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d90_ea4359cbebf3c6.
      t10 = t1->find_first_expression( i_type_9913 = t12 ).
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t5 = xsdbool( t10 IS INITIAL ).
    ENDIF.
    IF t5 = abap_true.
      result = abap_true.
      RETURN.
    ELSE.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE abap_bool.
      t19 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_leave ).
      t18 = t19.
      IF t19 = abap_true.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d90_ea4359cbebf3c6.
        t23 = t1->find_first_expression( i_type_9913 = t25 ).
        DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t18 = xsdbool( t23 IS INITIAL ).
      ENDIF.
      IF t18 = abap_true.
        DATA t30 TYPE string.
        t30 = t1->concat_tokens( ).
        DATA(t34) = VALUE i( ).
        DATA(t36) = | TO LIST-PROCESSING|.
        DATA(t37) = strlen( t30 ).
        IF t36 IS INITIAL.
          t34 = 0.
        ELSE.
          FIND t36 IN t30 MATCH OFFSET t34.
          IF sy-subrc <> 0.
            t34 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t34 >= 0 ) = abap_true.
          result = abap_false.
          RETURN.
        ENDIF.
        result = abap_true.
        RETURN.
      ELSE.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = VALUE abap_bool( ).
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE abap_bool.
        t44 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_return ).
        t43 = t44.
        IF t44 = abap_false.
          t43 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_continue ).
        ENDIF.
        t42 = t43.
        IF t43 = abap_false.
          t42 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_exit ).
        ENDIF.
        t41 = t42.
        IF t42 = abap_false.
          t41 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_raise ).
        ENDIF.
        IF t41 = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD is_structure.
    DATA(t1) = i_s.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE abap_bool.
    DATA t22 TYPE abap_bool.
    t22 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_end_if ).
    t21 = t22.
    IF t22 = abap_false.
      t21 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_st_else ).
    ENDIF.
    t20 = t21.
    IF t21 = abap_false.
      t20 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_end_loop ).
    ENDIF.
    t19 = t20.
    IF t20 = abap_false.
      t19 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_end_try ).
    ENDIF.
    t18 = t19.
    IF t19 = abap_false.
      t18 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_end_method ).
    ENDIF.
    t17 = t18.
    IF t18 = abap_false.
      t17 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_end_module ).
    ENDIF.
    t16 = t17.
    IF t17 = abap_false.
      t16 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_end_form ).
    ENDIF.
    t15 = t16.
    IF t16 = abap_false.
      t15 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_end_test_seam ).
    ENDIF.
    t14 = t15.
    IF t15 = abap_false.
      t14 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_end_at ).
    ENDIF.
    t13 = t14.
    IF t14 = abap_false.
      t13 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_end_select ).
    ENDIF.
    t12 = t13.
    IF t13 = abap_false.
      t12 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
    ENDIF.
    t11 = t12.
    IF t12 = abap_false.
      t11 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_end_function ).
    ENDIF.
    t10 = t11.
    IF t11 = abap_false.
      t10 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_end_case ).
    ENDIF.
    t9 = t10.
    IF t10 = abap_false.
      t9 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_end_while ).
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      t8 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_end_do ).
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      t7 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_st_cleanup ).
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      t6 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_st_when ).
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_when_others ).
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      t4 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_st_when_type ).
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      t3 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_st_catch ).
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      t2 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_st_else_if ).
    ENDIF.
    IF t2 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_unreachable_code_conf( me->gt_cn_in_sr_rl_un_cd_ts_unr_cd( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_unreachable_code_conf( me->gt_cn_in_sr_rl_un_cd_ts_unr_cd( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_unreachable_code_conf.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_unreachable_code_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_cd_ts_unr_cd( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_un_cd_ts_unr_cd( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1748_4da847978c11.
  ENDMETHOD.
ENDCLASS.
