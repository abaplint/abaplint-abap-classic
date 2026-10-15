* TS: src/rules/prefer_insert_into_table.ts:12:1 PreferInsertIntoTable
CLASS zcl_lnt_prfr_insrt_int_tbl DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prfr_insrt_int_tbl_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_p_i_i_t_t_p_in_in_tb RETURNING VALUE(result) TYPE REF TO zcl_lnt_prfr_insrt_int_tbl_cnf.
    METHODS s_c_i_s_r_p_i_i_t_t_p_in_in_tb IMPORTING i_conf TYPE REF TO zcl_lnt_prfr_insrt_int_tbl_cnf.
    METHODS r_p_i_s_r_p_i_i_t_t_p_in_in_tb IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_stat TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prfr_insrt_int_tbl IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_prfr_insrt_int_tbl_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |prefer_insert_into_table|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Prefer INSERT INTO TABLE over APPEND|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Prefer INSERT INTO TABLE over APPEND|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |INSERT INTO TABLE respects the table type, while APPEND alwa|.
      t11 = t11 && |ys tries to add to the end. This will dump if the sort order|.
      t11 = t11 && | of a sorted table would change.\n\nhttps://github.com/SAP/sty|.
      t11 = t11 && |leguides/blob/main/clean-abap/CleanABAP.md#prefer-insert-int|.
      t11 = t11 && |o-table-to-append-to|.
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
      DATA(t23) = |Styleguide|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |Quickfix|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      t17 = t26.
      t15 = t17.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t27.
      t15 = t27.
    ENDIF.
    t14 = t15.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |APPEND row TO itab.|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA(t36) = abap_true.
    IF t36 = abap_true.
      DATA(t37) = |INSERT row INTO TABLE itab.|.
      DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t38->has = abap_true.
      t38->value = t37.
      t35 = t38.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      t35 = t39.
    ENDIF.
    t34 = t35.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t51) = |key|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |title|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |shortDescription|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |extendedInformation|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |tags|.
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
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_p_i_i_t_t_p_in_in_tb.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_p_i_i_t_t_p_in_in_tb.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_p_i_i_t_t_p_in_in_tb.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->statements.
    t4 = t7.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t4->load( ).
      IF t11 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t4->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE REF TO zif_lnt_statement.
      DATA(t17) = t9.
      t16 = t17->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_append ).
      t14 = xsdbool( t15 = abap_false ).
      IF t14 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE i( ).
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA(t22) = t9.
      t21 = t22->concat_tokens( ).
      DATA(t23) = strlen( t21 ).
      t20 = t21.
      IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t20 TO UPPER CASE.
      ELSE.
        t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
      ENDIF.
      DATA(t24) = | SORTED BY |.
      DATA(t25) = strlen( t20 ).
      IF t24 IS INITIAL.
        t19 = 0.
      ELSE.
        FIND t24 IN t20 MATCH OFFSET t19.
        IF sy-subrc <> 0.
          t19 = -1.
        ENDIF.
      ENDIF.
      DATA(t26) = 0.
      t18 = xsdbool( t19 >= t26 ).
      IF t18 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t27 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t28 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t29) = t1.
      DATA(t30) = t9.
      t28 = me->build_fix( i_file = t29 i_stat = t30 ).
      t27 = t28.
      DATA t31 TYPE string.
      DATA(t32) = |Prefer INSERT INTO TABLE over APPEND|.
      t31 = t32.
      DATA(t33) = t2.
      DATA t34 TYPE REF TO zcl_lnt_issue.
      CLEAR t34.
      DATA(t35) = t1.
      DATA(t36) = t9.
      DATA(t37) = t31.
      DATA(t38) = VALUE string( ).
      DATA t39 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t39.
      DATA t40 TYPE string.
      DATA(t41) = |prefer_insert_into_table|.
      t40 = t41.
      DATA t42 TYPE string.
      DATA(t43) = |Prefer INSERT INTO TABLE over APPEND|.
      t42 = t43.
      DATA t44 TYPE string.
      DATA(t45) = |Prefer INSERT INTO TABLE over APPEND|.
      t44 = t45.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA(t48) = abap_true.
      IF t48 = abap_true.
        DATA(t49) = |INSERT INTO TABLE respects the table type, while APPEND alwa|.
        t49 = t49 && |ys tries to add to the end. This will dump if the sort order|.
        t49 = t49 && | of a sorted table would change.\n\nhttps://github.com/SAP/sty|.
        t49 = t49 && |leguides/blob/main/clean-abap/CleanABAP.md#prefer-insert-int|.
        t49 = t49 && |o-table-to-append-to|.
        DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t50->has = abap_true.
        t50->value = t49.
        t47 = t50.
      ELSE.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        t47 = t51.
      ENDIF.
      t46 = t47.
      DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t52.
      DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t53.
      DATA(t54) = abap_true.
      IF t54 = abap_true.
        DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t57.
        t56 = t57.
        DATA(t58) = t56.
        DATA(t59) = |SingleFile|.
        t58->load( ).
        APPEND t59 TO t58->items.
        t58->save( ).
        DATA(t60) = t56.
        DATA(t61) = |Styleguide|.
        t60->load( ).
        APPEND t61 TO t60->items.
        t60->save( ).
        DATA(t62) = t56.
        DATA(t63) = |Quickfix|.
        t62->load( ).
        APPEND t63 TO t62->items.
        t62->save( ).
        DATA(t64) = t56.
        t55 = t64.
        t53 = t55.
      ELSE.
        DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t65.
        t53 = t65.
      ENDIF.
      t52 = t53.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      DATA(t68) = abap_true.
      IF t68 = abap_true.
        DATA(t69) = |APPEND row TO itab.|.
        DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t70->has = abap_true.
        t70->value = t69.
        t67 = t70.
      ELSE.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        t67 = t71.
      ENDIF.
      t66 = t67.
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t72.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t73.
      DATA(t74) = abap_true.
      IF t74 = abap_true.
        DATA(t75) = |INSERT row INTO TABLE itab.|.
        DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t76->has = abap_true.
        t76->value = t75.
        t73 = t76.
      ELSE.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        t73 = t77.
      ENDIF.
      t72 = t73.
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t79.
      t78 = t79.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t81.
      t80 = t81.
      t39 = NEW zcl_lnt_irule_metadata( i_key = t40 i_title = t42 i_short_description = t44 i_bad_example = t66 i_good_example = t72 i_extended_information = t46 i_tags = t52 i_pragma = t78 i_pseudo_comment = t80 ).
      CREATE OBJECT t39->zlnt_view_ownkeys_b0e8086400eb.
      t39->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t82 ).
      ENDIF.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t83 ).
      ENDIF.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t84.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t84 ).
      ENDIF.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t85 ).
      ENDIF.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t86 ).
      ENDIF.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t87 ).
      ENDIF.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t88 ).
      ENDIF.
      CREATE OBJECT t39->zlnt_json_ownkeys_70e5fd461788.
      t39->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t89) = |key|.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
      ENDIF.
      DATA(t91) = |title|.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
      ENDIF.
      DATA(t93) = |shortDescription|.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
      ENDIF.
      DATA(t95) = |extendedInformation|.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
      ENDIF.
      DATA(t97) = |tags|.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
      ENDIF.
      DATA(t99) = |badExample|.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = t99 p1 = t100 ).
      ENDIF.
      DATA(t101) = |goodExample|.
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t102.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
      ENDIF.
      t38 = t39->key.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t104) = me->conf.
      t103 = t104->zlnt_view_read_sr_15c06369f827( ).
      DATA(t105) = t27.
      DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t106.
      t34 = zcl_lnt_issue=>at_statement( i_file = t35 i_statement = t36 i_message_26cb = t37 i_key = t38 i_severity = t103 i_fix = t105 i_alternative_fixes = t106 ).
      t33->load( ).
      APPEND t34 TO t33->items.
      t33->save( ).
    ENDDO.
    DATA(t107) = t2.
    result = t107.

  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_stat.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t2.
    t4 = t5->get_tokens( ).
    t3 = t4.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    DATA(t8) = t3.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    t8->load( ).
    CLEAR t9.
    READ TABLE t8->items INDEX 1 INTO t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    CLEAR t7.
    IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t10 ?= t9.
      DATA t11 TYPE REF TO object.
      t11 = t10->as_ref( ).
      t7 ?= t11.
    ELSE.
      t7 ?= t9.
    ENDIF.
    t6 = t7.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE string.
    DATA t14 TYPE string.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t16) = t6.
    t15 = t16.
    DATA t17 TYPE string.
    DATA(t18) = t15.
    t17 = t18->str.
    t14 = t17.
    DATA(t19) = strlen( t14 ).
    t13 = t14.
    IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t13 TO UPPER CASE.
    ELSE.
      t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
    ENDIF.
    DATA(t20) = |APPEND|.
    t12 = xsdbool( t13 <> t20 ).
    IF t12 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t21.
      result = t21.
      RETURN.
    ENDIF.
    DATA t22 TYPE i.
    DATA(t23) = -1.
    t22 = t23.
    DATA t24 TYPE i.
    DATA t25 TYPE i.
    DATA t26 TYPE i.
    DATA(t27) = t3.
    t27->load( ).
    t26 = lines( t27->items ).
    DATA(t28) = 1.
    t25 = t26 - t28.
    t24 = t25.
    DO.
      DATA t29 TYPE abap_bool.
      DATA(t30) = t24.
      DATA(t31) = 0.
      t29 = xsdbool( t30 >= t31 ).
      IF t29 = abap_false.
        EXIT.
      ENDIF.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = VALUE string( ).
      DATA(t34) = VALUE string( ).
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t35.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t36.
      DATA(t37) = t3.
      DATA(t38) = t24.
      t38 = t38 + 1.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      t37->load( ).
      CLEAR t39.
      READ TABLE t37->items INDEX t38 INTO t39.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      CLEAR t36.
      IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t40 ?= t39.
        DATA t41 TYPE REF TO object.
        t41 = t40->as_ref( ).
        t36 ?= t41.
      ELSE.
        t36 ?= t39.
      ENDIF.
      t35 = t36.
      DATA t42 TYPE string.
      DATA(t43) = t35.
      t42 = t43->str.
      t34 = t42.
      DATA(t44) = strlen( t34 ).
      t33 = t34.
      IF t33 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t33 TO UPPER CASE.
      ELSE.
        t33 = zlnt_runtime_uppe_91169605024d=>full( t33 ).
      ENDIF.
      DATA(t45) = |TO|.
      t32 = xsdbool( t33 = t45 ).
      IF t32 = abap_true.
        DATA(t46) = t24.
        t22 = t46.
        EXIT.
      ENDIF.
      DATA t47 TYPE i.
      DATA(t48) = t24.
      DATA(t49) = 1.
      t47 = t48 - t49.
      t24 = t47.
    ENDDO.
    DATA t50 TYPE abap_bool.
    DATA(t51) = t22.
    DATA(t52) = 0.
    t50 = xsdbool( t51 < t52 ).
    IF t50 = abap_true.
      DATA t53 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t53.
      result = t53.
      RETURN.
    ENDIF.
    DATA t54 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t54.
    DATA t55 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t55.
    DATA(t56) = t3.
    DATA(t57) = t22.
    t57 = t57 + 1.
    DATA t58 TYPE REF TO object.
    CLEAR t58.
    t56->load( ).
    CLEAR t58.
    READ TABLE t56->items INDEX t57 INTO t58.
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
    t54 = t55.
    DATA t61 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t62 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t63) = t1.
    DATA(t64) = t6.
    DATA(t65) = |INSERT|.
    t62 = zcl_lnt_edit_helper=>replace_token( i_file = t63 i_token = t64 i_text = t65 ).
    t61 = t62.
    DATA t66 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t67 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t68) = t1.
    DATA(t69) = t54.
    DATA(t70) = |INTO TABLE|.
    t67 = zcl_lnt_edit_helper=>replace_token( i_file = t68 i_token = t69 i_text = t70 ).
    t66 = t67.
    DATA t71 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t71.
    DATA(t72) = abap_true.
    IF t72 = abap_true.
      DATA t73 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t74) = t61.
      DATA(t75) = t66.
      t73 = zcl_lnt_edit_helper=>merge( i_fix1 = t74 i_fix2 = t75 ).
      t71 = t73.
    ELSE.
      DATA t76 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t76.
      t71 = t76.
    ENDIF.
    result = t71.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prfr_insrt_int_tbl_cnf( me->g_c_i_s_r_p_i_i_t_t_p_in_in_tb( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prfr_insrt_int_tbl_cnf( me->g_c_i_s_r_p_i_i_t_t_p_in_in_tb( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prfr_insrt_int_tbl_cnf.
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
        t1 = NEW zcl_lnt_prfr_insrt_int_tbl_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_p_i_i_t_t_p_in_in_tb( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_p_i_i_t_t_p_in_in_tb( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1658_a961490accb8.
  ENDMETHOD.
ENDCLASS.
