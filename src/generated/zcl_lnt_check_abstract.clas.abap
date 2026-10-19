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
    me->conf = NEW zcl_lnt_check_abstract_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks abstract methods and classes:\n- class defined as abst|.
    t7 = t7 && |ract and final,\n- non-abstract class contains abstract metho|.
    t7 = t7 && |ds|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = |If a class defines only constants, use an interface instead|.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |check_abstract| i_title = |Check abstract methods and classes| i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t18 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t38 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t40 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t42 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t44 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_issue_type.
    DATA(t2) = i_name.
    IF xsdbool( t1 = 1 ) = abap_true.
      DATA(t7) = |Classes should not be ABSTRACT and FINAL: |.
      DATA(t9) = strlen( t7 ).
      result = |{ t7 }{ t2 }|.
      RETURN.
    ELSE.
      IF xsdbool( t1 = 0 ) = abap_true.
        DATA(t14) = |Abstract methods require abstract classes: |.
        DATA(t16) = strlen( t14 ).
        result = |{ t14 }{ t2 }|.
        RETURN.
      ELSE.
        result = ||.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ch_ab_ts_ch_abs.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ch_ab_ts_ch_abs.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_ch_ab_ts_ch_abs.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->info->list_class_definitions( ).
    DATA t10 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t11 TYPE REF TO object.
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
      t16 = t10->is_abstract.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA(t21) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t21->has = abap_true.
      t21->value = abap_true.
      t18 = t21.
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
        t26 = xsdbool( t10->is_final = abap_true ).
        t25 = t26.
        IF t26 = abap_true.
          DATA(t30) = VALUE abap_bool( ).
          DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t31 = t10->is_for_testing.
          DATA t33 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t33.
          DATA(t36) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t36->has = abap_true.
          t36->value = abap_false.
          t33 = t36.
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
          DATA t41 TYPE REF TO zcl_lnt_issue.
          CLEAR t41.
          DATA t42 TYPE REF TO zcl_lnt_fi_identifier.
          t42 = t10->identifier.
          DATA(t44) = VALUE string( ).
          DATA t45 TYPE string.
          t45 = t10->name.
          DATA(t48) = VALUE string( ).
          IF xsdbool( 1 = 1 ) = abap_true.
            DATA(t53) = |Classes should not be ABSTRACT and FINAL: |.
            DATA(t55) = strlen( t53 ).
            t48 = |{ t53 }{ t45 }|.
          ELSE.
            DATA(t56) = VALUE string( ).
            IF xsdbool( 1 = 0 ) = abap_true.
              DATA(t61) = |Abstract methods require abstract classes: |.
              DATA(t63) = strlen( t61 ).
              t56 = |{ t61 }{ t45 }|.
            ELSE.
              t56 = ||.
            ENDIF.
            t48 = t56.
          ENDIF.
          t44 = t48.
          DATA(t65) = VALUE string( ).
          DATA t66 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t66.
          DATA t71 TYPE string.
          DATA(t72) = |Checks abstract methods and classes:\n- class defined as abst|.
          t72 = t72 && |ract and final,\n- non-abstract class contains abstract metho|.
          t72 = t72 && |ds|.
          t71 = t72.
          DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t73.
          DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t77->has = abap_true.
          t77->value = |If a class defines only constants, use an interface instead|.
          t73 = t77.
          DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t79.
          DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t83.
          t83->load( ).
          APPEND |SingleFile| TO t83->items.
          t83->save( ).
          t79 = t83.
          DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t89.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          t66 = NEW zcl_lnt_irule_metadata( i_key = |check_abstract| i_title = |Check abstract methods and classes| i_short_description = t71 i_bad_example = t89 i_good_example = t91 i_extended_information = t73 i_tags = t79 i_pragma = t93 i_pseudo_comment = t95 ).
          CREATE OBJECT t66->zlnt_view_ownkeys_b0e8086400eb.
          t66->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t97.
          t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t97 ).
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
          DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t103.
          t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t103 ).
          DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t105.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t105 ).
          ENDIF.
          DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t107.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t107 ).
          ENDIF.
          DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t109.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t109 ).
          ENDIF.
          DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t111.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t111 ).
          ENDIF.
          t65 = t66->key.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t112 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t114 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t114.
          t41 = zcl_lnt_issue=>at_identifier( i_identifier = t42 i_message_26cb = t44 i_key = t65 i_severity = t112 i_fix = t114 ).
          t2->load( ).
          APPEND t41 TO t2->items.
          t2->save( ).
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t115 = t10->methods.
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
        IF xsdbool( t117->is_abstract = abap_true ) = abap_true.
          DATA t127 TYPE REF TO zcl_lnt_issue.
          CLEAR t127.
          DATA t128 TYPE REF TO zcl_lnt_fi_identifier.
          t128 = t117->identifier.
          DATA(t130) = VALUE string( ).
          DATA t131 TYPE string.
          t131 = t117->name.
          DATA(t134) = VALUE string( ).
          IF xsdbool( 0 = 1 ) = abap_true.
            DATA(t139) = |Classes should not be ABSTRACT and FINAL: |.
            DATA(t141) = strlen( t139 ).
            t134 = |{ t139 }{ t131 }|.
          ELSE.
            DATA(t142) = VALUE string( ).
            IF xsdbool( 0 = 0 ) = abap_true.
              DATA(t147) = |Abstract methods require abstract classes: |.
              DATA(t149) = strlen( t147 ).
              t142 = |{ t147 }{ t131 }|.
            ELSE.
              t142 = ||.
            ENDIF.
            t134 = t142.
          ENDIF.
          t130 = t134.
          DATA(t151) = VALUE string( ).
          DATA t152 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t152.
          DATA t157 TYPE string.
          DATA(t158) = |Checks abstract methods and classes:\n- class defined as abst|.
          t158 = t158 && |ract and final,\n- non-abstract class contains abstract metho|.
          t158 = t158 && |ds|.
          t157 = t158.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t163->has = abap_true.
          t163->value = |If a class defines only constants, use an interface instead|.
          t159 = t163.
          DATA t165 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t165.
          DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t169.
          t169->load( ).
          APPEND |SingleFile| TO t169->items.
          t169->save( ).
          t165 = t169.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t175.
          DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t177.
          DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t179.
          DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t181.
          t152 = NEW zcl_lnt_irule_metadata( i_key = |check_abstract| i_title = |Check abstract methods and classes| i_short_description = t157 i_bad_example = t175 i_good_example = t177 i_extended_information = t159 i_tags = t165 i_pragma = t179 i_pseudo_comment = t181 ).
          CREATE OBJECT t152->zlnt_view_ownkeys_b0e8086400eb.
          t152->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t183 ).
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
          DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t189.
          t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t189 ).
          DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t191.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t191 ).
          ENDIF.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t193.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t193 ).
          ENDIF.
          DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t195.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t195 ).
          ENDIF.
          DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t197.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t197 ).
          ENDIF.
          t151 = t152->key.
          DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t198 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t200 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t200.
          t127 = zcl_lnt_issue=>at_identifier( i_identifier = t128 i_message_26cb = t130 i_key = t151 i_severity = t198 i_fix = t200 ).
          t2->load( ).
          APPEND t127 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_check_abstract_conf( me->gt_cn_in_sr_rl_ch_ab_ts_ch_abs( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_check_abstract_conf( me->gt_cn_in_sr_rl_ch_ab_ts_ch_abs( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_check_abstract_conf.
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
        t1 = NEW zcl_lnt_check_abstract_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ch_ab_ts_ch_abs( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ch_ab_ts_ch_abs( i_file = i_file ) ).

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
