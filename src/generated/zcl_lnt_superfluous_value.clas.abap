* TS: src/rules/superfluous_value.ts:13:1 SuperfluousValue
CLASS zcl_lnt_superfluous_value DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_superfluous_value_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_sp_vl_ts_spr_vl RETURNING VALUE(result) TYPE REF TO zcl_lnt_superfluous_value_conf.
    METHODS st_cn_in_sr_rl_sp_vl_ts_spr_vl IMPORTING i_conf TYPE REF TO zcl_lnt_superfluous_value_conf.
    METHODS rn_pr_in_sr_rl_sp_vl_ts_spr_vl IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_superfluous_value IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_superfluous_value_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Left hand side is inline, VALUE is inferred, value body is s|.
    t11 = t11 && |imple, from v740sp02 and up|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |DATA(message_entry) = VALUE #( message_table[ msgno = msgno |.
    t27 = t27 && |] ).|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |DATA(message_entry) = message_table[ msgno = msgno ].|.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |superfluous_value| i_title = |Superfluous VALUE| i_short_description = |Find superfluous VALUE expressions| i_bad_example = t24 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t48 ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t50 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sp_vl_ts_spr_vl.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sp_vl_ts_spr_vl.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_sp_vl_ts_spr_vl.
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
    t5 = xsdbool( zcl_lnt_version_module=>release_at_least( i_running = t7 i_required = t12->get( p0 = |v740sp02| ) ) = abap_false ).
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
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    t20 = t1->structure.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t20 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zcl_lnt_structure_node.
    t35 = t20.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d561_0fa14d6404b6.
    t34 = t35->find_all_statements( i_type_9913 = t37 ).
    DATA t38 TYPE REF TO zcl_lnt_statement_node.
    DATA t39 TYPE REF TO object.
    DATA(t40) = VALUE i( ).
    DO.
      t34->load( ).
      IF t40 >= lines( t34->items ).
        EXIT.
      ENDIF.
      CLEAR t39.
      READ TABLE t34->items INDEX t40 + 1 INTO t39.
      t40 = t40 + 1.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      CLEAR t38.
      IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t41 ?= t39.
        DATA t42 TYPE REF TO object.
        t42 = t41->as_ref( ).
        t38 ?= t42.
      ELSE.
        t38 ?= t39.
      ENDIF.
      DATA t46 TYPE REF TO zcl_lnt_expression_node.
      DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t46 = t38->find_direct_expression( i_type_9913 = t49 ).
      DATA t50 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t50.
      IF xsdbool( t46 IS INITIAL ) = abap_true.
        CLEAR t50.
      ELSE.
        DATA t55 TYPE REF TO zcl_lnt_expression_node.
        t55 = t46.
        DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t50 = t55->find_direct_expression( i_type_9913 = t57 ).
      ENDIF.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      IF xsdbool( t50 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t62 TYPE REF TO zcl_lnt_expression_node.
      DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t62 = t38->find_direct_expression( i_type_9913 = t65 ).
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      IF xsdbool( t62 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t73.
      DATA t75 TYPE REF TO zcl_lnt_expression_node.
      DATA t77 TYPE REF TO zcl_lnt_expression_node.
      t77 = t62.
      DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
      t75 = t77->find_direct_expression( i_type_9913 = t79 ).
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t80.
      IF xsdbool( t75 IS INITIAL ) = abap_true.
        CLEAR t80.
      ELSE.
        DATA t84 TYPE string.
        t84 = t75->concat_tokens( ).
        DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t87->has = abap_true.
        t87->value = t84.
        t80 = t87.
      ENDIF.
      t73 = t80.
      DATA(t88) = VALUE abap_bool( ).
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t93->has = abap_true.
      t93->value = |#|.
      t90 = t93.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = VALUE abap_bool( ).
      IF t73 IS BOUND.
        t95 = t73->has.
      ENDIF.
      IF t90 IS BOUND.
        t96 = t90->has.
      ENDIF.
      IF t95 = t96.
        IF t95 = abap_false.
          t88 = abap_true.
        ELSEIF t73->value = t90->value.
          t88 = abap_true.
        ENDIF.
      ENDIF.
      IF t88 = abap_true.
        t88 = abap_false.
      ELSE.
        t88 = abap_true.
      ENDIF.
      IF t88 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t97 TYPE REF TO zcl_lnt_expression_node.
      DATA t99 TYPE REF TO zcl_lnt_expression_node.
      t99 = t62.
      DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d280_c851733508cf.
      t97 = t99->find_direct_expression( i_type_9913 = t101 ).
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      IF xsdbool( t97 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t113 TYPE REF TO zcl_lnt_abstract_node.
      t113 = t97.
      t111 ?= t113->children.
      t111->load( ).
      IF xsdbool( lines( t111->items ) = 1 ) = abap_true.
        DATA t122 TYPE REF TO zcl_lnt_issue.
        CLEAR t122.
        DATA(t126) = VALUE string( ).
        DATA t127 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t134.
        DATA(t137) = |Left hand side is inline, VALUE is inferred, value body is s|.
        t137 = t137 && |imple, from v740sp02 and up|.
        DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t138->has = abap_true.
        t138->value = t137.
        t134 = t138.
        DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t140.
        DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t144.
        t144->load( ).
        APPEND |SingleFile| TO t144->items.
        t144->save( ).
        t140 = t144.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        DATA(t153) = |DATA(message_entry) = VALUE #( message_table[ msgno = msgno |.
        t153 = t153 && |] ).|.
        DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t154->has = abap_true.
        t154->value = t153.
        t150 = t154.
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t156.
        DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t160->has = abap_true.
        t160->value = |DATA(message_entry) = message_table[ msgno = msgno ].|.
        t156 = t160.
        DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t162.
        DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t164.
        t127 = NEW zcl_lnt_irule_metadata( i_key = |superfluous_value| i_title = |Superfluous VALUE| i_short_description = |Find superfluous VALUE expressions| i_bad_example = t150 i_good_example = t156 i_extended_information = t134 i_tags = t140 i_pragma = t162 i_pseudo_comment = t164 ).
        CREATE OBJECT t127->zlnt_view_ownkeys_b0e8086400eb.
        t127->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t166 ).
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t167 ).
        ENDIF.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t168 ).
        ENDIF.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t169 ).
        ENDIF.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t170 ).
        ENDIF.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t171 ).
        ENDIF.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t172.
        IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t172 ).
        ENDIF.
        CREATE OBJECT t127->zlnt_json_ownkeys_70e5fd461788.
        t127->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t174 ).
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t176 ).
        ENDIF.
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t178 ).
        ENDIF.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t180.
        IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t180 ).
        ENDIF.
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t182 ).
        ENDIF.
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t184.
        IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t184 ).
        ENDIF.
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t186.
        IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t186 ).
        ENDIF.
        t126 = t127->key.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t187 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t189 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t189.
        DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t190.
        t122 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t38 i_message_26cb = |Superfluous VALUE expression| i_key = t126 i_severity = t187 i_fix = t189 i_alternative_fixes = t190 ).
        t2->load( ).
        APPEND t122 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_superfluous_value_conf( me->gt_cn_in_sr_rl_sp_vl_ts_spr_vl( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_superfluous_value_conf( me->gt_cn_in_sr_rl_sp_vl_ts_spr_vl( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_superfluous_value_conf.
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
        t1 = NEW zcl_lnt_superfluous_value_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_sp_vl_ts_spr_vl( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_sp_vl_ts_spr_vl( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1722_d48601ff42b1.
  ENDMETHOD.
ENDCLASS.
