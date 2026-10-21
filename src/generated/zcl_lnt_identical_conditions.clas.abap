* TS: src/rules/identical_conditions.ts:31:1 IdenticalConditions
CLASS zcl_lnt_identical_conditions DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_idntcl_cndtns_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_id_cn_ts_id_cnd RETURNING VALUE(result) TYPE REF TO zcl_lnt_idntcl_cndtns_cnf.
    METHODS st_cn_in_sr_rl_id_cn_ts_id_cnd IMPORTING i_conf TYPE REF TO zcl_lnt_idntcl_cndtns_cnf.
    METHODS rn_pr_in_sr_rl_id_cn_ts_id_cnd IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze_cond IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze_if IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_node TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze_when IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_node TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_identical_conditions IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_idntcl_cndtns_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Find identical conditions in IF + CASE + WHILE etc\n\nPrerequs|.
    t7 = t7 && |ites: code is pretty printed with identical cAsE|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t21) = |IF foo = bar OR 1 = a OR foo = bar.\nENDIF.\nCASE bar.\n  WHEN |.
    t21 = t21 && |'1'.\n  WHEN 'A' OR '1'.\nENDCASE.|.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = t21.
    t18 = t22.
    DATA(t27) = |IF foo = bar OR 1 = a.\nENDIF.\nCASE bar.\n  WHEN '1'.\n  WHEN '|.
    t27 = t27 && |A'.\nENDCASE.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |identical_conditions| i_title = |Identical conditions| i_short_description = t6 i_bad_example = t18 i_good_example = t28 i_extended_information = t30 i_tags = t8 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t43 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t45 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_id_cn_ts_id_cnd.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_id_cn_ts_id_cnd.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_id_cn_ts_id_cnd.
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
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
    t18 = t19->find_all_structures( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_structure_node.
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
      t2 = t2->concat( p0 = me->analyze_if( i_file = t1 i_node = t22 ) ).
    ENDDO.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zcl_lnt_structure_node.
    t33 = t4.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d709_9d7d29fb0565.
    t32 = t33->find_all_structures( i_type_9913 = t35 ).
    DATA t36 TYPE REF TO zcl_lnt_structure_node.
    DATA t37 TYPE REF TO object.
    DATA(t38) = VALUE i( ).
    DO.
      t32->load( ).
      IF t38 >= lines( t32->items ).
        EXIT.
      ENDIF.
      CLEAR t37.
      READ TABLE t32->items INDEX t38 + 1 INTO t37.
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
      t2 = t2->concat( p0 = me->analyze_when( i_file = t1 i_node = t36 ) ).
    ENDDO.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zcl_lnt_structure_node.
    t47 = t4.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
    t46 = t47->find_all_expressions( i_type_9913 = t49 ).
    DATA t50 TYPE REF TO zcl_lnt_expression_node.
    DATA t51 TYPE REF TO object.
    DATA(t52) = VALUE i( ).
    DO.
      t46->load( ).
      IF t52 >= lines( t46->items ).
        EXIT.
      ENDIF.
      CLEAR t51.
      READ TABLE t46->items INDEX t52 + 1 INTO t51.
      t52 = t52 + 1.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      CLEAR t50.
      IF t51 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t53 ?= t51.
        DATA t54 TYPE REF TO object.
        t54 = t53->as_ref( ).
        t50 ?= t54.
      ELSE.
        t50 ?= t51.
      ENDIF.
      t2 = t2->concat( p0 = me->analyze_cond( i_file = t1 i_node = t50 ) ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD analyze_cond.
    DATA(t1) = i_file.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zcl_lnt_conditions.
    t3 = NEW zcl_lnt_conditions( ).
    DATA t5 TYPE string.
    t5 = ||.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zcl_lnt_abstract_node.
    t9 = t2.
    t7 ?= t9->children.
    DATA t13 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t14 TYPE REF TO object.
    DATA(t15) = VALUE i( ).
    DO.
      t7->load( ).
      IF t15 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t7->items INDEX t15 + 1 INTO t14.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t13.
      IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t14.
        DATA t17 TYPE REF TO object.
        t17 = t16->as_ref( ).
        t13 ?= t17.
      ELSE.
        t13 ?= t14.
      ENDIF.
      IF xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_expression_node ) = abap_true.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        t23 ?= t13.
        DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t26 = t3->arr.
        DATA t28 TYPE string.
        t28 = t23->concat_tokens( ).
        t26->load( ).
        APPEND t28 TO t26->items.
        t26->save( ).
      ELSE.
        IF xsdbool( t5 = || ) = abap_true.
          DATA t33 TYPE string.
          DATA t34 TYPE string.
          DATA t37 TYPE REF TO zcl_lnt_token_node.
          t37 ?= t13.
          t34 = t37->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->str.
          DATA(t42) = strlen( t34 ).
          t33 = t34.
          IF t33 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t33 TO UPPER CASE.
          ELSE.
            t33 = zlnt_runtime_uppe_91169605024d=>full( t33 ).
          ENDIF.
          t5 = t33.
        ELSE.
          DATA t45 TYPE string.
          DATA t46 TYPE string.
          DATA t49 TYPE REF TO zcl_lnt_token_node.
          t49 ?= t13.
          t46 = t49->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->str.
          DATA(t54) = strlen( t46 ).
          t45 = t46.
          IF t45 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t45 TO UPPER CASE.
          ELSE.
            t45 = zlnt_runtime_uppe_91169605024d=>full( t45 ).
          ENDIF.
          IF xsdbool( t5 <> t45 ) = abap_true.
            CREATE OBJECT result.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t56 = t3->find_first_duplicate( ).
    DATA(t59) = VALUE abap_bool( ).
    IF t56 IS BOUND.
      IF t56->has = abap_true.
        t59 = xsdbool( strlen( t56->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t59 = abap_true.
      DATA t62 TYPE string.
      DATA(t63) = |Identical conditions: |.
      DATA t64 TYPE string.
      t64 = t56->value.
      DATA(t66) = strlen( t63 ).
      t62 = |{ t63 }{ t64 }|.
      DATA t68 TYPE REF TO zcl_lnt_issue.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      t70 = t2->get_first_token( ).
      DATA(t73) = VALUE string( ).
      DATA t74 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t79 TYPE string.
      DATA(t80) = |Find identical conditions in IF + CASE + WHILE etc\n\nPrerequs|.
      t80 = t80 && |ites: code is pretty printed with identical cAsE|.
      t79 = t80.
      DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t85.
      t85->load( ).
      APPEND |SingleFile| TO t85->items.
      t85->save( ).
      t81 = t85.
      DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t94) = |IF foo = bar OR 1 = a OR foo = bar.\nENDIF.\nCASE bar.\n  WHEN |.
      t94 = t94 && |'1'.\n  WHEN 'A' OR '1'.\nENDCASE.|.
      DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t95->has = abap_true.
      t95->value = t94.
      t91 = t95.
      DATA(t100) = |IF foo = bar OR 1 = a.\nENDIF.\nCASE bar.\n  WHEN '1'.\n  WHEN '|.
      t100 = t100 && |A'.\nENDCASE.|.
      DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t101->has = abap_true.
      t101->value = t100.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t74 = NEW zcl_lnt_irule_metadata( i_key = |identical_conditions| i_title = |Identical conditions| i_short_description = t79 i_bad_example = t91 i_good_example = t101 i_extended_information = t103 i_tags = t81 i_pragma = t105 i_pseudo_comment = t107 ).
      CREATE OBJECT t74->zlnt_view_ownkeys_b0e8086400eb.
      t74->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t109 ).
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t110 ).
      ENDIF.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t111 ).
      ENDIF.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t112 ).
      ENDIF.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t113 ).
      ENDIF.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t114 ).
      ENDIF.
      CREATE OBJECT t74->zlnt_json_ownkeys_70e5fd461788.
      t74->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t116 ).
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t118 ).
      ENDIF.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t120 ).
      ENDIF.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t122 ).
      ENDIF.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t124 ).
      ENDIF.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t126 ).
      ENDIF.
      t73 = t74->key.
      DATA t129 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t68 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t70 i_message_26cb = t62 i_key = t73 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t129 ).
      DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t131.
      t131->load( ).
      APPEND t68 TO t131->items.
      t131->save( ).
      result = t131.
      RETURN.
    ENDIF.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD analyze_if.
    DATA(t1) = i_file.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zcl_lnt_conditions.
    t3 = NEW zcl_lnt_conditions( ).
    DATA t5 TYPE REF TO zcl_lnt_statement_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d525_ab3a9a5b3f8b.
    t5 = t2->find_direct_statement( i_type_9913 = t8 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      DATA t16 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t17 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = |identical_conditions, no IF found|.
      t17 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t21 ).
      t16 = NEW #( ).
      t16->payload = t17.
      CLEAR t16->source_value.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t24 TYPE REF TO object.
      t24 = t17.
      TRY.
          t16->source_value ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16->source_value IS NOT BOUND.
        TRY.
            t23 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t16->source_value = t23->source( ).
        ENDIF.
        IF t16->source_value IS NOT BOUND.
          CREATE OBJECT t16->source_value.
          t16->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->source_value->oval = t17.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t16.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA t27 TYPE REF TO zcl_lnt_statement_node.
    t27 = t5.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t27 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
      t30 = t27->find_direct_expression( i_type_9913 = t36 ).
    ENDIF.
    t25 = t30.
    IF xsdbool( t25 IS BOUND ) = abap_true.
      DATA t44 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t44 = t3->arr.
      DATA(t46) = VALUE string( ).
      t46 = t25->concat_tokens( ).
      t44->load( ).
      APPEND t46 TO t44->items.
      t44->save( ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
    t48 = t2->find_direct_structures( i_type_9913 = t50 ).
    DATA t51 TYPE REF TO zcl_lnt_structure_node.
    DATA t52 TYPE REF TO object.
    DATA(t53) = VALUE i( ).
    DO.
      t48->load( ).
      IF t53 >= lines( t48->items ).
        EXIT.
      ENDIF.
      CLEAR t52.
      READ TABLE t48->items INDEX t53 + 1 INTO t52.
      t53 = t53 + 1.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      CLEAR t51.
      IF t52 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t54 ?= t52.
        DATA t55 TYPE REF TO object.
        t55 = t54->as_ref( ).
        t51 ?= t55.
      ELSE.
        t51 ?= t52.
      ENDIF.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t56.
      DATA t58 TYPE REF TO zcl_lnt_statement_node.
      DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d457_9791cc858be9.
      t58 = t51->find_direct_statement( i_type_9913 = t61 ).
      DATA t62 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t62.
      IF xsdbool( t58 IS INITIAL ) = abap_true.
        CLEAR t62.
      ELSE.
        DATA t67 TYPE REF TO zcl_lnt_statement_node.
        t67 = t58.
        DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
        t62 = t67->find_direct_expression( i_type_9913 = t69 ).
      ENDIF.
      t56 = t62.
      IF xsdbool( t56 IS BOUND ) = abap_true.
        DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t77 = t3->arr.
        DATA(t79) = VALUE string( ).
        t79 = t56->concat_tokens( ).
        t77->load( ).
        APPEND t79 TO t77->items.
        t77->save( ).
      ENDIF.
    ENDDO.
    DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t81 = t3->find_first_duplicate( ).
    DATA(t84) = VALUE abap_bool( ).
    IF t81 IS BOUND.
      IF t81->has = abap_true.
        t84 = xsdbool( strlen( t81->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t84 = abap_true.
      DATA(t86) = VALUE string( ).
      DATA(t88) = |Identical conditions: |.
      DATA(t89) = VALUE string( ).
      t89 = t81->value.
      DATA(t91) = strlen( t88 ).
      t86 = |{ t88 }{ t89 }|.
      DATA t93 TYPE REF TO zcl_lnt_issue.
      DATA t95 TYPE REF TO zcl_lnt_statement_node.
      t95 = t5.
      DATA(t98) = VALUE string( ).
      DATA t99 TYPE REF TO zcl_lnt_irule_metadata.
      DATA(t104) = VALUE string( ).
      DATA(t105) = |Find identical conditions in IF + CASE + WHILE etc\n\nPrerequs|.
      t105 = t105 && |ites: code is pretty printed with identical cAsE|.
      t104 = t105.
      DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t110.
      t110->load( ).
      APPEND |SingleFile| TO t110->items.
      t110->save( ).
      t106 = t110.
      DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t119) = |IF foo = bar OR 1 = a OR foo = bar.\nENDIF.\nCASE bar.\n  WHEN |.
      t119 = t119 && |'1'.\n  WHEN 'A' OR '1'.\nENDCASE.|.
      DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t120->has = abap_true.
      t120->value = t119.
      t116 = t120.
      DATA(t125) = |IF foo = bar OR 1 = a.\nENDIF.\nCASE bar.\n  WHEN '1'.\n  WHEN '|.
      t125 = t125 && |A'.\nENDCASE.|.
      DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t126->has = abap_true.
      t126->value = t125.
      DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t99 = NEW zcl_lnt_irule_metadata( i_key = |identical_conditions| i_title = |Identical conditions| i_short_description = t104 i_bad_example = t116 i_good_example = t126 i_extended_information = t128 i_tags = t106 i_pragma = t130 i_pseudo_comment = t132 ).
      CREATE OBJECT t99->zlnt_view_ownkeys_b0e8086400eb.
      t99->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t134 ).
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t135 ).
      ENDIF.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t136 ).
      ENDIF.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t137 ).
      ENDIF.
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t138 ).
      ENDIF.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t139 ).
      ENDIF.
      CREATE OBJECT t99->zlnt_json_ownkeys_70e5fd461788.
      t99->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t141 ).
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t143 ).
      ENDIF.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t145 ).
      ENDIF.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t147 ).
      ENDIF.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t149 ).
      ENDIF.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t151 ).
      ENDIF.
      t98 = t99->key.
      DATA t154 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t93 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t95 i_message_26cb = t86 i_key = t98 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t154 i_alternative_fixes = t155 ).
      DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t157.
      t157->load( ).
      APPEND t93 TO t157->items.
      t157->save( ).
      result = t157.
      RETURN.
    ENDIF.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD analyze_when.
    DATA(t1) = i_file.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zcl_lnt_conditions.
    t3 = NEW zcl_lnt_conditions( ).
    DATA t5 TYPE REF TO zcl_lnt_statement_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d400_37d69a21ca3a.
    t5 = t2->find_direct_statement( i_type_9913 = t8 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      DATA t16 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t17 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = |identical_conditions, no CASE found|.
      t17 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t21 ).
      t16 = NEW #( ).
      t16->payload = t17.
      CLEAR t16->source_value.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t24 TYPE REF TO object.
      t24 = t17.
      TRY.
          t16->source_value ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16->source_value IS NOT BOUND.
        TRY.
            t23 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t16->source_value = t23->source( ).
        ENDIF.
        IF t16->source_value IS NOT BOUND.
          CREATE OBJECT t16->source_value.
          t16->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->source_value->oval = t17.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t16.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d708_dde8d9743472.
    t25 = t2->find_direct_structures( i_type_9913 = t27 ).
    DATA t28 TYPE REF TO zcl_lnt_structure_node.
    DATA t29 TYPE REF TO object.
    DATA(t30) = VALUE i( ).
    DO.
      t25->load( ).
      IF t30 >= lines( t25->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t25->items INDEX t30 + 1 INTO t29.
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
      DATA t33 TYPE REF TO zcl_lnt_statement_node.
      DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d679_3af40033658c.
      t33 = t28->find_direct_statement( i_type_9913 = t36 ).
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      CLEAR t40.
      IF xsdbool( t33 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t44.
      DATA t45 TYPE REF TO zcl_lnt_statement_node.
      t45 = t33.
      DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t44 = t45->find_all_expressions( i_type_9913 = t47 ).
      DATA t48 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t48.
      DATA t49 TYPE REF TO object.
      CLEAR t49.
      DATA(t50) = VALUE i( ).
      DO.
        t44->load( ).
        IF t50 >= lines( t44->items ).
          EXIT.
        ENDIF.
        CLEAR t49.
        READ TABLE t44->items INDEX t50 + 1 INTO t49.
        t50 = t50 + 1.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        CLEAR t48.
        IF t49 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t51 ?= t49.
          DATA t52 TYPE REF TO object.
          t52 = t51->as_ref( ).
          t48 ?= t52.
        ELSE.
          t48 ?= t49.
        ENDIF.
        DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t57 = t3->arr.
        DATA(t59) = VALUE string( ).
        t59 = t48->concat_tokens( ).
        t57->load( ).
        APPEND t59 TO t57->items.
        t57->save( ).
      ENDDO.
    ENDDO.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t61 = t3->find_first_duplicate( ).
    DATA(t64) = VALUE abap_bool( ).
    IF t61 IS BOUND.
      IF t61->has = abap_true.
        t64 = xsdbool( strlen( t61->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t64 = abap_true.
      DATA(t66) = VALUE string( ).
      DATA(t68) = |Identical conditions: |.
      DATA(t69) = VALUE string( ).
      t69 = t61->value.
      DATA(t71) = strlen( t68 ).
      t66 = |{ t68 }{ t69 }|.
      DATA t73 TYPE REF TO zcl_lnt_issue.
      DATA t75 TYPE REF TO zcl_lnt_statement_node.
      t75 = t5.
      DATA(t78) = VALUE string( ).
      DATA t79 TYPE REF TO zcl_lnt_irule_metadata.
      DATA(t84) = VALUE string( ).
      DATA(t85) = |Find identical conditions in IF + CASE + WHILE etc\n\nPrerequs|.
      t85 = t85 && |ites: code is pretty printed with identical cAsE|.
      t84 = t85.
      DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t90.
      t90->load( ).
      APPEND |SingleFile| TO t90->items.
      t90->save( ).
      t86 = t90.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t99) = |IF foo = bar OR 1 = a OR foo = bar.\nENDIF.\nCASE bar.\n  WHEN |.
      t99 = t99 && |'1'.\n  WHEN 'A' OR '1'.\nENDCASE.|.
      DATA(t100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t100->has = abap_true.
      t100->value = t99.
      t96 = t100.
      DATA(t105) = |IF foo = bar OR 1 = a.\nENDIF.\nCASE bar.\n  WHEN '1'.\n  WHEN '|.
      t105 = t105 && |A'.\nENDCASE.|.
      DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t106->has = abap_true.
      t106->value = t105.
      DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t79 = NEW zcl_lnt_irule_metadata( i_key = |identical_conditions| i_title = |Identical conditions| i_short_description = t84 i_bad_example = t96 i_good_example = t106 i_extended_information = t108 i_tags = t86 i_pragma = t110 i_pseudo_comment = t112 ).
      CREATE OBJECT t79->zlnt_view_ownkeys_b0e8086400eb.
      t79->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t114 ).
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t115 ).
      ENDIF.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t116 ).
      ENDIF.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t117 ).
      ENDIF.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t118 ).
      ENDIF.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t119 ).
      ENDIF.
      CREATE OBJECT t79->zlnt_json_ownkeys_70e5fd461788.
      t79->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t121 ).
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t123 ).
      ENDIF.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t125 ).
      ENDIF.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t127 ).
      ENDIF.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t129 ).
      ENDIF.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t131 ).
      ENDIF.
      t78 = t79->key.
      DATA t134 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t73 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t75 i_message_26cb = t66 i_key = t78 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t134 i_alternative_fixes = t135 ).
      DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t137.
      t137->load( ).
      APPEND t73 TO t137->items.
      t137->save( ).
      result = t137.
      RETURN.
    ENDIF.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_idntcl_cndtns_cnf( me->gt_cn_in_sr_rl_id_cn_ts_id_cnd( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_idntcl_cndtns_cnf( me->gt_cn_in_sr_rl_id_cn_ts_id_cnd( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_idntcl_cndtns_cnf.
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
        t1 = NEW zcl_lnt_idntcl_cndtns_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_id_cn_ts_id_cnd( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_id_cn_ts_id_cnd( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1525_7fef5c971c7c.
  ENDMETHOD.
ENDCLASS.
