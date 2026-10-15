* TS: src/rules/check_abstract.ts:16:1 CheckAbstract
CLASS zcl_lnt_check_abstract DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_check_abstract_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_issue_type TYPE i i_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_ch_ab_ts_ch_abs RETURNING VALUE(result) TYPE REF TO zcl_lnt_check_abstract_conf.
    METHODS st_cn_in_sr_rl_ch_ab_ts_ch_abs IMPORTING i_conf TYPE REF TO zcl_lnt_check_abstract_conf.
    METHODS rn_pr_in_sr_rl_ch_ab_ts_ch_abs IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_check_abstract IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_check_abstract_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |check_abstract|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Check abstract methods and classes|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks abstract methods and classes:\n- class defined as abst|.
    t7 = t7 && |ract and final,\n- non-abstract class contains abstract metho|.
    t7 = t7 && |ds|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |If a class defines only constants, use an interface instead|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |SingleFile|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t14 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |extendedInformation|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |tags|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_issue_type.
    DATA(t2) = i_name.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    DATA(t5) = 1.
    t3 = xsdbool( t4 = t5 ).
    IF t3 = abap_true.
      DATA t6 TYPE string.
      DATA(t7) = |Classes should not be ABSTRACT and FINAL: |.
      DATA(t8) = t2.
      DATA(t9) = strlen( t7 ).
      t6 = |{ t7 }{ t8 }|.
      result = t6.
      RETURN.
    ELSE.
      DATA t10 TYPE abap_bool.
      DATA(t11) = t1.
      DATA(t12) = 0.
      t10 = xsdbool( t11 = t12 ).
      IF t10 = abap_true.
        DATA t13 TYPE string.
        DATA(t14) = |Abstract methods require abstract classes: |.
        DATA(t15) = t2.
        DATA(t16) = strlen( t14 ).
        t13 = |{ t14 }{ t15 }|.
        result = t13.
        RETURN.
      ELSE.
        DATA(t17) = ||.
        result = t17.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ch_ab_ts_ch_abs.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ch_ab_ts_ch_abs.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_ch_ab_ts_ch_abs.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zif_lnt_abap_file_information.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t9) = t6.
    t8 = t9->info.
    t5 = t8.
    t4 = t5->list_class_definitions( ).
    DATA t10 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t17) = t10.
      t16 = t17->is_abstract.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA(t20) = abap_true.
        DATA(t21) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t21->has = abap_true.
        t21->value = t20.
        t18 = t21.
      ELSE.
        DATA t22 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t22.
        t18 = t22.
      ENDIF.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      IF t16 IS BOUND.
        t23 = t16->has.
      ENDIF.
      IF t18 IS BOUND.
        t24 = t18->has.
      ENDIF.
      IF t23 = t24.
        IF t23 = abap_false.
          t15 = abap_true.
        ELSEIF t16->value = t18->value.
          t15 = abap_true.
        ENDIF.
      ENDIF.
      IF t15 = abap_true.
        DATA t25 TYPE abap_bool.
        DATA t26 TYPE abap_bool.
        DATA t27 TYPE abap_bool.
        DATA(t28) = t10.
        t27 = t28->is_final.
        DATA(t29) = abap_true.
        t26 = xsdbool( t27 = t29 ).
        t25 = t26.
        IF t26 = abap_true.
          DATA(t30) = VALUE abap_bool( ).
          DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t32) = t10.
          t31 = t32->is_for_testing.
          DATA t33 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t33.
          DATA(t34) = abap_true.
          IF t34 = abap_true.
            DATA(t35) = abap_false.
            DATA(t36) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t36->has = abap_true.
            t36->value = t35.
            t33 = t36.
          ELSE.
            DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t37.
            t33 = t37.
          ENDIF.
          DATA(t38) = VALUE abap_bool( ).
          DATA(t39) = VALUE abap_bool( ).
          IF t31 IS BOUND.
            t38 = t31->has.
          ENDIF.
          IF t33 IS BOUND.
            t39 = t33->has.
          ENDIF.
          IF t38 = t39.
            IF t38 = abap_false.
              t30 = abap_true.
            ELSEIF t31->value = t33->value.
              t30 = abap_true.
            ENDIF.
          ENDIF.
          t25 = t30.
        ENDIF.
        IF t25 = abap_true.
          DATA(t40) = t2.
          DATA t41 TYPE REF TO zcl_lnt_issue.
          CLEAR t41.
          DATA t42 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t43) = t10.
          t42 = t43->identifier.
          DATA(t44) = VALUE string( ).
          DATA t45 TYPE string.
          DATA t46 TYPE string.
          DATA(t47) = t10.
          t46 = t47->name.
          t45 = t46.
          DATA(t48) = VALUE string( ).
          DATA t49 TYPE abap_bool.
          DATA(t50) = 1.
          DATA(t51) = 1.
          t49 = xsdbool( t50 = t51 ).
          IF t49 = abap_true.
            DATA t52 TYPE string.
            DATA(t53) = |Classes should not be ABSTRACT and FINAL: |.
            DATA(t54) = t45.
            DATA(t55) = strlen( t53 ).
            t52 = |{ t53 }{ t54 }|.
            t48 = t52.
          ELSE.
            DATA(t56) = VALUE string( ).
            DATA t57 TYPE abap_bool.
            DATA(t58) = 1.
            DATA(t59) = 0.
            t57 = xsdbool( t58 = t59 ).
            IF t57 = abap_true.
              DATA t60 TYPE string.
              DATA(t61) = |Abstract methods require abstract classes: |.
              DATA(t62) = t45.
              DATA(t63) = strlen( t61 ).
              t60 = |{ t61 }{ t62 }|.
              t56 = t60.
            ELSE.
              DATA(t64) = ||.
              t56 = t64.
            ENDIF.
            t48 = t56.
          ENDIF.
          t44 = t48.
          DATA(t65) = VALUE string( ).
          DATA t66 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t66.
          DATA t67 TYPE string.
          DATA(t68) = |check_abstract|.
          t67 = t68.
          DATA t69 TYPE string.
          DATA(t70) = |Check abstract methods and classes|.
          t69 = t70.
          DATA t71 TYPE string.
          DATA(t72) = |Checks abstract methods and classes:\n- class defined as abst|.
          t72 = t72 && |ract and final,\n- non-abstract class contains abstract metho|.
          t72 = t72 && |ds|.
          t71 = t72.
          DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t73.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          DATA(t75) = abap_true.
          IF t75 = abap_true.
            DATA(t76) = |If a class defines only constants, use an interface instead|.
            DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t77->has = abap_true.
            t77->value = t76.
            t74 = t77.
          ELSE.
            DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t78.
            t74 = t78.
          ENDIF.
          t73 = t74.
          DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t79.
          DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t80.
          DATA(t81) = abap_true.
          IF t81 = abap_true.
            DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t84.
            t83 = t84.
            DATA(t85) = t83.
            DATA(t86) = |SingleFile|.
            t85->load( ).
            APPEND t86 TO t85->items.
            t85->save( ).
            DATA(t87) = t83.
            t82 = t87.
            t80 = t82.
          ELSE.
            DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t88.
            t80 = t88.
          ENDIF.
          t79 = t80.
          DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t90.
          t89 = t90.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t92.
          t91 = t92.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t94.
          t93 = t94.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          t95 = t96.
          t66 = NEW zcl_lnt_irule_metadata( i_key = t67 i_title = t69 i_short_description = t71 i_bad_example = t89 i_good_example = t91 i_extended_information = t73 i_tags = t79 i_pragma = t93 i_pseudo_comment = t95 ).
          CREATE OBJECT t66->zlnt_view_ownkeys_b0e8086400eb.
          t66->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t97.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t97 ).
          ENDIF.
          DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t98.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t98 ).
          ENDIF.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t99.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t99 ).
          ENDIF.
          DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t100.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t100 ).
          ENDIF.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t101.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t101 ).
          ENDIF.
          CREATE OBJECT t66->zlnt_json_ownkeys_70e5fd461788.
          t66->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t102) = |key|.
          DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t103.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
          ENDIF.
          DATA(t104) = |title|.
          DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t105.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
          ENDIF.
          DATA(t106) = |shortDescription|.
          DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t107.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
          ENDIF.
          DATA(t108) = |extendedInformation|.
          DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t109.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
          ENDIF.
          DATA(t110) = |tags|.
          DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t111.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
          ENDIF.
          t65 = t66->key.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t113) = me->conf.
          t112 = t113->zlnt_view_read_sr_15c06369f827( ).
          DATA t114 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t114.
          t41 = zcl_lnt_issue=>at_identifier( i_identifier = t42 i_message_26cb = t44 i_key = t65 i_severity = t112 i_fix = t114 ).
          t40->load( ).
          APPEND t41 TO t40->items.
          t40->save( ).
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t116) = t10.
      t115 = t116->methods.
      DATA t117 TYPE REF TO zcl_lnt_info_method_definition.
      CLEAR t117.
      DATA t118 TYPE REF TO object.
      CLEAR t118.
      DATA(t119) = VALUE i( ).
      DO.
        t115->load( ).
        IF t119 >= lines( t115->items ).
          EXIT.
        ENDIF.
        CLEAR t118.
        READ TABLE t115->items INDEX t119 + 1 INTO t118.
        t119 = t119 + 1.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        CLEAR t117.
        IF t118 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t120 ?= t118.
          DATA t121 TYPE REF TO object.
          t121 = t120->as_ref( ).
          t117 ?= t121.
        ELSE.
          t117 ?= t118.
        ENDIF.
        DATA t122 TYPE abap_bool.
        DATA t123 TYPE abap_bool.
        DATA(t124) = t117.
        t123 = t124->is_abstract.
        DATA(t125) = abap_true.
        t122 = xsdbool( t123 = t125 ).
        IF t122 = abap_true.
          DATA(t126) = t2.
          DATA t127 TYPE REF TO zcl_lnt_issue.
          CLEAR t127.
          DATA t128 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t129) = t117.
          t128 = t129->identifier.
          DATA(t130) = VALUE string( ).
          DATA t131 TYPE string.
          DATA t132 TYPE string.
          DATA(t133) = t117.
          t132 = t133->name.
          t131 = t132.
          DATA(t134) = VALUE string( ).
          DATA t135 TYPE abap_bool.
          DATA(t136) = 0.
          DATA(t137) = 1.
          t135 = xsdbool( t136 = t137 ).
          IF t135 = abap_true.
            DATA t138 TYPE string.
            DATA(t139) = |Classes should not be ABSTRACT and FINAL: |.
            DATA(t140) = t131.
            DATA(t141) = strlen( t139 ).
            t138 = |{ t139 }{ t140 }|.
            t134 = t138.
          ELSE.
            DATA(t142) = VALUE string( ).
            DATA t143 TYPE abap_bool.
            DATA(t144) = 0.
            DATA(t145) = 0.
            t143 = xsdbool( t144 = t145 ).
            IF t143 = abap_true.
              DATA t146 TYPE string.
              DATA(t147) = |Abstract methods require abstract classes: |.
              DATA(t148) = t131.
              DATA(t149) = strlen( t147 ).
              t146 = |{ t147 }{ t148 }|.
              t142 = t146.
            ELSE.
              DATA(t150) = ||.
              t142 = t150.
            ENDIF.
            t134 = t142.
          ENDIF.
          t130 = t134.
          DATA(t151) = VALUE string( ).
          DATA t152 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t152.
          DATA t153 TYPE string.
          DATA(t154) = |check_abstract|.
          t153 = t154.
          DATA t155 TYPE string.
          DATA(t156) = |Check abstract methods and classes|.
          t155 = t156.
          DATA t157 TYPE string.
          DATA(t158) = |Checks abstract methods and classes:\n- class defined as abst|.
          t158 = t158 && |ract and final,\n- non-abstract class contains abstract metho|.
          t158 = t158 && |ds|.
          t157 = t158.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t160.
          DATA(t161) = abap_true.
          IF t161 = abap_true.
            DATA(t162) = |If a class defines only constants, use an interface instead|.
            DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t163->has = abap_true.
            t163->value = t162.
            t160 = t163.
          ELSE.
            DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t164.
            t160 = t164.
          ENDIF.
          t159 = t160.
          DATA t165 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t165.
          DATA t166 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t166.
          DATA(t167) = abap_true.
          IF t167 = abap_true.
            DATA t168 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t170.
            t169 = t170.
            DATA(t171) = t169.
            DATA(t172) = |SingleFile|.
            t171->load( ).
            APPEND t172 TO t171->items.
            t171->save( ).
            DATA(t173) = t169.
            t168 = t173.
            t166 = t168.
          ELSE.
            DATA t174 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t174.
            t166 = t174.
          ENDIF.
          t165 = t166.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t176.
          t175 = t176.
          DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t178.
          t177 = t178.
          DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t180.
          t179 = t180.
          DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t182.
          t181 = t182.
          t152 = NEW zcl_lnt_irule_metadata( i_key = t153 i_title = t155 i_short_description = t157 i_bad_example = t175 i_good_example = t177 i_extended_information = t159 i_tags = t165 i_pragma = t179 i_pseudo_comment = t181 ).
          CREATE OBJECT t152->zlnt_view_ownkeys_b0e8086400eb.
          t152->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t183 ).
          ENDIF.
          DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t184.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t184 ).
          ENDIF.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t185.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t185 ).
          ENDIF.
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t186.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t186 ).
          ENDIF.
          DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t187.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t187 ).
          ENDIF.
          CREATE OBJECT t152->zlnt_json_ownkeys_70e5fd461788.
          t152->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t188) = |key|.
          DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t189.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t188 p1 = t189 ).
          ENDIF.
          DATA(t190) = |title|.
          DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t191.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
          ENDIF.
          DATA(t192) = |shortDescription|.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t193.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t192 p1 = t193 ).
          ENDIF.
          DATA(t194) = |extendedInformation|.
          DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t195.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t194 p1 = t195 ).
          ENDIF.
          DATA(t196) = |tags|.
          DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t197.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t196 p1 = t197 ).
          ENDIF.
          t151 = t152->key.
          DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t199) = me->conf.
          t198 = t199->zlnt_view_read_sr_15c06369f827( ).
          DATA t200 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t200.
          t127 = zcl_lnt_issue=>at_identifier( i_identifier = t128 i_message_26cb = t130 i_key = t151 i_severity = t198 i_fix = t200 ).
          t126->load( ).
          APPEND t127 TO t126->items.
          t126->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t201) = t2.
    result = t201.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_check_abstract_conf( me->gt_cn_in_sr_rl_ch_ab_ts_ch_abs( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_check_abstract_conf( me->gt_cn_in_sr_rl_ch_ab_ts_ch_abs( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_check_abstract_conf.
    CLEAR t1.
    CLEAR t1.
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
          CLEAR t2.
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
        t1 = NEW zcl_lnt_check_abstract_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ch_ab_ts_ch_abs( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ch_ab_ts_ch_abs( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1434_2c0a62efb546.
  ENDMETHOD.
ENDCLASS.
