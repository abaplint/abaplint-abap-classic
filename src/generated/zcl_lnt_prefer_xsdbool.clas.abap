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
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Upport| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |DATA(sdf) = boolc( 1 = 2 ).|.
    t30 = t34.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = |DATA(sdf) = xsdbool( 1 = 2 ).|.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |prefer_xsdbool| i_title = |Prefer xsdbool over boolc| i_short_description = |Prefer xsdbool over boolc| i_bad_example = t30 i_good_example = t40 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
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
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t54 ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t64 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t66 ).
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
    CREATE OBJECT t2.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    t7 = me->reg->get_config( )->get_release( ).
    DATA t12 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t12 = zcl_lnt_version_module=>release_b8cd.
    t5 = xsdbool( zcl_lnt_version_module=>release_at_least( i_running = t7 i_required = t12->get( p0 = |v740sp08| ) ) = abap_false ).
    t4 = t5.
    IF t5 = abap_true.
      DATA t15 TYPE string.
      t15 = me->reg->get_config( )->get_language_version( ).
      t4 = xsdbool( t15 <> |Cloud| ).
    ENDIF.
    IF t4 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zcl_lnt_structure_node.
    t23 = t1->structure.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t23 IS INITIAL ) = abap_true.
    ELSE.
      DATA t34 TYPE REF TO zcl_lnt_structure_node.
      t34 = t23.
      DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t29 = t34->find_all_expressions( i_type_9913 = t36 ).
    ENDIF.
    t21 = t29.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t21 IS BOUND ) = abap_true.
      t37 = t21.
    ELSE.
      CREATE OBJECT t37.
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
      IF xsdbool( t49 = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t60 TYPE REF TO zcl_lnt_abstract_token.
      t60 = t43->get_first_token( ).
      DATA t66 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t66 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t60 i_text = |xsdbool| ).
      DATA t71 TYPE REF TO zcl_lnt_issue.
      CLEAR t71.
      DATA(t75) = VALUE string( ).
      DATA t76 TYPE REF TO zcl_lnt_irule_metadata.
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
      CREATE OBJECT t93.
      t93->load( ).
      APPEND |Styleguide| TO t93->items.
      t93->save( ).
      t93->load( ).
      APPEND |Upport| TO t93->items.
      t93->save( ).
      t93->load( ).
      APPEND |Quickfix| TO t93->items.
      t93->save( ).
      t93->load( ).
      APPEND |SingleFile| TO t93->items.
      t93->save( ).
      t89 = t93.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t105.
      DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t109->has = abap_true.
      t109->value = |DATA(sdf) = boolc( 1 = 2 ).|.
      t105 = t109.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t111.
      DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t115->has = abap_true.
      t115->value = |DATA(sdf) = xsdbool( 1 = 2 ).|.
      t111 = t115.
      DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t117.
      DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t119.
      t76 = NEW zcl_lnt_irule_metadata( i_key = |prefer_xsdbool| i_title = |Prefer xsdbool over boolc| i_short_description = |Prefer xsdbool over boolc| i_bad_example = t105 i_good_example = t111 i_extended_information = t83 i_tags = t89 i_pragma = t117 i_pseudo_comment = t119 ).
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
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t129 ).
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t131.
      IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t131 ).
      ENDIF.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t133 ).
      ENDIF.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t135 ).
      ENDIF.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t137.
      IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t137 ).
      ENDIF.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t139 ).
      ENDIF.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t141.
      IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t141 ).
      ENDIF.
      t75 = t76->key.
      t71 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t60 i_message_26cb = |Prefer xsdbool over boolc| i_key = t75 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t66 ).
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
