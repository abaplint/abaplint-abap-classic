* TS: src/rules/superclass_final.ts:15:1 SuperclassFinal
CLASS zcl_lnt_superclass_final DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_superclass_final_conf.
    DATA graph TYPE REF TO zcl_lnt_include_graph.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_sp_fn_ts_sp_fnl RETURNING VALUE(result) TYPE REF TO zcl_lnt_superclass_final_conf.
    METHODS st_cn_in_sr_rl_sp_fn_ts_sp_fnl IMPORTING i_conf TYPE REF TO zcl_lnt_superclass_final_conf.
    METHODS run_parsed REDEFINITION.
    METHODS fnd_in_rltd_prgrm_inclds IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_super_class_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_info_class_definition.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_superclass_final IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_superclass_final_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t2 TYPE REF TO zcl_lnt_include_graph.
    CLEAR t2.
    me->graph = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `graph`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |superclass_final|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Super class final|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that classes which are inherited from are not declare|.
    t7 = t7 && |d as FINAL.|.
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
      DATA(t15) = |Syntax|.
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
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    t18 = t19.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t20 i_extended_information = t22 i_tags = t8 i_pragma = t24 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |key|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |title|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |shortDescription|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |tags|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Superclasses cannot be FINAL|.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sp_fn_ts_sp_fnl.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sp_fn_ts_sp_fnl.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zif_lnt_abap_file_information.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t10) = t7.
    t9 = t10->info.
    t6 = t9.
    t5 = t6->list_class_definitions( ).
    DATA t11 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    DATA(t13) = VALUE i( ).
    DO.
      t5->load( ).
      IF t13 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t5->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t18) = t11.
      t17 = t18->super_class_name.
      t16 = t17.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t21) = t16.
      t20 = t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      t22 = t23.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t20.
      IF t25 IS INITIAL.
        t24 = abap_true.
      ELSEIF t25->has = abap_false.
        t24 = abap_true.
      ENDIF.
      t19 = t24.
      IF t19 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t26 TYPE abap_bool.
      DATA(t27) = abap_true.
      t26 = t27.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE abap_bool.
      DATA(t30) = t2.
      t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_class ).
      t28 = t29.
      IF t29 = abap_true.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE string.
        DATA t33 TYPE string.
        DATA t34 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t35) = t1.
        t34 = t35.
        DATA t36 TYPE string.
        DATA(t37) = t34.
        t36 = t37->filename.
        t33 = t36.
        t32 = t33.
        DATA t38 TYPE abap_bool.
        DATA t39 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t39.
        DATA(t40) = `\.clas\.abap$`.
        DATA(t41) = ||.
        CREATE OBJECT t39 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t40 flags = t41.
        DATA(t42) = t32.
        t38 = t39->match_test( p0 = t42 ).
        t31 = t38.
        t28 = t31.
      ENDIF.
      IF t28 = abap_true.
        DATA(t43) = abap_false.
        t26 = t43.
      ENDIF.
      DATA t44 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t45 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t45.
      t44 = t45.
      DATA(t46) = t26.
      IF t46 = abap_true.
        DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t48 TYPE REF TO zcl_lnt_abap_object.
        DATA(t49) = t2.
        t48 = t49.
        DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t51) = t48.
        t50 = t51->parsed.
        t47 = t50.
        DATA t52 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t52.
        DATA t53 TYPE REF TO object.
        CLEAR t53.
        DATA(t54) = VALUE i( ).
        DO.
          t47->load( ).
          IF t54 >= lines( t47->items ).
            EXIT.
          ENDIF.
          CLEAR t53.
          READ TABLE t47->items INDEX t54 + 1 INTO t53.
          t54 = t54 + 1.
          DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t55.
          CLEAR t52.
          IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t55 ?= t53.
            DATA t56 TYPE REF TO object.
            t56 = t55->as_ref( ).
            t52 ?= t56.
          ELSE.
            t52 ?= t53.
          ENDIF.
          DATA t57 TYPE REF TO zcl_lnt_info_class_definition.
          DATA t58 TYPE REF TO zif_lnt_abap_file_information.
          DATA t59 TYPE REF TO zcl_lnt_abap_file.
          DATA(t60) = t52.
          t59 = t60.
          DATA t61 TYPE REF TO zif_lnt_abap_file_information.
          DATA(t62) = t59.
          t61 = t62->info.
          t58 = t61.
          DATA t63 TYPE string.
          DATA(t64) = t16.
          t63 = t64->value.
          t57 = t58->get_class_definition_by_name( i_name = t63 ).
          t44 = t57.
          DATA(t65) = VALUE abap_bool( ).
          DATA t66 TYPE REF TO zcl_lnt_info_class_definition.
          DATA(t67) = t44.
          t66 = t67.
          DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t69.
          t68 = t69.
          DATA(t70) = VALUE abap_bool( ).
          DATA(t71) = VALUE abap_bool( ).
          DATA(t72) = t66.
          IF t72 IS INITIAL.
            t71 = abap_true.
          ENDIF.
          t70 = xsdbool( t71 = abap_false ).
          t65 = t70.
          IF t65 = abap_true.
            EXIT.
          ENDIF.
        ENDDO.
      ENDIF.
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = VALUE abap_bool( ).
      DATA t75 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t76) = t44.
      t75 = t76.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      t77 = t78.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = t75.
      IF t80 IS INITIAL.
        t79 = abap_true.
      ENDIF.
      t74 = t79.
      t73 = t74.
      IF t74 = abap_true.
        DATA t81 TYPE abap_bool.
        DATA(t82) = t2.
        t81 = xsdbool( t82 IS BOUND AND t82 IS INSTANCE OF zcl_lnt_ob_program ).
        t73 = t81.
      ENDIF.
      IF t73 = abap_true.
        DATA t83 TYPE REF TO zcl_lnt_info_class_definition.
        DATA(t84) = t1.
        DATA t85 TYPE string.
        DATA(t86) = t16.
        t85 = t86->value.
        t83 = me->fnd_in_rltd_prgrm_inclds( i_file = t84 i_super_class_name = t85 ).
        t44 = t83.
      ENDIF.
      DATA(t87) = VALUE abap_bool( ).
      DATA t88 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t89) = t44.
      t88 = t89.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      t90 = t91.
      DATA(t92) = VALUE abap_bool( ).
      DATA(t93) = t88.
      IF t93 IS INITIAL.
        t92 = abap_true.
      ENDIF.
      t87 = t92.
      IF t87 = abap_true.
        DATA t94 TYPE REF TO zcl_lnt_class.
        CLEAR t94.
        DATA t95 TYPE REF TO zcl_lnt_class.
        CLEAR t95.
        DATA t96 TYPE REF TO zif_lnt_object.
        CLEAR t96.
        DATA(t97) = me->reg.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        DATA(t99) = abap_true.
        IF t99 = abap_true.
          DATA(t100) = |CLAS|.
          DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t101->has = abap_true.
          t101->value = t100.
          t98 = t101.
        ELSE.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t102.
          t98 = t102.
        ENDIF.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t103.
        DATA(t104) = abap_true.
        IF t104 = abap_true.
          DATA t105 TYPE string.
          DATA(t106) = t16.
          t105 = t106->value.
          DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t107->has = abap_true.
          t107->value = t105.
          t103 = t107.
        ELSE.
          DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t108.
          t103 = t108.
        ENDIF.
        t96 = t97->get_object( i_type_9913 = t98 i_name = t103 ).
        t95 ?= t96.
        t94 = t95.
        DATA t109 TYPE abap_bool.
        DATA(t110) = t94.
        t109 = xsdbool( t110 IS BOUND ).
        IF t109 = abap_true.
          DATA t111 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t111.
          DATA t112 TYPE REF TO zcl_lnt_class.
          DATA(t113) = t94.
          t112 = t113.
          DATA t114 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t114.
          DATA t115 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t115.
          DATA t116 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t116.
          DATA t117 TYPE REF TO zcl_lnt_abap_file.
          DATA t118 TYPE REF TO zcl_lnt_abap_file.
          DATA(t119) = t112.
          t118 = t119->get_main_abap_file( ).
          t117 = t118.
          DATA t120 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t120.
          DATA(t121) = VALUE abap_bool( ).
          DATA(t122) = t117.
          IF t122 IS INITIAL.
            t121 = abap_true.
          ENDIF.
          IF t121 = abap_true.
            DATA t123 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t123.
            t120 = t123.
          ELSE.
            DATA t124 TYPE REF TO zif_lnt_abap_file_information.
            DATA t125 TYPE REF TO zcl_lnt_abap_file.
            DATA t126 TYPE REF TO zcl_lnt_abap_file.
            DATA(t127) = t117.
            t126 = t127.
            t125 = t126.
            DATA t128 TYPE REF TO zif_lnt_abap_file_information.
            DATA(t129) = t125.
            t128 = t129->info.
            t124 = t128.
            t120 = t124.
          ENDIF.
          t116 = t120.
          t115 = t116.
          DATA t130 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t130.
          DATA(t131) = VALUE abap_bool( ).
          DATA(t132) = t115.
          IF t132 IS INITIAL.
            t131 = abap_true.
          ENDIF.
          IF t131 = abap_true.
            DATA t133 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t133.
            t130 = t133.
          ELSE.
            DATA t134 TYPE REF TO zcl_lnt_info_class_definition.
            DATA t135 TYPE REF TO zif_lnt_abap_file_information.
            DATA(t136) = t115.
            t135 = t136.
            DATA t137 TYPE string.
            DATA t138 TYPE REF TO zcl_lnt_abstract_object.
            DATA(t139) = t112.
            t138 = t139.
            DATA t140 TYPE string.
            DATA(t141) = t138.
            t140 = t141->name.
            t137 = t140.
            t134 = t135->get_class_definition_by_name( i_name = t137 ).
            t130 = t134.
          ENDIF.
          t114 = t130.
          t111 = t114.
          t44 = t111.
        ENDIF.
      ENDIF.
      DATA(t142) = VALUE abap_bool( ).
      DATA t143 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t144) = t44.
      t143 = t144.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t146.
      t145 = t146.
      DATA(t147) = VALUE abap_bool( ).
      DATA(t148) = t143.
      IF t148 IS INITIAL.
        t147 = abap_true.
      ENDIF.
      t142 = t147.
      IF t142 = abap_true.
        DATA t149 TYPE string.
        DATA t150 TYPE string.
        DATA t151 TYPE string.
        DATA(t152) = |Super class "|.
        DATA t153 TYPE string.
        DATA(t154) = t16.
        t153 = t154->value.
        DATA(t155) = strlen( t152 ).
        t151 = |{ t152 }{ t153 }|.
        DATA(t156) = |" not found|.
        DATA(t157) = strlen( t151 ).
        t150 = |{ t151 }{ t156 }|.
        t149 = t150.
        DATA t158 TYPE REF TO zcl_lnt_issue.
        CLEAR t158.
        DATA t159 TYPE REF TO zcl_lnt_issue.
        CLEAR t159.
        DATA t160 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t161) = t11.
        t160 = t161->identifier.
        DATA(t162) = t149.
        DATA(t163) = VALUE string( ).
        DATA t164 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t164.
        DATA t165 TYPE string.
        DATA(t166) = |superclass_final|.
        t165 = t166.
        DATA t167 TYPE string.
        DATA(t168) = |Super class final|.
        t167 = t168.
        DATA t169 TYPE string.
        DATA(t170) = |Checks that classes which are inherited from are not declare|.
        t170 = t170 && |d as FINAL.|.
        t169 = t170.
        DATA t171 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t171.
        DATA t172 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t172.
        DATA(t173) = abap_true.
        IF t173 = abap_true.
          DATA t174 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t175 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t176 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t176.
          t175 = t176.
          DATA(t177) = t175.
          DATA(t178) = |Syntax|.
          t177->load( ).
          APPEND t178 TO t177->items.
          t177->save( ).
          DATA(t179) = t175.
          t174 = t179.
          t172 = t174.
        ELSE.
          DATA t180 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t180.
          t172 = t180.
        ENDIF.
        t171 = t172.
        DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t182.
        t181 = t182.
        DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t184.
        t183 = t184.
        DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t186.
        t185 = t186.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t188.
        t187 = t188.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        t189 = t190.
        t164 = NEW zcl_lnt_irule_metadata( i_key = t165 i_title = t167 i_short_description = t169 i_bad_example = t181 i_good_example = t183 i_extended_information = t185 i_tags = t171 i_pragma = t187 i_pseudo_comment = t189 ).
        CREATE OBJECT t164->zlnt_view_ownkeys_b0e8086400eb.
        t164->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t191.
        IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t191 ).
        ENDIF.
        DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t192.
        IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t192 ).
        ENDIF.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t193 ).
        ENDIF.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t194 ).
        ENDIF.
        CREATE OBJECT t164->zlnt_json_ownkeys_70e5fd461788.
        t164->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t195) = |key|.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t195 p1 = t196 ).
        ENDIF.
        DATA(t197) = |title|.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t197 p1 = t198 ).
        ENDIF.
        DATA(t199) = |shortDescription|.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
        ENDIF.
        DATA(t201) = |tags|.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t201 p1 = t202 ).
        ENDIF.
        t163 = t164->key.
        DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t204) = me->conf.
        t203 = t204->zlnt_view_read_sr_15c06369f827( ).
        DATA t205 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t205.
        t159 = zcl_lnt_issue=>at_identifier( i_identifier = t160 i_message_26cb = t162 i_key = t163 i_severity = t203 i_fix = t205 ).
        t158 = t159.
        DATA(t206) = t3.
        DATA(t207) = t158.
        t206->load( ).
        APPEND t207 TO t206->items.
        t206->save( ).
        CONTINUE.
      ENDIF.
      DATA t208 TYPE abap_bool.
      DATA t209 TYPE abap_bool.
      DATA t210 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t211) = t44.
      t210 = t211.
      t209 = t210->is_final.
      DATA(t212) = abap_true.
      t208 = xsdbool( t209 = t212 ).
      IF t208 = abap_true.
        DATA t213 TYPE REF TO zcl_lnt_issue.
        CLEAR t213.
        DATA t214 TYPE REF TO zcl_lnt_issue.
        CLEAR t214.
        DATA t215 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t216) = t11.
        t215 = t216->identifier.
        DATA(t217) = |Superclasses cannot be FINAL|.
        DATA(t218) = VALUE string( ).
        DATA t219 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t219.
        DATA t220 TYPE string.
        DATA(t221) = |superclass_final|.
        t220 = t221.
        DATA t222 TYPE string.
        DATA(t223) = |Super class final|.
        t222 = t223.
        DATA t224 TYPE string.
        DATA(t225) = |Checks that classes which are inherited from are not declare|.
        t225 = t225 && |d as FINAL.|.
        t224 = t225.
        DATA t226 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t226.
        DATA t227 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t227.
        DATA(t228) = abap_true.
        IF t228 = abap_true.
          DATA t229 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t231 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t231.
          t230 = t231.
          DATA(t232) = t230.
          DATA(t233) = |Syntax|.
          t232->load( ).
          APPEND t233 TO t232->items.
          t232->save( ).
          DATA(t234) = t230.
          t229 = t234.
          t227 = t229.
        ELSE.
          DATA t235 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t235.
          t227 = t235.
        ENDIF.
        t226 = t227.
        DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t237.
        t236 = t237.
        DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t239.
        t238 = t239.
        DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t241.
        t240 = t241.
        DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t243.
        t242 = t243.
        DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t245.
        t244 = t245.
        t219 = NEW zcl_lnt_irule_metadata( i_key = t220 i_title = t222 i_short_description = t224 i_bad_example = t236 i_good_example = t238 i_extended_information = t240 i_tags = t226 i_pragma = t242 i_pseudo_comment = t244 ).
        CREATE OBJECT t219->zlnt_view_ownkeys_b0e8086400eb.
        t219->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        IF t219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t246 ).
        ENDIF.
        DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t247.
        IF t219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t247 ).
        ENDIF.
        DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t248.
        IF t219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t248 ).
        ENDIF.
        DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t249.
        IF t219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t249 ).
        ENDIF.
        CREATE OBJECT t219->zlnt_json_ownkeys_70e5fd461788.
        t219->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t250) = |key|.
        DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t251.
        IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = t250 p1 = t251 ).
        ENDIF.
        DATA(t252) = |title|.
        DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t253.
        IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = t252 p1 = t253 ).
        ENDIF.
        DATA(t254) = |shortDescription|.
        DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t255.
        IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = t254 p1 = t255 ).
        ENDIF.
        DATA(t256) = |tags|.
        DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t257.
        IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = t256 p1 = t257 ).
        ENDIF.
        t218 = t219->key.
        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t259) = me->conf.
        t258 = t259->zlnt_view_read_sr_15c06369f827( ).
        DATA t260 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t260.
        t214 = zcl_lnt_issue=>at_identifier( i_identifier = t215 i_message_26cb = t217 i_key = t218 i_severity = t258 i_fix = t260 ).
        t213 = t214.
        DATA(t261) = t3.
        DATA(t262) = t213.
        t261->load( ).
        APPEND t262 TO t261->items.
        t261->save( ).
      ENDIF.
    ENDDO.
    DATA(t263) = t3.
    result = t263.

  ENDMETHOD.

  METHOD fnd_in_rltd_prgrm_inclds.
    DATA(t1) = i_file.
    DATA(t2) = i_super_class_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_include_graph.
    CLEAR t4.
    DATA(t5) = me->graph.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_include_graph.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA t12 TYPE REF TO zcl_lnt_include_graph.
        CLEAR t12.
        DATA(t13) = me->reg.
        DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t14.
        DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t15.
        t12 = NEW zcl_lnt_include_graph( i_reg_f149 = t13 i_severity = t14 i_allow_unused = t15 ).
        t10 = t12.
      ELSE.
        DATA t16 TYPE REF TO zcl_lnt_include_graph.
        CLEAR t16.
        t10 = t16.
      ENDIF.
      me->graph = t10.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `graph`.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_include_graph.
    CLEAR t19.
    DATA(t20) = me->graph.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = VALUE string( ).
      DATA t24 TYPE REF TO zcl_lnt_abstract_file.
      CLEAR t24.
      DATA(t25) = t1.
      t24 = t25.
      DATA(t26) = VALUE string( ).
      DATA(t27) = t24.
      t26 = t27->filename.
      t23 = t26.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t23.
      t21 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t21 = t29.
    ENDIF.
    t18 = t19->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t21 ).
    t17 = t18.
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = VALUE i( ).
    DATA(t32) = t17.
    t32->load( ).
    t31 = lines( t32->items ).
    DATA(t33) = 0.
    t30 = xsdbool( t31 = t33 ).
    IF t30 = abap_true.
      DATA t34 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t34.
      result = t34.
      RETURN.
    ENDIF.
    DATA t35 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t37.
    DATA(t38) = me->reg.
    DATA(t39) = |PROG|.
    t37 = t38->get_objects_by_type( i_type_9913 = t39 ).
    t36 = t37->iterate( ).
    t35 = t36.
    DO.
      DATA(t40) = abap_true.
      IF t40 = abap_false.
        EXIT.
      ENDIF.
      DATA t41 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t42.
      DATA(t43) = t35.
      t42 = t43->next( ).
      t41 = t42.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = t41.
      t44 = t45->done.
      IF t44 = abap_true.
        EXIT.
      ENDIF.
      DATA t46 TYPE REF TO zif_lnt_object.
      CLEAR t46.
      DATA t47 TYPE REF TO zif_lnt_object.
      CLEAR t47.
      DATA t48 TYPE REF TO zif_lnt_object.
      CLEAR t48.
      DATA(t49) = t41.
      t48 = t49->value.
      t47 = t48.
      t46 = t47.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = abap_false.
      t52 = t53.
      DATA t54 TYPE REF TO cx_root.
      CLEAR t54.
      TRY.
          DATA(t55) = VALUE abap_bool( ).
          DATA(t56) = VALUE abap_bool( ).
          DATA(t57) = t46.
          t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_ob_program ).
          t55 = xsdbool( t56 = abap_false ).
          t51 = t55.
          DATA(t58) = abap_true.
          t52 = t58.
        CATCH cx_root INTO t54.
          DATA(t59) = VALUE abap_bool( ).
          DATA(t60) = t52.
          t59 = xsdbool( t60 = abap_false ).
          IF t59 = abap_true.
            DATA(t61) = t35.
            t61->close( ).
          ENDIF.
          RAISE EXCEPTION t54.
      ENDTRY.
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = t52.
      t62 = xsdbool( t63 = abap_false ).
      IF t62 = abap_true.
        DATA(t64) = t35.
        t64->close( ).
      ENDIF.
      DATA(t65) = t51.
      t50 = t65.
      IF t50 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t66 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t66.
      DATA t67 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t67.
      DATA t68 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t68.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = abap_false.
      t69 = t70.
      DATA t71 TYPE REF TO cx_root.
      CLEAR t71.
      TRY.
          DATA t72 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t72.
          DATA t73 TYPE REF TO zcl_lnt_ob_program.
          CLEAR t73.
          DATA(t74) = t46.
          DATA t75 TYPE REF TO object.
          CLEAR t75.
          t75 = t74.
          t73 ?= t75.
          t72 = t73->get_main_abap_file( ).
          t68 = t72.
          DATA(t76) = abap_true.
          t69 = t76.
        CATCH cx_root INTO t71.
          DATA(t77) = VALUE abap_bool( ).
          DATA(t78) = t69.
          t77 = xsdbool( t78 = abap_false ).
          IF t77 = abap_true.
            DATA(t79) = t35.
            t79->close( ).
          ENDIF.
          RAISE EXCEPTION t71.
      ENDTRY.
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = t69.
      t80 = xsdbool( t81 = abap_false ).
      IF t80 = abap_true.
        DATA(t82) = t35.
        t82->close( ).
      ENDIF.
      DATA(t83) = t68.
      t67 = t83.
      t66 = t67.
      DATA(t84) = VALUE abap_bool( ).
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = abap_false.
      t86 = t87.
      DATA t88 TYPE REF TO cx_root.
      CLEAR t88.
      TRY.
          DATA(t89) = VALUE abap_bool( ).
          DATA t90 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t90.
          DATA(t91) = t66.
          t90 = t91.
          DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t92.
          DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t93.
          t92 = t93.
          DATA(t94) = VALUE abap_bool( ).
          DATA(t95) = t90.
          IF t95 IS INITIAL.
            t94 = abap_true.
          ENDIF.
          t89 = t94.
          t85 = t89.
          DATA(t96) = abap_true.
          t86 = t96.
        CATCH cx_root INTO t88.
          DATA(t97) = VALUE abap_bool( ).
          DATA(t98) = t86.
          t97 = xsdbool( t98 = abap_false ).
          IF t97 = abap_true.
            DATA(t99) = t35.
            t99->close( ).
          ENDIF.
          RAISE EXCEPTION t88.
      ENDTRY.
      DATA(t100) = VALUE abap_bool( ).
      DATA(t101) = t86.
      t100 = xsdbool( t101 = abap_false ).
      IF t100 = abap_true.
        DATA(t102) = t35.
        t102->close( ).
      ENDIF.
      DATA(t103) = t85.
      t84 = t103.
      IF t84 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t104.
      DATA t105 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t105.
      DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t106.
      DATA(t107) = VALUE abap_bool( ).
      DATA(t108) = abap_false.
      t107 = t108.
      DATA t109 TYPE REF TO cx_root.
      CLEAR t109.
      TRY.
          DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t110.
          DATA t111 TYPE REF TO zcl_lnt_include_graph.
          CLEAR t111.
          DATA(t112) = me->graph.
          t111 = t112.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          DATA(t114) = abap_true.
          IF t114 = abap_true.
            DATA(t115) = VALUE string( ).
            DATA t116 TYPE REF TO zcl_lnt_abstract_file.
            CLEAR t116.
            DATA t117 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t117.
            DATA(t118) = t66.
            t117 = t118.
            t116 = t117.
            DATA(t119) = VALUE string( ).
            DATA(t120) = t116.
            t119 = t120->filename.
            t115 = t119.
            DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t121->has = abap_true.
            t121->value = t115.
            t113 = t121.
          ELSE.
            DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t122.
            t113 = t122.
          ENDIF.
          t110 = t111->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t113 ).
          t106 = t110.
          DATA(t123) = abap_true.
          t107 = t123.
        CATCH cx_root INTO t109.
          DATA(t124) = VALUE abap_bool( ).
          DATA(t125) = t107.
          t124 = xsdbool( t125 = abap_false ).
          IF t124 = abap_true.
            DATA(t126) = t35.
            t126->close( ).
          ENDIF.
          RAISE EXCEPTION t109.
      ENDTRY.
      DATA(t127) = VALUE abap_bool( ).
      DATA(t128) = t107.
      t127 = xsdbool( t128 = abap_false ).
      IF t127 = abap_true.
        DATA(t129) = t35.
        t129->close( ).
      ENDIF.
      DATA(t130) = t106.
      t105 = t130.
      t104 = t105.
      DATA(t131) = VALUE abap_bool( ).
      DATA(t132) = VALUE abap_bool( ).
      DATA(t133) = VALUE abap_bool( ).
      DATA(t134) = abap_false.
      t133 = t134.
      DATA t135 TYPE REF TO cx_root.
      CLEAR t135.
      TRY.
          DATA(t136) = VALUE abap_bool( ).
          DATA(t137) = VALUE abap_bool( ).
          DATA(t138) = VALUE abap_bool( ).
          DATA(t139) = abap_false.
          t138 = t139.
          DATA(t140) = t17.
          DATA(t141) = VALUE string( ).
          t140->dense( ).
          DATA(t142) = VALUE i( ).
          DO.
            t140->load( ).
            IF t142 >= lines( t140->items ).
              EXIT.
            ENDIF.
            CLEAR t141.
            READ TABLE t140->items INDEX t142 + 1 INTO t141.
            IF t140->has( t142 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t142 = t142 + 1.
            DATA(t143) = VALUE abap_bool( ).
            DATA(t144) = t104.
            DATA(t145) = t141.
            t143 = t144->includes( p0 = t145 ).
            IF t143 = abap_true.
              DATA(t146) = abap_true.
              t138 = t146.
              EXIT.
            ENDIF.
          ENDDO.
          DATA(t147) = t138.
          t137 = t147.
          DATA(t148) = abap_false.
          t136 = xsdbool( t137 = t148 ).
          t132 = t136.
          DATA(t149) = abap_true.
          t133 = t149.
        CATCH cx_root INTO t135.
          DATA(t150) = VALUE abap_bool( ).
          DATA(t151) = t133.
          t150 = xsdbool( t151 = abap_false ).
          IF t150 = abap_true.
            DATA(t152) = t35.
            t152->close( ).
          ENDIF.
          RAISE EXCEPTION t135.
      ENDTRY.
      DATA(t153) = VALUE abap_bool( ).
      DATA(t154) = t133.
      t153 = xsdbool( t154 = abap_false ).
      IF t153 = abap_true.
        DATA(t155) = t35.
        t155->close( ).
      ENDIF.
      DATA(t156) = t132.
      t131 = t156.
      IF t131 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t157 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t157.
      DATA t158 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t158.
      DATA t159 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t159.
      DATA(t160) = VALUE abap_bool( ).
      DATA(t161) = abap_false.
      t160 = t161.
      DATA t162 TYPE REF TO cx_root.
      CLEAR t162.
      TRY.
          DATA t163 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t163.
          DATA t164 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t164.
          DATA t165 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t165.
          DATA t166 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t166.
          DATA(t167) = t66.
          t166 = t167.
          t165 = t166.
          DATA t168 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t168.
          DATA(t169) = t165.
          t168 = t169->info.
          t164 = t168.
          DATA(t170) = t2.
          t163 = t164->get_class_definition_by_name( i_name = t170 ).
          t159 = t163.
          DATA(t171) = abap_true.
          t160 = t171.
        CATCH cx_root INTO t162.
          DATA(t172) = VALUE abap_bool( ).
          DATA(t173) = t160.
          t172 = xsdbool( t173 = abap_false ).
          IF t172 = abap_true.
            DATA(t174) = t35.
            t174->close( ).
          ENDIF.
          RAISE EXCEPTION t162.
      ENDTRY.
      DATA(t175) = VALUE abap_bool( ).
      DATA(t176) = t160.
      t175 = xsdbool( t176 = abap_false ).
      IF t175 = abap_true.
        DATA(t177) = t35.
        t177->close( ).
      ENDIF.
      DATA(t178) = t159.
      t158 = t178.
      t157 = t158.
      DATA(t179) = VALUE abap_bool( ).
      DATA(t180) = VALUE abap_bool( ).
      DATA(t181) = VALUE abap_bool( ).
      DATA(t182) = abap_false.
      t181 = t182.
      DATA t183 TYPE REF TO cx_root.
      CLEAR t183.
      TRY.
          DATA(t184) = VALUE abap_bool( ).
          DATA t185 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t185.
          DATA(t186) = t157.
          t185 = t186.
          DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t187.
          DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t188.
          t187 = t188.
          DATA(t189) = VALUE abap_bool( ).
          DATA(t190) = VALUE abap_bool( ).
          DATA(t191) = t185.
          IF t191 IS INITIAL.
            t190 = abap_true.
          ENDIF.
          t189 = xsdbool( t190 = abap_false ).
          t184 = t189.
          t180 = t184.
          DATA(t192) = abap_true.
          t181 = t192.
        CATCH cx_root INTO t183.
          DATA(t193) = VALUE abap_bool( ).
          DATA(t194) = t181.
          t193 = xsdbool( t194 = abap_false ).
          IF t193 = abap_true.
            DATA(t195) = t35.
            t195->close( ).
          ENDIF.
          RAISE EXCEPTION t183.
      ENDTRY.
      DATA(t196) = VALUE abap_bool( ).
      DATA(t197) = t181.
      t196 = xsdbool( t197 = abap_false ).
      IF t196 = abap_true.
        DATA(t198) = t35.
        t198->close( ).
      ENDIF.
      DATA(t199) = t180.
      t179 = t199.
      IF t179 = abap_true.
        DATA t200 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t200.
        DATA t201 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t201.
        DATA t202 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t202.
        DATA(t203) = VALUE abap_bool( ).
        DATA(t204) = abap_false.
        t203 = t204.
        DATA t205 TYPE REF TO cx_root.
        CLEAR t205.
        TRY.
            DATA t206 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t206.
            DATA(t207) = abap_true.
            IF t207 = abap_true.
              DATA t208 TYPE REF TO zcl_lnt_info_class_definition.
              CLEAR t208.
              DATA(t209) = t157.
              t208 = t209.
              t206 = t208.
            ELSE.
              DATA t210 TYPE REF TO zcl_lnt_info_class_definition.
              CLEAR t210.
              t206 = t210.
            ENDIF.
            t202 = t206.
            DATA(t211) = abap_true.
            t203 = t211.
          CATCH cx_root INTO t205.
            DATA(t212) = VALUE abap_bool( ).
            DATA(t213) = t203.
            t212 = xsdbool( t213 = abap_false ).
            IF t212 = abap_true.
              DATA(t214) = t35.
              t214->close( ).
            ENDIF.
            RAISE EXCEPTION t205.
        ENDTRY.
        DATA(t215) = VALUE abap_bool( ).
        DATA(t216) = t203.
        t215 = xsdbool( t216 = abap_false ).
        IF t215 = abap_true.
          DATA(t217) = t35.
          t217->close( ).
        ENDIF.
        DATA(t218) = t202.
        t201 = t218.
        t200 = t201.
        DATA(t219) = t35.
        t219->close( ).
        DATA(t220) = t200.
        result = t220.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t221 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t221.
    result = t221.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_superclass_final_conf( me->gt_cn_in_sr_rl_sp_fn_ts_sp_fnl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_superclass_final_conf( me->gt_cn_in_sr_rl_sp_fn_ts_sp_fnl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_superclass_final_conf.
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
        t1 = NEW zcl_lnt_superclass_final_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_sp_fn_ts_sp_fnl( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1720_e579ccabee51.
  ENDMETHOD.
ENDCLASS.
