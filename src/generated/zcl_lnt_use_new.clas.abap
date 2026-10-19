* TS: src/rules/use_new.ts:17:1 UseNew
CLASS zcl_lnt_use_new DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_use_new_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rls_us_nw_ts_us_nw RETURNING VALUE(result) TYPE REF TO zcl_lnt_use_new_conf.
    METHODS st_cn_in_sr_rls_us_nw_ts_us_nw IMPORTING i_conf TYPE REF TO zcl_lnt_use_new_conf.
    METHODS run_parsed REDEFINITION.
    METHODS build_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_use_new IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_use_new_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#prefer-new-to-create-object\n\nIf the target variable|.
    t11 = t11 && | is referenced in the CREATE OBJECT statement, no errors are|.
    t11 = t11 && | issued\n\nApplicable from v740sp02 and up|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = |CREATE OBJECT ref.|.
    t14 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = |ref = NEW #( ).|.
    t20 = t24.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t30.
    t30->load( ).
    APPEND |Upport| TO t30->items.
    t30->save( ).
    t30->load( ).
    APPEND |Styleguide| TO t30->items.
    t30->save( ).
    t30->load( ).
    APPEND |Quickfix| TO t30->items.
    t30->save( ).
    t30->load( ).
    APPEND |SingleFile| TO t30->items.
    t30->save( ).
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |use_new| i_title = |Use NEW| i_short_description = |Checks for deprecated CREATE OBJECT statements.| i_bad_example = t14 i_good_example = t20 i_extended_information = t8 i_tags = t30 i_pragma = t42 i_pseudo_comment = t44 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t52 ).
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
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t64 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Use NEW #( ) to instantiate object.|.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rls_us_nw_ts_us_nw.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rls_us_nw_ts_us_nw.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    IF xsdbool( t2->get_type( ) = |INTF| ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_abap_release.
    t13 = me->reg->get_config( )->get_release( ).
    DATA t18 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t18 = zcl_lnt_version_module=>release_b8cd.
    t11 = xsdbool( zcl_lnt_version_module=>release_at_least( i_running = t13 i_required = t18->get( p0 = |v740sp02| ) ) = abap_false ).
    t10 = t11.
    IF t11 = abap_true.
      DATA t21 TYPE string.
      t21 = me->reg->get_config( )->get_language_version( ).
      t10 = xsdbool( t21 <> |Cloud| ).
    ENDIF.
    IF t10 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t26 = t1->statements.
    DATA t31 TYPE REF TO zcl_lnt_statement_node.
    DATA t32 TYPE REF TO object.
    DATA(t33) = VALUE i( ).
    DO.
      t26->load( ).
      IF t33 >= lines( t26->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t26->items INDEX t33 + 1 INTO t32.
      t33 = t33 + 1.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t31.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t32.
        DATA t35 TYPE REF TO object.
        t35 = t34->as_ref( ).
        t31 ?= t35.
      ELSE.
        t31 ?= t32.
      ENDIF.
      DATA t37 TYPE REF TO zif_lnt_statement.
      t37 = t31->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_st_create_object ) = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_expression_node.
        DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
        t40 = t31->find_first_expression( i_type_9913 = t42 ).
        IF xsdbool( t40 IS BOUND ) = abap_true.
          CONTINUE.
        ELSE.
          DATA t44 TYPE REF TO zcl_lnt_expression_node.
          DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
          t44 = t31->find_direct_expression( i_type_9913 = t46 ).
          IF xsdbool( t44 IS BOUND ) = abap_true.
            CONTINUE.
          ELSE.
            DATA t48 TYPE REF TO zcl_lnt_abstract_token.
            t48 = t31->find_direct_token_by_text( i_text = |AREA| ).
            IF xsdbool( t48 IS BOUND ) = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA(t51) = VALUE string( ).
        DATA(t53) = VALUE string( ).
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        DATA t56 TYPE REF TO zcl_lnt_expression_node.
        DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
        t56 = t31->find_direct_expression( i_type_9913 = t59 ).
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        IF xsdbool( t56 IS INITIAL ) = abap_true.
          CLEAR t60.
        ELSE.
          DATA t64 TYPE string.
          t64 = t56->concat_tokens( ).
          DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t67->has = abap_true.
          t67->value = t64.
          t60 = t67.
        ENDIF.
        t54 = t60.
        DATA(t68) = VALUE string( ).
        DATA(t69) = VALUE abap_bool( ).
        IF t54 IS INITIAL.
          t69 = abap_true.
        ELSEIF t54->has = abap_false.
          t69 = abap_true.
        ENDIF.
        IF t69 = abap_true.
          t68 = |undefined|.
        ELSE.
          t68 = t54->value.
        ENDIF.
        t53 = t68.
        DATA(t75) = strlen( t53 ).
        t51 = |{ t53 }{ |->| }|.
        DATA(t77) = VALUE i( ).
        DATA t78 TYPE string.
        t78 = t31->concat_tokens( ).
        DATA(t81) = strlen( t78 ).
        IF t51 IS INITIAL.
          t77 = 0.
        ELSE.
          FIND t51 IN t78 MATCH OFFSET t77.
          IF sy-subrc <> 0.
            t77 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t77 >= 0 ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t84 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t84 = me->build_fix( i_file = t1 i_statement = t31 ).
        DATA t88 TYPE REF TO zcl_lnt_issue.
        CLEAR t88.
        DATA t90 TYPE REF TO zcl_lnt_position.
        t90 = t31->get_first_token( )->start.
        DATA(t100) = VALUE string( ).
        DATA t101 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t101.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        DATA(t111) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t111 = t111 && |nABAP.md#prefer-new-to-create-object\n\nIf the target variable|.
        t111 = t111 && | is referenced in the CREATE OBJECT statement, no errors are|.
        t111 = t111 && | issued\n\nApplicable from v740sp02 and up|.
        DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t112->has = abap_true.
        t112->value = t111.
        t108 = t112.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t114.
        DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t118->has = abap_true.
        t118->value = |CREATE OBJECT ref.|.
        t114 = t118.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t124->has = abap_true.
        t124->value = |ref = NEW #( ).|.
        t120 = t124.
        DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t126.
        DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t130.
        t130->load( ).
        APPEND |Upport| TO t130->items.
        t130->save( ).
        t130->load( ).
        APPEND |Styleguide| TO t130->items.
        t130->save( ).
        t130->load( ).
        APPEND |Quickfix| TO t130->items.
        t130->save( ).
        t130->load( ).
        APPEND |SingleFile| TO t130->items.
        t130->save( ).
        t126 = t130.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        t101 = NEW zcl_lnt_irule_metadata( i_key = |use_new| i_title = |Use NEW| i_short_description = |Checks for deprecated CREATE OBJECT statements.| i_bad_example = t114 i_good_example = t120 i_extended_information = t108 i_tags = t126 i_pragma = t142 i_pseudo_comment = t144 ).
        CREATE OBJECT t101->zlnt_view_ownkeys_b0e8086400eb.
        t101->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t146 ).
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t147.
        IF t101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t147 ).
        ENDIF.
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t148.
        IF t101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t148 ).
        ENDIF.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        IF t101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t149 ).
        ENDIF.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        IF t101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t150 ).
        ENDIF.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t151 ).
        ENDIF.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t152 ).
        ENDIF.
        CREATE OBJECT t101->zlnt_json_ownkeys_70e5fd461788.
        t101->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t154 ).
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t156 ).
        ENDIF.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t158 ).
        ENDIF.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t160 ).
        ENDIF.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t162 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t164 ).
        ENDIF.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t166 ).
        ENDIF.
        t100 = t101->key.
        t88 = zcl_lnt_issue=>at_position( i_file = t1 i_start = t90 i_message_26cb = |Use NEW #( ) to instantiate object.| i_key = t100 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t84 ).
        t3->load( ).
        APPEND t88 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t5 = t2->find_direct_expression( i_type_9913 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
    ELSE.
      DATA t13 TYPE string.
      t13 = t5->concat_tokens( ).
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = t13.
      t9 = t16.
    ENDIF.
    t3 = t9.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t18 = t3.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = VALUE abap_bool( ).
    IF t18 IS INITIAL.
      t22 = abap_true.
    ELSEIF t18->has = abap_false.
      t22 = abap_true.
    ENDIF.
    IF t22 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
    t25 = t2->find_direct_expression( i_type_9913 = t28 ).
    DATA(t29) = VALUE string( ).
    DATA(t30) = VALUE string( ).
    IF xsdbool( t25 IS BOUND ) = abap_true.
      DATA t34 TYPE string.
      t34 = t25->concat_tokens( ).
      DATA(t38) = strlen( t34 ).
      t30 = |{ t34 }{ | | }|.
    ELSE.
      t30 = ||.
    ENDIF.
    t29 = t30.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zcl_lnt_abstract_token.
    DATA t44 TYPE REF TO zcl_lnt_expression_node.
    DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t44 = t2->find_direct_expression( i_type_9913 = t47 ).
    DATA t48 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t44 IS INITIAL ) = abap_true.
    ELSE.
      t48 = t44->get_first_token( ).
    ENDIF.
    t42 = t48.
    DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t42 IS INITIAL ) = abap_true.
    ELSE.
      DATA t63 TYPE string.
      t63 = t42->str.
      DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t65->has = abap_true.
      t65->value = t63.
      t55 = t65.
    ENDIF.
    t40 = t55.
    DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t67 = t40.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t71) = VALUE abap_bool( ).
    IF t67 IS INITIAL.
      t71 = abap_true.
    ELSEIF t67->has = abap_false.
      t71 = abap_true.
    ENDIF.
    IF t71 = abap_true.
      DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t76->has = abap_true.
      t76->value = |#|.
      t40 = t76.
    ENDIF.
    DATA t79 TYPE string.
    DATA t80 TYPE string.
    DATA t81 TYPE string.
    DATA t82 TYPE string.
    DATA t83 TYPE string.
    DATA t84 TYPE string.
    DATA(t85) = ||.
    DATA t86 TYPE string.
    t86 = t3->value.
    DATA(t88) = strlen( t85 ).
    t84 = |{ t85 }{ t86 }|.
    DATA(t90) = strlen( t84 ).
    t83 = |{ t84 }{ | = NEW | }|.
    DATA t91 TYPE string.
    t91 = t40->value.
    DATA(t93) = strlen( t83 ).
    t82 = |{ t83 }{ t91 }|.
    DATA(t95) = strlen( t82 ).
    t81 = |{ t82 }{ |( | }|.
    DATA(t97) = strlen( t81 ).
    t80 = |{ t81 }{ t29 }|.
    DATA(t99) = strlen( t80 ).
    t79 = |{ t80 }{ |).| }|.
    DATA t104 TYPE REF TO zcl_lnt_position.
    t104 = t2->get_first_token( )->start.
    DATA t121 TYPE REF TO zcl_lnt_abstract_token.
    t121 = t2->get_last_token( ).
    DATA t124 TYPE f.
    t124 = t121->start->row.
    DATA t131 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t131 = t121->start->col.
    DATA t137 TYPE f.
    t137 = strlen( t121->str ).
    DATA(t142) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t142->has = abap_true.
    t142->value = t137.
    result = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t104 i_end = NEW zcl_lnt_position( i_row = t124 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t131 right = t142 op = `+` ) ) i_text = t79 ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_use_new_conf( me->gt_cn_in_sr_rls_us_nw_ts_us_nw( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_use_new_conf( me->gt_cn_in_sr_rls_us_nw_ts_us_nw( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_use_new_conf.
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
        t1 = NEW zcl_lnt_use_new_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rls_us_nw_ts_us_nw( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1771_d361ddc4cc26.
  ENDMETHOD.
ENDCLASS.
