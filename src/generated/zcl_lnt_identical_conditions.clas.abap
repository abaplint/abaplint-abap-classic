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
    DATA(t1) = NEW zcl_lnt_idntcl_cndtns_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |identical_conditions|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Identical conditions|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Find identical conditions in IF + CASE + WHILE etc\n\nPrerequs|.
    t7 = t7 && |ites: code is pretty printed with identical cAsE|.
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
      DATA(t15) = |SingleFile|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      t11 = t16.
      t9 = t11.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t17.
      t9 = t17.
    ENDIF.
    t8 = t9.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = |IF foo = bar OR 1 = a OR foo = bar.\nENDIF.\nCASE bar.\n  WHEN |.
      t21 = t21 && |'1'.\n  WHEN 'A' OR '1'.\nENDCASE.|.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t21.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t19 = t23.
    ENDIF.
    t18 = t19.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |IF foo = bar OR 1 = a.\nENDIF.\nCASE bar.\n  WHEN '1'.\n  WHEN '|.
      t27 = t27 && |A'.\nENDCASE.|.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t25 = t29.
    ENDIF.
    t24 = t25.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t24 i_extended_information = t30 i_tags = t8 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t42) = |key|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA(t44) = |title|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |shortDescription|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |tags|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |badExample|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |goodExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_id_cn_ts_id_cnd.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_id_cn_ts_id_cnd.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_id_cn_ts_id_cnd.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t9) = t6.
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = t4.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    DATA(t20) = t4.
    t19 = t20.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
    t18 = t19->find_all_structures( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
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
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t28) = t2.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t30) = t1.
      DATA(t31) = t22.
      t29 = me->analyze_if( i_file = t30 i_node = t31 ).
      t27 = t28->concat( p0 = t29 ).
      t2 = t27.
    ENDDO.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zcl_lnt_structure_node.
    DATA(t34) = t4.
    t33 = t34.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d709_9d7d29fb0565.
    t32 = t33->find_all_structures( i_type_9913 = t35 ).
    DATA t36 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t36.
    DATA t37 TYPE REF TO object.
    CLEAR t37.
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
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t42) = t2.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t44) = t1.
      DATA(t45) = t36.
      t43 = me->analyze_when( i_file = t44 i_node = t45 ).
      t41 = t42->concat( p0 = t43 ).
      t2 = t41.
    ENDDO.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zcl_lnt_structure_node.
    DATA(t48) = t4.
    t47 = t48.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
    t46 = t47->find_all_expressions( i_type_9913 = t49 ).
    DATA t50 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t50.
    DATA t51 TYPE REF TO object.
    CLEAR t51.
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
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t56) = t2.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t58) = t1.
      DATA(t59) = t50.
      t57 = me->analyze_cond( i_file = t58 i_node = t59 ).
      t55 = t56->concat( p0 = t57 ).
      t2 = t55.
    ENDDO.
    DATA(t60) = t2.
    result = t60.

  ENDMETHOD.

  METHOD analyze_cond.
    DATA(t1) = i_file.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zcl_lnt_conditions.
    DATA(t4) = NEW zcl_lnt_conditions( ).
    t3 = t4.
    DATA t5 TYPE string.
    DATA(t6) = ||.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t10) = t2.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = t9.
    t11 = t12->children.
    t8 = t11.
    t7 ?= t8.
    DATA t13 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t13.
    DATA t14 TYPE REF TO object.
    CLEAR t14.
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
      DATA t18 TYPE abap_bool.
      DATA(t19) = t13.
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_expression_node ).
      IF t18 = abap_true.
        DATA t20 TYPE REF TO zcl_lnt_conditions.
        DATA(t21) = t3.
        t20 = t21.
        DATA t22 TYPE REF TO zcl_lnt_expression_node.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        DATA(t24) = t13.
        DATA t25 TYPE REF TO object.
        t25 = t24.
        t23 ?= t25.
        t22 = t23.
        DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t27) = t20.
        t26 = t27->arr.
        DATA t28 TYPE string.
        DATA(t29) = t22.
        t28 = t29->concat_tokens( ).
        t26->load( ).
        APPEND t28 TO t26->items.
        t26->save( ).
      ELSE.
        DATA t30 TYPE abap_bool.
        DATA(t31) = t5.
        DATA(t32) = ||.
        t30 = xsdbool( t31 = t32 ).
        IF t30 = abap_true.
          DATA t33 TYPE string.
          DATA t34 TYPE string.
          DATA t35 TYPE REF TO zcl_lnt_abstract_token.
          DATA t36 TYPE REF TO zcl_lnt_abstract_token.
          DATA t37 TYPE REF TO zcl_lnt_token_node.
          DATA(t38) = t13.
          DATA t39 TYPE REF TO object.
          t39 = t38.
          t37 ?= t39.
          t36 = t37->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
          t35 = t36.
          DATA t40 TYPE string.
          DATA(t41) = t35.
          t40 = t41->str.
          t34 = t40.
          DATA(t42) = strlen( t34 ).
          t33 = t34.
          IF t33 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t33 TO UPPER CASE.
          ELSE.
            t33 = zlnt_runtime_uppe_91169605024d=>full( t33 ).
          ENDIF.
          t5 = t33.
        ELSE.
          DATA(t43) = VALUE abap_bool( ).
          DATA(t44) = t5.
          DATA t45 TYPE string.
          DATA t46 TYPE string.
          DATA t47 TYPE REF TO zcl_lnt_abstract_token.
          DATA t48 TYPE REF TO zcl_lnt_abstract_token.
          DATA t49 TYPE REF TO zcl_lnt_token_node.
          DATA(t50) = t13.
          DATA t51 TYPE REF TO object.
          t51 = t50.
          t49 ?= t51.
          t48 = t49->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
          t47 = t48.
          DATA t52 TYPE string.
          DATA(t53) = t47.
          t52 = t53->str.
          t46 = t52.
          DATA(t54) = strlen( t46 ).
          t45 = t46.
          IF t45 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t45 TO UPPER CASE.
          ELSE.
            t45 = zlnt_runtime_uppe_91169605024d=>full( t45 ).
          ENDIF.
          t43 = xsdbool( t44 <> t45 ).
          IF t43 = abap_true.
            DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t55.
            result = t55.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t58) = t3.
    t57 = t58->find_first_duplicate( ).
    t56 = t57.
    DATA(t59) = VALUE abap_bool( ).
    DATA(t60) = t56.
    IF t60 IS BOUND.
      IF t60->has = abap_true.
        t59 = xsdbool( strlen( t60->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t59 = abap_true.
      DATA t61 TYPE string.
      DATA t62 TYPE string.
      DATA(t63) = |Identical conditions: |.
      DATA t64 TYPE string.
      DATA(t65) = t56.
      t64 = t65->value.
      DATA(t66) = strlen( t63 ).
      t62 = |{ t63 }{ t64 }|.
      t61 = t62.
      DATA t67 TYPE REF TO zcl_lnt_issue.
      CLEAR t67.
      DATA t68 TYPE REF TO zcl_lnt_issue.
      CLEAR t68.
      DATA(t69) = t1.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t71) = t2.
      t70 = t71->get_first_token( ).
      DATA(t72) = t61.
      DATA(t73) = VALUE string( ).
      DATA t74 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t74.
      DATA t75 TYPE string.
      DATA(t76) = |identical_conditions|.
      t75 = t76.
      DATA t77 TYPE string.
      DATA(t78) = |Identical conditions|.
      t77 = t78.
      DATA t79 TYPE string.
      DATA(t80) = |Find identical conditions in IF + CASE + WHILE etc\n\nPrerequs|.
      t80 = t80 && |ites: code is pretty printed with identical cAsE|.
      t79 = t80.
      DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t81.
      DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t82.
      DATA(t83) = abap_true.
      IF t83 = abap_true.
        DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t86.
        t85 = t86.
        DATA(t87) = t85.
        DATA(t88) = |SingleFile|.
        t87->load( ).
        APPEND t88 TO t87->items.
        t87->save( ).
        DATA(t89) = t85.
        t84 = t89.
        t82 = t84.
      ELSE.
        DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t90.
        t82 = t90.
      ENDIF.
      t81 = t82.
      DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t91.
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t92.
      DATA(t93) = abap_true.
      IF t93 = abap_true.
        DATA(t94) = |IF foo = bar OR 1 = a OR foo = bar.\nENDIF.\nCASE bar.\n  WHEN |.
        t94 = t94 && |'1'.\n  WHEN 'A' OR '1'.\nENDCASE.|.
        DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t95->has = abap_true.
        t95->value = t94.
        t92 = t95.
      ELSE.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        t92 = t96.
      ENDIF.
      t91 = t92.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t98.
      DATA(t99) = abap_true.
      IF t99 = abap_true.
        DATA(t100) = |IF foo = bar OR 1 = a.\nENDIF.\nCASE bar.\n  WHEN '1'.\n  WHEN '|.
        t100 = t100 && |A'.\nENDCASE.|.
        DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t101->has = abap_true.
        t101->value = t100.
        t98 = t101.
      ELSE.
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t102.
        t98 = t102.
      ENDIF.
      t97 = t98.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t104.
      t103 = t104.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t106.
      t105 = t106.
      DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t108.
      t107 = t108.
      t74 = NEW zcl_lnt_irule_metadata( i_key = t75 i_title = t77 i_short_description = t79 i_bad_example = t91 i_good_example = t97 i_extended_information = t103 i_tags = t81 i_pragma = t105 i_pseudo_comment = t107 ).
      CREATE OBJECT t74->zlnt_view_ownkeys_b0e8086400eb.
      t74->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t109 ).
      ENDIF.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t110.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t110 ).
      ENDIF.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t111 ).
      ENDIF.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t112 ).
      ENDIF.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t113 ).
      ENDIF.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t114.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t114 ).
      ENDIF.
      CREATE OBJECT t74->zlnt_json_ownkeys_70e5fd461788.
      t74->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t115) = |key|.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
      ENDIF.
      DATA(t117) = |title|.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
      ENDIF.
      DATA(t119) = |shortDescription|.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
      ENDIF.
      DATA(t121) = |tags|.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t121 p1 = t122 ).
      ENDIF.
      DATA(t123) = |badExample|.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
      ENDIF.
      DATA(t125) = |goodExample|.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
      ENDIF.
      t73 = t74->key.
      DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t128) = me->conf.
      t127 = t128->zlnt_view_read_sr_15c06369f827( ).
      DATA t129 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t129.
      t68 = zcl_lnt_issue=>at_token( i_file = t69 i_token = t70 i_message_26cb = t72 i_key = t73 i_severity = t127 i_fix = t129 ).
      t67 = t68.
      DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t132.
      t131 = t132.
      DATA(t133) = t131.
      DATA(t134) = t67.
      t133->load( ).
      APPEND t134 TO t133->items.
      t133->save( ).
      DATA(t135) = t131.
      t130 = t135.
      result = t130.
      RETURN.
    ENDIF.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t136.
    result = t136.

  ENDMETHOD.

  METHOD analyze_if.
    DATA(t1) = i_file.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zcl_lnt_conditions.
    CLEAR t3.
    DATA(t4) = NEW zcl_lnt_conditions( ).
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t6.
    DATA(t7) = t2.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d525_ab3a9a5b3f8b.
    t6 = t7->find_direct_statement( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t10.
    DATA(t11) = t5.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t10.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    t9 = t14.
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA(t20) = |identical_conditions, no IF found|.
        DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t21->has = abap_true.
        t21->value = t20.
        t18 = t21.
      ELSE.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        t18 = t22.
      ENDIF.
      t17 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t18 ).
      t16 = NEW #( ).
      t16->payload = t17.
      CLEAR t16->source_value.
      IF t17 IS BOUND.
        DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t23.
        DATA t24 TYPE REF TO object.
        CLEAR t24.
        CLEAR t23.
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
      ENDIF.
      RAISE EXCEPTION t16.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t26.
    DATA t27 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t27.
    DATA t28 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t28.
    DATA(t29) = t5.
    t28 = t29.
    t27 = t28.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = t27.
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    IF t31 = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t33.
      t30 = t33.
    ELSE.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t34.
      DATA(t35) = t27.
      DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
      t34 = t35->find_direct_expression( i_type_9913 = t36 ).
      t30 = t34.
    ENDIF.
    t26 = t30.
    t25 = t26.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = t25.
    t37 = xsdbool( t38 IS BOUND ).
    IF t37 = abap_true.
      DATA t39 TYPE REF TO zcl_lnt_conditions.
      CLEAR t39.
      DATA(t40) = t3.
      t39 = t40.
      DATA t41 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t42.
      DATA(t43) = t25.
      t42 = t43.
      t41 = t42.
      DATA t44 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t44.
      DATA(t45) = t39.
      t44 = t45->arr.
      DATA(t46) = VALUE string( ).
      DATA(t47) = t41.
      t46 = t47->concat_tokens( ).
      t44->load( ).
      APPEND t46 TO t44->items.
      t44->save( ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t48.
    DATA(t49) = t2.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
    t48 = t49->find_direct_structures( i_type_9913 = t50 ).
    DATA t51 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t51.
    DATA t52 TYPE REF TO object.
    CLEAR t52.
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
        CLEAR t55.
        t55 = t54->as_ref( ).
        t51 ?= t55.
      ELSE.
        t51 ?= t52.
      ENDIF.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t56.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t57.
      DATA t58 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t58.
      DATA t59 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t59.
      DATA(t60) = t51.
      DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d457_9791cc858be9.
      t59 = t60->find_direct_statement( i_type_9913 = t61 ).
      t58 = t59.
      DATA t62 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t62.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = t58.
      IF t64 IS INITIAL.
        t63 = abap_true.
      ENDIF.
      IF t63 = abap_true.
        DATA t65 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t65.
        t62 = t65.
      ELSE.
        DATA t66 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t66.
        DATA t67 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t67.
        DATA(t68) = t58.
        t67 = t68.
        DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
        t66 = t67->find_direct_expression( i_type_9913 = t69 ).
        t62 = t66.
      ENDIF.
      t57 = t62.
      t56 = t57.
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = t56.
      t70 = xsdbool( t71 IS BOUND ).
      IF t70 = abap_true.
        DATA t72 TYPE REF TO zcl_lnt_conditions.
        CLEAR t72.
        DATA(t73) = t3.
        t72 = t73.
        DATA t74 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t74.
        DATA t75 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t75.
        DATA(t76) = t56.
        t75 = t76.
        t74 = t75.
        DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t77.
        DATA(t78) = t72.
        t77 = t78->arr.
        DATA(t79) = VALUE string( ).
        DATA(t80) = t74.
        t79 = t80->concat_tokens( ).
        t77->load( ).
        APPEND t79 TO t77->items.
        t77->save( ).
      ENDIF.
    ENDDO.
    DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t82.
    DATA(t83) = t3.
    t82 = t83->find_first_duplicate( ).
    t81 = t82.
    DATA(t84) = VALUE abap_bool( ).
    DATA(t85) = t81.
    IF t85 IS BOUND.
      IF t85->has = abap_true.
        t84 = xsdbool( strlen( t85->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t84 = abap_true.
      DATA(t86) = VALUE string( ).
      DATA(t87) = VALUE string( ).
      DATA(t88) = |Identical conditions: |.
      DATA(t89) = VALUE string( ).
      DATA(t90) = t81.
      t89 = t90->value.
      DATA(t91) = strlen( t88 ).
      t87 = |{ t88 }{ t89 }|.
      t86 = t87.
      DATA t92 TYPE REF TO zcl_lnt_issue.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_issue.
      CLEAR t93.
      DATA(t94) = t1.
      DATA t95 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t95.
      DATA(t96) = t5.
      t95 = t96.
      DATA(t97) = t86.
      DATA(t98) = VALUE string( ).
      DATA t99 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t99.
      DATA(t100) = VALUE string( ).
      DATA(t101) = |identical_conditions|.
      t100 = t101.
      DATA(t102) = VALUE string( ).
      DATA(t103) = |Identical conditions|.
      t102 = t103.
      DATA(t104) = VALUE string( ).
      DATA(t105) = |Find identical conditions in IF + CASE + WHILE etc\n\nPrerequs|.
      t105 = t105 && |ites: code is pretty printed with identical cAsE|.
      t104 = t105.
      DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t106.
      DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t107.
      DATA(t108) = abap_true.
      IF t108 = abap_true.
        DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t109.
        DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t110.
        DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t111.
        CREATE OBJECT t111.
        t110 = t111.
        DATA(t112) = t110.
        DATA(t113) = |SingleFile|.
        t112->load( ).
        APPEND t113 TO t112->items.
        t112->save( ).
        DATA(t114) = t110.
        t109 = t114.
        t107 = t109.
      ELSE.
        DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t115.
        t107 = t115.
      ENDIF.
      t106 = t107.
      DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t116.
      DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t117.
      DATA(t118) = abap_true.
      IF t118 = abap_true.
        DATA(t119) = |IF foo = bar OR 1 = a OR foo = bar.\nENDIF.\nCASE bar.\n  WHEN |.
        t119 = t119 && |'1'.\n  WHEN 'A' OR '1'.\nENDCASE.|.
        DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t120->has = abap_true.
        t120->value = t119.
        t117 = t120.
      ELSE.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t121.
        t117 = t121.
      ENDIF.
      t116 = t117.
      DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t122.
      DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t123.
      DATA(t124) = abap_true.
      IF t124 = abap_true.
        DATA(t125) = |IF foo = bar OR 1 = a.\nENDIF.\nCASE bar.\n  WHEN '1'.\n  WHEN '|.
        t125 = t125 && |A'.\nENDCASE.|.
        DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t126->has = abap_true.
        t126->value = t125.
        t123 = t126.
      ELSE.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t127.
        t123 = t127.
      ENDIF.
      t122 = t123.
      DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t128.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t129.
      t128 = t129.
      DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t130.
      DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t131.
      t130 = t131.
      DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t132.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t133.
      t132 = t133.
      t99 = NEW zcl_lnt_irule_metadata( i_key = t100 i_title = t102 i_short_description = t104 i_bad_example = t116 i_good_example = t122 i_extended_information = t128 i_tags = t106 i_pragma = t130 i_pseudo_comment = t132 ).
      CREATE OBJECT t99->zlnt_view_ownkeys_b0e8086400eb.
      t99->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t134 ).
      ENDIF.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t135 ).
      ENDIF.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t136 ).
      ENDIF.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t137.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t137 ).
      ENDIF.
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t138.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t138 ).
      ENDIF.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t139 ).
      ENDIF.
      CREATE OBJECT t99->zlnt_json_ownkeys_70e5fd461788.
      t99->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t140) = |key|.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t141.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
      ENDIF.
      DATA(t142) = |title|.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t142 p1 = t143 ).
      ENDIF.
      DATA(t144) = |shortDescription|.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t145.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t144 p1 = t145 ).
      ENDIF.
      DATA(t146) = |tags|.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t146 p1 = t147 ).
      ENDIF.
      DATA(t148) = |badExample|.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
      ENDIF.
      DATA(t150) = |goodExample|.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
      ENDIF.
      t98 = t99->key.
      DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t152.
      DATA(t153) = me->conf.
      t152 = t153->zlnt_view_read_sr_15c06369f827( ).
      DATA t154 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t154.
      DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t155.
      t93 = zcl_lnt_issue=>at_statement( i_file = t94 i_statement = t95 i_message_26cb = t97 i_key = t98 i_severity = t152 i_fix = t154 i_alternative_fixes = t155 ).
      t92 = t93.
      DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t156.
      DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t157.
      DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t158.
      CREATE OBJECT t158.
      t157 = t158.
      DATA(t159) = t157.
      DATA(t160) = t92.
      t159->load( ).
      APPEND t160 TO t159->items.
      t159->save( ).
      DATA(t161) = t157.
      t156 = t161.
      result = t156.
      RETURN.
    ENDIF.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t162.
    CREATE OBJECT t162.
    result = t162.

  ENDMETHOD.

  METHOD analyze_when.
    DATA(t1) = i_file.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zcl_lnt_conditions.
    CLEAR t3.
    DATA(t4) = NEW zcl_lnt_conditions( ).
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t6.
    DATA(t7) = t2.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d400_37d69a21ca3a.
    t6 = t7->find_direct_statement( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t10.
    DATA(t11) = t5.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t10.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    t9 = t14.
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA(t20) = |identical_conditions, no CASE found|.
        DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t21->has = abap_true.
        t21->value = t20.
        t18 = t21.
      ELSE.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        t18 = t22.
      ENDIF.
      t17 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t18 ).
      t16 = NEW #( ).
      t16->payload = t17.
      CLEAR t16->source_value.
      IF t17 IS BOUND.
        DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t23.
        DATA t24 TYPE REF TO object.
        CLEAR t24.
        CLEAR t23.
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
      ENDIF.
      RAISE EXCEPTION t16.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t25.
    DATA(t26) = t2.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d708_dde8d9743472.
    t25 = t26->find_direct_structures( i_type_9913 = t27 ).
    DATA t28 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
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
        CLEAR t32.
        t32 = t31->as_ref( ).
        t28 ?= t32.
      ELSE.
        t28 ?= t29.
      ENDIF.
      DATA t33 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t33.
      DATA t34 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t34.
      DATA(t35) = t28.
      DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d679_3af40033658c.
      t34 = t35->find_direct_statement( i_type_9913 = t36 ).
      t33 = t34.
      DATA(t37) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t38.
      DATA(t39) = t33.
      t38 = t39.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      t40 = t41.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = t38.
      IF t43 IS INITIAL.
        t42 = abap_true.
      ENDIF.
      t37 = t42.
      IF t37 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t44.
      DATA t45 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t45.
      DATA(t46) = t33.
      t45 = t46.
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
          CLEAR t52.
          t52 = t51->as_ref( ).
          t48 ?= t52.
        ELSE.
          t48 ?= t49.
        ENDIF.
        DATA t53 TYPE REF TO zcl_lnt_conditions.
        CLEAR t53.
        DATA(t54) = t3.
        t53 = t54.
        DATA t55 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t55.
        DATA(t56) = t48.
        t55 = t56.
        DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t57.
        DATA(t58) = t53.
        t57 = t58->arr.
        DATA(t59) = VALUE string( ).
        DATA(t60) = t55.
        t59 = t60->concat_tokens( ).
        t57->load( ).
        APPEND t59 TO t57->items.
        t57->save( ).
      ENDDO.
    ENDDO.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t62.
    DATA(t63) = t3.
    t62 = t63->find_first_duplicate( ).
    t61 = t62.
    DATA(t64) = VALUE abap_bool( ).
    DATA(t65) = t61.
    IF t65 IS BOUND.
      IF t65->has = abap_true.
        t64 = xsdbool( strlen( t65->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t64 = abap_true.
      DATA(t66) = VALUE string( ).
      DATA(t67) = VALUE string( ).
      DATA(t68) = |Identical conditions: |.
      DATA(t69) = VALUE string( ).
      DATA(t70) = t61.
      t69 = t70->value.
      DATA(t71) = strlen( t68 ).
      t67 = |{ t68 }{ t69 }|.
      t66 = t67.
      DATA t72 TYPE REF TO zcl_lnt_issue.
      CLEAR t72.
      DATA t73 TYPE REF TO zcl_lnt_issue.
      CLEAR t73.
      DATA(t74) = t1.
      DATA t75 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t75.
      DATA(t76) = t5.
      t75 = t76.
      DATA(t77) = t66.
      DATA(t78) = VALUE string( ).
      DATA t79 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t79.
      DATA(t80) = VALUE string( ).
      DATA(t81) = |identical_conditions|.
      t80 = t81.
      DATA(t82) = VALUE string( ).
      DATA(t83) = |Identical conditions|.
      t82 = t83.
      DATA(t84) = VALUE string( ).
      DATA(t85) = |Find identical conditions in IF + CASE + WHILE etc\n\nPrerequs|.
      t85 = t85 && |ites: code is pretty printed with identical cAsE|.
      t84 = t85.
      DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t86.
      DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t87.
      DATA(t88) = abap_true.
      IF t88 = abap_true.
        DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t89.
        DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t90.
        DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t91.
        CREATE OBJECT t91.
        t90 = t91.
        DATA(t92) = t90.
        DATA(t93) = |SingleFile|.
        t92->load( ).
        APPEND t93 TO t92->items.
        t92->save( ).
        DATA(t94) = t90.
        t89 = t94.
        t87 = t89.
      ELSE.
        DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t95.
        t87 = t95.
      ENDIF.
      t86 = t87.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t96.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA(t98) = abap_true.
      IF t98 = abap_true.
        DATA(t99) = |IF foo = bar OR 1 = a OR foo = bar.\nENDIF.\nCASE bar.\n  WHEN |.
        t99 = t99 && |'1'.\n  WHEN 'A' OR '1'.\nENDCASE.|.
        DATA(t100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t100->has = abap_true.
        t100->value = t99.
        t97 = t100.
      ELSE.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        t97 = t101.
      ENDIF.
      t96 = t97.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t102.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t103.
      DATA(t104) = abap_true.
      IF t104 = abap_true.
        DATA(t105) = |IF foo = bar OR 1 = a.\nENDIF.\nCASE bar.\n  WHEN '1'.\n  WHEN '|.
        t105 = t105 && |A'.\nENDCASE.|.
        DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t106->has = abap_true.
        t106->value = t105.
        t103 = t106.
      ELSE.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        t103 = t107.
      ENDIF.
      t102 = t103.
      DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t108.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t109.
      t108 = t109.
      DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t110.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t111.
      t110 = t111.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t112.
      DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t113.
      t112 = t113.
      t79 = NEW zcl_lnt_irule_metadata( i_key = t80 i_title = t82 i_short_description = t84 i_bad_example = t96 i_good_example = t102 i_extended_information = t108 i_tags = t86 i_pragma = t110 i_pseudo_comment = t112 ).
      CREATE OBJECT t79->zlnt_view_ownkeys_b0e8086400eb.
      t79->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t114.
      IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t114 ).
      ENDIF.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t115.
      IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t115 ).
      ENDIF.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t116 ).
      ENDIF.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t117 ).
      ENDIF.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t118 ).
      ENDIF.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t119.
      IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t119 ).
      ENDIF.
      CREATE OBJECT t79->zlnt_json_ownkeys_70e5fd461788.
      t79->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t120) = |key|.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
      ENDIF.
      DATA(t122) = |title|.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
      ENDIF.
      DATA(t124) = |shortDescription|.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t125.
      IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
      ENDIF.
      DATA(t126) = |tags|.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
      ENDIF.
      DATA(t128) = |badExample|.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
      ENDIF.
      DATA(t130) = |goodExample|.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t131.
      IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
      ENDIF.
      t78 = t79->key.
      DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t132.
      DATA(t133) = me->conf.
      t132 = t133->zlnt_view_read_sr_15c06369f827( ).
      DATA t134 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t134.
      DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t135.
      t73 = zcl_lnt_issue=>at_statement( i_file = t74 i_statement = t75 i_message_26cb = t77 i_key = t78 i_severity = t132 i_fix = t134 i_alternative_fixes = t135 ).
      t72 = t73.
      DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t136.
      DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t137.
      DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t138.
      CREATE OBJECT t138.
      t137 = t138.
      DATA(t139) = t137.
      DATA(t140) = t72.
      t139->load( ).
      APPEND t140 TO t139->items.
      t139->save( ).
      DATA(t141) = t137.
      t136 = t141.
      result = t136.
      RETURN.
    ENDIF.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t142.
    CREATE OBJECT t142.
    result = t142.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_idntcl_cndtns_cnf( me->gt_cn_in_sr_rl_id_cn_ts_id_cnd( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_idntcl_cndtns_cnf( me->gt_cn_in_sr_rl_id_cn_ts_id_cnd( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_idntcl_cndtns_cnf.
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
        t1 = NEW zcl_lnt_idntcl_cndtns_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_id_cn_ts_id_cnd( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_id_cn_ts_id_cnd( i_file = i_file ) ).
    result = t1.

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
