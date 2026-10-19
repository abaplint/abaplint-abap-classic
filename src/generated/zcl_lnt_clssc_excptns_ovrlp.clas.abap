* TS: src/rules/classic_exceptions_overlap.ts:11:1 ClassicExceptionsOverlap
CLASS zcl_lnt_clssc_excptns_ovrlp DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_clssc_excptn_ovrlp_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_cl_ex_ov_ts_cl_ex_ov RETURNING VALUE(result) TYPE REF TO zcl_lnt_clssc_excptn_ovrlp_cnf.
    METHODS s_c_i_s_r_cl_ex_ov_ts_cl_ex_ov IMPORTING i_conf TYPE REF TO zcl_lnt_clssc_excptn_ovrlp_cnf.
    METHODS r_p_i_s_r_cl_ex_ov_ts_cl_ex_ov IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_clssc_excptns_ovrlp IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_clssc_excptn_ovrlp_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |When debugging its typically good to know exactly which exce|.
    t11 = t11 && |ption is caught|.
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
    DATA(t27) = |CALL FUNCTION 'SOMETHING'\n  EXCEPTIONS\n    system_failure   |.
    t27 = t27 && |     = 1 MESSAGE lv_message\n    communication_failure = 1 ME|.
    t27 = t27 && |SSAGE lv_message\n    resource_failure      = 1\n    OTHERS   |.
    t27 = t27 && |             = 1.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA(t33) = |CALL FUNCTION 'SOMETHING'\n  EXCEPTIONS\n    system_failure   |.
    t33 = t33 && |     = 1 MESSAGE lv_message\n    communication_failure = 2 ME|.
    t33 = t33 && |SSAGE lv_message\n    resource_failure      = 3\n    OTHERS   |.
    t33 = t33 && |             = 4.|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |classic_exceptions_overlap| i_title = |Classic exceptions overlap when catching| i_short_description = |Find overlapping classic exceptions| i_bad_example = t24 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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

  METHOD g_c_i_s_r_cl_ex_ov_ts_cl_ex_ov.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_cl_ex_ov_ts_cl_ex_ov.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_cl_ex_ov_ts_cl_ex_ov.
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
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
    t18 = t19->find_all_expressions( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
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
      DATA t27 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      t27 = NEW zlnt_runtime_set__1827558fd4c7( ).
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95.
      t29 = t22->find_all_expressions( i_type_9913 = t31 ).
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      DATA(t34) = VALUE i( ).
      DO.
        t29->load( ).
        IF t34 >= lines( t29->items ).
          EXIT.
        ENDIF.
        CLEAR t33.
        READ TABLE t29->items INDEX t34 + 1 INTO t33.
        t34 = t34 + 1.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        CLEAR t32.
        IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t35 ?= t33.
          DATA t36 TYPE REF TO object.
          t36 = t35->as_ref( ).
          t32 ?= t36.
        ELSE.
          t32 ?= t33.
        ENDIF.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        DATA t41 TYPE REF TO zcl_lnt_expression_node.
        DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
        t41 = t32->find_direct_expression( i_type_9913 = t44 ).
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        IF xsdbool( t41 IS INITIAL ) = abap_true.
          CLEAR t45.
        ELSE.
          DATA t49 TYPE string.
          t49 = t41->concat_tokens( ).
          DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t52->has = abap_true.
          t52->value = t49.
          t45 = t52.
        ENDIF.
        t39 = t45.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        DATA(t54) = VALUE abap_bool( ).
        IF t39 IS INITIAL.
          t54 = abap_true.
        ELSEIF t39->has = abap_false.
          t54 = abap_true.
        ENDIF.
        IF t54 = abap_true.
          CLEAR t53.
        ELSE.
          DATA t57 TYPE string.
          DATA t58 TYPE string.
          t58 = t39->value.
          DATA(t60) = strlen( t58 ).
          t57 = t58.
          IF t57 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t57 TO UPPER CASE.
          ELSE.
            t57 = zlnt_runtime_uppe_91169605024d=>full( t57 ).
          ENDIF.
          DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t61->has = abap_true.
          t61->value = t57.
          t53 = t61.
        ENDIF.
        t37 = t53.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t63 = t37.
        DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t65.
        DATA(t67) = VALUE abap_bool( ).
        IF t63 IS INITIAL.
          t67 = abap_true.
        ELSEIF t63->has = abap_false.
          t67 = abap_true.
        ENDIF.
        IF t67 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t71 TYPE string.
        t71 = t37->value.
        IF t27->has( p0 = t71 ) = abap_true.
          DATA t74 TYPE string.
          DATA(t75) = |Exception overlap, |.
          DATA t76 TYPE string.
          t76 = t37->value.
          DATA(t78) = strlen( t75 ).
          t74 = |{ t75 }{ t76 }|.
          DATA t80 TYPE REF TO zcl_lnt_issue.
          CLEAR t80.
          DATA t82 TYPE REF TO zcl_lnt_abstract_token.
          t82 = t32->get_first_token( ).
          DATA(t85) = VALUE string( ).
          DATA t86 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t86.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          DATA(t96) = |When debugging its typically good to know exactly which exce|.
          t96 = t96 && |ption is caught|.
          DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t97->has = abap_true.
          t97->value = t96.
          t93 = t97.
          DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t99.
          DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t103.
          t103->load( ).
          APPEND |SingleFile| TO t103->items.
          t103->save( ).
          t99 = t103.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          DATA(t112) = |CALL FUNCTION 'SOMETHING'\n  EXCEPTIONS\n    system_failure   |.
          t112 = t112 && |     = 1 MESSAGE lv_message\n    communication_failure = 1 ME|.
          t112 = t112 && |SSAGE lv_message\n    resource_failure      = 1\n    OTHERS   |.
          t112 = t112 && |             = 1.|.
          DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t113->has = abap_true.
          t113->value = t112.
          t109 = t113.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA(t118) = |CALL FUNCTION 'SOMETHING'\n  EXCEPTIONS\n    system_failure   |.
          t118 = t118 && |     = 1 MESSAGE lv_message\n    communication_failure = 2 ME|.
          t118 = t118 && |SSAGE lv_message\n    resource_failure      = 3\n    OTHERS   |.
          t118 = t118 && |             = 4.|.
          DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t119->has = abap_true.
          t119->value = t118.
          t115 = t119.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t123.
          t86 = NEW zcl_lnt_irule_metadata( i_key = |classic_exceptions_overlap| i_title = |Classic exceptions overlap when catching| i_short_description = |Find overlapping classic exceptions| i_bad_example = t109 i_good_example = t115 i_extended_information = t93 i_tags = t99 i_pragma = t121 i_pseudo_comment = t123 ).
          CREATE OBJECT t86->zlnt_view_ownkeys_b0e8086400eb.
          t86->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t125 ).
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t126 ).
          ENDIF.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t127 ).
          ENDIF.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t128 ).
          ENDIF.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t129 ).
          ENDIF.
          DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t130.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t130 ).
          ENDIF.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t131.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t131 ).
          ENDIF.
          CREATE OBJECT t86->zlnt_json_ownkeys_70e5fd461788.
          t86->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t133.
          t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t133 ).
          DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t135.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t135 ).
          ENDIF.
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t137.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t137 ).
          ENDIF.
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t139.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t139 ).
          ENDIF.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t141 ).
          ENDIF.
          DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t143.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t143 ).
          ENDIF.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t145 ).
          ENDIF.
          t85 = t86->key.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t146 = CAST zcl_lnt_clssc_excptn_ovrlp_cnf( me->g_c_i_s_r_cl_ex_ov_ts_cl_ex_ov( ) )->zlnt_view_read_sr_15c06369f827( ).
          DATA t148 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t148.
          t80 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t82 i_message_26cb = t74 i_key = t85 i_severity = t146 i_fix = t148 ).
          t2->load( ).
          APPEND t80 TO t2->items.
          t2->save( ).
          EXIT.
        ENDIF.
        DATA t151 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA t153 TYPE string.
        t153 = t37->value.
        t151 = t27->add( p0 = t153 ).
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_clssc_excptn_ovrlp_cnf( me->g_c_i_s_r_cl_ex_ov_ts_cl_ex_ov( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_clssc_excptn_ovrlp_cnf( me->g_c_i_s_r_cl_ex_ov_ts_cl_ex_ov( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_clssc_excptn_ovrlp_cnf.
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
        t1 = NEW zcl_lnt_clssc_excptn_ovrlp_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cl_ex_ov_ts_cl_ex_ov( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_cl_ex_ov_ts_cl_ex_ov( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1452_546824256892.
  ENDMETHOD.
ENDCLASS.
