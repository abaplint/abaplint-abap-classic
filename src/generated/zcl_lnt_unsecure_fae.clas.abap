* TS: src/rules/unsecure_fae.ts:13:1 UnsecureFAE
CLASS zcl_lnt_unsecure_fae DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_unsecure_fae_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rls_uns_f_ts_uns_f RETURNING VALUE(result) TYPE REF TO zcl_lnt_unsecure_fae_conf.
    METHODS int_ins_src_rls_uns_f_ts_uns_f IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_unsecure_fae.
    METHODS st_cn_in_sr_rls_uns_f_ts_uns_f IMPORTING i_conf TYPE REF TO zcl_lnt_unsecure_fae_conf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unsecure_fae IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_unsecure_fae_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |unsecure_fae|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Unsecure FAE|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for unsecure FAE|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Issues from rule check_syntax must be fixed before this rule|.
      t11 = t11 && | takes effect|.
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
      DATA(t21) = |Experimental|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Performance|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      t17 = t24.
      t15 = t17.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t15 = t25.
    ENDIF.
    t14 = t15.
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
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t14 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t39) = |key|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |title|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |shortDescription|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |extendedInformation|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |tags|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rls_uns_f_ts_uns_f.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD int_ins_src_rls_uns_f_ts_uns_f.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD st_cn_in_sr_rls_uns_f_ts_uns_f.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_abap_object ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA(t7) = t2.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t9 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t10 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t11) = me->reg.
    DATA t12 TYPE REF TO zcl_lnt_abap_object.
    DATA(t13) = t1.
    DATA t14 TYPE REF TO object.
    t14 = t13.
    t12 ?= t14.
    t10 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t11 i_object_19cd = t12 ).
    t9 = t10->run( ).
    t8 = t9.
    DATA t15 TYPE abap_bool.
    DATA t16 TYPE i.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t18) = t8.
    t17 = t18->zlnt_view_read_sr_bd188c319c03( ).
    t17->load( ).
    t16 = lines( t17->items ).
    DATA(t19) = 0.
    t15 = xsdbool( t16 > t19 ).
    IF t15 = abap_true.
      DATA(t20) = t2.
      result = t20.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zcl_lnt_abap_object.
    DATA t23 TYPE REF TO zcl_lnt_abap_object.
    DATA(t24) = t1.
    DATA t25 TYPE REF TO object.
    t25 = t24.
    t23 ?= t25.
    t22 = t23.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t27) = t22.
    t26 = t27->parsed.
    t21 = t26.
    DATA t28 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    DATA(t30) = VALUE i( ).
    DO.
      t21->load( ).
      IF t30 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t21->items INDEX t30 + 1 INTO t29.
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
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t35.
      DATA t36 TYPE REF TO zcl_lnt_structure_node.
      DATA t37 TYPE REF TO zcl_lnt_structure_node.
      DATA t38 TYPE REF TO zcl_lnt_abap_file.
      DATA(t39) = t28.
      t38 = t39.
      DATA t40 TYPE REF TO zcl_lnt_structure_node.
      DATA(t41) = t38.
      t40 = t41->structure.
      t37 = t40.
      t36 = t37.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t42.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = t36.
      IF t44 IS INITIAL.
        t43 = abap_true.
      ENDIF.
      IF t43 = abap_true.
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t45.
        t42 = t45.
      ELSE.
        DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t47 TYPE REF TO zcl_lnt_structure_node.
        DATA(t48) = t36.
        t47 = t48.
        DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
        t46 = t47->find_all_expressions( i_type_9913 = t49 ).
        t42 = t46.
      ENDIF.
      t35 = t42.
      t34 = t35.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t50.
      DATA t51 TYPE abap_bool.
      DATA(t52) = t34.
      t51 = xsdbool( t52 IS BOUND ).
      IF t51 = abap_true.
        DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t54) = t34.
        t53 = t54.
        t50 = t53.
      ELSE.
        DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t55.
        t50 = t55.
      ENDIF.
      t33 = t50.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t56.
      DATA t57 TYPE REF TO object.
      CLEAR t57.
      DATA(t58) = VALUE i( ).
      DO.
        t33->load( ).
        IF t58 >= lines( t33->items ).
          EXIT.
        ENDIF.
        CLEAR t57.
        READ TABLE t33->items INDEX t58 + 1 INTO t57.
        t58 = t58 + 1.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t59.
        CLEAR t56.
        IF t57 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t59 ?= t57.
          DATA t60 TYPE REF TO object.
          t60 = t59->as_ref( ).
          t56 ?= t60.
        ELSE.
          t56 ?= t57.
        ENDIF.
        DATA t61 TYPE REF TO zcl_lnt_abstract_token.
        DATA t62 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t63) = t56.
        t62 = t63->get_first_token( ).
        t61 = t62.
        DATA t64 TYPE string.
        DATA(t65) = |Unsecure FAE|.
        t64 = t65.
        DATA(t66) = t2.
        DATA t67 TYPE REF TO zcl_lnt_issue.
        CLEAR t67.
        DATA(t68) = t28.
        DATA(t69) = t61.
        DATA(t70) = t64.
        DATA(t71) = VALUE string( ).
        DATA t72 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t72.
        DATA t73 TYPE string.
        DATA(t74) = |unsecure_fae|.
        t73 = t74.
        DATA t75 TYPE string.
        DATA(t76) = |Unsecure FAE|.
        t75 = t76.
        DATA t77 TYPE string.
        DATA(t78) = |Checks for unsecure FAE|.
        t77 = t78.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA(t81) = abap_true.
        IF t81 = abap_true.
          DATA(t82) = |Issues from rule check_syntax must be fixed before this rule|.
          t82 = t82 && | takes effect|.
          DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t83->has = abap_true.
          t83->value = t82.
          t80 = t83.
        ELSE.
          DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t84.
          t80 = t84.
        ENDIF.
        t79 = t80.
        DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t85.
        DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t86.
        DATA(t87) = abap_true.
        IF t87 = abap_true.
          DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t90.
          t89 = t90.
          DATA(t91) = t89.
          DATA(t92) = |Experimental|.
          t91->load( ).
          APPEND t92 TO t91->items.
          t91->save( ).
          DATA(t93) = t89.
          DATA(t94) = |Performance|.
          t93->load( ).
          APPEND t94 TO t93->items.
          t93->save( ).
          DATA(t95) = t89.
          t88 = t95.
          t86 = t88.
        ELSE.
          DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t96.
          t86 = t96.
        ENDIF.
        t85 = t86.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        t97 = t98.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t100.
        t99 = t100.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t102.
        t101 = t102.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        t103 = t104.
        t72 = NEW zcl_lnt_irule_metadata( i_key = t73 i_title = t75 i_short_description = t77 i_bad_example = t97 i_good_example = t99 i_extended_information = t79 i_tags = t85 i_pragma = t101 i_pseudo_comment = t103 ).
        CREATE OBJECT t72->zlnt_view_ownkeys_b0e8086400eb.
        t72->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t72->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t105 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t72->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t106 ).
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        IF t72->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t107 ).
        ENDIF.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t72->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t108 ).
        ENDIF.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        IF t72->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t109 ).
        ENDIF.
        CREATE OBJECT t72->zlnt_json_ownkeys_70e5fd461788.
        t72->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t110) = |key|.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t72->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
        ENDIF.
        DATA(t112) = |title|.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t72->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
        ENDIF.
        DATA(t114) = |shortDescription|.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        IF t72->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
        ENDIF.
        DATA(t116) = |extendedInformation|.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t72->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
        ENDIF.
        DATA(t118) = |tags|.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t72->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
        ENDIF.
        t71 = t72->key.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t121) = CAST zcl_lnt_unsecure_fae_conf( me->gt_cn_in_sr_rls_uns_f_ts_uns_f( ) ).
        t120 = t121->zlnt_view_read_sr_15c06369f827( ).
        DATA t122 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t122.
        t67 = zcl_lnt_issue=>at_token( i_file = t68 i_token = t69 i_message_26cb = t70 i_key = t71 i_severity = t120 i_fix = t122 ).
        t66->load( ).
        APPEND t67 TO t66->items.
        t66->save( ).
      ENDDO.
    ENDDO.
    DATA(t123) = t2.
    result = t123.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unsecure_fae_conf( me->gt_cn_in_sr_rls_uns_f_ts_uns_f( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unsecure_fae_conf( me->gt_cn_in_sr_rls_uns_f_ts_uns_f( ) ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_unsecure_fae.
    DATA(t3) = t1.
    t2 = me->int_ins_src_rls_uns_f_ts_uns_f( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_unsecure_fae_conf.
    CLEAR t2.
    DATA(t3) = t1.
    CLEAR t2.
    IF t3 IS BOUND.
      IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t3->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t4.
          IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t3->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_unsecure_fae_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rls_uns_f_ts_uns_f( i_conf = t2 ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1750_f8183e8bfd64.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
