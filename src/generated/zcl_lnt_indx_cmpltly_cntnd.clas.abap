* TS: src/rules/index_completely_contained.ts:11:1 IndexCompletelyContained
CLASS zcl_lnt_indx_cmpltly_cntnd DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_indx_cmpltly_cntnd_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS i_i_sr_rl_in_cm_cn_ts_in_cm_cn RETURNING VALUE(result) TYPE REF TO zcl_lnt_indx_cmpltly_cntnd.
    METHODS g_c_i_s_r_in_cm_cn_ts_in_cm_cn RETURNING VALUE(result) TYPE REF TO zcl_lnt_indx_cmpltly_cntnd_cnf.
    METHODS s_c_i_s_r_in_cm_cn_ts_in_cm_cn IMPORTING i_conf TYPE REF TO zcl_lnt_indx_cmpltly_cntnd_cnf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_indx_cmpltly_cntnd IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_indx_cmpltly_cntnd_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |index_completely_contained|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Check if database table indexes are completely contained|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |If indexes are completely contained in other indexes, they c|.
    t7 = t7 && |an be removed to improve performance.|.
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
      DATA(t15) = |Performance|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |SingleFile|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      t11 = t18.
      t9 = t11.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t19.
      t9 = t19.
    ENDIF.
    t8 = t9.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t22 i_extended_information = t24 i_tags = t8 i_pragma = t26 i_pseudo_comment = t28 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t34) = |key|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |title|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |shortDescription|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = |tags|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD i_i_sr_rl_in_cm_cn_ts_in_cm_cn.
    DATA(t1) = me.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_in_cm_cn_ts_in_cm_cn.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_in_cm_cn_ts_in_cm_cn.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_table ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_table.
    DATA t9 TYPE REF TO zcl_lnt_table.
    DATA(t10) = t1.
    DATA t11 TYPE REF TO object.
    t11 = t10.
    t9 ?= t11.
    t8 = t9.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA t14 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA t15 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t16) = t8.
    t15 = t16->parsed_data.
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    t17 = t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t14.
    IF t20 IS INITIAL.
      t19 = abap_true.
    ENDIF.
    t13 = t19.
    IF t13 = abap_true.
      DATA(t21) = t8.
      t21->parse_xml( ).
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA t24 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t25) = t8.
    t24 = t25->parsed_data.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = t23.
    IF t28 IS INITIAL.
      t27 = abap_true.
    ENDIF.
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t29.
      t26 = t29.
    ELSE.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t31 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t32) = t23.
      t31 = t32.
      t30 = t31->secondary_indexes.
      t26 = t30.
    ENDIF.
    t22 = t26.
    t12 = t22.
    t7 = t12.
    t6 = t7.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t36) = t6.
    t35 = t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    t37 = t38.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = t35.
    IF t40 IS INITIAL.
      t39 = abap_true.
    ENDIF.
    t34 = t39.
    t33 = t34.
    IF t34 = abap_false.
      DATA t41 TYPE abap_bool.
      DATA t42 TYPE i.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t44) = t6.
      t43 = t44.
      t43->load( ).
      t42 = lines( t43->items ).
      DATA(t45) = 0.
      t41 = xsdbool( t42 = t45 ).
      t33 = t41.
    ENDIF.
    IF t33 = abap_true.
      DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t46.
      result = t46.
      RETURN.
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t48.
    t47 = t48.
    DATA t49 TYPE i.
    DATA(t50) = 0.
    t49 = t50.
    DO.
      DATA t51 TYPE abap_bool.
      DATA(t52) = t49.
      DATA t53 TYPE i.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t55) = t6.
      t54 = t55.
      t54->load( ).
      t53 = lines( t54->items ).
      t51 = xsdbool( t52 < t53 ).
      IF t51 = abap_false.
        EXIT.
      ENDIF.
      DATA t56 TYPE REF TO zcl_lnt_secondary_index.
      CLEAR t56.
      DATA t57 TYPE REF TO zcl_lnt_secondary_index.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t59) = t6.
      t58 = t59.
      DATA(t60) = t49.
      t60 = t60 + 1.
      DATA t61 TYPE REF TO object.
      CLEAR t61.
      t58->load( ).
      CLEAR t61.
      READ TABLE t58->items INDEX t60 INTO t61.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      CLEAR t57.
      IF t61 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t62 ?= t61.
        DATA t63 TYPE REF TO object.
        t63 = t62->as_ref( ).
        t57 ?= t63.
      ELSE.
        t57 ?= t61.
      ENDIF.
      t56 = t57.
      DATA t64 TYPE i.
      DATA(t65) = 0.
      t64 = t65.
      DO.
        DATA t66 TYPE abap_bool.
        DATA(t67) = t64.
        DATA t68 TYPE i.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t70) = t6.
        t69 = t70.
        t69->load( ).
        t68 = lines( t69->items ).
        t66 = xsdbool( t67 < t68 ).
        IF t66 = abap_false.
          EXIT.
        ENDIF.
        DATA t71 TYPE abap_bool.
        DATA(t72) = t49.
        DATA(t73) = t64.
        t71 = xsdbool( t72 = t73 ).
        IF t71 = abap_true.
          DATA t74 TYPE i.
          DATA(t75) = t64.
          DATA(t76) = 1.
          t74 = t75 + t76.
          t64 = t74.
          CONTINUE.
        ENDIF.
        DATA t77 TYPE REF TO zcl_lnt_secondary_index.
        CLEAR t77.
        DATA t78 TYPE REF TO zcl_lnt_secondary_index.
        CLEAR t78.
        DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t80) = t6.
        t79 = t80.
        DATA(t81) = t64.
        t81 = t81 + 1.
        DATA t82 TYPE REF TO object.
        CLEAR t82.
        t79->load( ).
        CLEAR t82.
        READ TABLE t79->items INDEX t81 INTO t82.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        CLEAR t78.
        IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t83 ?= t82.
          DATA t84 TYPE REF TO object.
          t84 = t83->as_ref( ).
          t78 ?= t84.
        ELSE.
          t78 ?= t82.
        ENDIF.
        t77 = t78.
        DATA t85 TYPE abap_bool.
        DATA(t86) = abap_true.
        t85 = t86.
        DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t88) = t56.
        t87 = t88->fields_464c.
        DATA(t89) = VALUE string( ).
        t87->dense( ).
        DATA(t90) = VALUE i( ).
        DO.
          t87->load( ).
          IF t90 >= lines( t87->items ).
            EXIT.
          ENDIF.
          CLEAR t89.
          READ TABLE t87->items INDEX t90 + 1 INTO t89.
          IF t87->has( t90 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t90 = t90 + 1.
          DATA t91 TYPE abap_bool.
          DATA t92 TYPE i.
          DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t94) = t77.
          t93 = t94->fields_464c.
          DATA(t95) = t89.
          t92 = t93->indexof( p0 = t95 ).
          DATA(t96) = -1.
          t91 = xsdbool( t92 = t96 ).
          IF t91 = abap_true.
            DATA(t97) = abap_false.
            t85 = t97.
            EXIT.
          ENDIF.
        ENDDO.
        DATA(t98) = t85.
        IF t98 = abap_true.
          DATA t99 TYPE REF TO zcl_lnt_position.
          DATA t100 TYPE REF TO zcl_lnt_position.
          DATA(t101) = CONV f( 1 ).
          DATA(t102) = CONV f( 1 ).
          DATA(t103) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t103->has = abap_true.
          t103->value = t102.
          t100 = NEW zcl_lnt_position( i_row = t101 i_col = t103 ).
          t99 = t100.
          DATA(t104) = VALUE string( ).
          DATA(t105) = VALUE string( ).
          DATA(t106) = VALUE string( ).
          DATA(t107) = VALUE string( ).
          DATA(t108) = VALUE string( ).
          DATA(t109) = |Index "|.
          DATA(t110) = VALUE string( ).
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t113) = t56.
          t112 = t113->name.
          t111 = t112.
          DATA(t114) = VALUE string( ).
          DATA(t115) = VALUE abap_bool( ).
          DATA(t116) = t111.
          IF t116 IS INITIAL.
            t115 = abap_true.
          ELSEIF t116->has = abap_false.
            t115 = abap_true.
          ENDIF.
          IF t115 = abap_true.
            DATA(t117) = |undefined|.
            t114 = t117.
          ELSE.
            DATA t118 TYPE string.
            DATA(t119) = t111.
            t118 = t119->value.
            t114 = t118.
          ENDIF.
          t110 = t114.
          DATA(t120) = strlen( t109 ).
          t108 = |{ t109 }{ t110 }|.
          DATA(t121) = |" is completely contained in index "|.
          DATA(t122) = strlen( t108 ).
          t107 = |{ t108 }{ t121 }|.
          DATA(t123) = VALUE string( ).
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t126) = t77.
          t125 = t126->name.
          t124 = t125.
          DATA(t127) = VALUE string( ).
          DATA(t128) = VALUE abap_bool( ).
          DATA(t129) = t124.
          IF t129 IS INITIAL.
            t128 = abap_true.
          ELSEIF t129->has = abap_false.
            t128 = abap_true.
          ENDIF.
          IF t128 = abap_true.
            DATA(t130) = |undefined|.
            t127 = t130.
          ELSE.
            DATA t131 TYPE string.
            DATA(t132) = t124.
            t131 = t132->value.
            t127 = t131.
          ENDIF.
          t123 = t127.
          DATA(t133) = strlen( t107 ).
          t106 = |{ t107 }{ t123 }|.
          DATA(t134) = |"|.
          DATA(t135) = strlen( t106 ).
          t105 = |{ t106 }{ t134 }|.
          t104 = t105.
          DATA(t136) = t47.
          DATA t137 TYPE REF TO zcl_lnt_issue.
          CLEAR t137.
          DATA t138 TYPE REF TO zif_lnt_file.
          CLEAR t138.
          DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t140 TYPE REF TO zcl_lnt_abstract_object.
          DATA t141 TYPE REF TO zcl_lnt_table.
          DATA(t142) = t1.
          DATA t143 TYPE REF TO object.
          t143 = t142.
          t141 ?= t143.
          t140 = t141.
          DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t145) = t140.
          t144 = t145->files.
          t139 = t144.
          DATA t146 TYPE REF TO object.
          CLEAR t146.
          t139->load( ).
          CLEAR t146.
          READ TABLE t139->items INDEX 1 INTO t146.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          CLEAR t138.
          IF t146 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t147 ?= t146.
            DATA t148 TYPE REF TO object.
            t148 = t147->as_ref( ).
            t138 ?= t148.
          ELSE.
            t138 ?= t146.
          ENDIF.
          DATA(t149) = t99.
          DATA(t150) = t104.
          DATA(t151) = VALUE string( ).
          DATA t152 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t152.
          DATA t153 TYPE string.
          DATA(t154) = |index_completely_contained|.
          t153 = t154.
          DATA t155 TYPE string.
          DATA(t156) = |Check if database table indexes are completely contained|.
          t155 = t156.
          DATA t157 TYPE string.
          DATA(t158) = |If indexes are completely contained in other indexes, they c|.
          t158 = t158 && |an be removed to improve performance.|.
          t157 = t158.
          DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t159.
          DATA t160 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t160.
          DATA(t161) = abap_true.
          IF t161 = abap_true.
            DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t163 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t164 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t164.
            t163 = t164.
            DATA(t165) = t163.
            DATA(t166) = |Performance|.
            t165->load( ).
            APPEND t166 TO t165->items.
            t165->save( ).
            DATA(t167) = t163.
            DATA(t168) = |SingleFile|.
            t167->load( ).
            APPEND t168 TO t167->items.
            t167->save( ).
            DATA(t169) = t163.
            t162 = t169.
            t160 = t162.
          ELSE.
            DATA t170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t170.
            t160 = t170.
          ENDIF.
          t159 = t160.
          DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t172.
          t171 = t172.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t174.
          t173 = t174.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t176.
          t175 = t176.
          DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t178.
          t177 = t178.
          DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t180.
          t179 = t180.
          t152 = NEW zcl_lnt_irule_metadata( i_key = t153 i_title = t155 i_short_description = t157 i_bad_example = t171 i_good_example = t173 i_extended_information = t175 i_tags = t159 i_pragma = t177 i_pseudo_comment = t179 ).
          CREATE OBJECT t152->zlnt_view_ownkeys_b0e8086400eb.
          t152->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t181.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t181 ).
          ENDIF.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t182.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t182 ).
          ENDIF.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t183 ).
          ENDIF.
          DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t184.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t184 ).
          ENDIF.
          CREATE OBJECT t152->zlnt_json_ownkeys_70e5fd461788.
          t152->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t185) = |key|.
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t186.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
          ENDIF.
          DATA(t187) = |title|.
          DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t188.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
          ENDIF.
          DATA(t189) = |shortDescription|.
          DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t190.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t189 p1 = t190 ).
          ENDIF.
          DATA(t191) = |tags|.
          DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t192.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t191 p1 = t192 ).
          ENDIF.
          t151 = t152->key.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t194) = me->conf.
          t193 = t194->zlnt_view_read_sr_15c06369f827( ).
          DATA t195 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t195.
          t137 = zcl_lnt_issue=>at_position( i_file = t138 i_start = t149 i_message_26cb = t150 i_key = t151 i_severity = t193 i_fix = t195 ).
          t136->load( ).
          APPEND t137 TO t136->items.
          t136->save( ).
        ENDIF.
        DATA t196 TYPE i.
        DATA(t197) = t64.
        DATA(t198) = 1.
        t196 = t197 + t198.
        t64 = t196.
      ENDDO.
      DATA t199 TYPE i.
      DATA(t200) = t49.
      DATA(t201) = 1.
      t199 = t200 + t201.
      t49 = t199.
    ENDDO.
    DATA(t202) = t47.
    result = t202.

  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA(t2) = CAST zcl_lnt_indx_cmpltly_cntnd( me->i_i_sr_rl_in_cm_cn_ts_in_cm_cn( ) ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_indx_cmpltly_cntnd_cnf( me->g_c_i_s_r_in_cm_cn_ts_in_cm_cn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_indx_cmpltly_cntnd_cnf( me->g_c_i_s_r_in_cm_cn_ts_in_cm_cn( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_indx_cmpltly_cntnd_cnf.
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
        t2 = NEW zcl_lnt_indx_cmpltly_cntnd_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_in_cm_cn_ts_in_cm_cn( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1546_3eceddb8f47f.
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
