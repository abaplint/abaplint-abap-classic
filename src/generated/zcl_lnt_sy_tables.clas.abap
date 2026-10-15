* TS: src/abap/5_syntax/statements/tables.ts:9:1 Tables
CLASS zcl_lnt_sy_tables DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_tables IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t6 = t7->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t5.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = t5.
      t14 = t15.
      t13 = t14->get_first_token( ).
      t9 = t13.
    ENDIF.
    t4 = t9.
    t3 = t4.
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = t3.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    t19 = t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t17.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    t16 = t21.
    IF t16 = abap_true.
      RETURN.
    ENDIF.
    DATA t23 TYPE string.
    DATA t24 TYPE string.
    DATA t25 TYPE REF TO zcl_lnt_abstract_token.
    DATA t26 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t27) = t3.
    t26 = t27.
    t25 = t26.
    DATA t28 TYPE string.
    DATA(t29) = t25.
    t28 = t29->str.
    t24 = t28.
    t23 = t24.
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = t23.
    DATA(t32) = |*|.
    DATA(t33) = strlen( t31 ).
    DATA t34 TYPE i.
    DATA(t35) = VALUE i( ).
    DATA(t36) = VALUE string( ).
    t34 = strlen( t32 ).
    IF t34 = 0.
      t30 = abap_true.
    ELSEIF t34 <= t33.
      t35 = 0.
      t36 = t31+t35(t34).
      IF t36 = t32.
        t30 = abap_true.
      ENDIF.
    ENDIF.
    IF t30 = abap_true.
      DATA(t37) = VALUE string( ).
      DATA t38 TYPE string.
      DATA(t39) = t23.
      t38 = t39.
      DATA(t40) = VALUE string( ).
      DATA(t41) = t38.
      DATA(t42) = 1.
      DATA t43 TYPE i.
      DATA(t44) = t38.
      DATA(t45) = strlen( t44 ).
      t43 = t45.
      DATA(t46) = strlen( t41 ).
      t42 = COND i( WHEN t42 < 0 THEN 0 WHEN t42 > t46 THEN t46 ELSE t42 ).
      t43 = COND i( WHEN t43 < 0 THEN 0 WHEN t43 > t46 THEN t46 ELSE t43 ).
      IF t42 > t43.
        t46 = t42.
        t42 = t43.
        t43 = t46.
      ENDIF.
      t46 = t43 - t42.
      t40 = t41+t42(t46).
      t37 = t40.
      t23 = t37.
    ENDIF.
    DATA t47 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_ddic.
    DATA t50 TYPE REF TO zcl_lnt_ddic.
    DATA t51 TYPE REF TO zcl_lnt_current_scope.
    DATA t52 TYPE REF TO zcl_lnt_current_scope.
    DATA(t53) = t2.
    t52 = t53->scope.
    t51 = t52.
    DATA t54 TYPE REF TO zcl_lnt_ddic.
    DATA t55 TYPE REF TO zif_lnt_registry.
    DATA(t56) = t51.
    t55 = t56->reg.
    t54 = NEW zcl_lnt_ddic( i_reg_f149 = t55 ).
    t50 = t54.
    t49 = t50.
    DATA t57 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t57.
    DATA(t58) = VALUE abap_bool( ).
    DATA(t59) = t49.
    IF t59 IS INITIAL.
      t58 = abap_true.
    ENDIF.
    IF t58 = abap_true.
      DATA t60 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t60.
      t57 = t60.
    ELSE.
      DATA t61 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t61.
      DATA t62 TYPE REF TO zcl_lnt_ddic.
      DATA(t63) = t49.
      t62 = t63.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t65.
      DATA(t66) = abap_true.
      IF t66 = abap_true.
        DATA(t67) = t23.
        DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t68->has = abap_true.
        t68->value = t67.
        t65 = t68.
      ELSE.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        t65 = t69.
      ENDIF.
      t64 = t65.
      DATA t70 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t70.
      DATA(t71) = VALUE abap_bool( ).
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t73) = t64.
      t72 = t73.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      t74 = t75.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = t72.
      IF t77 IS INITIAL.
        t76 = abap_true.
      ELSEIF t77->has = abap_false.
        t76 = abap_true.
      ENDIF.
      t71 = t76.
      IF t71 = abap_true.
        DATA t78 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t79 TYPE REF TO zcl_lnt_abstract_type.
        DATA t80 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t81) = |undefined, lookupTableOrView|.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        t80 = NEW zcl_lnt_unknown_type( i_error = t81 i_qualified_name = t82 ).
        t79 = t80.
        DATA t83 TYPE REF TO zif_lnt_object.
        DATA t84 TYPE REF TO zif_lnt_object.
        CLEAR t84.
        t83 = t84.
        t78 = NEW zcl_lnt_ilookup_result( i_type_9913 = t79 i_object_19cd = t83 ).
        CREATE OBJECT t78->zlnt_view_ownkeys_b0e8086400eb.
        t78->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t85 ).
        ENDIF.
        CREATE OBJECT t78->zlnt_json_ownkeys_70e5fd461788.
        t78->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t86) = |type|.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
        ENDIF.
        t70 = t78.
      ELSE.
        DATA t88 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t88.
        DATA t89 TYPE REF TO zcl_lnt_table.
        CLEAR t89.
        DATA t90 TYPE REF TO zcl_lnt_table.
        CLEAR t90.
        DATA t91 TYPE REF TO zif_lnt_object.
        CLEAR t91.
        DATA t92 TYPE REF TO zif_lnt_registry.
        DATA(t93) = t62.
        t92 = t93->reg.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        DATA(t95) = abap_true.
        IF t95 = abap_true.
          DATA(t96) = |TABL|.
          DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t97->has = abap_true.
          t97->value = t96.
          t94 = t97.
        ELSE.
          DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t98.
          t94 = t98.
        ENDIF.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        DATA(t100) = abap_true.
        IF t100 = abap_true.
          DATA t101 TYPE string.
          DATA(t102) = t64.
          t101 = t102->value.
          DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t103->has = abap_true.
          t103->value = t101.
          t99 = t103.
        ELSE.
          DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t104.
          t99 = t104.
        ENDIF.
        t91 = t92->get_object( i_type_9913 = t94 i_name = t99 ).
        DATA t105 TYPE REF TO object.
        t105 = t91.
        t90 ?= t105.
        t89 = t90.
        DATA t106 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t106.
        DATA t107 TYPE abap_bool.
        DATA(t108) = t89.
        t107 = xsdbool( t108 IS BOUND ).
        IF t107 = abap_true.
          DATA t109 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t110 TYPE REF TO zcl_lnt_abstract_type.
          DATA t111 TYPE REF TO zcl_lnt_abstract_type.
          DATA t112 TYPE REF TO zcl_lnt_table.
          DATA(t113) = t89.
          t112 = t113.
          DATA t114 TYPE REF TO zif_lnt_registry.
          DATA(t115) = t62.
          t114 = t115->reg.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          t111 = t112->parse_type( i_reg_f149 = t114 i_data_element = t116 i_description = t117 ).
          t110 = t111.
          DATA t118 TYPE REF TO zif_lnt_object.
          DATA t119 TYPE REF TO zcl_lnt_table.
          DATA(t120) = t89.
          t119 = t120.
          t118 = t119.
          t109 = NEW zcl_lnt_ilookup_result( i_type_9913 = t110 i_object_19cd = t118 ).
          CREATE OBJECT t109->zlnt_view_ownkeys_b0e8086400eb.
          t109->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t121 ).
          ENDIF.
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t122.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t122 ).
          ENDIF.
          CREATE OBJECT t109->zlnt_json_ownkeys_70e5fd461788.
          t109->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t123) = |type|.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
          ENDIF.
          DATA(t125) = |object|.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
          ENDIF.
          t106 = t109.
        ELSE.
          DATA t127 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t127.
          DATA t128 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t128.
          DATA t129 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t129.
          DATA(t130) = t62.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t131.
          DATA(t132) = abap_true.
          IF t132 = abap_true.
            DATA t133 TYPE string.
            DATA(t134) = t64.
            t133 = t134->value.
            DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t135->has = abap_true.
            t135->value = t133.
            t131 = t135.
          ELSE.
            DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t136.
            t131 = t136.
          ENDIF.
          t129 = t130->lookup_ddls( i_name = t131 ).
          t128 = t129.
          DATA t137 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t137.
          DATA t138 TYPE abap_bool.
          DATA(t139) = t128.
          t138 = xsdbool( t139 IS BOUND ).
          IF t138 = abap_true.
            DATA t140 TYPE REF TO zcl_lnt_ilookup_result.
            DATA(t141) = t128.
            t140 = t141.
            t137 = t140.
          ELSE.
            DATA t142 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t142.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t143.
            DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t144.
            DATA(t145) = abap_true.
            IF t145 = abap_true.
              DATA t146 TYPE string.
              DATA(t147) = t64.
              t146 = t147->value.
              DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t148->has = abap_true.
              t148->value = t146.
              t144 = t148.
            ELSE.
              DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t149.
              t144 = t149.
            ENDIF.
            t143 = t144.
            DATA t150 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t150.
            DATA(t151) = VALUE abap_bool( ).
            DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t153) = t143.
            t152 = t153.
            DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t155.
            t154 = t155.
            DATA(t156) = VALUE abap_bool( ).
            DATA(t157) = t152.
            IF t157 IS INITIAL.
              t156 = abap_true.
            ELSEIF t157->has = abap_false.
              t156 = abap_true.
            ENDIF.
            t151 = t156.
            IF t151 = abap_true.
              DATA t158 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t159 TYPE REF TO zcl_lnt_abstract_type.
              DATA t160 TYPE REF TO zcl_lnt_unknown_type.
              DATA(t161) = |undefined, lookupView|.
              DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t162.
              t160 = NEW zcl_lnt_unknown_type( i_error = t161 i_qualified_name = t162 ).
              t159 = t160.
              DATA t163 TYPE REF TO zif_lnt_object.
              DATA t164 TYPE REF TO zif_lnt_object.
              CLEAR t164.
              t163 = t164.
              t158 = NEW zcl_lnt_ilookup_result( i_type_9913 = t159 i_object_19cd = t163 ).
              CREATE OBJECT t158->zlnt_view_ownkeys_b0e8086400eb.
              t158->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t165.
              IF t158->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t165 ).
              ENDIF.
              CREATE OBJECT t158->zlnt_json_ownkeys_70e5fd461788.
              t158->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t166) = |type|.
              DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t167.
              IF t158->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
              ENDIF.
              t150 = t158.
            ELSE.
              DATA t168 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t168.
              DATA t169 TYPE REF TO zcl_lnt_table.
              CLEAR t169.
              DATA t170 TYPE REF TO zcl_lnt_table.
              CLEAR t170.
              DATA t171 TYPE REF TO zif_lnt_object.
              CLEAR t171.
              DATA t172 TYPE REF TO zif_lnt_registry.
              DATA(t173) = t62.
              t172 = t173->reg.
              DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t174.
              DATA(t175) = abap_true.
              IF t175 = abap_true.
                DATA(t176) = |VIEW|.
                DATA(t177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t177->has = abap_true.
                t177->value = t176.
                t174 = t177.
              ELSE.
                DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t178.
                t174 = t178.
              ENDIF.
              DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t179.
              DATA(t180) = abap_true.
              IF t180 = abap_true.
                DATA t181 TYPE string.
                DATA(t182) = t143.
                t181 = t182->value.
                DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t183->has = abap_true.
                t183->value = t181.
                t179 = t183.
              ELSE.
                DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t184.
                t179 = t184.
              ENDIF.
              t171 = t172->get_object( i_type_9913 = t174 i_name = t179 ).
              DATA t185 TYPE REF TO object.
              t185 = t171.
              t170 ?= t185.
              t169 = t170.
              DATA t186 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t186.
              DATA t187 TYPE abap_bool.
              DATA(t188) = t169.
              t187 = xsdbool( t188 IS BOUND ).
              IF t187 = abap_true.
                DATA t189 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t190 TYPE REF TO zcl_lnt_abstract_type.
                DATA t191 TYPE REF TO zcl_lnt_abstract_type.
                DATA t192 TYPE REF TO zcl_lnt_table.
                DATA(t193) = t169.
                t192 = t193.
                DATA t194 TYPE REF TO zif_lnt_registry.
                DATA(t195) = t62.
                t194 = t195->reg.
                DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t196.
                DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t197.
                t191 = t192->parse_type( i_reg_f149 = t194 i_data_element = t196 i_description = t197 ).
                t190 = t191.
                DATA t198 TYPE REF TO zif_lnt_object.
                DATA t199 TYPE REF TO zcl_lnt_table.
                DATA(t200) = t169.
                t199 = t200.
                t198 = t199.
                t189 = NEW zcl_lnt_ilookup_result( i_type_9913 = t190 i_object_19cd = t198 ).
                CREATE OBJECT t189->zlnt_view_ownkeys_b0e8086400eb.
                t189->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t201.
                IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t201 ).
                ENDIF.
                DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t202.
                IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t202 ).
                ENDIF.
                CREATE OBJECT t189->zlnt_json_ownkeys_70e5fd461788.
                t189->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t203) = |type|.
                DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t204.
                IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
                ENDIF.
                DATA(t205) = |object|.
                DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t206.
                IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
                ENDIF.
                t186 = t189.
              ELSE.
                DATA t207 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t207.
                DATA t208 TYPE abap_bool.
                DATA t209 TYPE REF TO zif_lnt_registry.
                DATA(t210) = t62.
                t209 = t210->reg.
                DATA t211 TYPE string.
                DATA(t212) = t143.
                t211 = t212->value.
                t208 = t209->in_error_namespace( i_name = t211 ).
                IF t208 = abap_true.
                  DATA t213 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t214 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t215 TYPE REF TO zcl_lnt_unknown_type.
                  DATA t216 TYPE string.
                  DATA t217 TYPE string.
                  DATA(t218) = t143.
                  t217 = t218->value.
                  DATA(t219) = | not found, lookupView|.
                  DATA(t220) = strlen( t217 ).
                  t216 = |{ t217 }{ t219 }|.
                  DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t221.
                  t215 = NEW zcl_lnt_unknown_type( i_error = t216 i_qualified_name = t221 ).
                  t214 = t215.
                  DATA t222 TYPE REF TO zif_lnt_object.
                  DATA t223 TYPE REF TO zif_lnt_object.
                  CLEAR t223.
                  t222 = t223.
                  t213 = NEW zcl_lnt_ilookup_result( i_type_9913 = t214 i_object_19cd = t222 ).
                  CREATE OBJECT t213->zlnt_view_ownkeys_b0e8086400eb.
                  t213->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t224.
                  IF t213->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t213->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t224 ).
                  ENDIF.
                  CREATE OBJECT t213->zlnt_json_ownkeys_70e5fd461788.
                  t213->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t225) = |type|.
                  DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t226.
                  IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = t225 p1 = t226 ).
                  ENDIF.
                  t207 = t213.
                ELSE.
                  DATA t227 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t227.
                  DATA t228 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t228.
                  DATA t229 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t229.
                  DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t230.
                  DATA(t231) = abap_true.
                  IF t231 = abap_true.
                    DATA t232 TYPE string.
                    DATA(t233) = t143.
                    t232 = t233->value.
                    DATA(t234) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t234->has = abap_true.
                    t234->value = t232.
                    t230 = t234.
                  ELSE.
                    DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t235.
                    t230 = t235.
                  ENDIF.
                  DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t236.
                  t229 = zcl_lnt_void_type=>get_db65( i_voided = t230 i_qualified_name = t236 ).
                  t228 = t229.
                  DATA t237 TYPE REF TO zif_lnt_object.
                  DATA t238 TYPE REF TO zif_lnt_object.
                  CLEAR t238.
                  t237 = t238.
                  t227 = NEW zcl_lnt_ilookup_result( i_type_9913 = t228 i_object_19cd = t237 ).
                  CREATE OBJECT t227->zlnt_view_ownkeys_b0e8086400eb.
                  t227->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t239.
                  IF t227->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t227->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t239 ).
                  ENDIF.
                  CREATE OBJECT t227->zlnt_json_ownkeys_70e5fd461788.
                  t227->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t240) = |type|.
                  DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t241.
                  IF t227->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = t240 p1 = t241 ).
                  ENDIF.
                  t207 = t227.
                ENDIF.
                t186 = t207.
              ENDIF.
              t168 = t186.
              t150 = t168.
            ENDIF.
            t142 = t150.
            t137 = t142.
          ENDIF.
          t127 = t137.
          t106 = t127.
        ENDIF.
        t88 = t106.
        t70 = t88.
      ENDIF.
      t61 = t70.
      t57 = t61.
    ENDIF.
    t48 = t57.
    t47 = t48.
    DATA t242 TYPE abap_bool.
    DATA t243 TYPE REF TO zcl_lnt_ilookup_result.
    DATA(t244) = t47.
    t243 = t244.
    t242 = xsdbool( t243 IS BOUND ).
    IF t242 = abap_true.
      DATA t245 TYPE REF TO zif_lnt_ddic_references.
      DATA t246 TYPE REF TO zcl_lnt_current_scope.
      DATA t247 TYPE REF TO zcl_lnt_current_scope.
      DATA(t248) = t2.
      t247 = t248->scope.
      t246 = t247.
      DATA t249 TYPE REF TO zif_lnt_ddic_references.
      DATA t250 TYPE REF TO zif_lnt_registry.
      DATA(t251) = t246.
      t250 = t251->reg.
      t249 = t250->get_ddic_references( ).
      t245 = t249.
      DATA t252 TYPE REF TO zif_lnt_object.
      DATA t253 TYPE REF TO zcl_lnt_current_scope.
      DATA t254 TYPE REF TO zcl_lnt_current_scope.
      DATA(t255) = t2.
      t254 = t255->scope.
      t253 = t254.
      DATA t256 TYPE REF TO zif_lnt_object.
      DATA(t257) = t253.
      t256 = t257->parent_obj.
      t252 = t256.
      DATA t258 TYPE REF TO zcl_lnt_iobject_and_token.
      CLEAR t258.
      DATA(t259) = abap_true.
      IF t259 = abap_true.
        DATA t260 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t260.
        DATA t261 TYPE REF TO zif_lnt_object.
        DATA t262 TYPE REF TO zif_lnt_object.
        DATA t263 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t264) = t47.
        t263 = t264.
        t262 = t263->zlnt_view_read_sr_2de0200e6505( ).
        t261 = t262.
        DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t265.
        DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t266.
        DATA(t267) = abap_true.
        IF t267 = abap_true.
          DATA t268 TYPE string.
          DATA(t269) = t2.
          t268 = t269->filename.
          DATA(t270) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t270->has = abap_true.
          t270->value = t268.
          t266 = t270.
        ELSE.
          DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t271.
          t266 = t271.
        ENDIF.
        t265 = t266.
        DATA t272 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t272.
        DATA t273 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t273.
        DATA(t274) = abap_true.
        IF t274 = abap_true.
          DATA t275 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t276) = t3.
          t275 = t276.
          t273 = t275.
        ELSE.
          DATA t277 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t277.
          t273 = t277.
        ENDIF.
        t272 = t273.
        t260 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t261 i_token = t272 i_filename = t265 ).
        CREATE OBJECT t260->zlnt_view_ownkeys_b0e8086400eb.
        t260->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t278.
        IF t260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t278 ).
        ENDIF.
        DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t279.
        IF t260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t279 ).
        ENDIF.
        DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t280.
        IF t260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t280 ).
        ENDIF.
        CREATE OBJECT t260->zlnt_json_ownkeys_70e5fd461788.
        t260->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t281) = |object|.
        DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t282.
        IF t260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t281 p1 = t282 ).
        ENDIF.
        DATA(t283) = |filename|.
        DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t284.
        IF t260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t283 p1 = t284 ).
        ENDIF.
        DATA(t285) = |token|.
        DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t286.
        IF t260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
        ENDIF.
        t258 = t260.
      ELSE.
        DATA t287 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t287.
        t258 = t287.
      ENDIF.
      t245->add_using( i_obj_1ed0 = t252 i_using = t258 ).
      DATA t288 TYPE abap_bool.
      DATA t289 TYPE abap_bool.
      DATA t290 TYPE string.
      DATA t291 TYPE REF TO zcl_lnt_current_scope.
      DATA(t292) = t2.
      t291 = t292->scope.
      t290 = t291->get_type( ).
      DATA(t293) = |form|.
      t289 = xsdbool( t290 = t293 ).
      t288 = t289.
      IF t289 = abap_false.
        DATA t294 TYPE abap_bool.
        DATA t295 TYPE string.
        DATA t296 TYPE REF TO zcl_lnt_current_scope.
        DATA(t297) = t2.
        t296 = t297->scope.
        t295 = t296->get_type( ).
        DATA(t298) = |function|.
        t294 = xsdbool( t295 = t298 ).
        t288 = t294.
      ENDIF.
      IF t288 = abap_true.
        DATA t299 TYPE REF TO zcl_lnt_current_scope.
        DATA(t300) = t2.
        t299 = t300->scope.
        DATA t301 TYPE string.
        DATA t302 TYPE REF TO zcl_lnt_abstract_token.
        DATA t303 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t304) = t3.
        t303 = t304.
        t302 = t303.
        DATA t305 TYPE string.
        DATA(t306) = t302.
        t305 = t306->str.
        t301 = t305.
        DATA t307 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t307.
        DATA t308 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t309) = t3.
        t308 = t309.
        DATA t310 TYPE string.
        DATA(t311) = t2.
        t310 = t311->filename.
        DATA t312 TYPE REF TO zcl_lnt_abstract_type.
        DATA t313 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t314) = t47.
        t313 = t314.
        t312 = t313->zlnt_view_read_sr_9be58e2d4893( ).
        DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t315.
        DATA(t316) = abap_true.
        IF t316 = abap_true.
          DATA t317 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t318 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t319.
          t318 = t319.
          DATA(t320) = t318.
          DATA(t321) = |tables|.
          t320->load( ).
          APPEND t321 TO t320->items.
          t320->save( ).
          DATA(t322) = t318.
          t317 = t322.
          t315 = t317.
        ELSE.
          DATA t323 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t323.
          t315 = t323.
        ENDIF.
        DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t324.
        t307 = NEW zcl_lnt_typed_identifier( i_token = t308 i_filename = t310 i_type_9913 = t312 i_meta = t315 i_value = t324 ).
        t299->add_named_identifier_to_parent( i_name = t301 i_identifier = t307 ).
      ELSE.
        DATA t325 TYPE REF TO zcl_lnt_current_scope.
        DATA t326 TYPE REF TO zcl_lnt_current_scope.
        DATA(t327) = t2.
        t326 = t327->scope.
        t325 = t326.
        DATA t328 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t328.
        DATA t329 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t329.
        DATA(t330) = abap_true.
        IF t330 = abap_true.
          DATA t331 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t331.
          DATA t332 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t333) = t3.
          t332 = t333.
          DATA t334 TYPE string.
          DATA(t335) = t2.
          t334 = t335->filename.
          DATA t336 TYPE REF TO zcl_lnt_abstract_type.
          DATA t337 TYPE REF TO zcl_lnt_ilookup_result.
          DATA(t338) = t47.
          t337 = t338.
          t336 = t337->zlnt_view_read_sr_9be58e2d4893( ).
          DATA t339 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t339.
          DATA(t340) = abap_true.
          IF t340 = abap_true.
            DATA t341 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t342 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t343 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t343.
            t342 = t343.
            DATA(t344) = t342.
            DATA(t345) = |tables|.
            t344->load( ).
            APPEND t345 TO t344->items.
            t344->save( ).
            DATA(t346) = t342.
            t341 = t346.
            t339 = t341.
          ELSE.
            DATA t347 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t347.
            t339 = t347.
          ENDIF.
          DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t348.
          t331 = NEW zcl_lnt_typed_identifier( i_token = t332 i_filename = t334 i_type_9913 = t336 i_meta = t339 i_value = t348 ).
          t329 = t331.
        ELSE.
          DATA t349 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t349.
          t329 = t349.
        ENDIF.
        t328 = t329.
        DATA(t350) = VALUE abap_bool( ).
        DATA t351 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t352) = t328.
        t351 = t352.
        DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t354.
        t353 = t354.
        DATA(t355) = VALUE abap_bool( ).
        DATA(t356) = t351.
        IF t356 IS INITIAL.
          t355 = abap_true.
        ENDIF.
        t350 = t355.
        IF t350 = abap_true.
        ELSE.
          DATA(t357) = t325.
          DATA(t358) = VALUE string( ).
          DATA t359 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t360 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t361) = t328.
          t360 = t361.
          t359 = t360.
          DATA(t362) = VALUE string( ).
          DATA t363 TYPE string.
          DATA t364 TYPE string.
          DATA t365 TYPE REF TO zcl_lnt_abstract_token.
          DATA t366 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t367) = t359.
          t366 = t367->token.
          t365 = t366.
          DATA t368 TYPE string.
          DATA(t369) = t365.
          t368 = t369->str.
          t364 = t368.
          t363 = t364.
          DATA(t370) = VALUE abap_bool( ).
          DATA(t371) = VALUE string( ).
          DATA(t372) = t363.
          DATA(t373) = 0.
          DATA(t374) = 1.
          DATA(t375) = strlen( t372 ).
          IF t373 < 0.
            t373 = t373 + t375.
            IF t373 < 0.
              t373 = 0.
            ENDIF.
          ENDIF.
          IF t373 > t375 OR t374 <= 0.
            CLEAR t371.
          ELSE.
            IF t374 > t375 - t373.
              t374 = t375 - t373.
            ENDIF.
            t371 = t372+t373(t374).
          ENDIF.
          DATA(t376) = |!|.
          t370 = xsdbool( t371 = t376 ).
          IF t370 = abap_true.
            DATA(t377) = VALUE string( ).
            DATA t378 TYPE string.
            DATA(t379) = t363.
            t378 = t379.
            DATA(t380) = VALUE string( ).
            DATA(t381) = t378.
            DATA(t382) = 1.
            DATA t383 TYPE i.
            DATA(t384) = t378.
            DATA(t385) = strlen( t384 ).
            t383 = t385.
            DATA(t386) = strlen( t381 ).
            IF t382 < 0.
              t382 = t382 + t386.
              IF t382 < 0.
                t382 = 0.
              ENDIF.
            ENDIF.
            IF t382 > t386 OR t383 <= 0.
              CLEAR t380.
            ELSE.
              IF t383 > t386 - t382.
                t383 = t386 - t382.
              ENDIF.
              t380 = t381+t382(t383).
            ENDIF.
            t377 = t380.
            t363 = t377.
          ENDIF.
          DATA(t387) = t363.
          t362 = t387.
          t358 = t362.
          DATA t388 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t389) = t328.
          t388 = t389.
          t357->add_named_identifier( i_name = t358 i_identifier = t388 ).
        ENDIF.
      ENDIF.
      RETURN.
    ENDIF.
    DATA t390 TYPE REF TO zcl_lnt_current_scope.
    DATA t391 TYPE REF TO zcl_lnt_current_scope.
    DATA(t392) = t2.
    t391 = t392->scope.
    t390 = t391.
    DATA t393 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t393.
    DATA t394 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t394.
    DATA(t395) = abap_true.
    IF t395 = abap_true.
      DATA t396 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t397 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t398) = t3.
      t397 = t398.
      DATA t399 TYPE string.
      DATA(t400) = t2.
      t399 = t400->filename.
      DATA t401 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t402) = |Tables, fallback|.
      DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t403.
      t401 = NEW zcl_lnt_unknown_type( i_error = t402 i_qualified_name = t403 ).
      DATA t404 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t404.
      DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t405.
      t396 = NEW zcl_lnt_typed_identifier( i_token = t397 i_filename = t399 i_type_9913 = t401 i_meta = t404 i_value = t405 ).
      t394 = t396.
    ELSE.
      DATA t406 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t406.
      t394 = t406.
    ENDIF.
    t393 = t394.
    DATA(t407) = VALUE abap_bool( ).
    DATA t408 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t409) = t393.
    t408 = t409.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t411.
    t410 = t411.
    DATA(t412) = VALUE abap_bool( ).
    DATA(t413) = t408.
    IF t413 IS INITIAL.
      t412 = abap_true.
    ENDIF.
    t407 = t412.
    IF t407 = abap_true.
    ELSE.
      DATA(t414) = t390.
      DATA(t415) = VALUE string( ).
      DATA t416 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t417 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t418) = t393.
      t417 = t418.
      t416 = t417.
      DATA(t419) = VALUE string( ).
      DATA t420 TYPE string.
      DATA t421 TYPE string.
      DATA t422 TYPE REF TO zcl_lnt_abstract_token.
      DATA t423 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t424) = t416.
      t423 = t424->token.
      t422 = t423.
      DATA t425 TYPE string.
      DATA(t426) = t422.
      t425 = t426->str.
      t421 = t425.
      t420 = t421.
      DATA(t427) = VALUE abap_bool( ).
      DATA(t428) = VALUE string( ).
      DATA(t429) = t420.
      DATA(t430) = 0.
      DATA(t431) = 1.
      DATA(t432) = strlen( t429 ).
      IF t430 < 0.
        t430 = t430 + t432.
        IF t430 < 0.
          t430 = 0.
        ENDIF.
      ENDIF.
      IF t430 > t432 OR t431 <= 0.
        CLEAR t428.
      ELSE.
        IF t431 > t432 - t430.
          t431 = t432 - t430.
        ENDIF.
        t428 = t429+t430(t431).
      ENDIF.
      DATA(t433) = |!|.
      t427 = xsdbool( t428 = t433 ).
      IF t427 = abap_true.
        DATA(t434) = VALUE string( ).
        DATA t435 TYPE string.
        DATA(t436) = t420.
        t435 = t436.
        DATA(t437) = VALUE string( ).
        DATA(t438) = t435.
        DATA(t439) = 1.
        DATA t440 TYPE i.
        DATA(t441) = t435.
        DATA(t442) = strlen( t441 ).
        t440 = t442.
        DATA(t443) = strlen( t438 ).
        IF t439 < 0.
          t439 = t439 + t443.
          IF t439 < 0.
            t439 = 0.
          ENDIF.
        ENDIF.
        IF t439 > t443 OR t440 <= 0.
          CLEAR t437.
        ELSE.
          IF t440 > t443 - t439.
            t440 = t443 - t439.
          ENDIF.
          t437 = t438+t439(t440).
        ENDIF.
        t434 = t437.
        t420 = t434.
      ENDIF.
      DATA(t444) = t420.
      t419 = t444.
      t415 = t419.
      DATA t445 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t446) = t393.
      t445 = t446.
      t414->add_named_identifier( i_name = t415 i_identifier = t445 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d975_b3b62c0f7275.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
