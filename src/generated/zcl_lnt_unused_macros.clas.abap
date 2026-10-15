* TS: src/rules/unused_macros.ts:16:1 UnusedMacros
CLASS zcl_lnt_unused_macros DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_unused_macros_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_un_mc_ts_un_mcr RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_macros_conf.
    METHODS st_cn_in_sr_rl_un_mc_ts_un_mcr IMPORTING i_conf TYPE REF TO zcl_lnt_unused_macros_conf.
    METHODS in_in_sr_rl_uns_mcr_ts_uns_mcr IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_macros.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unused_macros IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_unused_macros_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |unused_macros|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Unused macros|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for unused macro definitions definitions|.
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
      DATA(t15) = |Quickfix|.
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
      DATA(t21) = |DEFINE foobar1.\n  WRITE 'hello'.\nEND-OF-DEFINITION.|.
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
      DATA(t27) = |DEFINE foobar2.\n  WRITE 'hello'.\nEND-OF-DEFINITION.\n\nfoobar2|.
      t27 = t27 && |.|.
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

  METHOD gt_cn_in_sr_rl_un_mc_ts_un_mcr.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_mc_ts_un_mcr.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_d5719c35156a( ).
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
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t14.
        t12 = t14.
      ELSE.
        DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t15.
        t12 = t15.
      ENDIF.
      t11->zlnt_view_write_s_091d2d7d0c4b( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD in_in_sr_rl_uns_mcr_ts_uns_mcr.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

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
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t7.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zif_lnt_macro_references.
    DATA t9 TYPE REF TO zif_lnt_macro_references.
    DATA(t10) = me->reg.
    t9 = t10->get_macro_references( ).
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zcl_lnt_abap_object.
    DATA t13 TYPE REF TO zcl_lnt_abap_object.
    DATA(t14) = t1.
    DATA t15 TYPE REF TO object.
    t15 = t14.
    t13 ?= t15.
    t12 = t13.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t17) = t12.
    t16 = t17->parsed.
    t11 = t16.
    DATA t18 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t18.
    DATA t19 TYPE REF TO object.
    CLEAR t19.
    DATA(t20) = VALUE i( ).
    DO.
      t11->load( ).
      IF t20 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t11->items INDEX t20 + 1 INTO t19.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t18.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t19.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t18 ?= t22.
      ELSE.
        t18 ?= t19.
      ENDIF.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t24) = t8.
      DATA t25 TYPE string.
      DATA t26 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t27) = t18.
      t26 = t27.
      DATA t28 TYPE string.
      DATA(t29) = t26.
      t28 = t29->filename.
      t25 = t28.
      t23 = t24->list_definitions_by_file( i_filename = t25 ).
      DATA t30 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t30.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      DATA(t32) = VALUE i( ).
      DO.
        t23->load( ).
        IF t32 >= lines( t23->items ).
          EXIT.
        ENDIF.
        CLEAR t31.
        READ TABLE t23->items INDEX t32 + 1 INTO t31.
        t32 = t32 + 1.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        CLEAR t30.
        IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t33 ?= t31.
          DATA t34 TYPE REF TO object.
          t34 = t33->as_ref( ).
          t30 ?= t34.
        ELSE.
          t30 ?= t31.
        ENDIF.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t37) = t8.
        DATA t38 TYPE string.
        DATA t39 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t40) = t18.
        t39 = t40.
        DATA t41 TYPE string.
        DATA(t42) = t39.
        t41 = t42->filename.
        t38 = t41.
        DATA(t43) = t30.
        t36 = t37->list_usagesby_macro( i_filename = t38 i_token = t43 ).
        t35 = t36.
        DATA t44 TYPE abap_bool.
        DATA t45 TYPE abap_bool.
        DATA t46 TYPE i.
        DATA(t47) = t35.
        t47->load( ).
        t46 = lines( t47->items ).
        DATA(t48) = 0.
        t45 = xsdbool( t46 = t48 ).
        t44 = t45.
        IF t45 = abap_true.
          DATA(t49) = VALUE abap_bool( ).
          DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t50.
          DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t53) = me->conf.
          t52 = t53->zlnt_view_read_sr_d5719c35156a( ).
          t51 = t52.
          DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t54.
          DATA(t55) = VALUE abap_bool( ).
          DATA(t56) = t51.
          IF t56 IS INITIAL.
            t55 = abap_true.
          ENDIF.
          IF t55 = abap_true.
            DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t57.
            t54 = t57.
          ELSE.
            DATA(t58) = VALUE abap_bool( ).
            DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t60) = t51.
            t59 = t60.
            DATA t61 TYPE string.
            DATA t62 TYPE string.
            DATA t63 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t64) = t30.
            t63 = t64.
            DATA t65 TYPE string.
            DATA(t66) = t63.
            t65 = t66->str.
            t62 = t65.
            DATA(t67) = strlen( t62 ).
            t61 = t62.
            IF t61 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t61 TO UPPER CASE.
            ELSE.
              t61 = zlnt_runtime_uppe_91169605024d=>full( t61 ).
            ENDIF.
            t58 = t59->includes( p0 = t61 ).
            DATA(t68) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t68->has = abap_true.
            t68->value = t58.
            t54 = t68.
          ENDIF.
          t50 = t54.
          DATA t69 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t69.
          DATA(t70) = abap_true.
          IF t70 = abap_true.
            DATA(t71) = abap_false.
            DATA(t72) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t72->has = abap_true.
            t72->value = t71.
            t69 = t72.
          ELSE.
            DATA t73 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t73.
            t69 = t73.
          ENDIF.
          DATA(t74) = VALUE abap_bool( ).
          DATA(t75) = VALUE abap_bool( ).
          IF t50 IS BOUND.
            t74 = t50->has.
          ENDIF.
          IF t69 IS BOUND.
            t75 = t69->has.
          ENDIF.
          IF t74 = t75.
            IF t74 = abap_false.
              t49 = abap_true.
            ELSEIF t50->value = t69->value.
              t49 = abap_true.
            ENDIF.
          ENDIF.
          t44 = t49.
        ENDIF.
        IF t44 = abap_true.
          DATA t76 TYPE string.
          DATA t77 TYPE string.
          DATA(t78) = |Unused macro definition: |.
          DATA t79 TYPE string.
          DATA t80 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t81) = t30.
          t80 = t81.
          DATA t82 TYPE string.
          DATA(t83) = t80.
          t82 = t83->str.
          t79 = t82.
          DATA(t84) = strlen( t78 ).
          t77 = |{ t78 }{ t79 }|.
          t76 = t77.
          DATA t85 TYPE REF TO zcl_lnt_irange.
          DATA t86 TYPE REF TO zcl_lnt_irange.
          DATA(t87) = t8.
          DATA t88 TYPE string.
          DATA t89 TYPE REF TO zcl_lnt_abstract_file.
          DATA(t90) = t18.
          t89 = t90.
          DATA t91 TYPE string.
          DATA(t92) = t89.
          t91 = t92->filename.
          t88 = t91.
          DATA(t93) = t30.
          t86 = t87->get_definition_range( i_filename = t88 i_token = t93 ).
          t85 = t86.
          DATA t94 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t95 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t96) = t18.
          DATA t97 TYPE REF TO zcl_lnt_position.
          DATA t98 TYPE REF TO zcl_lnt_irange.
          DATA(t99) = t85.
          t98 = t99.
          t97 = t98->start.
          DATA t100 TYPE REF TO zcl_lnt_position.
          DATA t101 TYPE REF TO zcl_lnt_irange.
          DATA(t102) = t85.
          t101 = t102.
          t100 = t101->end.
          t95 = zcl_lnt_edit_helper=>delete_range( i_file = t96 i_start = t97 i_end = t100 ).
          t94 = t95.
          DATA(t103) = t2.
          DATA t104 TYPE REF TO zcl_lnt_issue.
          CLEAR t104.
          DATA(t105) = t18.
          DATA(t106) = t30.
          DATA(t107) = t76.
          DATA(t108) = VALUE string( ).
          DATA t109 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t109.
          DATA t110 TYPE string.
          DATA(t111) = |unused_macros|.
          t110 = t111.
          DATA t112 TYPE string.
          DATA(t113) = |Unused macros|.
          t112 = t113.
          DATA t114 TYPE string.
          DATA(t115) = |Checks for unused macro definitions definitions|.
          t114 = t115.
          DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t116.
          DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t117.
          DATA(t118) = abap_true.
          IF t118 = abap_true.
            DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t120 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t121.
            t120 = t121.
            DATA(t122) = t120.
            DATA(t123) = |Quickfix|.
            t122->load( ).
            APPEND t123 TO t122->items.
            t122->save( ).
            DATA(t124) = t120.
            t119 = t124.
            t117 = t119.
          ELSE.
            DATA t125 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t125.
            t117 = t125.
          ENDIF.
          t116 = t117.
          DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t126.
          DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t127.
          DATA(t128) = abap_true.
          IF t128 = abap_true.
            DATA(t129) = |DEFINE foobar1.\n  WRITE 'hello'.\nEND-OF-DEFINITION.|.
            DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t130->has = abap_true.
            t130->value = t129.
            t127 = t130.
          ELSE.
            DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t131.
            t127 = t131.
          ENDIF.
          t126 = t127.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t133.
          DATA(t134) = abap_true.
          IF t134 = abap_true.
            DATA(t135) = |DEFINE foobar2.\n  WRITE 'hello'.\nEND-OF-DEFINITION.\n\nfoobar2|.
            t135 = t135 && |.|.
            DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t136->has = abap_true.
            t136->value = t135.
            t133 = t136.
          ELSE.
            DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t137.
            t133 = t137.
          ENDIF.
          t132 = t133.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t139.
          t138 = t139.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t141.
          t140 = t141.
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t143.
          t142 = t143.
          t109 = NEW zcl_lnt_irule_metadata( i_key = t110 i_title = t112 i_short_description = t114 i_bad_example = t126 i_good_example = t132 i_extended_information = t138 i_tags = t116 i_pragma = t140 i_pseudo_comment = t142 ).
          CREATE OBJECT t109->zlnt_view_ownkeys_b0e8086400eb.
          t109->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t144 ).
          ENDIF.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t145 ).
          ENDIF.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t146 ).
          ENDIF.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t147 ).
          ENDIF.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t148 ).
          ENDIF.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t149 ).
          ENDIF.
          CREATE OBJECT t109->zlnt_json_ownkeys_70e5fd461788.
          t109->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t150) = |key|.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
          ENDIF.
          DATA(t152) = |title|.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t152 p1 = t153 ).
          ENDIF.
          DATA(t154) = |shortDescription|.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
          ENDIF.
          DATA(t156) = |tags|.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
          ENDIF.
          DATA(t158) = |badExample|.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
          ENDIF.
          DATA(t160) = |goodExample|.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
          ENDIF.
          t108 = t109->key.
          DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t163) = me->conf.
          t162 = t163->zlnt_view_read_sr_15c06369f827( ).
          DATA t164 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t164.
          DATA(t165) = abap_true.
          IF t165 = abap_true.
            DATA(t166) = t94.
            t164 = t166.
          ELSE.
            DATA t167 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t167.
            t164 = t167.
          ENDIF.
          t104 = zcl_lnt_issue=>at_token( i_file = t105 i_token = t106 i_message_26cb = t107 i_key = t108 i_severity = t162 i_fix = t164 ).
          t103->load( ).
          APPEND t104 TO t103->items.
          t103->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t168) = t2.
    result = t168.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unused_macros_conf( me->gt_cn_in_sr_rl_un_mc_ts_un_mcr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unused_macros_conf( me->gt_cn_in_sr_rl_un_mc_ts_un_mcr( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_unused_macros_conf.
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
        t2 = NEW zcl_lnt_unused_macros_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_mc_ts_un_mcr( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_unused_macros.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_uns_mcr_ts_uns_mcr( i_reg_f149 = t3 ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1754_6207378efc89.
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
