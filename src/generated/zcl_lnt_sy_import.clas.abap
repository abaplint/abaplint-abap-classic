* TS: src/abap/5_syntax/statements/import.ts:8:1 Import
CLASS zcl_lnt_sy_import DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_import IMPLEMENTATION.
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
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t1.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t21 = t22->find_direct_expressions( i_type_9913 = t23 ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t24.
    DATA t25 TYPE REF TO object.
    CLEAR t25.
    DATA(t26) = VALUE i( ).
    DO.
      t21->load( ).
      IF t26 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t21->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t30) = t24.
      DATA(t31) = t2.
      t29 = zcl_lnt_sy_target=>run_syntax( i_node = t30 i_input_967e = t31 ).
    ENDDO.
    DATA t32 TYPE REF TO zcl_lnt_expression_node.
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    DATA(t34) = t1.
    DATA(t35) = |DATABASE|.
    t33 = t34->find_expression_after_token( i_text = t35 ).
    t32 = t33.
    DATA t36 TYPE abap_bool.
    DATA(t37) = t32.
    t36 = xsdbool( t37 IS BOUND ).
    IF t36 = abap_true.
      DATA t38 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t39.
      DATA t40 TYPE REF TO zcl_lnt_ddic.
      DATA t41 TYPE REF TO zcl_lnt_ddic.
      DATA t42 TYPE REF TO zcl_lnt_current_scope.
      DATA t43 TYPE REF TO zcl_lnt_current_scope.
      DATA(t44) = t2.
      t43 = t44->scope.
      t42 = t43.
      DATA t45 TYPE REF TO zcl_lnt_ddic.
      DATA t46 TYPE REF TO zif_lnt_registry.
      DATA(t47) = t42.
      t46 = t47->reg.
      t45 = NEW zcl_lnt_ddic( i_reg_f149 = t46 ).
      t41 = t45.
      t40 = t41.
      DATA t48 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t40.
      IF t50 IS INITIAL.
        t49 = abap_true.
      ENDIF.
      IF t49 = abap_true.
        DATA t51 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t51.
        t48 = t51.
      ELSE.
        DATA t52 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_ddic.
        DATA(t54) = t40.
        t53 = t54.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA t58 TYPE string.
          DATA t59 TYPE REF TO zcl_lnt_expression_node.
          DATA(t60) = t32.
          t59 = t60.
          t58 = t59->concat_tokens( ).
          DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t61->has = abap_true.
          t61->value = t58.
          t56 = t61.
        ELSE.
          DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t62.
          t56 = t62.
        ENDIF.
        t55 = t56.
        DATA t63 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t63.
        DATA(t64) = VALUE abap_bool( ).
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t66) = t55.
        t65 = t66.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        t67 = t68.
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = t65.
        IF t70 IS INITIAL.
          t69 = abap_true.
        ELSEIF t70->has = abap_false.
          t69 = abap_true.
        ENDIF.
        t64 = t69.
        IF t64 = abap_true.
          DATA t71 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t72 TYPE REF TO zcl_lnt_abstract_type.
          DATA t73 TYPE REF TO zcl_lnt_unknown_type.
          DATA(t74) = |undefined, lookupTableOrView|.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          t73 = NEW zcl_lnt_unknown_type( i_error = t74 i_qualified_name = t75 ).
          t72 = t73.
          DATA t76 TYPE REF TO zif_lnt_object.
          DATA t77 TYPE REF TO zif_lnt_object.
          CLEAR t77.
          t76 = t77.
          t71 = NEW zcl_lnt_ilookup_result( i_type_9913 = t72 i_object_19cd = t76 ).
          CREATE OBJECT t71->zlnt_view_ownkeys_b0e8086400eb.
          t71->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t78.
          IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t78 ).
          ENDIF.
          CREATE OBJECT t71->zlnt_json_ownkeys_70e5fd461788.
          t71->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t79) = |type|.
          DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t80.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
          ENDIF.
          t63 = t71.
        ELSE.
          DATA t81 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t81.
          DATA t82 TYPE REF TO zcl_lnt_table.
          CLEAR t82.
          DATA t83 TYPE REF TO zcl_lnt_table.
          CLEAR t83.
          DATA t84 TYPE REF TO zif_lnt_object.
          CLEAR t84.
          DATA t85 TYPE REF TO zif_lnt_registry.
          DATA(t86) = t53.
          t85 = t86->reg.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          DATA(t88) = abap_true.
          IF t88 = abap_true.
            DATA(t89) = |TABL|.
            DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t90->has = abap_true.
            t90->value = t89.
            t87 = t90.
          ELSE.
            DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t91.
            t87 = t91.
          ENDIF.
          DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t92.
          DATA(t93) = abap_true.
          IF t93 = abap_true.
            DATA t94 TYPE string.
            DATA(t95) = t55.
            t94 = t95->value.
            DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t96->has = abap_true.
            t96->value = t94.
            t92 = t96.
          ELSE.
            DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t97.
            t92 = t97.
          ENDIF.
          t84 = t85->get_object( i_type_9913 = t87 i_name = t92 ).
          DATA t98 TYPE REF TO object.
          t98 = t84.
          t83 ?= t98.
          t82 = t83.
          DATA t99 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t99.
          DATA t100 TYPE abap_bool.
          DATA(t101) = t82.
          t100 = xsdbool( t101 IS BOUND ).
          IF t100 = abap_true.
            DATA t102 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t103 TYPE REF TO zcl_lnt_abstract_type.
            DATA t104 TYPE REF TO zcl_lnt_abstract_type.
            DATA t105 TYPE REF TO zcl_lnt_table.
            DATA(t106) = t82.
            t105 = t106.
            DATA t107 TYPE REF TO zif_lnt_registry.
            DATA(t108) = t53.
            t107 = t108->reg.
            DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t109.
            DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t110.
            t104 = t105->parse_type( i_reg_f149 = t107 i_data_element = t109 i_description = t110 ).
            t103 = t104.
            DATA t111 TYPE REF TO zif_lnt_object.
            DATA t112 TYPE REF TO zcl_lnt_table.
            DATA(t113) = t82.
            t112 = t113.
            t111 = t112.
            t102 = NEW zcl_lnt_ilookup_result( i_type_9913 = t103 i_object_19cd = t111 ).
            CREATE OBJECT t102->zlnt_view_ownkeys_b0e8086400eb.
            t102->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t114.
            IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t114 ).
            ENDIF.
            DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t115.
            IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t115 ).
            ENDIF.
            CREATE OBJECT t102->zlnt_json_ownkeys_70e5fd461788.
            t102->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t116) = |type|.
            DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t117.
            IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
            ENDIF.
            DATA(t118) = |object|.
            DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t119.
            IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
            ENDIF.
            t99 = t102.
          ELSE.
            DATA t120 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t120.
            DATA t121 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t121.
            DATA t122 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t122.
            DATA(t123) = t53.
            DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t124.
            DATA(t125) = abap_true.
            IF t125 = abap_true.
              DATA t126 TYPE string.
              DATA(t127) = t55.
              t126 = t127->value.
              DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t128->has = abap_true.
              t128->value = t126.
              t124 = t128.
            ELSE.
              DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t129.
              t124 = t129.
            ENDIF.
            t122 = t123->lookup_ddls( i_name = t124 ).
            t121 = t122.
            DATA t130 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t130.
            DATA t131 TYPE abap_bool.
            DATA(t132) = t121.
            t131 = xsdbool( t132 IS BOUND ).
            IF t131 = abap_true.
              DATA t133 TYPE REF TO zcl_lnt_ilookup_result.
              DATA(t134) = t121.
              t133 = t134.
              t130 = t133.
            ELSE.
              DATA t135 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t135.
              DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t136.
              DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t137.
              DATA(t138) = abap_true.
              IF t138 = abap_true.
                DATA t139 TYPE string.
                DATA(t140) = t55.
                t139 = t140->value.
                DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t141->has = abap_true.
                t141->value = t139.
                t137 = t141.
              ELSE.
                DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t142.
                t137 = t142.
              ENDIF.
              t136 = t137.
              DATA t143 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t143.
              DATA(t144) = VALUE abap_bool( ).
              DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t146) = t136.
              t145 = t146.
              DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t148.
              t147 = t148.
              DATA(t149) = VALUE abap_bool( ).
              DATA(t150) = t145.
              IF t150 IS INITIAL.
                t149 = abap_true.
              ELSEIF t150->has = abap_false.
                t149 = abap_true.
              ENDIF.
              t144 = t149.
              IF t144 = abap_true.
                DATA t151 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t152 TYPE REF TO zcl_lnt_abstract_type.
                DATA t153 TYPE REF TO zcl_lnt_unknown_type.
                DATA(t154) = |undefined, lookupView|.
                DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t155.
                t153 = NEW zcl_lnt_unknown_type( i_error = t154 i_qualified_name = t155 ).
                t152 = t153.
                DATA t156 TYPE REF TO zif_lnt_object.
                DATA t157 TYPE REF TO zif_lnt_object.
                CLEAR t157.
                t156 = t157.
                t151 = NEW zcl_lnt_ilookup_result( i_type_9913 = t152 i_object_19cd = t156 ).
                CREATE OBJECT t151->zlnt_view_ownkeys_b0e8086400eb.
                t151->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t158.
                IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t158 ).
                ENDIF.
                CREATE OBJECT t151->zlnt_json_ownkeys_70e5fd461788.
                t151->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t159) = |type|.
                DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t160.
                IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
                ENDIF.
                t143 = t151.
              ELSE.
                DATA t161 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t161.
                DATA t162 TYPE REF TO zcl_lnt_table.
                CLEAR t162.
                DATA t163 TYPE REF TO zcl_lnt_table.
                CLEAR t163.
                DATA t164 TYPE REF TO zif_lnt_object.
                CLEAR t164.
                DATA t165 TYPE REF TO zif_lnt_registry.
                DATA(t166) = t53.
                t165 = t166->reg.
                DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t167.
                DATA(t168) = abap_true.
                IF t168 = abap_true.
                  DATA(t169) = |VIEW|.
                  DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t170->has = abap_true.
                  t170->value = t169.
                  t167 = t170.
                ELSE.
                  DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t171.
                  t167 = t171.
                ENDIF.
                DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t172.
                DATA(t173) = abap_true.
                IF t173 = abap_true.
                  DATA t174 TYPE string.
                  DATA(t175) = t136.
                  t174 = t175->value.
                  DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t176->has = abap_true.
                  t176->value = t174.
                  t172 = t176.
                ELSE.
                  DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t177.
                  t172 = t177.
                ENDIF.
                t164 = t165->get_object( i_type_9913 = t167 i_name = t172 ).
                DATA t178 TYPE REF TO object.
                t178 = t164.
                t163 ?= t178.
                t162 = t163.
                DATA t179 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t179.
                DATA t180 TYPE abap_bool.
                DATA(t181) = t162.
                t180 = xsdbool( t181 IS BOUND ).
                IF t180 = abap_true.
                  DATA t182 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t183 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t184 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t185 TYPE REF TO zcl_lnt_table.
                  DATA(t186) = t162.
                  t185 = t186.
                  DATA t187 TYPE REF TO zif_lnt_registry.
                  DATA(t188) = t53.
                  t187 = t188->reg.
                  DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t189.
                  DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t190.
                  t184 = t185->parse_type( i_reg_f149 = t187 i_data_element = t189 i_description = t190 ).
                  t183 = t184.
                  DATA t191 TYPE REF TO zif_lnt_object.
                  DATA t192 TYPE REF TO zcl_lnt_table.
                  DATA(t193) = t162.
                  t192 = t193.
                  t191 = t192.
                  t182 = NEW zcl_lnt_ilookup_result( i_type_9913 = t183 i_object_19cd = t191 ).
                  CREATE OBJECT t182->zlnt_view_ownkeys_b0e8086400eb.
                  t182->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t194.
                  IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t194 ).
                  ENDIF.
                  DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t195.
                  IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t195 ).
                  ENDIF.
                  CREATE OBJECT t182->zlnt_json_ownkeys_70e5fd461788.
                  t182->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t196) = |type|.
                  DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t197.
                  IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t196 p1 = t197 ).
                  ENDIF.
                  DATA(t198) = |object|.
                  DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t199.
                  IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t198 p1 = t199 ).
                  ENDIF.
                  t179 = t182.
                ELSE.
                  DATA t200 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t200.
                  DATA t201 TYPE abap_bool.
                  DATA t202 TYPE REF TO zif_lnt_registry.
                  DATA(t203) = t53.
                  t202 = t203->reg.
                  DATA t204 TYPE string.
                  DATA(t205) = t136.
                  t204 = t205->value.
                  t201 = t202->in_error_namespace( i_name = t204 ).
                  IF t201 = abap_true.
                    DATA t206 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t207 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t208 TYPE REF TO zcl_lnt_unknown_type.
                    DATA t209 TYPE string.
                    DATA t210 TYPE string.
                    DATA(t211) = t136.
                    t210 = t211->value.
                    DATA(t212) = | not found, lookupView|.
                    DATA(t213) = strlen( t210 ).
                    t209 = |{ t210 }{ t212 }|.
                    DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t214.
                    t208 = NEW zcl_lnt_unknown_type( i_error = t209 i_qualified_name = t214 ).
                    t207 = t208.
                    DATA t215 TYPE REF TO zif_lnt_object.
                    DATA t216 TYPE REF TO zif_lnt_object.
                    CLEAR t216.
                    t215 = t216.
                    t206 = NEW zcl_lnt_ilookup_result( i_type_9913 = t207 i_object_19cd = t215 ).
                    CREATE OBJECT t206->zlnt_view_ownkeys_b0e8086400eb.
                    t206->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t217.
                    IF t206->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t206->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t217 ).
                    ENDIF.
                    CREATE OBJECT t206->zlnt_json_ownkeys_70e5fd461788.
                    t206->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t218) = |type|.
                    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t219.
                    IF t206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t206->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
                    ENDIF.
                    t200 = t206.
                  ELSE.
                    DATA t220 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t220.
                    DATA t221 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t221.
                    DATA t222 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t222.
                    DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t223.
                    DATA(t224) = abap_true.
                    IF t224 = abap_true.
                      DATA t225 TYPE string.
                      DATA(t226) = t136.
                      t225 = t226->value.
                      DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t227->has = abap_true.
                      t227->value = t225.
                      t223 = t227.
                    ELSE.
                      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t228.
                      t223 = t228.
                    ENDIF.
                    DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t229.
                    t222 = zcl_lnt_void_type=>get_db65( i_voided = t223 i_qualified_name = t229 ).
                    t221 = t222.
                    DATA t230 TYPE REF TO zif_lnt_object.
                    DATA t231 TYPE REF TO zif_lnt_object.
                    CLEAR t231.
                    t230 = t231.
                    t220 = NEW zcl_lnt_ilookup_result( i_type_9913 = t221 i_object_19cd = t230 ).
                    CREATE OBJECT t220->zlnt_view_ownkeys_b0e8086400eb.
                    t220->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t232.
                    IF t220->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t220->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t232 ).
                    ENDIF.
                    CREATE OBJECT t220->zlnt_json_ownkeys_70e5fd461788.
                    t220->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t233) = |type|.
                    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t234.
                    IF t220->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t220->zlnt_json_ownkeys_70e5fd461788->put( p0 = t233 p1 = t234 ).
                    ENDIF.
                    t200 = t220.
                  ENDIF.
                  t179 = t200.
                ENDIF.
                t161 = t179.
                t143 = t161.
              ENDIF.
              t135 = t143.
              t130 = t135.
            ENDIF.
            t120 = t130.
            t99 = t120.
          ENDIF.
          t81 = t99.
          t63 = t81.
        ENDIF.
        t52 = t63.
        t48 = t52.
      ENDIF.
      t39 = t48.
      t38 = t39.
      DATA t235 TYPE abap_bool.
      DATA t236 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t237) = t38.
      t236 = t237.
      t235 = xsdbool( t236 IS BOUND ).
      IF t235 = abap_true.
        DATA t238 TYPE REF TO zif_lnt_ddic_references.
        DATA t239 TYPE REF TO zcl_lnt_current_scope.
        DATA t240 TYPE REF TO zcl_lnt_current_scope.
        DATA(t241) = t2.
        t240 = t241->scope.
        t239 = t240.
        DATA t242 TYPE REF TO zif_lnt_ddic_references.
        DATA t243 TYPE REF TO zif_lnt_registry.
        DATA(t244) = t239.
        t243 = t244->reg.
        t242 = t243->get_ddic_references( ).
        t238 = t242.
        DATA t245 TYPE REF TO zif_lnt_object.
        DATA t246 TYPE REF TO zcl_lnt_current_scope.
        DATA t247 TYPE REF TO zcl_lnt_current_scope.
        DATA(t248) = t2.
        t247 = t248->scope.
        t246 = t247.
        DATA t249 TYPE REF TO zif_lnt_object.
        DATA(t250) = t246.
        t249 = t250->parent_obj.
        t245 = t249.
        DATA t251 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t251.
        DATA(t252) = abap_true.
        IF t252 = abap_true.
          DATA t253 TYPE REF TO zcl_lnt_iobject_and_token.
          DATA t254 TYPE REF TO zif_lnt_object.
          DATA t255 TYPE REF TO zif_lnt_object.
          DATA t256 TYPE REF TO zcl_lnt_ilookup_result.
          DATA(t257) = t38.
          t256 = t257.
          t255 = t256->zlnt_view_read_sr_2de0200e6505( ).
          t254 = t255.
          DATA t258 TYPE REF TO zcl_lnt_abstract_token.
          DATA t259 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t259.
          t258 = t259.
          DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t261.
          t260 = t261.
          t253 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t254 i_token = t258 i_filename = t260 ).
          CREATE OBJECT t253->zlnt_view_ownkeys_b0e8086400eb.
          t253->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t262.
          IF t253->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t253->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t262 ).
          ENDIF.
          CREATE OBJECT t253->zlnt_json_ownkeys_70e5fd461788.
          t253->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t263) = |object|.
          DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t264.
          IF t253->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t253->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
          ENDIF.
          t251 = t253.
        ELSE.
          DATA t265 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t265.
          t251 = t265.
        ENDIF.
        t238->add_using( i_obj_1ed0 = t245 i_using = t251 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d916_7553f99b23c9.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
