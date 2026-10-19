* TS: src/rules/prefer_returning_to_exporting.ts:12:1 PreferReturningToExporting
CLASS zcl_lnt_prfr_rtrnng_t_exprtng DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prfr_rtrnn_t_exprt_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_p_r_t_e_t_pr_rt_t_ex RETURNING VALUE(result) TYPE REF TO zcl_lnt_prfr_rtrnn_t_exprt_cnf.
    METHODS s_c_i_s_r_p_r_t_e_t_pr_rt_t_ex IMPORTING i_conf TYPE REF TO zcl_lnt_prfr_rtrnn_t_exprt_cnf.
    METHODS r_p_i_s_r_p_r_t_e_t_pr_rt_t_ex IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prfr_rtrnng_t_exprtng IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_prfr_rtrnn_t_exprt_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Prefer RETURNING to EXPORTING. Generic types cannot be RETUR|.
    t7 = t7 && |NING.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#prefer-returning-to-exporting\nhttps://docs.abapopen|.
    t11 = t11 && |checks.org/checks/44/|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA(t29) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS test EXP|.
    t29 = t29 && |ORTING ev_foo TYPE i.\nENDCLASS.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |prefer_returning_to_exporting| i_title = |Prefer RETURNING to EXPORTING| i_short_description = t6 i_bad_example = t30 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t45 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_p_r_t_e_t_pr_rt_t_ex.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_p_r_t_e_t_pr_rt_t_ex.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_p_r_t_e_t_pr_rt_t_ex.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    t4 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    t19 = t4.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
    t18 = t19->find_all_statements( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_statement_node.
    DATA t23 TYPE REF TO object.
    DATA(t24) = VALUE i( ).
    DO.
      t18->load( ).
      IF t24 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t18->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d227_3477e061b4c4.
      t28 = t22->find_first_expression( i_type_9913 = t30 ).
      IF xsdbool( t28 IS BOUND ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d231_5616e0c1afc0.
      t31 = t22->find_first_expression( i_type_9913 = t34 ).
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      IF xsdbool( t31 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca.
      t43 = t22->find_first_expression( i_type_9913 = t45 ).
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      IF xsdbool( xsdbool( t43 IS INITIAL ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      t56 = t31.
      DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t54 = t56->find_direct_expressions( i_type_9913 = t58 ).
      t54->load( ).
      IF xsdbool( lines( t54->items ) <> 1 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t63) = VALUE string( ).
      DATA(t64) = VALUE string( ).
      DATA(t65) = VALUE string( ).
      DATA t66 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t66.
      DATA t68 TYPE REF TO object.
      CLEAR t68.
      t54->load( ).
      CLEAR t68.
      READ TABLE t54->items INDEX 1 INTO t68.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      CLEAR t66.
      IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t69 ?= t68.
        DATA t70 TYPE REF TO object.
        t70 = t69->as_ref( ).
        t66 ?= t70.
      ELSE.
        t66 ?= t68.
      ENDIF.
      t65 = t66->concat_tokens( ).
      DATA(t71) = strlen( t65 ).
      t64 = t65.
      IF t64 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t64 TO UPPER CASE.
      ELSE.
        t64 = zlnt_runtime_uppe_91169605024d=>full( t64 ).
      ENDIF.
      t63 = t64.
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = VALUE abap_bool( ).
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = VALUE abap_bool( ).
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = VALUE abap_bool( ).
      DATA(t83) = VALUE abap_bool( ).
      DATA(t84) = VALUE abap_bool( ).
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = VALUE abap_bool( ).
      DATA(t90) = VALUE abap_bool( ).
      DATA(t92) = |TYPE ANY|.
      DATA(t93) = strlen( t63 ).
      DATA t94 TYPE i.
      DATA(t95) = VALUE i( ).
      DATA(t96) = VALUE string( ).
      t94 = strlen( t92 ).
      IF t94 = 0.
        t90 = abap_true.
      ELSEIF t94 <= t93.
        t95 = 0.
        t95 = t93 - t94.
        t96 = t63+t95(t94).
        IF t96 = t92.
          t90 = abap_true.
        ENDIF.
      ENDIF.
      t89 = t90.
      IF t90 = abap_false.
        DATA(t97) = VALUE abap_bool( ).
        DATA(t99) = |TYPE ANY TABLE|.
        DATA(t100) = strlen( t63 ).
        DATA t101 TYPE i.
        DATA(t102) = VALUE i( ).
        DATA(t103) = VALUE string( ).
        t101 = strlen( t99 ).
        IF t101 = 0.
          t97 = abap_true.
        ELSEIF t101 <= t100.
          t102 = 0.
          t102 = t100 - t101.
          t103 = t63+t102(t101).
          IF t103 = t99.
            t97 = abap_true.
          ENDIF.
        ENDIF.
        t89 = t97.
      ENDIF.
      t88 = t89.
      IF t89 = abap_false.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t106) = |TYPE C|.
        DATA(t107) = strlen( t63 ).
        DATA t108 TYPE i.
        DATA(t109) = VALUE i( ).
        DATA(t110) = VALUE string( ).
        t108 = strlen( t106 ).
        IF t108 = 0.
          t104 = abap_true.
        ELSEIF t108 <= t107.
          t109 = 0.
          t109 = t107 - t108.
          t110 = t63+t109(t108).
          IF t110 = t106.
            t104 = abap_true.
          ENDIF.
        ENDIF.
        t88 = t104.
      ENDIF.
      t87 = t88.
      IF t88 = abap_false.
        DATA(t111) = VALUE abap_bool( ).
        DATA(t113) = |TYPE CLIKE|.
        DATA(t114) = strlen( t63 ).
        DATA t115 TYPE i.
        DATA(t116) = VALUE i( ).
        DATA(t117) = VALUE string( ).
        t115 = strlen( t113 ).
        IF t115 = 0.
          t111 = abap_true.
        ELSEIF t115 <= t114.
          t116 = 0.
          t116 = t114 - t115.
          t117 = t63+t116(t115).
          IF t117 = t113.
            t111 = abap_true.
          ENDIF.
        ENDIF.
        t87 = t111.
      ENDIF.
      t86 = t87.
      IF t87 = abap_false.
        DATA(t118) = VALUE abap_bool( ).
        DATA(t120) = |TYPE CSEQUENCE|.
        DATA(t121) = strlen( t63 ).
        DATA t122 TYPE i.
        DATA(t123) = VALUE i( ).
        DATA(t124) = VALUE string( ).
        t122 = strlen( t120 ).
        IF t122 = 0.
          t118 = abap_true.
        ELSEIF t122 <= t121.
          t123 = 0.
          t123 = t121 - t122.
          t124 = t63+t123(t122).
          IF t124 = t120.
            t118 = abap_true.
          ENDIF.
        ENDIF.
        t86 = t118.
      ENDIF.
      t85 = t86.
      IF t86 = abap_false.
        DATA(t125) = VALUE abap_bool( ).
        DATA(t127) = |TYPE DATA|.
        DATA(t128) = strlen( t63 ).
        DATA t129 TYPE i.
        DATA(t130) = VALUE i( ).
        DATA(t131) = VALUE string( ).
        t129 = strlen( t127 ).
        IF t129 = 0.
          t125 = abap_true.
        ELSEIF t129 <= t128.
          t130 = 0.
          t130 = t128 - t129.
          t131 = t63+t130(t129).
          IF t131 = t127.
            t125 = abap_true.
          ENDIF.
        ENDIF.
        t85 = t125.
      ENDIF.
      t84 = t85.
      IF t85 = abap_false.
        DATA(t132) = VALUE abap_bool( ).
        DATA(t134) = |TYPE DECFLOAT|.
        DATA(t135) = strlen( t63 ).
        DATA t136 TYPE i.
        DATA(t137) = VALUE i( ).
        DATA(t138) = VALUE string( ).
        t136 = strlen( t134 ).
        IF t136 = 0.
          t132 = abap_true.
        ELSEIF t136 <= t135.
          t137 = 0.
          t137 = t135 - t136.
          t138 = t63+t137(t136).
          IF t138 = t134.
            t132 = abap_true.
          ENDIF.
        ENDIF.
        t84 = t132.
      ENDIF.
      t83 = t84.
      IF t84 = abap_false.
        DATA(t139) = VALUE abap_bool( ).
        DATA(t141) = |TYPE HASHED TABLE|.
        DATA(t142) = strlen( t63 ).
        DATA t143 TYPE i.
        DATA(t144) = VALUE i( ).
        DATA(t145) = VALUE string( ).
        t143 = strlen( t141 ).
        IF t143 = 0.
          t139 = abap_true.
        ELSEIF t143 <= t142.
          t144 = 0.
          t144 = t142 - t143.
          t145 = t63+t144(t143).
          IF t145 = t141.
            t139 = abap_true.
          ENDIF.
        ENDIF.
        t83 = t139.
      ENDIF.
      t82 = t83.
      IF t83 = abap_false.
        DATA(t146) = VALUE abap_bool( ).
        DATA(t148) = |TYPE INDEX TABLE|.
        DATA(t149) = strlen( t63 ).
        DATA t150 TYPE i.
        DATA(t151) = VALUE i( ).
        DATA(t152) = VALUE string( ).
        t150 = strlen( t148 ).
        IF t150 = 0.
          t146 = abap_true.
        ELSEIF t150 <= t149.
          t151 = 0.
          t151 = t149 - t150.
          t152 = t63+t151(t150).
          IF t152 = t148.
            t146 = abap_true.
          ENDIF.
        ENDIF.
        t82 = t146.
      ENDIF.
      t81 = t82.
      IF t82 = abap_false.
        DATA(t153) = VALUE abap_bool( ).
        DATA(t155) = |TYPE N|.
        DATA(t156) = strlen( t63 ).
        DATA t157 TYPE i.
        DATA(t158) = VALUE i( ).
        DATA(t159) = VALUE string( ).
        t157 = strlen( t155 ).
        IF t157 = 0.
          t153 = abap_true.
        ELSEIF t157 <= t156.
          t158 = 0.
          t158 = t156 - t157.
          t159 = t63+t158(t157).
          IF t159 = t155.
            t153 = abap_true.
          ENDIF.
        ENDIF.
        t81 = t153.
      ENDIF.
      t80 = t81.
      IF t81 = abap_false.
        DATA(t160) = VALUE abap_bool( ).
        DATA(t162) = |TYPE NUMERIC|.
        DATA(t163) = strlen( t63 ).
        DATA t164 TYPE i.
        DATA(t165) = VALUE i( ).
        DATA(t166) = VALUE string( ).
        t164 = strlen( t162 ).
        IF t164 = 0.
          t160 = abap_true.
        ELSEIF t164 <= t163.
          t165 = 0.
          t165 = t163 - t164.
          t166 = t63+t165(t164).
          IF t166 = t162.
            t160 = abap_true.
          ENDIF.
        ENDIF.
        t80 = t160.
      ENDIF.
      t79 = t80.
      IF t80 = abap_false.
        DATA(t167) = VALUE abap_bool( ).
        DATA(t169) = |TYPE OBJECT|.
        DATA(t170) = strlen( t63 ).
        DATA t171 TYPE i.
        DATA(t172) = VALUE i( ).
        DATA(t173) = VALUE string( ).
        t171 = strlen( t169 ).
        IF t171 = 0.
          t167 = abap_true.
        ELSEIF t171 <= t170.
          t172 = 0.
          t172 = t170 - t171.
          t173 = t63+t172(t171).
          IF t173 = t169.
            t167 = abap_true.
          ENDIF.
        ENDIF.
        t79 = t167.
      ENDIF.
      t78 = t79.
      IF t79 = abap_false.
        DATA(t174) = VALUE abap_bool( ).
        DATA(t176) = |TYPE P|.
        DATA(t177) = strlen( t63 ).
        DATA t178 TYPE i.
        DATA(t179) = VALUE i( ).
        DATA(t180) = VALUE string( ).
        t178 = strlen( t176 ).
        IF t178 = 0.
          t174 = abap_true.
        ELSEIF t178 <= t177.
          t179 = 0.
          t179 = t177 - t178.
          t180 = t63+t179(t178).
          IF t180 = t176.
            t174 = abap_true.
          ENDIF.
        ENDIF.
        t78 = t174.
      ENDIF.
      t77 = t78.
      IF t78 = abap_false.
        DATA(t181) = VALUE abap_bool( ).
        DATA(t183) = |TYPE SIMPLE|.
        DATA(t184) = strlen( t63 ).
        DATA t185 TYPE i.
        DATA(t186) = VALUE i( ).
        DATA(t187) = VALUE string( ).
        t185 = strlen( t183 ).
        IF t185 = 0.
          t181 = abap_true.
        ELSEIF t185 <= t184.
          t186 = 0.
          t186 = t184 - t185.
          t187 = t63+t186(t185).
          IF t187 = t183.
            t181 = abap_true.
          ENDIF.
        ENDIF.
        t77 = t181.
      ENDIF.
      t76 = t77.
      IF t77 = abap_false.
        DATA(t188) = VALUE abap_bool( ).
        DATA(t190) = |TYPE SORTED TABLE|.
        DATA(t191) = strlen( t63 ).
        DATA t192 TYPE i.
        DATA(t193) = VALUE i( ).
        DATA(t194) = VALUE string( ).
        t192 = strlen( t190 ).
        IF t192 = 0.
          t188 = abap_true.
        ELSEIF t192 <= t191.
          t193 = 0.
          t193 = t191 - t192.
          t194 = t63+t193(t192).
          IF t194 = t190.
            t188 = abap_true.
          ENDIF.
        ENDIF.
        t76 = t188.
      ENDIF.
      t75 = t76.
      IF t76 = abap_false.
        DATA(t195) = VALUE abap_bool( ).
        DATA(t197) = |TYPE STANDARD TABLE|.
        DATA(t198) = strlen( t63 ).
        DATA t199 TYPE i.
        DATA(t200) = VALUE i( ).
        DATA(t201) = VALUE string( ).
        t199 = strlen( t197 ).
        IF t199 = 0.
          t195 = abap_true.
        ELSEIF t199 <= t198.
          t200 = 0.
          t200 = t198 - t199.
          t201 = t63+t200(t199).
          IF t201 = t197.
            t195 = abap_true.
          ENDIF.
        ENDIF.
        t75 = t195.
      ENDIF.
      t74 = t75.
      IF t75 = abap_false.
        DATA(t202) = VALUE abap_bool( ).
        DATA(t204) = |TYPE TABLE|.
        DATA(t205) = strlen( t63 ).
        DATA t206 TYPE i.
        DATA(t207) = VALUE i( ).
        DATA(t208) = VALUE string( ).
        t206 = strlen( t204 ).
        IF t206 = 0.
          t202 = abap_true.
        ELSEIF t206 <= t205.
          t207 = 0.
          t207 = t205 - t206.
          t208 = t63+t207(t206).
          IF t208 = t204.
            t202 = abap_true.
          ENDIF.
        ENDIF.
        t74 = t202.
      ENDIF.
      t73 = t74.
      IF t74 = abap_false.
        DATA(t209) = VALUE abap_bool( ).
        DATA(t211) = |TYPE X|.
        DATA(t212) = strlen( t63 ).
        DATA t213 TYPE i.
        DATA(t214) = VALUE i( ).
        DATA(t215) = VALUE string( ).
        t213 = strlen( t211 ).
        IF t213 = 0.
          t209 = abap_true.
        ELSEIF t213 <= t212.
          t214 = 0.
          t214 = t212 - t213.
          t215 = t63+t214(t213).
          IF t215 = t211.
            t209 = abap_true.
          ENDIF.
        ENDIF.
        t73 = t209.
      ENDIF.
      t72 = t73.
      IF t73 = abap_false.
        DATA(t216) = VALUE abap_bool( ).
        DATA(t218) = |TYPE XSEQUENCE|.
        DATA(t219) = strlen( t63 ).
        DATA t220 TYPE i.
        DATA(t221) = VALUE i( ).
        DATA(t222) = VALUE string( ).
        t220 = strlen( t218 ).
        IF t220 = 0.
          t216 = abap_true.
        ELSEIF t220 <= t219.
          t221 = 0.
          t221 = t219 - t220.
          t222 = t63+t221(t220).
          IF t222 = t218.
            t216 = abap_true.
          ENDIF.
        ENDIF.
        t72 = t216.
      ENDIF.
      IF t72 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t224 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t224.
      DATA t225 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t225.
      DATA t227 TYPE REF TO object.
      CLEAR t227.
      t54->load( ).
      CLEAR t227.
      READ TABLE t54->items INDEX 1 INTO t227.
      DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t228.
      CLEAR t225.
      IF t227 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t228 ?= t227.
        DATA t229 TYPE REF TO object.
        t229 = t228->as_ref( ).
        t225 ?= t229.
      ELSE.
        t225 ?= t227.
      ENDIF.
      t224 = t225->get_first_token( ).
      DATA t231 TYPE REF TO zcl_lnt_issue.
      CLEAR t231.
      DATA(t235) = VALUE string( ).
      DATA t236 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t236.
      DATA t241 TYPE string.
      DATA(t242) = |Prefer RETURNING to EXPORTING. Generic types cannot be RETUR|.
      t242 = t242 && |NING.|.
      t241 = t242.
      DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t243.
      DATA(t246) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t246 = t246 && |nABAP.md#prefer-returning-to-exporting\nhttps://docs.abapopen|.
      t246 = t246 && |checks.org/checks/44/|.
      DATA(t247) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t247->has = abap_true.
      t247->value = t246.
      t243 = t247.
      DATA t249 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t249.
      DATA t253 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t253.
      t253->load( ).
      APPEND |Styleguide| TO t253->items.
      t253->save( ).
      t253->load( ).
      APPEND |SingleFile| TO t253->items.
      t253->save( ).
      t249 = t253.
      DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t261.
      DATA(t264) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS test EXP|.
      t264 = t264 && |ORTING ev_foo TYPE i.\nENDCLASS.|.
      DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t265->has = abap_true.
      t265->value = t264.
      t261 = t265.
      DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t267.
      DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t269.
      DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t271.
      t236 = NEW zcl_lnt_irule_metadata( i_key = |prefer_returning_to_exporting| i_title = |Prefer RETURNING to EXPORTING| i_short_description = t241 i_bad_example = t261 i_good_example = t267 i_extended_information = t243 i_tags = t249 i_pragma = t269 i_pseudo_comment = t271 ).
      CREATE OBJECT t236->zlnt_view_ownkeys_b0e8086400eb.
      t236->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t273.
      t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t273 ).
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t274.
      IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t274 ).
      ENDIF.
      DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t275.
      IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t275 ).
      ENDIF.
      DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t276.
      IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t276 ).
      ENDIF.
      DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t277.
      IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t277 ).
      ENDIF.
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t278.
      IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t278 ).
      ENDIF.
      CREATE OBJECT t236->zlnt_json_ownkeys_70e5fd461788.
      t236->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t280.
      t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t280 ).
      DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t282.
      IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t282 ).
      ENDIF.
      DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t284.
      IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t284 ).
      ENDIF.
      DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t286.
      IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t286 ).
      ENDIF.
      DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t288.
      IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t288 ).
      ENDIF.
      DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t290.
      IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t290 ).
      ENDIF.
      t235 = t236->key.
      DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t291 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t293 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t293.
      t231 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t224 i_message_26cb = |Prefer RETURNING to EXPORTING| i_key = t235 i_severity = t291 i_fix = t293 ).
      t2->load( ).
      APPEND t231 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_prfr_rtrnn_t_exprt_cnf( me->g_c_i_s_r_p_r_t_e_t_pr_rt_t_ex( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_prfr_rtrnn_t_exprt_cnf( me->g_c_i_s_r_p_r_t_e_t_pr_rt_t_ex( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prfr_rtrnn_t_exprt_cnf.
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
        t1 = NEW zcl_lnt_prfr_rtrnn_t_exprt_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_p_r_t_e_t_pr_rt_t_ex( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_p_r_t_e_t_pr_rt_t_ex( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1666_aeed27749739.
  ENDMETHOD.
ENDCLASS.
