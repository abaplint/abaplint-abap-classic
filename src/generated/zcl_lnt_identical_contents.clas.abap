* TS: src/rules/identical_contents.ts:13:1 IdenticalContents
CLASS zcl_lnt_identical_contents DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_idntcl_cntnts_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_id_cn_ts_id_cnt RETURNING VALUE(result) TYPE REF TO zcl_lnt_idntcl_cntnts_cnf.
    METHODS st_cn_in_sr_rl_id_cn_ts_id_cnt IMPORTING i_conf TYPE REF TO zcl_lnt_idntcl_cntnts_cnf.
    METHODS rn_pr_in_sr_rl_id_cn_ts_id_cnt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze_if IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_node TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_chained IMPORTING i_node TYPE REF TO zif_lnt_union_8249fcb1 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_identical_contents IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_idntcl_cntnts_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |identical_contents|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Identical contents|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Find identical contents in blocks inside IFs, both in the be|.
    t7 = t7 && |ginning and in the end.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |\nPrerequsites: code is pretty printed with identical cAsE\n\nC|.
      t11 = t11 && |hained statments are ignored|.
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
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |IF foo = bar.\n  WRITE 'bar'.\n  WRITE 'world'.\nELSE.\n  WRITE |.
      t27 = t27 && |'foo'.\n  WRITE 'world'.\nENDIF.|.
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
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |IF foo = bar.\n  WRITE 'bar'.\nELSE.\n  WRITE 'foo'.\nENDIF.\nWRI|.
      t33 = t33 && |TE 'world'.|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_id_cn_ts_id_cnt.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_id_cn_ts_id_cnt.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_id_cn_ts_id_cnt.
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
    DATA t19 TYPE REF TO zcl_lnt_abap_file.
    DATA(t20) = t1.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t19.
    t21 = t22->statements.
    t18 = t21.
    DATA t23 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
    DATA(t25) = VALUE i( ).
    DO.
      t18->load( ).
      IF t25 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t18->items INDEX t25 + 1 INTO t24.
      t25 = t25 + 1.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      CLEAR t23.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t26 ?= t24.
        DATA t27 TYPE REF TO object.
        t27 = t26->as_ref( ).
        t23 ?= t27.
      ELSE.
        t23 ?= t24.
      ENDIF.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE REF TO zif_lnt_statement.
      DATA(t30) = t23.
      t29 = t30->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_unknown ).
      IF t28 = abap_true.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t31.
        result = t31.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zcl_lnt_structure_node.
    DATA(t34) = t4.
    t33 = t34.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
    t32 = t33->find_all_structures_recursive( i_type_9913 = t35 ).
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
      t43 = me->analyze_if( i_file = t44 i_node = t45 ).
      t41 = t42->concat( p0 = t43 ).
      t2 = t41.
    ENDDO.
    DATA(t46) = t2.
    result = t46.

  ENDMETHOD.

  METHOD analyze_if.
    DATA(t1) = i_file.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA(t5) = t2.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
    t4 = t5->find_direct_structure( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = t2.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
    t10 = t11->find_direct_structures( i_type_9913 = t12 ).
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA t14 TYPE abap_bool.
    DATA(t15) = t9.
    t14 = xsdbool( t15 IS BOUND ).
    IF t14 = abap_true.
      DATA(t16) = t9.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      t13 = t17.
    ENDIF.
    t8 = t13.
    t7 = t8.
    DATA t18 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    DATA t21 TYPE REF TO zcl_lnt_structure_node.
    DATA(t22) = t2.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d734_f05b24426da6.
    t21 = t22->find_direct_structure( i_type_9913 = t23 ).
    t20 = t21.
    DATA t24 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t20.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    IF t25 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t27.
      t24 = t27.
    ELSE.
      DATA t28 TYPE REF TO zcl_lnt_structure_node.
      DATA t29 TYPE REF TO zcl_lnt_structure_node.
      DATA(t30) = t20.
      t29 = t30.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
      t28 = t29->find_direct_structure( i_type_9913 = t31 ).
      t24 = t28.
    ENDIF.
    t19 = t24.
    t18 = t19.
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE REF TO zcl_lnt_structure_node.
    DATA(t34) = t18.
    t33 = t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    t35 = t36.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = t33.
    IF t38 IS INITIAL.
      t37 = abap_true.
    ENDIF.
    t32 = t37.
    IF t32 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t39.
      result = t39.
      RETURN.
    ENDIF.
    DATA t40 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t40.
    DATA t41 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t41.
    DATA t42 TYPE REF TO zcl_lnt_structure_node.
    DATA(t43) = t3.
    t42 = t43.
    DATA t44 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t44.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = t42.
    IF t46 IS INITIAL.
      t45 = abap_true.
    ENDIF.
    IF t45 = abap_true.
      DATA t47 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t47.
      t44 = t47.
    ELSE.
      DATA t48 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t48.
      DATA t49 TYPE REF TO zif_lnt_node.
      CLEAR t49.
      DATA t50 TYPE REF TO zcl_lnt_abstract_node.
      DATA t51 TYPE REF TO zcl_lnt_structure_node.
      DATA(t52) = t42.
      t51 = t52.
      t50 = t51.
      DATA t53 TYPE REF TO zif_lnt_node.
      CLEAR t53.
      DATA(t54) = abap_true.
      IF t54 = abap_true.
        DATA t55 TYPE REF TO zif_lnt_node.
        CLEAR t55.
        DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t57) = t50.
        t56 = t57->children.
        DATA t58 TYPE REF TO object.
        CLEAR t58.
        t56->load( ).
        CLEAR t58.
        READ TABLE t56->items INDEX 1 INTO t58.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t59.
        CLEAR t55.
        IF t58 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t59 ?= t58.
          DATA t60 TYPE REF TO object.
          t60 = t59->as_ref( ).
          t55 ?= t60.
        ELSE.
          t55 ?= t58.
        ENDIF.
        t53 = t55.
      ELSE.
        DATA t61 TYPE REF TO zif_lnt_node.
        CLEAR t61.
        t53 = t61.
      ENDIF.
      t49 = t53.
      t48 ?= t49.
      t44 = t48.
    ENDIF.
    t41 = t44.
    t40 = t41.
    DATA t62 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t63.
    DATA t64 TYPE REF TO zcl_lnt_structure_node.
    DATA t65 TYPE REF TO zcl_lnt_structure_node.
    DATA(t66) = t18.
    t65 = t66.
    t64 = t65.
    DATA t67 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t67.
    DATA(t68) = VALUE abap_bool( ).
    DATA(t69) = t64.
    IF t69 IS INITIAL.
      t68 = abap_true.
    ENDIF.
    IF t68 = abap_true.
      DATA t70 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t70.
      t67 = t70.
    ELSE.
      DATA t71 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t71.
      DATA t72 TYPE REF TO zif_lnt_node.
      CLEAR t72.
      DATA t73 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t74) = t64.
      t73 = t74.
      DATA t75 TYPE REF TO zif_lnt_node.
      CLEAR t75.
      DATA(t76) = abap_true.
      IF t76 = abap_true.
        DATA t77 TYPE REF TO zif_lnt_node.
        CLEAR t77.
        DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t79) = t73.
        t78 = t79->children.
        DATA t80 TYPE REF TO object.
        CLEAR t80.
        t78->load( ).
        CLEAR t80.
        READ TABLE t78->items INDEX 1 INTO t80.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        CLEAR t77.
        IF t80 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t81 ?= t80.
          DATA t82 TYPE REF TO object.
          t82 = t81->as_ref( ).
          t77 ?= t82.
        ELSE.
          t77 ?= t80.
        ENDIF.
        t75 = t77.
      ELSE.
        DATA t83 TYPE REF TO zif_lnt_node.
        CLEAR t83.
        t75 = t83.
      ENDIF.
      t72 = t75.
      t71 ?= t72.
      t67 = t71.
    ENDIF.
    t63 = t67.
    t62 = t63.
    DATA t84 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t85.
    DATA t86 TYPE REF TO zcl_lnt_structure_node.
    DATA(t87) = t3.
    t86 = t87.
    DATA t88 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t88.
    DATA(t89) = VALUE abap_bool( ).
    DATA(t90) = t86.
    IF t90 IS INITIAL.
      t89 = abap_true.
    ENDIF.
    IF t89 = abap_true.
      DATA t91 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t91.
      t88 = t91.
    ELSE.
      DATA t92 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t92.
      DATA t93 TYPE REF TO zif_lnt_node.
      CLEAR t93.
      DATA t94 TYPE REF TO zcl_lnt_abstract_node.
      DATA t95 TYPE REF TO zcl_lnt_structure_node.
      DATA(t96) = t86.
      t95 = t96.
      t94 = t95.
      DATA t97 TYPE REF TO zif_lnt_node.
      CLEAR t97.
      DATA(t98) = abap_true.
      IF t98 = abap_true.
        DATA t99 TYPE REF TO zif_lnt_node.
        CLEAR t99.
        DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t101) = t94.
        t100 = t101->children.
        DATA t102 TYPE i.
        DATA t103 TYPE i.
        DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t105) = t94.
        t104 = t105->children.
        t104->load( ).
        t103 = lines( t104->items ).
        DATA(t106) = 1.
        t102 = t103 - t106.
        t102 = t102 + 1.
        DATA t107 TYPE REF TO object.
        CLEAR t107.
        t100->load( ).
        CLEAR t107.
        READ TABLE t100->items INDEX t102 INTO t107.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        CLEAR t99.
        IF t107 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t108 ?= t107.
          DATA t109 TYPE REF TO object.
          t109 = t108->as_ref( ).
          t99 ?= t109.
        ELSE.
          t99 ?= t107.
        ENDIF.
        t97 = t99.
      ELSE.
        DATA t110 TYPE REF TO zif_lnt_node.
        CLEAR t110.
        t97 = t110.
      ENDIF.
      t93 = t97.
      t92 ?= t93.
      t88 = t92.
    ENDIF.
    t85 = t88.
    t84 = t85.
    DATA t111 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t111.
    DATA t112 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t112.
    DATA t113 TYPE REF TO zcl_lnt_structure_node.
    DATA t114 TYPE REF TO zcl_lnt_structure_node.
    DATA(t115) = t18.
    t114 = t115.
    t113 = t114.
    DATA t116 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t116.
    DATA(t117) = VALUE abap_bool( ).
    DATA(t118) = t113.
    IF t118 IS INITIAL.
      t117 = abap_true.
    ENDIF.
    IF t117 = abap_true.
      DATA t119 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t119.
      t116 = t119.
    ELSE.
      DATA t120 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t120.
      DATA t121 TYPE REF TO zif_lnt_node.
      CLEAR t121.
      DATA t122 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t123) = t113.
      t122 = t123.
      DATA t124 TYPE REF TO zif_lnt_node.
      CLEAR t124.
      DATA(t125) = abap_true.
      IF t125 = abap_true.
        DATA t126 TYPE REF TO zif_lnt_node.
        CLEAR t126.
        DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t128) = t122.
        t127 = t128->children.
        DATA t129 TYPE i.
        DATA t130 TYPE i.
        DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t132) = t122.
        t131 = t132->children.
        t131->load( ).
        t130 = lines( t131->items ).
        DATA(t133) = 1.
        t129 = t130 - t133.
        t129 = t129 + 1.
        DATA t134 TYPE REF TO object.
        CLEAR t134.
        t127->load( ).
        CLEAR t134.
        READ TABLE t127->items INDEX t129 INTO t134.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        CLEAR t126.
        IF t134 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t135 ?= t134.
          DATA t136 TYPE REF TO object.
          t136 = t135->as_ref( ).
          t126 ?= t136.
        ELSE.
          t126 ?= t134.
        ENDIF.
        t124 = t126.
      ELSE.
        DATA t137 TYPE REF TO zif_lnt_node.
        CLEAR t137.
        t124 = t137.
      ENDIF.
      t121 = t124.
      t120 ?= t121.
      t116 = t120.
    ENDIF.
    t112 = t116.
    t111 = t112.
    DATA t138 TYPE abap_bool.
    DATA t139 TYPE i.
    DATA(t140) = t7.
    t140->load( ).
    t139 = lines( t140->items ).
    DATA(t141) = 0.
    t138 = xsdbool( t139 > t141 ).
    IF t138 = abap_true.
      DATA t142 TYPE abap_bool.
      DATA(t143) = abap_true.
      t142 = t143.
      DATA t144 TYPE abap_bool.
      DATA(t145) = abap_true.
      t144 = t145.
      DATA(t146) = t7.
      DATA t147 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t147.
      DATA t148 TYPE REF TO object.
      CLEAR t148.
      DATA(t149) = VALUE i( ).
      DO.
        t146->load( ).
        IF t149 >= lines( t146->items ).
          EXIT.
        ENDIF.
        CLEAR t148.
        READ TABLE t146->items INDEX t149 + 1 INTO t148.
        t149 = t149 + 1.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        CLEAR t147.
        IF t148 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t150 ?= t148.
          DATA t151 TYPE REF TO object.
          t151 = t150->as_ref( ).
          t147 ?= t151.
        ELSE.
          t147 ?= t148.
        ENDIF.
        DATA t152 TYPE REF TO zcl_lnt_structure_node.
        DATA t153 TYPE REF TO zcl_lnt_structure_node.
        DATA(t154) = t147.
        DATA(t155) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
        t153 = t154->find_direct_structure( i_type_9913 = t155 ).
        t152 = t153.
        DATA t156 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t156.
        DATA t157 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t157.
        DATA t158 TYPE REF TO zcl_lnt_structure_node.
        DATA(t159) = t152.
        t158 = t159.
        DATA t160 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t160.
        DATA(t161) = VALUE abap_bool( ).
        DATA(t162) = t158.
        IF t162 IS INITIAL.
          t161 = abap_true.
        ENDIF.
        IF t161 = abap_true.
          DATA t163 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t163.
          t160 = t163.
        ELSE.
          DATA t164 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t164.
          DATA t165 TYPE REF TO zif_lnt_node.
          CLEAR t165.
          DATA t166 TYPE REF TO zcl_lnt_abstract_node.
          DATA t167 TYPE REF TO zcl_lnt_structure_node.
          DATA(t168) = t158.
          t167 = t168.
          t166 = t167.
          DATA t169 TYPE REF TO zif_lnt_node.
          CLEAR t169.
          DATA(t170) = abap_true.
          IF t170 = abap_true.
            DATA t171 TYPE REF TO zif_lnt_node.
            CLEAR t171.
            DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t173) = t166.
            t172 = t173->children.
            DATA t174 TYPE REF TO object.
            CLEAR t174.
            t172->load( ).
            CLEAR t174.
            READ TABLE t172->items INDEX 1 INTO t174.
            DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t175.
            CLEAR t171.
            IF t174 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t175 ?= t174.
              DATA t176 TYPE REF TO object.
              t176 = t175->as_ref( ).
              t171 ?= t176.
            ELSE.
              t171 ?= t174.
            ENDIF.
            t169 = t171.
          ELSE.
            DATA t177 TYPE REF TO zif_lnt_node.
            CLEAR t177.
            t169 = t177.
          ENDIF.
          t165 = t169.
          t164 ?= t165.
          t160 = t164.
        ENDIF.
        t157 = t160.
        t156 = t157.
        DATA t178 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t178.
        DATA t179 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t179.
        DATA t180 TYPE REF TO zcl_lnt_structure_node.
        DATA(t181) = t152.
        t180 = t181.
        DATA t182 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t182.
        DATA(t183) = VALUE abap_bool( ).
        DATA(t184) = t180.
        IF t184 IS INITIAL.
          t183 = abap_true.
        ENDIF.
        IF t183 = abap_true.
          DATA t185 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t185.
          t182 = t185.
        ELSE.
          DATA t186 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t186.
          DATA t187 TYPE REF TO zif_lnt_node.
          CLEAR t187.
          DATA t188 TYPE REF TO zcl_lnt_abstract_node.
          DATA t189 TYPE REF TO zcl_lnt_structure_node.
          DATA(t190) = t180.
          t189 = t190.
          t188 = t189.
          DATA t191 TYPE REF TO zif_lnt_node.
          CLEAR t191.
          DATA(t192) = abap_true.
          IF t192 = abap_true.
            DATA t193 TYPE REF TO zif_lnt_node.
            CLEAR t193.
            DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t195) = t188.
            t194 = t195->children.
            DATA t196 TYPE i.
            DATA t197 TYPE i.
            DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t199) = t188.
            t198 = t199->children.
            t198->load( ).
            t197 = lines( t198->items ).
            DATA(t200) = 1.
            t196 = t197 - t200.
            t196 = t196 + 1.
            DATA t201 TYPE REF TO object.
            CLEAR t201.
            t194->load( ).
            CLEAR t201.
            READ TABLE t194->items INDEX t196 INTO t201.
            DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t202.
            CLEAR t193.
            IF t201 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t202 ?= t201.
              DATA t203 TYPE REF TO object.
              t203 = t202->as_ref( ).
              t193 ?= t203.
            ELSE.
              t193 ?= t201.
            ENDIF.
            t191 = t193.
          ELSE.
            DATA t204 TYPE REF TO zif_lnt_node.
            CLEAR t204.
            t191 = t204.
          ENDIF.
          t187 = t191.
          t186 ?= t187.
          t182 = t186.
        ENDIF.
        t179 = t182.
        t178 = t179.
        DATA(t205) = VALUE abap_bool( ).
        DATA(t206) = VALUE abap_bool( ).
        DATA(t207) = VALUE abap_bool( ).
        DATA(t208) = VALUE abap_bool( ).
        DATA t209 TYPE REF TO zif_lnt_union_8249fcb1.
        DATA(t210) = t40.
        t209 = t210.
        DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t212.
        t211 = t212.
        DATA(t213) = VALUE abap_bool( ).
        DATA(t214) = t209.
        IF t214 IS INITIAL.
          t213 = abap_true.
        ENDIF.
        t208 = t213.
        t207 = t208.
        IF t208 = abap_false.
          DATA(t215) = VALUE abap_bool( ).
          DATA t216 TYPE REF TO zif_lnt_union_8249fcb1.
          DATA(t217) = t84.
          t216 = t217.
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t219.
          t218 = t219.
          DATA(t220) = VALUE abap_bool( ).
          DATA(t221) = t216.
          IF t221 IS INITIAL.
            t220 = abap_true.
          ENDIF.
          t215 = t220.
          t207 = t215.
        ENDIF.
        t206 = t207.
        IF t207 = abap_false.
          DATA(t222) = VALUE abap_bool( ).
          DATA t223 TYPE REF TO zif_lnt_union_8249fcb1.
          DATA(t224) = t111.
          t223 = t224.
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t226.
          t225 = t226.
          DATA(t227) = VALUE abap_bool( ).
          DATA(t228) = t223.
          IF t228 IS INITIAL.
            t227 = abap_true.
          ENDIF.
          t222 = t227.
          t206 = t222.
        ENDIF.
        t205 = t206.
        IF t206 = abap_false.
          DATA(t229) = VALUE abap_bool( ).
          DATA t230 TYPE REF TO zif_lnt_union_8249fcb1.
          DATA(t231) = t62.
          t230 = t231.
          DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          t232 = t233.
          DATA(t234) = VALUE abap_bool( ).
          DATA(t235) = t230.
          IF t235 IS INITIAL.
            t234 = abap_true.
          ENDIF.
          t229 = t234.
          t205 = t229.
        ENDIF.
        IF t205 = abap_true.
          DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t236.
          result = t236.
          RETURN.
        ENDIF.
        DATA(t237) = VALUE abap_bool( ).
        DATA(t238) = VALUE abap_bool( ).
        DATA(t239) = VALUE abap_bool( ).
        DATA t240 TYPE REF TO zif_lnt_union_8249fcb1.
        DATA(t241) = t156.
        t240 = t241.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t243.
        t242 = t243.
        DATA(t244) = VALUE abap_bool( ).
        DATA(t245) = t240.
        IF t245 IS INITIAL.
          t244 = abap_true.
        ENDIF.
        t239 = t244.
        t238 = t239.
        IF t239 = abap_false.
          DATA t246 TYPE abap_bool.
          DATA t247 TYPE string.
          DATA t248 TYPE REF TO zif_lnt_union_8249fcb1.
          DATA(t249) = t40.
          t248 = t249.
          t247 = t248->concat_tokens( ).
          DATA t250 TYPE string.
          DATA t251 TYPE REF TO zif_lnt_union_8249fcb1.
          DATA(t252) = t156.
          t251 = t252.
          t250 = t251->concat_tokens( ).
          t246 = xsdbool( t247 <> t250 ).
          t238 = t246.
        ENDIF.
        t237 = t238.
        IF t238 = abap_false.
          DATA t253 TYPE abap_bool.
          DATA t254 TYPE string.
          DATA t255 TYPE REF TO zif_lnt_union_8249fcb1.
          DATA(t256) = t62.
          t255 = t256.
          t254 = t255->concat_tokens( ).
          DATA t257 TYPE string.
          DATA t258 TYPE REF TO zif_lnt_union_8249fcb1.
          DATA(t259) = t156.
          t258 = t259.
          t257 = t258->concat_tokens( ).
          t253 = xsdbool( t254 <> t257 ).
          t237 = t253.
        ENDIF.
        IF t237 = abap_true.
          DATA(t260) = abap_false.
          t142 = t260.
        ENDIF.
        DATA(t261) = VALUE abap_bool( ).
        DATA(t262) = VALUE abap_bool( ).
        DATA(t263) = VALUE abap_bool( ).
        DATA t264 TYPE REF TO zif_lnt_union_8249fcb1.
        DATA(t265) = t178.
        t264 = t265.
        DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t267.
        t266 = t267.
        DATA(t268) = VALUE abap_bool( ).
        DATA(t269) = t264.
        IF t269 IS INITIAL.
          t268 = abap_true.
        ENDIF.
        t263 = t268.
        t262 = t263.
        IF t263 = abap_false.
          DATA t270 TYPE abap_bool.
          DATA t271 TYPE string.
          DATA t272 TYPE REF TO zif_lnt_union_8249fcb1.
          DATA(t273) = t84.
          t272 = t273.
          t271 = t272->concat_tokens( ).
          DATA t274 TYPE string.
          DATA t275 TYPE REF TO zif_lnt_union_8249fcb1.
          DATA(t276) = t178.
          t275 = t276.
          t274 = t275->concat_tokens( ).
          t270 = xsdbool( t271 <> t274 ).
          t262 = t270.
        ENDIF.
        t261 = t262.
        IF t262 = abap_false.
          DATA t277 TYPE abap_bool.
          DATA t278 TYPE string.
          DATA t279 TYPE REF TO zif_lnt_union_8249fcb1.
          DATA(t280) = t111.
          t279 = t280.
          t278 = t279->concat_tokens( ).
          DATA t281 TYPE string.
          DATA t282 TYPE REF TO zif_lnt_union_8249fcb1.
          DATA(t283) = t178.
          t282 = t283.
          t281 = t282->concat_tokens( ).
          t277 = xsdbool( t278 <> t281 ).
          t261 = t277.
        ENDIF.
        IF t261 = abap_true.
          DATA(t284) = abap_false.
          t144 = t284.
        ENDIF.
      ENDDO.
      DATA t285 TYPE abap_bool.
      DATA t286 TYPE abap_bool.
      DATA(t287) = t142.
      DATA(t288) = abap_true.
      t286 = xsdbool( t287 = t288 ).
      t285 = t286.
      IF t286 = abap_false.
        DATA t289 TYPE abap_bool.
        DATA(t290) = t144.
        DATA(t291) = abap_true.
        t289 = xsdbool( t290 = t291 ).
        t285 = t289.
      ENDIF.
      IF t285 = abap_true.
        DATA t292 TYPE string.
        DATA(t293) = |Identical contents|.
        t292 = t293.
        DATA t294 TYPE REF TO zcl_lnt_issue.
        CLEAR t294.
        DATA t295 TYPE REF TO zcl_lnt_issue.
        CLEAR t295.
        DATA(t296) = t1.
        DATA t297 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t298) = t2.
        t297 = t298->get_first_token( ).
        DATA(t299) = t292.
        DATA(t300) = VALUE string( ).
        DATA t301 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t301.
        DATA t302 TYPE string.
        DATA(t303) = |identical_contents|.
        t302 = t303.
        DATA t304 TYPE string.
        DATA(t305) = |Identical contents|.
        t304 = t305.
        DATA t306 TYPE string.
        DATA(t307) = |Find identical contents in blocks inside IFs, both in the be|.
        t307 = t307 && |ginning and in the end.|.
        t306 = t307.
        DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t308.
        DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t309.
        DATA(t310) = abap_true.
        IF t310 = abap_true.
          DATA(t311) = |\nPrerequsites: code is pretty printed with identical cAsE\n\nC|.
          t311 = t311 && |hained statments are ignored|.
          DATA(t312) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t312->has = abap_true.
          t312->value = t311.
          t309 = t312.
        ELSE.
          DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t313.
          t309 = t313.
        ENDIF.
        t308 = t309.
        DATA t314 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t314.
        DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t315.
        DATA(t316) = abap_true.
        IF t316 = abap_true.
          DATA t317 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t318 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t319.
          t318 = t319.
          DATA(t320) = t318.
          DATA(t321) = |SingleFile|.
          t320->load( ).
          APPEND t321 TO t320->items.
          t320->save( ).
          DATA(t322) = t318.
          t317 = t322.
          t315 = t317.
        ELSE.
          DATA t323 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t323.
          t315 = t323.
        ENDIF.
        t314 = t315.
        DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t324.
        DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t325.
        DATA(t326) = abap_true.
        IF t326 = abap_true.
          DATA(t327) = |IF foo = bar.\n  WRITE 'bar'.\n  WRITE 'world'.\nELSE.\n  WRITE |.
          t327 = t327 && |'foo'.\n  WRITE 'world'.\nENDIF.|.
          DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t328->has = abap_true.
          t328->value = t327.
          t325 = t328.
        ELSE.
          DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t329.
          t325 = t329.
        ENDIF.
        t324 = t325.
        DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t330.
        DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t331.
        DATA(t332) = abap_true.
        IF t332 = abap_true.
          DATA(t333) = |IF foo = bar.\n  WRITE 'bar'.\nELSE.\n  WRITE 'foo'.\nENDIF.\nWRI|.
          t333 = t333 && |TE 'world'.|.
          DATA(t334) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t334->has = abap_true.
          t334->value = t333.
          t331 = t334.
        ELSE.
          DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t335.
          t331 = t335.
        ENDIF.
        t330 = t331.
        DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t337.
        t336 = t337.
        DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t339.
        t338 = t339.
        t301 = NEW zcl_lnt_irule_metadata( i_key = t302 i_title = t304 i_short_description = t306 i_bad_example = t324 i_good_example = t330 i_extended_information = t308 i_tags = t314 i_pragma = t336 i_pseudo_comment = t338 ).
        CREATE OBJECT t301->zlnt_view_ownkeys_b0e8086400eb.
        t301->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t340.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t340 ).
        ENDIF.
        DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t341.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t341 ).
        ENDIF.
        DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t342.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t342 ).
        ENDIF.
        DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t343.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t343 ).
        ENDIF.
        DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t344.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t344 ).
        ENDIF.
        DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t345.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t345 ).
        ENDIF.
        DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t346.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t346 ).
        ENDIF.
        CREATE OBJECT t301->zlnt_json_ownkeys_70e5fd461788.
        t301->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t347) = |key|.
        DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t348.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t347 p1 = t348 ).
        ENDIF.
        DATA(t349) = |title|.
        DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t350.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t349 p1 = t350 ).
        ENDIF.
        DATA(t351) = |shortDescription|.
        DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t352.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t351 p1 = t352 ).
        ENDIF.
        DATA(t353) = |extendedInformation|.
        DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t354.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t353 p1 = t354 ).
        ENDIF.
        DATA(t355) = |tags|.
        DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t356.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t355 p1 = t356 ).
        ENDIF.
        DATA(t357) = |badExample|.
        DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t358.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t357 p1 = t358 ).
        ENDIF.
        DATA(t359) = |goodExample|.
        DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t360.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t359 p1 = t360 ).
        ENDIF.
        t300 = t301->key.
        DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t362) = me->conf.
        t361 = t362->zlnt_view_read_sr_15c06369f827( ).
        DATA t363 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t363.
        t295 = zcl_lnt_issue=>at_token( i_file = t296 i_token = t297 i_message_26cb = t299 i_key = t300 i_severity = t361 i_fix = t363 ).
        t294 = t295.
        DATA t364 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t366.
        t365 = t366.
        DATA(t367) = t365.
        DATA(t368) = t294.
        t367->load( ).
        APPEND t368 TO t367->items.
        t367->save( ).
        DATA(t369) = t365.
        t364 = t369.
        result = t364.
        RETURN.
      ENDIF.
      DATA t370 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t370.
      result = t370.
      RETURN.
    ELSE.
      DATA(t371) = VALUE abap_bool( ).
      DATA(t372) = VALUE abap_bool( ).
      DATA t373 TYPE REF TO zcl_lnt_structure_node.
      DATA(t374) = t18.
      t373 = t374.
      DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t376.
      t375 = t376.
      DATA(t377) = VALUE abap_bool( ).
      DATA(t378) = t373.
      IF t378 IS INITIAL.
        t377 = abap_true.
      ENDIF.
      t372 = t377.
      t371 = t372.
      IF t372 = abap_false.
        DATA(t379) = VALUE abap_bool( ).
        DATA t380 TYPE REF TO zcl_lnt_structure_node.
        DATA(t381) = t3.
        t380 = t381.
        DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t383.
        t382 = t383.
        DATA(t384) = VALUE abap_bool( ).
        DATA(t385) = t380.
        IF t385 IS INITIAL.
          t384 = abap_true.
        ENDIF.
        t379 = t384.
        t371 = t379.
      ENDIF.
      IF t371 = abap_true.
        DATA t386 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t386.
        result = t386.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t387) = VALUE abap_bool( ).
    DATA(t388) = VALUE abap_bool( ).
    DATA(t389) = VALUE abap_bool( ).
    DATA t390 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA(t391) = t40.
    t390 = t391.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t393.
    t392 = t393.
    DATA(t394) = VALUE abap_bool( ).
    DATA(t395) = t390.
    IF t395 IS INITIAL.
      t394 = abap_true.
    ENDIF.
    t389 = t394.
    t388 = t389.
    IF t389 = abap_false.
      DATA(t396) = VALUE abap_bool( ).
      DATA t397 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA(t398) = t62.
      t397 = t398.
      DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t400.
      t399 = t400.
      DATA(t401) = VALUE abap_bool( ).
      DATA(t402) = t397.
      IF t402 IS INITIAL.
        t401 = abap_true.
      ENDIF.
      t396 = t401.
      t388 = t396.
    ENDIF.
    t387 = t388.
    IF t388 = abap_false.
      DATA(t403) = VALUE abap_bool( ).
      DATA t404 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t404.
      DATA(t405) = abap_true.
      IF t405 = abap_true.
        DATA t406 TYPE REF TO zif_lnt_union_8249fcb1.
        DATA(t407) = t40.
        t406 = t407.
        t404 = t406.
      ELSE.
        DATA t408 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t408.
        t404 = t408.
      ENDIF.
      t403 = me->is_chained( i_node = t404 ).
      t387 = t403.
    ENDIF.
    IF t387 = abap_true.
      DATA t409 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t409.
      result = t409.
      RETURN.
    ELSE.
      DATA t410 TYPE abap_bool.
      DATA t411 TYPE string.
      DATA t412 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA(t413) = t40.
      t412 = t413.
      t411 = t412->concat_tokens( ).
      DATA t414 TYPE string.
      DATA t415 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA(t416) = t62.
      t415 = t416.
      t414 = t415->concat_tokens( ).
      t410 = xsdbool( t411 = t414 ).
      IF t410 = abap_true.
        DATA t417 TYPE string.
        DATA(t418) = |Identical contents|.
        t417 = t418.
        DATA t419 TYPE REF TO zcl_lnt_issue.
        CLEAR t419.
        DATA t420 TYPE REF TO zcl_lnt_issue.
        CLEAR t420.
        DATA(t421) = t1.
        DATA t422 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t423) = t2.
        t422 = t423->get_first_token( ).
        DATA(t424) = t417.
        DATA(t425) = VALUE string( ).
        DATA t426 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t426.
        DATA t427 TYPE string.
        DATA(t428) = |identical_contents|.
        t427 = t428.
        DATA t429 TYPE string.
        DATA(t430) = |Identical contents|.
        t429 = t430.
        DATA t431 TYPE string.
        DATA(t432) = |Find identical contents in blocks inside IFs, both in the be|.
        t432 = t432 && |ginning and in the end.|.
        t431 = t432.
        DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t433.
        DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t434.
        DATA(t435) = abap_true.
        IF t435 = abap_true.
          DATA(t436) = |\nPrerequsites: code is pretty printed with identical cAsE\n\nC|.
          t436 = t436 && |hained statments are ignored|.
          DATA(t437) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t437->has = abap_true.
          t437->value = t436.
          t434 = t437.
        ELSE.
          DATA t438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t438.
          t434 = t438.
        ENDIF.
        t433 = t434.
        DATA t439 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t439.
        DATA t440 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t440.
        DATA(t441) = abap_true.
        IF t441 = abap_true.
          DATA t442 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t443 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t444 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t444.
          t443 = t444.
          DATA(t445) = t443.
          DATA(t446) = |SingleFile|.
          t445->load( ).
          APPEND t446 TO t445->items.
          t445->save( ).
          DATA(t447) = t443.
          t442 = t447.
          t440 = t442.
        ELSE.
          DATA t448 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t448.
          t440 = t448.
        ENDIF.
        t439 = t440.
        DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t449.
        DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t450.
        DATA(t451) = abap_true.
        IF t451 = abap_true.
          DATA(t452) = |IF foo = bar.\n  WRITE 'bar'.\n  WRITE 'world'.\nELSE.\n  WRITE |.
          t452 = t452 && |'foo'.\n  WRITE 'world'.\nENDIF.|.
          DATA(t453) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t453->has = abap_true.
          t453->value = t452.
          t450 = t453.
        ELSE.
          DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t454.
          t450 = t454.
        ENDIF.
        t449 = t450.
        DATA t455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t455.
        DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t456.
        DATA(t457) = abap_true.
        IF t457 = abap_true.
          DATA(t458) = |IF foo = bar.\n  WRITE 'bar'.\nELSE.\n  WRITE 'foo'.\nENDIF.\nWRI|.
          t458 = t458 && |TE 'world'.|.
          DATA(t459) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t459->has = abap_true.
          t459->value = t458.
          t456 = t459.
        ELSE.
          DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t460.
          t456 = t460.
        ENDIF.
        t455 = t456.
        DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t462 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t462.
        t461 = t462.
        DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t464.
        t463 = t464.
        t426 = NEW zcl_lnt_irule_metadata( i_key = t427 i_title = t429 i_short_description = t431 i_bad_example = t449 i_good_example = t455 i_extended_information = t433 i_tags = t439 i_pragma = t461 i_pseudo_comment = t463 ).
        CREATE OBJECT t426->zlnt_view_ownkeys_b0e8086400eb.
        t426->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t465.
        IF t426->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t426->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t465 ).
        ENDIF.
        DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t466.
        IF t426->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t426->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t466 ).
        ENDIF.
        DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t467.
        IF t426->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t426->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t467 ).
        ENDIF.
        DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t468.
        IF t426->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t426->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t468 ).
        ENDIF.
        DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t469.
        IF t426->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t426->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t469 ).
        ENDIF.
        DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t470.
        IF t426->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t426->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t470 ).
        ENDIF.
        DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t471.
        IF t426->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t426->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t471 ).
        ENDIF.
        CREATE OBJECT t426->zlnt_json_ownkeys_70e5fd461788.
        t426->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t472) = |key|.
        DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t473.
        IF t426->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t426->zlnt_json_ownkeys_70e5fd461788->put( p0 = t472 p1 = t473 ).
        ENDIF.
        DATA(t474) = |title|.
        DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t475.
        IF t426->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t426->zlnt_json_ownkeys_70e5fd461788->put( p0 = t474 p1 = t475 ).
        ENDIF.
        DATA(t476) = |shortDescription|.
        DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t477.
        IF t426->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t426->zlnt_json_ownkeys_70e5fd461788->put( p0 = t476 p1 = t477 ).
        ENDIF.
        DATA(t478) = |extendedInformation|.
        DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t479.
        IF t426->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t426->zlnt_json_ownkeys_70e5fd461788->put( p0 = t478 p1 = t479 ).
        ENDIF.
        DATA(t480) = |tags|.
        DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t481.
        IF t426->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t426->zlnt_json_ownkeys_70e5fd461788->put( p0 = t480 p1 = t481 ).
        ENDIF.
        DATA(t482) = |badExample|.
        DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t483.
        IF t426->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t426->zlnt_json_ownkeys_70e5fd461788->put( p0 = t482 p1 = t483 ).
        ENDIF.
        DATA(t484) = |goodExample|.
        DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t485.
        IF t426->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t426->zlnt_json_ownkeys_70e5fd461788->put( p0 = t484 p1 = t485 ).
        ENDIF.
        t425 = t426->key.
        DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t487) = me->conf.
        t486 = t487->zlnt_view_read_sr_15c06369f827( ).
        DATA t488 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t488.
        t420 = zcl_lnt_issue=>at_token( i_file = t421 i_token = t422 i_message_26cb = t424 i_key = t425 i_severity = t486 i_fix = t488 ).
        t419 = t420.
        DATA t489 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t490 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t491 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t491.
        t490 = t491.
        DATA(t492) = t490.
        DATA(t493) = t419.
        t492->load( ).
        APPEND t493 TO t492->items.
        t492->save( ).
        DATA(t494) = t490.
        t489 = t494.
        result = t489.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t495) = VALUE abap_bool( ).
    DATA(t496) = VALUE abap_bool( ).
    DATA(t497) = VALUE abap_bool( ).
    DATA t498 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA(t499) = t84.
    t498 = t499.
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t501.
    t500 = t501.
    DATA(t502) = VALUE abap_bool( ).
    DATA(t503) = t498.
    IF t503 IS INITIAL.
      t502 = abap_true.
    ENDIF.
    t497 = t502.
    t496 = t497.
    IF t497 = abap_false.
      DATA(t504) = VALUE abap_bool( ).
      DATA t505 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA(t506) = t111.
      t505 = t506.
      DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t508.
      t507 = t508.
      DATA(t509) = VALUE abap_bool( ).
      DATA(t510) = t505.
      IF t510 IS INITIAL.
        t509 = abap_true.
      ENDIF.
      t504 = t509.
      t496 = t504.
    ENDIF.
    t495 = t496.
    IF t496 = abap_false.
      DATA(t511) = VALUE abap_bool( ).
      DATA t512 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t512.
      DATA(t513) = abap_true.
      IF t513 = abap_true.
        DATA t514 TYPE REF TO zif_lnt_union_8249fcb1.
        DATA(t515) = t84.
        t514 = t515.
        t512 = t514.
      ELSE.
        DATA t516 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t516.
        t512 = t516.
      ENDIF.
      t511 = me->is_chained( i_node = t512 ).
      t495 = t511.
    ENDIF.
    IF t495 = abap_true.
      DATA t517 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t517.
      result = t517.
      RETURN.
    ELSE.
      DATA t518 TYPE abap_bool.
      DATA t519 TYPE string.
      DATA t520 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA(t521) = t84.
      t520 = t521.
      t519 = t520->concat_tokens( ).
      DATA t522 TYPE string.
      DATA t523 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA(t524) = t111.
      t523 = t524.
      t522 = t523->concat_tokens( ).
      t518 = xsdbool( t519 = t522 ).
      IF t518 = abap_true.
        DATA t525 TYPE string.
        DATA(t526) = |Identical contents|.
        t525 = t526.
        DATA t527 TYPE REF TO zcl_lnt_issue.
        CLEAR t527.
        DATA t528 TYPE REF TO zcl_lnt_issue.
        CLEAR t528.
        DATA(t529) = t1.
        DATA t530 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t531) = t2.
        t530 = t531->get_first_token( ).
        DATA(t532) = t525.
        DATA(t533) = VALUE string( ).
        DATA t534 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t534.
        DATA t535 TYPE string.
        DATA(t536) = |identical_contents|.
        t535 = t536.
        DATA t537 TYPE string.
        DATA(t538) = |Identical contents|.
        t537 = t538.
        DATA t539 TYPE string.
        DATA(t540) = |Find identical contents in blocks inside IFs, both in the be|.
        t540 = t540 && |ginning and in the end.|.
        t539 = t540.
        DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t541.
        DATA t542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t542.
        DATA(t543) = abap_true.
        IF t543 = abap_true.
          DATA(t544) = |\nPrerequsites: code is pretty printed with identical cAsE\n\nC|.
          t544 = t544 && |hained statments are ignored|.
          DATA(t545) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t545->has = abap_true.
          t545->value = t544.
          t542 = t545.
        ELSE.
          DATA t546 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t546.
          t542 = t546.
        ENDIF.
        t541 = t542.
        DATA t547 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t547.
        DATA t548 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t548.
        DATA(t549) = abap_true.
        IF t549 = abap_true.
          DATA t550 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t551 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t552 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t552.
          t551 = t552.
          DATA(t553) = t551.
          DATA(t554) = |SingleFile|.
          t553->load( ).
          APPEND t554 TO t553->items.
          t553->save( ).
          DATA(t555) = t551.
          t550 = t555.
          t548 = t550.
        ELSE.
          DATA t556 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t556.
          t548 = t556.
        ENDIF.
        t547 = t548.
        DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t557.
        DATA t558 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t558.
        DATA(t559) = abap_true.
        IF t559 = abap_true.
          DATA(t560) = |IF foo = bar.\n  WRITE 'bar'.\n  WRITE 'world'.\nELSE.\n  WRITE |.
          t560 = t560 && |'foo'.\n  WRITE 'world'.\nENDIF.|.
          DATA(t561) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t561->has = abap_true.
          t561->value = t560.
          t558 = t561.
        ELSE.
          DATA t562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t562.
          t558 = t562.
        ENDIF.
        t557 = t558.
        DATA t563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t563.
        DATA t564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t564.
        DATA(t565) = abap_true.
        IF t565 = abap_true.
          DATA(t566) = |IF foo = bar.\n  WRITE 'bar'.\nELSE.\n  WRITE 'foo'.\nENDIF.\nWRI|.
          t566 = t566 && |TE 'world'.|.
          DATA(t567) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t567->has = abap_true.
          t567->value = t566.
          t564 = t567.
        ELSE.
          DATA t568 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t568.
          t564 = t568.
        ENDIF.
        t563 = t564.
        DATA t569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t570 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t570.
        t569 = t570.
        DATA t571 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t572 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t572.
        t571 = t572.
        t534 = NEW zcl_lnt_irule_metadata( i_key = t535 i_title = t537 i_short_description = t539 i_bad_example = t557 i_good_example = t563 i_extended_information = t541 i_tags = t547 i_pragma = t569 i_pseudo_comment = t571 ).
        CREATE OBJECT t534->zlnt_view_ownkeys_b0e8086400eb.
        t534->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t573.
        IF t534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t573 ).
        ENDIF.
        DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t574.
        IF t534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t574 ).
        ENDIF.
        DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t575.
        IF t534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t575 ).
        ENDIF.
        DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t576.
        IF t534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t576 ).
        ENDIF.
        DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t577.
        IF t534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t577 ).
        ENDIF.
        DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t578.
        IF t534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t578 ).
        ENDIF.
        DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t579.
        IF t534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t579 ).
        ENDIF.
        CREATE OBJECT t534->zlnt_json_ownkeys_70e5fd461788.
        t534->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t580) = |key|.
        DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t581.
        IF t534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t580 p1 = t581 ).
        ENDIF.
        DATA(t582) = |title|.
        DATA t583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t583.
        IF t534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t582 p1 = t583 ).
        ENDIF.
        DATA(t584) = |shortDescription|.
        DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t585.
        IF t534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t584 p1 = t585 ).
        ENDIF.
        DATA(t586) = |extendedInformation|.
        DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t587.
        IF t534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t586 p1 = t587 ).
        ENDIF.
        DATA(t588) = |tags|.
        DATA t589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t589.
        IF t534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t588 p1 = t589 ).
        ENDIF.
        DATA(t590) = |badExample|.
        DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t591.
        IF t534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t590 p1 = t591 ).
        ENDIF.
        DATA(t592) = |goodExample|.
        DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t593.
        IF t534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t592 p1 = t593 ).
        ENDIF.
        t533 = t534->key.
        DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t595) = me->conf.
        t594 = t595->zlnt_view_read_sr_15c06369f827( ).
        DATA t596 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t596.
        t528 = zcl_lnt_issue=>at_token( i_file = t529 i_token = t530 i_message_26cb = t532 i_key = t533 i_severity = t594 i_fix = t596 ).
        t527 = t528.
        DATA t597 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t598 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t599 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t599.
        t598 = t599.
        DATA(t600) = t598.
        DATA(t601) = t527.
        t600->load( ).
        APPEND t601 TO t600->items.
        t600->save( ).
        DATA(t602) = t598.
        t597 = t602.
        result = t597.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t603 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t603.
    result = t603.

  ENDMETHOD.

  METHOD is_chained.
    DATA(t1) = i_node.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA(t9) = abap_false.
      result = t9.
      RETURN.
    ELSE.
      DATA t10 TYPE abap_bool.
      DATA(t11) = t1.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t10 = abap_true.
        DATA(t12) = VALUE abap_bool( ).
        DATA t13 TYPE REF TO zcl_lnt_abstract_token.
        DATA t14 TYPE REF TO zcl_lnt_abstract_token.
        DATA t15 TYPE REF TO zcl_lnt_statement_node.
        DATA t16 TYPE REF TO zcl_lnt_statement_node.
        DATA(t17) = t1.
        DATA t18 TYPE REF TO object.
        t18 = t17.
        t16 ?= t18.
        t15 = t16.
        DATA t19 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t20) = t15.
        t19 = t20->colon.
        t14 = t19.
        t13 = t14.
        DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t22.
        t21 = t22.
        DATA(t23) = VALUE abap_bool( ).
        DATA(t24) = VALUE abap_bool( ).
        DATA(t25) = t13.
        IF t25 IS INITIAL.
          t24 = abap_true.
        ENDIF.
        t23 = xsdbool( t24 = abap_false ).
        t12 = t23.
        result = t12.
        RETURN.
      ELSE.
        DATA t26 TYPE abap_bool.
        DATA t27 TYPE REF TO zcl_lnt_statement_node.
        DATA t28 TYPE REF TO zcl_lnt_structure_node.
        DATA(t29) = t1.
        DATA t30 TYPE REF TO object.
        t30 = t29.
        t28 ?= t30.
        t27 = t28->get_first_statement( ).
        t26 = me->is_chained( i_node = t27 ).
        result = t26.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_idntcl_cntnts_cnf( me->gt_cn_in_sr_rl_id_cn_ts_id_cnt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_idntcl_cntnts_cnf( me->gt_cn_in_sr_rl_id_cn_ts_id_cnt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_idntcl_cntnts_cnf.
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
        t1 = NEW zcl_lnt_idntcl_cntnts_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_id_cn_ts_id_cnt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_id_cn_ts_id_cnt( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1527_a5b0dd9a3e57.
  ENDMETHOD.
ENDCLASS.
