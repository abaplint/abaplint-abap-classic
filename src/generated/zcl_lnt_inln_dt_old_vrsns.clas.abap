* TS: src/rules/inline_data_old_versions.ts:12:1 InlineDataOldVersions
CLASS zcl_lnt_inln_dt_old_vrsns DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_inln_dt_old_vrsns_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_i_d_o_v_t_i_dt_ol_vr RETURNING VALUE(result) TYPE REF TO zcl_lnt_inln_dt_old_vrsns_cnf.
    METHODS s_c_i_s_r_i_d_o_v_t_i_dt_ol_vr IMPORTING i_conf TYPE REF TO zcl_lnt_inln_dt_old_vrsns_cnf.
    METHODS r_p_i_s_r_i_d_o_v_t_i_dt_ol_vr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_inln_dt_old_vrsns IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_inln_dt_old_vrsns_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |inline_data_old_versions|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Inline data, old versions|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for inline data declarations in older releases. Only |.
    t7 = t7 && |active for versions less than v740sp02|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |Syntax|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |SingleFile|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      t11 = t18.
      t9 = t11.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t19.
      t9 = t19.
    ENDIF.
    t8 = t9.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t22 i_extended_information = t24 i_tags = t8 i_pragma = t26 i_pseudo_comment = t28 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t34) = |key|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |title|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |shortDescription|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = |tags|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_i_d_o_v_t_i_dt_ol_vr.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_i_d_o_v_t_i_dt_ol_vr.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_i_d_o_v_t_i_dt_ol_vr.
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
    DATA(t9) = me->reg.
    t8 = t9->get_config( ).
    t7 = t8->get_release( ).
    DATA t10 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t12.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t12 = zcl_lnt_version_module=>release_b8cd.
    DATA(t13) = |v740sp02|.
    t11 = t12->get( p0 = t13 ).
    t10 = t11.
    t6 = zcl_lnt_version_module=>release_at_least( i_running = t7 i_required = t10 ).
    t5 = t6.
    IF t6 = abap_false.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE REF TO zif_lnt_configuration.
      DATA(t16) = me->reg.
      t15 = t16->get_config( ).
      t14 = t15->is_open_abap( ).
      t5 = t14.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE string.
      DATA t19 TYPE REF TO zif_lnt_configuration.
      DATA(t20) = me->reg.
      t19 = t20->get_config( ).
      t18 = t19->get_language_version( ).
      DATA(t21) = |Cloud|.
      t17 = xsdbool( t18 = t21 ).
      t4 = t17.
    ENDIF.
    IF t4 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t22.
      result = t22.
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zcl_lnt_abap_file.
    DATA(t25) = t1.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t27) = t24.
    t26 = t27->statements.
    t23 = t26.
    DATA t28 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    DATA(t30) = VALUE i( ).
    DO.
      t23->load( ).
      IF t30 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t23->items INDEX t30 + 1 INTO t29.
      t30 = t30 + 1.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t28.
      IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t29.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t28 ?= t32.
      ELSE.
        t28 ?= t29.
      ENDIF.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t34) = t28.
      DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t33 = t34->find_all_expressions( i_type_9913 = t35 ).
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      DATA(t38) = VALUE i( ).
      DO.
        t33->load( ).
        IF t38 >= lines( t33->items ).
          EXIT.
        ENDIF.
        CLEAR t37.
        READ TABLE t33->items INDEX t38 + 1 INTO t37.
        t38 = t38 + 1.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t39.
        CLEAR t36.
        IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t39 ?= t37.
          DATA t40 TYPE REF TO object.
          t40 = t39->as_ref( ).
          t36 ?= t40.
        ELSE.
          t36 ?= t37.
        ENDIF.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t43) = t36.
        t42 = t43->get_all_tokens( ).
        t41 = t42.
        DATA t44 TYPE abap_bool.
        DATA t45 TYPE i.
        DATA(t46) = t41.
        t46->load( ).
        t45 = lines( t46->items ).
        DATA(t47) = 4.
        t44 = xsdbool( t45 <> t47 ).
        IF t44 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = VALUE string( ).
        DATA(t51) = VALUE string( ).
        DATA t52 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t53.
        DATA(t54) = t41.
        DATA t55 TYPE REF TO object.
        CLEAR t55.
        t54->load( ).
        CLEAR t55.
        READ TABLE t54->items INDEX 1 INTO t55.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        CLEAR t53.
        IF t55 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t56 ?= t55.
          DATA t57 TYPE REF TO object.
          t57 = t56->as_ref( ).
          t53 ?= t57.
        ELSE.
          t53 ?= t55.
        ENDIF.
        t52 = t53.
        DATA t58 TYPE string.
        DATA(t59) = t52.
        t58 = t59->str.
        t51 = t58.
        t50 = t51.
        DATA t60 TYPE abap_bool.
        DATA t61 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t61.
        DATA(t62) = |DATA|.
        DATA(t63) = |i|.
        CREATE OBJECT t61 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t62 flags = t63.
        DATA(t64) = t50.
        t60 = t61->match_test( p0 = t64 ).
        t49 = t60.
        t48 = xsdbool( t49 = abap_false ).
        IF t48 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t65) = VALUE abap_bool( ).
        DATA(t66) = VALUE string( ).
        DATA t67 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t67.
        DATA t68 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t68.
        DATA(t69) = t41.
        DATA t70 TYPE REF TO object.
        CLEAR t70.
        t69->load( ).
        CLEAR t70.
        READ TABLE t69->items INDEX 2 INTO t70.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        CLEAR t68.
        IF t70 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t71 ?= t70.
          DATA t72 TYPE REF TO object.
          t72 = t71->as_ref( ).
          t68 ?= t72.
        ELSE.
          t68 ?= t70.
        ENDIF.
        t67 = t68.
        DATA t73 TYPE string.
        DATA(t74) = t67.
        t73 = t74->str.
        t66 = t73.
        DATA(t75) = |(|.
        t65 = xsdbool( t66 <> t75 ).
        IF t65 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t76) = VALUE abap_bool( ).
        DATA(t77) = VALUE string( ).
        DATA t78 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t78.
        DATA t79 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t79.
        DATA(t80) = t41.
        DATA t81 TYPE REF TO object.
        CLEAR t81.
        t80->load( ).
        CLEAR t81.
        READ TABLE t80->items INDEX 4 INTO t81.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        CLEAR t79.
        IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t82 ?= t81.
          DATA t83 TYPE REF TO object.
          t83 = t82->as_ref( ).
          t79 ?= t83.
        ELSE.
          t79 ?= t81.
        ENDIF.
        t78 = t79.
        DATA t84 TYPE string.
        DATA(t85) = t78.
        t84 = t85->str.
        t77 = t84.
        DATA(t86) = |)|.
        t76 = xsdbool( t77 <> t86 ).
        IF t76 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t87 TYPE string.
        DATA t88 TYPE string.
        DATA(t89) = |Inline DATA not possible in |.
        DATA t90 TYPE string.
        DATA t91 TYPE REF TO zif_lnt_configuration.
        DATA(t92) = me->reg.
        t91 = t92->get_config( ).
        t90 = t91->get_version( ).
        DATA(t93) = strlen( t89 ).
        t88 = |{ t89 }{ t90 }|.
        t87 = t88.
        DATA t94 TYPE REF TO zcl_lnt_issue.
        CLEAR t94.
        DATA t95 TYPE REF TO zcl_lnt_issue.
        CLEAR t95.
        DATA(t96) = t1.
        DATA t97 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t97.
        DATA(t98) = t41.
        DATA t99 TYPE REF TO object.
        CLEAR t99.
        t98->load( ).
        CLEAR t99.
        READ TABLE t98->items INDEX 1 INTO t99.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        CLEAR t97.
        IF t99 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t100 ?= t99.
          DATA t101 TYPE REF TO object.
          t101 = t100->as_ref( ).
          t97 ?= t101.
        ELSE.
          t97 ?= t99.
        ENDIF.
        DATA(t102) = t87.
        DATA(t103) = VALUE string( ).
        DATA t104 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t104.
        DATA t105 TYPE string.
        DATA(t106) = |inline_data_old_versions|.
        t105 = t106.
        DATA t107 TYPE string.
        DATA(t108) = |Inline data, old versions|.
        t107 = t108.
        DATA t109 TYPE string.
        DATA(t110) = |Checks for inline data declarations in older releases. Only |.
        t110 = t110 && |active for versions less than v740sp02|.
        t109 = t110.
        DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t111.
        DATA t112 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t112.
        DATA(t113) = abap_true.
        IF t113 = abap_true.
          DATA t114 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t116.
          t115 = t116.
          DATA(t117) = t115.
          DATA(t118) = |Syntax|.
          t117->load( ).
          APPEND t118 TO t117->items.
          t117->save( ).
          DATA(t119) = t115.
          DATA(t120) = |SingleFile|.
          t119->load( ).
          APPEND t120 TO t119->items.
          t119->save( ).
          DATA(t121) = t115.
          t114 = t121.
          t112 = t114.
        ELSE.
          DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t122.
          t112 = t122.
        ENDIF.
        t111 = t112.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t124.
        t123 = t124.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        t125 = t126.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t128.
        t127 = t128.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t130.
        t129 = t130.
        DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t132.
        t131 = t132.
        t104 = NEW zcl_lnt_irule_metadata( i_key = t105 i_title = t107 i_short_description = t109 i_bad_example = t123 i_good_example = t125 i_extended_information = t127 i_tags = t111 i_pragma = t129 i_pseudo_comment = t131 ).
        CREATE OBJECT t104->zlnt_view_ownkeys_b0e8086400eb.
        t104->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t133 ).
        ENDIF.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t134 ).
        ENDIF.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t135 ).
        ENDIF.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t136 ).
        ENDIF.
        CREATE OBJECT t104->zlnt_json_ownkeys_70e5fd461788.
        t104->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t137) = |key|.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
        ENDIF.
        DATA(t139) = |title|.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
        ENDIF.
        DATA(t141) = |shortDescription|.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
        ENDIF.
        DATA(t143) = |tags|.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
        ENDIF.
        t103 = t104->key.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t146) = me->conf.
        t145 = t146->zlnt_view_read_sr_15c06369f827( ).
        DATA t147 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t147.
        t95 = zcl_lnt_issue=>at_token( i_file = t96 i_token = t97 i_message_26cb = t102 i_key = t103 i_severity = t145 i_fix = t147 ).
        t94 = t95.
        DATA(t148) = t2.
        DATA(t149) = t94.
        t148->load( ).
        APPEND t149 TO t148->items.
        t148->save( ).
      ENDDO.
    ENDDO.
    DATA(t150) = t2.
    result = t150.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_inln_dt_old_vrsns_cnf( me->g_c_i_s_r_i_d_o_v_t_i_dt_ol_vr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_inln_dt_old_vrsns_cnf( me->g_c_i_s_r_i_d_o_v_t_i_dt_ol_vr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_inln_dt_old_vrsns_cnf.
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
        t1 = NEW zcl_lnt_inln_dt_old_vrsns_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_i_d_o_v_t_i_dt_ol_vr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_i_d_o_v_t_i_dt_ol_vr( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1548_39412f673ae2.
  ENDMETHOD.
ENDCLASS.
