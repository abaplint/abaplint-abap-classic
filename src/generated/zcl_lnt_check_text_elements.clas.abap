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
    me->conf = NEW zcl_lnt_chck_txt_elmnts_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |check_text_elements| i_title = |Check text elements| i_short_description = |Check text elements exists or matches code| i_bad_example = t8 i_good_example = t10 i_extended_information = t12 i_tags = t14 i_pragma = t16 i_pseudo_comment = t18 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t20 ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t21 ).
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t22 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t24 ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t26 ).
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t28 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_ch_tx_el_ts_ch_tx_el.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_ch_tx_el_ts_ch_tx_el.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_ch_tx_el_ts_ch_tx_el.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t4) = me->reg.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    me->graph = NEW zcl_lnt_include_graph( i_reg_f149 = t4 i_severity = t5 i_allow_unused = t6 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `graph`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zcl_lnt_abap_object.
    DATA t12 TYPE REF TO object.
    t12 = t1.
    t10 ?= t12.
    t8 = t10->parsed.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    DATA t16 TYPE REF TO object.
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
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA t20 TYPE REF TO zcl_lnt_structure_node.
      t20 = t15->structure.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      CLEAR t29.
      IF xsdbool( t20 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t33 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      CLEAR t34.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t36.
      DATA t38 TYPE REF TO zcl_lnt_structure_node.
      t38 = t20.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t41.
      CREATE OBJECT t41.
      DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d157_1c35602cbab5.
      t41->load( ).
      APPEND t44 TO t41->items.
      t41->save( ).
      DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d139_249fe3e5ef12.
      t41->load( ).
      APPEND t46 TO t41->items.
      t41->save( ).
      t36 = t38->f_a_e_m_i_s_a_n_st_nd_ts_st_nd( i_type_9913 = t41 ).
      t36->load( ).
      IF xsdbool( lines( t36->items ) > 0 ) = abap_true.
        DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t52.
        DATA(t54) = me->graph.
        DATA t58 TYPE REF TO zcl_lnt_abstract_file.
        t58 = t15.
        DATA(t60) = VALUE string( ).
        t60 = t58->filename.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t60.
        t52 = t54->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t62 ).
        t52->load( ).
        IF xsdbool( lines( t52->items ) = 1 ) = abap_true.
          DATA(t70) = VALUE string( ).
          IF t52->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t52->load( ).
          READ TABLE t52->items INDEX 1 INTO t70.
          DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t72->has = abap_true.
          t72->value = t70.
          t34 = t72.
          DATA t75 TYPE REF TO zif_lnt_union_35a9fad2.
          CLEAR t75.
          DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t76.
          DATA t77 TYPE REF TO zif_lnt_object.
          CLEAR t77.
          DATA(t79) = me->reg.
          DATA(t82) = me->reg.
          DATA(t83) = VALUE string( ).
          IF t52->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t52->load( ).
          READ TABLE t52->items INDEX 1 INTO t83.
          t77 = t79->find_object_for_file( i_file = t82->get_file_by_name( i_filename = t83 ) ).
          CLEAR t76.
          IF t77 IS BOUND.
            DATA t85 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t85.
            DATA t86 TYPE REF TO object.
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
          t87 = t76->as_ref( ).
          t75 ?= t87.
          t33 = t75->get_text_symbols( ).
        ELSE.
          DATA t91 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t91.
          DATA t93 TYPE REF TO object.
          t93 = t1.
          t91 ?= t93.
          t33 = t91->get_text_symbols( ).
        ENDIF.
      ENDIF.
      DATA t95 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t95.
      DATA t96 TYPE REF TO object.
      CLEAR t96.
      DATA(t97) = VALUE i( ).
      DO.
        t36->load( ).
        IF t97 >= lines( t36->items ).
          EXIT.
        ENDIF.
        CLEAR t96.
        READ TABLE t36->items INDEX t97 + 1 INTO t96.
        t97 = t97 + 1.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        CLEAR t95.
        IF t96 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t98 ?= t96.
          DATA t99 TYPE REF TO object.
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
        t104 = t34.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        CLEAR t106.
        DATA(t109) = VALUE abap_bool( ).
        IF t104 IS INITIAL.
          t109 = abap_true.
        ELSEIF t104->has = abap_false.
          t109 = abap_true.
        ENDIF.
        t103 = xsdbool( t109 = abap_false ).
        t102 = t103.
        IF t103 = abap_true.
          DATA(t112) = VALUE string( ).
          DATA(t113) = VALUE string( ).
          t113 = t34->value.
          DATA(t115) = strlen( t113 ).
          t112 = t113.
          TRANSLATE t112 TO LOWER CASE.
          DATA(t116) = VALUE string( ).
          DATA(t117) = VALUE string( ).
          DATA t118 TYPE REF TO zcl_lnt_abstract_file.
          t118 = t15.
          t117 = t118->filename.
          DATA(t122) = strlen( t117 ).
          t116 = t117.
          TRANSLATE t116 TO LOWER CASE.
          t102 = xsdbool( t112 <> t116 ).
        ENDIF.
        IF t102 = abap_true.
          DATA(t124) = |, |.
          DATA(t125) = VALUE string( ).
          t125 = t34->value.
          DATA(t127) = strlen( t124 ).
          t101 = |{ t124 }{ t125 }|.
        ELSE.
          t101 = ||.
        ENDIF.
        t100 = t101.
        DATA t130 TYPE REF TO zif_lnt_statement_runnable.
        t130 = t95->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        IF xsdbool( t130 IS BOUND AND t130 IS INSTANCE OF zcl_lnt_text_element ) = abap_true.
          DATA t132 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t132.
          DATA(t137) = zlnt_runtime_desc_78196487750d=>zlnt_member_d350_60b8c1b06659.
          t132 = t95->find_first_expression( i_type_9913 = t137 )->get_first_token( ).
          DATA(t138) = VALUE string( ).
          DATA(t139) = VALUE string( ).
          DATA(t140) = VALUE string( ).
          t140 = t132->str.
          DATA(t145) = strlen( t140 ).
          t139 = t140.
          IF t139 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t139 TO UPPER CASE.
          ELSE.
            t139 = zlnt_runtime_uppe_91169605024d=>full( t139 ).
          ENDIF.
          t138 = t139.
          DATA t148 TYPE REF TO zcl_lnt_shape_015c050b.
          t148 = t33->get( p0 = t138 ).
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          CLEAR t151.
          IF xsdbool( t148 IS INITIAL ) = abap_true.
            DATA(t155) = VALUE string( ).
            DATA(t157) = VALUE string( ).
            DATA(t158) = VALUE string( ).
            DATA(t159) = |Text element "|.
            DATA(t161) = strlen( t159 ).
            t158 = |{ t159 }{ t138 }|.
            DATA(t163) = strlen( t158 ).
            t157 = |{ t158 }{ |" not found| }|.
            DATA(t165) = strlen( t157 ).
            t155 = |{ t157 }{ t100 }|.
            DATA t167 TYPE REF TO zcl_lnt_issue.
            CLEAR t167.
            DATA(t171) = VALUE string( ).
            DATA t172 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t179.
            CLEAR t179.
            DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t181.
            CLEAR t181.
            DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t183.
            CLEAR t183.
            DATA t185 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t185.
            CLEAR t185.
            DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t187.
            CLEAR t187.
            DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t189.
            CLEAR t189.
            t172 = NEW zcl_lnt_irule_metadata( i_key = |check_text_elements| i_title = |Check text elements| i_short_description = |Check text elements exists or matches code| i_bad_example = t179 i_good_example = t181 i_extended_information = t183 i_tags = t185 i_pragma = t187 i_pseudo_comment = t189 ).
            CREATE OBJECT t172->zlnt_view_ownkeys_b0e8086400eb.
            t172->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t191.
            t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t191 ).
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
            DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t195.
            t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t195 ).
            DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t197.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t197 ).
            ENDIF.
            DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t199.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t199 ).
            ENDIF.
            t171 = t172->key.
            DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t200.
            t200 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t202 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t202.
            t167 = zcl_lnt_issue=>at_token( i_file = t15 i_token = t132 i_message_26cb = t155 i_key = t171 i_severity = t200 i_fix = t202 ).
            t6->load( ).
            APPEND t167 TO t6->items.
            t6->save( ).
          ENDIF.
        ELSE.
          DATA t203 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t203.
          DATA(t208) = zlnt_runtime_desc_78196487750d=>zlnt_member_d350_60b8c1b06659.
          t203 = t95->find_first_expression( i_type_9913 = t208 )->get_first_token( ).
          DATA(t209) = VALUE string( ).
          t209 = t95->get_first_token( )->str.
          DATA(t216) = VALUE string( ).
          DATA(t217) = VALUE string( ).
          DATA(t218) = VALUE string( ).
          t218 = t203->str.
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
          DATA t226 TYPE REF TO zcl_lnt_shape_015c050b.
          t226 = t33->get( p0 = t216 ).
          DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t230.
          IF xsdbool( t226 IS INITIAL ) = abap_true.
            CLEAR t230.
          ELSE.
            DATA(t234) = VALUE string( ).
            t234 = t226->entry.
            DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t237->has = abap_true.
            t237->value = t234.
            t230 = t237.
          ENDIF.
          t224 = t230.
          DATA(t238) = VALUE abap_bool( ).
          DATA(t239) = VALUE abap_bool( ).
          DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t240 = t224.
          DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t242.
          CLEAR t242.
          DATA(t245) = VALUE abap_bool( ).
          IF t240 IS INITIAL.
            t245 = abap_true.
          ELSEIF t240->has = abap_false.
            t245 = abap_true.
          ENDIF.
          t239 = xsdbool( t245 = abap_false ).
          t238 = t239.
          IF t239 = abap_true.
            DATA(t247) = VALUE abap_bool( ).
            DATA(t249) = |'|.
            DATA(t250) = strlen( t209 ).
            DATA(t251) = VALUE i( ).
            DATA(t252) = VALUE i( ).
            DATA(t253) = VALUE string( ).
            t251 = strlen( t249 ).
            IF t251 = 0.
              t247 = abap_true.
            ELSEIF t251 <= t250.
              t252 = 0.
              t253 = t209+t252(t251).
              IF t253 = t249.
                t247 = abap_true.
              ENDIF.
            ENDIF.
            t238 = t247.
          ENDIF.
          IF t238 = abap_true.
            DATA(t256) = VALUE string( ).
            DATA(t257) = VALUE string( ).
            t257 = t224->value.
            DATA t259 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CREATE OBJECT t259 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |'| flags = |g| checked = abap_true.
            DATA(t263) = strlen( t257 ).
            t256 = t259->replace( p0 = t257 p1 = |''| ).
            DATA(t264) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t264->has = abap_true.
            t264->value = t256.
            t224 = t264.
          ENDIF.
          DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t267 = t224.
          DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t269.
          CLEAR t269.
          DATA(t271) = VALUE abap_bool( ).
          IF t267 IS INITIAL.
            t271 = abap_true.
          ELSEIF t267->has = abap_false.
            t271 = abap_true.
          ENDIF.
          IF t271 = abap_true.
            DATA(t273) = VALUE string( ).
            DATA(t275) = VALUE string( ).
            DATA(t276) = VALUE string( ).
            DATA(t277) = |Text element "|.
            DATA(t279) = strlen( t277 ).
            t276 = |{ t277 }{ t216 }|.
            DATA(t281) = strlen( t276 ).
            t275 = |{ t276 }{ |" not found| }|.
            DATA(t283) = strlen( t275 ).
            t273 = |{ t275 }{ t100 }|.
            DATA t285 TYPE REF TO zcl_lnt_issue.
            CLEAR t285.
            DATA(t289) = VALUE string( ).
            DATA t290 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t297.
            CLEAR t297.
            DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t299.
            CLEAR t299.
            DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t301.
            CLEAR t301.
            DATA t303 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t303.
            CLEAR t303.
            DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t305.
            CLEAR t305.
            DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t307.
            CLEAR t307.
            t290 = NEW zcl_lnt_irule_metadata( i_key = |check_text_elements| i_title = |Check text elements| i_short_description = |Check text elements exists or matches code| i_bad_example = t297 i_good_example = t299 i_extended_information = t301 i_tags = t303 i_pragma = t305 i_pseudo_comment = t307 ).
            CREATE OBJECT t290->zlnt_view_ownkeys_b0e8086400eb.
            t290->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t309.
            t290->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t309 ).
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
            DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t313.
            t290->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t313 ).
            DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t315.
            IF t290->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t290->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t315 ).
            ENDIF.
            DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t317.
            IF t290->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t290->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t317 ).
            ENDIF.
            t289 = t290->key.
            DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t318.
            t318 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t320 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t320.
            t285 = zcl_lnt_issue=>at_token( i_file = t15 i_token = t203 i_message_26cb = t273 i_key = t289 i_severity = t318 i_fix = t320 ).
            t6->load( ).
            APPEND t285 TO t6->items.
            t6->save( ).
          ELSE.
            DATA(t321) = VALUE abap_bool( ).
            DATA(t322) = VALUE abap_bool( ).
            DATA(t325) = VALUE string( ).
            DATA(t326) = |'|.
            DATA(t327) = VALUE string( ).
            DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t328 = t224.
            DATA(t330) = VALUE string( ).
            DATA(t331) = VALUE abap_bool( ).
            IF t328 IS INITIAL.
              t331 = abap_true.
            ELSEIF t328->has = abap_false.
              t331 = abap_true.
            ENDIF.
            IF t331 = abap_true.
              t330 = |undefined|.
            ELSE.
              t330 = t328->value.
            ENDIF.
            t327 = t330.
            DATA(t336) = strlen( t326 ).
            t325 = |{ t326 }{ t327 }|.
            DATA(t338) = strlen( t325 ).
            t322 = xsdbool( t209 <> |{ t325 }{ |'| }| ).
            t321 = t322.
            IF t322 = abap_true.
              DATA(t342) = VALUE string( ).
              DATA(t343) = |`|.
              DATA(t344) = VALUE string( ).
              DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t345 = t224.
              DATA(t347) = VALUE string( ).
              DATA(t348) = VALUE abap_bool( ).
              IF t345 IS INITIAL.
                t348 = abap_true.
              ELSEIF t345->has = abap_false.
                t348 = abap_true.
              ENDIF.
              IF t348 = abap_true.
                t347 = |undefined|.
              ELSE.
                t347 = t345->value.
              ENDIF.
              t344 = t347.
              DATA(t353) = strlen( t343 ).
              t342 = |{ t343 }{ t344 }|.
              DATA(t355) = strlen( t342 ).
              t321 = xsdbool( t209 <> |{ t342 }{ |`| }| ).
            ENDIF.
            IF t321 = abap_true.
              DATA t357 TYPE REF TO zcl_lnt_issue.
              CLEAR t357.
              DATA(t361) = VALUE string( ).
              DATA t362 TYPE REF TO zcl_lnt_irule_metadata.
              DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t369.
              CLEAR t369.
              DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t371.
              CLEAR t371.
              DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t373.
              CLEAR t373.
              DATA t375 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t375.
              CLEAR t375.
              DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t377.
              CLEAR t377.
              DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t379.
              CLEAR t379.
              t362 = NEW zcl_lnt_irule_metadata( i_key = |check_text_elements| i_title = |Check text elements| i_short_description = |Check text elements exists or matches code| i_bad_example = t369 i_good_example = t371 i_extended_information = t373 i_tags = t375 i_pragma = t377 i_pseudo_comment = t379 ).
              CREATE OBJECT t362->zlnt_view_ownkeys_b0e8086400eb.
              t362->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t381.
              t362->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t381 ).
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
              DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t385.
              t362->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t385 ).
              DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t387.
              IF t362->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t362->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t387 ).
              ENDIF.
              DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t389.
              IF t362->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t362->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t389 ).
              ENDIF.
              t361 = t362->key.
              DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t390.
              t390 = me->conf->zlnt_view_read_sr_15c06369f827( ).
              DATA t392 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t392.
              t357 = zcl_lnt_issue=>at_token( i_file = t15 i_token = t203 i_message_26cb = |Text does not match text element| i_key = t361 i_severity = t390 i_fix = t392 ).
              t6->load( ).
              APPEND t357 TO t6->items.
              t6->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    result = t6.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_chck_txt_elmnts_cnf( me->g_c_i_s_r_ch_tx_el_ts_ch_tx_el( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_chck_txt_elmnts_cnf( me->g_c_i_s_r_ch_tx_el_ts_ch_tx_el( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_chck_txt_elmnts_cnf.
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
        t2 = NEW zcl_lnt_chck_txt_elmnts_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_ch_tx_el_ts_ch_tx_el( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->i_i_sr_rl_ch_tx_el_ts_ch_tx_el( i_reg_f149 = t3 ).

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
