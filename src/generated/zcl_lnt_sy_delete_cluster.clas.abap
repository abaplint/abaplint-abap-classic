* TS: src/abap/5_syntax/statements/delete_cluster.ts:7:1 DeleteCluster
CLASS zcl_lnt_sy_delete_cluster DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_delete_cluster IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA(t14) = t6.
        t12 = t14.
      ELSE.
        DATA t15 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t15.
        t12 = t15.
      ENDIF.
      DATA(t16) = t2.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t16 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    DATA(t23) = t1.
    DATA(t24) = |DATABASE|.
    t22 = t23->find_expression_after_token( i_text = t24 ).
    t21 = t22.
    DATA t25 TYPE abap_bool.
    DATA(t26) = t21.
    t25 = xsdbool( t26 IS BOUND ).
    IF t25 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_ddic.
      DATA t30 TYPE REF TO zcl_lnt_ddic.
      DATA t31 TYPE REF TO zcl_lnt_current_scope.
      DATA t32 TYPE REF TO zcl_lnt_current_scope.
      DATA(t33) = t2.
      t32 = t33->scope.
      t31 = t32.
      DATA t34 TYPE REF TO zcl_lnt_ddic.
      DATA t35 TYPE REF TO zif_lnt_registry.
      DATA(t36) = t31.
      t35 = t36->reg.
      t34 = NEW zcl_lnt_ddic( i_reg_f149 = t35 ).
      t30 = t34.
      t29 = t30.
      DATA t37 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t37.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = t29.
      IF t39 IS INITIAL.
        t38 = abap_true.
      ENDIF.
      IF t38 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t40.
        t37 = t40.
      ELSE.
        DATA t41 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t41.
        DATA t42 TYPE REF TO zcl_lnt_ddic.
        DATA(t43) = t29.
        t42 = t43.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        DATA(t46) = abap_true.
        IF t46 = abap_true.
          DATA t47 TYPE string.
          DATA t48 TYPE REF TO zcl_lnt_expression_node.
          DATA(t49) = t21.
          t48 = t49.
          t47 = t48->concat_tokens( ).
          DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t50->has = abap_true.
          t50->value = t47.
          t45 = t50.
        ELSE.
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t51.
          t45 = t51.
        ENDIF.
        t44 = t45.
        DATA t52 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t52.
        DATA(t53) = VALUE abap_bool( ).
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t55) = t44.
        t54 = t55.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t57.
        t56 = t57.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = t54.
        IF t59 IS INITIAL.
          t58 = abap_true.
        ELSEIF t59->has = abap_false.
          t58 = abap_true.
        ENDIF.
        t53 = t58.
        IF t53 = abap_true.
          DATA t60 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t61 TYPE REF TO zcl_lnt_abstract_type.
          DATA t62 TYPE REF TO zcl_lnt_unknown_type.
          DATA(t63) = |undefined, lookupTableOrView|.
          DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t64.
          t62 = NEW zcl_lnt_unknown_type( i_error = t63 i_qualified_name = t64 ).
          t61 = t62.
          DATA t65 TYPE REF TO zif_lnt_object.
          DATA t66 TYPE REF TO zif_lnt_object.
          CLEAR t66.
          t65 = t66.
          t60 = NEW zcl_lnt_ilookup_result( i_type_9913 = t61 i_object_19cd = t65 ).
          CREATE OBJECT t60->zlnt_view_ownkeys_b0e8086400eb.
          t60->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t67.
          IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t67 ).
          ENDIF.
          CREATE OBJECT t60->zlnt_json_ownkeys_70e5fd461788.
          t60->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t68) = |type|.
          DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t69.
          IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t68 p1 = t69 ).
          ENDIF.
          t52 = t60.
        ELSE.
          DATA t70 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t70.
          DATA t71 TYPE REF TO zcl_lnt_table.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_table.
          CLEAR t72.
          DATA t73 TYPE REF TO zif_lnt_object.
          CLEAR t73.
          DATA t74 TYPE REF TO zif_lnt_registry.
          DATA(t75) = t42.
          t74 = t75->reg.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          DATA(t77) = abap_true.
          IF t77 = abap_true.
            DATA(t78) = |TABL|.
            DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t79->has = abap_true.
            t79->value = t78.
            t76 = t79.
          ELSE.
            DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t80.
            t76 = t80.
          ENDIF.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          DATA(t82) = abap_true.
          IF t82 = abap_true.
            DATA t83 TYPE string.
            DATA(t84) = t44.
            t83 = t84->value.
            DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t85->has = abap_true.
            t85->value = t83.
            t81 = t85.
          ELSE.
            DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t86.
            t81 = t86.
          ENDIF.
          t73 = t74->get_object( i_type_9913 = t76 i_name = t81 ).
          DATA t87 TYPE REF TO object.
          t87 = t73.
          t72 ?= t87.
          t71 = t72.
          DATA t88 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t88.
          DATA t89 TYPE abap_bool.
          DATA(t90) = t71.
          t89 = xsdbool( t90 IS BOUND ).
          IF t89 = abap_true.
            DATA t91 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t92 TYPE REF TO zcl_lnt_abstract_type.
            DATA t93 TYPE REF TO zcl_lnt_abstract_type.
            DATA t94 TYPE REF TO zcl_lnt_table.
            DATA(t95) = t71.
            t94 = t95.
            DATA t96 TYPE REF TO zif_lnt_registry.
            DATA(t97) = t42.
            t96 = t97->reg.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t98.
            DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t99.
            t93 = t94->parse_type( i_reg_f149 = t96 i_data_element = t98 i_description = t99 ).
            t92 = t93.
            DATA t100 TYPE REF TO zif_lnt_object.
            DATA t101 TYPE REF TO zcl_lnt_table.
            DATA(t102) = t71.
            t101 = t102.
            t100 = t101.
            t91 = NEW zcl_lnt_ilookup_result( i_type_9913 = t92 i_object_19cd = t100 ).
            CREATE OBJECT t91->zlnt_view_ownkeys_b0e8086400eb.
            t91->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t103.
            IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t103 ).
            ENDIF.
            DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t104.
            IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t104 ).
            ENDIF.
            CREATE OBJECT t91->zlnt_json_ownkeys_70e5fd461788.
            t91->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t105) = |type|.
            DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t106.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
            ENDIF.
            DATA(t107) = |object|.
            DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t108.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
            ENDIF.
            t88 = t91.
          ELSE.
            DATA t109 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t109.
            DATA t110 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t110.
            DATA t111 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t111.
            DATA(t112) = t42.
            DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t113.
            DATA(t114) = abap_true.
            IF t114 = abap_true.
              DATA t115 TYPE string.
              DATA(t116) = t44.
              t115 = t116->value.
              DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t117->has = abap_true.
              t117->value = t115.
              t113 = t117.
            ELSE.
              DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t118.
              t113 = t118.
            ENDIF.
            t111 = t112->lookup_ddls( i_name = t113 ).
            t110 = t111.
            DATA t119 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t119.
            DATA t120 TYPE abap_bool.
            DATA(t121) = t110.
            t120 = xsdbool( t121 IS BOUND ).
            IF t120 = abap_true.
              DATA t122 TYPE REF TO zcl_lnt_ilookup_result.
              DATA(t123) = t110.
              t122 = t123.
              t119 = t122.
            ELSE.
              DATA t124 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t124.
              DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t125.
              DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t126.
              DATA(t127) = abap_true.
              IF t127 = abap_true.
                DATA t128 TYPE string.
                DATA(t129) = t44.
                t128 = t129->value.
                DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t130->has = abap_true.
                t130->value = t128.
                t126 = t130.
              ELSE.
                DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t131.
                t126 = t131.
              ENDIF.
              t125 = t126.
              DATA t132 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t132.
              DATA(t133) = VALUE abap_bool( ).
              DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t135) = t125.
              t134 = t135.
              DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t137.
              t136 = t137.
              DATA(t138) = VALUE abap_bool( ).
              DATA(t139) = t134.
              IF t139 IS INITIAL.
                t138 = abap_true.
              ELSEIF t139->has = abap_false.
                t138 = abap_true.
              ENDIF.
              t133 = t138.
              IF t133 = abap_true.
                DATA t140 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t141 TYPE REF TO zcl_lnt_abstract_type.
                DATA t142 TYPE REF TO zcl_lnt_unknown_type.
                DATA(t143) = |undefined, lookupView|.
                DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t144.
                t142 = NEW zcl_lnt_unknown_type( i_error = t143 i_qualified_name = t144 ).
                t141 = t142.
                DATA t145 TYPE REF TO zif_lnt_object.
                DATA t146 TYPE REF TO zif_lnt_object.
                CLEAR t146.
                t145 = t146.
                t140 = NEW zcl_lnt_ilookup_result( i_type_9913 = t141 i_object_19cd = t145 ).
                CREATE OBJECT t140->zlnt_view_ownkeys_b0e8086400eb.
                t140->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t147.
                IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t147 ).
                ENDIF.
                CREATE OBJECT t140->zlnt_json_ownkeys_70e5fd461788.
                t140->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t148) = |type|.
                DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t149.
                IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
                ENDIF.
                t132 = t140.
              ELSE.
                DATA t150 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t150.
                DATA t151 TYPE REF TO zcl_lnt_table.
                CLEAR t151.
                DATA t152 TYPE REF TO zcl_lnt_table.
                CLEAR t152.
                DATA t153 TYPE REF TO zif_lnt_object.
                CLEAR t153.
                DATA t154 TYPE REF TO zif_lnt_registry.
                DATA(t155) = t42.
                t154 = t155->reg.
                DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t156.
                DATA(t157) = abap_true.
                IF t157 = abap_true.
                  DATA(t158) = |VIEW|.
                  DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t159->has = abap_true.
                  t159->value = t158.
                  t156 = t159.
                ELSE.
                  DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t160.
                  t156 = t160.
                ENDIF.
                DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t161.
                DATA(t162) = abap_true.
                IF t162 = abap_true.
                  DATA t163 TYPE string.
                  DATA(t164) = t125.
                  t163 = t164->value.
                  DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t165->has = abap_true.
                  t165->value = t163.
                  t161 = t165.
                ELSE.
                  DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t166.
                  t161 = t166.
                ENDIF.
                t153 = t154->get_object( i_type_9913 = t156 i_name = t161 ).
                DATA t167 TYPE REF TO object.
                t167 = t153.
                t152 ?= t167.
                t151 = t152.
                DATA t168 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t168.
                DATA t169 TYPE abap_bool.
                DATA(t170) = t151.
                t169 = xsdbool( t170 IS BOUND ).
                IF t169 = abap_true.
                  DATA t171 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t172 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t173 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t174 TYPE REF TO zcl_lnt_table.
                  DATA(t175) = t151.
                  t174 = t175.
                  DATA t176 TYPE REF TO zif_lnt_registry.
                  DATA(t177) = t42.
                  t176 = t177->reg.
                  DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t178.
                  DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t179.
                  t173 = t174->parse_type( i_reg_f149 = t176 i_data_element = t178 i_description = t179 ).
                  t172 = t173.
                  DATA t180 TYPE REF TO zif_lnt_object.
                  DATA t181 TYPE REF TO zcl_lnt_table.
                  DATA(t182) = t151.
                  t181 = t182.
                  t180 = t181.
                  t171 = NEW zcl_lnt_ilookup_result( i_type_9913 = t172 i_object_19cd = t180 ).
                  CREATE OBJECT t171->zlnt_view_ownkeys_b0e8086400eb.
                  t171->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t183.
                  IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t183 ).
                  ENDIF.
                  DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t184.
                  IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t184 ).
                  ENDIF.
                  CREATE OBJECT t171->zlnt_json_ownkeys_70e5fd461788.
                  t171->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t185) = |type|.
                  DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t186.
                  IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
                  ENDIF.
                  DATA(t187) = |object|.
                  DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t188.
                  IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
                  ENDIF.
                  t168 = t171.
                ELSE.
                  DATA t189 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t189.
                  DATA t190 TYPE abap_bool.
                  DATA t191 TYPE REF TO zif_lnt_registry.
                  DATA(t192) = t42.
                  t191 = t192->reg.
                  DATA t193 TYPE string.
                  DATA(t194) = t125.
                  t193 = t194->value.
                  t190 = t191->in_error_namespace( i_name = t193 ).
                  IF t190 = abap_true.
                    DATA t195 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t196 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t197 TYPE REF TO zcl_lnt_unknown_type.
                    DATA t198 TYPE string.
                    DATA t199 TYPE string.
                    DATA(t200) = t125.
                    t199 = t200->value.
                    DATA(t201) = | not found, lookupView|.
                    DATA(t202) = strlen( t199 ).
                    t198 = |{ t199 }{ t201 }|.
                    DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t203.
                    t197 = NEW zcl_lnt_unknown_type( i_error = t198 i_qualified_name = t203 ).
                    t196 = t197.
                    DATA t204 TYPE REF TO zif_lnt_object.
                    DATA t205 TYPE REF TO zif_lnt_object.
                    CLEAR t205.
                    t204 = t205.
                    t195 = NEW zcl_lnt_ilookup_result( i_type_9913 = t196 i_object_19cd = t204 ).
                    CREATE OBJECT t195->zlnt_view_ownkeys_b0e8086400eb.
                    t195->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t206.
                    IF t195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t206 ).
                    ENDIF.
                    CREATE OBJECT t195->zlnt_json_ownkeys_70e5fd461788.
                    t195->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t207) = |type|.
                    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t208.
                    IF t195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
                    ENDIF.
                    t189 = t195.
                  ELSE.
                    DATA t209 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t209.
                    DATA t210 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t210.
                    DATA t211 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t211.
                    DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t212.
                    DATA(t213) = abap_true.
                    IF t213 = abap_true.
                      DATA t214 TYPE string.
                      DATA(t215) = t125.
                      t214 = t215->value.
                      DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t216->has = abap_true.
                      t216->value = t214.
                      t212 = t216.
                    ELSE.
                      DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t217.
                      t212 = t217.
                    ENDIF.
                    DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t218.
                    t211 = zcl_lnt_void_type=>get_db65( i_voided = t212 i_qualified_name = t218 ).
                    t210 = t211.
                    DATA t219 TYPE REF TO zif_lnt_object.
                    DATA t220 TYPE REF TO zif_lnt_object.
                    CLEAR t220.
                    t219 = t220.
                    t209 = NEW zcl_lnt_ilookup_result( i_type_9913 = t210 i_object_19cd = t219 ).
                    CREATE OBJECT t209->zlnt_view_ownkeys_b0e8086400eb.
                    t209->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t221.
                    IF t209->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t209->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t221 ).
                    ENDIF.
                    CREATE OBJECT t209->zlnt_json_ownkeys_70e5fd461788.
                    t209->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t222) = |type|.
                    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t223.
                    IF t209->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t209->zlnt_json_ownkeys_70e5fd461788->put( p0 = t222 p1 = t223 ).
                    ENDIF.
                    t189 = t209.
                  ENDIF.
                  t168 = t189.
                ENDIF.
                t150 = t168.
                t132 = t150.
              ENDIF.
              t124 = t132.
              t119 = t124.
            ENDIF.
            t109 = t119.
            t88 = t109.
          ENDIF.
          t70 = t88.
          t52 = t70.
        ENDIF.
        t41 = t52.
        t37 = t41.
      ENDIF.
      t28 = t37.
      t27 = t28.
      DATA t224 TYPE abap_bool.
      DATA t225 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t226) = t27.
      t225 = t226.
      t224 = xsdbool( t225 IS BOUND ).
      IF t224 = abap_true.
        DATA t227 TYPE REF TO zif_lnt_ddic_references.
        DATA t228 TYPE REF TO zcl_lnt_current_scope.
        DATA t229 TYPE REF TO zcl_lnt_current_scope.
        DATA(t230) = t2.
        t229 = t230->scope.
        t228 = t229.
        DATA t231 TYPE REF TO zif_lnt_ddic_references.
        DATA t232 TYPE REF TO zif_lnt_registry.
        DATA(t233) = t228.
        t232 = t233->reg.
        t231 = t232->get_ddic_references( ).
        t227 = t231.
        DATA t234 TYPE REF TO zif_lnt_object.
        DATA t235 TYPE REF TO zcl_lnt_current_scope.
        DATA t236 TYPE REF TO zcl_lnt_current_scope.
        DATA(t237) = t2.
        t236 = t237->scope.
        t235 = t236.
        DATA t238 TYPE REF TO zif_lnt_object.
        DATA(t239) = t235.
        t238 = t239->parent_obj.
        t234 = t238.
        DATA t240 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t240.
        DATA(t241) = abap_true.
        IF t241 = abap_true.
          DATA t242 TYPE REF TO zcl_lnt_iobject_and_token.
          DATA t243 TYPE REF TO zif_lnt_object.
          DATA t244 TYPE REF TO zif_lnt_object.
          DATA t245 TYPE REF TO zcl_lnt_ilookup_result.
          DATA(t246) = t27.
          t245 = t246.
          t244 = t245->zlnt_view_read_sr_2de0200e6505( ).
          t243 = t244.
          DATA t247 TYPE REF TO zcl_lnt_abstract_token.
          DATA t248 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t248.
          t247 = t248.
          DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t250.
          t249 = t250.
          t242 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t243 i_token = t247 i_filename = t249 ).
          CREATE OBJECT t242->zlnt_view_ownkeys_b0e8086400eb.
          t242->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t251.
          IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t251 ).
          ENDIF.
          CREATE OBJECT t242->zlnt_json_ownkeys_70e5fd461788.
          t242->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t252) = |object|.
          DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t253.
          IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = t252 p1 = t253 ).
          ENDIF.
          t240 = t242.
        ELSE.
          DATA t254 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t254.
          t240 = t254.
        ENDIF.
        t227->add_using( i_obj_1ed0 = t234 i_using = t240 ).
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d887_f705e396b8f6.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
