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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_superclass_final IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_superclass_final_conf( ).
    me->conf = t1.
    DATA t2 TYPE REF TO zcl_lnt_include_graph.
    CLEAR t2.
    me->graph = t2.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |superclass_final|.
    DATA(t3) = |Super class final|.
    DATA(t4) = |Checks that classes which are inherited from are not declare|.
    t4 = t4 && |d as FINAL.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11 = t12.
      DATA(t13) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      DATA(t14) = |Syntax|.
      APPEND t14 TO t13->items.
      DATA(t15) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      t10 = t15.
      t8 = t10.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t16.
      t8 = t16.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t8 i_pragma = t17 i_pseudo_comment = t18 ).
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Superclasses cannot be FINAL|.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sp_fn_ts_sp_fnl.
    DATA(t1) = CAST zcl_lnt_superclass_final_conf( me->conf ).
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sp_fn_ts_sp_fnl.
    DATA(t1) = CAST zcl_lnt_superclass_final_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/superclass_final.ts:36|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zif_lnt_abap_file_information.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA(t8) = CAST zcl_lnt_abap_file( t1 ).
    t7 = t8.
    DATA t9 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t10) = CAST zcl_lnt_abap_file( t7 ).
    t9 = t10->info.
    t6 = t9.
    t5 = t6->list_class_definitions( ).
    DATA t11 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    LOOP AT t5->items INTO t12.
      t11 ?= t12.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t15) = CAST zcl_lnt_info_class_definition( t11 ).
      t14 = t15->super_class_name.
      t13 = t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t18) = CAST zlnt_runtime_opti_4ba3bdccd169( t13 ).
      t17 = t18.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      t19 = t20.
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = CAST zlnt_runtime_opti_4ba3bdccd169( t17 ).
      IF t22 IS INITIAL.
        t21 = abap_true.
      ELSEIF t22->has = abap_false.
        t21 = abap_true.
      ENDIF.
      t16 = t21.
      IF t16 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t23 TYPE abap_bool.
      DATA(t24) = abap_true.
      t23 = t24.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE abap_bool.
      DATA(t27) = CAST zcl_lnt_abap_object( t2 ).
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_class ).
      t25 = t26.
      IF t26 = abap_true.
        DATA t28 TYPE abap_bool.
        DATA t29 TYPE string.
        DATA t30 TYPE string.
        DATA t31 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t32) = CAST zcl_lnt_abap_file( t1 ).
        t31 = t32.
        DATA t33 TYPE string.
        DATA(t34) = CAST zcl_lnt_abstract_file( t31 ).
        t33 = t34->filename.
        t30 = t33.
        t29 = t30.
        DATA t35 TYPE abap_bool.
        DATA t36 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t36.
        DATA(t37) = `\.clas\.abap$`.
        DATA(t38) = ||.
        CREATE OBJECT t36 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t37 flags = t38.
        DATA(t39) = t29.
        t35 = t36->match_test( p0 = t39 ).
        t28 = t35.
        t25 = t28.
      ENDIF.
      IF t25 = abap_true.
        DATA(t40) = abap_false.
        t23 = t40.
      ENDIF.
      DATA t41 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t42 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t42.
      t41 = t42.
      DATA(t43) = t23.
      IF t43 = abap_true.
        DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t45 TYPE REF TO zcl_lnt_abap_object.
        DATA(t46) = CAST zcl_lnt_abap_object( t2 ).
        t45 = t46.
        DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t48) = CAST zcl_lnt_abap_object( t45 ).
        t47 = t48->parsed.
        t44 = t47.
        DATA t49 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t49.
        DATA t50 TYPE REF TO object.
        CLEAR t50.
        LOOP AT t44->items INTO t50.
          t49 ?= t50.
          DATA t51 TYPE REF TO zcl_lnt_info_class_definition.
          DATA t52 TYPE REF TO zif_lnt_abap_file_information.
          DATA t53 TYPE REF TO zcl_lnt_abap_file.
          DATA(t54) = CAST zcl_lnt_abap_file( t49 ).
          t53 = t54.
          DATA t55 TYPE REF TO zif_lnt_abap_file_information.
          DATA(t56) = CAST zcl_lnt_abap_file( t53 ).
          t55 = t56->info.
          t52 = t55.
          DATA t57 TYPE string.
          DATA(t58) = CAST zlnt_runtime_opti_4ba3bdccd169( t13 ).
          t57 = t58->value.
          t51 = t52->get_class_definition_by_name( i_name = t57 ).
          t41 = t51.
          DATA(t59) = VALUE abap_bool( ).
          DATA t60 TYPE REF TO zcl_lnt_info_class_definition.
          DATA(t61) = CAST zcl_lnt_info_class_definition( t41 ).
          t60 = t61.
          DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t63.
          t62 = t63.
          DATA(t64) = VALUE abap_bool( ).
          DATA(t65) = VALUE abap_bool( ).
          DATA(t66) = CAST zcl_lnt_info_class_definition( t60 ).
          IF t66 IS INITIAL.
            t65 = abap_true.
          ENDIF.
          t64 = xsdbool( t65 = abap_false ).
          t59 = t64.
          IF t59 = abap_true.
            EXIT.
          ENDIF.
        ENDLOOP.
      ENDIF.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = VALUE abap_bool( ).
      DATA t69 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t70) = CAST zcl_lnt_info_class_definition( t41 ).
      t69 = t70.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      t71 = t72.
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = CAST zcl_lnt_info_class_definition( t69 ).
      IF t74 IS INITIAL.
        t73 = abap_true.
      ENDIF.
      t68 = t73.
      t67 = t68.
      IF t68 = abap_true.
        DATA t75 TYPE abap_bool.
        DATA(t76) = CAST zcl_lnt_abap_object( t2 ).
        t75 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_ob_program ).
        t67 = t75.
      ENDIF.
      IF t67 = abap_true.
        DATA t77 TYPE REF TO zcl_lnt_info_class_definition.
        DATA(t78) = CAST zcl_lnt_abap_file( t1 ).
        DATA t79 TYPE string.
        DATA(t80) = CAST zlnt_runtime_opti_4ba3bdccd169( t13 ).
        t79 = t80->value.
        t77 = me->fnd_in_rltd_prgrm_inclds( i_file = t78 i_super_class_name = t79 ).
        t41 = t77.
      ENDIF.
      DATA(t81) = VALUE abap_bool( ).
      DATA t82 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t83) = CAST zcl_lnt_info_class_definition( t41 ).
      t82 = t83.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      t84 = t85.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = CAST zcl_lnt_info_class_definition( t82 ).
      IF t87 IS INITIAL.
        t86 = abap_true.
      ENDIF.
      t81 = t86.
      IF t81 = abap_true.
        DATA t88 TYPE REF TO zcl_lnt_class.
        CLEAR t88.
        DATA t89 TYPE REF TO zcl_lnt_class.
        CLEAR t89.
        DATA t90 TYPE REF TO zif_lnt_object.
        CLEAR t90.
        DATA(t91) = CAST zif_lnt_registry( me->reg ).
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t92.
        DATA(t93) = abap_true.
        IF t93 = abap_true.
          DATA(t94) = |CLAS|.
          DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t95->has = abap_true.
          t95->value = t94.
          t92 = t95.
        ELSE.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          t92 = t96.
        ENDIF.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        DATA(t98) = abap_true.
        IF t98 = abap_true.
          DATA t99 TYPE string.
          DATA(t100) = CAST zlnt_runtime_opti_4ba3bdccd169( t13 ).
          t99 = t100->value.
          DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t101->has = abap_true.
          t101->value = t99.
          t97 = t101.
        ELSE.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t102.
          t97 = t102.
        ENDIF.
        t90 = t91->get_object( i_type_9913 = t92 i_name = t97 ).
        t89 ?= t90.
        t88 = t89.
        DATA t103 TYPE abap_bool.
        DATA(t104) = CAST zcl_lnt_class( t88 ).
        t103 = xsdbool( t104 IS BOUND ).
        IF t103 = abap_true.
          DATA t105 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t105.
          DATA t106 TYPE REF TO zcl_lnt_class.
          DATA(t107) = CAST zcl_lnt_class( t88 ).
          t106 = t107.
          DATA t108 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t108.
          DATA t109 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t109.
          DATA t110 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t110.
          DATA t111 TYPE REF TO zcl_lnt_abap_file.
          DATA t112 TYPE REF TO zcl_lnt_abap_file.
          DATA(t113) = CAST zcl_lnt_class( t106 ).
          t112 = t113->get_main_abap_file( ).
          t111 = t112.
          DATA t114 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t114.
          DATA(t115) = VALUE abap_bool( ).
          DATA(t116) = CAST zcl_lnt_abap_file( t111 ).
          IF t116 IS INITIAL.
            t115 = abap_true.
          ENDIF.
          IF t115 = abap_true.
            DATA t117 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t117.
            t114 = t117.
          ELSE.
            DATA t118 TYPE REF TO zif_lnt_abap_file_information.
            DATA t119 TYPE REF TO zcl_lnt_abap_file.
            DATA t120 TYPE REF TO zcl_lnt_abap_file.
            DATA(t121) = CAST zcl_lnt_abap_file( t111 ).
            t120 = t121.
            t119 = t120.
            DATA t122 TYPE REF TO zif_lnt_abap_file_information.
            DATA(t123) = CAST zcl_lnt_abap_file( t119 ).
            t122 = t123->info.
            t118 = t122.
            t114 = t118.
          ENDIF.
          t110 = t114.
          t109 = t110.
          DATA t124 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t124.
          DATA(t125) = VALUE abap_bool( ).
          DATA(t126) = CAST zif_lnt_abap_file_information( t109 ).
          IF t126 IS INITIAL.
            t125 = abap_true.
          ENDIF.
          IF t125 = abap_true.
            DATA t127 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t127.
            t124 = t127.
          ELSE.
            DATA t128 TYPE REF TO zcl_lnt_info_class_definition.
            DATA t129 TYPE REF TO zif_lnt_abap_file_information.
            DATA(t130) = CAST zif_lnt_abap_file_information( t109 ).
            t129 = t130.
            DATA t131 TYPE string.
            DATA t132 TYPE REF TO zcl_lnt_abstract_object.
            DATA(t133) = CAST zcl_lnt_class( t106 ).
            t132 = t133.
            DATA t134 TYPE string.
            DATA(t135) = CAST zcl_lnt_abstract_object( t132 ).
            t134 = t135->name.
            t131 = t134.
            t128 = t129->get_class_definition_by_name( i_name = t131 ).
            t124 = t128.
          ENDIF.
          t108 = t124.
          t105 = t108.
          t41 = t105.
        ENDIF.
      ENDIF.
      DATA(t136) = VALUE abap_bool( ).
      DATA t137 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t138) = CAST zcl_lnt_info_class_definition( t41 ).
      t137 = t138.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      t139 = t140.
      DATA(t141) = VALUE abap_bool( ).
      DATA(t142) = CAST zcl_lnt_info_class_definition( t137 ).
      IF t142 IS INITIAL.
        t141 = abap_true.
      ENDIF.
      t136 = t141.
      IF t136 = abap_true.
        DATA t143 TYPE string.
        DATA t144 TYPE string.
        DATA t145 TYPE string.
        DATA(t146) = |Super class "|.
        DATA t147 TYPE string.
        DATA(t148) = CAST zlnt_runtime_opti_4ba3bdccd169( t13 ).
        t147 = t148->value.
        DATA(t149) = strlen( t146 ).
        t145 = |{ t146 }{ t147 }|.
        DATA(t150) = |" not found|.
        DATA(t151) = strlen( t145 ).
        t144 = |{ t145 }{ t150 }|.
        t143 = t144.
        DATA t152 TYPE REF TO zcl_lnt_issue.
        CLEAR t152.
        DATA t153 TYPE REF TO zcl_lnt_issue.
        CLEAR t153.
        DATA t154 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t155) = CAST zcl_lnt_info_class_definition( t11 ).
        t154 = t155->identifier.
        DATA(t156) = t143.
        DATA(t157) = VALUE string( ).
        DATA t158 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t158.
        DATA(t159) = |superclass_final|.
        DATA(t160) = |Super class final|.
        DATA(t161) = |Checks that classes which are inherited from are not declare|.
        t161 = t161 && |d as FINAL.|.
        DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t162.
        DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t163.
        DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t164.
        DATA t165 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t165.
        DATA(t166) = abap_true.
        IF t166 = abap_true.
          DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t168 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t169.
          t168 = t169.
          DATA(t170) = CAST zlnt_runtime_arra_8ecd6afe19e0( t168 ).
          DATA(t171) = |Syntax|.
          APPEND t171 TO t170->items.
          DATA(t172) = CAST zlnt_runtime_arra_8ecd6afe19e0( t168 ).
          t167 = t172.
          t165 = t167.
        ELSE.
          DATA t173 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t173.
          t165 = t173.
        ENDIF.
        DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t174.
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t175.
        t158 = NEW zcl_lnt_irule_metadata( i_key = t159 i_title = t160 i_short_description = t161 i_bad_example = t162 i_good_example = t163 i_extended_information = t164 i_tags = t165 i_pragma = t174 i_pseudo_comment = t175 ).
        t157 = t158->key.
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t177) = CAST zcl_lnt_superclass_final_conf( me->conf ).
        t176 = t177->severity.
        DATA t178 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t178.
        t153 = zcl_lnt_issue=>at_identifier( i_identifier = t154 i_message_26cb = t156 i_key = t157 i_severity = t176 i_fix = t178 ).
        t152 = t153.
        DATA(t179) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
        DATA(t180) = CAST zcl_lnt_issue( t152 ).
        APPEND t180 TO t179->items.
        CONTINUE.
      ENDIF.
      DATA t181 TYPE abap_bool.
      DATA t182 TYPE abap_bool.
      DATA t183 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t184) = CAST zcl_lnt_info_class_definition( t41 ).
      t183 = t184.
      t182 = t183->is_final.
      DATA(t185) = abap_true.
      t181 = xsdbool( t182 = t185 ).
      IF t181 = abap_true.
        DATA t186 TYPE REF TO zcl_lnt_issue.
        CLEAR t186.
        DATA t187 TYPE REF TO zcl_lnt_issue.
        CLEAR t187.
        DATA t188 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t189) = CAST zcl_lnt_info_class_definition( t11 ).
        t188 = t189->identifier.
        DATA(t190) = |Superclasses cannot be FINAL|.
        DATA(t191) = VALUE string( ).
        DATA t192 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t192.
        DATA(t193) = |superclass_final|.
        DATA(t194) = |Super class final|.
        DATA(t195) = |Checks that classes which are inherited from are not declare|.
        t195 = t195 && |d as FINAL.|.
        DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t196.
        DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t197.
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t198.
        DATA t199 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t199.
        DATA(t200) = abap_true.
        IF t200 = abap_true.
          DATA t201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t202 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t203 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t203.
          t202 = t203.
          DATA(t204) = CAST zlnt_runtime_arra_8ecd6afe19e0( t202 ).
          DATA(t205) = |Syntax|.
          APPEND t205 TO t204->items.
          DATA(t206) = CAST zlnt_runtime_arra_8ecd6afe19e0( t202 ).
          t201 = t206.
          t199 = t201.
        ELSE.
          DATA t207 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t207.
          t199 = t207.
        ENDIF.
        DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t208.
        DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t209.
        t192 = NEW zcl_lnt_irule_metadata( i_key = t193 i_title = t194 i_short_description = t195 i_bad_example = t196 i_good_example = t197 i_extended_information = t198 i_tags = t199 i_pragma = t208 i_pseudo_comment = t209 ).
        t191 = t192->key.
        DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t211) = CAST zcl_lnt_superclass_final_conf( me->conf ).
        t210 = t211->severity.
        DATA t212 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t212.
        t187 = zcl_lnt_issue=>at_identifier( i_identifier = t188 i_message_26cb = t190 i_key = t191 i_severity = t210 i_fix = t212 ).
        t186 = t187.
        DATA(t213) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
        DATA(t214) = CAST zcl_lnt_issue( t186 ).
        APPEND t214 TO t213->items.
      ENDIF.
    ENDLOOP.
    DATA(t215) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    result = t215.

  ENDMETHOD.

  METHOD fnd_in_rltd_prgrm_inclds.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = i_super_class_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_include_graph.
    DATA(t5) = CAST zcl_lnt_include_graph( me->graph ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zcl_lnt_include_graph( t4 ).
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
        DATA(t13) = CAST zif_lnt_registry( me->reg ).
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
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_include_graph.
    DATA(t20) = CAST zcl_lnt_include_graph( me->graph ).
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA t23 TYPE string.
      DATA t24 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t25) = CAST zcl_lnt_abap_file( t1 ).
      t24 = t25.
      DATA t26 TYPE string.
      DATA(t27) = CAST zcl_lnt_abstract_file( t24 ).
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
    DATA t30 TYPE abap_bool.
    DATA t31 TYPE i.
    DATA(t32) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
    t31 = lines( t32->items ).
    DATA(t33) = 0.
    t30 = xsdbool( t31 = t33 ).
    IF t30 = abap_true.
      DATA t34 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t34.
      result = t34.
      RETURN.
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t36) = CAST zif_lnt_registry( me->reg ).
    DATA(t37) = |PROG|.
    t35 = t36->get_objects_by_type( i_type_9913 = t37 ).
    DATA t38 TYPE REF TO zif_lnt_object.
    CLEAR t38.
    DATA t39 TYPE REF TO object.
    CLEAR t39.
    LOOP AT t35->items INTO t39.
      t38 ?= t39.
      DATA t40 TYPE abap_bool.
      DATA t41 TYPE abap_bool.
      DATA(t42) = CAST zif_lnt_object( t38 ).
      t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_ob_program ).
      t40 = xsdbool( t41 = abap_false ).
      IF t40 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t43 TYPE REF TO zcl_lnt_abap_file.
      DATA t44 TYPE REF TO zcl_lnt_abap_file.
      DATA t45 TYPE REF TO zcl_lnt_ob_program.
      DATA(t46) = CAST zif_lnt_object( t38 ).
      DATA t47 TYPE REF TO object.
      t47 = t46.
      t45 ?= t47.
      t44 = t45->get_main_abap_file( ).
      t43 = t44.
      DATA(t48) = VALUE abap_bool( ).
      DATA t49 TYPE REF TO zcl_lnt_abap_file.
      DATA(t50) = CAST zcl_lnt_abap_file( t43 ).
      t49 = t50.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      t51 = t52.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = CAST zcl_lnt_abap_file( t49 ).
      IF t54 IS INITIAL.
        t53 = abap_true.
      ENDIF.
      t48 = t53.
      IF t48 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t56.
      DATA t57 TYPE REF TO zcl_lnt_include_graph.
      DATA(t58) = CAST zcl_lnt_include_graph( me->graph ).
      t57 = t58.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      DATA(t60) = abap_true.
      IF t60 = abap_true.
        DATA t61 TYPE string.
        DATA t62 TYPE REF TO zcl_lnt_abstract_file.
        DATA t63 TYPE REF TO zcl_lnt_abap_file.
        DATA(t64) = CAST zcl_lnt_abap_file( t43 ).
        t63 = t64.
        t62 = t63.
        DATA t65 TYPE string.
        DATA(t66) = CAST zcl_lnt_abstract_file( t62 ).
        t65 = t66->filename.
        t61 = t65.
        DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t67->has = abap_true.
        t67->value = t61.
        t59 = t67.
      ELSE.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        t59 = t68.
      ENDIF.
      t56 = t57->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t59 ).
      t55 = t56.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = VALUE abap_bool( ).
      DATA t71 TYPE abap_bool.
      DATA(t72) = abap_false.
      t71 = t72.
      DATA(t73) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
      DATA(t74) = VALUE string( ).
      LOOP AT t73->items INTO t74.
        DATA t75 TYPE abap_bool.
        DATA(t76) = CAST zlnt_runtime_arra_8ecd6afe19e0( t55 ).
        DATA(t77) = t74.
        t75 = t76->includes( p0 = t77 ).
        IF t75 = abap_true.
          DATA(t78) = abap_true.
          t71 = t78.
          EXIT.
        ENDIF.
      ENDLOOP.
      DATA(t79) = t71.
      t70 = t79.
      DATA(t80) = abap_false.
      t69 = xsdbool( t70 = t80 ).
      IF t69 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t81 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t82 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t83 TYPE REF TO zif_lnt_abap_file_information.
      DATA t84 TYPE REF TO zcl_lnt_abap_file.
      DATA t85 TYPE REF TO zcl_lnt_abap_file.
      DATA(t86) = CAST zcl_lnt_abap_file( t43 ).
      t85 = t86.
      t84 = t85.
      DATA t87 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t88) = CAST zcl_lnt_abap_file( t84 ).
      t87 = t88->info.
      t83 = t87.
      DATA(t89) = t2.
      t82 = t83->get_class_definition_by_name( i_name = t89 ).
      t81 = t82.
      DATA(t90) = VALUE abap_bool( ).
      DATA t91 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t92) = CAST zcl_lnt_info_class_definition( t81 ).
      t91 = t92.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      t93 = t94.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = VALUE abap_bool( ).
      DATA(t97) = CAST zcl_lnt_info_class_definition( t91 ).
      IF t97 IS INITIAL.
        t96 = abap_true.
      ENDIF.
      t95 = xsdbool( t96 = abap_false ).
      t90 = t95.
      IF t90 = abap_true.
        DATA t98 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t98.
        DATA(t99) = abap_true.
        IF t99 = abap_true.
          DATA t100 TYPE REF TO zcl_lnt_info_class_definition.
          DATA(t101) = CAST zcl_lnt_info_class_definition( t81 ).
          t100 = t101.
          t98 = t100.
        ELSE.
          DATA t102 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t102.
          t98 = t102.
        ENDIF.
        result = t98.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t103 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t103.
    result = t103.

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
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_sp_fn_ts_sp_fnl( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1621_47ead010eef6.
  ENDMETHOD.
ENDCLASS.
