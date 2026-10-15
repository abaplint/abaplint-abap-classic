* TS: src/rules/fully_type_itabs.ts:12:1 FullyTypeITabs
CLASS zcl_lnt_fully_type_i_tabs DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_fully_type_i_tabs_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_f_t_it_ts_fl_ty_i_tb RETURNING VALUE(result) TYPE REF TO zcl_lnt_fully_type_i_tabs_conf.
    METHODS s_c_i_s_r_f_t_it_ts_fl_ty_i_tb IMPORTING i_conf TYPE REF TO zcl_lnt_fully_type_i_tabs_conf.
    METHODS r_p_i_s_r_f_t_it_ts_fl_ty_i_tb IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fully_type_i_tabs IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_fully_type_i_tabs_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |fully_type_itabs|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Fully type internal tables|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |No implict table types or table keys|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#use-the-right-table-type\nhttps://github.com/SAP/sty|.
      t11 = t11 && |leguides/blob/main/clean-abap/CleanABAP.md#avoid-default-key|.
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
      DATA(t17) = |DATA lt_foo TYPE TABLE OF ty.\nDATA lt_bar TYPE STANDARD TABL|.
      t17 = t17 && |E OF ty.|.
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
      DATA(t23) = |DATA lt_foo TYPE STANDARD TABLE OF ty WITH EMPTY KEY.|.
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
      DATA(t33) = |SingleFile|.
      t32->load( ).
      APPEND t33 TO t32->items.
      t32->save( ).
      DATA(t34) = t30.
      t29 = t34.
      t27 = t29.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t35.
      t27 = t35.
    ENDIF.
    t26 = t27.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t14 i_good_example = t20 i_extended_information = t8 i_tags = t26 i_pragma = t36 i_pseudo_comment = t38 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
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
    DATA(t55) = |badExample|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |goodExample|.
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
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_f_t_it_ts_fl_ty_i_tb.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_f_t_it_ts_fl_ty_i_tb.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_f_t_it_ts_fl_ty_i_tb.
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
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE abap_bool.
      DATA t17 TYPE REF TO zif_lnt_statement.
      DATA(t18) = t9.
      t17 = t18->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_st_data ).
      t15 = t16.
      IF t16 = abap_false.
        DATA t19 TYPE abap_bool.
        DATA t20 TYPE REF TO zif_lnt_statement.
        DATA(t21) = t9.
        t20 = t21->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_st_statem_type ).
        t15 = t19.
      ENDIF.
      t14 = xsdbool( t15 = abap_false ).
      IF t14 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA(t24) = t9.
      DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
      t23 = t24->find_first_expression( i_type_9913 = t25 ).
      t22 = t23.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA(t28) = t22.
      t27 = t28.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      t29 = t30.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = t27.
      IF t32 IS INITIAL.
        t31 = abap_true.
      ENDIF.
      t26 = t31.
      IF t26 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t33) = VALUE string( ).
      DATA t34 TYPE string.
      DATA t35 TYPE string.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = t22.
      t36 = t37.
      t35 = t36->concat_tokens( ).
      DATA(t38) = strlen( t35 ).
      t34 = t35.
      IF t34 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t34 TO UPPER CASE.
      ELSE.
        t34 = zlnt_runtime_uppe_91169605024d=>full( t34 ).
      ENDIF.
      t33 = t34.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE i( ).
      DATA(t41) = t33.
      DATA(t42) = |TYPE TABLE OF|.
      DATA(t43) = strlen( t41 ).
      IF t42 IS INITIAL.
        t40 = 0.
      ELSE.
        FIND t42 IN t41 MATCH OFFSET t40.
        IF sy-subrc <> 0.
          t40 = -1.
        ENDIF.
      ENDIF.
      DATA(t44) = 0.
      t39 = xsdbool( t40 >= t44 ).
      IF t39 = abap_true.
        DATA t45 TYPE string.
        DATA(t46) = |Specify table type|.
        t45 = t46.
        DATA(t47) = t2.
        DATA t48 TYPE REF TO zcl_lnt_issue.
        CLEAR t48.
        DATA(t49) = t1.
        DATA t50 TYPE REF TO zcl_lnt_position.
        DATA t51 TYPE REF TO zcl_lnt_abstract_token.
        DATA t52 TYPE REF TO zcl_lnt_abstract_token.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        DATA(t54) = t22.
        t53 = t54.
        t52 = t53->get_first_token( ).
        t51 = t52.
        DATA t55 TYPE REF TO zcl_lnt_position.
        DATA(t56) = t51.
        t55 = t56->start.
        t50 = t55.
        DATA(t57) = t45.
        DATA(t58) = VALUE string( ).
        DATA t59 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t59.
        DATA t60 TYPE string.
        DATA(t61) = |fully_type_itabs|.
        t60 = t61.
        DATA t62 TYPE string.
        DATA(t63) = |Fully type internal tables|.
        t62 = t63.
        DATA t64 TYPE string.
        DATA(t65) = |No implict table types or table keys|.
        t64 = t65.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA(t68) = abap_true.
        IF t68 = abap_true.
          DATA(t69) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t69 = t69 && |nABAP.md#use-the-right-table-type\nhttps://github.com/SAP/sty|.
          t69 = t69 && |leguides/blob/main/clean-abap/CleanABAP.md#avoid-default-key|.
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
          DATA(t75) = |DATA lt_foo TYPE TABLE OF ty.\nDATA lt_bar TYPE STANDARD TABL|.
          t75 = t75 && |E OF ty.|.
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
        CLEAR t78.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA(t80) = abap_true.
        IF t80 = abap_true.
          DATA(t81) = |DATA lt_foo TYPE STANDARD TABLE OF ty WITH EMPTY KEY.|.
          DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t82->has = abap_true.
          t82->value = t81.
          t79 = t82.
        ELSE.
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t83.
          t79 = t83.
        ENDIF.
        t78 = t79.
        DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t84.
        DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t85.
        DATA(t86) = abap_true.
        IF t86 = abap_true.
          DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t89.
          t88 = t89.
          DATA(t90) = t88.
          DATA(t91) = |SingleFile|.
          t90->load( ).
          APPEND t91 TO t90->items.
          t90->save( ).
          DATA(t92) = t88.
          t87 = t92.
          t85 = t87.
        ELSE.
          DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t93.
          t85 = t93.
        ENDIF.
        t84 = t85.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        t94 = t95.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        t96 = t97.
        t59 = NEW zcl_lnt_irule_metadata( i_key = t60 i_title = t62 i_short_description = t64 i_bad_example = t72 i_good_example = t78 i_extended_information = t66 i_tags = t84 i_pragma = t94 i_pseudo_comment = t96 ).
        CREATE OBJECT t59->zlnt_view_ownkeys_b0e8086400eb.
        t59->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t98 ).
        ENDIF.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t99 ).
        ENDIF.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t100 ).
        ENDIF.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t101 ).
        ENDIF.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t102 ).
        ENDIF.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t103 ).
        ENDIF.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t104 ).
        ENDIF.
        CREATE OBJECT t59->zlnt_json_ownkeys_70e5fd461788.
        t59->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t105) = |key|.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
        ENDIF.
        DATA(t107) = |title|.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
        ENDIF.
        DATA(t109) = |shortDescription|.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t109 p1 = t110 ).
        ENDIF.
        DATA(t111) = |extendedInformation|.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t111 p1 = t112 ).
        ENDIF.
        DATA(t113) = |badExample|.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
        ENDIF.
        DATA(t115) = |goodExample|.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
        ENDIF.
        DATA(t117) = |tags|.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
        ENDIF.
        t58 = t59->key.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t120) = me->conf.
        t119 = t120->zlnt_view_read_sr_15c06369f827( ).
        DATA t121 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t121.
        t48 = zcl_lnt_issue=>at_position( i_file = t49 i_start = t50 i_message_26cb = t57 i_key = t58 i_severity = t119 i_fix = t121 ).
        t47->load( ).
        APPEND t48 TO t47->items.
        t47->save( ).
      ELSE.
        DATA(t122) = VALUE abap_bool( ).
        DATA(t123) = VALUE i( ).
        DATA(t124) = t33.
        DATA(t125) = | TABLE FOR |.
        DATA(t126) = strlen( t124 ).
        IF t125 IS INITIAL.
          t123 = 0.
        ELSE.
          FIND t125 IN t124 MATCH OFFSET t123.
          IF sy-subrc <> 0.
            t123 = -1.
          ENDIF.
        ENDIF.
        DATA(t127) = 0.
        t122 = xsdbool( t123 >= t127 ).
        IF t122 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t128) = VALUE abap_bool( ).
          DATA(t129) = VALUE abap_bool( ).
          DATA(t130) = VALUE abap_bool( ).
          DATA(t131) = VALUE i( ).
          DATA(t132) = t33.
          DATA(t133) = | WITH |.
          DATA(t134) = strlen( t132 ).
          IF t133 IS INITIAL.
            t131 = 0.
          ELSE.
            FIND t133 IN t132 MATCH OFFSET t131.
            IF sy-subrc <> 0.
              t131 = -1.
            ENDIF.
          ENDIF.
          DATA(t135) = 0.
          t130 = xsdbool( t131 >= t135 ).
          DATA(t136) = abap_false.
          t129 = xsdbool( t130 = t136 ).
          t128 = t129.
          IF t129 = abap_true.
            DATA(t137) = VALUE abap_bool( ).
            DATA(t138) = VALUE abap_bool( ).
            DATA(t139) = VALUE i( ).
            DATA(t140) = t33.
            DATA(t141) = | RANGE OF |.
            DATA(t142) = strlen( t140 ).
            IF t141 IS INITIAL.
              t139 = 0.
            ELSE.
              FIND t141 IN t140 MATCH OFFSET t139.
              IF sy-subrc <> 0.
                t139 = -1.
              ENDIF.
            ENDIF.
            DATA(t143) = 0.
            t138 = xsdbool( t139 >= t143 ).
            DATA(t144) = abap_false.
            t137 = xsdbool( t138 = t144 ).
            t128 = t137.
          ENDIF.
          IF t128 = abap_true.
            DATA t145 TYPE string.
            DATA(t146) = |Specify table key|.
            t145 = t146.
            DATA(t147) = t2.
            DATA t148 TYPE REF TO zcl_lnt_issue.
            CLEAR t148.
            DATA(t149) = t1.
            DATA t150 TYPE REF TO zcl_lnt_position.
            DATA t151 TYPE REF TO zcl_lnt_abstract_token.
            DATA t152 TYPE REF TO zcl_lnt_abstract_token.
            DATA t153 TYPE REF TO zcl_lnt_expression_node.
            DATA(t154) = t22.
            t153 = t154.
            t152 = t153->get_first_token( ).
            t151 = t152.
            DATA t155 TYPE REF TO zcl_lnt_position.
            DATA(t156) = t151.
            t155 = t156->start.
            t150 = t155.
            DATA(t157) = t145.
            DATA(t158) = VALUE string( ).
            DATA t159 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t159.
            DATA t160 TYPE string.
            DATA(t161) = |fully_type_itabs|.
            t160 = t161.
            DATA t162 TYPE string.
            DATA(t163) = |Fully type internal tables|.
            t162 = t163.
            DATA t164 TYPE string.
            DATA(t165) = |No implict table types or table keys|.
            t164 = t165.
            DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t166.
            DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t167.
            DATA(t168) = abap_true.
            IF t168 = abap_true.
              DATA(t169) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
              t169 = t169 && |nABAP.md#use-the-right-table-type\nhttps://github.com/SAP/sty|.
              t169 = t169 && |leguides/blob/main/clean-abap/CleanABAP.md#avoid-default-key|.
              DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t170->has = abap_true.
              t170->value = t169.
              t167 = t170.
            ELSE.
              DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t171.
              t167 = t171.
            ENDIF.
            t166 = t167.
            DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t172.
            DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t173.
            DATA(t174) = abap_true.
            IF t174 = abap_true.
              DATA(t175) = |DATA lt_foo TYPE TABLE OF ty.\nDATA lt_bar TYPE STANDARD TABL|.
              t175 = t175 && |E OF ty.|.
              DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t176->has = abap_true.
              t176->value = t175.
              t173 = t176.
            ELSE.
              DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t177.
              t173 = t177.
            ENDIF.
            t172 = t173.
            DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t178.
            DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t179.
            DATA(t180) = abap_true.
            IF t180 = abap_true.
              DATA(t181) = |DATA lt_foo TYPE STANDARD TABLE OF ty WITH EMPTY KEY.|.
              DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t182->has = abap_true.
              t182->value = t181.
              t179 = t182.
            ELSE.
              DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t183.
              t179 = t183.
            ENDIF.
            t178 = t179.
            DATA t184 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t184.
            DATA t185 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t185.
            DATA(t186) = abap_true.
            IF t186 = abap_true.
              DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t189 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t189.
              t188 = t189.
              DATA(t190) = t188.
              DATA(t191) = |SingleFile|.
              t190->load( ).
              APPEND t191 TO t190->items.
              t190->save( ).
              DATA(t192) = t188.
              t187 = t192.
              t185 = t187.
            ELSE.
              DATA t193 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t193.
              t185 = t193.
            ENDIF.
            t184 = t185.
            DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t195.
            t194 = t195.
            DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t197.
            t196 = t197.
            t159 = NEW zcl_lnt_irule_metadata( i_key = t160 i_title = t162 i_short_description = t164 i_bad_example = t172 i_good_example = t178 i_extended_information = t166 i_tags = t184 i_pragma = t194 i_pseudo_comment = t196 ).
            CREATE OBJECT t159->zlnt_view_ownkeys_b0e8086400eb.
            t159->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t198.
            IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t198 ).
            ENDIF.
            DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t199.
            IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t199 ).
            ENDIF.
            DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t200.
            IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t200 ).
            ENDIF.
            DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t201.
            IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t201 ).
            ENDIF.
            DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t202.
            IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t202 ).
            ENDIF.
            DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t203.
            IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t203 ).
            ENDIF.
            DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t204.
            IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t204 ).
            ENDIF.
            CREATE OBJECT t159->zlnt_json_ownkeys_70e5fd461788.
            t159->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t205) = |key|.
            DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t206.
            IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
            ENDIF.
            DATA(t207) = |title|.
            DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t208.
            IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
            ENDIF.
            DATA(t209) = |shortDescription|.
            DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t210.
            IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
            ENDIF.
            DATA(t211) = |extendedInformation|.
            DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t212.
            IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t211 p1 = t212 ).
            ENDIF.
            DATA(t213) = |badExample|.
            DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t214.
            IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t213 p1 = t214 ).
            ENDIF.
            DATA(t215) = |goodExample|.
            DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t216.
            IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t215 p1 = t216 ).
            ENDIF.
            DATA(t217) = |tags|.
            DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t218.
            IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t217 p1 = t218 ).
            ENDIF.
            t158 = t159->key.
            DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t220) = me->conf.
            t219 = t220->zlnt_view_read_sr_15c06369f827( ).
            DATA t221 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t221.
            t148 = zcl_lnt_issue=>at_position( i_file = t149 i_start = t150 i_message_26cb = t157 i_key = t158 i_severity = t219 i_fix = t221 ).
            t147->load( ).
            APPEND t148 TO t147->items.
            t147->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t222) = t2.
    result = t222.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_fully_type_i_tabs_conf( me->g_c_i_s_r_f_t_it_ts_fl_ty_i_tb( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_fully_type_i_tabs_conf( me->g_c_i_s_r_f_t_it_ts_fl_ty_i_tb( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_fully_type_i_tabs_conf.
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
        t1 = NEW zcl_lnt_fully_type_i_tabs_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_f_t_it_ts_fl_ty_i_tb( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_f_t_it_ts_fl_ty_i_tb( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1516_8d2e666f6124.
  ENDMETHOD.
ENDCLASS.
