* TS: src/rules/prefer_xsdbool.ts:13:1 PreferXsdbool
CLASS zcl_lnt_prefer_xsdbool DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prefer_xsdbool_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_pr_xs_ts_pr_xsd RETURNING VALUE(result) TYPE REF TO zcl_lnt_prefer_xsdbool_conf.
    METHODS st_cn_in_sr_rl_pr_xs_ts_pr_xsd IMPORTING i_conf TYPE REF TO zcl_lnt_prefer_xsdbool_conf.
    METHODS rn_pr_in_sr_rl_pr_xs_ts_pr_xsd IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prefer_xsdbool IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_prefer_xsdbool_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |prefer_xsdbool|.
    DATA t4 TYPE string.
    t4 = |Prefer xsdbool over boolc|.
    DATA t6 TYPE string.
    t6 = |Prefer xsdbool over boolc|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Activates if language version is v740sp08 or above.\n\nhttps:/|.
    t11 = t11 && |/github.com/SAP/styleguides/blob/main/clean-abap/CleanABAP.m|.
    t11 = t11 && |d#use-xsdbool-to-set-boolean-variables|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Styleguide|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Upport|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    DATA(t25) = |Quickfix|.
    t18->load( ).
    APPEND t25 TO t18->items.
    t18->save( ).
    DATA(t27) = |SingleFile|.
    t18->load( ).
    APPEND t27 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |DATA(sdf) = boolc( 1 = 2 ).|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    t30 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t39) = |DATA(sdf) = xsdbool( 1 = 2 ).|.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = t39.
    t36 = t40.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t30 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t53) = |key|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    DATA(t55) = |title|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |shortDescription|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |extendedInformation|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |tags|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |badExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |goodExample|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_pr_xs_ts_pr_xsd.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_pr_xs_ts_pr_xsd.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_pr_xs_ts_pr_xsd.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    DATA t8 TYPE REF TO zif_lnt_configuration.
    t8 = me->reg->get_config( ).
    t7 = t8->get_release( ).
    DATA t10 TYPE REF TO zcl_lnt_abap_release.
    DATA t11 TYPE REF TO zcl_lnt_abap_release.
    DATA t12 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t12 = zcl_lnt_version_module=>release_b8cd.
    DATA(t13) = |v740sp08|.
    t11 = t12->get( p0 = t13 ).
    t10 = t11.
    t6 = zcl_lnt_version_module=>release_at_least( i_running = t7 i_required = t10 ).
    t5 = xsdbool( t6 = abap_false ).
    t4 = t5.
    IF t5 = abap_true.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE string.
      DATA t16 TYPE REF TO zif_lnt_configuration.
      t16 = me->reg->get_config( ).
      t15 = t16->get_language_version( ).
      DATA(t18) = |Cloud|.
      t14 = xsdbool( t15 <> t18 ).
      t4 = t14.
    ENDIF.
    IF t4 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t19.
      result = t19.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zcl_lnt_structure_node.
    DATA t27 TYPE REF TO zcl_lnt_structure_node.
    t27 = t1->structure.
    t23 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t30) = xsdbool( t23 IS INITIAL ).
    IF t30 = abap_true.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t34 TYPE REF TO zcl_lnt_structure_node.
      t34 = t23.
      DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t33 = t34->find_all_expressions( i_type_9913 = t36 ).
      t29 = t33.
    ENDIF.
    t21 = t29.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE abap_bool.
    t38 = xsdbool( t21 IS BOUND ).
    IF t38 = abap_true.
      t37 = t21.
    ELSE.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t42.
      t37 = t42.
    ENDIF.
    t20 = t37.
    DATA t43 TYPE REF TO zcl_lnt_expression_node.
    DATA t44 TYPE REF TO object.
    DATA(t45) = VALUE i( ).
    DO.
      t20->load( ).
      IF t45 >= lines( t20->items ).
        EXIT.
      ENDIF.
      CLEAR t44.
      READ TABLE t20->items INDEX t45 + 1 INTO t44.
      t45 = t45 + 1.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      CLEAR t43.
      IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t46 ?= t44.
        DATA t47 TYPE REF TO object.
        t47 = t46->as_ref( ).
        t43 ?= t47.
      ELSE.
        t43 ?= t44.
      ENDIF.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = VALUE abap_bool( ).
      DATA t50 TYPE string.
      DATA t51 TYPE string.
      t51 = t43->concat_tokens( ).
      DATA(t53) = strlen( t51 ).
      t50 = t51.
      IF t50 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t50 TO UPPER CASE.
      ELSE.
        t50 = zlnt_runtime_uppe_91169605024d=>full( t50 ).
      ENDIF.
      DATA(t54) = |BOOLC( |.
      DATA(t55) = strlen( t50 ).
      DATA t56 TYPE i.
      DATA(t57) = VALUE i( ).
      DATA(t58) = VALUE string( ).
      t56 = strlen( t54 ).
      IF t56 = 0.
        t49 = abap_true.
      ELSEIF t56 <= t55.
        t57 = 0.
        t58 = t50+t57(t56).
        IF t58 = t54.
          t49 = abap_true.
        ENDIF.
      ENDIF.
      t48 = xsdbool( t49 = abap_false ).
      IF t48 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t60 TYPE REF TO zcl_lnt_abstract_token.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      t61 = t43->get_first_token( ).
      t60 = t61.
      DATA(t64) = |Prefer xsdbool over boolc|.
      DATA t66 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t69) = |xsdbool|.
      t66 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t60 i_text = t69 ).
      DATA t71 TYPE REF TO zcl_lnt_issue.
      CLEAR t71.
      DATA(t75) = VALUE string( ).
      DATA t76 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t76.
      DATA t77 TYPE string.
      t77 = |prefer_xsdbool|.
      DATA t79 TYPE string.
      t79 = |Prefer xsdbool over boolc|.
      DATA t81 TYPE string.
      t81 = |Prefer xsdbool over boolc|.
      DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t83.
      DATA(t86) = |Activates if language version is v740sp08 or above.\n\nhttps:/|.
      t86 = t86 && |/github.com/SAP/styleguides/blob/main/clean-abap/CleanABAP.m|.
      t86 = t86 && |d#use-xsdbool-to-set-boolean-variables|.
      DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t87->has = abap_true.
      t87->value = t86.
      t83 = t87.
      DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t89.
      DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t94.
      t93 = t94.
      DATA(t96) = |Styleguide|.
      t93->load( ).
      APPEND t96 TO t93->items.
      t93->save( ).
      DATA(t98) = |Upport|.
      t93->load( ).
      APPEND t98 TO t93->items.
      t93->save( ).
      DATA(t100) = |Quickfix|.
      t93->load( ).
      APPEND t100 TO t93->items.
      t93->save( ).
      DATA(t102) = |SingleFile|.
      t93->load( ).
      APPEND t102 TO t93->items.
      t93->save( ).
      t89 = t93.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t105.
      DATA(t108) = |DATA(sdf) = boolc( 1 = 2 ).|.
      DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t109->has = abap_true.
      t109->value = t108.
      t105 = t109.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t111.
      DATA(t114) = |DATA(sdf) = xsdbool( 1 = 2 ).|.
      DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t115->has = abap_true.
      t115->value = t114.
      t111 = t115.
      DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t117.
      DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t119.
      t76 = NEW zcl_lnt_irule_metadata( i_key = t77 i_title = t79 i_short_description = t81 i_bad_example = t105 i_good_example = t111 i_extended_information = t83 i_tags = t89 i_pragma = t117 i_pseudo_comment = t119 ).
      CREATE OBJECT t76->zlnt_view_ownkeys_b0e8086400eb.
      t76->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t121 ).
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t122 ).
      ENDIF.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t123 ).
      ENDIF.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t124 ).
      ENDIF.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t125.
      IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t125 ).
      ENDIF.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t126 ).
      ENDIF.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t127 ).
      ENDIF.
      CREATE OBJECT t76->zlnt_json_ownkeys_70e5fd461788.
      t76->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t128) = |key|.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
      DATA(t130) = |title|.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t131.
      IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
      ENDIF.
      DATA(t132) = |shortDescription|.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
      ENDIF.
      DATA(t134) = |extendedInformation|.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
      ENDIF.
      DATA(t136) = |tags|.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t137.
      IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t136 p1 = t137 ).
      ENDIF.
      DATA(t138) = |badExample|.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
      ENDIF.
      DATA(t140) = |goodExample|.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t141.
      IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
      ENDIF.
      t75 = t76->key.
      DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t142 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t144 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t144.
      t144 = t66.
      t71 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t60 i_message_26cb = t64 i_key = t75 i_severity = t142 i_fix = t144 ).
      t2->load( ).
      APPEND t71 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_prefer_xsdbool_conf( me->gt_cn_in_sr_rl_pr_xs_ts_pr_xsd( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_prefer_xsdbool_conf( me->gt_cn_in_sr_rl_pr_xs_ts_pr_xsd( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prefer_xsdbool_conf.
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
        t1 = NEW zcl_lnt_prefer_xsdbool_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_pr_xs_ts_pr_xsd( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_pr_xs_ts_pr_xsd( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1668_6e6890922d54.
  ENDMETHOD.
ENDCLASS.
