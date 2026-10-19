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
    me->conf = NEW zcl_lnt_idntcl_cntnts_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |identical_contents|.
    DATA t4 TYPE string.
    t4 = |Identical contents|.
    DATA t6 TYPE string.
    DATA(t7) = |Find identical contents in blocks inside IFs, both in the be|.
    t7 = t7 && |ginning and in the end.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |\nPrerequsites: code is pretty printed with identical cAsE\n\nC|.
    t11 = t11 && |hained statments are ignored|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |SingleFile|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |IF foo = bar.\n  WRITE 'bar'.\n  WRITE 'world'.\nELSE.\n  WRITE |.
    t27 = t27 && |'foo'.\n  WRITE 'world'.\nENDIF.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |IF foo = bar.\n  WRITE 'bar'.\nELSE.\n  WRITE 'foo'.\nENDIF.\nWRI|.
    t33 = t33 && |TE 'world'.|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    t30 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_id_cn_ts_id_cnt.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_id_cn_ts_id_cnt.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_id_cn_ts_id_cnt.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    t8 = t1->structure.
    t4 = t8.
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( t4 IS INITIAL ).
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t21 = t1->statements.
    t18 = t21.
    DATA t23 TYPE REF TO zcl_lnt_statement_node.
    DATA t24 TYPE REF TO object.
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
      t29 = t23->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
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
    t33 = t4.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
    t32 = t33->find_all_structures_recursive( i_type_9913 = t35 ).
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
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t43 = me->analyze_if( i_file = t1 i_node = t36 ).
      t41 = t2->concat( p0 = t43 ).
      t2 = t41.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD analyze_if.
    DATA(t1) = i_file.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
    t4 = t2->find_direct_structure( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
    t10 = t2->find_direct_structures( i_type_9913 = t12 ).
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE abap_bool.
    t14 = xsdbool( t9 IS BOUND ).
    IF t14 = abap_true.
      t13 = t9.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      t13 = t17.
    ENDIF.
    t7 = t13.
    DATA t18 TYPE REF TO zcl_lnt_structure_node.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    DATA t21 TYPE REF TO zcl_lnt_structure_node.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d734_f05b24426da6.
    t21 = t2->find_direct_structure( i_type_9913 = t23 ).
    t20 = t21.
    DATA t24 TYPE REF TO zcl_lnt_structure_node.
    DATA(t25) = xsdbool( t20 IS INITIAL ).
    IF t25 = abap_true.
    ELSE.
      DATA t28 TYPE REF TO zcl_lnt_structure_node.
      DATA t29 TYPE REF TO zcl_lnt_structure_node.
      t29 = t20.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
      t28 = t29->find_direct_structure( i_type_9913 = t31 ).
      t24 = t28.
    ENDIF.
    t18 = t24.
    DATA(t32) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t32 = xsdbool( t18 IS INITIAL ).
    IF t32 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t39.
      result = t39.
      RETURN.
    ENDIF.
    DATA t40 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t42 TYPE REF TO zcl_lnt_structure_node.
    t42 = t3.
    DATA t44 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA(t45) = xsdbool( t42 IS INITIAL ).
    IF t45 = abap_true.
    ELSE.
      DATA t48 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA t49 TYPE REF TO zif_lnt_node.
      DATA t50 TYPE REF TO zcl_lnt_abstract_node.
      t50 = t42.
      DATA t55 TYPE REF TO zif_lnt_node.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t56 = t50->children.
      DATA t58 TYPE REF TO object.
      t56->load( ).
      READ TABLE t56->items INDEX 1 INTO t58.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t58 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t59 ?= t58.
        DATA t60 TYPE REF TO object.
        t60 = t59->as_ref( ).
        t55 ?= t60.
      ELSE.
        t55 ?= t58.
      ENDIF.
      t49 = t55.
      t48 ?= t49.
      t44 = t48.
    ENDIF.
    t40 = t44.
    DATA t62 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t64 TYPE REF TO zcl_lnt_structure_node.
    t64 = t18.
    DATA t67 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA(t68) = xsdbool( t64 IS INITIAL ).
    IF t68 = abap_true.
    ELSE.
      DATA t71 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA t72 TYPE REF TO zif_lnt_node.
      DATA t73 TYPE REF TO zcl_lnt_abstract_node.
      t73 = t64.
      DATA t77 TYPE REF TO zif_lnt_node.
      DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t78 = t73->children.
      DATA t80 TYPE REF TO object.
      t78->load( ).
      READ TABLE t78->items INDEX 1 INTO t80.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t80 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t81 ?= t80.
        DATA t82 TYPE REF TO object.
        t82 = t81->as_ref( ).
        t77 ?= t82.
      ELSE.
        t77 ?= t80.
      ENDIF.
      t72 = t77.
      t71 ?= t72.
      t67 = t71.
    ENDIF.
    t62 = t67.
    DATA t84 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t86 TYPE REF TO zcl_lnt_structure_node.
    t86 = t3.
    DATA t88 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA(t89) = xsdbool( t86 IS INITIAL ).
    IF t89 = abap_true.
    ELSE.
      DATA t92 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA t93 TYPE REF TO zif_lnt_node.
      DATA t94 TYPE REF TO zcl_lnt_abstract_node.
      t94 = t86.
      DATA t99 TYPE REF TO zif_lnt_node.
      DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t100 = t94->children.
      DATA t102 TYPE i.
      DATA t103 TYPE i.
      DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t104 = t94->children.
      t104->load( ).
      t103 = lines( t104->items ).
      DATA(t106) = 1.
      t102 = t103 - t106.
      t102 = t102 + 1.
      DATA t107 TYPE REF TO object.
      t100->load( ).
      READ TABLE t100->items INDEX t102 INTO t107.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t107 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t108 ?= t107.
        DATA t109 TYPE REF TO object.
        t109 = t108->as_ref( ).
        t99 ?= t109.
      ELSE.
        t99 ?= t107.
      ENDIF.
      t93 = t99.
      t92 ?= t93.
      t88 = t92.
    ENDIF.
    t84 = t88.
    DATA t111 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t113 TYPE REF TO zcl_lnt_structure_node.
    t113 = t18.
    DATA t116 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA(t117) = xsdbool( t113 IS INITIAL ).
    IF t117 = abap_true.
    ELSE.
      DATA t120 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA t121 TYPE REF TO zif_lnt_node.
      DATA t122 TYPE REF TO zcl_lnt_abstract_node.
      t122 = t113.
      DATA t126 TYPE REF TO zif_lnt_node.
      DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t127 = t122->children.
      DATA t129 TYPE i.
      DATA t130 TYPE i.
      DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t131 = t122->children.
      t131->load( ).
      t130 = lines( t131->items ).
      DATA(t133) = 1.
      t129 = t130 - t133.
      t129 = t129 + 1.
      DATA t134 TYPE REF TO object.
      t127->load( ).
      READ TABLE t127->items INDEX t129 INTO t134.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t134 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t135 ?= t134.
        DATA t136 TYPE REF TO object.
        t136 = t135->as_ref( ).
        t126 ?= t136.
      ELSE.
        t126 ?= t134.
      ENDIF.
      t121 = t126.
      t120 ?= t121.
      t116 = t120.
    ENDIF.
    t111 = t116.
    DATA t138 TYPE abap_bool.
    DATA t139 TYPE i.
    t7->load( ).
    t139 = lines( t7->items ).
    DATA(t141) = 0.
    t138 = xsdbool( t139 > t141 ).
    IF t138 = abap_true.
      DATA t142 TYPE abap_bool.
      t142 = abap_true.
      DATA t144 TYPE abap_bool.
      t144 = abap_true.
      DATA t147 TYPE REF TO zcl_lnt_structure_node.
      DATA t148 TYPE REF TO object.
      DATA(t149) = VALUE i( ).
      DO.
        t7->load( ).
        IF t149 >= lines( t7->items ).
          EXIT.
        ENDIF.
        CLEAR t148.
        READ TABLE t7->items INDEX t149 + 1 INTO t148.
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
        DATA(t155) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
        t153 = t147->find_direct_structure( i_type_9913 = t155 ).
        t152 = t153.
        DATA t156 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t156.
        DATA t158 TYPE REF TO zcl_lnt_structure_node.
        t158 = t152.
        DATA t160 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t160.
        DATA(t161) = xsdbool( t158 IS INITIAL ).
        IF t161 = abap_true.
          CLEAR t160.
        ELSE.
          DATA t164 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t164.
          DATA t165 TYPE REF TO zif_lnt_node.
          CLEAR t165.
          DATA t166 TYPE REF TO zcl_lnt_abstract_node.
          t166 = t158.
          DATA t171 TYPE REF TO zif_lnt_node.
          CLEAR t171.
          DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t172 = t166->children.
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
          t165 = t171.
          t164 ?= t165.
          t160 = t164.
        ENDIF.
        t156 = t160.
        DATA t178 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t178.
        DATA t180 TYPE REF TO zcl_lnt_structure_node.
        t180 = t152.
        DATA t182 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t182.
        DATA(t183) = xsdbool( t180 IS INITIAL ).
        IF t183 = abap_true.
          CLEAR t182.
        ELSE.
          DATA t186 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t186.
          DATA t187 TYPE REF TO zif_lnt_node.
          CLEAR t187.
          DATA t188 TYPE REF TO zcl_lnt_abstract_node.
          t188 = t180.
          DATA t193 TYPE REF TO zif_lnt_node.
          CLEAR t193.
          DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t194 = t188->children.
          DATA t196 TYPE i.
          DATA t197 TYPE i.
          DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t198 = t188->children.
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
          t187 = t193.
          t186 ?= t187.
          t182 = t186.
        ENDIF.
        t178 = t182.
        DATA(t205) = VALUE abap_bool( ).
        DATA(t206) = VALUE abap_bool( ).
        DATA(t207) = VALUE abap_bool( ).
        DATA(t208) = VALUE abap_bool( ).
        DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t211.
        t208 = xsdbool( t40 IS INITIAL ).
        t207 = t208.
        IF t208 = abap_false.
          DATA(t215) = VALUE abap_bool( ).
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t218.
          t215 = xsdbool( t84 IS INITIAL ).
          t207 = t215.
        ENDIF.
        t206 = t207.
        IF t207 = abap_false.
          DATA(t222) = VALUE abap_bool( ).
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          t222 = xsdbool( t111 IS INITIAL ).
          t206 = t222.
        ENDIF.
        t205 = t206.
        IF t206 = abap_false.
          DATA(t229) = VALUE abap_bool( ).
          DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t232.
          t229 = xsdbool( t62 IS INITIAL ).
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
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t242.
        t239 = xsdbool( t156 IS INITIAL ).
        t238 = t239.
        IF t239 = abap_false.
          DATA t246 TYPE abap_bool.
          DATA t247 TYPE string.
          DATA t248 TYPE REF TO zif_lnt_union_8249fcb1.
          t248 = t40.
          t247 = t248->concat_tokens( ).
          DATA t250 TYPE string.
          DATA t251 TYPE REF TO zif_lnt_union_8249fcb1.
          t251 = t156.
          t250 = t251->concat_tokens( ).
          t246 = xsdbool( t247 <> t250 ).
          t238 = t246.
        ENDIF.
        t237 = t238.
        IF t238 = abap_false.
          DATA t253 TYPE abap_bool.
          DATA t254 TYPE string.
          DATA t255 TYPE REF TO zif_lnt_union_8249fcb1.
          t255 = t62.
          t254 = t255->concat_tokens( ).
          DATA t257 TYPE string.
          DATA t258 TYPE REF TO zif_lnt_union_8249fcb1.
          t258 = t156.
          t257 = t258->concat_tokens( ).
          t253 = xsdbool( t254 <> t257 ).
          t237 = t253.
        ENDIF.
        IF t237 = abap_true.
          t142 = abap_false.
        ENDIF.
        DATA(t261) = VALUE abap_bool( ).
        DATA(t262) = VALUE abap_bool( ).
        DATA(t263) = VALUE abap_bool( ).
        DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t266.
        t263 = xsdbool( t178 IS INITIAL ).
        t262 = t263.
        IF t263 = abap_false.
          DATA t270 TYPE abap_bool.
          DATA t271 TYPE string.
          DATA t272 TYPE REF TO zif_lnt_union_8249fcb1.
          t272 = t84.
          t271 = t272->concat_tokens( ).
          DATA t274 TYPE string.
          DATA t275 TYPE REF TO zif_lnt_union_8249fcb1.
          t275 = t178.
          t274 = t275->concat_tokens( ).
          t270 = xsdbool( t271 <> t274 ).
          t262 = t270.
        ENDIF.
        t261 = t262.
        IF t262 = abap_false.
          DATA t277 TYPE abap_bool.
          DATA t278 TYPE string.
          DATA t279 TYPE REF TO zif_lnt_union_8249fcb1.
          t279 = t111.
          t278 = t279->concat_tokens( ).
          DATA t281 TYPE string.
          DATA t282 TYPE REF TO zif_lnt_union_8249fcb1.
          t282 = t178.
          t281 = t282->concat_tokens( ).
          t277 = xsdbool( t278 <> t281 ).
          t261 = t277.
        ENDIF.
        IF t261 = abap_true.
          t144 = abap_false.
        ENDIF.
      ENDDO.
      DATA t285 TYPE abap_bool.
      DATA t286 TYPE abap_bool.
      t286 = xsdbool( t142 = abap_true ).
      t285 = t286.
      IF t286 = abap_false.
        DATA t289 TYPE abap_bool.
        t289 = xsdbool( t144 = abap_true ).
        t285 = t289.
      ENDIF.
      IF t285 = abap_true.
        DATA(t293) = |Identical contents|.
        DATA t295 TYPE REF TO zcl_lnt_issue.
        DATA t297 TYPE REF TO zcl_lnt_abstract_token.
        t297 = t2->get_first_token( ).
        DATA(t300) = VALUE string( ).
        DATA t301 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t302 TYPE string.
        t302 = |identical_contents|.
        DATA t304 TYPE string.
        t304 = |Identical contents|.
        DATA t306 TYPE string.
        DATA(t307) = |Find identical contents in blocks inside IFs, both in the be|.
        t307 = t307 && |ginning and in the end.|.
        t306 = t307.
        DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t311) = |\nPrerequsites: code is pretty printed with identical cAsE\n\nC|.
        t311 = t311 && |hained statments are ignored|.
        DATA(t312) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t312->has = abap_true.
        t312->value = t311.
        t308 = t312.
        DATA t314 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t318 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t319.
        t318 = t319.
        DATA(t321) = |SingleFile|.
        t318->load( ).
        APPEND t321 TO t318->items.
        t318->save( ).
        t314 = t318.
        DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t327) = |IF foo = bar.\n  WRITE 'bar'.\n  WRITE 'world'.\nELSE.\n  WRITE |.
        t327 = t327 && |'foo'.\n  WRITE 'world'.\nENDIF.|.
        DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t328->has = abap_true.
        t328->value = t327.
        t324 = t328.
        DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t333) = |IF foo = bar.\n  WRITE 'bar'.\nELSE.\n  WRITE 'foo'.\nENDIF.\nWRI|.
        t333 = t333 && |TE 'world'.|.
        DATA(t334) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t334->has = abap_true.
        t334->value = t333.
        t330 = t334.
        DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t301 = NEW zcl_lnt_irule_metadata( i_key = t302 i_title = t304 i_short_description = t306 i_bad_example = t324 i_good_example = t330 i_extended_information = t308 i_tags = t314 i_pragma = t336 i_pseudo_comment = t338 ).
        CREATE OBJECT t301->zlnt_view_ownkeys_b0e8086400eb.
        t301->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t340 ).
        DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t341 ).
        ENDIF.
        DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t342 ).
        ENDIF.
        DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t343 ).
        ENDIF.
        DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t344 ).
        ENDIF.
        DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t345 ).
        ENDIF.
        DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t346 ).
        ENDIF.
        CREATE OBJECT t301->zlnt_json_ownkeys_70e5fd461788.
        t301->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t347) = |key|.
        DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t347 p1 = t348 ).
        DATA(t349) = |title|.
        DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t349 p1 = t350 ).
        ENDIF.
        DATA(t351) = |shortDescription|.
        DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t351 p1 = t352 ).
        ENDIF.
        DATA(t353) = |extendedInformation|.
        DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t353 p1 = t354 ).
        ENDIF.
        DATA(t355) = |tags|.
        DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t355 p1 = t356 ).
        ENDIF.
        DATA(t357) = |badExample|.
        DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t357 p1 = t358 ).
        ENDIF.
        DATA(t359) = |goodExample|.
        DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t359 p1 = t360 ).
        ENDIF.
        t300 = t301->key.
        DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t361 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t363 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t295 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t297 i_message_26cb = t293 i_key = t300 i_severity = t361 i_fix = t363 ).
        DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t366.
        t365 = t366.
        t365->load( ).
        APPEND t295 TO t365->items.
        t365->save( ).
        result = t365.
        RETURN.
      ENDIF.
      DATA t370 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t370.
      result = t370.
      RETURN.
    ELSE.
      DATA(t371) = VALUE abap_bool( ).
      DATA(t372) = VALUE abap_bool( ).
      DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t372 = xsdbool( t18 IS INITIAL ).
      t371 = t372.
      IF t372 = abap_false.
        DATA(t379) = VALUE abap_bool( ).
        DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t379 = xsdbool( t3 IS INITIAL ).
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
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t389 = xsdbool( t40 IS INITIAL ).
    t388 = t389.
    IF t389 = abap_false.
      DATA(t396) = VALUE abap_bool( ).
      DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t396 = xsdbool( t62 IS INITIAL ).
      t388 = t396.
    ENDIF.
    t387 = t388.
    IF t388 = abap_false.
      DATA(t403) = VALUE abap_bool( ).
      DATA t404 TYPE REF TO zif_lnt_union_8249fcb1.
      t404 = t40.
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
      t412 = t40.
      t411 = t412->concat_tokens( ).
      DATA t414 TYPE string.
      DATA t415 TYPE REF TO zif_lnt_union_8249fcb1.
      t415 = t62.
      t414 = t415->concat_tokens( ).
      t410 = xsdbool( t411 = t414 ).
      IF t410 = abap_true.
        DATA(t418) = |Identical contents|.
        DATA t420 TYPE REF TO zcl_lnt_issue.
        DATA t422 TYPE REF TO zcl_lnt_abstract_token.
        t422 = t2->get_first_token( ).
        DATA(t425) = VALUE string( ).
        DATA t426 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t427 TYPE string.
        t427 = |identical_contents|.
        DATA t429 TYPE string.
        t429 = |Identical contents|.
        DATA t431 TYPE string.
        DATA(t432) = |Find identical contents in blocks inside IFs, both in the be|.
        t432 = t432 && |ginning and in the end.|.
        t431 = t432.
        DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t436) = |\nPrerequsites: code is pretty printed with identical cAsE\n\nC|.
        t436 = t436 && |hained statments are ignored|.
        DATA(t437) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t437->has = abap_true.
        t437->value = t436.
        t433 = t437.
        DATA t439 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t443 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t444 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t444.
        t443 = t444.
        DATA(t446) = |SingleFile|.
        t443->load( ).
        APPEND t446 TO t443->items.
        t443->save( ).
        t439 = t443.
        DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t452) = |IF foo = bar.\n  WRITE 'bar'.\n  WRITE 'world'.\nELSE.\n  WRITE |.
        t452 = t452 && |'foo'.\n  WRITE 'world'.\nENDIF.|.
        DATA(t453) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t453->has = abap_true.
        t453->value = t452.
        t449 = t453.
        DATA t455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t458) = |IF foo = bar.\n  WRITE 'bar'.\nELSE.\n  WRITE 'foo'.\nENDIF.\nWRI|.
        t458 = t458 && |TE 'world'.|.
        DATA(t459) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t459->has = abap_true.
        t459->value = t458.
        t455 = t459.
        DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t426 = NEW zcl_lnt_irule_metadata( i_key = t427 i_title = t429 i_short_description = t431 i_bad_example = t449 i_good_example = t455 i_extended_information = t433 i_tags = t439 i_pragma = t461 i_pseudo_comment = t463 ).
        CREATE OBJECT t426->zlnt_view_ownkeys_b0e8086400eb.
        t426->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t426->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t465 ).
        DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t426->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t426->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t466 ).
        ENDIF.
        DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t426->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t426->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t467 ).
        ENDIF.
        DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t426->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t426->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t468 ).
        ENDIF.
        DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t426->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t426->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t469 ).
        ENDIF.
        DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t426->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t426->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t470 ).
        ENDIF.
        DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t426->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t426->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t471 ).
        ENDIF.
        CREATE OBJECT t426->zlnt_json_ownkeys_70e5fd461788.
        t426->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t472) = |key|.
        DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t426->zlnt_json_ownkeys_70e5fd461788->put( p0 = t472 p1 = t473 ).
        DATA(t474) = |title|.
        DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t426->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t426->zlnt_json_ownkeys_70e5fd461788->put( p0 = t474 p1 = t475 ).
        ENDIF.
        DATA(t476) = |shortDescription|.
        DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t426->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t426->zlnt_json_ownkeys_70e5fd461788->put( p0 = t476 p1 = t477 ).
        ENDIF.
        DATA(t478) = |extendedInformation|.
        DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t426->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t426->zlnt_json_ownkeys_70e5fd461788->put( p0 = t478 p1 = t479 ).
        ENDIF.
        DATA(t480) = |tags|.
        DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t426->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t426->zlnt_json_ownkeys_70e5fd461788->put( p0 = t480 p1 = t481 ).
        ENDIF.
        DATA(t482) = |badExample|.
        DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t426->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t426->zlnt_json_ownkeys_70e5fd461788->put( p0 = t482 p1 = t483 ).
        ENDIF.
        DATA(t484) = |goodExample|.
        DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t426->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t426->zlnt_json_ownkeys_70e5fd461788->put( p0 = t484 p1 = t485 ).
        ENDIF.
        t425 = t426->key.
        DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t486 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t488 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t420 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t422 i_message_26cb = t418 i_key = t425 i_severity = t486 i_fix = t488 ).
        DATA t490 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t491 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t491.
        t490 = t491.
        t490->load( ).
        APPEND t420 TO t490->items.
        t490->save( ).
        result = t490.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t495) = VALUE abap_bool( ).
    DATA(t496) = VALUE abap_bool( ).
    DATA(t497) = VALUE abap_bool( ).
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t497 = xsdbool( t84 IS INITIAL ).
    t496 = t497.
    IF t497 = abap_false.
      DATA(t504) = VALUE abap_bool( ).
      DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t504 = xsdbool( t111 IS INITIAL ).
      t496 = t504.
    ENDIF.
    t495 = t496.
    IF t496 = abap_false.
      DATA(t511) = VALUE abap_bool( ).
      DATA t512 TYPE REF TO zif_lnt_union_8249fcb1.
      t512 = t84.
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
      t520 = t84.
      t519 = t520->concat_tokens( ).
      DATA t522 TYPE string.
      DATA t523 TYPE REF TO zif_lnt_union_8249fcb1.
      t523 = t111.
      t522 = t523->concat_tokens( ).
      t518 = xsdbool( t519 = t522 ).
      IF t518 = abap_true.
        DATA(t526) = |Identical contents|.
        DATA t528 TYPE REF TO zcl_lnt_issue.
        DATA t530 TYPE REF TO zcl_lnt_abstract_token.
        t530 = t2->get_first_token( ).
        DATA(t533) = VALUE string( ).
        DATA t534 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t535 TYPE string.
        t535 = |identical_contents|.
        DATA t537 TYPE string.
        t537 = |Identical contents|.
        DATA t539 TYPE string.
        DATA(t540) = |Find identical contents in blocks inside IFs, both in the be|.
        t540 = t540 && |ginning and in the end.|.
        t539 = t540.
        DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t544) = |\nPrerequsites: code is pretty printed with identical cAsE\n\nC|.
        t544 = t544 && |hained statments are ignored|.
        DATA(t545) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t545->has = abap_true.
        t545->value = t544.
        t541 = t545.
        DATA t547 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t551 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t552 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t552.
        t551 = t552.
        DATA(t554) = |SingleFile|.
        t551->load( ).
        APPEND t554 TO t551->items.
        t551->save( ).
        t547 = t551.
        DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t560) = |IF foo = bar.\n  WRITE 'bar'.\n  WRITE 'world'.\nELSE.\n  WRITE |.
        t560 = t560 && |'foo'.\n  WRITE 'world'.\nENDIF.|.
        DATA(t561) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t561->has = abap_true.
        t561->value = t560.
        t557 = t561.
        DATA t563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t566) = |IF foo = bar.\n  WRITE 'bar'.\nELSE.\n  WRITE 'foo'.\nENDIF.\nWRI|.
        t566 = t566 && |TE 'world'.|.
        DATA(t567) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t567->has = abap_true.
        t567->value = t566.
        t563 = t567.
        DATA t569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t571 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t534 = NEW zcl_lnt_irule_metadata( i_key = t535 i_title = t537 i_short_description = t539 i_bad_example = t557 i_good_example = t563 i_extended_information = t541 i_tags = t547 i_pragma = t569 i_pseudo_comment = t571 ).
        CREATE OBJECT t534->zlnt_view_ownkeys_b0e8086400eb.
        t534->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t573 ).
        DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t574 ).
        ENDIF.
        DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t575 ).
        ENDIF.
        DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t576 ).
        ENDIF.
        DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t577 ).
        ENDIF.
        DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t578 ).
        ENDIF.
        DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t579 ).
        ENDIF.
        CREATE OBJECT t534->zlnt_json_ownkeys_70e5fd461788.
        t534->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t580) = |key|.
        DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t580 p1 = t581 ).
        DATA(t582) = |title|.
        DATA t583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t582 p1 = t583 ).
        ENDIF.
        DATA(t584) = |shortDescription|.
        DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t584 p1 = t585 ).
        ENDIF.
        DATA(t586) = |extendedInformation|.
        DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t586 p1 = t587 ).
        ENDIF.
        DATA(t588) = |tags|.
        DATA t589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t588 p1 = t589 ).
        ENDIF.
        DATA(t590) = |badExample|.
        DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t590 p1 = t591 ).
        ENDIF.
        DATA(t592) = |goodExample|.
        DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t592 p1 = t593 ).
        ENDIF.
        t533 = t534->key.
        DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t594 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t596 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t528 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t530 i_message_26cb = t526 i_key = t533 i_severity = t594 i_fix = t596 ).
        DATA t598 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t599 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t599.
        t598 = t599.
        t598->load( ).
        APPEND t528 TO t598->items.
        t598->save( ).
        result = t598.
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
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2 = xsdbool( t1 IS INITIAL ).
    IF t2 = abap_true.
      result = abap_false.
      RETURN.
    ELSE.
      DATA t10 TYPE abap_bool.
      t10 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t10 = abap_true.
        DATA(t12) = VALUE abap_bool( ).
        DATA t16 TYPE REF TO zcl_lnt_statement_node.
        DATA t18 TYPE REF TO object.
        t18 = t1.
        t16 ?= t18.
        DATA t19 TYPE REF TO zcl_lnt_abstract_token.
        t19 = t16->colon.
        DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t23) = VALUE abap_bool( ).
        DATA(t24) = xsdbool( t19 IS INITIAL ).
        t23 = xsdbool( t24 = abap_false ).
        t12 = t23.
        result = t12.
        RETURN.
      ELSE.
        DATA t26 TYPE abap_bool.
        DATA t27 TYPE REF TO zcl_lnt_statement_node.
        DATA t28 TYPE REF TO zcl_lnt_structure_node.
        DATA t30 TYPE REF TO object.
        t30 = t1.
        t28 ?= t30.
        t27 = t28->get_first_statement( ).
        t26 = me->is_chained( i_node = t27 ).
        result = t26.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_idntcl_cntnts_cnf( me->gt_cn_in_sr_rl_id_cn_ts_id_cnt( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_idntcl_cntnts_cnf( me->gt_cn_in_sr_rl_id_cn_ts_id_cnt( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_idntcl_cntnts_cnf.
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
        t1 = NEW zcl_lnt_idntcl_cntnts_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_id_cn_ts_id_cnt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_id_cn_ts_id_cnt( i_file = i_file ) ).

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
