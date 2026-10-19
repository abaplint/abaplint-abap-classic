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
    me->conf = NEW zcl_lnt_n_yd_cndtns_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |no_yoda_conditions|.
    DATA t4 TYPE string.
    t4 = |No Yoda conditions|.
    DATA t6 TYPE string.
    t6 = |Finds Yoda conditions and reports issues|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://en.wikipedia.org/wiki/Yoda_conditions\n\nConditions wi|.
    t11 = t11 && |th operators CP, NP, CS, NS, CA, NA, CO, CN are ignored|.
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
    DATA(t27) = |IF 0 <> sy-subrc.\nENDIF.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |IF sy-subrc <> 0.\nENDIF.|.
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

  METHOD g_c_i_sr_rl_n_yd_cn_ts_n_yd_cn.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_sr_rl_n_yd_cn_ts_n_yd_cn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_sr_rl_n_yd_cn_ts_n_yd_cn.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    t11 = t1->structure.
    t7 = t11.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = xsdbool( t7 IS INITIAL ).
    IF t14 = abap_true.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t18 TYPE REF TO zcl_lnt_structure_node.
      t18 = t7.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e.
      t17 = t18->find_all_expressions( i_type_9913 = t20 ).
      t13 = t17.
    ENDIF.
    t5 = t13.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE abap_bool.
    t22 = xsdbool( t5 IS BOUND ).
    IF t22 = abap_true.
      t21 = t5.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t26.
      t21 = t26.
    ENDIF.
    t4 = t21.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA t28 TYPE REF TO object.
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
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e.
      t37 = t27->find_direct_expression( i_type_9913 = t39 ).
      t36 = t37.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA(t41) = xsdbool( t36 IS INITIAL ).
      IF t41 = abap_true.
        CLEAR t40.
      ELSE.
        DATA t44 TYPE string.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        t45 = t36.
        t44 = t45->concat_tokens( ).
        DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t47->has = abap_true.
        t47->value = t44.
        t40 = t47.
      ENDIF.
      t34 = t40.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA(t49) = VALUE abap_bool( ).
      IF t34 IS INITIAL.
        t49 = abap_true.
      ELSEIF t34->has = abap_false.
        t49 = abap_true.
      ENDIF.
      IF t49 = abap_true.
        CLEAR t48.
      ELSE.
        DATA t52 TYPE string.
        DATA t53 TYPE string.
        t53 = t34->value.
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
      t32 = t48.
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
      t66 = t32.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      DATA(t70) = VALUE abap_bool( ).
      IF t66 IS INITIAL.
        t70 = abap_true.
      ELSEIF t66->has = abap_false.
        t70 = abap_true.
      ENDIF.
      t65 = t70.
      t64 = t65.
      IF t65 = abap_false.
        DATA t72 TYPE abap_bool.
        DATA t73 TYPE string.
        t73 = t32->value.
        DATA(t75) = |CP|.
        t72 = xsdbool( t73 = t75 ).
        t64 = t72.
      ENDIF.
      t63 = t64.
      IF t64 = abap_false.
        DATA t76 TYPE abap_bool.
        DATA t77 TYPE string.
        t77 = t32->value.
        DATA(t79) = |NP|.
        t76 = xsdbool( t77 = t79 ).
        t63 = t76.
      ENDIF.
      t62 = t63.
      IF t63 = abap_false.
        DATA t80 TYPE abap_bool.
        DATA t81 TYPE string.
        t81 = t32->value.
        DATA(t83) = |CS|.
        t80 = xsdbool( t81 = t83 ).
        t62 = t80.
      ENDIF.
      t61 = t62.
      IF t62 = abap_false.
        DATA t84 TYPE abap_bool.
        DATA t85 TYPE string.
        t85 = t32->value.
        DATA(t87) = |NS|.
        t84 = xsdbool( t85 = t87 ).
        t61 = t84.
      ENDIF.
      t60 = t61.
      IF t61 = abap_false.
        DATA t88 TYPE abap_bool.
        DATA t89 TYPE string.
        t89 = t32->value.
        DATA(t91) = |CA|.
        t88 = xsdbool( t89 = t91 ).
        t60 = t88.
      ENDIF.
      t59 = t60.
      IF t60 = abap_false.
        DATA t92 TYPE abap_bool.
        DATA t93 TYPE string.
        t93 = t32->value.
        DATA(t95) = |NA|.
        t92 = xsdbool( t93 = t95 ).
        t59 = t92.
      ENDIF.
      t58 = t59.
      IF t59 = abap_false.
        DATA t96 TYPE abap_bool.
        DATA t97 TYPE string.
        t97 = t32->value.
        DATA(t99) = |CO|.
        t96 = xsdbool( t97 = t99 ).
        t58 = t96.
      ENDIF.
      t57 = t58.
      IF t58 = abap_false.
        DATA t100 TYPE abap_bool.
        DATA t101 TYPE string.
        t101 = t32->value.
        DATA(t103) = |CN|.
        t100 = xsdbool( t101 = t103 ).
        t57 = t100.
      ENDIF.
      IF t57 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t107) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t105 = t27->find_direct_expressions( i_type_9913 = t107 ).
      t104 = t105.
      DATA t108 TYPE abap_bool.
      DATA t109 TYPE i.
      t104->load( ).
      t109 = lines( t104->items ).
      DATA(t111) = 2.
      t108 = xsdbool( t109 <> t111 ).
      IF t108 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t112 TYPE abap_bool.
      DATA t113 TYPE abap_bool.
      t113 = me->conf->zlnt_view_read_sr_bdd636150a95( ).
      t112 = xsdbool( t113 = abap_true ).
      IF t112 = abap_true.
        DATA(t116) = VALUE abap_bool( ).
        DATA(t117) = VALUE abap_bool( ).
        DATA(t118) = VALUE abap_bool( ).
        DATA t119 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t119.
        DATA t120 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t120.
        DATA t122 TYPE REF TO object.
        CLEAR t122.
        t104->load( ).
        CLEAR t122.
        READ TABLE t104->items INDEX 1 INTO t122.
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
        t130 = t119.
        DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t132 = t130->children.
        t129 = t132.
        t128 ?= t129.
        t128->load( ).
        t127 = lines( t128->items ).
        DATA(t134) = 1.
        t126 = xsdbool( t127 > t134 ).
        IF t126 = abap_true.
          t125 = abap_false.
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
          t141 = t119.
          DATA t145 TYPE REF TO zif_lnt_node.
          CLEAR t145.
          DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t146 = t141->children.
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
          t140 = t145.
          t139 ?= t140.
          t138 = t139.
          DATA t152 TYPE REF TO zif_lnt_union_daf022d4.
          CLEAR t152.
          DATA(t153) = xsdbool( t138 IS INITIAL ).
          IF t153 = abap_true.
            CLEAR t152.
          ELSE.
            DATA t156 TYPE REF TO zif_lnt_union_daf022d4.
            DATA t157 TYPE REF TO object.
            DATA t158 TYPE REF TO zif_lnt_union_4cf1d054.
            t158 = t138.
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
        t117 = xsdbool( t118 = abap_true ).
        t116 = t117.
        IF t117 = abap_true.
          DATA(t162) = VALUE abap_bool( ).
          DATA(t163) = VALUE abap_bool( ).
          DATA t164 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t164.
          DATA t165 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t165.
          DATA t167 TYPE REF TO object.
          CLEAR t167.
          t104->load( ).
          CLEAR t167.
          READ TABLE t104->items INDEX 2 INTO t167.
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
          t175 = t164.
          DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t177 = t175->children.
          t174 = t177.
          t173 ?= t174.
          t173->load( ).
          t172 = lines( t173->items ).
          DATA(t179) = 1.
          t171 = xsdbool( t172 > t179 ).
          IF t171 = abap_true.
            t170 = abap_false.
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
            t186 = t164.
            DATA t190 TYPE REF TO zif_lnt_node.
            CLEAR t190.
            DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t191 = t186->children.
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
            t185 = t190.
            t184 ?= t185.
            t183 = t184.
            DATA t197 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t197.
            DATA(t198) = xsdbool( t183 IS INITIAL ).
            IF t198 = abap_true.
              CLEAR t197.
            ELSE.
              DATA t201 TYPE REF TO zif_lnt_union_daf022d4.
              DATA t202 TYPE REF TO object.
              DATA t203 TYPE REF TO zif_lnt_union_4cf1d054.
              t203 = t183.
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
          t162 = xsdbool( t163 = abap_false ).
          t116 = t162.
        ENDIF.
        IF t116 = abap_true.
          DATA t210 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t210.
          DATA t211 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t211.
          DATA t213 TYPE REF TO object.
          CLEAR t213.
          t104->load( ).
          CLEAR t213.
          READ TABLE t104->items INDEX 1 INTO t213.
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
          DATA t216 TYPE REF TO zcl_lnt_position.
          t216 = t210->start.
          DATA t220 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t220.
          DATA t221 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t221.
          DATA t222 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t222.
          DATA t224 TYPE REF TO object.
          CLEAR t224.
          t104->load( ).
          CLEAR t224.
          READ TABLE t104->items INDEX 2 INTO t224.
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
          DATA t230 TYPE REF TO zcl_lnt_position.
          t230 = t220->start.
          DATA t232 TYPE f.
          t232 = t230->row.
          t228 = t232.
          DATA t234 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t235 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t237 TYPE REF TO zcl_lnt_position.
          t237 = t220->start.
          DATA t239 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t239 = t237->col.
          t235 = t239.
          DATA t241 TYPE f.
          DATA t243 TYPE string.
          t243 = t220->str.
          t241 = strlen( t243 ).
          DATA(t246) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t246->has = abap_true.
          t246->value = t241.
          t234 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t235 right = t246 op = `+` ).
          t227 = NEW zcl_lnt_position( i_row = t228 i_col = t234 ).
          DATA t248 TYPE REF TO zcl_lnt_issue.
          CLEAR t248.
          DATA(t252) = |No Yoda conditions|.
          DATA(t253) = VALUE string( ).
          DATA t254 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t254.
          DATA t255 TYPE string.
          t255 = |no_yoda_conditions|.
          DATA t257 TYPE string.
          t257 = |No Yoda conditions|.
          DATA t259 TYPE string.
          t259 = |Finds Yoda conditions and reports issues|.
          DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t261.
          DATA(t264) = |https://en.wikipedia.org/wiki/Yoda_conditions\n\nConditions wi|.
          t264 = t264 && |th operators CP, NP, CS, NS, CA, NA, CO, CN are ignored|.
          DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t265->has = abap_true.
          t265->value = t264.
          t261 = t265.
          DATA t267 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t267.
          DATA t271 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t272.
          t271 = t272.
          DATA(t274) = |SingleFile|.
          t271->load( ).
          APPEND t274 TO t271->items.
          t271->save( ).
          t267 = t271.
          DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t277.
          DATA(t280) = |IF 0 <> sy-subrc.\nENDIF.|.
          DATA(t281) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t281->has = abap_true.
          t281->value = t280.
          t277 = t281.
          DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t283.
          DATA(t286) = |IF sy-subrc <> 0.\nENDIF.|.
          DATA(t287) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t287->has = abap_true.
          t287->value = t286.
          t283 = t287.
          DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t289.
          DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t291.
          t254 = NEW zcl_lnt_irule_metadata( i_key = t255 i_title = t257 i_short_description = t259 i_bad_example = t277 i_good_example = t283 i_extended_information = t261 i_tags = t267 i_pragma = t289 i_pseudo_comment = t291 ).
          CREATE OBJECT t254->zlnt_view_ownkeys_b0e8086400eb.
          t254->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t293.
          t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t293 ).
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
          t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t300 p1 = t301 ).
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
          t314 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t316 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t316.
          DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t317.
          t248 = zcl_lnt_issue=>at_range( i_file = t1 i_start = t216 i_end = t227 i_message_26cb = t252 i_key = t253 i_severity = t314 i_fix = t316 i_alternative_fixes = t317 ).
          t2->load( ).
          APPEND t248 TO t2->items.
          t2->save( ).
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA(t320) = VALUE abap_bool( ).
      DATA(t321) = VALUE abap_bool( ).
      DATA(t322) = VALUE abap_bool( ).
      DATA(t323) = VALUE abap_bool( ).
      DATA t325 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t325.
      DATA t327 TYPE REF TO object.
      CLEAR t327.
      t104->load( ).
      CLEAR t327.
      READ TABLE t104->items INDEX 1 INTO t327.
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
      DATA(t330) = VALUE abap_bool( ).
      DATA(t331) = VALUE i( ).
      DATA t332 TYPE string.
      t332 = t325->cnct_tkns_wtht_strng_and_cmmnt( ).
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
      t322 = xsdbool( t323 = abap_false ).
      t321 = t322.
      IF t322 = abap_true.
        DATA(t338) = VALUE abap_bool( ).
        DATA(t339) = VALUE abap_bool( ).
        DATA t341 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t341.
        DATA t343 TYPE REF TO object.
        CLEAR t343.
        t104->load( ).
        CLEAR t343.
        READ TABLE t104->items INDEX 2 INTO t343.
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
        DATA(t346) = VALUE abap_bool( ).
        DATA(t347) = VALUE i( ).
        DATA t348 TYPE string.
        t348 = t341->cnct_tkns_wtht_strng_and_cmmnt( ).
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
        t338 = xsdbool( t339 = abap_true ).
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
        DATA t360 TYPE REF TO object.
        CLEAR t360.
        t104->load( ).
        CLEAR t360.
        READ TABLE t104->items INDEX 1 INTO t360.
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
        t368 = t357.
        DATA t370 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t370 = t368->children.
        t367 = t370.
        t366 ?= t367.
        t366->load( ).
        t365 = lines( t366->items ).
        DATA(t372) = 1.
        t364 = xsdbool( t365 > t372 ).
        IF t364 = abap_true.
          t363 = abap_false.
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
          t379 = t357.
          DATA t383 TYPE REF TO zif_lnt_node.
          CLEAR t383.
          DATA t384 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t384 = t379->children.
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
          t378 = t383.
          t377 ?= t378.
          t376 = t377.
          DATA t390 TYPE REF TO zif_lnt_union_daf022d4.
          CLEAR t390.
          DATA(t391) = xsdbool( t376 IS INITIAL ).
          IF t391 = abap_true.
            CLEAR t390.
          ELSE.
            DATA t394 TYPE REF TO zif_lnt_union_daf022d4.
            DATA t395 TYPE REF TO object.
            DATA t396 TYPE REF TO zif_lnt_union_4cf1d054.
            t396 = t376.
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
        t355 = xsdbool( t356 = abap_true ).
        t354 = t355.
        IF t355 = abap_true.
          DATA(t400) = VALUE abap_bool( ).
          DATA(t401) = VALUE abap_bool( ).
          DATA t402 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t402.
          DATA t403 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t403.
          DATA t405 TYPE REF TO object.
          CLEAR t405.
          t104->load( ).
          CLEAR t405.
          READ TABLE t104->items INDEX 2 INTO t405.
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
          t413 = t402.
          DATA t415 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t415 = t413->children.
          t412 = t415.
          t411 ?= t412.
          t411->load( ).
          t410 = lines( t411->items ).
          DATA(t417) = 1.
          t409 = xsdbool( t410 > t417 ).
          IF t409 = abap_true.
            t408 = abap_false.
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
            t424 = t402.
            DATA t428 TYPE REF TO zif_lnt_node.
            CLEAR t428.
            DATA t429 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t429 = t424->children.
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
            t423 = t428.
            t422 ?= t423.
            t421 = t422.
            DATA t435 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t435.
            DATA(t436) = xsdbool( t421 IS INITIAL ).
            IF t436 = abap_true.
              CLEAR t435.
            ELSE.
              DATA t439 TYPE REF TO zif_lnt_union_daf022d4.
              DATA t440 TYPE REF TO object.
              DATA t441 TYPE REF TO zif_lnt_union_4cf1d054.
              t441 = t421.
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
          t400 = xsdbool( t401 = abap_true ).
          t354 = t400.
        ENDIF.
        t320 = t354.
      ENDIF.
      IF t320 = abap_true.
        DATA t448 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t448.
        DATA t449 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t449.
        DATA t451 TYPE REF TO object.
        CLEAR t451.
        t104->load( ).
        CLEAR t451.
        READ TABLE t104->items INDEX 1 INTO t451.
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
        DATA t454 TYPE REF TO zcl_lnt_position.
        t454 = t448->start.
        DATA t458 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t458.
        DATA t459 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t459.
        DATA t460 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t460.
        DATA t462 TYPE REF TO object.
        CLEAR t462.
        t104->load( ).
        CLEAR t462.
        READ TABLE t104->items INDEX 2 INTO t462.
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
        DATA t468 TYPE REF TO zcl_lnt_position.
        t468 = t458->start.
        DATA t470 TYPE f.
        t470 = t468->row.
        t466 = t470.
        DATA t472 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t473 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t475 TYPE REF TO zcl_lnt_position.
        t475 = t458->start.
        DATA t477 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t477 = t475->col.
        t473 = t477.
        DATA t479 TYPE f.
        DATA t481 TYPE string.
        t481 = t458->str.
        t479 = strlen( t481 ).
        DATA(t484) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t484->has = abap_true.
        t484->value = t479.
        t472 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t473 right = t484 op = `+` ).
        t465 = NEW zcl_lnt_position( i_row = t466 i_col = t472 ).
        DATA t486 TYPE REF TO zcl_lnt_issue.
        CLEAR t486.
        DATA(t490) = |No Yoda conditions|.
        DATA(t491) = VALUE string( ).
        DATA t492 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t492.
        DATA t493 TYPE string.
        t493 = |no_yoda_conditions|.
        DATA t495 TYPE string.
        t495 = |No Yoda conditions|.
        DATA t497 TYPE string.
        t497 = |Finds Yoda conditions and reports issues|.
        DATA t499 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t499.
        DATA(t502) = |https://en.wikipedia.org/wiki/Yoda_conditions\n\nConditions wi|.
        t502 = t502 && |th operators CP, NP, CS, NS, CA, NA, CO, CN are ignored|.
        DATA(t503) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t503->has = abap_true.
        t503->value = t502.
        t499 = t503.
        DATA t505 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t505.
        DATA t509 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t510 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t510.
        t509 = t510.
        DATA(t512) = |SingleFile|.
        t509->load( ).
        APPEND t512 TO t509->items.
        t509->save( ).
        t505 = t509.
        DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t515.
        DATA(t518) = |IF 0 <> sy-subrc.\nENDIF.|.
        DATA(t519) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t519->has = abap_true.
        t519->value = t518.
        t515 = t519.
        DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t521.
        DATA(t524) = |IF sy-subrc <> 0.\nENDIF.|.
        DATA(t525) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t525->has = abap_true.
        t525->value = t524.
        t521 = t525.
        DATA t527 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t527.
        DATA t529 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t529.
        t492 = NEW zcl_lnt_irule_metadata( i_key = t493 i_title = t495 i_short_description = t497 i_bad_example = t515 i_good_example = t521 i_extended_information = t499 i_tags = t505 i_pragma = t527 i_pseudo_comment = t529 ).
        CREATE OBJECT t492->zlnt_view_ownkeys_b0e8086400eb.
        t492->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t531.
        t492->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t531 ).
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
        t492->zlnt_json_ownkeys_70e5fd461788->put( p0 = t538 p1 = t539 ).
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
        t552 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t554 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t554.
        DATA t555 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t555.
        t486 = zcl_lnt_issue=>at_range( i_file = t1 i_start = t454 i_end = t465 i_message_26cb = t490 i_key = t491 i_severity = t552 i_fix = t554 i_alternative_fixes = t555 ).
        t2->load( ).
        APPEND t486 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD is_constant.
    DATA(t1) = i_node.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE i.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = t1.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t6->children.
    t5 = t8.
    t4 ?= t5.
    t4->load( ).
    t3 = lines( t4->items ).
    DATA(t10) = 1.
    t2 = xsdbool( t3 > t10 ).
    IF t2 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zif_lnt_union_daf022d4.
    DATA t14 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t16 TYPE REF TO zif_lnt_node.
    DATA t17 TYPE REF TO zcl_lnt_abstract_node.
    t17 = t1.
    DATA t21 TYPE REF TO zif_lnt_node.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t22 = t17->children.
    DATA t24 TYPE REF TO object.
    t22->load( ).
    READ TABLE t22->items INDEX 1 INTO t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t25 ?= t24.
      DATA t26 TYPE REF TO object.
      t26 = t25->as_ref( ).
      t21 ?= t26.
    ELSE.
      t21 ?= t24.
    ENDIF.
    t16 = t21.
    t15 ?= t16.
    t14 = t15.
    DATA t28 TYPE REF TO zif_lnt_union_daf022d4.
    DATA(t29) = xsdbool( t14 IS INITIAL ).
    IF t29 = abap_true.
    ELSE.
      DATA t32 TYPE REF TO zif_lnt_union_daf022d4.
      DATA t33 TYPE REF TO object.
      DATA t34 TYPE REF TO zif_lnt_union_4cf1d054.
      t34 = t14.
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
    t6 = t1.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t6->children.
    t5 = t8.
    t4 ?= t5.
    t4->load( ).
    t3 = lines( t4->items ).
    DATA(t10) = 1.
    t2 = xsdbool( t3 > t10 ).
    IF t2 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zif_lnt_union_daf022d4.
    DATA t14 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t16 TYPE REF TO zif_lnt_node.
    DATA t17 TYPE REF TO zcl_lnt_abstract_node.
    t17 = t1.
    DATA t21 TYPE REF TO zif_lnt_node.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t22 = t17->children.
    DATA t24 TYPE REF TO object.
    t22->load( ).
    READ TABLE t22->items INDEX 1 INTO t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t25 ?= t24.
      DATA t26 TYPE REF TO object.
      t26 = t25->as_ref( ).
      t21 ?= t26.
    ELSE.
      t21 ?= t24.
    ENDIF.
    t16 = t21.
    t15 ?= t16.
    t14 = t15.
    DATA t28 TYPE REF TO zif_lnt_union_daf022d4.
    DATA(t29) = xsdbool( t14 IS INITIAL ).
    IF t29 = abap_true.
    ELSE.
      DATA t32 TYPE REF TO zif_lnt_union_daf022d4.
      DATA t33 TYPE REF TO object.
      DATA t34 TYPE REF TO zif_lnt_union_4cf1d054.
      t34 = t14.
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
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE i( ).
    DATA t4 TYPE string.
    t4 = i_node->cnct_tkns_wtht_strng_and_cmmnt( ).
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
    result = CAST zcl_lnt_n_yd_cndtns_cnf( me->g_c_i_sr_rl_n_yd_cn_ts_n_yd_cn( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_n_yd_cndtns_cnf( me->g_c_i_sr_rl_n_yd_cn_ts_n_yd_cn( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_yd_cndtns_cnf.
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
        t1 = NEW zcl_lnt_n_yd_cndtns_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_sr_rl_n_yd_cn_ts_n_yd_cn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_sr_rl_n_yd_cn_ts_n_yd_cn( i_file = i_file ) ).

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
