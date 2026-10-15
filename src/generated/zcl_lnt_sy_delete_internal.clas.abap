* TS: src/abap/5_syntax/statements/delete_internal.ts:13:1 DeleteInternal
CLASS zcl_lnt_sy_delete_internal DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_delete_internal IMPLEMENTATION.
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
    DATA t21 TYPE REF TO zcl_lnt_abstract_type.
    DATA t22 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t22.
    t21 = t22.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA(t25) = t1.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t24 = t25->find_direct_expression( i_type_9913 = t26 ).
    t23 = t24.
    DATA t27 TYPE abap_bool.
    DATA(t28) = t23.
    t27 = xsdbool( t28 IS BOUND ).
    IF t27 = abap_true.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      DATA(t32) = t23.
      t31 = t32.
      t30 = t31->concat_tokens( ).
      t29 = t30.
      DATA t33 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t34 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t34.
      t33 = t34.
      DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t35.
      DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t36.
      DATA t37 TYPE REF TO zcl_lnt_current_scope.
      DATA t38 TYPE REF TO zcl_lnt_current_scope.
      DATA(t39) = t2.
      t38 = t39->scope.
      t37 = t38.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      DATA(t42) = abap_true.
      IF t42 = abap_true.
        DATA(t43) = t29.
        DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t44->has = abap_true.
        t44->value = t43.
        t41 = t44.
      ELSE.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        t41 = t45.
      ENDIF.
      t40 = t41.
      DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t49) = t40.
      t48 = t49.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      t50 = t51.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = t48.
      IF t53 IS INITIAL.
        t52 = abap_true.
      ELSEIF t53->has = abap_false.
        t52 = abap_true.
      ENDIF.
      t47 = t52.
      IF t47 = abap_true.
        DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t54.
        t46 = t54.
      ELSE.
        DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t55.
        DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t56.
        DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t57.
        DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t59 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t60) = t37.
        t59 = t60->current.
        t58 = t59.
        DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t61.
        DATA(t62) = VALUE abap_bool( ).
        DATA(t63) = t58.
        IF t63 IS INITIAL.
          t62 = abap_true.
        ENDIF.
        IF t62 = abap_true.
          DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t64.
          t61 = t64.
        ELSE.
          DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t67) = t58.
          t66 = t67.
          DATA t68 TYPE string.
          DATA(t69) = t40.
          t68 = t69->value.
          t65 = t66->find_variable( i_name = t68 ).
          t61 = t65.
        ENDIF.
        t57 = t61.
        t56 = t57.
        DATA t70 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t70.
        DATA t71 TYPE abap_bool.
        DATA(t72) = t56.
        t71 = xsdbool( t72 IS BOUND ).
        IF t71 = abap_true.
          DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t73.
          DATA(t74) = abap_true.
          IF t74 = abap_true.
            DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t76) = t56.
            t75 = t76.
            t73 = t75.
          ELSE.
            DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t77.
            t73 = t77.
          ENDIF.
          t70 = t73.
        ELSE.
          DATA t78 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t78.
          DATA(t79) = t37.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          DATA(t81) = abap_true.
          IF t81 = abap_true.
            DATA t82 TYPE string.
            DATA(t83) = t40.
            t82 = t83->value.
            DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t84->has = abap_true.
            t84->value = t82.
            t80 = t84.
          ELSE.
            DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t85.
            t80 = t85.
          ENDIF.
          t78 = t79->find_type_pool_constant( i_name = t80 ).
          t70 = t78.
        ENDIF.
        t55 = t70.
        t46 = t55.
      ENDIF.
      t36 = t46.
      t35 = t36.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = VALUE abap_bool( ).
      DATA t89 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t90) = t35.
      t89 = t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      t91 = t92.
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = t89.
      IF t94 IS INITIAL.
        t93 = abap_true.
      ENDIF.
      t88 = t93.
      t87 = t88.
      IF t88 = abap_true.
        DATA t95 TYPE abap_bool.
        DATA t96 TYPE i.
        DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t99 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t100) = t1.
        t99 = t100.
        DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t102) = t99.
        t101 = t102->children.
        t98 = t101.
        t97 ?= t98.
        t97->load( ).
        t96 = lines( t97->items ).
        DATA(t103) = 5.
        t95 = xsdbool( t96 = t103 ).
        t87 = t95.
      ENDIF.
      t86 = t87.
      IF t87 = abap_true.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = VALUE string( ).
        DATA(t106) = VALUE string( ).
        DATA t107 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t107.
        DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t110 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t111) = t1.
        t110 = t111.
        DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t113) = t110.
        t112 = t113->children.
        t109 = t112.
        t108 ?= t109.
        DATA t114 TYPE REF TO object.
        CLEAR t114.
        t108->load( ).
        CLEAR t114.
        READ TABLE t108->items INDEX 3 INTO t114.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        CLEAR t107.
        IF t114 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t115 ?= t114.
          DATA t116 TYPE REF TO object.
          t116 = t115->as_ref( ).
          t107 ?= t116.
        ELSE.
          t107 ?= t114.
        ENDIF.
        t106 = t107->concat_tokens( ).
        DATA(t117) = strlen( t106 ).
        t105 = t106.
        IF t105 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t105 TO UPPER CASE.
        ELSE.
          t105 = zlnt_runtime_uppe_91169605024d=>full( t105 ).
        ENDIF.
        DATA(t118) = |FROM|.
        t104 = xsdbool( t105 = t118 ).
        t86 = t104.
      ENDIF.
      IF t86 = abap_true.
        DATA t119 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t119.
        DATA t120 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t120.
        DATA t121 TYPE REF TO zcl_lnt_ddic.
        DATA t122 TYPE REF TO zcl_lnt_ddic.
        DATA t123 TYPE REF TO zcl_lnt_current_scope.
        DATA t124 TYPE REF TO zcl_lnt_current_scope.
        DATA(t125) = t2.
        t124 = t125->scope.
        t123 = t124.
        DATA t126 TYPE REF TO zcl_lnt_ddic.
        DATA t127 TYPE REF TO zif_lnt_registry.
        DATA(t128) = t123.
        t127 = t128->reg.
        t126 = NEW zcl_lnt_ddic( i_reg_f149 = t127 ).
        t122 = t126.
        t121 = t122.
        DATA t129 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t129.
        DATA(t130) = VALUE abap_bool( ).
        DATA(t131) = t121.
        IF t131 IS INITIAL.
          t130 = abap_true.
        ENDIF.
        IF t130 = abap_true.
          DATA t132 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t132.
          t129 = t132.
        ELSE.
          DATA t133 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t133.
          DATA t134 TYPE REF TO zcl_lnt_ddic.
          DATA(t135) = t121.
          t134 = t135.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t136.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t137.
          DATA(t138) = abap_true.
          IF t138 = abap_true.
            DATA(t139) = t29.
            DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t140->has = abap_true.
            t140->value = t139.
            t137 = t140.
          ELSE.
            DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t141.
            t137 = t141.
          ENDIF.
          t136 = t137.
          DATA t142 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t142.
          DATA(t143) = VALUE abap_bool( ).
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t145) = t136.
          t144 = t145.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          t146 = t147.
          DATA(t148) = VALUE abap_bool( ).
          DATA(t149) = t144.
          IF t149 IS INITIAL.
            t148 = abap_true.
          ELSEIF t149->has = abap_false.
            t148 = abap_true.
          ENDIF.
          t143 = t148.
          IF t143 = abap_true.
            DATA t150 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t151 TYPE REF TO zcl_lnt_abstract_type.
            DATA t152 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t153) = |undefined, lookupTableOrView|.
            DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t154.
            t152 = NEW zcl_lnt_unknown_type( i_error = t153 i_qualified_name = t154 ).
            t151 = t152.
            DATA t155 TYPE REF TO zif_lnt_object.
            DATA t156 TYPE REF TO zif_lnt_object.
            CLEAR t156.
            t155 = t156.
            t150 = NEW zcl_lnt_ilookup_result( i_type_9913 = t151 i_object_19cd = t155 ).
            CREATE OBJECT t150->zlnt_view_ownkeys_b0e8086400eb.
            t150->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t157.
            IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t157 ).
            ENDIF.
            CREATE OBJECT t150->zlnt_json_ownkeys_70e5fd461788.
            t150->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t158) = |type|.
            DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t159.
            IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
            ENDIF.
            t142 = t150.
          ELSE.
            DATA t160 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t160.
            DATA t161 TYPE REF TO zcl_lnt_table.
            CLEAR t161.
            DATA t162 TYPE REF TO zcl_lnt_table.
            CLEAR t162.
            DATA t163 TYPE REF TO zif_lnt_object.
            CLEAR t163.
            DATA t164 TYPE REF TO zif_lnt_registry.
            DATA(t165) = t134.
            t164 = t165->reg.
            DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t166.
            DATA(t167) = abap_true.
            IF t167 = abap_true.
              DATA(t168) = |TABL|.
              DATA(t169) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t169->has = abap_true.
              t169->value = t168.
              t166 = t169.
            ELSE.
              DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t170.
              t166 = t170.
            ENDIF.
            DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t171.
            DATA(t172) = abap_true.
            IF t172 = abap_true.
              DATA t173 TYPE string.
              DATA(t174) = t136.
              t173 = t174->value.
              DATA(t175) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t175->has = abap_true.
              t175->value = t173.
              t171 = t175.
            ELSE.
              DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t176.
              t171 = t176.
            ENDIF.
            t163 = t164->get_object( i_type_9913 = t166 i_name = t171 ).
            DATA t177 TYPE REF TO object.
            t177 = t163.
            t162 ?= t177.
            t161 = t162.
            DATA t178 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t178.
            DATA t179 TYPE abap_bool.
            DATA(t180) = t161.
            t179 = xsdbool( t180 IS BOUND ).
            IF t179 = abap_true.
              DATA t181 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t182 TYPE REF TO zcl_lnt_abstract_type.
              DATA t183 TYPE REF TO zcl_lnt_abstract_type.
              DATA t184 TYPE REF TO zcl_lnt_table.
              DATA(t185) = t161.
              t184 = t185.
              DATA t186 TYPE REF TO zif_lnt_registry.
              DATA(t187) = t134.
              t186 = t187->reg.
              DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t188.
              DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t189.
              t183 = t184->parse_type( i_reg_f149 = t186 i_data_element = t188 i_description = t189 ).
              t182 = t183.
              DATA t190 TYPE REF TO zif_lnt_object.
              DATA t191 TYPE REF TO zcl_lnt_table.
              DATA(t192) = t161.
              t191 = t192.
              t190 = t191.
              t181 = NEW zcl_lnt_ilookup_result( i_type_9913 = t182 i_object_19cd = t190 ).
              CREATE OBJECT t181->zlnt_view_ownkeys_b0e8086400eb.
              t181->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t193.
              IF t181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t193 ).
              ENDIF.
              DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t194.
              IF t181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t194 ).
              ENDIF.
              CREATE OBJECT t181->zlnt_json_ownkeys_70e5fd461788.
              t181->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t195) = |type|.
              DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t196.
              IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t195 p1 = t196 ).
              ENDIF.
              DATA(t197) = |object|.
              DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t198.
              IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t197 p1 = t198 ).
              ENDIF.
              t178 = t181.
            ELSE.
              DATA t199 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t199.
              DATA t200 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t200.
              DATA t201 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t201.
              DATA(t202) = t134.
              DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t203.
              DATA(t204) = abap_true.
              IF t204 = abap_true.
                DATA t205 TYPE string.
                DATA(t206) = t136.
                t205 = t206->value.
                DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t207->has = abap_true.
                t207->value = t205.
                t203 = t207.
              ELSE.
                DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t208.
                t203 = t208.
              ENDIF.
              t201 = t202->lookup_ddls( i_name = t203 ).
              t200 = t201.
              DATA t209 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t209.
              DATA t210 TYPE abap_bool.
              DATA(t211) = t200.
              t210 = xsdbool( t211 IS BOUND ).
              IF t210 = abap_true.
                DATA t212 TYPE REF TO zcl_lnt_ilookup_result.
                DATA(t213) = t200.
                t212 = t213.
                t209 = t212.
              ELSE.
                DATA t214 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t214.
                DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t215.
                DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t216.
                DATA(t217) = abap_true.
                IF t217 = abap_true.
                  DATA t218 TYPE string.
                  DATA(t219) = t136.
                  t218 = t219->value.
                  DATA(t220) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t220->has = abap_true.
                  t220->value = t218.
                  t216 = t220.
                ELSE.
                  DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t221.
                  t216 = t221.
                ENDIF.
                t215 = t216.
                DATA t222 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t222.
                DATA(t223) = VALUE abap_bool( ).
                DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t225) = t215.
                t224 = t225.
                DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t227.
                t226 = t227.
                DATA(t228) = VALUE abap_bool( ).
                DATA(t229) = t224.
                IF t229 IS INITIAL.
                  t228 = abap_true.
                ELSEIF t229->has = abap_false.
                  t228 = abap_true.
                ENDIF.
                t223 = t228.
                IF t223 = abap_true.
                  DATA t230 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t231 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t232 TYPE REF TO zcl_lnt_unknown_type.
                  DATA(t233) = |undefined, lookupView|.
                  DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t234.
                  t232 = NEW zcl_lnt_unknown_type( i_error = t233 i_qualified_name = t234 ).
                  t231 = t232.
                  DATA t235 TYPE REF TO zif_lnt_object.
                  DATA t236 TYPE REF TO zif_lnt_object.
                  CLEAR t236.
                  t235 = t236.
                  t230 = NEW zcl_lnt_ilookup_result( i_type_9913 = t231 i_object_19cd = t235 ).
                  CREATE OBJECT t230->zlnt_view_ownkeys_b0e8086400eb.
                  t230->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t237.
                  IF t230->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t230->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t237 ).
                  ENDIF.
                  CREATE OBJECT t230->zlnt_json_ownkeys_70e5fd461788.
                  t230->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t238) = |type|.
                  DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t239.
                  IF t230->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t230->zlnt_json_ownkeys_70e5fd461788->put( p0 = t238 p1 = t239 ).
                  ENDIF.
                  t222 = t230.
                ELSE.
                  DATA t240 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t240.
                  DATA t241 TYPE REF TO zcl_lnt_table.
                  CLEAR t241.
                  DATA t242 TYPE REF TO zcl_lnt_table.
                  CLEAR t242.
                  DATA t243 TYPE REF TO zif_lnt_object.
                  CLEAR t243.
                  DATA t244 TYPE REF TO zif_lnt_registry.
                  DATA(t245) = t134.
                  t244 = t245->reg.
                  DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t246.
                  DATA(t247) = abap_true.
                  IF t247 = abap_true.
                    DATA(t248) = |VIEW|.
                    DATA(t249) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t249->has = abap_true.
                    t249->value = t248.
                    t246 = t249.
                  ELSE.
                    DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t250.
                    t246 = t250.
                  ENDIF.
                  DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t251.
                  DATA(t252) = abap_true.
                  IF t252 = abap_true.
                    DATA t253 TYPE string.
                    DATA(t254) = t215.
                    t253 = t254->value.
                    DATA(t255) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t255->has = abap_true.
                    t255->value = t253.
                    t251 = t255.
                  ELSE.
                    DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t256.
                    t251 = t256.
                  ENDIF.
                  t243 = t244->get_object( i_type_9913 = t246 i_name = t251 ).
                  DATA t257 TYPE REF TO object.
                  t257 = t243.
                  t242 ?= t257.
                  t241 = t242.
                  DATA t258 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t258.
                  DATA t259 TYPE abap_bool.
                  DATA(t260) = t241.
                  t259 = xsdbool( t260 IS BOUND ).
                  IF t259 = abap_true.
                    DATA t261 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t262 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t263 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t264 TYPE REF TO zcl_lnt_table.
                    DATA(t265) = t241.
                    t264 = t265.
                    DATA t266 TYPE REF TO zif_lnt_registry.
                    DATA(t267) = t134.
                    t266 = t267->reg.
                    DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t268.
                    DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t269.
                    t263 = t264->parse_type( i_reg_f149 = t266 i_data_element = t268 i_description = t269 ).
                    t262 = t263.
                    DATA t270 TYPE REF TO zif_lnt_object.
                    DATA t271 TYPE REF TO zcl_lnt_table.
                    DATA(t272) = t241.
                    t271 = t272.
                    t270 = t271.
                    t261 = NEW zcl_lnt_ilookup_result( i_type_9913 = t262 i_object_19cd = t270 ).
                    CREATE OBJECT t261->zlnt_view_ownkeys_b0e8086400eb.
                    t261->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t273.
                    IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t273 ).
                    ENDIF.
                    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t274.
                    IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t274 ).
                    ENDIF.
                    CREATE OBJECT t261->zlnt_json_ownkeys_70e5fd461788.
                    t261->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t275) = |type|.
                    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t276.
                    IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t275 p1 = t276 ).
                    ENDIF.
                    DATA(t277) = |object|.
                    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t278.
                    IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t277 p1 = t278 ).
                    ENDIF.
                    t258 = t261.
                  ELSE.
                    DATA t279 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t279.
                    DATA t280 TYPE abap_bool.
                    DATA t281 TYPE REF TO zif_lnt_registry.
                    DATA(t282) = t134.
                    t281 = t282->reg.
                    DATA t283 TYPE string.
                    DATA(t284) = t215.
                    t283 = t284->value.
                    t280 = t281->in_error_namespace( i_name = t283 ).
                    IF t280 = abap_true.
                      DATA t285 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t286 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t287 TYPE REF TO zcl_lnt_unknown_type.
                      DATA t288 TYPE string.
                      DATA t289 TYPE string.
                      DATA(t290) = t215.
                      t289 = t290->value.
                      DATA(t291) = | not found, lookupView|.
                      DATA(t292) = strlen( t289 ).
                      t288 = |{ t289 }{ t291 }|.
                      DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t293.
                      t287 = NEW zcl_lnt_unknown_type( i_error = t288 i_qualified_name = t293 ).
                      t286 = t287.
                      DATA t294 TYPE REF TO zif_lnt_object.
                      DATA t295 TYPE REF TO zif_lnt_object.
                      CLEAR t295.
                      t294 = t295.
                      t285 = NEW zcl_lnt_ilookup_result( i_type_9913 = t286 i_object_19cd = t294 ).
                      CREATE OBJECT t285->zlnt_view_ownkeys_b0e8086400eb.
                      t285->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t296.
                      IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t296 ).
                      ENDIF.
                      CREATE OBJECT t285->zlnt_json_ownkeys_70e5fd461788.
                      t285->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t297) = |type|.
                      DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t298.
                      IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t297 p1 = t298 ).
                      ENDIF.
                      t279 = t285.
                    ELSE.
                      DATA t299 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t299.
                      DATA t300 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t300.
                      DATA t301 TYPE REF TO zcl_lnt_void_type.
                      CLEAR t301.
                      DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t302.
                      DATA(t303) = abap_true.
                      IF t303 = abap_true.
                        DATA t304 TYPE string.
                        DATA(t305) = t215.
                        t304 = t305->value.
                        DATA(t306) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t306->has = abap_true.
                        t306->value = t304.
                        t302 = t306.
                      ELSE.
                        DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t307.
                        t302 = t307.
                      ENDIF.
                      DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t308.
                      t301 = zcl_lnt_void_type=>get_db65( i_voided = t302 i_qualified_name = t308 ).
                      t300 = t301.
                      DATA t309 TYPE REF TO zif_lnt_object.
                      DATA t310 TYPE REF TO zif_lnt_object.
                      CLEAR t310.
                      t309 = t310.
                      t299 = NEW zcl_lnt_ilookup_result( i_type_9913 = t300 i_object_19cd = t309 ).
                      CREATE OBJECT t299->zlnt_view_ownkeys_b0e8086400eb.
                      t299->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t311.
                      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t311 ).
                      ENDIF.
                      CREATE OBJECT t299->zlnt_json_ownkeys_70e5fd461788.
                      t299->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t312) = |type|.
                      DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t313.
                      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t312 p1 = t313 ).
                      ENDIF.
                      t279 = t299.
                    ENDIF.
                    t258 = t279.
                  ENDIF.
                  t240 = t258.
                  t222 = t240.
                ENDIF.
                t214 = t222.
                t209 = t214.
              ENDIF.
              t199 = t209.
              t178 = t199.
            ENDIF.
            t160 = t178.
            t142 = t160.
          ENDIF.
          t133 = t142.
          t129 = t133.
        ENDIF.
        t120 = t129.
        t119 = t120.
        DATA(t314) = VALUE abap_bool( ).
        DATA t315 TYPE REF TO zif_lnt_object.
        CLEAR t315.
        DATA t316 TYPE REF TO zif_lnt_object.
        CLEAR t316.
        DATA t317 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t318 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t319) = t119.
        t318 = t319.
        t317 = t318.
        DATA t320 TYPE REF TO zif_lnt_object.
        CLEAR t320.
        DATA(t321) = VALUE abap_bool( ).
        DATA(t322) = t317.
        IF t322 IS INITIAL.
          t321 = abap_true.
        ENDIF.
        IF t321 = abap_true.
          DATA t323 TYPE REF TO zif_lnt_object.
          CLEAR t323.
          t320 = t323.
        ELSE.
          DATA t324 TYPE REF TO zif_lnt_object.
          DATA(t325) = t317.
          t324 = t325->zlnt_view_read_sr_2de0200e6505( ).
          t320 = t324.
        ENDIF.
        t316 = t320.
        t315 = t316.
        DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t327.
        t326 = t327.
        DATA(t328) = VALUE abap_bool( ).
        DATA(t329) = VALUE abap_bool( ).
        DATA(t330) = t315.
        IF t330 IS INITIAL.
          t329 = abap_true.
        ENDIF.
        t328 = xsdbool( t329 = abap_false ).
        t314 = t328.
        IF t314 = abap_true.
          DATA t331 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t331.
          DATA(t332) = abap_true.
          IF t332 = abap_true.
            DATA t333 TYPE REF TO zcl_lnt_ilookup_result.
            DATA(t334) = t119.
            t333 = t334.
            t331 = t333.
          ELSE.
            DATA t335 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t335.
            t331 = t335.
          ENDIF.
          t33 = t331.
          DATA t336 TYPE REF TO zif_lnt_ddic_references.
          DATA t337 TYPE REF TO zcl_lnt_current_scope.
          DATA t338 TYPE REF TO zcl_lnt_current_scope.
          DATA(t339) = t2.
          t338 = t339->scope.
          t337 = t338.
          DATA t340 TYPE REF TO zif_lnt_ddic_references.
          DATA t341 TYPE REF TO zif_lnt_registry.
          DATA(t342) = t337.
          t341 = t342->reg.
          t340 = t341->get_ddic_references( ).
          t336 = t340.
          DATA t343 TYPE REF TO zif_lnt_object.
          DATA t344 TYPE REF TO zcl_lnt_current_scope.
          DATA t345 TYPE REF TO zcl_lnt_current_scope.
          DATA(t346) = t2.
          t345 = t346->scope.
          t344 = t345.
          DATA t347 TYPE REF TO zif_lnt_object.
          DATA(t348) = t344.
          t347 = t348->parent_obj.
          t343 = t347.
          DATA t349 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t349.
          DATA(t350) = abap_true.
          IF t350 = abap_true.
            DATA t351 TYPE REF TO zcl_lnt_iobject_and_token.
            DATA t352 TYPE REF TO zif_lnt_object.
            DATA t353 TYPE REF TO zif_lnt_object.
            DATA t354 TYPE REF TO zcl_lnt_ilookup_result.
            DATA(t355) = t33.
            t354 = t355.
            t353 = t354->zlnt_view_read_sr_2de0200e6505( ).
            t352 = t353.
            DATA t356 TYPE REF TO zcl_lnt_abstract_token.
            DATA t357 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t357.
            t356 = t357.
            DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t359.
            t358 = t359.
            t351 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t352 i_token = t356 i_filename = t358 ).
            CREATE OBJECT t351->zlnt_view_ownkeys_b0e8086400eb.
            t351->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t360.
            IF t351->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t351->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t360 ).
            ENDIF.
            CREATE OBJECT t351->zlnt_json_ownkeys_70e5fd461788.
            t351->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t361) = |object|.
            DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t362.
            IF t351->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t351->zlnt_json_ownkeys_70e5fd461788->put( p0 = t361 p1 = t362 ).
            ENDIF.
            t349 = t351.
          ELSE.
            DATA t363 TYPE REF TO zcl_lnt_iobject_and_token.
            CLEAR t363.
            t349 = t363.
          ENDIF.
          t336->add_using( i_obj_1ed0 = t343 i_using = t349 ).
        ENDIF.
      ENDIF.
      DATA(t364) = VALUE abap_bool( ).
      DATA t365 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t366) = t33.
      t365 = t366.
      DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t368.
      t367 = t368.
      DATA(t369) = VALUE abap_bool( ).
      DATA(t370) = t365.
      IF t370 IS INITIAL.
        t369 = abap_true.
      ENDIF.
      t364 = t369.
      IF t364 = abap_true.
        DATA t371 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t371.
        DATA t372 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t372.
        DATA t373 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t374 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t375 TYPE REF TO zcl_lnt_isyntax_settings.
        DATA t376 TYPE REF TO zif_lnt_configuration.
        DATA t377 TYPE REF TO zif_lnt_registry.
        DATA t378 TYPE REF TO zcl_lnt_current_scope.
        DATA t379 TYPE REF TO zcl_lnt_current_scope.
        DATA(t380) = t2.
        t379 = t380->scope.
        t378 = t379.
        DATA t381 TYPE REF TO zif_lnt_registry.
        DATA(t382) = t378.
        t381 = t382->reg.
        t377 = t381.
        t376 = t377->get_config( ).
        t375 = t376->get_syntax_setttings( ).
        t374 = t375->zlnt_view_read_sr_340722ed73f5( ).
        t373 = t374.
        DATA t383 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t383.
        DATA t384 TYPE abap_bool.
        DATA(t385) = t373.
        t384 = xsdbool( t385 IS BOUND ).
        IF t384 = abap_true.
          DATA t386 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t387) = t373.
          t386 = t387.
          t383 = t386.
        ELSE.
          DATA t388 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t388.
          t383 = t388.
        ENDIF.
        t372 = t383.
        t371 = t372.
        DATA(t389) = VALUE abap_bool( ).
        DATA t390 TYPE abap_bool.
        DATA(t391) = abap_false.
        t390 = t391.
        DATA(t392) = t371.
        DATA(t393) = VALUE string( ).
        t392->dense( ).
        DATA(t394) = VALUE i( ).
        DO.
          t392->load( ).
          IF t394 >= lines( t392->items ).
            EXIT.
          ENDIF.
          CLEAR t393.
          READ TABLE t392->items INDEX t394 + 1 INTO t393.
          IF t392->has( t394 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t394 = t394 + 1.
          DATA(t395) = VALUE abap_bool( ).
          DATA t396 TYPE string.
          DATA(t397) = t393.
          DATA(t398) = strlen( t397 ).
          t396 = t397.
          IF t396 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t396 TO UPPER CASE.
          ELSE.
            t396 = zlnt_runtime_uppe_91169605024d=>full( t396 ).
          ENDIF.
          DATA t399 TYPE string.
          DATA(t400) = t29.
          DATA(t401) = strlen( t400 ).
          t399 = t400.
          IF t399 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t399 TO UPPER CASE.
          ELSE.
            t399 = zlnt_runtime_uppe_91169605024d=>full( t399 ).
          ENDIF.
          t395 = xsdbool( t396 = t399 ).
          IF t395 = abap_true.
            DATA(t402) = abap_true.
            t390 = t402.
            EXIT.
          ENDIF.
        ENDDO.
        DATA(t403) = t390.
        t389 = t403.
        IF t389 = abap_true.
          DATA t404 TYPE REF TO zcl_lnt_void_type.
          CLEAR t404.
          DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t405.
          DATA(t406) = abap_true.
          IF t406 = abap_true.
            DATA(t407) = t29.
            DATA(t408) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t408->has = abap_true.
            t408->value = t407.
            t405 = t408.
          ELSE.
            DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t409.
            t405 = t409.
          ENDIF.
          DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t410.
          t404 = zcl_lnt_void_type=>get_db65( i_voided = t405 i_qualified_name = t410 ).
          t21 = t404.
        ELSE.
          DATA t411 TYPE REF TO zcl_lnt_abstract_type.
          DATA t412 TYPE REF TO zcl_lnt_expression_node.
          DATA(t413) = t23.
          t412 = t413.
          DATA(t414) = t2.
          t411 = zcl_lnt_sy_target=>run_syntax( i_node = t412 i_input_967e = t414 ).
          t21 = t411.
        ENDIF.
        DATA(t415) = VALUE abap_bool( ).
        DATA(t416) = VALUE abap_bool( ).
        DATA(t417) = VALUE abap_bool( ).
        DATA(t418) = VALUE abap_bool( ).
        DATA(t419) = VALUE abap_bool( ).
        DATA t420 TYPE REF TO zcl_lnt_abstract_token.
        DATA t421 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t422) = t1.
        DATA(t423) = |TABLE|.
        t421 = t422->find_direct_token_by_text( i_text = t423 ).
        t420 = t421.
        DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t425.
        t424 = t425.
        DATA(t426) = VALUE abap_bool( ).
        DATA(t427) = t420.
        IF t427 IS INITIAL.
          t426 = abap_true.
        ENDIF.
        t419 = t426.
        t418 = t419.
        IF t419 = abap_true.
          DATA(t428) = VALUE abap_bool( ).
          DATA t429 TYPE REF TO zcl_lnt_abstract_token.
          DATA t430 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t431) = t1.
          DATA(t432) = |ADJACENT|.
          t430 = t431->find_direct_token_by_text( i_text = t432 ).
          t429 = t430.
          DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t434.
          t433 = t434.
          DATA(t435) = VALUE abap_bool( ).
          DATA(t436) = t429.
          IF t436 IS INITIAL.
            t435 = abap_true.
          ENDIF.
          t428 = t435.
          t418 = t428.
        ENDIF.
        t417 = t418.
        IF t418 = abap_true.
          DATA t437 TYPE abap_bool.
          DATA t438 TYPE abap_bool.
          DATA t439 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t440) = t1.
          DATA(t441) = |FROM|.
          t439 = t440->find_direct_token_by_text( i_text = t441 ).
          t438 = xsdbool( t439 IS BOUND ).
          t437 = t438.
          IF t438 = abap_false.
            DATA t442 TYPE abap_bool.
            DATA t443 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t444) = t1.
            DATA(t445) = |INDEX|.
            t443 = t444->find_direct_token_by_text( i_text = t445 ).
            t442 = xsdbool( t443 IS BOUND ).
            t437 = t442.
          ENDIF.
          t417 = t437.
        ENDIF.
        t416 = t417.
        IF t417 = abap_true.
          DATA t446 TYPE abap_bool.
          DATA(t447) = t21.
          t446 = xsdbool( t447 IS BOUND AND t447 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t416 = t446.
        ENDIF.
        t415 = t416.
        IF t416 = abap_true.
          DATA(t448) = VALUE abap_bool( ).
          DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t449.
          DATA t450 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t451 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t452) = t21.
          t451 ?= t452.
          t450 = t451.
          DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t453.
          DATA t454 TYPE REF TO zcl_lnt_itable_key.
          DATA t455 TYPE REF TO zcl_lnt_itable_key.
          DATA t456 TYPE REF TO zcl_lnt_itable_options.
          DATA(t457) = t450.
          t456 = t457->options.
          t455 = t456->zlnt_view_read_sr_48b89cc62ab9( ).
          t454 = t455.
          DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t458.
          DATA(t459) = VALUE abap_bool( ).
          DATA(t460) = t454.
          IF t460 IS INITIAL.
            t459 = abap_true.
          ENDIF.
          IF t459 = abap_true.
            DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t461.
            t458 = t461.
          ELSE.
            DATA t462 TYPE string.
            DATA t463 TYPE REF TO zcl_lnt_itable_key.
            DATA(t464) = t454.
            t463 = t464.
            t462 = t463->zlnt_view_read_sr_f361ef311f50( ).
            DATA(t465) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t465->has = abap_true.
            t465->value = t462.
            t458 = t465.
          ENDIF.
          t453 = t458.
          t449 = t453.
          DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t466.
          DATA(t467) = abap_true.
          IF t467 = abap_true.
            DATA(t468) = |HASHED|.
            DATA(t469) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t469->has = abap_true.
            t469->value = t468.
            t466 = t469.
          ELSE.
            DATA t470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t470.
            t466 = t470.
          ENDIF.
          DATA(t471) = VALUE abap_bool( ).
          DATA(t472) = VALUE abap_bool( ).
          IF t449 IS BOUND.
            t471 = t449->has.
          ENDIF.
          IF t466 IS BOUND.
            t472 = t466->has.
          ENDIF.
          IF t471 = t472.
            IF t471 = abap_false.
              t448 = abap_true.
            ELSEIF t449->value = t466->value.
              t448 = abap_true.
            ENDIF.
          ENDIF.
          t415 = t448.
        ENDIF.
        IF t415 = abap_true.
          DATA t473 TYPE string.
          DATA(t474) = |Implicit or explicit index operation on hashed table is not |.
          t474 = t474 && |possible|.
          t473 = t474.
          DATA t475 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t476) = t2.
          t475 = t476->issues.
          DATA t477 TYPE REF TO zcl_lnt_issue.
          DATA(t478) = t2.
          DATA t479 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t480) = t1.
          t479 = t480->get_first_token( ).
          DATA(t481) = t473.
          DATA t482 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t482.
          t477 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t478 i_token = t479 i_message_26cb = t481 i_fix = t482 ).
          t475->load( ).
          APPEND t477 TO t475->items.
          t475->save( ).
          RETURN.
        ENDIF.
        DATA t483 TYPE abap_bool.
        DATA(t484) = t21.
        t483 = xsdbool( t484 IS BOUND AND t484 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t483 = abap_true.
          DATA t485 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t485.
          DATA(t486) = abap_true.
          IF t486 = abap_true.
            DATA t487 TYPE REF TO zcl_lnt_abstract_type.
            DATA t488 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t489 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t490) = t21.
            t489 ?= t490.
            t488 = t489.
            DATA t491 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t492) = t488.
            t491 = t492->row_type.
            t487 = t491.
            t485 = t487.
          ELSE.
            DATA t493 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t493.
            t485 = t493.
          ENDIF.
          t21 = t485.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t494 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t495) = t1.
    DATA(t496) = zlnt_runtime_desc_78196487750d=>zlnt_member_d128_b497db583ff7.
    t494 = t495->find_direct_expressions( i_type_9913 = t496 ).
    DATA t497 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t497.
    DATA t498 TYPE REF TO object.
    CLEAR t498.
    DATA(t499) = VALUE i( ).
    DO.
      t494->load( ).
      IF t499 >= lines( t494->items ).
        EXIT.
      ENDIF.
      CLEAR t498.
      READ TABLE t494->items INDEX t499 + 1 INTO t498.
      t499 = t499 + 1.
      DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t500.
      CLEAR t497.
      IF t498 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t500 ?= t498.
        DATA t501 TYPE REF TO object.
        t501 = t500->as_ref( ).
        t497 ?= t501.
      ELSE.
        t497 ?= t498.
      ENDIF.
      DATA(t502) = t497.
      DATA(t503) = t2.
      DATA(t504) = t21.
      DATA t505 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t505.
      zcl_lnt_sy_component_compare=>run_syntax( i_node = t502 i_input_967e = t503 i_left_type = t504 i_right_type = t505 ).
    ENDDO.
    DATA t506 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t507) = t1.
    DATA(t508) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    t506 = t507->find_direct_expressions( i_type_9913 = t508 ).
    DATA t509 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t509.
    DATA t510 TYPE REF TO object.
    CLEAR t510.
    DATA(t511) = VALUE i( ).
    DO.
      t506->load( ).
      IF t511 >= lines( t506->items ).
        EXIT.
      ENDIF.
      CLEAR t510.
      READ TABLE t506->items INDEX t511 + 1 INTO t510.
      t511 = t511 + 1.
      DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t512.
      CLEAR t509.
      IF t510 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t512 ?= t510.
        DATA t513 TYPE REF TO object.
        t513 = t512->as_ref( ).
        t509 ?= t513.
      ELSE.
        t509 ?= t510.
      ENDIF.
      DATA(t514) = t509.
      DATA(t515) = t2.
      DATA(t516) = t21.
      DATA t517 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t517.
      zcl_lnt_sy_component_cond=>run_syntax( i_node = t514 i_input_967e = t515 i_left_type = t516 i_right_type = t517 ).
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d889_fed309f1b538.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
