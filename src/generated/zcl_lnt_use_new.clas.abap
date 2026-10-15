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
    DATA(t1) = NEW zcl_lnt_use_new_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |use_new|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Use NEW|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for deprecated CREATE OBJECT statements.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#prefer-new-to-create-object\n\nIf the target variable|.
      t11 = t11 && | is referenced in the CREATE OBJECT statement, no errors are|.
      t11 = t11 && | issued\n\nApplicable from v740sp02 and up|.
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
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = |CREATE OBJECT ref.|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t15 = t19.
    ENDIF.
    t14 = t15.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |ref = NEW #( ).|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t23.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t21 = t25.
    ENDIF.
    t20 = t21.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t31.
      t30 = t31.
      DATA(t32) = t30.
      DATA(t33) = |Upport|.
      t32->load( ).
      APPEND t33 TO t32->items.
      t32->save( ).
      DATA(t34) = t30.
      DATA(t35) = |Styleguide|.
      t34->load( ).
      APPEND t35 TO t34->items.
      t34->save( ).
      DATA(t36) = t30.
      DATA(t37) = |Quickfix|.
      t36->load( ).
      APPEND t37 TO t36->items.
      t36->save( ).
      DATA(t38) = t30.
      DATA(t39) = |SingleFile|.
      t38->load( ).
      APPEND t39 TO t38->items.
      t38->save( ).
      DATA(t40) = t30.
      t29 = t40.
      t27 = t29.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t41.
      t27 = t41.
    ENDIF.
    t26 = t27.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    t44 = t45.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t14 i_good_example = t20 i_extended_information = t8 i_tags = t26 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t53) = |key|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |title|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |shortDescription|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |extendedInformation|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |badExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |goodExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |tags|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Use NEW #( ) to instantiate object.|.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rls_us_nw_ts_us_nw.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rls_us_nw_ts_us_nw.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE string.
    DATA(t7) = t2.
    t6 = t7->get_type( ).
    DATA(t8) = |INTF|.
    t5 = xsdbool( t6 = t8 ).
    IF t5 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_abap_release.
    DATA t14 TYPE REF TO zif_lnt_configuration.
    DATA(t15) = me->reg.
    t14 = t15->get_config( ).
    t13 = t14->get_release( ).
    DATA t16 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t18.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t18 = zcl_lnt_version_module=>release_b8cd.
    DATA(t19) = |v740sp02|.
    t17 = t18->get( p0 = t19 ).
    t16 = t17.
    t12 = zcl_lnt_version_module=>release_at_least( i_running = t13 i_required = t16 ).
    t11 = xsdbool( t12 = abap_false ).
    t10 = t11.
    IF t11 = abap_true.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE string.
      DATA t22 TYPE REF TO zif_lnt_configuration.
      DATA(t23) = me->reg.
      t22 = t23->get_config( ).
      t21 = t22->get_language_version( ).
      DATA(t24) = |Cloud|.
      t20 = xsdbool( t21 <> t24 ).
      t10 = t20.
    ENDIF.
    IF t10 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t25.
      result = t25.
      RETURN.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zcl_lnt_abap_file.
    DATA(t28) = t1.
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t30) = t27.
    t29 = t30->statements.
    t26 = t29.
    DATA t31 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t31.
    DATA t32 TYPE REF TO object.
    CLEAR t32.
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
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE REF TO zif_lnt_statement.
      DATA(t38) = t31.
      t37 = t38->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_st_create_object ).
      IF t36 = abap_true.
        DATA t39 TYPE abap_bool.
        DATA t40 TYPE REF TO zcl_lnt_expression_node.
        DATA(t41) = t31.
        DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
        t40 = t41->find_first_expression( i_type_9913 = t42 ).
        t39 = xsdbool( t40 IS BOUND ).
        IF t39 = abap_true.
          CONTINUE.
        ELSE.
          DATA t43 TYPE abap_bool.
          DATA t44 TYPE REF TO zcl_lnt_expression_node.
          DATA(t45) = t31.
          DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
          t44 = t45->find_direct_expression( i_type_9913 = t46 ).
          t43 = xsdbool( t44 IS BOUND ).
          IF t43 = abap_true.
            CONTINUE.
          ELSE.
            DATA t47 TYPE abap_bool.
            DATA t48 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t49) = t31.
            DATA(t50) = |AREA|.
            t48 = t49->find_direct_token_by_text( i_text = t50 ).
            t47 = xsdbool( t48 IS BOUND ).
            IF t47 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA(t51) = VALUE string( ).
        DATA(t52) = VALUE string( ).
        DATA(t53) = VALUE string( ).
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        DATA t56 TYPE REF TO zcl_lnt_expression_node.
        DATA t57 TYPE REF TO zcl_lnt_expression_node.
        DATA(t58) = t31.
        DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
        t57 = t58->find_direct_expression( i_type_9913 = t59 ).
        t56 = t57.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = t56.
        IF t62 IS INITIAL.
          t61 = abap_true.
        ENDIF.
        IF t61 = abap_true.
          DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t63.
          t60 = t63.
        ELSE.
          DATA t64 TYPE string.
          DATA t65 TYPE REF TO zcl_lnt_expression_node.
          DATA(t66) = t56.
          t65 = t66.
          t64 = t65->concat_tokens( ).
          DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t67->has = abap_true.
          t67->value = t64.
          t60 = t67.
        ENDIF.
        t55 = t60.
        t54 = t55.
        DATA(t68) = VALUE string( ).
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = t54.
        IF t70 IS INITIAL.
          t69 = abap_true.
        ELSEIF t70->has = abap_false.
          t69 = abap_true.
        ENDIF.
        IF t69 = abap_true.
          DATA(t71) = |undefined|.
          t68 = t71.
        ELSE.
          DATA t72 TYPE string.
          DATA(t73) = t54.
          t72 = t73->value.
          t68 = t72.
        ENDIF.
        t53 = t68.
        DATA(t74) = |->|.
        DATA(t75) = strlen( t53 ).
        t52 = |{ t53 }{ t74 }|.
        t51 = t52.
        DATA(t76) = VALUE abap_bool( ).
        DATA(t77) = VALUE i( ).
        DATA t78 TYPE string.
        DATA(t79) = t31.
        t78 = t79->concat_tokens( ).
        DATA(t80) = t51.
        DATA(t81) = strlen( t78 ).
        IF t80 IS INITIAL.
          t77 = 0.
        ELSE.
          FIND t80 IN t78 MATCH OFFSET t77.
          IF sy-subrc <> 0.
            t77 = -1.
          ENDIF.
        ENDIF.
        DATA(t82) = 0.
        t76 = xsdbool( t77 >= t82 ).
        IF t76 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t83 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t84 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t85) = t1.
        DATA(t86) = t31.
        t84 = me->build_fix( i_file = t85 i_statement = t86 ).
        t83 = t84.
        DATA t87 TYPE REF TO zcl_lnt_issue.
        CLEAR t87.
        DATA t88 TYPE REF TO zcl_lnt_issue.
        CLEAR t88.
        DATA(t89) = t1.
        DATA t90 TYPE REF TO zcl_lnt_position.
        DATA t91 TYPE REF TO zcl_lnt_statement_node.
        DATA(t92) = t31.
        t91 = t92.
        DATA t93 TYPE REF TO zcl_lnt_position.
        DATA t94 TYPE REF TO zcl_lnt_abstract_token.
        DATA t95 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t96) = t91.
        t95 = t96->get_first_token( ).
        t94 = t95.
        DATA t97 TYPE REF TO zcl_lnt_position.
        DATA(t98) = t94.
        t97 = t98->start.
        t93 = t97.
        t90 = t93.
        DATA(t99) = |Use NEW #( ) to instantiate object.|.
        DATA(t100) = VALUE string( ).
        DATA t101 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t101.
        DATA t102 TYPE string.
        DATA(t103) = |use_new|.
        t102 = t103.
        DATA t104 TYPE string.
        DATA(t105) = |Use NEW|.
        t104 = t105.
        DATA t106 TYPE string.
        DATA(t107) = |Checks for deprecated CREATE OBJECT statements.|.
        t106 = t107.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        DATA(t110) = abap_true.
        IF t110 = abap_true.
          DATA(t111) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t111 = t111 && |nABAP.md#prefer-new-to-create-object\n\nIf the target variable|.
          t111 = t111 && | is referenced in the CREATE OBJECT statement, no errors are|.
          t111 = t111 && | issued\n\nApplicable from v740sp02 and up|.
          DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t112->has = abap_true.
          t112->value = t111.
          t109 = t112.
        ELSE.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          t109 = t113.
        ENDIF.
        t108 = t109.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t114.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        DATA(t116) = abap_true.
        IF t116 = abap_true.
          DATA(t117) = |CREATE OBJECT ref.|.
          DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t118->has = abap_true.
          t118->value = t117.
          t115 = t118.
        ELSE.
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t119.
          t115 = t119.
        ENDIF.
        t114 = t115.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t121.
        DATA(t122) = abap_true.
        IF t122 = abap_true.
          DATA(t123) = |ref = NEW #( ).|.
          DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t124->has = abap_true.
          t124->value = t123.
          t121 = t124.
        ELSE.
          DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t125.
          t121 = t125.
        ENDIF.
        t120 = t121.
        DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t126.
        DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t127.
        DATA(t128) = abap_true.
        IF t128 = abap_true.
          DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t131.
          t130 = t131.
          DATA(t132) = t130.
          DATA(t133) = |Upport|.
          t132->load( ).
          APPEND t133 TO t132->items.
          t132->save( ).
          DATA(t134) = t130.
          DATA(t135) = |Styleguide|.
          t134->load( ).
          APPEND t135 TO t134->items.
          t134->save( ).
          DATA(t136) = t130.
          DATA(t137) = |Quickfix|.
          t136->load( ).
          APPEND t137 TO t136->items.
          t136->save( ).
          DATA(t138) = t130.
          DATA(t139) = |SingleFile|.
          t138->load( ).
          APPEND t139 TO t138->items.
          t138->save( ).
          DATA(t140) = t130.
          t129 = t140.
          t127 = t129.
        ELSE.
          DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t141.
          t127 = t141.
        ENDIF.
        t126 = t127.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        t142 = t143.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        t144 = t145.
        t101 = NEW zcl_lnt_irule_metadata( i_key = t102 i_title = t104 i_short_description = t106 i_bad_example = t114 i_good_example = t120 i_extended_information = t108 i_tags = t126 i_pragma = t142 i_pseudo_comment = t144 ).
        CREATE OBJECT t101->zlnt_view_ownkeys_b0e8086400eb.
        t101->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        IF t101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t146 ).
        ENDIF.
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
        DATA(t153) = |key|.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t153 p1 = t154 ).
        ENDIF.
        DATA(t155) = |title|.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
        ENDIF.
        DATA(t157) = |shortDescription|.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
        ENDIF.
        DATA(t159) = |extendedInformation|.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
        ENDIF.
        DATA(t161) = |badExample|.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
        ENDIF.
        DATA(t163) = |goodExample|.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t163 p1 = t164 ).
        ENDIF.
        DATA(t165) = |tags|.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t165 p1 = t166 ).
        ENDIF.
        t100 = t101->key.
        DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t168) = me->conf.
        t167 = t168->zlnt_view_read_sr_15c06369f827( ).
        DATA(t169) = t83.
        t88 = zcl_lnt_issue=>at_position( i_file = t89 i_start = t90 i_message_26cb = t99 i_key = t100 i_severity = t167 i_fix = t169 ).
        t87 = t88.
        DATA(t170) = t3.
        DATA(t171) = t87.
        t170->load( ).
        APPEND t171 TO t170->items.
        t170->save( ).
      ENDIF.
    ENDDO.
    DATA(t172) = t3.
    result = t172.

  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = t2.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t6 = t7->find_direct_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t5.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t9 = t12.
    ELSE.
      DATA t13 TYPE string.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = t5.
      t14 = t15.
      t13 = t14->concat_tokens( ).
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = t13.
      t9 = t16.
    ENDIF.
    t4 = t9.
    t3 = t4.
    DATA(t17) = VALUE abap_bool( ).
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t19) = t3.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t18.
    IF t23 IS INITIAL.
      t22 = abap_true.
    ELSEIF t23->has = abap_false.
      t22 = abap_true.
    ENDIF.
    t17 = t22.
    IF t17 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t24.
      result = t24.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA(t27) = t2.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
    t26 = t27->find_direct_expression( i_type_9913 = t28 ).
    t25 = t26.
    DATA(t29) = VALUE string( ).
    DATA(t30) = VALUE string( ).
    DATA t31 TYPE abap_bool.
    DATA(t32) = t25.
    t31 = xsdbool( t32 IS BOUND ).
    IF t31 = abap_true.
      DATA t33 TYPE string.
      DATA t34 TYPE string.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA(t36) = t25.
      t35 = t36.
      t34 = t35->concat_tokens( ).
      DATA(t37) = | |.
      DATA(t38) = strlen( t34 ).
      t33 = |{ t34 }{ t37 }|.
      t30 = t33.
    ELSE.
      DATA(t39) = ||.
      t30 = t39.
    ENDIF.
    t29 = t30.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    DATA t42 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t42.
    DATA t43 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t43.
    DATA t44 TYPE REF TO zcl_lnt_expression_node.
    DATA t45 TYPE REF TO zcl_lnt_expression_node.
    DATA(t46) = t2.
    DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t45 = t46->find_direct_expression( i_type_9913 = t47 ).
    t44 = t45.
    DATA t48 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t48.
    DATA(t49) = VALUE abap_bool( ).
    DATA(t50) = t44.
    IF t50 IS INITIAL.
      t49 = abap_true.
    ENDIF.
    IF t49 = abap_true.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t51.
      t48 = t51.
    ELSE.
      DATA t52 TYPE REF TO zcl_lnt_abstract_token.
      DATA t53 TYPE REF TO zcl_lnt_expression_node.
      DATA(t54) = t44.
      t53 = t54.
      t52 = t53->get_first_token( ).
      t48 = t52.
    ENDIF.
    t43 = t48.
    t42 = t43.
    DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t55.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = t42.
    IF t57 IS INITIAL.
      t56 = abap_true.
    ENDIF.
    IF t56 = abap_true.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      t55 = t58.
    ELSE.
      DATA t59 TYPE string.
      DATA t60 TYPE REF TO zcl_lnt_abstract_token.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t62) = t42.
      t61 = t62.
      t60 = t61.
      DATA t63 TYPE string.
      DATA(t64) = t60.
      t63 = t64->str.
      t59 = t63.
      DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t65->has = abap_true.
      t65->value = t59.
      t55 = t65.
    ENDIF.
    t41 = t55.
    t40 = t41.
    DATA(t66) = VALUE abap_bool( ).
    DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t68) = t40.
    t67 = t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    t69 = t70.
    DATA(t71) = VALUE abap_bool( ).
    DATA(t72) = t67.
    IF t72 IS INITIAL.
      t71 = abap_true.
    ELSEIF t72->has = abap_false.
      t71 = abap_true.
    ENDIF.
    t66 = t71.
    IF t66 = abap_true.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t73.
      DATA(t74) = abap_true.
      IF t74 = abap_true.
        DATA(t75) = |#|.
        DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t76->has = abap_true.
        t76->value = t75.
        t73 = t76.
      ELSE.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        t73 = t77.
      ENDIF.
      t40 = t73.
    ENDIF.
    DATA t78 TYPE string.
    DATA t79 TYPE string.
    DATA t80 TYPE string.
    DATA t81 TYPE string.
    DATA t82 TYPE string.
    DATA t83 TYPE string.
    DATA t84 TYPE string.
    DATA(t85) = ||.
    DATA t86 TYPE string.
    DATA(t87) = t3.
    t86 = t87->value.
    DATA(t88) = strlen( t85 ).
    t84 = |{ t85 }{ t86 }|.
    DATA(t89) = | = NEW |.
    DATA(t90) = strlen( t84 ).
    t83 = |{ t84 }{ t89 }|.
    DATA t91 TYPE string.
    DATA(t92) = t40.
    t91 = t92->value.
    DATA(t93) = strlen( t83 ).
    t82 = |{ t83 }{ t91 }|.
    DATA(t94) = |( |.
    DATA(t95) = strlen( t82 ).
    t81 = |{ t82 }{ t94 }|.
    DATA(t96) = t29.
    DATA(t97) = strlen( t81 ).
    t80 = |{ t81 }{ t96 }|.
    DATA(t98) = |).|.
    DATA(t99) = strlen( t80 ).
    t79 = |{ t80 }{ t98 }|.
    t78 = t79.
    DATA t100 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t100.
    DATA(t101) = abap_true.
    IF t101 = abap_true.
      DATA t102 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t103) = t1.
      DATA t104 TYPE REF TO zcl_lnt_position.
      DATA t105 TYPE REF TO zcl_lnt_statement_node.
      DATA(t106) = t2.
      t105 = t106.
      DATA t107 TYPE REF TO zcl_lnt_position.
      DATA t108 TYPE REF TO zcl_lnt_abstract_token.
      DATA t109 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t110) = t105.
      t109 = t110->get_first_token( ).
      t108 = t109.
      DATA t111 TYPE REF TO zcl_lnt_position.
      DATA(t112) = t108.
      t111 = t112->start.
      t107 = t111.
      t104 = t107.
      DATA t113 TYPE REF TO zcl_lnt_position.
      DATA t114 TYPE REF TO zcl_lnt_statement_node.
      DATA(t115) = t2.
      t114 = t115.
      DATA t116 TYPE REF TO zcl_lnt_position.
      DATA t117 TYPE REF TO zcl_lnt_abstract_token.
      DATA t118 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t119) = t114.
      t118 = t119->get_last_token( ).
      t117 = t118.
      DATA t120 TYPE REF TO zcl_lnt_position.
      DATA t121 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t122) = t117.
      t121 = t122.
      DATA t123 TYPE REF TO zcl_lnt_position.
      DATA t124 TYPE f.
      DATA t125 TYPE REF TO zcl_lnt_position.
      DATA t126 TYPE REF TO zcl_lnt_position.
      DATA(t127) = t121.
      t126 = t127->start.
      t125 = t126.
      DATA t128 TYPE f.
      DATA(t129) = t125.
      t128 = t129->row.
      t124 = t128.
      DATA t130 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t131 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t132 TYPE REF TO zcl_lnt_position.
      DATA t133 TYPE REF TO zcl_lnt_position.
      DATA(t134) = t121.
      t133 = t134->start.
      t132 = t133.
      DATA t135 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t136) = t132.
      t135 = t136->col.
      t131 = t135.
      DATA t137 TYPE f.
      DATA t138 TYPE i.
      DATA t139 TYPE string.
      DATA(t140) = t121.
      t139 = t140->str.
      DATA(t141) = strlen( t139 ).
      t138 = t141.
      t137 = t138.
      DATA(t142) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t142->has = abap_true.
      t142->value = t137.
      t130 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t131 right = t142 op = `+` ).
      t123 = NEW zcl_lnt_position( i_row = t124 i_col = t130 ).
      t120 = t123.
      t116 = t120.
      t113 = t116.
      DATA(t143) = t78.
      t102 = zcl_lnt_edit_helper=>replace_range( i_file = t103 i_start = t104 i_end = t113 i_text = t143 ).
      t100 = t102.
    ELSE.
      DATA t144 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t144.
      t100 = t144.
    ENDIF.
    result = t100.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_use_new_conf( me->gt_cn_in_sr_rls_us_nw_ts_us_nw( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_use_new_conf( me->gt_cn_in_sr_rls_us_nw_ts_us_nw( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_use_new_conf.
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
