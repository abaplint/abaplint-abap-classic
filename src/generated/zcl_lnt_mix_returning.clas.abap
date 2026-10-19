* TS: src/rules/mix_returning.ts:13:1 MixReturning
CLASS zcl_lnt_mix_returning DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_mix_returning_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_mx_rt_ts_mx_rtr RETURNING VALUE(result) TYPE REF TO zcl_lnt_mix_returning_conf.
    METHODS st_cn_in_sr_rl_mx_rt_ts_mx_rtr IMPORTING i_conf TYPE REF TO zcl_lnt_mix_returning_conf.
    METHODS rn_pr_in_sr_rl_mx_rt_ts_mx_rtr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mix_returning IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_mix_returning_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that methods don't have a mixture of returning and ex|.
    t7 = t7 && |porting/changing parameters|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#use-either-returning-or-exporting-or-changing-but-n|.
    t11 = t11 && |ot-a-combination\n\nThis syntax is not allowed on versions ear|.
    t11 = t11 && |lier than 740sp02, https://help.sap.com/doc/abapdocu_latest_|.
    t11 = t11 && |index_htm/latest/en-us/abennews-740-abap_objects.html#!ABAP_|.
    t11 = t11 && |MODIFICATION_1@1@|.
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
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Syntax| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA(t31) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS\n      fo|.
    t31 = t31 && |obar\n        EXPORTING foo TYPE i\n        RETURNING VALUE(rv|.
    t31 = t31 && |_string) TYPE string.\nENDCLASS.|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |mix_returning| i_title = |Mix of returning and exporting| i_short_description = t6 i_bad_example = t32 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t47 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t55 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Don't mix RETURNING and EXPORTING/CHANGING parameters in a s|.
    t1 = t1 && |ingle method.|.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_mx_rt_ts_mx_rtr.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_mx_rt_ts_mx_rtr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_mx_rt_ts_mx_rtr.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    t4 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    t19 = t4.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
    t18 = t19->find_all_statements( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_statement_node.
    DATA t23 TYPE REF TO object.
    DATA(t24) = VALUE i( ).
    DO.
      t18->load( ).
      IF t24 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t18->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_expression_node.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca.
      t29 = t22->find_first_expression( i_type_9913 = t31 ).
      IF xsdbool( xsdbool( t29 IS BOUND ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t32 TYPE abap_bool.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d231_5616e0c1afc0.
      t34 = t22->find_first_expression( i_type_9913 = t36 ).
      t33 = xsdbool( t34 IS BOUND ).
      t32 = t33.
      IF t33 = abap_false.
        DATA t38 TYPE REF TO zcl_lnt_expression_node.
        DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d227_3477e061b4c4.
        t38 = t22->find_first_expression( i_type_9913 = t40 ).
        t32 = xsdbool( t38 IS BOUND ).
      ENDIF.
      IF t32 = abap_true.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        t42 = t22->get_first_token( ).
        DATA t45 TYPE REF TO zcl_lnt_issue.
        CLEAR t45.
        DATA(t48) = |Don't mix RETURNING and EXPORTING/CHANGING parameters in a s|.
        t48 = t48 && |ingle method.|.
        DATA(t49) = VALUE string( ).
        DATA t50 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t50.
        DATA t55 TYPE string.
        DATA(t56) = |Checks that methods don't have a mixture of returning and ex|.
        t56 = t56 && |porting/changing parameters|.
        t55 = t56.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        DATA(t60) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t60 = t60 && |nABAP.md#use-either-returning-or-exporting-or-changing-but-n|.
        t60 = t60 && |ot-a-combination\n\nThis syntax is not allowed on versions ear|.
        t60 = t60 && |lier than 740sp02, https://help.sap.com/doc/abapdocu_latest_|.
        t60 = t60 && |index_htm/latest/en-us/abennews-740-abap_objects.html#!ABAP_|.
        t60 = t60 && |MODIFICATION_1@1@|.
        DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t61->has = abap_true.
        t61->value = t60.
        t57 = t61.
        DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t63.
        DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t67.
        t67->load( ).
        APPEND |Styleguide| TO t67->items.
        t67->save( ).
        t67->load( ).
        APPEND |SingleFile| TO t67->items.
        t67->save( ).
        t67->load( ).
        APPEND |Syntax| TO t67->items.
        t67->save( ).
        t63 = t67.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        DATA(t80) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS\n      fo|.
        t80 = t80 && |obar\n        EXPORTING foo TYPE i\n        RETURNING VALUE(rv|.
        t80 = t80 && |_string) TYPE string.\nENDCLASS.|.
        DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t81->has = abap_true.
        t81->value = t80.
        t77 = t81.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        t50 = NEW zcl_lnt_irule_metadata( i_key = |mix_returning| i_title = |Mix of returning and exporting| i_short_description = t55 i_bad_example = t77 i_good_example = t83 i_extended_information = t57 i_tags = t63 i_pragma = t85 i_pseudo_comment = t87 ).
        CREATE OBJECT t50->zlnt_view_ownkeys_b0e8086400eb.
        t50->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t89 ).
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t90 ).
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t91 ).
        ENDIF.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t92 ).
        ENDIF.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t93 ).
        ENDIF.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t94 ).
        ENDIF.
        CREATE OBJECT t50->zlnt_json_ownkeys_70e5fd461788.
        t50->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t96 ).
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t98 ).
        ENDIF.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t100 ).
        ENDIF.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t102 ).
        ENDIF.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t104 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t106 ).
        ENDIF.
        t49 = t50->key.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t107 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t109.
        t45 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t42 i_message_26cb = t48 i_key = t49 i_severity = t107 i_fix = t109 ).
        t2->load( ).
        APPEND t45 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_mix_returning_conf( me->gt_cn_in_sr_rl_mx_rt_ts_mx_rtr( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_mix_returning_conf( me->gt_cn_in_sr_rl_mx_rt_ts_mx_rtr( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_mix_returning_conf.
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
        t1 = NEW zcl_lnt_mix_returning_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_mx_rt_ts_mx_rtr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_mx_rt_ts_mx_rtr( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1593_50ae645b6f52.
  ENDMETHOD.
ENDCLASS.
