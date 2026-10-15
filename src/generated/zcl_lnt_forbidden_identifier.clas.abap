* TS: src/rules/forbidden_identifier.ts:17:1 ForbiddenIdentifier
CLASS zcl_lnt_forbidden_identifier DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_frbddn_idntfr_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_fr_id_ts_fr_idn RETURNING VALUE(result) TYPE REF TO zcl_lnt_frbddn_idntfr_cnf.
    METHODS st_cn_in_sr_rl_fr_id_ts_fr_idn IMPORTING i_conf TYPE REF TO zcl_lnt_frbddn_idntfr_cnf.
    METHODS rn_pr_in_sr_rl_fr_id_ts_fr_idn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_bf6e IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_forbidden_identifier IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_frbddn_idntfr_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |forbidden_identifier|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Forbidden Identifier|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Forbid use of specified identifiers, list of regex.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Used in the transpiler to find javascript keywords in ABAP i|.
      t11 = t11 && |dentifiers,\nhttps://github.com/abaplint/transpiler/blob/bda9|.
      t11 = t11 && |4b8b56e2b7f2f87be2168f12361aa530220e/packages/transpiler/src|.
      t11 = t11 && |/validation.ts#L44|.
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
      DATA(t21) = |SingleFile|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
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
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t14 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |extendedInformation|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |tags|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_fr_id_ts_fr_idn.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_fr_id_ts_fr_idn.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_6120f6e2490c( ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t4.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t3 = t9.
    IF t3 = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11->zlnt_view_write_s_c44fd5c5d977( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_fr_id_ts_fr_idn.
    DATA(t1) = i_file.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE i.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t5) = me->conf.
    t4 = t5->zlnt_view_read_sr_6120f6e2490c( ).
    t4->load( ).
    t3 = lines( t4->items ).
    DATA(t6) = 0.
    t2 = xsdbool( t3 = t6 ).
    IF t2 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t7.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_abap_file.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = t11.
    t13 = t14->statements.
    t10 = t13.
    DATA t15 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t15.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
    DATA(t17) = VALUE i( ).
    DO.
      t10->load( ).
      IF t17 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t10->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t21) = t8.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t23) = t15.
      DATA(t24) = t1.
      t22 = me->traverse( i_node = t23 i_file = t24 ).
      t20 = t21->concat( p0 = t22 ).
      t8 = t20.
    ENDDO.
    DATA(t25) = t8.
    result = t25.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    t5 = t6->get_children( ).
    DATA t7 TYPE REF TO zif_lnt_node.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    DATA(t9) = VALUE i( ).
    DO.
      t5->load( ).
      IF t9 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t5->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t7.
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_token_node_regex ).
      IF t12 = abap_true.
        DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t15) = t3.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        DATA t18 TYPE REF TO object.
        DATA t19 TYPE REF TO zcl_lnt_token_node_regex.
        DATA(t20) = t7.
        DATA t21 TYPE REF TO object.
        t21 = t20.
        t19 ?= t21.
        t18 = t19->get_db65( ).
        t17 ?= t18.
        DATA(t22) = t2.
        t16 = me->check_bf6e( i_token = t17 i_file = t22 ).
        t14 = t15->concat( p0 = t16 ).
        t3 = t14.
      ELSE.
        DATA t23 TYPE abap_bool.
        DATA(t24) = t7.
        t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_token_node ).
        IF t23 = abap_true.
          CONTINUE.
        ELSE.
          DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t26) = t3.
          DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t28) = t7.
          DATA(t29) = t2.
          t27 = me->traverse( i_node = t28 i_file = t29 ).
          t25 = t26->concat( p0 = t27 ).
          t3 = t25.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t30) = t3.
    result = t30.

  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_token.
    DATA(t2) = i_file.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE string.
    DATA(t8) = t5.
    t7 = t8->str.
    t4 = t7.
    t3 = t4.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t12) = me->conf.
    t11 = t12->zlnt_view_read_sr_6120f6e2490c( ).
    DATA(t13) = VALUE string( ).
    t11->dense( ).
    DATA(t14) = VALUE i( ).
    DO.
      t11->load( ).
      IF t14 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t11->items INDEX t14 + 1 INTO t13.
      IF t11->has( t14 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t16 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t16.
      DATA(t17) = t13.
      DATA(t18) = |i|.
      CREATE OBJECT t16 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t17 flags = t18.
      t15 = t16.
      DATA t19 TYPE abap_bool.
      DATA(t20) = t15.
      DATA(t21) = t3.
      t19 = t20->test( p0 = t21 ).
      IF t19 = abap_true.
        DATA t22 TYPE string.
        DATA t23 TYPE string.
        DATA t24 TYPE string.
        DATA(t25) = |Identifer "|.
        DATA(t26) = t3.
        DATA(t27) = strlen( t25 ).
        t24 = |{ t25 }{ t26 }|.
        DATA(t28) = |" not allowed|.
        DATA(t29) = strlen( t24 ).
        t23 = |{ t24 }{ t28 }|.
        t22 = t23.
        DATA(t30) = t9.
        DATA t31 TYPE REF TO zcl_lnt_issue.
        CLEAR t31.
        DATA(t32) = t2.
        DATA(t33) = t1.
        DATA(t34) = t22.
        DATA(t35) = VALUE string( ).
        DATA t36 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t36.
        DATA t37 TYPE string.
        DATA(t38) = |forbidden_identifier|.
        t37 = t38.
        DATA t39 TYPE string.
        DATA(t40) = |Forbidden Identifier|.
        t39 = t40.
        DATA t41 TYPE string.
        DATA(t42) = |Forbid use of specified identifiers, list of regex.|.
        t41 = t42.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA(t45) = abap_true.
        IF t45 = abap_true.
          DATA(t46) = |Used in the transpiler to find javascript keywords in ABAP i|.
          t46 = t46 && |dentifiers,\nhttps://github.com/abaplint/transpiler/blob/bda9|.
          t46 = t46 && |4b8b56e2b7f2f87be2168f12361aa530220e/packages/transpiler/src|.
          t46 = t46 && |/validation.ts#L44|.
          DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t47->has = abap_true.
          t47->value = t46.
          t44 = t47.
        ELSE.
          DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t48.
          t44 = t48.
        ENDIF.
        t43 = t44.
        DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t49.
        DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t50.
        DATA(t51) = abap_true.
        IF t51 = abap_true.
          DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t54.
          t53 = t54.
          DATA(t55) = t53.
          DATA(t56) = |SingleFile|.
          t55->load( ).
          APPEND t56 TO t55->items.
          t55->save( ).
          DATA(t57) = t53.
          t52 = t57.
          t50 = t52.
        ELSE.
          DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t58.
          t50 = t58.
        ENDIF.
        t49 = t50.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        t59 = t60.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        t61 = t62.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t64.
        t63 = t64.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        t65 = t66.
        t36 = NEW zcl_lnt_irule_metadata( i_key = t37 i_title = t39 i_short_description = t41 i_bad_example = t59 i_good_example = t61 i_extended_information = t43 i_tags = t49 i_pragma = t63 i_pseudo_comment = t65 ).
        CREATE OBJECT t36->zlnt_view_ownkeys_b0e8086400eb.
        t36->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t67 ).
        ENDIF.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t68 ).
        ENDIF.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t69 ).
        ENDIF.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t70 ).
        ENDIF.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t71 ).
        ENDIF.
        CREATE OBJECT t36->zlnt_json_ownkeys_70e5fd461788.
        t36->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t72) = |key|.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
        ENDIF.
        DATA(t74) = |title|.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
        ENDIF.
        DATA(t76) = |shortDescription|.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t76 p1 = t77 ).
        ENDIF.
        DATA(t78) = |extendedInformation|.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
        ENDIF.
        DATA(t80) = |tags|.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
        ENDIF.
        t35 = t36->key.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t83) = me->conf.
        t82 = t83->zlnt_view_read_sr_15c06369f827( ).
        DATA t84 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t84.
        t31 = zcl_lnt_issue=>at_token( i_file = t32 i_token = t33 i_message_26cb = t34 i_key = t35 i_severity = t82 i_fix = t84 ).
        t30->load( ).
        APPEND t31 TO t30->items.
        t30->save( ).
      ENDIF.
    ENDDO.
    DATA(t85) = t9.
    result = t85.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_frbddn_idntfr_cnf( me->gt_cn_in_sr_rl_fr_id_ts_fr_idn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_frbddn_idntfr_cnf( me->gt_cn_in_sr_rl_fr_id_ts_fr_idn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_frbddn_idntfr_cnf.
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
        t1 = NEW zcl_lnt_frbddn_idntfr_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_fr_id_ts_fr_idn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_fr_id_ts_fr_idn( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1506_3ad9b6fd14bd.
  ENDMETHOD.
ENDCLASS.
