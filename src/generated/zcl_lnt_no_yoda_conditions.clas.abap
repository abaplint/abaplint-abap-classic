* TS: src/rules/no_yoda_conditions.ts:14:1 NoYodaConditions
CLASS zcl_lnt_no_yoda_conditions DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_n_yd_cndtns_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_sr_rl_n_yd_cn_ts_n_yd_cn RETURNING VALUE(result) TYPE REF TO zcl_lnt_n_yd_cndtns_cnf.
    METHODS s_c_i_sr_rl_n_yd_cn_ts_n_yd_cn IMPORTING i_conf TYPE REF TO zcl_lnt_n_yd_cndtns_cnf.
    METHODS r_p_i_sr_rl_n_yd_cn_ts_n_yd_cn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_constant IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_field_chain IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS without_spaces IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_yoda_conditions IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_n_yd_cndtns_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |no_yoda_conditions|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |No Yoda conditions|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Finds Yoda conditions and reports issues|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://en.wikipedia.org/wiki/Yoda_conditions\n\nConditions wi|.
      t11 = t11 && |th operators CP, NP, CS, NS, CA, NA, CO, CN are ignored|.
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
      DATA(t27) = |IF 0 <> sy-subrc.\nENDIF.|.
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
      DATA(t33) = |IF sy-subrc <> 0.\nENDIF.|.
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

  METHOD g_c_i_sr_rl_n_yd_cn_ts_n_yd_cn.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_sr_rl_n_yd_cn_ts_n_yd_cn.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_sr_rl_n_yd_cn_ts_n_yd_cn.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA t9 TYPE REF TO zcl_lnt_abap_file.
    DATA(t10) = t1.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = t9.
    t11 = t12->structure.
    t8 = t11.
    t7 = t8.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t7.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t16.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t18 TYPE REF TO zcl_lnt_structure_node.
      DATA(t19) = t7.
      t18 = t19.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e.
      t17 = t18->find_all_expressions( i_type_9913 = t20 ).
      t13 = t17.
    ENDIF.
    t6 = t13.
    t5 = t6.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA t22 TYPE abap_bool.
    DATA(t23) = t5.
    t22 = xsdbool( t23 IS BOUND ).
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t25) = t5.
      t24 = t25.
      t21 = t24.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t26.
      t21 = t26.
    ENDIF.
    t4 = t21.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t27.
    DATA t28 TYPE REF TO object.
    CLEAR t28.
    DATA(t29) = VALUE i( ).
    DO.
      t4->load( ).
      IF t29 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t28.
      READ TABLE t4->items INDEX t29 + 1 INTO t28.
      t29 = t29 + 1.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      CLEAR t27.
      IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t30 ?= t28.
        DATA t31 TYPE REF TO object.
        t31 = t30->as_ref( ).
        t27 ?= t31.
      ELSE.
        t27 ?= t28.
      ENDIF.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      DATA(t38) = t27.
      DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e.
      t37 = t38->find_direct_expression( i_type_9913 = t39 ).
      t36 = t37.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = t36.
      IF t42 IS INITIAL.
        t41 = abap_true.
      ENDIF.
      IF t41 = abap_true.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        t40 = t43.
      ELSE.
        DATA t44 TYPE string.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        DATA(t46) = t36.
        t45 = t46.
        t44 = t45->concat_tokens( ).
        DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t47->has = abap_true.
        t47->value = t44.
        t40 = t47.
      ENDIF.
      t35 = t40.
      t34 = t35.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t34.
      IF t50 IS INITIAL.
        t49 = abap_true.
      ELSEIF t50->has = abap_false.
        t49 = abap_true.
      ENDIF.
      IF t49 = abap_true.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        t48 = t51.
      ELSE.
        DATA t52 TYPE string.
        DATA t53 TYPE string.
        DATA(t54) = t34.
        t53 = t54->value.
        DATA(t55) = strlen( t53 ).
        t52 = t53.
        IF t52 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t52 TO UPPER CASE.
        ELSE.
          t52 = zlnt_runtime_uppe_91169605024d=>full( t52 ).
        ENDIF.
        DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t56->has = abap_true.
        t56->value = t52.
        t48 = t56.
      ENDIF.
      t33 = t48.
      t32 = t33.
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = VALUE abap_bool( ).
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t67) = t32.
      t66 = t67.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      t68 = t69.
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = t66.
      IF t71 IS INITIAL.
        t70 = abap_true.
      ELSEIF t71->has = abap_false.
        t70 = abap_true.
      ENDIF.
      t65 = t70.
      t64 = t65.
      IF t65 = abap_false.
        DATA t72 TYPE abap_bool.
        DATA t73 TYPE string.
        DATA(t74) = t32.
        t73 = t74->value.
        DATA(t75) = |CP|.
        t72 = xsdbool( t73 = t75 ).
        t64 = t72.
      ENDIF.
      t63 = t64.
      IF t64 = abap_false.
        DATA t76 TYPE abap_bool.
        DATA t77 TYPE string.
        DATA(t78) = t32.
        t77 = t78->value.
        DATA(t79) = |NP|.
        t76 = xsdbool( t77 = t79 ).
        t63 = t76.
      ENDIF.
      t62 = t63.
      IF t63 = abap_false.
        DATA t80 TYPE abap_bool.
        DATA t81 TYPE string.
        DATA(t82) = t32.
        t81 = t82->value.
        DATA(t83) = |CS|.
        t80 = xsdbool( t81 = t83 ).
        t62 = t80.
      ENDIF.
      t61 = t62.
      IF t62 = abap_false.
        DATA t84 TYPE abap_bool.
        DATA t85 TYPE string.
        DATA(t86) = t32.
        t85 = t86->value.
        DATA(t87) = |NS|.
        t84 = xsdbool( t85 = t87 ).
        t61 = t84.
      ENDIF.
      t60 = t61.
      IF t61 = abap_false.
        DATA t88 TYPE abap_bool.
        DATA t89 TYPE string.
        DATA(t90) = t32.
        t89 = t90->value.
        DATA(t91) = |CA|.
        t88 = xsdbool( t89 = t91 ).
        t60 = t88.
      ENDIF.
      t59 = t60.
      IF t60 = abap_false.
        DATA t92 TYPE abap_bool.
        DATA t93 TYPE string.
        DATA(t94) = t32.
        t93 = t94->value.
        DATA(t95) = |NA|.
        t92 = xsdbool( t93 = t95 ).
        t59 = t92.
      ENDIF.
      t58 = t59.
      IF t59 = abap_false.
        DATA t96 TYPE abap_bool.
        DATA t97 TYPE string.
        DATA(t98) = t32.
        t97 = t98->value.
        DATA(t99) = |CO|.
        t96 = xsdbool( t97 = t99 ).
        t58 = t96.
      ENDIF.
      t57 = t58.
      IF t58 = abap_false.
        DATA t100 TYPE abap_bool.
        DATA t101 TYPE string.
        DATA(t102) = t32.
        t101 = t102->value.
        DATA(t103) = |CN|.
        t100 = xsdbool( t101 = t103 ).
        t57 = t100.
      ENDIF.
      IF t57 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t106) = t27.
      DATA(t107) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t105 = t106->find_direct_expressions( i_type_9913 = t107 ).
      t104 = t105.
      DATA t108 TYPE abap_bool.
      DATA t109 TYPE i.
      DATA(t110) = t104.
      t110->load( ).
      t109 = lines( t110->items ).
      DATA(t111) = 2.
      t108 = xsdbool( t109 <> t111 ).
      IF t108 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t112 TYPE abap_bool.
      DATA t113 TYPE abap_bool.
      DATA(t114) = me->conf.
      t113 = t114->zlnt_view_read_sr_bdd636150a95( ).
      DATA(t115) = abap_true.
      t112 = xsdbool( t113 = t115 ).
      IF t112 = abap_true.
        DATA(t116) = VALUE abap_bool( ).
        DATA(t117) = VALUE abap_bool( ).
        DATA(t118) = VALUE abap_bool( ).
        DATA t119 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t119.
        DATA t120 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t120.
        DATA(t121) = t104.
        DATA t122 TYPE REF TO object.
        CLEAR t122.
        t121->load( ).
        CLEAR t122.
        READ TABLE t121->items INDEX 1 INTO t122.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        CLEAR t120.
        IF t122 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t123 ?= t122.
          DATA t124 TYPE REF TO object.
          t124 = t123->as_ref( ).
          t120 ?= t124.
        ELSE.
          t120 ?= t122.
        ENDIF.
        t119 = t120.
        DATA(t125) = VALUE abap_bool( ).
        DATA t126 TYPE abap_bool.
        DATA t127 TYPE i.
        DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t130 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t131) = t119.
        t130 = t131.
        DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t133) = t130.
        t132 = t133->children.
        t129 = t132.
        t128 ?= t129.
        t128->load( ).
        t127 = lines( t128->items ).
        DATA(t134) = 1.
        t126 = xsdbool( t127 > t134 ).
        IF t126 = abap_true.
          DATA(t135) = abap_false.
          t125 = t135.
        ELSE.
          DATA(t136) = VALUE abap_bool( ).
          DATA t137 TYPE REF TO zif_lnt_union_daf022d4.
          CLEAR t137.
          DATA t138 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t138.
          DATA t139 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t139.
          DATA t140 TYPE REF TO zif_lnt_node.
          CLEAR t140.
          DATA t141 TYPE REF TO zcl_lnt_abstract_node.
          DATA(t142) = t119.
          t141 = t142.
          DATA t143 TYPE REF TO zif_lnt_node.
          CLEAR t143.
          DATA(t144) = abap_true.
          IF t144 = abap_true.
            DATA t145 TYPE REF TO zif_lnt_node.
            CLEAR t145.
            DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t147) = t141.
            t146 = t147->children.
            DATA t148 TYPE REF TO object.
            CLEAR t148.
            t146->load( ).
            CLEAR t148.
            READ TABLE t146->items INDEX 1 INTO t148.
            DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t149.
            CLEAR t145.
            IF t148 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t149 ?= t148.
              DATA t150 TYPE REF TO object.
              t150 = t149->as_ref( ).
              t145 ?= t150.
            ELSE.
              t145 ?= t148.
            ENDIF.
            t143 = t145.
          ELSE.
            DATA t151 TYPE REF TO zif_lnt_node.
            CLEAR t151.
            t143 = t151.
          ENDIF.
          t140 = t143.
          t139 ?= t140.
          t138 = t139.
          DATA t152 TYPE REF TO zif_lnt_union_daf022d4.
          CLEAR t152.
          DATA(t153) = VALUE abap_bool( ).
          DATA(t154) = t138.
          IF t154 IS INITIAL.
            t153 = abap_true.
          ENDIF.
          IF t153 = abap_true.
            DATA t155 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t155.
            t152 = t155.
          ELSE.
            DATA t156 TYPE REF TO zif_lnt_union_daf022d4.
            DATA t157 TYPE REF TO object.
            DATA t158 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA(t159) = t138.
            t158 = t159.
            t157 = t158->get_db65( ).
            DATA t160 TYPE REF TO object.
            t160 = t157.
            t156 ?= t160.
            t152 = t156.
          ENDIF.
          t137 = t152.
          t136 = xsdbool( t137 IS BOUND AND t137 IS INSTANCE OF zcl_lnt_st_expres_constant ).
          t125 = t136.
        ENDIF.
        t118 = t125.
        DATA(t161) = abap_true.
        t117 = xsdbool( t118 = t161 ).
        t116 = t117.
        IF t117 = abap_true.
          DATA(t162) = VALUE abap_bool( ).
          DATA(t163) = VALUE abap_bool( ).
          DATA t164 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t164.
          DATA t165 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t165.
          DATA(t166) = t104.
          DATA t167 TYPE REF TO object.
          CLEAR t167.
          t166->load( ).
          CLEAR t167.
          READ TABLE t166->items INDEX 2 INTO t167.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t168.
          CLEAR t165.
          IF t167 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t168 ?= t167.
            DATA t169 TYPE REF TO object.
            t169 = t168->as_ref( ).
            t165 ?= t169.
          ELSE.
            t165 ?= t167.
          ENDIF.
          t164 = t165.
          DATA(t170) = VALUE abap_bool( ).
          DATA t171 TYPE abap_bool.
          DATA t172 TYPE i.
          DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t175 TYPE REF TO zcl_lnt_abstract_node.
          DATA(t176) = t164.
          t175 = t176.
          DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t178) = t175.
          t177 = t178->children.
          t174 = t177.
          t173 ?= t174.
          t173->load( ).
          t172 = lines( t173->items ).
          DATA(t179) = 1.
          t171 = xsdbool( t172 > t179 ).
          IF t171 = abap_true.
            DATA(t180) = abap_false.
            t170 = t180.
          ELSE.
            DATA(t181) = VALUE abap_bool( ).
            DATA t182 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t182.
            DATA t183 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t183.
            DATA t184 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t184.
            DATA t185 TYPE REF TO zif_lnt_node.
            CLEAR t185.
            DATA t186 TYPE REF TO zcl_lnt_abstract_node.
            DATA(t187) = t164.
            t186 = t187.
            DATA t188 TYPE REF TO zif_lnt_node.
            CLEAR t188.
            DATA(t189) = abap_true.
            IF t189 = abap_true.
              DATA t190 TYPE REF TO zif_lnt_node.
              CLEAR t190.
              DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t192) = t186.
              t191 = t192->children.
              DATA t193 TYPE REF TO object.
              CLEAR t193.
              t191->load( ).
              CLEAR t193.
              READ TABLE t191->items INDEX 1 INTO t193.
              DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t194.
              CLEAR t190.
              IF t193 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t194 ?= t193.
                DATA t195 TYPE REF TO object.
                t195 = t194->as_ref( ).
                t190 ?= t195.
              ELSE.
                t190 ?= t193.
              ENDIF.
              t188 = t190.
            ELSE.
              DATA t196 TYPE REF TO zif_lnt_node.
              CLEAR t196.
              t188 = t196.
            ENDIF.
            t185 = t188.
            t184 ?= t185.
            t183 = t184.
            DATA t197 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t197.
            DATA(t198) = VALUE abap_bool( ).
            DATA(t199) = t183.
            IF t199 IS INITIAL.
              t198 = abap_true.
            ENDIF.
            IF t198 = abap_true.
              DATA t200 TYPE REF TO zif_lnt_union_daf022d4.
              CLEAR t200.
              t197 = t200.
            ELSE.
              DATA t201 TYPE REF TO zif_lnt_union_daf022d4.
              DATA t202 TYPE REF TO object.
              DATA t203 TYPE REF TO zif_lnt_union_4cf1d054.
              DATA(t204) = t183.
              t203 = t204.
              t202 = t203->get_db65( ).
              DATA t205 TYPE REF TO object.
              t205 = t202.
              t201 ?= t205.
              t197 = t201.
            ENDIF.
            t182 = t197.
            t181 = xsdbool( t182 IS BOUND AND t182 IS INSTANCE OF zcl_lnt_st_expres_constant ).
            t170 = t181.
          ENDIF.
          t163 = t170.
          DATA(t206) = abap_false.
          t162 = xsdbool( t163 = t206 ).
          t116 = t162.
        ENDIF.
        IF t116 = abap_true.
          DATA t207 TYPE REF TO zcl_lnt_position.
          CLEAR t207.
          DATA t208 TYPE REF TO zcl_lnt_position.
          CLEAR t208.
          DATA t209 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t209.
          DATA t210 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t210.
          DATA t211 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t211.
          DATA(t212) = t104.
          DATA t213 TYPE REF TO object.
          CLEAR t213.
          t212->load( ).
          CLEAR t213.
          READ TABLE t212->items INDEX 1 INTO t213.
          DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t214.
          CLEAR t211.
          IF t213 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t214 ?= t213.
            DATA t215 TYPE REF TO object.
            t215 = t214->as_ref( ).
            t211 ?= t215.
          ELSE.
            t211 ?= t213.
          ENDIF.
          t210 = t211->get_first_token( ).
          t209 = t210.
          DATA t216 TYPE REF TO zcl_lnt_position.
          DATA(t217) = t209.
          t216 = t217->start.
          t208 = t216.
          t207 = t208.
          DATA t218 TYPE REF TO zcl_lnt_position.
          CLEAR t218.
          DATA t219 TYPE REF TO zcl_lnt_position.
          CLEAR t219.
          DATA t220 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t220.
          DATA t221 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t221.
          DATA t222 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t222.
          DATA(t223) = t104.
          DATA t224 TYPE REF TO object.
          CLEAR t224.
          t223->load( ).
          CLEAR t224.
          READ TABLE t223->items INDEX 2 INTO t224.
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          CLEAR t222.
          IF t224 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t225 ?= t224.
            DATA t226 TYPE REF TO object.
            t226 = t225->as_ref( ).
            t222 ?= t226.
          ELSE.
            t222 ?= t224.
          ENDIF.
          t221 = t222->get_last_token( ).
          t220 = t221.
          DATA t227 TYPE REF TO zcl_lnt_position.
          DATA t228 TYPE f.
          DATA t229 TYPE REF TO zcl_lnt_position.
          DATA t230 TYPE REF TO zcl_lnt_position.
          DATA(t231) = t220.
          t230 = t231->start.
          t229 = t230.
          DATA t232 TYPE f.
          DATA(t233) = t229.
          t232 = t233->row.
          t228 = t232.
          DATA t234 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t235 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t236 TYPE REF TO zcl_lnt_position.
          DATA t237 TYPE REF TO zcl_lnt_position.
          DATA(t238) = t220.
          t237 = t238->start.
          t236 = t237.
          DATA t239 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t240) = t236.
          t239 = t240->col.
          t235 = t239.
          DATA t241 TYPE f.
          DATA t242 TYPE i.
          DATA t243 TYPE string.
          DATA(t244) = t220.
          t243 = t244->str.
          DATA(t245) = strlen( t243 ).
          t242 = t245.
          t241 = t242.
          DATA(t246) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t246->has = abap_true.
          t246->value = t241.
          t234 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t235 right = t246 op = `+` ).
          t227 = NEW zcl_lnt_position( i_row = t228 i_col = t234 ).
          t219 = t227.
          t218 = t219.
          DATA t247 TYPE REF TO zcl_lnt_issue.
          CLEAR t247.
          DATA t248 TYPE REF TO zcl_lnt_issue.
          CLEAR t248.
          DATA(t249) = t1.
          DATA(t250) = t207.
          DATA(t251) = t218.
          DATA(t252) = |No Yoda conditions|.
          DATA(t253) = VALUE string( ).
          DATA t254 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t254.
          DATA t255 TYPE string.
          DATA(t256) = |no_yoda_conditions|.
          t255 = t256.
          DATA t257 TYPE string.
          DATA(t258) = |No Yoda conditions|.
          t257 = t258.
          DATA t259 TYPE string.
          DATA(t260) = |Finds Yoda conditions and reports issues|.
          t259 = t260.
          DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t261.
          DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t262.
          DATA(t263) = abap_true.
          IF t263 = abap_true.
            DATA(t264) = |https://en.wikipedia.org/wiki/Yoda_conditions\n\nConditions wi|.
            t264 = t264 && |th operators CP, NP, CS, NS, CA, NA, CO, CN are ignored|.
            DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t265->has = abap_true.
            t265->value = t264.
            t262 = t265.
          ELSE.
            DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t266.
            t262 = t266.
          ENDIF.
          t261 = t262.
          DATA t267 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t267.
          DATA t268 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t268.
          DATA(t269) = abap_true.
          IF t269 = abap_true.
            DATA t270 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t271 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t272.
            t271 = t272.
            DATA(t273) = t271.
            DATA(t274) = |SingleFile|.
            t273->load( ).
            APPEND t274 TO t273->items.
            t273->save( ).
            DATA(t275) = t271.
            t270 = t275.
            t268 = t270.
          ELSE.
            DATA t276 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t276.
            t268 = t276.
          ENDIF.
          t267 = t268.
          DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t277.
          DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t278.
          DATA(t279) = abap_true.
          IF t279 = abap_true.
            DATA(t280) = |IF 0 <> sy-subrc.\nENDIF.|.
            DATA(t281) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t281->has = abap_true.
            t281->value = t280.
            t278 = t281.
          ELSE.
            DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t282.
            t278 = t282.
          ENDIF.
          t277 = t278.
          DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t283.
          DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t284.
          DATA(t285) = abap_true.
          IF t285 = abap_true.
            DATA(t286) = |IF sy-subrc <> 0.\nENDIF.|.
            DATA(t287) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t287->has = abap_true.
            t287->value = t286.
            t284 = t287.
          ELSE.
            DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t288.
            t284 = t288.
          ENDIF.
          t283 = t284.
          DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t290.
          t289 = t290.
          DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t292.
          t291 = t292.
          t254 = NEW zcl_lnt_irule_metadata( i_key = t255 i_title = t257 i_short_description = t259 i_bad_example = t277 i_good_example = t283 i_extended_information = t261 i_tags = t267 i_pragma = t289 i_pseudo_comment = t291 ).
          CREATE OBJECT t254->zlnt_view_ownkeys_b0e8086400eb.
          t254->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t293.
          IF t254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t293 ).
          ENDIF.
          DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t294.
          IF t254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t294 ).
          ENDIF.
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t295.
          IF t254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t295 ).
          ENDIF.
          DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t296.
          IF t254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t296 ).
          ENDIF.
          DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t297.
          IF t254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t297 ).
          ENDIF.
          DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t298.
          IF t254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t298 ).
          ENDIF.
          DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t299.
          IF t254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t299 ).
          ENDIF.
          CREATE OBJECT t254->zlnt_json_ownkeys_70e5fd461788.
          t254->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t300) = |key|.
          DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t301.
          IF t254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t300 p1 = t301 ).
          ENDIF.
          DATA(t302) = |title|.
          DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t303.
          IF t254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t302 p1 = t303 ).
          ENDIF.
          DATA(t304) = |shortDescription|.
          DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t305.
          IF t254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t304 p1 = t305 ).
          ENDIF.
          DATA(t306) = |extendedInformation|.
          DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t307.
          IF t254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t306 p1 = t307 ).
          ENDIF.
          DATA(t308) = |tags|.
          DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t309.
          IF t254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t308 p1 = t309 ).
          ENDIF.
          DATA(t310) = |badExample|.
          DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t311.
          IF t254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t310 p1 = t311 ).
          ENDIF.
          DATA(t312) = |goodExample|.
          DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t313.
          IF t254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t312 p1 = t313 ).
          ENDIF.
          t253 = t254->key.
          DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t315) = me->conf.
          t314 = t315->zlnt_view_read_sr_15c06369f827( ).
          DATA t316 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t316.
          DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t317.
          t248 = zcl_lnt_issue=>at_range( i_file = t249 i_start = t250 i_end = t251 i_message_26cb = t252 i_key = t253 i_severity = t314 i_fix = t316 i_alternative_fixes = t317 ).
          t247 = t248.
          DATA(t318) = t2.
          DATA(t319) = t247.
          t318->load( ).
          APPEND t319 TO t318->items.
          t318->save( ).
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA(t320) = VALUE abap_bool( ).
      DATA(t321) = VALUE abap_bool( ).
      DATA(t322) = VALUE abap_bool( ).
      DATA(t323) = VALUE abap_bool( ).
      DATA t324 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t324.
      DATA t325 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t325.
      DATA(t326) = t104.
      DATA t327 TYPE REF TO object.
      CLEAR t327.
      t326->load( ).
      CLEAR t327.
      READ TABLE t326->items INDEX 1 INTO t327.
      DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t328.
      CLEAR t325.
      IF t327 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t328 ?= t327.
        DATA t329 TYPE REF TO object.
        t329 = t328->as_ref( ).
        t325 ?= t329.
      ELSE.
        t325 ?= t327.
      ENDIF.
      t324 = t325.
      DATA(t330) = VALUE abap_bool( ).
      DATA(t331) = VALUE i( ).
      DATA t332 TYPE string.
      DATA(t333) = t324.
      t332 = t333->cnct_tkns_wtht_strng_and_cmmnt( ).
      DATA(t334) = | |.
      DATA(t335) = strlen( t332 ).
      IF t334 IS INITIAL.
        t331 = 0.
      ELSE.
        FIND t334 IN t332 MATCH OFFSET t331.
        IF sy-subrc <> 0.
          t331 = -1.
        ENDIF.
      ENDIF.
      DATA(t336) = 0.
      t330 = xsdbool( t331 >= t336 ).
      t323 = t330.
      DATA(t337) = abap_false.
      t322 = xsdbool( t323 = t337 ).
      t321 = t322.
      IF t322 = abap_true.
        DATA(t338) = VALUE abap_bool( ).
        DATA(t339) = VALUE abap_bool( ).
        DATA t340 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t340.
        DATA t341 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t341.
        DATA(t342) = t104.
        DATA t343 TYPE REF TO object.
        CLEAR t343.
        t342->load( ).
        CLEAR t343.
        READ TABLE t342->items INDEX 2 INTO t343.
        DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t344.
        CLEAR t341.
        IF t343 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t344 ?= t343.
          DATA t345 TYPE REF TO object.
          t345 = t344->as_ref( ).
          t341 ?= t345.
        ELSE.
          t341 ?= t343.
        ENDIF.
        t340 = t341.
        DATA(t346) = VALUE abap_bool( ).
        DATA(t347) = VALUE i( ).
        DATA t348 TYPE string.
        DATA(t349) = t340.
        t348 = t349->cnct_tkns_wtht_strng_and_cmmnt( ).
        DATA(t350) = | |.
        DATA(t351) = strlen( t348 ).
        IF t350 IS INITIAL.
          t347 = 0.
        ELSE.
          FIND t350 IN t348 MATCH OFFSET t347.
          IF sy-subrc <> 0.
            t347 = -1.
          ENDIF.
        ENDIF.
        DATA(t352) = 0.
        t346 = xsdbool( t347 >= t352 ).
        t339 = t346.
        DATA(t353) = abap_true.
        t338 = xsdbool( t339 = t353 ).
        t321 = t338.
      ENDIF.
      t320 = t321.
      IF t321 = abap_false.
        DATA(t354) = VALUE abap_bool( ).
        DATA(t355) = VALUE abap_bool( ).
        DATA(t356) = VALUE abap_bool( ).
        DATA t357 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t357.
        DATA t358 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t358.
        DATA(t359) = t104.
        DATA t360 TYPE REF TO object.
        CLEAR t360.
        t359->load( ).
        CLEAR t360.
        READ TABLE t359->items INDEX 1 INTO t360.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t361.
        CLEAR t358.
        IF t360 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t361 ?= t360.
          DATA t362 TYPE REF TO object.
          t362 = t361->as_ref( ).
          t358 ?= t362.
        ELSE.
          t358 ?= t360.
        ENDIF.
        t357 = t358.
        DATA(t363) = VALUE abap_bool( ).
        DATA t364 TYPE abap_bool.
        DATA t365 TYPE i.
        DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t367 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t368 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t369) = t357.
        t368 = t369.
        DATA t370 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t371) = t368.
        t370 = t371->children.
        t367 = t370.
        t366 ?= t367.
        t366->load( ).
        t365 = lines( t366->items ).
        DATA(t372) = 1.
        t364 = xsdbool( t365 > t372 ).
        IF t364 = abap_true.
          DATA(t373) = abap_false.
          t363 = t373.
        ELSE.
          DATA(t374) = VALUE abap_bool( ).
          DATA t375 TYPE REF TO zif_lnt_union_daf022d4.
          CLEAR t375.
          DATA t376 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t376.
          DATA t377 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t377.
          DATA t378 TYPE REF TO zif_lnt_node.
          CLEAR t378.
          DATA t379 TYPE REF TO zcl_lnt_abstract_node.
          DATA(t380) = t357.
          t379 = t380.
          DATA t381 TYPE REF TO zif_lnt_node.
          CLEAR t381.
          DATA(t382) = abap_true.
          IF t382 = abap_true.
            DATA t383 TYPE REF TO zif_lnt_node.
            CLEAR t383.
            DATA t384 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t385) = t379.
            t384 = t385->children.
            DATA t386 TYPE REF TO object.
            CLEAR t386.
            t384->load( ).
            CLEAR t386.
            READ TABLE t384->items INDEX 1 INTO t386.
            DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t387.
            CLEAR t383.
            IF t386 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t387 ?= t386.
              DATA t388 TYPE REF TO object.
              t388 = t387->as_ref( ).
              t383 ?= t388.
            ELSE.
              t383 ?= t386.
            ENDIF.
            t381 = t383.
          ELSE.
            DATA t389 TYPE REF TO zif_lnt_node.
            CLEAR t389.
            t381 = t389.
          ENDIF.
          t378 = t381.
          t377 ?= t378.
          t376 = t377.
          DATA t390 TYPE REF TO zif_lnt_union_daf022d4.
          CLEAR t390.
          DATA(t391) = VALUE abap_bool( ).
          DATA(t392) = t376.
          IF t392 IS INITIAL.
            t391 = abap_true.
          ENDIF.
          IF t391 = abap_true.
            DATA t393 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t393.
            t390 = t393.
          ELSE.
            DATA t394 TYPE REF TO zif_lnt_union_daf022d4.
            DATA t395 TYPE REF TO object.
            DATA t396 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA(t397) = t376.
            t396 = t397.
            t395 = t396->get_db65( ).
            DATA t398 TYPE REF TO object.
            t398 = t395.
            t394 ?= t398.
            t390 = t394.
          ENDIF.
          t375 = t390.
          t374 = xsdbool( t375 IS BOUND AND t375 IS INSTANCE OF zcl_lnt_st_expres_constant ).
          t363 = t374.
        ENDIF.
        t356 = t363.
        DATA(t399) = abap_true.
        t355 = xsdbool( t356 = t399 ).
        t354 = t355.
        IF t355 = abap_true.
          DATA(t400) = VALUE abap_bool( ).
          DATA(t401) = VALUE abap_bool( ).
          DATA t402 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t402.
          DATA t403 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t403.
          DATA(t404) = t104.
          DATA t405 TYPE REF TO object.
          CLEAR t405.
          t404->load( ).
          CLEAR t405.
          READ TABLE t404->items INDEX 2 INTO t405.
          DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t406.
          CLEAR t403.
          IF t405 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t406 ?= t405.
            DATA t407 TYPE REF TO object.
            t407 = t406->as_ref( ).
            t403 ?= t407.
          ELSE.
            t403 ?= t405.
          ENDIF.
          t402 = t403.
          DATA(t408) = VALUE abap_bool( ).
          DATA t409 TYPE abap_bool.
          DATA t410 TYPE i.
          DATA t411 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t412 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t413 TYPE REF TO zcl_lnt_abstract_node.
          DATA(t414) = t402.
          t413 = t414.
          DATA t415 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t416) = t413.
          t415 = t416->children.
          t412 = t415.
          t411 ?= t412.
          t411->load( ).
          t410 = lines( t411->items ).
          DATA(t417) = 1.
          t409 = xsdbool( t410 > t417 ).
          IF t409 = abap_true.
            DATA(t418) = abap_false.
            t408 = t418.
          ELSE.
            DATA(t419) = VALUE abap_bool( ).
            DATA t420 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t420.
            DATA t421 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t421.
            DATA t422 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t422.
            DATA t423 TYPE REF TO zif_lnt_node.
            CLEAR t423.
            DATA t424 TYPE REF TO zcl_lnt_abstract_node.
            DATA(t425) = t402.
            t424 = t425.
            DATA t426 TYPE REF TO zif_lnt_node.
            CLEAR t426.
            DATA(t427) = abap_true.
            IF t427 = abap_true.
              DATA t428 TYPE REF TO zif_lnt_node.
              CLEAR t428.
              DATA t429 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t430) = t424.
              t429 = t430->children.
              DATA t431 TYPE REF TO object.
              CLEAR t431.
              t429->load( ).
              CLEAR t431.
              READ TABLE t429->items INDEX 1 INTO t431.
              DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t432.
              CLEAR t428.
              IF t431 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t432 ?= t431.
                DATA t433 TYPE REF TO object.
                t433 = t432->as_ref( ).
                t428 ?= t433.
              ELSE.
                t428 ?= t431.
              ENDIF.
              t426 = t428.
            ELSE.
              DATA t434 TYPE REF TO zif_lnt_node.
              CLEAR t434.
              t426 = t434.
            ENDIF.
            t423 = t426.
            t422 ?= t423.
            t421 = t422.
            DATA t435 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t435.
            DATA(t436) = VALUE abap_bool( ).
            DATA(t437) = t421.
            IF t437 IS INITIAL.
              t436 = abap_true.
            ENDIF.
            IF t436 = abap_true.
              DATA t438 TYPE REF TO zif_lnt_union_daf022d4.
              CLEAR t438.
              t435 = t438.
            ELSE.
              DATA t439 TYPE REF TO zif_lnt_union_daf022d4.
              DATA t440 TYPE REF TO object.
              DATA t441 TYPE REF TO zif_lnt_union_4cf1d054.
              DATA(t442) = t421.
              t441 = t442.
              t440 = t441->get_db65( ).
              DATA t443 TYPE REF TO object.
              t443 = t440.
              t439 ?= t443.
              t435 = t439.
            ENDIF.
            t420 = t435.
            t419 = xsdbool( t420 IS BOUND AND t420 IS INSTANCE OF zcl_lnt_st_field_chain ).
            t408 = t419.
          ENDIF.
          t401 = t408.
          DATA(t444) = abap_true.
          t400 = xsdbool( t401 = t444 ).
          t354 = t400.
        ENDIF.
        t320 = t354.
      ENDIF.
      IF t320 = abap_true.
        DATA t445 TYPE REF TO zcl_lnt_position.
        CLEAR t445.
        DATA t446 TYPE REF TO zcl_lnt_position.
        CLEAR t446.
        DATA t447 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t447.
        DATA t448 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t448.
        DATA t449 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t449.
        DATA(t450) = t104.
        DATA t451 TYPE REF TO object.
        CLEAR t451.
        t450->load( ).
        CLEAR t451.
        READ TABLE t450->items INDEX 1 INTO t451.
        DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t452.
        CLEAR t449.
        IF t451 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t452 ?= t451.
          DATA t453 TYPE REF TO object.
          t453 = t452->as_ref( ).
          t449 ?= t453.
        ELSE.
          t449 ?= t451.
        ENDIF.
        t448 = t449->get_first_token( ).
        t447 = t448.
        DATA t454 TYPE REF TO zcl_lnt_position.
        DATA(t455) = t447.
        t454 = t455->start.
        t446 = t454.
        t445 = t446.
        DATA t456 TYPE REF TO zcl_lnt_position.
        CLEAR t456.
        DATA t457 TYPE REF TO zcl_lnt_position.
        CLEAR t457.
        DATA t458 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t458.
        DATA t459 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t459.
        DATA t460 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t460.
        DATA(t461) = t104.
        DATA t462 TYPE REF TO object.
        CLEAR t462.
        t461->load( ).
        CLEAR t462.
        READ TABLE t461->items INDEX 2 INTO t462.
        DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t463.
        CLEAR t460.
        IF t462 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t463 ?= t462.
          DATA t464 TYPE REF TO object.
          t464 = t463->as_ref( ).
          t460 ?= t464.
        ELSE.
          t460 ?= t462.
        ENDIF.
        t459 = t460->get_last_token( ).
        t458 = t459.
        DATA t465 TYPE REF TO zcl_lnt_position.
        DATA t466 TYPE f.
        DATA t467 TYPE REF TO zcl_lnt_position.
        DATA t468 TYPE REF TO zcl_lnt_position.
        DATA(t469) = t458.
        t468 = t469->start.
        t467 = t468.
        DATA t470 TYPE f.
        DATA(t471) = t467.
        t470 = t471->row.
        t466 = t470.
        DATA t472 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t473 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t474 TYPE REF TO zcl_lnt_position.
        DATA t475 TYPE REF TO zcl_lnt_position.
        DATA(t476) = t458.
        t475 = t476->start.
        t474 = t475.
        DATA t477 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t478) = t474.
        t477 = t478->col.
        t473 = t477.
        DATA t479 TYPE f.
        DATA t480 TYPE i.
        DATA t481 TYPE string.
        DATA(t482) = t458.
        t481 = t482->str.
        DATA(t483) = strlen( t481 ).
        t480 = t483.
        t479 = t480.
        DATA(t484) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t484->has = abap_true.
        t484->value = t479.
        t472 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t473 right = t484 op = `+` ).
        t465 = NEW zcl_lnt_position( i_row = t466 i_col = t472 ).
        t457 = t465.
        t456 = t457.
        DATA t485 TYPE REF TO zcl_lnt_issue.
        CLEAR t485.
        DATA t486 TYPE REF TO zcl_lnt_issue.
        CLEAR t486.
        DATA(t487) = t1.
        DATA(t488) = t445.
        DATA(t489) = t456.
        DATA(t490) = |No Yoda conditions|.
        DATA(t491) = VALUE string( ).
        DATA t492 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t492.
        DATA t493 TYPE string.
        DATA(t494) = |no_yoda_conditions|.
        t493 = t494.
        DATA t495 TYPE string.
        DATA(t496) = |No Yoda conditions|.
        t495 = t496.
        DATA t497 TYPE string.
        DATA(t498) = |Finds Yoda conditions and reports issues|.
        t497 = t498.
        DATA t499 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t499.
        DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t500.
        DATA(t501) = abap_true.
        IF t501 = abap_true.
          DATA(t502) = |https://en.wikipedia.org/wiki/Yoda_conditions\n\nConditions wi|.
          t502 = t502 && |th operators CP, NP, CS, NS, CA, NA, CO, CN are ignored|.
          DATA(t503) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t503->has = abap_true.
          t503->value = t502.
          t500 = t503.
        ELSE.
          DATA t504 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t504.
          t500 = t504.
        ENDIF.
        t499 = t500.
        DATA t505 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t505.
        DATA t506 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t506.
        DATA(t507) = abap_true.
        IF t507 = abap_true.
          DATA t508 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t509 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t510 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t510.
          t509 = t510.
          DATA(t511) = t509.
          DATA(t512) = |SingleFile|.
          t511->load( ).
          APPEND t512 TO t511->items.
          t511->save( ).
          DATA(t513) = t509.
          t508 = t513.
          t506 = t508.
        ELSE.
          DATA t514 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t514.
          t506 = t514.
        ENDIF.
        t505 = t506.
        DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t515.
        DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t516.
        DATA(t517) = abap_true.
        IF t517 = abap_true.
          DATA(t518) = |IF 0 <> sy-subrc.\nENDIF.|.
          DATA(t519) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t519->has = abap_true.
          t519->value = t518.
          t516 = t519.
        ELSE.
          DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t520.
          t516 = t520.
        ENDIF.
        t515 = t516.
        DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t521.
        DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t522.
        DATA(t523) = abap_true.
        IF t523 = abap_true.
          DATA(t524) = |IF sy-subrc <> 0.\nENDIF.|.
          DATA(t525) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t525->has = abap_true.
          t525->value = t524.
          t522 = t525.
        ELSE.
          DATA t526 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t526.
          t522 = t526.
        ENDIF.
        t521 = t522.
        DATA t527 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t528 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t528.
        t527 = t528.
        DATA t529 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t530 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t530.
        t529 = t530.
        t492 = NEW zcl_lnt_irule_metadata( i_key = t493 i_title = t495 i_short_description = t497 i_bad_example = t515 i_good_example = t521 i_extended_information = t499 i_tags = t505 i_pragma = t527 i_pseudo_comment = t529 ).
        CREATE OBJECT t492->zlnt_view_ownkeys_b0e8086400eb.
        t492->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t531.
        IF t492->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t492->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t531 ).
        ENDIF.
        DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t532.
        IF t492->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t492->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t532 ).
        ENDIF.
        DATA t533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t533.
        IF t492->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t492->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t533 ).
        ENDIF.
        DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t534.
        IF t492->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t492->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t534 ).
        ENDIF.
        DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t535.
        IF t492->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t492->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t535 ).
        ENDIF.
        DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t536.
        IF t492->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t492->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t536 ).
        ENDIF.
        DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t537.
        IF t492->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t492->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t537 ).
        ENDIF.
        CREATE OBJECT t492->zlnt_json_ownkeys_70e5fd461788.
        t492->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t538) = |key|.
        DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t539.
        IF t492->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t492->zlnt_json_ownkeys_70e5fd461788->put( p0 = t538 p1 = t539 ).
        ENDIF.
        DATA(t540) = |title|.
        DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t541.
        IF t492->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t492->zlnt_json_ownkeys_70e5fd461788->put( p0 = t540 p1 = t541 ).
        ENDIF.
        DATA(t542) = |shortDescription|.
        DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t543.
        IF t492->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t492->zlnt_json_ownkeys_70e5fd461788->put( p0 = t542 p1 = t543 ).
        ENDIF.
        DATA(t544) = |extendedInformation|.
        DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t545.
        IF t492->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t492->zlnt_json_ownkeys_70e5fd461788->put( p0 = t544 p1 = t545 ).
        ENDIF.
        DATA(t546) = |tags|.
        DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t547.
        IF t492->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t492->zlnt_json_ownkeys_70e5fd461788->put( p0 = t546 p1 = t547 ).
        ENDIF.
        DATA(t548) = |badExample|.
        DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t549.
        IF t492->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t492->zlnt_json_ownkeys_70e5fd461788->put( p0 = t548 p1 = t549 ).
        ENDIF.
        DATA(t550) = |goodExample|.
        DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t551.
        IF t492->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t492->zlnt_json_ownkeys_70e5fd461788->put( p0 = t550 p1 = t551 ).
        ENDIF.
        t491 = t492->key.
        DATA t552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t553) = me->conf.
        t552 = t553->zlnt_view_read_sr_15c06369f827( ).
        DATA t554 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t554.
        DATA t555 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t555.
        t486 = zcl_lnt_issue=>at_range( i_file = t487 i_start = t488 i_end = t489 i_message_26cb = t490 i_key = t491 i_severity = t552 i_fix = t554 i_alternative_fixes = t555 ).
        t485 = t486.
        DATA(t556) = t2.
        DATA(t557) = t485.
        t556->load( ).
        APPEND t557 TO t556->items.
        t556->save( ).
      ENDIF.
    ENDDO.
    DATA(t558) = t2.
    result = t558.

  ENDMETHOD.

  METHOD is_constant.
    DATA(t1) = i_node.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE i.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    t4->load( ).
    t3 = lines( t4->items ).
    DATA(t10) = 1.
    t2 = xsdbool( t3 > t10 ).
    IF t2 = abap_true.
      DATA(t11) = abap_false.
      result = t11.
      RETURN.
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zif_lnt_union_daf022d4.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_node.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t18) = t1.
    t17 = t18.
    DATA t19 TYPE REF TO zif_lnt_node.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE REF TO zif_lnt_node.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t23) = t17.
      t22 = t23->children.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      t22->load( ).
      CLEAR t24.
      READ TABLE t22->items INDEX 1 INTO t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t21.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t24.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t21 ?= t26.
      ELSE.
        t21 ?= t24.
      ENDIF.
      t19 = t21.
    ELSE.
      DATA t27 TYPE REF TO zif_lnt_node.
      CLEAR t27.
      t19 = t27.
    ENDIF.
    t16 = t19.
    t15 ?= t16.
    t14 = t15.
    DATA t28 TYPE REF TO zif_lnt_union_daf022d4.
    CLEAR t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t14.
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    IF t29 = abap_true.
      DATA t31 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t31.
      t28 = t31.
    ELSE.
      DATA t32 TYPE REF TO zif_lnt_union_daf022d4.
      DATA t33 TYPE REF TO object.
      DATA t34 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t35) = t14.
      t34 = t35.
      t33 = t34->get_db65( ).
      DATA t36 TYPE REF TO object.
      t36 = t33.
      t32 ?= t36.
      t28 = t32.
    ENDIF.
    t13 = t28.
    t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_st_expres_constant ).
    result = t12.

  ENDMETHOD.

  METHOD is_field_chain.
    DATA(t1) = i_node.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE i.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    t4->load( ).
    t3 = lines( t4->items ).
    DATA(t10) = 1.
    t2 = xsdbool( t3 > t10 ).
    IF t2 = abap_true.
      DATA(t11) = abap_false.
      result = t11.
      RETURN.
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zif_lnt_union_daf022d4.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_node.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t18) = t1.
    t17 = t18.
    DATA t19 TYPE REF TO zif_lnt_node.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE REF TO zif_lnt_node.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t23) = t17.
      t22 = t23->children.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      t22->load( ).
      CLEAR t24.
      READ TABLE t22->items INDEX 1 INTO t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t21.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t24.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t21 ?= t26.
      ELSE.
        t21 ?= t24.
      ENDIF.
      t19 = t21.
    ELSE.
      DATA t27 TYPE REF TO zif_lnt_node.
      CLEAR t27.
      t19 = t27.
    ENDIF.
    t16 = t19.
    t15 ?= t16.
    t14 = t15.
    DATA t28 TYPE REF TO zif_lnt_union_daf022d4.
    CLEAR t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t14.
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    IF t29 = abap_true.
      DATA t31 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t31.
      t28 = t31.
    ELSE.
      DATA t32 TYPE REF TO zif_lnt_union_daf022d4.
      DATA t33 TYPE REF TO object.
      DATA t34 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t35) = t14.
      t34 = t35.
      t33 = t34->get_db65( ).
      DATA t36 TYPE REF TO object.
      t36 = t33.
      t32 ?= t36.
      t28 = t32.
    ENDIF.
    t13 = t28.
    t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_st_field_chain ).
    result = t12.

  ENDMETHOD.

  METHOD without_spaces.
    DATA(t1) = i_node.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE i( ).
    DATA t4 TYPE string.
    DATA(t5) = t1.
    t4 = t5->cnct_tkns_wtht_strng_and_cmmnt( ).
    DATA(t6) = | |.
    DATA(t7) = strlen( t4 ).
    IF t6 IS INITIAL.
      t3 = 0.
    ELSE.
      FIND t6 IN t4 MATCH OFFSET t3.
      IF sy-subrc <> 0.
        t3 = -1.
      ENDIF.
    ENDIF.
    DATA(t8) = 0.
    t2 = xsdbool( t3 >= t8 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_n_yd_cndtns_cnf( me->g_c_i_sr_rl_n_yd_cn_ts_n_yd_cn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_n_yd_cndtns_cnf( me->g_c_i_sr_rl_n_yd_cn_ts_n_yd_cn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_yd_cndtns_cnf.
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
        t1 = NEW zcl_lnt_n_yd_cndtns_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_sr_rl_n_yd_cn_ts_n_yd_cn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_sr_rl_n_yd_cn_ts_n_yd_cn( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1627_6db6c66c834c.
  ENDMETHOD.
ENDCLASS.
