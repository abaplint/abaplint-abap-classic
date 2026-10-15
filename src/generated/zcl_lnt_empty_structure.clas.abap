* TS: src/rules/empty_structure.ts:34:1 EmptyStructure
CLASS zcl_lnt_empty_structure DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_empty_structure_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_em_st_ts_em_str RETURNING VALUE(result) TYPE REF TO zcl_lnt_empty_structure_conf.
    METHODS st_cn_in_sr_rl_em_st_ts_em_str IMPORTING i_conf TYPE REF TO zcl_lnt_empty_structure_conf.
    METHODS rn_pr_in_sr_rl_em_st_ts_em_str IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_empty_structure IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_empty_structure_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |empty_structure|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Find empty blocks|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that the code does not contain empty blocks.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#no-empty-if-branches|.
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
      DATA(t21) = |Styleguide|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |SingleFile|.
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
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |IF foo = bar.\nENDIF.\n\nDO 2 TIMES.\nENDDO.|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA(t35) = |LOOP AT itab WHERE qty = 0 OR date > sy-datum.\nENDLOOP.\nresu|.
      t35 = t35 && |lt = xsdbool( sy-subrc = 0 ).|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t33 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t33 = t37.
    ENDIF.
    t32 = t33.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_name.
    DATA t2 TYPE string.
    DATA(t3) = |Empty block, add code: |.
    DATA(t4) = t1.
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    result = t2.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_em_st_ts_em_str.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_em_st_ts_em_str.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_em_st_ts_em_str.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t6.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t8.
    DATA(t9) = t6.
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t11.
    DATA(t12) = t4.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t20.
    DATA(t21) = t1.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    DATA(t23) = t20.
    t22 = t23->statements.
    t19 = t22.
    t18 = t19.
    DATA(t24) = t18.
    DATA t25 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t25.
    DATA t26 TYPE REF TO object.
    CLEAR t26.
    DATA(t27) = VALUE i( ).
    DO.
      t24->load( ).
      IF t27 >= lines( t24->items ).
        EXIT.
      ENDIF.
      CLEAR t26.
      READ TABLE t24->items INDEX t27 + 1 INTO t26.
      t27 = t27 + 1.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      CLEAR t25.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t28 ?= t26.
        DATA t29 TYPE REF TO object.
        CLEAR t29.
        t29 = t28->as_ref( ).
        t25 ?= t29.
      ELSE.
        t25 ?= t26.
      ENDIF.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zif_lnt_statement.
      CLEAR t31.
      DATA(t32) = t25.
      t31 = t32->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_unknown ).
      IF t30 = abap_true.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t33.
        CREATE OBJECT t33.
        result = t33.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t35.
    CREATE OBJECT t35.
    t34 = t35.
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) ).
    t37 = t38->zlnt_view_read_sr_22c78f5eda46( ).
    DATA(t39) = abap_true.
    t36 = xsdbool( t37 = t39 ).
    IF t36 = abap_true.
      DATA(t40) = VALUE i( ).
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t42.
      DATA(t43) = t4.
      t42 = t43.
      DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d753_f3a2f457d984.
      t41 = t42->find_all_structures_recursive( i_type_9913 = t44 ).
      DATA t45 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t45.
      DATA t46 TYPE REF TO object.
      CLEAR t46.
      DATA(t47) = VALUE i( ).
      DO.
        t41->load( ).
        IF t47 >= lines( t41->items ).
          EXIT.
        ENDIF.
        CLEAR t46.
        READ TABLE t41->items INDEX t47 + 1 INTO t46.
        t47 = t47 + 1.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        CLEAR t45.
        IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t48 ?= t46.
          DATA t49 TYPE REF TO object.
          CLEAR t49.
          t49 = t48->as_ref( ).
          t45 ?= t49.
        ELSE.
          t45 ?= t46.
        ENDIF.
        DATA(t50) = t34.
        DATA(t51) = t45.
        t50->load( ).
        APPEND t51 TO t50->items.
        t50->save( ).
      ENDDO.
      DATA(t52) = VALUE i( ).
      DATA(t53) = t34.
      t53->load( ).
      t52 = lines( t53->items ).
      t40 = t52.
    ENDIF.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) ).
    t55 = t56->zlnt_view_read_sr_43a444581482( ).
    DATA(t57) = abap_true.
    t54 = xsdbool( t55 = t57 ).
    IF t54 = abap_true.
      DATA(t58) = VALUE i( ).
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t59.
      DATA t60 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t60.
      DATA(t61) = t4.
      t60 = t61.
      DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d709_9d7d29fb0565.
      t59 = t60->find_all_structures_recursive( i_type_9913 = t62 ).
      DATA t63 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t63.
      DATA t64 TYPE REF TO object.
      CLEAR t64.
      DATA(t65) = VALUE i( ).
      DO.
        t59->load( ).
        IF t65 >= lines( t59->items ).
          EXIT.
        ENDIF.
        CLEAR t64.
        READ TABLE t59->items INDEX t65 + 1 INTO t64.
        t65 = t65 + 1.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        CLEAR t63.
        IF t64 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t66 ?= t64.
          DATA t67 TYPE REF TO object.
          CLEAR t67.
          t67 = t66->as_ref( ).
          t63 ?= t67.
        ELSE.
          t63 ?= t64.
        ENDIF.
        DATA(t68) = t34.
        DATA(t69) = t63.
        t68->load( ).
        APPEND t69 TO t68->items.
        t68->save( ).
      ENDDO.
      DATA(t70) = VALUE i( ).
      DATA(t71) = t34.
      t71->load( ).
      t70 = lines( t71->items ).
      t58 = t70.
    ENDIF.
    DATA(t72) = VALUE abap_bool( ).
    DATA(t73) = VALUE abap_bool( ).
    DATA(t74) = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) ).
    t73 = t74->zlnt_view_read_sr_a0a1d19d185e( ).
    DATA(t75) = abap_true.
    t72 = xsdbool( t73 = t75 ).
    IF t72 = abap_true.
      DATA(t76) = VALUE i( ).
      DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t78.
      DATA(t79) = t4.
      t78 = t79.
      DATA(t80) = zlnt_runtime_desc_78196487750d=>zlnt_member_d751_4d9c6e99dfab.
      t77 = t78->find_all_structures_recursive( i_type_9913 = t80 ).
      DATA t81 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t81.
      DATA t82 TYPE REF TO object.
      CLEAR t82.
      DATA(t83) = VALUE i( ).
      DO.
        t77->load( ).
        IF t83 >= lines( t77->items ).
          EXIT.
        ENDIF.
        CLEAR t82.
        READ TABLE t77->items INDEX t83 + 1 INTO t82.
        t83 = t83 + 1.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        CLEAR t81.
        IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t84 ?= t82.
          DATA t85 TYPE REF TO object.
          CLEAR t85.
          t85 = t84->as_ref( ).
          t81 ?= t85.
        ELSE.
          t81 ?= t82.
        ENDIF.
        DATA(t86) = t34.
        DATA(t87) = t81.
        t86->load( ).
        APPEND t87 TO t86->items.
        t86->save( ).
      ENDDO.
      DATA(t88) = VALUE i( ).
      DATA(t89) = t34.
      t89->load( ).
      t88 = lines( t89->items ).
      t76 = t88.
    ENDIF.
    DATA(t90) = VALUE abap_bool( ).
    DATA(t91) = VALUE abap_bool( ).
    DATA(t92) = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) ).
    t91 = t92->zlnt_view_read_sr_996db639d95e( ).
    DATA(t93) = abap_true.
    t90 = xsdbool( t91 = t93 ).
    IF t90 = abap_true.
      DATA(t94) = VALUE i( ).
      DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t95.
      DATA t96 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t96.
      DATA(t97) = t4.
      t96 = t97.
      DATA(t98) = zlnt_runtime_desc_78196487750d=>zlnt_member_d727_3ba4cd3431c9.
      t95 = t96->find_all_structures_recursive( i_type_9913 = t98 ).
      DATA t99 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t99.
      DATA t100 TYPE REF TO object.
      CLEAR t100.
      DATA(t101) = VALUE i( ).
      DO.
        t95->load( ).
        IF t101 >= lines( t95->items ).
          EXIT.
        ENDIF.
        CLEAR t100.
        READ TABLE t95->items INDEX t101 + 1 INTO t100.
        t101 = t101 + 1.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        CLEAR t99.
        IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t102 ?= t100.
          DATA t103 TYPE REF TO object.
          CLEAR t103.
          t103 = t102->as_ref( ).
          t99 ?= t103.
        ELSE.
          t99 ?= t100.
        ENDIF.
        DATA(t104) = t34.
        DATA(t105) = t99.
        t104->load( ).
        APPEND t105 TO t104->items.
        t104->save( ).
      ENDDO.
      DATA(t106) = VALUE i( ).
      DATA(t107) = t34.
      t107->load( ).
      t106 = lines( t107->items ).
      t94 = t106.
    ENDIF.
    DATA(t108) = VALUE abap_bool( ).
    DATA(t109) = VALUE abap_bool( ).
    DATA(t110) = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) ).
    t109 = t110->zlnt_view_read_sr_c09d4cea8735( ).
    DATA(t111) = abap_true.
    t108 = xsdbool( t109 = t111 ).
    IF t108 = abap_true.
      DATA(t112) = VALUE i( ).
      DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t113.
      DATA t114 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t114.
      DATA(t115) = t4.
      t114 = t115.
      DATA(t116) = zlnt_runtime_desc_78196487750d=>zlnt_member_d705_d5c8a90641bd.
      t113 = t114->find_all_structures_recursive( i_type_9913 = t116 ).
      DATA t117 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t117.
      DATA t118 TYPE REF TO object.
      CLEAR t118.
      DATA(t119) = VALUE i( ).
      DO.
        t113->load( ).
        IF t119 >= lines( t113->items ).
          EXIT.
        ENDIF.
        CLEAR t118.
        READ TABLE t113->items INDEX t119 + 1 INTO t118.
        t119 = t119 + 1.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        CLEAR t117.
        IF t118 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t120 ?= t118.
          DATA t121 TYPE REF TO object.
          CLEAR t121.
          t121 = t120->as_ref( ).
          t117 ?= t121.
        ELSE.
          t117 ?= t118.
        ENDIF.
        DATA(t122) = t34.
        DATA(t123) = t117.
        t122->load( ).
        APPEND t123 TO t122->items.
        t122->save( ).
      ENDDO.
      DATA(t124) = VALUE i( ).
      DATA(t125) = t34.
      t125->load( ).
      t124 = lines( t125->items ).
      t112 = t124.
      DATA(t126) = VALUE i( ).
      DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t127.
      DATA t128 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t128.
      DATA(t129) = t4.
      t128 = t129.
      DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d706_b5e09ff8af85.
      t127 = t128->find_all_structures_recursive( i_type_9913 = t130 ).
      DATA t131 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t131.
      DATA t132 TYPE REF TO object.
      CLEAR t132.
      DATA(t133) = VALUE i( ).
      DO.
        t127->load( ).
        IF t133 >= lines( t127->items ).
          EXIT.
        ENDIF.
        CLEAR t132.
        READ TABLE t127->items INDEX t133 + 1 INTO t132.
        t133 = t133 + 1.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        CLEAR t131.
        IF t132 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t134 ?= t132.
          DATA t135 TYPE REF TO object.
          CLEAR t135.
          t135 = t134->as_ref( ).
          t131 ?= t135.
        ELSE.
          t131 ?= t132.
        ENDIF.
        DATA(t136) = t34.
        DATA(t137) = t131.
        t136->load( ).
        APPEND t137 TO t136->items.
        t136->save( ).
      ENDDO.
      DATA(t138) = VALUE i( ).
      DATA(t139) = t34.
      t139->load( ).
      t138 = lines( t139->items ).
      t126 = t138.
      DATA(t140) = VALUE i( ).
      DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t141.
      DATA t142 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t142.
      DATA(t143) = t4.
      t142 = t143.
      DATA(t144) = zlnt_runtime_desc_78196487750d=>zlnt_member_d707_8cc2599df085.
      t141 = t142->find_all_structures_recursive( i_type_9913 = t144 ).
      DATA t145 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t145.
      DATA t146 TYPE REF TO object.
      CLEAR t146.
      DATA(t147) = VALUE i( ).
      DO.
        t141->load( ).
        IF t147 >= lines( t141->items ).
          EXIT.
        ENDIF.
        CLEAR t146.
        READ TABLE t141->items INDEX t147 + 1 INTO t146.
        t147 = t147 + 1.
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t148.
        CLEAR t145.
        IF t146 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t148 ?= t146.
          DATA t149 TYPE REF TO object.
          CLEAR t149.
          t149 = t148->as_ref( ).
          t145 ?= t149.
        ELSE.
          t145 ?= t146.
        ENDIF.
        DATA(t150) = t34.
        DATA(t151) = t145.
        t150->load( ).
        APPEND t151 TO t150->items.
        t150->save( ).
      ENDDO.
      DATA(t152) = VALUE i( ).
      DATA(t153) = t34.
      t153->load( ).
      t152 = lines( t153->items ).
      t140 = t152.
    ENDIF.
    DATA(t154) = t34.
    DATA t155 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t155.
    DATA t156 TYPE REF TO object.
    CLEAR t156.
    DATA(t157) = VALUE i( ).
    DO.
      t154->load( ).
      IF t157 >= lines( t154->items ).
        EXIT.
      ENDIF.
      CLEAR t156.
      READ TABLE t154->items INDEX t157 + 1 INTO t156.
      t157 = t157 + 1.
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t158.
      CLEAR t155.
      IF t156 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t158 ?= t156.
        DATA t159 TYPE REF TO object.
        CLEAR t159.
        t159 = t158->as_ref( ).
        t155 ?= t159.
      ELSE.
        t155 ?= t156.
      ENDIF.
      DATA(t160) = VALUE abap_bool( ).
      DATA(t161) = VALUE i( ).
      DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t162.
      DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t163.
      DATA t164 TYPE REF TO zcl_lnt_abstract_node.
      CLEAR t164.
      DATA(t165) = t155.
      t164 = t165.
      DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t166.
      DATA(t167) = t164.
      t166 = t167->children.
      t163 = t166.
      t162 ?= t163.
      t162->load( ).
      t161 = lines( t162->items ).
      DATA(t168) = 2.
      t160 = xsdbool( t161 = t168 ).
      IF t160 = abap_true.
        DATA t169 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t169.
        DATA t170 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t170.
        DATA(t171) = t155.
        t170 = t171->get_first_token( ).
        t169 = t170.
        DATA t172 TYPE REF TO zcl_lnt_issue.
        CLEAR t172.
        DATA t173 TYPE REF TO zcl_lnt_issue.
        CLEAR t173.
        DATA(t174) = t1.
        DATA(t175) = t169.
        DATA(t176) = VALUE string( ).
        DATA(t177) = VALUE string( ).
        DATA(t178) = VALUE string( ).
        DATA t179 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t179.
        DATA t180 TYPE REF TO zif_lnt_structure.
        CLEAR t180.
        DATA(t181) = t155.
        t180 = t181->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
        t179 = t180->zlnt_builtin_clas_3f891b097658( ).
        t178 = t179->name.
        t177 = t178.
        DATA(t182) = VALUE string( ).
        DATA(t183) = |Empty block, add code: |.
        DATA(t184) = t177.
        DATA(t185) = strlen( t183 ).
        t182 = |{ t183 }{ t184 }|.
        t176 = t182.
        DATA(t186) = VALUE string( ).
        DATA t187 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t187.
        DATA(t188) = VALUE string( ).
        DATA(t189) = |empty_structure|.
        t188 = t189.
        DATA(t190) = VALUE string( ).
        DATA(t191) = |Find empty blocks|.
        t190 = t191.
        DATA(t192) = VALUE string( ).
        DATA(t193) = |Checks that the code does not contain empty blocks.|.
        t192 = t193.
        DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t194.
        DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t195.
        DATA(t196) = abap_true.
        IF t196 = abap_true.
          DATA(t197) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t197 = t197 && |nABAP.md#no-empty-if-branches|.
          DATA(t198) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t198->has = abap_true.
          t198->value = t197.
          t195 = t198.
        ELSE.
          DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t199.
          t195 = t199.
        ENDIF.
        t194 = t195.
        DATA t200 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t200.
        DATA t201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t201.
        DATA(t202) = abap_true.
        IF t202 = abap_true.
          DATA t203 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t203.
          DATA t204 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t204.
          DATA t205 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t205.
          CREATE OBJECT t205.
          t204 = t205.
          DATA(t206) = t204.
          DATA(t207) = |Styleguide|.
          t206->load( ).
          APPEND t207 TO t206->items.
          t206->save( ).
          DATA(t208) = t204.
          DATA(t209) = |SingleFile|.
          t208->load( ).
          APPEND t209 TO t208->items.
          t208->save( ).
          DATA(t210) = t204.
          t203 = t210.
          t201 = t203.
        ELSE.
          DATA t211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t211.
          t201 = t211.
        ENDIF.
        t200 = t201.
        DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t212.
        DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t213.
        DATA(t214) = abap_true.
        IF t214 = abap_true.
          DATA(t215) = |IF foo = bar.\nENDIF.\n\nDO 2 TIMES.\nENDDO.|.
          DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t216->has = abap_true.
          t216->value = t215.
          t213 = t216.
        ELSE.
          DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t217.
          t213 = t217.
        ENDIF.
        t212 = t213.
        DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t218.
        DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t219.
        DATA(t220) = abap_true.
        IF t220 = abap_true.
          DATA(t221) = |LOOP AT itab WHERE qty = 0 OR date > sy-datum.\nENDLOOP.\nresu|.
          t221 = t221 && |lt = xsdbool( sy-subrc = 0 ).|.
          DATA(t222) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t222->has = abap_true.
          t222->value = t221.
          t219 = t222.
        ELSE.
          DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t223.
          t219 = t223.
        ENDIF.
        t218 = t219.
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t224.
        DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t225.
        t224 = t225.
        DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t226.
        DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t227.
        t226 = t227.
        t187 = NEW zcl_lnt_irule_metadata( i_key = t188 i_title = t190 i_short_description = t192 i_bad_example = t212 i_good_example = t218 i_extended_information = t194 i_tags = t200 i_pragma = t224 i_pseudo_comment = t226 ).
        CREATE OBJECT t187->zlnt_view_ownkeys_b0e8086400eb.
        t187->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t228.
        IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t228 ).
        ENDIF.
        DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t229.
        IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t229 ).
        ENDIF.
        DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t230.
        IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t230 ).
        ENDIF.
        DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t231.
        IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t231 ).
        ENDIF.
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t232.
        IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t232 ).
        ENDIF.
        DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t233.
        IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t233 ).
        ENDIF.
        DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t234.
        IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t234 ).
        ENDIF.
        CREATE OBJECT t187->zlnt_json_ownkeys_70e5fd461788.
        t187->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t235) = |key|.
        DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t236.
        IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t235 p1 = t236 ).
        ENDIF.
        DATA(t237) = |title|.
        DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t238.
        IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t237 p1 = t238 ).
        ENDIF.
        DATA(t239) = |shortDescription|.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t239 p1 = t240 ).
        ENDIF.
        DATA(t241) = |extendedInformation|.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t242.
        IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t241 p1 = t242 ).
        ENDIF.
        DATA(t243) = |tags|.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t243 p1 = t244 ).
        ENDIF.
        DATA(t245) = |badExample|.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
        ENDIF.
        DATA(t247) = |goodExample|.
        DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t248.
        IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
        ENDIF.
        t186 = t187->key.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t249.
        DATA(t250) = me->conf.
        t249 = t250->zlnt_view_read_sr_15c06369f827( ).
        DATA t251 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t251.
        t173 = zcl_lnt_issue=>at_token( i_file = t174 i_token = t175 i_message_26cb = t176 i_key = t186 i_severity = t249 i_fix = t251 ).
        t172 = t173.
        DATA(t252) = t2.
        DATA(t253) = t172.
        t252->load( ).
        APPEND t253 TO t252->items.
        t252->save( ).
      ENDIF.
    ENDDO.
    DATA(t254) = VALUE abap_bool( ).
    DATA(t255) = VALUE abap_bool( ).
    DATA(t256) = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) ).
    t255 = t256->zlnt_view_read_sr_23037fee38bb( ).
    DATA(t257) = abap_true.
    t254 = xsdbool( t255 = t257 ).
    IF t254 = abap_true.
      DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t258.
      DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t259.
      DATA t260 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t260.
      DATA(t261) = t4.
      t260 = t261.
      DATA(t262) = zlnt_runtime_desc_78196487750d=>zlnt_member_d744_dbdc6f78b1c3.
      t259 = t260->find_all_structures_recursive( i_type_9913 = t262 ).
      t258 = t259.
      DATA(t263) = t258.
      DATA t264 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t264.
      DATA t265 TYPE REF TO object.
      CLEAR t265.
      DATA(t266) = VALUE i( ).
      DO.
        t263->load( ).
        IF t266 >= lines( t263->items ).
          EXIT.
        ENDIF.
        CLEAR t265.
        READ TABLE t263->items INDEX t266 + 1 INTO t265.
        t266 = t266 + 1.
        DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t267.
        CLEAR t264.
        IF t265 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t267 ?= t265.
          DATA t268 TYPE REF TO object.
          CLEAR t268.
          t268 = t267->as_ref( ).
          t264 ?= t268.
        ELSE.
          t264 ?= t265.
        ENDIF.
        DATA t269 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t269.
        DATA t270 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t270.
        DATA(t271) = t264.
        DATA(t272) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
        t270 = t271->find_direct_structure( i_type_9913 = t272 ).
        t269 = t270.
        DATA(t273) = VALUE abap_bool( ).
        DATA t274 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t274.
        DATA(t275) = t269.
        t274 = t275.
        DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t276.
        DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t277.
        t276 = t277.
        DATA(t278) = VALUE abap_bool( ).
        DATA(t279) = t274.
        IF t279 IS INITIAL.
          t278 = abap_true.
        ENDIF.
        t273 = t278.
        IF t273 = abap_true.
          DATA t280 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t280.
          DATA t281 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t281.
          DATA(t282) = t264.
          t281 = t282->get_first_token( ).
          t280 = t281.
          DATA t283 TYPE REF TO zcl_lnt_issue.
          CLEAR t283.
          DATA t284 TYPE REF TO zcl_lnt_issue.
          CLEAR t284.
          DATA(t285) = t1.
          DATA(t286) = t280.
          DATA(t287) = VALUE string( ).
          DATA(t288) = VALUE string( ).
          DATA(t289) = VALUE string( ).
          DATA t290 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t290.
          DATA t291 TYPE REF TO zif_lnt_structure.
          CLEAR t291.
          DATA(t292) = t264.
          t291 = t292->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
          t290 = t291->zlnt_builtin_clas_3f891b097658( ).
          t289 = t290->name.
          t288 = t289.
          DATA(t293) = VALUE string( ).
          DATA(t294) = |Empty block, add code: |.
          DATA(t295) = t288.
          DATA(t296) = strlen( t294 ).
          t293 = |{ t294 }{ t295 }|.
          t287 = t293.
          DATA(t297) = VALUE string( ).
          DATA t298 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t298.
          DATA(t299) = VALUE string( ).
          DATA(t300) = |empty_structure|.
          t299 = t300.
          DATA(t301) = VALUE string( ).
          DATA(t302) = |Find empty blocks|.
          t301 = t302.
          DATA(t303) = VALUE string( ).
          DATA(t304) = |Checks that the code does not contain empty blocks.|.
          t303 = t304.
          DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t305.
          DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t306.
          DATA(t307) = abap_true.
          IF t307 = abap_true.
            DATA(t308) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t308 = t308 && |nABAP.md#no-empty-if-branches|.
            DATA(t309) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t309->has = abap_true.
            t309->value = t308.
            t306 = t309.
          ELSE.
            DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t310.
            t306 = t310.
          ENDIF.
          t305 = t306.
          DATA t311 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t311.
          DATA t312 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t312.
          DATA(t313) = abap_true.
          IF t313 = abap_true.
            DATA t314 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t314.
            DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t315.
            DATA t316 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t316.
            CREATE OBJECT t316.
            t315 = t316.
            DATA(t317) = t315.
            DATA(t318) = |Styleguide|.
            t317->load( ).
            APPEND t318 TO t317->items.
            t317->save( ).
            DATA(t319) = t315.
            DATA(t320) = |SingleFile|.
            t319->load( ).
            APPEND t320 TO t319->items.
            t319->save( ).
            DATA(t321) = t315.
            t314 = t321.
            t312 = t314.
          ELSE.
            DATA t322 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t322.
            t312 = t322.
          ENDIF.
          t311 = t312.
          DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t323.
          DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t324.
          DATA(t325) = abap_true.
          IF t325 = abap_true.
            DATA(t326) = |IF foo = bar.\nENDIF.\n\nDO 2 TIMES.\nENDDO.|.
            DATA(t327) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t327->has = abap_true.
            t327->value = t326.
            t324 = t327.
          ELSE.
            DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t328.
            t324 = t328.
          ENDIF.
          t323 = t324.
          DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t329.
          DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t330.
          DATA(t331) = abap_true.
          IF t331 = abap_true.
            DATA(t332) = |LOOP AT itab WHERE qty = 0 OR date > sy-datum.\nENDLOOP.\nresu|.
            t332 = t332 && |lt = xsdbool( sy-subrc = 0 ).|.
            DATA(t333) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t333->has = abap_true.
            t333->value = t332.
            t330 = t333.
          ELSE.
            DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t334.
            t330 = t334.
          ENDIF.
          t329 = t330.
          DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t335.
          DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t336.
          t335 = t336.
          DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t337.
          DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t338.
          t337 = t338.
          t298 = NEW zcl_lnt_irule_metadata( i_key = t299 i_title = t301 i_short_description = t303 i_bad_example = t323 i_good_example = t329 i_extended_information = t305 i_tags = t311 i_pragma = t335 i_pseudo_comment = t337 ).
          CREATE OBJECT t298->zlnt_view_ownkeys_b0e8086400eb.
          t298->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t339.
          IF t298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t339 ).
          ENDIF.
          DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t340.
          IF t298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t340 ).
          ENDIF.
          DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t341.
          IF t298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t341 ).
          ENDIF.
          DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t342.
          IF t298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t342 ).
          ENDIF.
          DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t343.
          IF t298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t343 ).
          ENDIF.
          DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t344.
          IF t298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t344 ).
          ENDIF.
          DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t345.
          IF t298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t345 ).
          ENDIF.
          CREATE OBJECT t298->zlnt_json_ownkeys_70e5fd461788.
          t298->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t346) = |key|.
          DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t347.
          IF t298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t298->zlnt_json_ownkeys_70e5fd461788->put( p0 = t346 p1 = t347 ).
          ENDIF.
          DATA(t348) = |title|.
          DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t349.
          IF t298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t298->zlnt_json_ownkeys_70e5fd461788->put( p0 = t348 p1 = t349 ).
          ENDIF.
          DATA(t350) = |shortDescription|.
          DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t351.
          IF t298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t298->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
          ENDIF.
          DATA(t352) = |extendedInformation|.
          DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t353.
          IF t298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t298->zlnt_json_ownkeys_70e5fd461788->put( p0 = t352 p1 = t353 ).
          ENDIF.
          DATA(t354) = |tags|.
          DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t355.
          IF t298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t298->zlnt_json_ownkeys_70e5fd461788->put( p0 = t354 p1 = t355 ).
          ENDIF.
          DATA(t356) = |badExample|.
          DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t357.
          IF t298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t298->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
          ENDIF.
          DATA(t358) = |goodExample|.
          DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t359.
          IF t298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t298->zlnt_json_ownkeys_70e5fd461788->put( p0 = t358 p1 = t359 ).
          ENDIF.
          t297 = t298->key.
          DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t360.
          DATA(t361) = me->conf.
          t360 = t361->zlnt_view_read_sr_15c06369f827( ).
          DATA t362 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t362.
          t284 = zcl_lnt_issue=>at_token( i_file = t285 i_token = t286 i_message_26cb = t287 i_key = t297 i_severity = t360 i_fix = t362 ).
          t283 = t284.
          DATA(t363) = t2.
          DATA(t364) = t283.
          t363->load( ).
          APPEND t364 TO t363->items.
          t363->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t365) = VALUE abap_bool( ).
    DATA(t366) = VALUE abap_bool( ).
    DATA(t367) = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) ).
    t366 = t367->zlnt_view_read_sr_f2f44c885431( ).
    DATA(t368) = abap_true.
    t365 = xsdbool( t366 = t368 ).
    IF t365 = abap_true.
      DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t369.
      DATA t370 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t370.
      DATA t371 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t371.
      DATA(t372) = t4.
      t371 = t372.
      DATA(t373) = zlnt_runtime_desc_78196487750d=>zlnt_member_d741_a4c2609517be.
      t370 = t371->find_all_structures_recursive( i_type_9913 = t373 ).
      t369 = t370.
      DATA(t374) = t369.
      DATA t375 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t375.
      DATA t376 TYPE REF TO object.
      CLEAR t376.
      DATA(t377) = VALUE i( ).
      DO.
        t374->load( ).
        IF t377 >= lines( t374->items ).
          EXIT.
        ENDIF.
        CLEAR t376.
        READ TABLE t374->items INDEX t377 + 1 INTO t376.
        t377 = t377 + 1.
        DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t378.
        CLEAR t375.
        IF t376 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t378 ?= t376.
          DATA t379 TYPE REF TO object.
          CLEAR t379.
          t379 = t378->as_ref( ).
          t375 ?= t379.
        ELSE.
          t375 ?= t376.
        ENDIF.
        DATA(t380) = VALUE abap_bool( ).
        DATA(t381) = VALUE i( ).
        DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t382.
        DATA t383 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t383.
        DATA t384 TYPE REF TO zcl_lnt_abstract_node.
        CLEAR t384.
        DATA(t385) = t375.
        t384 = t385.
        DATA t386 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t386.
        DATA(t387) = t384.
        t386 = t387->children.
        t383 = t386.
        t382 ?= t383.
        t382->load( ).
        t381 = lines( t382->items ).
        DATA(t388) = 2.
        t380 = xsdbool( t381 = t388 ).
        IF t380 = abap_true.
          DATA t389 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t389.
          DATA t390 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t390.
          DATA t391 TYPE REF TO zif_lnt_node.
          CLEAR t391.
          DATA t392 TYPE REF TO zcl_lnt_abstract_node.
          CLEAR t392.
          DATA(t393) = t375.
          t392 = t393.
          DATA t394 TYPE REF TO zif_lnt_node.
          CLEAR t394.
          DATA(t395) = abap_true.
          IF t395 = abap_true.
            DATA t396 TYPE REF TO zif_lnt_node.
            CLEAR t396.
            DATA t397 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t397.
            DATA(t398) = t392.
            t397 = t398->children.
            DATA(t399) = VALUE i( ).
            DATA(t400) = VALUE i( ).
            DATA t401 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t401.
            DATA(t402) = t392.
            t401 = t402->children.
            t401->load( ).
            t400 = lines( t401->items ).
            DATA(t403) = 1.
            t399 = t400 - t403.
            t399 = t399 + 1.
            DATA t404 TYPE REF TO object.
            CLEAR t404.
            t397->load( ).
            CLEAR t404.
            READ TABLE t397->items INDEX t399 INTO t404.
            DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t405.
            CLEAR t396.
            IF t404 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t405 ?= t404.
              DATA t406 TYPE REF TO object.
              CLEAR t406.
              t406 = t405->as_ref( ).
              t396 ?= t406.
            ELSE.
              t396 ?= t404.
            ENDIF.
            t394 = t396.
          ELSE.
            DATA t407 TYPE REF TO zif_lnt_node.
            CLEAR t407.
            t394 = t407.
          ENDIF.
          t391 = t394.
          t390 ?= t391.
          t389 = t390.
          DATA(t408) = VALUE f( ).
          DATA(t409) = VALUE f( ).
          DATA(t410) = VALUE f( ).
          DATA(t411) = CONV f( -1 ).
          t410 = t411.
          DATA(t412) = VALUE f( ).
          DATA(t413) = CONV f( -1 ).
          t412 = t413.
          DATA(t414) = t18.
          DATA t415 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t415.
          DATA t416 TYPE REF TO object.
          CLEAR t416.
          DATA(t417) = VALUE i( ).
          DO.
            t414->load( ).
            IF t417 >= lines( t414->items ).
              EXIT.
            ENDIF.
            CLEAR t416.
            READ TABLE t414->items INDEX t417 + 1 INTO t416.
            t417 = t417 + 1.
            DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t418.
            CLEAR t415.
            IF t416 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t418 ?= t416.
              DATA t419 TYPE REF TO object.
              CLEAR t419.
              t419 = t418->as_ref( ).
              t415 ?= t419.
            ELSE.
              t415 ?= t416.
            ENDIF.
            DATA(t420) = VALUE f( ).
            DATA(t421) = t410.
            DATA(t422) = CONV f( 1 ).
            t420 = t421 + t422.
            t410 = t420.
            DATA(t423) = VALUE abap_bool( ).
            DATA t424 TYPE REF TO zif_lnt_union_8249fcb1.
            CLEAR t424.
            DATA(t425) = abap_true.
            IF t425 = abap_true.
              DATA(t426) = t415.
              t424 = t426.
            ELSE.
              DATA t427 TYPE REF TO zif_lnt_union_8249fcb1.
              CLEAR t427.
              t424 = t427.
            ENDIF.
            DATA(t428) = t389.
            DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t429.
            DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t430.
            CLEAR t429.
            IF t424 IS BOUND.
              CLEAR t429.
              IF t424 IS BOUND.
                DATA t431 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t431.
                DATA t432 TYPE REF TO object.
                CLEAR t432.
                CLEAR t431.
                t432 = t424.
                TRY.
                    t429 ?= t432.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t429 IS NOT BOUND.
                  TRY.
                      t431 ?= t424.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t431 IS BOUND.
                    t429 = t431->source( ).
                  ENDIF.
                  IF t429 IS NOT BOUND.
                    CREATE OBJECT t429.
                    t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t429->oval = t424.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
            CLEAR t430.
            IF t428 IS BOUND.
              CLEAR t430.
              IF t428 IS BOUND.
                DATA t433 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t433.
                DATA t434 TYPE REF TO object.
                CLEAR t434.
                CLEAR t433.
                t434 = t428.
                TRY.
                    t430 ?= t434.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t430 IS NOT BOUND.
                  TRY.
                      t433 ?= t428.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t433 IS BOUND.
                    t430 = t433->source( ).
                  ENDIF.
                  IF t430 IS NOT BOUND.
                    CREATE OBJECT t430.
                    t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t430->oval = t428.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
            IF t429 IS BOUND.
              t423 = t429->strict_equals( t430 ).
            ELSE.
              t423 = xsdbool( t430 IS NOT BOUND ).
            ENDIF.
            IF t423 = abap_true.
              DATA(t435) = t410.
              t412 = t435.
              EXIT.
            ENDIF.
          ENDDO.
          DATA(t436) = t412.
          t409 = t436.
          t408 = t409.
          DATA t437 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t437.
          DATA t438 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t438.
          DATA(t439) = t18.
          DATA(t440) = VALUE i( ).
          DATA(t441) = VALUE f( ).
          DATA(t442) = t408.
          DATA(t443) = CONV f( 1 ).
          t441 = t442 + t443.
          IF t441 > range_i32_upper.
            t440 = range_i32_upper.
          ELSEIF t441 < range_i32_lower.
            t440 = range_i32_lower.
          ELSE.
            t440 = trunc( t441 ).
          ENDIF.
          t440 = t440 + 1.
          DATA t444 TYPE REF TO object.
          CLEAR t444.
          t439->load( ).
          CLEAR t444.
          READ TABLE t439->items INDEX t440 INTO t444.
          DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t445.
          CLEAR t438.
          IF t444 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t445 ?= t444.
            DATA t446 TYPE REF TO object.
            CLEAR t446.
            t446 = t445->as_ref( ).
            t438 ?= t446.
          ELSE.
            t438 ?= t444.
          ENDIF.
          t437 = t438.
          DATA(t447) = VALUE abap_bool( ).
          DATA(t448) = VALUE abap_bool( ).
          DATA t449 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t449.
          DATA(t450) = t437.
          t449 = t450.
          DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t451.
          DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t452.
          t451 = t452.
          DATA(t453) = VALUE abap_bool( ).
          DATA(t454) = VALUE abap_bool( ).
          DATA(t455) = t449.
          IF t455 IS INITIAL.
            t454 = abap_true.
          ENDIF.
          t453 = xsdbool( t454 = abap_false ).
          t448 = t453.
          t447 = t448.
          IF t448 = abap_true.
            DATA(t456) = VALUE abap_bool( ).
            DATA(t457) = VALUE i( ).
            DATA(t458) = VALUE string( ).
            DATA(t459) = VALUE string( ).
            DATA(t460) = t437.
            t459 = t460->concat_tokens( ).
            DATA(t461) = strlen( t459 ).
            t458 = t459.
            IF t458 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t458 TO UPPER CASE.
            ELSE.
              t458 = zlnt_runtime_uppe_91169605024d=>full( t458 ).
            ENDIF.
            DATA(t462) = |SY-SUBRC|.
            DATA(t463) = strlen( t458 ).
            IF t462 IS INITIAL.
              t457 = 0.
            ELSE.
              FIND t462 IN t458 MATCH OFFSET t457.
              IF sy-subrc <> 0.
                t457 = -1.
              ENDIF.
            ENDIF.
            DATA(t464) = 0.
            t456 = xsdbool( t457 >= t464 ).
            t447 = t456.
          ENDIF.
          IF t447 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t465 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t465.
          DATA t466 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t466.
          DATA(t467) = t375.
          t466 = t467->get_first_token( ).
          t465 = t466.
          DATA t468 TYPE REF TO zcl_lnt_issue.
          CLEAR t468.
          DATA t469 TYPE REF TO zcl_lnt_issue.
          CLEAR t469.
          DATA(t470) = t1.
          DATA(t471) = t465.
          DATA(t472) = VALUE string( ).
          DATA(t473) = VALUE string( ).
          DATA(t474) = VALUE string( ).
          DATA t475 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t475.
          DATA t476 TYPE REF TO zif_lnt_structure.
          CLEAR t476.
          DATA(t477) = t375.
          t476 = t477->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
          t475 = t476->zlnt_builtin_clas_3f891b097658( ).
          t474 = t475->name.
          t473 = t474.
          DATA(t478) = VALUE string( ).
          DATA(t479) = |Empty block, add code: |.
          DATA(t480) = t473.
          DATA(t481) = strlen( t479 ).
          t478 = |{ t479 }{ t480 }|.
          t472 = t478.
          DATA(t482) = VALUE string( ).
          DATA t483 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t483.
          DATA(t484) = VALUE string( ).
          DATA(t485) = |empty_structure|.
          t484 = t485.
          DATA(t486) = VALUE string( ).
          DATA(t487) = |Find empty blocks|.
          t486 = t487.
          DATA(t488) = VALUE string( ).
          DATA(t489) = |Checks that the code does not contain empty blocks.|.
          t488 = t489.
          DATA t490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t490.
          DATA t491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t491.
          DATA(t492) = abap_true.
          IF t492 = abap_true.
            DATA(t493) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t493 = t493 && |nABAP.md#no-empty-if-branches|.
            DATA(t494) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t494->has = abap_true.
            t494->value = t493.
            t491 = t494.
          ELSE.
            DATA t495 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t495.
            t491 = t495.
          ENDIF.
          t490 = t491.
          DATA t496 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t496.
          DATA t497 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t497.
          DATA(t498) = abap_true.
          IF t498 = abap_true.
            DATA t499 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t499.
            DATA t500 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t500.
            DATA t501 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t501.
            CREATE OBJECT t501.
            t500 = t501.
            DATA(t502) = t500.
            DATA(t503) = |Styleguide|.
            t502->load( ).
            APPEND t503 TO t502->items.
            t502->save( ).
            DATA(t504) = t500.
            DATA(t505) = |SingleFile|.
            t504->load( ).
            APPEND t505 TO t504->items.
            t504->save( ).
            DATA(t506) = t500.
            t499 = t506.
            t497 = t499.
          ELSE.
            DATA t507 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t507.
            t497 = t507.
          ENDIF.
          t496 = t497.
          DATA t508 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t508.
          DATA t509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t509.
          DATA(t510) = abap_true.
          IF t510 = abap_true.
            DATA(t511) = |IF foo = bar.\nENDIF.\n\nDO 2 TIMES.\nENDDO.|.
            DATA(t512) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t512->has = abap_true.
            t512->value = t511.
            t509 = t512.
          ELSE.
            DATA t513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t513.
            t509 = t513.
          ENDIF.
          t508 = t509.
          DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t514.
          DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t515.
          DATA(t516) = abap_true.
          IF t516 = abap_true.
            DATA(t517) = |LOOP AT itab WHERE qty = 0 OR date > sy-datum.\nENDLOOP.\nresu|.
            t517 = t517 && |lt = xsdbool( sy-subrc = 0 ).|.
            DATA(t518) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t518->has = abap_true.
            t518->value = t517.
            t515 = t518.
          ELSE.
            DATA t519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t519.
            t515 = t519.
          ENDIF.
          t514 = t515.
          DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t520.
          DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t521.
          t520 = t521.
          DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t522.
          DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t523.
          t522 = t523.
          t483 = NEW zcl_lnt_irule_metadata( i_key = t484 i_title = t486 i_short_description = t488 i_bad_example = t508 i_good_example = t514 i_extended_information = t490 i_tags = t496 i_pragma = t520 i_pseudo_comment = t522 ).
          CREATE OBJECT t483->zlnt_view_ownkeys_b0e8086400eb.
          t483->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t524.
          IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t524 ).
          ENDIF.
          DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t525.
          IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t525 ).
          ENDIF.
          DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t526.
          IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t526 ).
          ENDIF.
          DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t527.
          IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t527 ).
          ENDIF.
          DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t528.
          IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t528 ).
          ENDIF.
          DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t529.
          IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t529 ).
          ENDIF.
          DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t530.
          IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t530 ).
          ENDIF.
          CREATE OBJECT t483->zlnt_json_ownkeys_70e5fd461788.
          t483->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t531) = |key|.
          DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t532.
          IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = t531 p1 = t532 ).
          ENDIF.
          DATA(t533) = |title|.
          DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t534.
          IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = t533 p1 = t534 ).
          ENDIF.
          DATA(t535) = |shortDescription|.
          DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t536.
          IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = t535 p1 = t536 ).
          ENDIF.
          DATA(t537) = |extendedInformation|.
          DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t538.
          IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = t537 p1 = t538 ).
          ENDIF.
          DATA(t539) = |tags|.
          DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t540.
          IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = t539 p1 = t540 ).
          ENDIF.
          DATA(t541) = |badExample|.
          DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t542.
          IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = t541 p1 = t542 ).
          ENDIF.
          DATA(t543) = |goodExample|.
          DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t544.
          IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = t543 p1 = t544 ).
          ENDIF.
          t482 = t483->key.
          DATA t545 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t545.
          DATA(t546) = me->conf.
          t545 = t546->zlnt_view_read_sr_15c06369f827( ).
          DATA t547 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t547.
          t469 = zcl_lnt_issue=>at_token( i_file = t470 i_token = t471 i_message_26cb = t472 i_key = t482 i_severity = t545 i_fix = t547 ).
          t468 = t469.
          DATA(t548) = t2.
          DATA(t549) = t468.
          t548->load( ).
          APPEND t549 TO t548->items.
          t548->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t550) = VALUE abap_bool( ).
    DATA(t551) = VALUE abap_bool( ).
    DATA(t552) = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) ).
    t551 = t552->zlnt_view_read_sr_05ad6227cfd0( ).
    DATA(t553) = abap_true.
    t550 = xsdbool( t551 = t553 ).
    IF t550 = abap_true.
      DATA t554 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t554.
      DATA t555 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t555.
      DATA t556 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t556.
      DATA t557 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t557.
      DATA t558 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t558.
      DATA(t559) = t4.
      t558 = t559.
      DATA(t560) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
      t557 = t558->find_all_structures_recursive( i_type_9913 = t560 ).
      DATA t561 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t561.
      DATA t562 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t562.
      DATA(t563) = t4.
      t562 = t563.
      DATA(t564) = zlnt_runtime_desc_78196487750d=>zlnt_member_d734_f05b24426da6.
      t561 = t562->find_all_structures_recursive( i_type_9913 = t564 ).
      t556 = t557->concat( p0 = t561 ).
      DATA t565 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t565.
      DATA t566 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t566.
      DATA(t567) = t4.
      t566 = t567.
      DATA(t568) = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
      t565 = t566->find_all_structures_recursive( i_type_9913 = t568 ).
      t555 = t556->concat( p0 = t565 ).
      t554 = t555.
      DATA(t569) = t554.
      DATA t570 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t570.
      DATA t571 TYPE REF TO object.
      CLEAR t571.
      DATA(t572) = VALUE i( ).
      DO.
        t569->load( ).
        IF t572 >= lines( t569->items ).
          EXIT.
        ENDIF.
        CLEAR t571.
        READ TABLE t569->items INDEX t572 + 1 INTO t571.
        t572 = t572 + 1.
        DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t573.
        CLEAR t570.
        IF t571 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t573 ?= t571.
          DATA t574 TYPE REF TO object.
          CLEAR t574.
          t574 = t573->as_ref( ).
          t570 ?= t574.
        ELSE.
          t570 ?= t571.
        ENDIF.
        DATA t575 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t575.
        DATA t576 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t576.
        DATA(t577) = t570.
        DATA(t578) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
        t576 = t577->find_direct_structure( i_type_9913 = t578 ).
        t575 = t576.
        DATA(t579) = VALUE abap_bool( ).
        DATA t580 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t580.
        DATA(t581) = t575.
        t580 = t581.
        DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t582.
        DATA t583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t583.
        t582 = t583.
        DATA(t584) = VALUE abap_bool( ).
        DATA(t585) = t580.
        IF t585 IS INITIAL.
          t584 = abap_true.
        ENDIF.
        t579 = t584.
        IF t579 = abap_true.
          DATA t586 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t586.
          DATA t587 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t587.
          DATA(t588) = t570.
          t587 = t588->get_first_token( ).
          t586 = t587.
          DATA t589 TYPE REF TO zcl_lnt_issue.
          CLEAR t589.
          DATA t590 TYPE REF TO zcl_lnt_issue.
          CLEAR t590.
          DATA(t591) = t1.
          DATA(t592) = t586.
          DATA(t593) = VALUE string( ).
          DATA(t594) = VALUE string( ).
          DATA(t595) = VALUE string( ).
          DATA t596 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t596.
          DATA t597 TYPE REF TO zif_lnt_structure.
          CLEAR t597.
          DATA(t598) = t570.
          t597 = t598->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
          t596 = t597->zlnt_builtin_clas_3f891b097658( ).
          t595 = t596->name.
          t594 = t595.
          DATA(t599) = VALUE string( ).
          DATA(t600) = |Empty block, add code: |.
          DATA(t601) = t594.
          DATA(t602) = strlen( t600 ).
          t599 = |{ t600 }{ t601 }|.
          t593 = t599.
          DATA(t603) = VALUE string( ).
          DATA t604 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t604.
          DATA(t605) = VALUE string( ).
          DATA(t606) = |empty_structure|.
          t605 = t606.
          DATA(t607) = VALUE string( ).
          DATA(t608) = |Find empty blocks|.
          t607 = t608.
          DATA(t609) = VALUE string( ).
          DATA(t610) = |Checks that the code does not contain empty blocks.|.
          t609 = t610.
          DATA t611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t611.
          DATA t612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t612.
          DATA(t613) = abap_true.
          IF t613 = abap_true.
            DATA(t614) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t614 = t614 && |nABAP.md#no-empty-if-branches|.
            DATA(t615) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t615->has = abap_true.
            t615->value = t614.
            t612 = t615.
          ELSE.
            DATA t616 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t616.
            t612 = t616.
          ENDIF.
          t611 = t612.
          DATA t617 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t617.
          DATA t618 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t618.
          DATA(t619) = abap_true.
          IF t619 = abap_true.
            DATA t620 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t620.
            DATA t621 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t621.
            DATA t622 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t622.
            CREATE OBJECT t622.
            t621 = t622.
            DATA(t623) = t621.
            DATA(t624) = |Styleguide|.
            t623->load( ).
            APPEND t624 TO t623->items.
            t623->save( ).
            DATA(t625) = t621.
            DATA(t626) = |SingleFile|.
            t625->load( ).
            APPEND t626 TO t625->items.
            t625->save( ).
            DATA(t627) = t621.
            t620 = t627.
            t618 = t620.
          ELSE.
            DATA t628 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t628.
            t618 = t628.
          ENDIF.
          t617 = t618.
          DATA t629 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t629.
          DATA t630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t630.
          DATA(t631) = abap_true.
          IF t631 = abap_true.
            DATA(t632) = |IF foo = bar.\nENDIF.\n\nDO 2 TIMES.\nENDDO.|.
            DATA(t633) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t633->has = abap_true.
            t633->value = t632.
            t630 = t633.
          ELSE.
            DATA t634 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t634.
            t630 = t634.
          ENDIF.
          t629 = t630.
          DATA t635 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t635.
          DATA t636 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t636.
          DATA(t637) = abap_true.
          IF t637 = abap_true.
            DATA(t638) = |LOOP AT itab WHERE qty = 0 OR date > sy-datum.\nENDLOOP.\nresu|.
            t638 = t638 && |lt = xsdbool( sy-subrc = 0 ).|.
            DATA(t639) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t639->has = abap_true.
            t639->value = t638.
            t636 = t639.
          ELSE.
            DATA t640 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t640.
            t636 = t640.
          ENDIF.
          t635 = t636.
          DATA t641 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t641.
          DATA t642 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t642.
          t641 = t642.
          DATA t643 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t643.
          DATA t644 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t644.
          t643 = t644.
          t604 = NEW zcl_lnt_irule_metadata( i_key = t605 i_title = t607 i_short_description = t609 i_bad_example = t629 i_good_example = t635 i_extended_information = t611 i_tags = t617 i_pragma = t641 i_pseudo_comment = t643 ).
          CREATE OBJECT t604->zlnt_view_ownkeys_b0e8086400eb.
          t604->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t645.
          IF t604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t645 ).
          ENDIF.
          DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t646.
          IF t604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t646 ).
          ENDIF.
          DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t647.
          IF t604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t647 ).
          ENDIF.
          DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t648.
          IF t604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t648 ).
          ENDIF.
          DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t649.
          IF t604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t649 ).
          ENDIF.
          DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t650.
          IF t604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t650 ).
          ENDIF.
          DATA t651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t651.
          IF t604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t651 ).
          ENDIF.
          CREATE OBJECT t604->zlnt_json_ownkeys_70e5fd461788.
          t604->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t652) = |key|.
          DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t653.
          IF t604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = t652 p1 = t653 ).
          ENDIF.
          DATA(t654) = |title|.
          DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t655.
          IF t604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = t654 p1 = t655 ).
          ENDIF.
          DATA(t656) = |shortDescription|.
          DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t657.
          IF t604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = t656 p1 = t657 ).
          ENDIF.
          DATA(t658) = |extendedInformation|.
          DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t659.
          IF t604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = t658 p1 = t659 ).
          ENDIF.
          DATA(t660) = |tags|.
          DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t661.
          IF t604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = t660 p1 = t661 ).
          ENDIF.
          DATA(t662) = |badExample|.
          DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t663.
          IF t604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = t662 p1 = t663 ).
          ENDIF.
          DATA(t664) = |goodExample|.
          DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t665.
          IF t604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = t664 p1 = t665 ).
          ENDIF.
          t603 = t604->key.
          DATA t666 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t666.
          DATA(t667) = me->conf.
          t666 = t667->zlnt_view_read_sr_15c06369f827( ).
          DATA t668 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t668.
          t590 = zcl_lnt_issue=>at_token( i_file = t591 i_token = t592 i_message_26cb = t593 i_key = t603 i_severity = t666 i_fix = t668 ).
          t589 = t590.
          DATA(t669) = t2.
          DATA(t670) = t589.
          t669->load( ).
          APPEND t670 TO t669->items.
          t669->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t671) = VALUE abap_bool( ).
    DATA(t672) = VALUE abap_bool( ).
    DATA(t673) = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) ).
    t672 = t673->zlnt_view_read_sr_54bebfc4c85f( ).
    DATA(t674) = abap_true.
    t671 = xsdbool( t672 = t674 ).
    IF t671 = abap_true.
      DATA t675 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t675.
      DATA t676 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t676.
      DATA t677 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t677.
      DATA(t678) = t4.
      t677 = t678.
      DATA(t679) = zlnt_runtime_desc_78196487750d=>zlnt_member_d708_dde8d9743472.
      t676 = t677->find_all_structures_recursive( i_type_9913 = t679 ).
      t675 = t676.
      DATA(t680) = t675.
      DATA t681 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t681.
      DATA t682 TYPE REF TO object.
      CLEAR t682.
      DATA(t683) = VALUE i( ).
      DO.
        t680->load( ).
        IF t683 >= lines( t680->items ).
          EXIT.
        ENDIF.
        CLEAR t682.
        READ TABLE t680->items INDEX t683 + 1 INTO t682.
        t683 = t683 + 1.
        DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t684.
        CLEAR t681.
        IF t682 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t684 ?= t682.
          DATA t685 TYPE REF TO object.
          CLEAR t685.
          t685 = t684->as_ref( ).
          t681 ?= t685.
        ELSE.
          t681 ?= t682.
        ENDIF.
        DATA(t686) = VALUE abap_bool( ).
        DATA(t687) = VALUE i( ).
        DATA t688 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t688.
        DATA t689 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t689.
        DATA t690 TYPE REF TO zcl_lnt_abstract_node.
        CLEAR t690.
        DATA(t691) = t681.
        t690 = t691.
        DATA t692 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t692.
        DATA(t693) = t690.
        t692 = t693->children.
        t689 = t692.
        t688 ?= t689.
        t688->load( ).
        t687 = lines( t688->items ).
        DATA(t694) = 1.
        t686 = xsdbool( t687 = t694 ).
        IF t686 = abap_true.
          DATA t695 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t695.
          DATA t696 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t696.
          DATA(t697) = t681.
          t696 = t697->get_first_token( ).
          t695 = t696.
          DATA(t698) = VALUE string( ).
          DATA(t699) = VALUE string( ).
          DATA(t700) = VALUE string( ).
          DATA(t701) = VALUE string( ).
          DATA t702 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t702.
          DATA t703 TYPE REF TO zif_lnt_structure.
          CLEAR t703.
          DATA(t704) = t681.
          t703 = t704->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
          t702 = t703->zlnt_builtin_clas_3f891b097658( ).
          t701 = t702->name.
          t700 = t701.
          DATA(t705) = VALUE string( ).
          DATA(t706) = |Empty block, add code: |.
          DATA(t707) = t700.
          DATA(t708) = strlen( t706 ).
          t705 = |{ t706 }{ t707 }|.
          t699 = t705.
          t698 = t699.
          DATA t709 TYPE REF TO zcl_lnt_issue.
          CLEAR t709.
          DATA t710 TYPE REF TO zcl_lnt_issue.
          CLEAR t710.
          DATA(t711) = t1.
          DATA(t712) = t695.
          DATA(t713) = t698.
          DATA(t714) = VALUE string( ).
          DATA t715 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t715.
          DATA(t716) = VALUE string( ).
          DATA(t717) = |empty_structure|.
          t716 = t717.
          DATA(t718) = VALUE string( ).
          DATA(t719) = |Find empty blocks|.
          t718 = t719.
          DATA(t720) = VALUE string( ).
          DATA(t721) = |Checks that the code does not contain empty blocks.|.
          t720 = t721.
          DATA t722 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t722.
          DATA t723 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t723.
          DATA(t724) = abap_true.
          IF t724 = abap_true.
            DATA(t725) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t725 = t725 && |nABAP.md#no-empty-if-branches|.
            DATA(t726) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t726->has = abap_true.
            t726->value = t725.
            t723 = t726.
          ELSE.
            DATA t727 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t727.
            t723 = t727.
          ENDIF.
          t722 = t723.
          DATA t728 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t728.
          DATA t729 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t729.
          DATA(t730) = abap_true.
          IF t730 = abap_true.
            DATA t731 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t731.
            DATA t732 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t732.
            DATA t733 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t733.
            CREATE OBJECT t733.
            t732 = t733.
            DATA(t734) = t732.
            DATA(t735) = |Styleguide|.
            t734->load( ).
            APPEND t735 TO t734->items.
            t734->save( ).
            DATA(t736) = t732.
            DATA(t737) = |SingleFile|.
            t736->load( ).
            APPEND t737 TO t736->items.
            t736->save( ).
            DATA(t738) = t732.
            t731 = t738.
            t729 = t731.
          ELSE.
            DATA t739 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t739.
            t729 = t739.
          ENDIF.
          t728 = t729.
          DATA t740 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t740.
          DATA t741 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t741.
          DATA(t742) = abap_true.
          IF t742 = abap_true.
            DATA(t743) = |IF foo = bar.\nENDIF.\n\nDO 2 TIMES.\nENDDO.|.
            DATA(t744) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t744->has = abap_true.
            t744->value = t743.
            t741 = t744.
          ELSE.
            DATA t745 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t745.
            t741 = t745.
          ENDIF.
          t740 = t741.
          DATA t746 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t746.
          DATA t747 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t747.
          DATA(t748) = abap_true.
          IF t748 = abap_true.
            DATA(t749) = |LOOP AT itab WHERE qty = 0 OR date > sy-datum.\nENDLOOP.\nresu|.
            t749 = t749 && |lt = xsdbool( sy-subrc = 0 ).|.
            DATA(t750) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t750->has = abap_true.
            t750->value = t749.
            t747 = t750.
          ELSE.
            DATA t751 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t751.
            t747 = t751.
          ENDIF.
          t746 = t747.
          DATA t752 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t752.
          DATA t753 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t753.
          t752 = t753.
          DATA t754 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t754.
          DATA t755 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t755.
          t754 = t755.
          t715 = NEW zcl_lnt_irule_metadata( i_key = t716 i_title = t718 i_short_description = t720 i_bad_example = t740 i_good_example = t746 i_extended_information = t722 i_tags = t728 i_pragma = t752 i_pseudo_comment = t754 ).
          CREATE OBJECT t715->zlnt_view_ownkeys_b0e8086400eb.
          t715->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t756.
          IF t715->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t715->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t756 ).
          ENDIF.
          DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t757.
          IF t715->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t715->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t757 ).
          ENDIF.
          DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t758.
          IF t715->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t715->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t758 ).
          ENDIF.
          DATA t759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t759.
          IF t715->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t715->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t759 ).
          ENDIF.
          DATA t760 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t760.
          IF t715->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t715->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t760 ).
          ENDIF.
          DATA t761 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t761.
          IF t715->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t715->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t761 ).
          ENDIF.
          DATA t762 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t762.
          IF t715->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t715->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t762 ).
          ENDIF.
          CREATE OBJECT t715->zlnt_json_ownkeys_70e5fd461788.
          t715->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t763) = |key|.
          DATA t764 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t764.
          IF t715->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t715->zlnt_json_ownkeys_70e5fd461788->put( p0 = t763 p1 = t764 ).
          ENDIF.
          DATA(t765) = |title|.
          DATA t766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t766.
          IF t715->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t715->zlnt_json_ownkeys_70e5fd461788->put( p0 = t765 p1 = t766 ).
          ENDIF.
          DATA(t767) = |shortDescription|.
          DATA t768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t768.
          IF t715->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t715->zlnt_json_ownkeys_70e5fd461788->put( p0 = t767 p1 = t768 ).
          ENDIF.
          DATA(t769) = |extendedInformation|.
          DATA t770 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t770.
          IF t715->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t715->zlnt_json_ownkeys_70e5fd461788->put( p0 = t769 p1 = t770 ).
          ENDIF.
          DATA(t771) = |tags|.
          DATA t772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t772.
          IF t715->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t715->zlnt_json_ownkeys_70e5fd461788->put( p0 = t771 p1 = t772 ).
          ENDIF.
          DATA(t773) = |badExample|.
          DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t774.
          IF t715->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t715->zlnt_json_ownkeys_70e5fd461788->put( p0 = t773 p1 = t774 ).
          ENDIF.
          DATA(t775) = |goodExample|.
          DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t776.
          IF t715->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t715->zlnt_json_ownkeys_70e5fd461788->put( p0 = t775 p1 = t776 ).
          ENDIF.
          t714 = t715->key.
          DATA t777 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t777.
          DATA(t778) = me->conf.
          t777 = t778->zlnt_view_read_sr_15c06369f827( ).
          DATA t779 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t779.
          t710 = zcl_lnt_issue=>at_token( i_file = t711 i_token = t712 i_message_26cb = t713 i_key = t714 i_severity = t777 i_fix = t779 ).
          t709 = t710.
          DATA(t780) = t2.
          DATA(t781) = t709.
          t780->load( ).
          APPEND t781 TO t780->items.
          t780->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t782) = t2.
    result = t782.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_empty_structure_conf( me->gt_cn_in_sr_rl_em_st_ts_em_str( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_empty_structure_conf.
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
        t1 = NEW zcl_lnt_empty_structure_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_em_st_ts_em_str( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_em_st_ts_em_str( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1496_37725c25a700.
  ENDMETHOD.
ENDCLASS.
