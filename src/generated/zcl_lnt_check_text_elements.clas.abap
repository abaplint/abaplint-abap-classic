* TS: src/rules/check_text_elements.ts:13:1 CheckTextElements
CLASS zcl_lnt_check_text_elements DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_chck_txt_elmnts_cnf.
    DATA graph TYPE REF TO zcl_lnt_include_graph.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_ch_tx_el_ts_ch_tx_el RETURNING VALUE(result) TYPE REF TO zcl_lnt_chck_txt_elmnts_cnf.
    METHODS s_c_i_s_r_ch_tx_el_ts_ch_tx_el IMPORTING i_conf TYPE REF TO zcl_lnt_chck_txt_elmnts_cnf.
    METHODS i_i_sr_rl_ch_tx_el_ts_ch_tx_el IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_check_text_elements.
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
CLASS zcl_lnt_check_text_elements IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_chck_txt_elmnts_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    DATA(t3) = |check_text_elements|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Check text elements|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Check text elements exists or matches code|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    t18 = t19.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t8 i_good_example = t10 i_extended_information = t12 i_tags = t14 i_pragma = t16 i_pseudo_comment = t18 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t20 ).
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t21 ).
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t22 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t23) = |key|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t23 p1 = t24 ).
    ENDIF.
    DATA(t25) = |title|.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t25 p1 = t26 ).
    ENDIF.
    DATA(t27) = |shortDescription|.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_ch_tx_el_ts_ch_tx_el.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_ch_tx_el_ts_ch_tx_el.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_ch_tx_el_ts_ch_tx_el.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA t3 TYPE REF TO zcl_lnt_include_graph.
    DATA(t4) = me->reg.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t6.
    t3 = NEW zcl_lnt_include_graph( i_reg_f149 = t4 i_severity = t5 i_allow_unused = t6 ).
    me->graph = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `graph`.
    DATA(t7) = me.
    result = t7.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_abap_object ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t5.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t10.
    DATA(t11) = t1.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    t12 = t11.
    t10 ?= t12.
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA(t14) = t9.
    t13 = t14->parsed.
    t8 = t13.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t15.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
    DATA(t17) = VALUE i( ).
    DO.
      t8->load( ).
      IF t17 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t8->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        CLEAR t19.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA t20 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t22.
      DATA(t23) = t15.
      t22 = t23.
      DATA t24 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t24.
      DATA(t25) = t22.
      t24 = t25->structure.
      t21 = t24.
      t20 = t21.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t27.
      DATA(t28) = t20.
      t27 = t28.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
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
      DATA t33 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t34 = t35.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t38.
      DATA(t39) = t20.
      t38 = t39.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t42.
      CREATE OBJECT t42.
      t41 = t42.
      DATA(t43) = t41.
      DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d157_1c35602cbab5.
      t43->load( ).
      APPEND t44 TO t43->items.
      t43->save( ).
      DATA(t45) = t41.
      DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d139_249fe3e5ef12.
      t45->load( ).
      APPEND t46 TO t45->items.
      t45->save( ).
      DATA(t47) = t41.
      t40 = t47.
      t37 = t38->f_a_e_m_i_s_a_n_st_nd_ts_st_nd( i_type_9913 = t40 ).
      t36 = t37.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = VALUE i( ).
      DATA(t50) = t36.
      t50->load( ).
      t49 = lines( t50->items ).
      DATA(t51) = 0.
      t48 = xsdbool( t49 > t51 ).
      IF t48 = abap_true.
        DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t52.
        DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t53.
        DATA(t54) = me->graph.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        DATA(t56) = abap_true.
        IF t56 = abap_true.
          DATA(t57) = VALUE string( ).
          DATA t58 TYPE REF TO zcl_lnt_abstract_file.
          CLEAR t58.
          DATA(t59) = t15.
          t58 = t59.
          DATA(t60) = VALUE string( ).
          DATA(t61) = t58.
          t60 = t61->filename.
          t57 = t60.
          DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t62->has = abap_true.
          t62->value = t57.
          t55 = t62.
        ELSE.
          DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t63.
          t55 = t63.
        ENDIF.
        t53 = t54->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t55 ).
        t52 = t53.
        DATA(t64) = VALUE abap_bool( ).
        DATA(t65) = VALUE i( ).
        DATA(t66) = t52.
        t66->load( ).
        t65 = lines( t66->items ).
        DATA(t67) = 1.
        t64 = xsdbool( t65 = t67 ).
        IF t64 = abap_true.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          DATA(t69) = abap_true.
          IF t69 = abap_true.
            DATA(t70) = VALUE string( ).
            DATA(t71) = t52.
            IF t71->has( 1 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t71->load( ).
            CLEAR t70.
            READ TABLE t71->items INDEX 1 INTO t70.
            DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t72->has = abap_true.
            t72->value = t70.
            t68 = t72.
          ELSE.
            DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t73.
            t68 = t73.
          ENDIF.
          t34 = t68.
          DATA t74 TYPE REF TO zif_lnt_union_35a9fad2.
          CLEAR t74.
          DATA t75 TYPE REF TO zif_lnt_union_35a9fad2.
          CLEAR t75.
          DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t76.
          DATA t77 TYPE REF TO zif_lnt_object.
          CLEAR t77.
          DATA t78 TYPE REF TO zif_lnt_object.
          CLEAR t78.
          DATA(t79) = me->reg.
          DATA t80 TYPE REF TO zif_lnt_file.
          CLEAR t80.
          DATA t81 TYPE REF TO zif_lnt_file.
          CLEAR t81.
          DATA(t82) = me->reg.
          DATA(t83) = VALUE string( ).
          DATA(t84) = t52.
          IF t84->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t84->load( ).
          CLEAR t83.
          READ TABLE t84->items INDEX 1 INTO t83.
          t81 = t82->get_file_by_name( i_filename = t83 ).
          t80 = t81.
          t78 = t79->find_object_for_file( i_file = t80 ).
          t77 = t78.
          CLEAR t76.
          IF t77 IS BOUND.
            DATA t85 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t85.
            DATA t86 TYPE REF TO object.
            CLEAR t86.
            CLEAR t85.
            t86 = t77.
            TRY.
                t76 ?= t86.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t76 IS NOT BOUND.
              TRY.
                  t85 ?= t77.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t85 IS BOUND.
                t76 = t85->source( ).
              ENDIF.
              IF t76 IS NOT BOUND.
                CREATE OBJECT t76.
                t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t76->oval = t77.
              ENDIF.
            ENDIF.
          ENDIF.
          DATA t87 TYPE REF TO object.
          CLEAR t87.
          t87 = t76->as_ref( ).
          t75 ?= t87.
          t74 = t75.
          DATA t88 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
          CLEAR t88.
          DATA(t89) = t74.
          t88 = t89->get_text_symbols( ).
          t33 = t88.
        ELSE.
          DATA t90 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
          CLEAR t90.
          DATA t91 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t91.
          DATA(t92) = t1.
          DATA t93 TYPE REF TO object.
          CLEAR t93.
          t93 = t92.
          t91 ?= t93.
          t90 = t91->get_text_symbols( ).
          t33 = t90.
        ENDIF.
      ENDIF.
      DATA(t94) = t36.
      DATA t95 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t95.
      DATA t96 TYPE REF TO object.
      CLEAR t96.
      DATA(t97) = VALUE i( ).
      DO.
        t94->load( ).
        IF t97 >= lines( t94->items ).
          EXIT.
        ENDIF.
        CLEAR t96.
        READ TABLE t94->items INDEX t97 + 1 INTO t96.
        t97 = t97 + 1.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        CLEAR t95.
        IF t96 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t98 ?= t96.
          DATA t99 TYPE REF TO object.
          CLEAR t99.
          t99 = t98->as_ref( ).
          t95 ?= t99.
        ELSE.
          t95 ?= t96.
        ENDIF.
        DATA(t100) = VALUE string( ).
        DATA(t101) = VALUE string( ).
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = VALUE abap_bool( ).
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        DATA(t105) = t34.
        t104 = t105.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        t106 = t107.
        DATA(t108) = VALUE abap_bool( ).
        DATA(t109) = VALUE abap_bool( ).
        DATA(t110) = t104.
        IF t110 IS INITIAL.
          t109 = abap_true.
        ELSEIF t110->has = abap_false.
          t109 = abap_true.
        ENDIF.
        t108 = xsdbool( t109 = abap_false ).
        t103 = t108.
        t102 = t103.
        IF t103 = abap_true.
          DATA(t111) = VALUE abap_bool( ).
          DATA(t112) = VALUE string( ).
          DATA(t113) = VALUE string( ).
          DATA(t114) = t34.
          t113 = t114->value.
          DATA(t115) = strlen( t113 ).
          t112 = t113.
          TRANSLATE t112 TO LOWER CASE.
          DATA(t116) = VALUE string( ).
          DATA(t117) = VALUE string( ).
          DATA t118 TYPE REF TO zcl_lnt_abstract_file.
          CLEAR t118.
          DATA(t119) = t15.
          t118 = t119.
          DATA(t120) = VALUE string( ).
          DATA(t121) = t118.
          t120 = t121->filename.
          t117 = t120.
          DATA(t122) = strlen( t117 ).
          t116 = t117.
          TRANSLATE t116 TO LOWER CASE.
          t111 = xsdbool( t112 <> t116 ).
          t102 = t111.
        ENDIF.
        IF t102 = abap_true.
          DATA(t123) = VALUE string( ).
          DATA(t124) = |, |.
          DATA(t125) = VALUE string( ).
          DATA(t126) = t34.
          t125 = t126->value.
          DATA(t127) = strlen( t124 ).
          t123 = |{ t124 }{ t125 }|.
          t101 = t123.
        ELSE.
          DATA(t128) = ||.
          t101 = t128.
        ENDIF.
        t100 = t101.
        DATA(t129) = VALUE abap_bool( ).
        DATA t130 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t130.
        DATA(t131) = t95.
        t130 = t131->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t129 = xsdbool( t130 IS BOUND AND t130 IS INSTANCE OF zcl_lnt_text_element ).
        IF t129 = abap_true.
          DATA t132 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t132.
          DATA t133 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t133.
          DATA t134 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t134.
          DATA t135 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t135.
          DATA(t136) = t95.
          DATA(t137) = zlnt_runtime_desc_78196487750d=>zlnt_member_d350_60b8c1b06659.
          t135 = t136->find_first_expression( i_type_9913 = t137 ).
          t134 = t135.
          t133 = t134->get_first_token( ).
          t132 = t133.
          DATA(t138) = VALUE string( ).
          DATA(t139) = VALUE string( ).
          DATA(t140) = VALUE string( ).
          DATA t141 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t141.
          DATA(t142) = t132.
          t141 = t142.
          DATA(t143) = VALUE string( ).
          DATA(t144) = t141.
          t143 = t144->str.
          t140 = t143.
          DATA(t145) = strlen( t140 ).
          t139 = t140.
          IF t139 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t139 TO UPPER CASE.
          ELSE.
            t139 = zlnt_runtime_uppe_91169605024d=>full( t139 ).
          ENDIF.
          t138 = t139.
          DATA(t146) = VALUE abap_bool( ).
          DATA t147 TYPE REF TO zcl_lnt_shape_015c050b.
          CLEAR t147.
          DATA t148 TYPE REF TO zcl_lnt_shape_015c050b.
          CLEAR t148.
          DATA(t149) = t33.
          DATA(t150) = t138.
          t148 = t149->get( p0 = t150 ).
          t147 = t148.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          t151 = t152.
          DATA(t153) = VALUE abap_bool( ).
          DATA(t154) = t147.
          IF t154 IS INITIAL.
            t153 = abap_true.
          ENDIF.
          t146 = t153.
          IF t146 = abap_true.
            DATA(t155) = VALUE string( ).
            DATA(t156) = VALUE string( ).
            DATA(t157) = VALUE string( ).
            DATA(t158) = VALUE string( ).
            DATA(t159) = |Text element "|.
            DATA(t160) = t138.
            DATA(t161) = strlen( t159 ).
            t158 = |{ t159 }{ t160 }|.
            DATA(t162) = |" not found|.
            DATA(t163) = strlen( t158 ).
            t157 = |{ t158 }{ t162 }|.
            DATA(t164) = t100.
            DATA(t165) = strlen( t157 ).
            t156 = |{ t157 }{ t164 }|.
            t155 = t156.
            DATA(t166) = t6.
            DATA t167 TYPE REF TO zcl_lnt_issue.
            CLEAR t167.
            DATA(t168) = t15.
            DATA(t169) = t132.
            DATA(t170) = t155.
            DATA(t171) = VALUE string( ).
            DATA t172 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t172.
            DATA(t173) = VALUE string( ).
            DATA(t174) = |check_text_elements|.
            t173 = t174.
            DATA(t175) = VALUE string( ).
            DATA(t176) = |Check text elements|.
            t175 = t176.
            DATA(t177) = VALUE string( ).
            DATA(t178) = |Check text elements exists or matches code|.
            t177 = t178.
            DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t179.
            DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t180.
            t179 = t180.
            DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t181.
            DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t182.
            t181 = t182.
            DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t183.
            DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t184.
            t183 = t184.
            DATA t185 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t185.
            DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t186.
            t185 = t186.
            DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t187.
            DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t188.
            t187 = t188.
            DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t189.
            DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t190.
            t189 = t190.
            t172 = NEW zcl_lnt_irule_metadata( i_key = t173 i_title = t175 i_short_description = t177 i_bad_example = t179 i_good_example = t181 i_extended_information = t183 i_tags = t185 i_pragma = t187 i_pseudo_comment = t189 ).
            CREATE OBJECT t172->zlnt_view_ownkeys_b0e8086400eb.
            t172->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t191.
            IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t191 ).
            ENDIF.
            DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t192.
            IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t192 ).
            ENDIF.
            DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t193.
            IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t193 ).
            ENDIF.
            CREATE OBJECT t172->zlnt_json_ownkeys_70e5fd461788.
            t172->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t194) = |key|.
            DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t195.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t194 p1 = t195 ).
            ENDIF.
            DATA(t196) = |title|.
            DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t197.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t196 p1 = t197 ).
            ENDIF.
            DATA(t198) = |shortDescription|.
            DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t199.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t198 p1 = t199 ).
            ENDIF.
            t171 = t172->key.
            DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t200.
            DATA(t201) = me->conf.
            t200 = t201->zlnt_view_read_sr_15c06369f827( ).
            DATA t202 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t202.
            t167 = zcl_lnt_issue=>at_token( i_file = t168 i_token = t169 i_message_26cb = t170 i_key = t171 i_severity = t200 i_fix = t202 ).
            t166->load( ).
            APPEND t167 TO t166->items.
            t166->save( ).
          ENDIF.
        ELSE.
          DATA t203 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t203.
          DATA t204 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t204.
          DATA t205 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t205.
          DATA t206 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t206.
          DATA(t207) = t95.
          DATA(t208) = zlnt_runtime_desc_78196487750d=>zlnt_member_d350_60b8c1b06659.
          t206 = t207->find_first_expression( i_type_9913 = t208 ).
          t205 = t206.
          t204 = t205->get_first_token( ).
          t203 = t204.
          DATA(t209) = VALUE string( ).
          DATA(t210) = VALUE string( ).
          DATA t211 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t211.
          DATA t212 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t212.
          DATA(t213) = t95.
          t212 = t213->get_first_token( ).
          t211 = t212.
          DATA(t214) = VALUE string( ).
          DATA(t215) = t211.
          t214 = t215->str.
          t210 = t214.
          t209 = t210.
          DATA(t216) = VALUE string( ).
          DATA(t217) = VALUE string( ).
          DATA(t218) = VALUE string( ).
          DATA t219 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t219.
          DATA(t220) = t203.
          t219 = t220.
          DATA(t221) = VALUE string( ).
          DATA(t222) = t219.
          t221 = t222->str.
          t218 = t221.
          DATA(t223) = strlen( t218 ).
          t217 = t218.
          IF t217 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t217 TO UPPER CASE.
          ELSE.
            t217 = zlnt_runtime_uppe_91169605024d=>full( t217 ).
          ENDIF.
          t216 = t217.
          DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t224.
          DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t225.
          DATA t226 TYPE REF TO zcl_lnt_shape_015c050b.
          CLEAR t226.
          DATA t227 TYPE REF TO zcl_lnt_shape_015c050b.
          CLEAR t227.
          DATA(t228) = t33.
          DATA(t229) = t216.
          t227 = t228->get( p0 = t229 ).
          t226 = t227.
          DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t230.
          DATA(t231) = VALUE abap_bool( ).
          DATA(t232) = t226.
          IF t232 IS INITIAL.
            t231 = abap_true.
          ENDIF.
          IF t231 = abap_true.
            DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t233.
            t230 = t233.
          ELSE.
            DATA(t234) = VALUE string( ).
            DATA t235 TYPE REF TO zcl_lnt_shape_015c050b.
            CLEAR t235.
            DATA(t236) = t226.
            t235 = t236.
            t234 = t235->entry.
            DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t237->has = abap_true.
            t237->value = t234.
            t230 = t237.
          ENDIF.
          t225 = t230.
          t224 = t225.
          DATA(t238) = VALUE abap_bool( ).
          DATA(t239) = VALUE abap_bool( ).
          DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t240.
          DATA(t241) = t224.
          t240 = t241.
          DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t242.
          DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t243.
          t242 = t243.
          DATA(t244) = VALUE abap_bool( ).
          DATA(t245) = VALUE abap_bool( ).
          DATA(t246) = t240.
          IF t246 IS INITIAL.
            t245 = abap_true.
          ELSEIF t246->has = abap_false.
            t245 = abap_true.
          ENDIF.
          t244 = xsdbool( t245 = abap_false ).
          t239 = t244.
          t238 = t239.
          IF t239 = abap_true.
            DATA(t247) = VALUE abap_bool( ).
            DATA(t248) = t209.
            DATA(t249) = |'|.
            DATA(t250) = strlen( t248 ).
            DATA(t251) = VALUE i( ).
            DATA(t252) = VALUE i( ).
            DATA(t253) = VALUE string( ).
            t251 = strlen( t249 ).
            IF t251 = 0.
              t247 = abap_true.
            ELSEIF t251 <= t250.
              t252 = 0.
              t253 = t248+t252(t251).
              IF t253 = t249.
                t247 = abap_true.
              ENDIF.
            ENDIF.
            t238 = t247.
          ENDIF.
          IF t238 = abap_true.
            DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t254.
            DATA(t255) = abap_true.
            IF t255 = abap_true.
              DATA(t256) = VALUE string( ).
              DATA(t257) = VALUE string( ).
              DATA(t258) = t224.
              t257 = t258->value.
              DATA t259 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
              CLEAR t259.
              DATA(t260) = |'|.
              DATA(t261) = |g|.
              CREATE OBJECT t259 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t260 flags = t261 checked = abap_true.
              DATA(t262) = |''|.
              DATA(t263) = strlen( t257 ).
              t256 = t259->replace( p0 = t257 p1 = t262 ).
              DATA(t264) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t264->has = abap_true.
              t264->value = t256.
              t254 = t264.
            ELSE.
              DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t265.
              t254 = t265.
            ENDIF.
            t224 = t254.
          ENDIF.
          DATA(t266) = VALUE abap_bool( ).
          DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t267.
          DATA(t268) = t224.
          t267 = t268.
          DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t269.
          DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t270.
          t269 = t270.
          DATA(t271) = VALUE abap_bool( ).
          DATA(t272) = t267.
          IF t272 IS INITIAL.
            t271 = abap_true.
          ELSEIF t272->has = abap_false.
            t271 = abap_true.
          ENDIF.
          t266 = t271.
          IF t266 = abap_true.
            DATA(t273) = VALUE string( ).
            DATA(t274) = VALUE string( ).
            DATA(t275) = VALUE string( ).
            DATA(t276) = VALUE string( ).
            DATA(t277) = |Text element "|.
            DATA(t278) = t216.
            DATA(t279) = strlen( t277 ).
            t276 = |{ t277 }{ t278 }|.
            DATA(t280) = |" not found|.
            DATA(t281) = strlen( t276 ).
            t275 = |{ t276 }{ t280 }|.
            DATA(t282) = t100.
            DATA(t283) = strlen( t275 ).
            t274 = |{ t275 }{ t282 }|.
            t273 = t274.
            DATA(t284) = t6.
            DATA t285 TYPE REF TO zcl_lnt_issue.
            CLEAR t285.
            DATA(t286) = t15.
            DATA(t287) = t203.
            DATA(t288) = t273.
            DATA(t289) = VALUE string( ).
            DATA t290 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t290.
            DATA(t291) = VALUE string( ).
            DATA(t292) = |check_text_elements|.
            t291 = t292.
            DATA(t293) = VALUE string( ).
            DATA(t294) = |Check text elements|.
            t293 = t294.
            DATA(t295) = VALUE string( ).
            DATA(t296) = |Check text elements exists or matches code|.
            t295 = t296.
            DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t297.
            DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t298.
            t297 = t298.
            DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t299.
            DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t300.
            t299 = t300.
            DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t301.
            DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t302.
            t301 = t302.
            DATA t303 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t303.
            DATA t304 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t304.
            t303 = t304.
            DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t305.
            DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t306.
            t305 = t306.
            DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t307.
            DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t308.
            t307 = t308.
            t290 = NEW zcl_lnt_irule_metadata( i_key = t291 i_title = t293 i_short_description = t295 i_bad_example = t297 i_good_example = t299 i_extended_information = t301 i_tags = t303 i_pragma = t305 i_pseudo_comment = t307 ).
            CREATE OBJECT t290->zlnt_view_ownkeys_b0e8086400eb.
            t290->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t309.
            IF t290->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t290->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t309 ).
            ENDIF.
            DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t310.
            IF t290->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t290->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t310 ).
            ENDIF.
            DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t311.
            IF t290->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t290->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t311 ).
            ENDIF.
            CREATE OBJECT t290->zlnt_json_ownkeys_70e5fd461788.
            t290->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t312) = |key|.
            DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t313.
            IF t290->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t290->zlnt_json_ownkeys_70e5fd461788->put( p0 = t312 p1 = t313 ).
            ENDIF.
            DATA(t314) = |title|.
            DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t315.
            IF t290->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t290->zlnt_json_ownkeys_70e5fd461788->put( p0 = t314 p1 = t315 ).
            ENDIF.
            DATA(t316) = |shortDescription|.
            DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t317.
            IF t290->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t290->zlnt_json_ownkeys_70e5fd461788->put( p0 = t316 p1 = t317 ).
            ENDIF.
            t289 = t290->key.
            DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t318.
            DATA(t319) = me->conf.
            t318 = t319->zlnt_view_read_sr_15c06369f827( ).
            DATA t320 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t320.
            t285 = zcl_lnt_issue=>at_token( i_file = t286 i_token = t287 i_message_26cb = t288 i_key = t289 i_severity = t318 i_fix = t320 ).
            t284->load( ).
            APPEND t285 TO t284->items.
            t284->save( ).
          ELSE.
            DATA(t321) = VALUE abap_bool( ).
            DATA(t322) = VALUE abap_bool( ).
            DATA(t323) = t209.
            DATA(t324) = VALUE string( ).
            DATA(t325) = VALUE string( ).
            DATA(t326) = |'|.
            DATA(t327) = VALUE string( ).
            DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t328.
            DATA(t329) = t224.
            t328 = t329.
            DATA(t330) = VALUE string( ).
            DATA(t331) = VALUE abap_bool( ).
            DATA(t332) = t328.
            IF t332 IS INITIAL.
              t331 = abap_true.
            ELSEIF t332->has = abap_false.
              t331 = abap_true.
            ENDIF.
            IF t331 = abap_true.
              DATA(t333) = |undefined|.
              t330 = t333.
            ELSE.
              DATA(t334) = VALUE string( ).
              DATA(t335) = t328.
              t334 = t335->value.
              t330 = t334.
            ENDIF.
            t327 = t330.
            DATA(t336) = strlen( t326 ).
            t325 = |{ t326 }{ t327 }|.
            DATA(t337) = |'|.
            DATA(t338) = strlen( t325 ).
            t324 = |{ t325 }{ t337 }|.
            t322 = xsdbool( t323 <> t324 ).
            t321 = t322.
            IF t322 = abap_true.
              DATA(t339) = VALUE abap_bool( ).
              DATA(t340) = t209.
              DATA(t341) = VALUE string( ).
              DATA(t342) = VALUE string( ).
              DATA(t343) = |`|.
              DATA(t344) = VALUE string( ).
              DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t345.
              DATA(t346) = t224.
              t345 = t346.
              DATA(t347) = VALUE string( ).
              DATA(t348) = VALUE abap_bool( ).
              DATA(t349) = t345.
              IF t349 IS INITIAL.
                t348 = abap_true.
              ELSEIF t349->has = abap_false.
                t348 = abap_true.
              ENDIF.
              IF t348 = abap_true.
                DATA(t350) = |undefined|.
                t347 = t350.
              ELSE.
                DATA(t351) = VALUE string( ).
                DATA(t352) = t345.
                t351 = t352->value.
                t347 = t351.
              ENDIF.
              t344 = t347.
              DATA(t353) = strlen( t343 ).
              t342 = |{ t343 }{ t344 }|.
              DATA(t354) = |`|.
              DATA(t355) = strlen( t342 ).
              t341 = |{ t342 }{ t354 }|.
              t339 = xsdbool( t340 <> t341 ).
              t321 = t339.
            ENDIF.
            IF t321 = abap_true.
              DATA(t356) = t6.
              DATA t357 TYPE REF TO zcl_lnt_issue.
              CLEAR t357.
              DATA(t358) = t15.
              DATA(t359) = t203.
              DATA(t360) = |Text does not match text element|.
              DATA(t361) = VALUE string( ).
              DATA t362 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t362.
              DATA(t363) = VALUE string( ).
              DATA(t364) = |check_text_elements|.
              t363 = t364.
              DATA(t365) = VALUE string( ).
              DATA(t366) = |Check text elements|.
              t365 = t366.
              DATA(t367) = VALUE string( ).
              DATA(t368) = |Check text elements exists or matches code|.
              t367 = t368.
              DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t369.
              DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t370.
              t369 = t370.
              DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t371.
              DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t372.
              t371 = t372.
              DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t373.
              DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t374.
              t373 = t374.
              DATA t375 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t375.
              DATA t376 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t376.
              t375 = t376.
              DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t377.
              DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t378.
              t377 = t378.
              DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t379.
              DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t380.
              t379 = t380.
              t362 = NEW zcl_lnt_irule_metadata( i_key = t363 i_title = t365 i_short_description = t367 i_bad_example = t369 i_good_example = t371 i_extended_information = t373 i_tags = t375 i_pragma = t377 i_pseudo_comment = t379 ).
              CREATE OBJECT t362->zlnt_view_ownkeys_b0e8086400eb.
              t362->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t381.
              IF t362->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t362->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t381 ).
              ENDIF.
              DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t382.
              IF t362->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t362->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t382 ).
              ENDIF.
              DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t383.
              IF t362->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t362->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t383 ).
              ENDIF.
              CREATE OBJECT t362->zlnt_json_ownkeys_70e5fd461788.
              t362->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t384) = |key|.
              DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t385.
              IF t362->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t362->zlnt_json_ownkeys_70e5fd461788->put( p0 = t384 p1 = t385 ).
              ENDIF.
              DATA(t386) = |title|.
              DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t387.
              IF t362->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t362->zlnt_json_ownkeys_70e5fd461788->put( p0 = t386 p1 = t387 ).
              ENDIF.
              DATA(t388) = |shortDescription|.
              DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t389.
              IF t362->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t362->zlnt_json_ownkeys_70e5fd461788->put( p0 = t388 p1 = t389 ).
              ENDIF.
              t361 = t362->key.
              DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t390.
              DATA(t391) = me->conf.
              t390 = t391->zlnt_view_read_sr_15c06369f827( ).
              DATA t392 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t392.
              t357 = zcl_lnt_issue=>at_token( i_file = t358 i_token = t359 i_message_26cb = t360 i_key = t361 i_severity = t390 i_fix = t392 ).
              t356->load( ).
              APPEND t357 TO t356->items.
              t356->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t393) = t6.
    result = t393.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_chck_txt_elmnts_cnf( me->g_c_i_s_r_ch_tx_el_ts_ch_tx_el( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_chck_txt_elmnts_cnf( me->g_c_i_s_r_ch_tx_el_ts_ch_tx_el( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_chck_txt_elmnts_cnf.
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
        t2 = NEW zcl_lnt_chck_txt_elmnts_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_ch_tx_el_ts_ch_tx_el( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_check_text_elements.
    DATA(t3) = t1.
    t2 = me->i_i_sr_rl_ch_tx_el_ts_ch_tx_el( i_reg_f149 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1446_27ea4749d0cf.
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
