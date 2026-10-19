* TS: src/rules/select_add_order_by.ts:20:1 SelectAddOrderBy
CLASS zcl_lnt_select_add_order_by DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_slct_add_ordr_by_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_s_a_o_b_t_s_ad_or_by RETURNING VALUE(result) TYPE REF TO zcl_lnt_slct_add_ordr_by_cnf.
    METHODS i_i_s_r_s_a_o_b_ts_sl_ad_or_by IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_select_add_order_by.
    METHODS s_c_i_s_r_s_a_o_b_t_s_ad_or_by IMPORTING i_conf TYPE REF TO zcl_lnt_slct_add_ordr_by_cnf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_target_sorted_or_hashed IMPORTING i_s TYPE REF TO zcl_lnt_statement_node i_spaghetti TYPE REF TO zif_lnt_spaghetti_scope i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_select_add_order_by IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_slct_add_ordr_by_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |select_add_order_by|.
    DATA t4 TYPE string.
    t4 = |SELECT add ORDER BY|.
    DATA t6 TYPE string.
    t6 = |SELECTs add ORDER BY clause|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |\nThis will make sure that the SELECT statement returns resul|.
    t11 = t11 && |ts in the same sequence on different databases\n\nadd ORDER BY|.
    t11 = t11 && | PRIMARY KEY if in doubt\n\nIf the target is a sorted/hashed t|.
    t11 = t11 && |able, no issue is reported|.
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
    DATA(t27) = |SELECT * FROM db INTO TABLE @DATA(tab).|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |SELECT * FROM db INTO TABLE @DATA(tab) ORDER BY PRIMARY KEY.|.
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

  METHOD g_c_i_s_r_s_a_o_b_t_s_ad_or_by.
    result = me->conf.

  ENDMETHOD.

  METHOD i_i_s_r_s_a_o_b_ts_sl_ad_or_by.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD s_c_i_s_r_s_a_o_b_t_s_ad_or_by.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    t6 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ).
    t5 = xsdbool( t6 = abap_false ).
    t4 = t5.
    IF t5 = abap_false.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE string.
      DATA t10 TYPE REF TO zcl_lnt_abap_object.
      DATA t12 TYPE REF TO object.
      t12 = t1.
      t10 ?= t12.
      t9 = t10->get_type( ).
      DATA(t13) = |INTF|.
      t8 = xsdbool( t9 = t13 ).
      t4 = t8.
    ENDIF.
    IF t4 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t14.
      result = t14.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t16 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t17 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t18 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t19) = me->reg.
    DATA t20 TYPE REF TO zcl_lnt_abap_object.
    DATA t22 TYPE REF TO object.
    t22 = t1.
    t20 ?= t22.
    t18 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t19 i_object_19cd = t20 ).
    t17 = t18->run( ).
    t16 = t17->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t15 = t16.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zcl_lnt_abap_object.
    DATA t27 TYPE REF TO object.
    t27 = t1.
    t25 ?= t27.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t28 = t25->parsed.
    t23 = t28.
    DATA t30 TYPE REF TO zcl_lnt_abap_file.
    DATA t31 TYPE REF TO object.
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
      DATA t35 TYPE REF TO zcl_lnt_structure_node.
      DATA t39 TYPE REF TO zcl_lnt_structure_node.
      t39 = t30->structure.
      t35 = t39.
      DATA(t41) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      t41 = xsdbool( t35 IS INITIAL ).
      IF t41 = abap_true.
        result = t2.
        RETURN.
      ENDIF.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t51 TYPE REF TO zcl_lnt_structure_node.
      t51 = t35.
      DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d611_2852a1970316.
      t50 = t51->find_all_statements( i_type_9913 = t53 ).
      t49 = t50.
      DATA(t54) = VALUE i( ).
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t56 TYPE REF TO zcl_lnt_structure_node.
      t56 = t35.
      DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d612_458d252c73b7.
      t55 = t56->find_all_statements( i_type_9913 = t58 ).
      DATA t59 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t59.
      DATA t60 TYPE REF TO object.
      CLEAR t60.
      DATA(t61) = VALUE i( ).
      DO.
        t55->load( ).
        IF t61 >= lines( t55->items ).
          EXIT.
        ENDIF.
        CLEAR t60.
        READ TABLE t55->items INDEX t61 + 1 INTO t60.
        t61 = t61 + 1.
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        CLEAR t59.
        IF t60 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t62 ?= t60.
          DATA t63 TYPE REF TO object.
          t63 = t62->as_ref( ).
          t59 ?= t63.
        ELSE.
          t59 ?= t60.
        ENDIF.
        t49->load( ).
        APPEND t59 TO t49->items.
        t49->save( ).
      ENDDO.
      DATA t66 TYPE i.
      t49->load( ).
      t66 = lines( t49->items ).
      t54 = t66.
      DATA t69 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t69.
      DATA t70 TYPE REF TO object.
      CLEAR t70.
      DATA(t71) = VALUE i( ).
      DO.
        t49->load( ).
        IF t71 >= lines( t49->items ).
          EXIT.
        ENDIF.
        CLEAR t70.
        READ TABLE t49->items INDEX t71 + 1 INTO t70.
        t71 = t71 + 1.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        CLEAR t69.
        IF t70 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t72 ?= t70.
          DATA t73 TYPE REF TO object.
          t73 = t72->as_ref( ).
          t69 ?= t73.
        ELSE.
          t69 ?= t70.
        ENDIF.
        DATA(t74) = VALUE string( ).
        DATA t75 TYPE string.
        DATA t76 TYPE string.
        t76 = t69->concat_tokens( ).
        DATA(t78) = strlen( t76 ).
        t75 = t76.
        IF t75 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t75 TO UPPER CASE.
        ELSE.
          t75 = zlnt_runtime_uppe_91169605024d=>full( t75 ).
        ENDIF.
        t74 = t75.
        DATA(t79) = VALUE abap_bool( ).
        DATA(t81) = |SELECT SINGLE |.
        DATA(t82) = strlen( t74 ).
        DATA t83 TYPE i.
        DATA(t84) = VALUE i( ).
        DATA(t85) = VALUE string( ).
        t83 = strlen( t81 ).
        IF t83 = 0.
          t79 = abap_true.
        ELSEIF t83 <= t82.
          t84 = 0.
          t85 = t74+t84(t83).
          IF t85 = t81.
            t79 = abap_true.
          ENDIF.
        ENDIF.
        IF t79 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t86) = VALUE abap_bool( ).
          DATA(t87) = VALUE abap_bool( ).
          DATA t88 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t88.
          DATA t89 TYPE REF TO zcl_lnt_slct_add_ordr_by_cnf.
          t89 = CAST zcl_lnt_slct_add_ordr_by_cnf( me->g_c_i_s_r_s_a_o_b_t_s_ad_or_by( ) ).
          DATA t91 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t91.
          DATA(t92) = xsdbool( t89 IS INITIAL ).
          IF t92 = abap_true.
            CLEAR t91.
          ELSE.
            DATA t95 TYPE abap_bool.
            t95 = t89->zlnt_view_read_sr_72f34613dda9( ).
            DATA(t97) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t97->has = abap_true.
            t97->value = t95.
            t91 = t97.
          ENDIF.
          t88 = t91.
          DATA t98 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t98.
          DATA(t101) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t101->has = abap_true.
          t101->value = abap_true.
          t98 = t101.
          DATA(t103) = VALUE abap_bool( ).
          DATA(t104) = VALUE abap_bool( ).
          IF t88 IS BOUND.
            t103 = t88->has.
          ENDIF.
          IF t98 IS BOUND.
            t104 = t98->has.
          ENDIF.
          IF t103 = t104.
            IF t103 = abap_false.
              t87 = abap_true.
            ELSEIF t88->value = t98->value.
              t87 = abap_true.
            ENDIF.
          ENDIF.
          t86 = t87.
          IF t87 = abap_true.
            DATA(t105) = VALUE abap_bool( ).
            DATA(t106) = VALUE i( ).
            DATA(t108) = | FOR ALL ENTRIES |.
            DATA(t109) = strlen( t74 ).
            IF t108 IS INITIAL.
              t106 = 0.
            ELSE.
              FIND t108 IN t74 MATCH OFFSET t106.
              IF sy-subrc <> 0.
                t106 = -1.
              ENDIF.
            ENDIF.
            DATA(t110) = 0.
            t105 = xsdbool( t106 >= t110 ).
            t86 = t105.
          ENDIF.
          IF t86 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
        t112 = t69->find_all_expressions( i_type_9913 = t114 ).
        t111 = t112.
        DATA t115 TYPE abap_bool.
        DATA t116 TYPE abap_bool.
        DATA t117 TYPE i.
        t111->load( ).
        t117 = lines( t111->items ).
        DATA(t119) = 1.
        t116 = xsdbool( t117 = t119 ).
        t115 = t116.
        IF t116 = abap_true.
          DATA(t120) = VALUE abap_bool( ).
          DATA t121 TYPE REF TO zif_lnt_union_daf022d4.
          CLEAR t121.
          DATA t122 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t122.
          DATA t123 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t123.
          DATA t124 TYPE REF TO zif_lnt_node.
          CLEAR t124.
          DATA t125 TYPE REF TO zcl_lnt_abstract_node.
          CLEAR t125.
          DATA t126 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t126.
          DATA t128 TYPE REF TO object.
          CLEAR t128.
          t111->load( ).
          CLEAR t128.
          READ TABLE t111->items INDEX 1 INTO t128.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          CLEAR t126.
          IF t128 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t129 ?= t128.
            DATA t130 TYPE REF TO object.
            t130 = t129->as_ref( ).
            t126 ?= t130.
          ELSE.
            t126 ?= t128.
          ENDIF.
          t125 = t126.
          DATA t133 TYPE REF TO zif_lnt_node.
          CLEAR t133.
          DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t134 = t125->children.
          DATA t136 TYPE REF TO object.
          CLEAR t136.
          t134->load( ).
          CLEAR t136.
          READ TABLE t134->items INDEX 1 INTO t136.
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t137.
          CLEAR t133.
          IF t136 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t137 ?= t136.
            DATA t138 TYPE REF TO object.
            t138 = t137->as_ref( ).
            t133 ?= t138.
          ELSE.
            t133 ?= t136.
          ENDIF.
          t124 = t133.
          t123 ?= t124.
          t122 = t123.
          DATA t140 TYPE REF TO zif_lnt_union_daf022d4.
          CLEAR t140.
          DATA(t141) = xsdbool( t122 IS INITIAL ).
          IF t141 = abap_true.
            CLEAR t140.
          ELSE.
            DATA t144 TYPE REF TO zif_lnt_union_daf022d4.
            DATA t145 TYPE REF TO object.
            DATA t146 TYPE REF TO zif_lnt_union_4cf1d054.
            t146 = t122.
            t145 = t146->get_db65( ).
            DATA t148 TYPE REF TO object.
            t148 = t145.
            t144 ?= t148.
            t140 = t144.
          ENDIF.
          t121 = t140.
          t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_sql_aggregation ).
          t115 = t120.
        ENDIF.
        IF t115 = abap_true.
          CONTINUE.
        ELSE.
          DATA t149 TYPE abap_bool.
          DATA t150 TYPE REF TO zcl_lnt_expression_node.
          DATA(t152) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
          t150 = t69->find_first_expression( i_type_9913 = t152 ).
          t149 = xsdbool( t150 IS BOUND ).
          IF t149 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA t153 TYPE abap_bool.
        t153 = me->is_target_sorted_or_hashed( i_s = t69 i_spaghetti = t15 i_file = t30 ).
        IF t153 = abap_true.
          CONTINUE.
        ELSE.
          DATA t157 TYPE abap_bool.
          DATA t158 TYPE abap_bool.
          DATA t159 TYPE REF TO zcl_lnt_expression_node.
          DATA(t161) = zlnt_runtime_desc_78196487750d=>zlnt_member_d320_7be18f722ddf.
          t159 = t69->find_first_expression( i_type_9913 = t161 ).
          t158 = xsdbool( t159 IS BOUND ).
          t157 = t158.
          IF t158 = abap_true.
            DATA t162 TYPE abap_bool.
            DATA t163 TYPE REF TO zcl_lnt_expression_node.
            DATA(t165) = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
            t163 = t69->find_first_expression( i_type_9913 = t165 ).
            t162 = xsdbool( t163 IS BOUND ).
            t157 = t162.
          ENDIF.
          IF t157 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA t167 TYPE REF TO zcl_lnt_issue.
        CLEAR t167.
        DATA(t170) = |Add ORDER BY|.
        DATA(t171) = VALUE string( ).
        DATA t172 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t172.
        DATA t173 TYPE string.
        t173 = |select_add_order_by|.
        DATA t175 TYPE string.
        t175 = |SELECT add ORDER BY|.
        DATA t177 TYPE string.
        t177 = |SELECTs add ORDER BY clause|.
        DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t179.
        DATA(t182) = |\nThis will make sure that the SELECT statement returns resul|.
        t182 = t182 && |ts in the same sequence on different databases\n\nadd ORDER BY|.
        t182 = t182 && | PRIMARY KEY if in doubt\n\nIf the target is a sorted/hashed t|.
        t182 = t182 && |able, no issue is reported|.
        DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t183->has = abap_true.
        t183->value = t182.
        t179 = t183.
        DATA t185 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t185.
        DATA t189 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t190.
        t189 = t190.
        DATA(t192) = |SingleFile|.
        t189->load( ).
        APPEND t192 TO t189->items.
        t189->save( ).
        t185 = t189.
        DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t195.
        DATA(t198) = |SELECT * FROM db INTO TABLE @DATA(tab).|.
        DATA(t199) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t199->has = abap_true.
        t199->value = t198.
        t195 = t199.
        DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t201.
        DATA(t204) = |SELECT * FROM db INTO TABLE @DATA(tab) ORDER BY PRIMARY KEY.|.
        DATA(t205) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t205->has = abap_true.
        t205->value = t204.
        t201 = t205.
        DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t207.
        DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t209.
        t172 = NEW zcl_lnt_irule_metadata( i_key = t173 i_title = t175 i_short_description = t177 i_bad_example = t195 i_good_example = t201 i_extended_information = t179 i_tags = t185 i_pragma = t207 i_pseudo_comment = t209 ).
        CREATE OBJECT t172->zlnt_view_ownkeys_b0e8086400eb.
        t172->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t211.
        t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t211 ).
        DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t212.
        IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t212 ).
        ENDIF.
        DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t213.
        IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t213 ).
        ENDIF.
        DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t214.
        IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t214 ).
        ENDIF.
        DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t215.
        IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t215 ).
        ENDIF.
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t216.
        IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t216 ).
        ENDIF.
        DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t217.
        IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t217 ).
        ENDIF.
        CREATE OBJECT t172->zlnt_json_ownkeys_70e5fd461788.
        t172->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t218) = |key|.
        DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t219.
        t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
        DATA(t220) = |title|.
        DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t221.
        IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
        ENDIF.
        DATA(t222) = |shortDescription|.
        DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t223.
        IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t222 p1 = t223 ).
        ENDIF.
        DATA(t224) = |extendedInformation|.
        DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t225.
        IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t224 p1 = t225 ).
        ENDIF.
        DATA(t226) = |tags|.
        DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t227.
        IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t226 p1 = t227 ).
        ENDIF.
        DATA(t228) = |badExample|.
        DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t229.
        IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t228 p1 = t229 ).
        ENDIF.
        DATA(t230) = |goodExample|.
        DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t231.
        IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t230 p1 = t231 ).
        ENDIF.
        t171 = t172->key.
        DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t232 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t234 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t234.
        DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t235.
        t167 = zcl_lnt_issue=>at_statement( i_file = t30 i_statement = t69 i_message_26cb = t170 i_key = t171 i_severity = t232 i_fix = t234 i_alternative_fixes = t235 ).
        t2->load( ).
        APPEND t167 TO t2->items.
        t2->save( ).
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD is_target_sorted_or_hashed.
    DATA(t2) = i_spaghetti.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    t7 = i_s->find_first_expression( i_type_9913 = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA(t11) = xsdbool( t6 IS INITIAL ).
    IF t11 = abap_true.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      t15 = t6.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t14 = t15->find_first_expression( i_type_9913 = t17 ).
      t10 = t14.
    ENDIF.
    t4 = t10.
    DATA t18 TYPE abap_bool.
    t18 = xsdbool( t4 IS BOUND ).
    IF t18 = abap_true.
      DATA t20 TYPE REF TO zcl_lnt_position.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      t24 = t4.
      t23 = t24->get_first_token( ).
      DATA t26 TYPE REF TO zcl_lnt_position.
      t26 = t23->start.
      t20 = t26.
      DATA t29 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t31 TYPE REF TO zcl_lnt_position.
      t31 = t20.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t38 TYPE REF TO zcl_lnt_abstract_file.
      t38 = t3.
      DATA t40 TYPE string.
      t40 = t38->filename.
      DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t42->has = abap_true.
      t42->value = t40.
      t35 = t42.
      t29 = t2->lookup_position( i_p = t31 i_filename = t35 ).
      DATA t44 TYPE REF TO zcl_lnt_abstract_type.
      DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t48 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t48 = t29.
      DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t51) = xsdbool( t48 IS INITIAL ).
      IF t51 = abap_true.
      ELSE.
        DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t55 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t55 = t48.
        t54 = t55->find_write_reference( i_pos = t20 ).
        t50 = t54.
      ENDIF.
      t46 = t50.
      DATA t58 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t59) = xsdbool( t46 IS INITIAL ).
      IF t59 = abap_true.
      ELSE.
        DATA t66 TYPE REF TO zcl_lnt_abstract_type.
        t66 = t46->type_cba0.
        t58 = t66.
      ENDIF.
      t44 = t58.
      DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t71 TYPE REF TO zcl_lnt_abstract_node.
      t71 = t4.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t74 = t71->children.
      t70 = t74.
      t69 ?= t70.
      t68 = t69.
      DATA(t76) = VALUE abap_bool( ).
      DATA t77 TYPE abap_bool.
      DATA t78 TYPE abap_bool.
      DATA(t79) = t44.
      t78 = xsdbool( t79 IS BOUND AND t79 IS INSTANCE OF zcl_lnt_structure_type ).
      t77 = t78.
      IF t78 = abap_true.
        DATA t80 TYPE abap_bool.
        DATA t81 TYPE i.
        t68->load( ).
        t81 = lines( t68->items ).
        DATA(t83) = 3.
        t80 = xsdbool( t81 >= t83 ).
        t77 = t80.
      ENDIF.
      t76 = t77.
      IF t77 = abap_true.
        DATA(t84) = VALUE abap_bool( ).
        DATA(t85) = VALUE string( ).
        DATA t86 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t88 TYPE REF TO object.
        t68->load( ).
        READ TABLE t68->items INDEX 2 INTO t88.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t88 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t89 ?= t88.
          DATA t90 TYPE REF TO object.
          t90 = t89->as_ref( ).
          t86 ?= t90.
        ELSE.
          t86 ?= t88.
        ENDIF.
        t85 = t86->concat_tokens( ).
        DATA(t91) = |-|.
        t84 = xsdbool( t85 = t91 ).
        t76 = t84.
      ENDIF.
      IF t76 = abap_true.
        DATA t92 TYPE REF TO zcl_lnt_abstract_type.
        DATA t95 TYPE REF TO zcl_lnt_structure_type.
        t95 ?= t44.
        DATA(t97) = VALUE string( ).
        DATA(t98) = VALUE string( ).
        DATA t99 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t101 TYPE REF TO object.
        t68->load( ).
        READ TABLE t68->items INDEX 3 INTO t101.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t101 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t102 ?= t101.
          DATA t103 TYPE REF TO object.
          t103 = t102->as_ref( ).
          t99 ?= t103.
        ELSE.
          t99 ?= t101.
        ENDIF.
        t98 = t99->concat_tokens( ).
        t97 = t98.
        DATA t104 TYPE REF TO zcl_lnt_abstract_type.
        DATA t105 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        t105 = t95->indexed.
        DATA t107 TYPE string.
        DATA(t109) = strlen( t97 ).
        t107 = t97.
        IF t107 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t107 TO UPPER CASE.
        ELSE.
          t107 = zlnt_runtime_uppe_91169605024d=>full( t107 ).
        ENDIF.
        t104 = t105->get( p0 = t107 ).
        t92 = t104.
        DATA(t110) = VALUE abap_bool( ).
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t110 = xsdbool( t92 IS INITIAL ).
        IF t110 = abap_true.
          result = abap_false.
          RETURN.
        ENDIF.
        t44 = t92.
      ENDIF.
      DATA t123 TYPE abap_bool.
      DATA t124 TYPE abap_bool.
      t124 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t123 = t124.
      IF t124 = abap_true.
        DATA(t126) = VALUE abap_bool( ).
        DATA(t127) = VALUE abap_bool( ).
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t129 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t130 TYPE REF TO zcl_lnt_ty_table_type.
        t130 ?= t44.
        t129 = t130.
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t133) = xsdbool( t129 IS INITIAL ).
        IF t133 = abap_true.
        ELSE.
          DATA t140 TYPE REF TO zcl_lnt_itable_key.
          DATA t141 TYPE REF TO zcl_lnt_itable_key.
          DATA t142 TYPE REF TO zcl_lnt_itable_options.
          t142 = t129->options.
          t141 = t142->zlnt_view_read_sr_48b89cc62ab9( ).
          t140 = t141.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t145) = xsdbool( t140 IS INITIAL ).
          IF t145 = abap_true.
          ELSE.
            DATA t148 TYPE string.
            DATA t149 TYPE REF TO zcl_lnt_itable_key.
            t149 = t140.
            t148 = t149->zlnt_view_read_sr_f361ef311f50( ).
            DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t151->has = abap_true.
            t151->value = t148.
            t144 = t151.
          ENDIF.
          t132 = t144.
        ENDIF.
        t128 = t132.
        DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t154) = |SORTED|.
        DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t155->has = abap_true.
        t155->value = t154.
        t152 = t155.
        DATA(t157) = VALUE abap_bool( ).
        DATA(t158) = VALUE abap_bool( ).
        IF t128 IS BOUND.
          t157 = t128->has.
        ENDIF.
        IF t152 IS BOUND.
          t158 = t152->has.
        ENDIF.
        IF t157 = t158.
          IF t157 = abap_false.
            t127 = abap_true.
          ELSEIF t128->value = t152->value.
            t127 = abap_true.
          ENDIF.
        ENDIF.
        t126 = t127.
        IF t127 = abap_false.
          DATA(t159) = VALUE abap_bool( ).
          DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t161 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t162 TYPE REF TO zcl_lnt_ty_table_type.
          t162 ?= t44.
          t161 = t162.
          DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t165) = xsdbool( t161 IS INITIAL ).
          IF t165 = abap_true.
          ELSE.
            DATA t172 TYPE REF TO zcl_lnt_itable_key.
            DATA t173 TYPE REF TO zcl_lnt_itable_key.
            DATA t174 TYPE REF TO zcl_lnt_itable_options.
            t174 = t161->options.
            t173 = t174->zlnt_view_read_sr_48b89cc62ab9( ).
            t172 = t173.
            DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t177) = xsdbool( t172 IS INITIAL ).
            IF t177 = abap_true.
            ELSE.
              DATA t180 TYPE string.
              DATA t181 TYPE REF TO zcl_lnt_itable_key.
              t181 = t172.
              t180 = t181->zlnt_view_read_sr_f361ef311f50( ).
              DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t183->has = abap_true.
              t183->value = t180.
              t176 = t183.
            ENDIF.
            t164 = t176.
          ENDIF.
          t160 = t164.
          DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t186) = |HASHED|.
          DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t187->has = abap_true.
          t187->value = t186.
          t184 = t187.
          DATA(t189) = VALUE abap_bool( ).
          DATA(t190) = VALUE abap_bool( ).
          IF t160 IS BOUND.
            t189 = t160->has.
          ENDIF.
          IF t184 IS BOUND.
            t190 = t184->has.
          ENDIF.
          IF t189 = t190.
            IF t189 = abap_false.
              t159 = abap_true.
            ELSEIF t160->value = t184->value.
              t159 = abap_true.
            ENDIF.
          ENDIF.
          t126 = t159.
        ENDIF.
        t123 = t126.
      ENDIF.
      IF t123 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_slct_add_ordr_by_cnf( me->g_c_i_s_r_s_a_o_b_t_s_ad_or_by( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_slct_add_ordr_by_cnf( me->g_c_i_s_r_s_a_o_b_t_s_ad_or_by( ) ).
  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_select_add_order_by.
    DATA(t3) = i_reg_f149.
    t2 = me->i_i_s_r_s_a_o_b_ts_sl_ad_or_by( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_slct_add_ordr_by_cnf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_slct_add_ordr_by_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_s_a_o_b_t_s_ad_or_by( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1686_ea71804bc65d.
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
