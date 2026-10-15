* TS: src/abap/5_syntax/expressions/source.ts:40:1 Source
CLASS zcl_lnt_sy_source DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type i_write_reference TYPE REF TO zlnt_runtime_opti_7f2541396f43
    i_allow_generic_deference TYPE REF TO zlnt_runtime_opti_7f2541396f43 i_read_reference TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS traverse_remaining_children IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    CLASS-METHODS infer IMPORTING i_context TYPE REF TO zcl_lnt_abstract_type i_found TYPE REF TO zcl_lnt_abstract_type i_arithmetic TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS calculation_type IMPORTING i_left TYPE REF TO zcl_lnt_abstract_type i_right TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS numeric_rank IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLASS-METHODS add_if_inferred IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_inferred_type TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS determine_type IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_source IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA(t4) = i_write_reference.
    DATA(t5) = i_allow_generic_deference.
    DATA(t6) = i_read_reference.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t4.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = abap_false.
        DATA(t12) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t12->has = abap_true.
        t12->value = t11.
        t9 = t12.
      ELSE.
        DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t13.
        t9 = t13.
      ENDIF.
      t4 = t9.
    ENDIF.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t5.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ELSEIF t15->has = abap_false.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t16.
      DATA(t17) = abap_true.
      IF t17 = abap_true.
        DATA(t18) = abap_false.
        DATA(t19) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t19->has = abap_true.
        t19->value = t18.
        t16 = t19.
      ELSE.
        DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t20.
        t16 = t20.
      ENDIF.
      t5 = t16.
    ENDIF.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t6.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ELSEIF t22->has = abap_false.
      t21 = abap_true.
    ENDIF.
    IF t21 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t23.
      DATA(t24) = abap_true.
      IF t24 = abap_true.
        DATA(t25) = abap_true.
        DATA(t26) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t26->has = abap_true.
        t26->value = t25.
        t23 = t26.
      ELSE.
        DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t27.
        t23 = t27.
      ENDIF.
      t6 = t23.
    ENDIF.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t29.
    DATA(t30) = t1.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t29.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t28 = t33.
    IF t28 = abap_true.
      DATA t35 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t35.
      result = t35.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t39.
    DATA t40 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t40.
    DATA t41 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t41.
    DATA(t42) = t1.
    t41 = t42.
    t40 = t41.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t43.
    DATA(t44) = t40.
    t43 = t44->children.
    t39 = t43.
    t38 ?= t39.
    t37 = t38->slice0( ).
    t36 = t37.
    DATA t45 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t45.
    DATA t46 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t46.
    DATA(t47) = t36.
    DATA t48 TYPE REF TO object.
    CLEAR t48.
    t48 = t47->shift( ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    CLEAR t46.
    IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t49 ?= t48.
      DATA t50 TYPE REF TO object.
      CLEAR t50.
      t50 = t49->as_ref( ).
      t46 ?= t50.
    ELSE.
      t46 ?= t48.
    ENDIF.
    t45 = t46.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = t45.
    t51 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_token_node ).
    IF t51 = abap_true.
      DATA t53 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t53.
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_token_node.
      CLEAR t55.
      DATA t56 TYPE REF TO zcl_lnt_token_node.
      CLEAR t56.
      DATA(t57) = t45.
      DATA t58 TYPE REF TO object.
      CLEAR t58.
      t58 = t57.
      t56 ?= t58.
      t55 = t56.
      DATA t59 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t59.
      DATA(t60) = t55.
      t59 = t60->token.
      t54 = t59.
      t53 = t54.
      DATA(t61) = VALUE string( ).
      DATA(t62) = VALUE string( ).
      DATA(t63) = VALUE string( ).
      DATA t64 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t64.
      DATA(t65) = t53.
      t64 = t65.
      DATA(t66) = VALUE string( ).
      DATA(t67) = t64.
      t66 = t67->str.
      t63 = t66.
      DATA(t68) = strlen( t63 ).
      t62 = t63.
      IF t62 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t62 TO UPPER CASE.
      ELSE.
        t62 = zlnt_runtime_uppe_91169605024d=>full( t62 ).
      ENDIF.
      t61 = t62.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = t61.
      DATA(t71) = |(|.
      t69 = xsdbool( t70 = t71 ).
      IF t69 = abap_true.
      ELSE.
        DATA(t72) = VALUE abap_bool( ).
        DATA(t73) = t61.
        DATA(t74) = |-|.
        t72 = xsdbool( t73 = t74 ).
        IF t72 = abap_true.
        ELSE.
          DATA(t75) = VALUE abap_bool( ).
          DATA(t76) = t61.
          DATA(t77) = |+|.
          t75 = xsdbool( t76 = t77 ).
          IF t75 = abap_true.
          ELSE.
            DATA(t78) = VALUE abap_bool( ).
            DATA(t79) = t61.
            DATA(t80) = |BIT|.
            t78 = xsdbool( t79 = t80 ).
            IF t78 = abap_true.
            ELSE.
              DATA(t81) = VALUE abap_bool( ).
              DATA(t82) = t61.
              DATA(t83) = |BOOLC|.
              t81 = xsdbool( t82 = t83 ).
              IF t81 = abap_true.
                DATA t84 TYPE REF TO zif_lnt_method_definition.
                CLEAR t84.
                DATA t85 TYPE REF TO zif_lnt_method_definition.
                CLEAR t85.
                DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t86.
                DATA(t87) = abap_true.
                IF t87 = abap_true.
                  DATA(t88) = t61.
                  DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t89->has = abap_true.
                  t89->value = t88.
                  t86 = t89.
                ELSE.
                  DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t90.
                  t86 = t90.
                ENDIF.
                t85 = zcl_lnt_built_in=>search_builtin( i_name = t86 ).
                t84 = t85.
                DATA t91 TYPE REF TO zif_lnt_method_definition.
                CLEAR t91.
                DATA(t92) = t84.
                t91 = t92.
                DATA t93 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t93.
                DATA(t94) = t2.
                t93 = t94->scope.
                DATA t95 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t95.
                DATA(t96) = abap_true.
                IF t96 = abap_true.
                  DATA(t97) = t53.
                  t95 = t97.
                ELSE.
                  DATA t98 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t98.
                  t95 = t98.
                ENDIF.
                DATA t99 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t99.
                DATA(t100) = VALUE abap_bool( ).
                DATA(t101) = t91.
                IF t101 IS INITIAL.
                  t100 = abap_true.
                ENDIF.
                IF t100 = abap_true.
                  DATA t102 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t102.
                  t99 = t102.
                ELSE.
                  DATA t103 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t103.
                  DATA t104 TYPE REF TO zif_lnt_method_definition.
                  CLEAR t104.
                  DATA(t105) = t91.
                  t104 = t105.
                  t103 ?= t104.
                  t99 = t103.
                ENDIF.
                DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t106.
                DATA(t107) = |Builtin Method|.
                CLEAR t106.
                CREATE OBJECT t106.
                t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                t106->sval = t107.
                DATA(t108) = VALUE string( ).
                DATA(t109) = t2.
                t108 = t109->filename.
                DATA t110 TYPE REF TO zcl_lnt_ireference_extras.
                CLEAR t110.
                t93->add_reference( i_usage = t95 i_referencing = t99 i_type_9913 = t106 i_filename = t108 i_extra = t110 ).
                DATA t111 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t111.
                DATA t112 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t112.
                DATA t113 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t113.
                DATA(t114) = t1.
                t113 = t114.
                DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
                t112 = t113->find_direct_expression( i_type_9913 = t115 ).
                t111 = t112.
                DATA(t116) = t2.
                zcl_lnt_sy_cond=>run_syntax( i_node = t111 i_input_967e = t116 ).
                DATA t117 TYPE REF TO zcl_lnt_string_type.
                CLEAR t117.
                DATA t118 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t118.
                t117 = zcl_lnt_string_type=>get_db65( i_input_967e = t118 ).
                result = t117.
                RETURN.
              ELSE.
                DATA(t119) = VALUE abap_bool( ).
                DATA(t120) = t61.
                DATA(t121) = |XSDBOOL|.
                t119 = xsdbool( t120 = t121 ).
                IF t119 = abap_true.
                  DATA t122 TYPE REF TO zif_lnt_method_definition.
                  CLEAR t122.
                  DATA t123 TYPE REF TO zif_lnt_method_definition.
                  CLEAR t123.
                  DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t124.
                  DATA(t125) = abap_true.
                  IF t125 = abap_true.
                    DATA(t126) = t61.
                    DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t127->has = abap_true.
                    t127->value = t126.
                    t124 = t127.
                  ELSE.
                    DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t128.
                    t124 = t128.
                  ENDIF.
                  t123 = zcl_lnt_built_in=>search_builtin( i_name = t124 ).
                  t122 = t123.
                  DATA t129 TYPE REF TO zif_lnt_method_definition.
                  CLEAR t129.
                  DATA(t130) = t122.
                  t129 = t130.
                  DATA t131 TYPE REF TO zcl_lnt_current_scope.
                  CLEAR t131.
                  DATA(t132) = t2.
                  t131 = t132->scope.
                  DATA t133 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t133.
                  DATA(t134) = abap_true.
                  IF t134 = abap_true.
                    DATA(t135) = t53.
                    t133 = t135.
                  ELSE.
                    DATA t136 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t136.
                    t133 = t136.
                  ENDIF.
                  DATA t137 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t137.
                  DATA(t138) = VALUE abap_bool( ).
                  DATA(t139) = t129.
                  IF t139 IS INITIAL.
                    t138 = abap_true.
                  ENDIF.
                  IF t138 = abap_true.
                    DATA t140 TYPE REF TO zcl_lnt_fi_identifier.
                    CLEAR t140.
                    t137 = t140.
                  ELSE.
                    DATA t141 TYPE REF TO zcl_lnt_fi_identifier.
                    CLEAR t141.
                    DATA t142 TYPE REF TO zif_lnt_method_definition.
                    CLEAR t142.
                    DATA(t143) = t129.
                    t142 = t143.
                    t141 ?= t142.
                    t137 = t141.
                  ENDIF.
                  DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t144.
                  DATA(t145) = |Builtin Method|.
                  CLEAR t144.
                  CREATE OBJECT t144.
                  t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                  t144->sval = t145.
                  DATA(t146) = VALUE string( ).
                  DATA(t147) = t2.
                  t146 = t147->filename.
                  DATA t148 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t148.
                  t131->add_reference( i_usage = t133 i_referencing = t137 i_type_9913 = t144 i_filename = t146 i_extra = t148 ).
                  DATA t149 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t149.
                  DATA t150 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t150.
                  DATA t151 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t151.
                  DATA(t152) = t1.
                  t151 = t152.
                  DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
                  t150 = t151->find_direct_expression( i_type_9913 = t153 ).
                  t149 = t150.
                  DATA(t154) = t2.
                  zcl_lnt_sy_cond=>run_syntax( i_node = t149 i_input_967e = t154 ).
                  DATA t155 TYPE REF TO zcl_lnt_character_type.
                  CLEAR t155.
                  DATA(t156) = CONV f( 1 ).
                  DATA t157 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t157.
                  DATA(t158) = abap_true.
                  IF t158 = abap_true.
                    DATA t159 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t159.
                    DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t160.
                    DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t161.
                    DATA(t162) = abap_true.
                    IF t162 = abap_true.
                      DATA(t163) = |ABAP_BOOL|.
                      DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t164->has = abap_true.
                      t164->value = t163.
                      t161 = t164.
                    ELSE.
                      DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t165.
                      t161 = t165.
                    ENDIF.
                    t160 = t161.
                    DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t166.
                    DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t167.
                    DATA(t168) = abap_true.
                    IF t168 = abap_true.
                      DATA(t169) = |ABAP_BOOL|.
                      DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t170->has = abap_true.
                      t170->value = t169.
                      t167 = t170.
                    ELSE.
                      DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t171.
                      t167 = t171.
                    ENDIF.
                    t166 = t167.
                    DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t172.
                    DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t173.
                    t172 = t173.
                    DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t174.
                    DATA t175 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t175.
                    t174 = t175.
                    DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t176.
                    DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t177.
                    t176 = t177.
                    DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t178.
                    DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t179.
                    t178 = t179.
                    t159 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t160 i_conversion_exit = t172 i_derived_from_constant = t174 i_ddic_name = t166 i_rtti_name = t176 i_description = t178 ).
                    CREATE OBJECT t159->zlnt_view_ownkeys_b0e8086400eb.
                    t159->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t180.
                    IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t180 ).
                    ENDIF.
                    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t181.
                    IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t181 ).
                    ENDIF.
                    CREATE OBJECT t159->zlnt_json_ownkeys_70e5fd461788.
                    t159->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t182) = |qualifiedName|.
                    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t183.
                    IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
                    ENDIF.
                    DATA(t184) = |ddicName|.
                    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t185.
                    IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
                    ENDIF.
                    t157 = t159.
                  ELSE.
                    DATA t186 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t186.
                    t157 = t186.
                  ENDIF.
                  t155 = NEW zcl_lnt_character_type( i_length = t156 i_extra = t157 ).
                  result = t155.
                  RETURN.
                ELSE.
                  DATA(t187) = VALUE abap_bool( ).
                  DATA(t188) = t61.
                  DATA(t189) = |REDUCE|.
                  t187 = xsdbool( t188 = t189 ).
                  IF t187 = abap_true.
                    DATA t190 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t190.
                    DATA t191 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t191.
                    DATA t192 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t192.
                    DATA(t193) = t1.
                    t192 = t193.
                    DATA(t194) = t2.
                    DATA(t195) = t3.
                    t191 = zcl_lnt_sy_source=>determine_type( i_node = t192 i_input_967e = t194 i_target_type = t195 ).
                    t190 = t191.
                    DATA t196 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t196.
                    DATA t197 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t197.
                    DATA t198 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t198.
                    DATA t199 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t199.
                    DATA(t200) = t1.
                    t199 = t200.
                    DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d254_c290c4a7bfe3.
                    t198 = t199->find_direct_expression( i_type_9913 = t201 ).
                    DATA(t202) = t2.
                    DATA(t203) = t190.
                    t197 = zcl_lnt_sy_reduce_body=>run_syntax( i_node = t198 i_input_967e = t202 i_target_type = t203 ).
                    t196 = t197.
                    DATA(t204) = VALUE abap_bool( ).
                    DATA(t205) = VALUE abap_bool( ).
                    DATA t206 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t206.
                    DATA(t207) = t190.
                    t206 = t207.
                    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t208.
                    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t209.
                    t208 = t209.
                    DATA(t210) = VALUE abap_bool( ).
                    DATA(t211) = t206.
                    IF t211 IS INITIAL.
                      t210 = abap_true.
                    ENDIF.
                    t205 = t210.
                    t204 = t205.
                    IF t205 = abap_false.
                      DATA(t212) = VALUE abap_bool( ).
                      DATA t213 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t213.
                      DATA(t214) = t190.
                      t213 = t214.
                      t212 = t213->is_generic( ).
                      t204 = t212.
                    ENDIF.
                    IF t204 = abap_true.
                      DATA t215 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t215.
                      DATA(t216) = t1.
                      t215 = t216.
                      DATA(t217) = t2.
                      DATA(t218) = t196.
                      zcl_lnt_sy_source=>add_if_inferred( i_node = t215 i_input_967e = t217 i_inferred_type = t218 ).
                    ELSE.
                      DATA t219 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t219.
                      DATA(t220) = t1.
                      t219 = t220.
                      DATA(t221) = t2.
                      DATA t222 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t222.
                      DATA(t223) = abap_true.
                      IF t223 = abap_true.
                        DATA t224 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t224.
                        DATA(t225) = t190.
                        t224 = t225.
                        t222 = t224.
                      ELSE.
                        DATA t226 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t226.
                        t222 = t226.
                      ENDIF.
                      zcl_lnt_sy_source=>add_if_inferred( i_node = t219 i_input_967e = t221 i_inferred_type = t222 ).
                    ENDIF.
                    DATA(t227) = t36.
                    DATA(t228) = t2.
                    zcl_lnt_sy_source=>traverse_remaining_children( i_children_9020 = t227 i_input_967e = t228 ).
                    DATA t229 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t229.
                    DATA(t230) = VALUE abap_bool( ).
                    DATA(t231) = t190.
                    t230 = xsdbool( t231 IS BOUND ).
                    IF t230 = abap_true.
                      DATA t232 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t232.
                      DATA(t233) = abap_true.
                      IF t233 = abap_true.
                        DATA t234 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t234.
                        DATA(t235) = t190.
                        t234 = t235.
                        t232 = t234.
                      ELSE.
                        DATA t236 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t236.
                        t232 = t236.
                      ENDIF.
                      t229 = t232.
                    ELSE.
                      DATA(t237) = t196.
                      t229 = t237.
                    ENDIF.
                    result = t229.
                    RETURN.
                  ELSE.
                    DATA(t238) = VALUE abap_bool( ).
                    DATA(t239) = t61.
                    DATA(t240) = |SWITCH|.
                    t238 = xsdbool( t239 = t240 ).
                    IF t238 = abap_true.
                      DATA t241 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t241.
                      DATA t242 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t242.
                      DATA t243 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t243.
                      DATA(t244) = t1.
                      t243 = t244.
                      DATA(t245) = t2.
                      DATA(t246) = t3.
                      t242 = zcl_lnt_sy_source=>determine_type( i_node = t243 i_input_967e = t245 i_target_type = t246 ).
                      t241 = t242.
                      DATA t247 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t247.
                      DATA t248 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t248.
                      DATA t249 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t249.
                      DATA t250 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t250.
                      DATA(t251) = t1.
                      t250 = t251.
                      DATA(t252) = zlnt_runtime_desc_78196487750d=>zlnt_member_d279_5e96219eaf2c.
                      t249 = t250->find_direct_expression( i_type_9913 = t252 ).
                      DATA(t253) = t2.
                      DATA(t254) = t241.
                      t248 = zcl_lnt_sy_switch_body=>run_syntax( i_node = t249 i_input_967e = t253 i_target_type = t254 ).
                      t247 = t248.
                      DATA(t255) = VALUE abap_bool( ).
                      DATA(t256) = VALUE abap_bool( ).
                      DATA t257 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t257.
                      DATA(t258) = t241.
                      t257 = t258.
                      DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t259.
                      DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t260.
                      t259 = t260.
                      DATA(t261) = VALUE abap_bool( ).
                      DATA(t262) = t257.
                      IF t262 IS INITIAL.
                        t261 = abap_true.
                      ENDIF.
                      t256 = t261.
                      t255 = t256.
                      IF t256 = abap_false.
                        DATA(t263) = VALUE abap_bool( ).
                        DATA t264 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t264.
                        DATA(t265) = t241.
                        t264 = t265.
                        t263 = t264->is_generic( ).
                        t255 = t263.
                      ENDIF.
                      IF t255 = abap_true.
                        DATA t266 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t266.
                        DATA(t267) = t1.
                        t266 = t267.
                        DATA(t268) = t2.
                        DATA(t269) = t247.
                        zcl_lnt_sy_source=>add_if_inferred( i_node = t266 i_input_967e = t268 i_inferred_type = t269 ).
                      ELSE.
                        DATA t270 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t270.
                        DATA(t271) = t1.
                        t270 = t271.
                        DATA(t272) = t2.
                        DATA t273 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t273.
                        DATA(t274) = abap_true.
                        IF t274 = abap_true.
                          DATA t275 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t275.
                          DATA(t276) = t241.
                          t275 = t276.
                          t273 = t275.
                        ELSE.
                          DATA t277 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t277.
                          t273 = t277.
                        ENDIF.
                        zcl_lnt_sy_source=>add_if_inferred( i_node = t270 i_input_967e = t272 i_inferred_type = t273 ).
                      ENDIF.
                      DATA t278 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t278.
                      DATA(t279) = VALUE abap_bool( ).
                      DATA(t280) = t241.
                      t279 = xsdbool( t280 IS BOUND ).
                      IF t279 = abap_true.
                        DATA t281 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t281.
                        DATA(t282) = abap_true.
                        IF t282 = abap_true.
                          DATA t283 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t283.
                          DATA(t284) = t241.
                          t283 = t284.
                          t281 = t283.
                        ELSE.
                          DATA t285 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t285.
                          t281 = t285.
                        ENDIF.
                        t278 = t281.
                      ELSE.
                        DATA(t286) = t247.
                        t278 = t286.
                      ENDIF.
                      result = t278.
                      RETURN.
                    ELSE.
                      DATA(t287) = VALUE abap_bool( ).
                      DATA(t288) = t61.
                      DATA(t289) = |COND|.
                      t287 = xsdbool( t288 = t289 ).
                      IF t287 = abap_true.
                        DATA t290 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t290.
                        DATA t291 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t291.
                        DATA t292 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t292.
                        DATA(t293) = t1.
                        t292 = t293.
                        DATA(t294) = t2.
                        DATA(t295) = t3.
                        t291 = zcl_lnt_sy_source=>determine_type( i_node = t292 i_input_967e = t294 i_target_type = t295 ).
                        t290 = t291.
                        DATA t296 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t296.
                        DATA t297 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t297.
                        DATA t298 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t298.
                        DATA t299 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t299.
                        DATA(t300) = t1.
                        t299 = t300.
                        DATA(t301) = zlnt_runtime_desc_78196487750d=>zlnt_member_d138_55fd16dd4da4.
                        t298 = t299->find_direct_expression( i_type_9913 = t301 ).
                        DATA(t302) = t2.
                        DATA(t303) = t290.
                        t297 = zcl_lnt_sy_cond_body=>run_syntax( i_node = t298 i_input_967e = t302 i_target_type = t303 ).
                        t296 = t297.
                        DATA(t304) = VALUE abap_bool( ).
                        DATA(t305) = VALUE abap_bool( ).
                        DATA t306 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t306.
                        DATA(t307) = t290.
                        t306 = t307.
                        DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t308.
                        DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t309.
                        t308 = t309.
                        DATA(t310) = VALUE abap_bool( ).
                        DATA(t311) = t306.
                        IF t311 IS INITIAL.
                          t310 = abap_true.
                        ENDIF.
                        t305 = t310.
                        t304 = t305.
                        IF t305 = abap_false.
                          DATA(t312) = VALUE abap_bool( ).
                          DATA t313 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t313.
                          DATA(t314) = t290.
                          t313 = t314.
                          t312 = t313->is_generic( ).
                          t304 = t312.
                        ENDIF.
                        IF t304 = abap_true.
                          DATA t315 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t315.
                          DATA(t316) = t1.
                          t315 = t316.
                          DATA(t317) = t2.
                          DATA(t318) = t296.
                          zcl_lnt_sy_source=>add_if_inferred( i_node = t315 i_input_967e = t317 i_inferred_type = t318 ).
                        ELSE.
                          DATA t319 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t319.
                          DATA(t320) = t1.
                          t319 = t320.
                          DATA(t321) = t2.
                          DATA t322 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t322.
                          DATA(t323) = abap_true.
                          IF t323 = abap_true.
                            DATA t324 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t324.
                            DATA(t325) = t290.
                            t324 = t325.
                            t322 = t324.
                          ELSE.
                            DATA t326 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t326.
                            t322 = t326.
                          ENDIF.
                          zcl_lnt_sy_source=>add_if_inferred( i_node = t319 i_input_967e = t321 i_inferred_type = t322 ).
                        ENDIF.
                        DATA t327 TYPE REF TO zif_lnt_union_4cf1d054.
                        CLEAR t327.
                        DATA(t328) = t36.
                        DATA t329 TYPE REF TO object.
                        CLEAR t329.
                        t329 = t328->shift( ).
                        DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t330.
                        CLEAR t327.
                        IF t329 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                          t330 ?= t329.
                          DATA t331 TYPE REF TO object.
                          CLEAR t331.
                          t331 = t330->as_ref( ).
                          t327 ?= t331.
                        ELSE.
                          t327 ?= t329.
                        ENDIF.
                        DATA t332 TYPE REF TO zif_lnt_union_4cf1d054.
                        CLEAR t332.
                        DATA(t333) = t36.
                        DATA t334 TYPE REF TO object.
                        CLEAR t334.
                        t334 = t333->shift( ).
                        DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t335.
                        CLEAR t332.
                        IF t334 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                          t335 ?= t334.
                          DATA t336 TYPE REF TO object.
                          CLEAR t336.
                          t336 = t335->as_ref( ).
                          t332 ?= t336.
                        ELSE.
                          t332 ?= t334.
                        ENDIF.
                        DATA t337 TYPE REF TO zif_lnt_union_4cf1d054.
                        CLEAR t337.
                        DATA(t338) = t36.
                        DATA t339 TYPE REF TO object.
                        CLEAR t339.
                        t339 = t338->shift( ).
                        DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t340.
                        CLEAR t337.
                        IF t339 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                          t340 ?= t339.
                          DATA t341 TYPE REF TO object.
                          CLEAR t341.
                          t341 = t340->as_ref( ).
                          t337 ?= t341.
                        ELSE.
                          t337 ?= t339.
                        ENDIF.
                        DATA t342 TYPE REF TO zif_lnt_union_4cf1d054.
                        CLEAR t342.
                        DATA(t343) = t36.
                        DATA t344 TYPE REF TO object.
                        CLEAR t344.
                        t344 = t343->shift( ).
                        DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t345.
                        CLEAR t342.
                        IF t344 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                          t345 ?= t344.
                          DATA t346 TYPE REF TO object.
                          CLEAR t346.
                          t346 = t345->as_ref( ).
                          t342 ?= t346.
                        ELSE.
                          t342 ?= t344.
                        ENDIF.
                        DATA(t347) = t36.
                        DATA(t348) = t2.
                        zcl_lnt_sy_source=>traverse_remaining_children( i_children_9020 = t347 i_input_967e = t348 ).
                        DATA t349 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t349.
                        DATA(t350) = VALUE abap_bool( ).
                        DATA(t351) = t290.
                        t350 = xsdbool( t351 IS BOUND ).
                        IF t350 = abap_true.
                          DATA t352 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t352.
                          DATA(t353) = abap_true.
                          IF t353 = abap_true.
                            DATA t354 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t354.
                            DATA(t355) = t290.
                            t354 = t355.
                            t352 = t354.
                          ELSE.
                            DATA t356 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t356.
                            t352 = t356.
                          ENDIF.
                          t349 = t352.
                        ELSE.
                          DATA(t357) = t296.
                          t349 = t357.
                        ENDIF.
                        result = t349.
                        RETURN.
                      ELSE.
                        DATA(t358) = VALUE abap_bool( ).
                        DATA(t359) = t61.
                        DATA(t360) = |CONV|.
                        t358 = xsdbool( t359 = t360 ).
                        IF t358 = abap_true.
                          DATA t361 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t361.
                          DATA t362 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t362.
                          DATA t363 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t363.
                          DATA(t364) = t1.
                          t363 = t364.
                          DATA(t365) = t2.
                          DATA(t366) = t3.
                          t362 = zcl_lnt_sy_source=>determine_type( i_node = t363 i_input_967e = t365 i_target_type = t366 ).
                          t361 = t362.
                          DATA t367 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t367.
                          DATA t368 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t368.
                          DATA t369 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t369.
                          DATA t370 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t370.
                          DATA t371 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t371.
                          DATA(t372) = t1.
                          t371 = t372.
                          DATA(t373) = zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924.
                          t370 = t371->find_direct_expression( i_type_9913 = t373 ).
                          t369 = t370.
                          DATA(t374) = t2.
                          t368 = zcl_lnt_sy_conv_body=>run_syntax( i_node = t369 i_input_967e = t374 ).
                          t367 = t368.
                          DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t375.
                          DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t376.
                          DATA t377 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t377.
                          DATA t378 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t378.
                          DATA t379 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t379.
                          DATA(t380) = t1.
                          t379 = t380.
                          DATA(t381) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
                          t378 = t379->find_direct_expression( i_type_9913 = t381 ).
                          t377 = t378.
                          DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t382.
                          DATA(t383) = VALUE abap_bool( ).
                          DATA(t384) = t377.
                          IF t384 IS INITIAL.
                            t383 = abap_true.
                          ENDIF.
                          IF t383 = abap_true.
                            DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t385.
                            t382 = t385.
                          ELSE.
                            DATA(t386) = VALUE string( ).
                            DATA t387 TYPE REF TO zcl_lnt_expression_node.
                            CLEAR t387.
                            DATA(t388) = t377.
                            t387 = t388.
                            t386 = t387->concat_tokens( ).
                            DATA(t389) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t389->has = abap_true.
                            t389->value = t386.
                            t382 = t389.
                          ENDIF.
                          t376 = t382.
                          t375 = t376.
                          DATA(t390) = VALUE abap_bool( ).
                          DATA(t391) = VALUE abap_bool( ).
                          DATA t392 TYPE REF TO zcl_lnt_type_utils.
                          CLEAR t392.
                          DATA t393 TYPE REF TO zcl_lnt_type_utils.
                          CLEAR t393.
                          DATA t394 TYPE REF TO zcl_lnt_current_scope.
                          CLEAR t394.
                          DATA(t395) = t2.
                          t394 = t395->scope.
                          t393 = NEW zcl_lnt_type_utils( i_scope = t394 ).
                          t392 = t393.
                          DATA t396 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t396.
                          DATA(t397) = t361.
                          t396 = t397.
                          DATA t398 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t398.
                          DATA(t399) = t367.
                          t398 = t399.
                          DATA(t400) = VALUE abap_bool( ).
                          DATA(t401) = VALUE abap_bool( ).
                          DATA(t402) = VALUE abap_bool( ).
                          DATA(t403) = t396.
                          t402 = xsdbool( t403 IS BOUND AND t403 IS INSTANCE OF zcl_lnt_ty_table_type ).
                          t401 = t402.
                          IF t402 = abap_true.
                            DATA(t404) = VALUE abap_bool( ).
                            DATA(t405) = t398.
                            t404 = xsdbool( t405 IS BOUND AND t405 IS INSTANCE OF zcl_lnt_ty_table_type ).
                            t401 = t404.
                          ENDIF.
                          IF t401 = abap_true.
                            DATA(t406) = VALUE abap_bool( ).
                            DATA(t407) = t392.
                            DATA t408 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t408.
                            DATA(t409) = abap_true.
                            IF t409 = abap_true.
                              DATA t410 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t410.
                              DATA t411 TYPE REF TO zcl_lnt_ty_table_type.
                              CLEAR t411.
                              DATA t412 TYPE REF TO zcl_lnt_ty_table_type.
                              CLEAR t412.
                              DATA(t413) = t396.
                              t412 ?= t413.
                              t411 = t412.
                              DATA t414 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t414.
                              DATA(t415) = t411.
                              t414 = t415->row_type.
                              t410 = t414.
                              t408 = t410.
                            ELSE.
                              DATA t416 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t416.
                              t408 = t416.
                            ENDIF.
                            DATA t417 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t417.
                            DATA(t418) = abap_true.
                            IF t418 = abap_true.
                              DATA t419 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t419.
                              DATA t420 TYPE REF TO zcl_lnt_ty_table_type.
                              CLEAR t420.
                              DATA t421 TYPE REF TO zcl_lnt_ty_table_type.
                              CLEAR t421.
                              DATA(t422) = t398.
                              t421 ?= t422.
                              t420 = t421.
                              DATA t423 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t423.
                              DATA(t424) = t420.
                              t423 = t424->row_type.
                              t419 = t423.
                              t417 = t419.
                            ELSE.
                              DATA t425 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t425.
                              t417 = t425.
                            ENDIF.
                            t406 = t407->is_assignable( i_source_75cf = t408 i_target_5f8a = t417 ).
                            t400 = t406.
                          ELSE.
                            DATA(t426) = VALUE abap_bool( ).
                            DATA(t427) = t392.
                            DATA(t428) = t396.
                            DATA(t429) = t398.
                            t426 = t427->is_assignable( i_source_75cf = t428 i_target_5f8a = t429 ).
                            t400 = t426.
                          ENDIF.
                          t391 = t400.
                          DATA(t430) = abap_false.
                          t390 = xsdbool( t391 = t430 ).
                          IF t390 = abap_true.
                            DATA(t431) = VALUE string( ).
                            DATA(t432) = VALUE string( ).
                            DATA(t433) = VALUE string( ).
                            DATA(t434) = VALUE string( ).
                            DATA(t435) = VALUE string( ).
                            DATA(t436) = |CONV: Types not compatible, |.
                            DATA(t437) = VALUE string( ).
                            DATA t438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t438.
                            DATA t439 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t439.
                            DATA t440 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            CLEAR t440.
                            DATA t441 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            CLEAR t441.
                            DATA t442 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t442.
                            DATA(t443) = t361.
                            t442 = t443.
                            DATA t444 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            CLEAR t444.
                            DATA(t445) = VALUE abap_bool( ).
                            DATA(t446) = t442.
                            IF t446 IS INITIAL.
                              t445 = abap_true.
                            ENDIF.
                            IF t445 = abap_true.
                              DATA t447 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              CLEAR t447.
                              t444 = t447.
                            ELSE.
                              DATA t448 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              CLEAR t448.
                              DATA t449 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t449.
                              DATA(t450) = t442.
                              t449 = t450.
                              t448 = t449->zlnt_builtin_clas_3f891b097658( ).
                              t444 = t448.
                            ENDIF.
                            t441 = t444.
                            t440 = t441.
                            DATA t451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t451.
                            DATA(t452) = VALUE abap_bool( ).
                            DATA(t453) = t440.
                            IF t453 IS INITIAL.
                              t452 = abap_true.
                            ENDIF.
                            IF t452 = abap_true.
                              DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t454.
                              t451 = t454.
                            ELSE.
                              DATA(t455) = VALUE string( ).
                              DATA t456 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              CLEAR t456.
                              DATA(t457) = t440.
                              t456 = t457.
                              t455 = t456->name.
                              DATA(t458) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t458->has = abap_true.
                              t458->value = t455.
                              t451 = t458.
                            ENDIF.
                            t439 = t451.
                            t438 = t439.
                            DATA(t459) = VALUE string( ).
                            DATA(t460) = VALUE abap_bool( ).
                            DATA(t461) = t438.
                            IF t461 IS INITIAL.
                              t460 = abap_true.
                            ELSEIF t461->has = abap_false.
                              t460 = abap_true.
                            ENDIF.
                            IF t460 = abap_true.
                              DATA(t462) = |undefined|.
                              t459 = t462.
                            ELSE.
                              DATA(t463) = VALUE string( ).
                              DATA(t464) = t438.
                              t463 = t464->value.
                              t459 = t463.
                            ENDIF.
                            t437 = t459.
                            DATA(t465) = strlen( t436 ).
                            t435 = |{ t436 }{ t437 }|.
                            DATA(t466) = |, |.
                            DATA(t467) = strlen( t435 ).
                            t434 = |{ t435 }{ t466 }|.
                            DATA(t468) = VALUE string( ).
                            DATA t469 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t469.
                            DATA t470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t470.
                            DATA t471 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            CLEAR t471.
                            DATA t472 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            CLEAR t472.
                            DATA t473 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t473.
                            DATA(t474) = t367.
                            t473 = t474.
                            DATA t475 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            CLEAR t475.
                            DATA(t476) = VALUE abap_bool( ).
                            DATA(t477) = t473.
                            IF t477 IS INITIAL.
                              t476 = abap_true.
                            ENDIF.
                            IF t476 = abap_true.
                              DATA t478 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              CLEAR t478.
                              t475 = t478.
                            ELSE.
                              DATA t479 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              CLEAR t479.
                              DATA t480 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t480.
                              DATA(t481) = t473.
                              t480 = t481.
                              t479 = t480->zlnt_builtin_clas_3f891b097658( ).
                              t475 = t479.
                            ENDIF.
                            t472 = t475.
                            t471 = t472.
                            DATA t482 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t482.
                            DATA(t483) = VALUE abap_bool( ).
                            DATA(t484) = t471.
                            IF t484 IS INITIAL.
                              t483 = abap_true.
                            ENDIF.
                            IF t483 = abap_true.
                              DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t485.
                              t482 = t485.
                            ELSE.
                              DATA(t486) = VALUE string( ).
                              DATA t487 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              CLEAR t487.
                              DATA(t488) = t471.
                              t487 = t488.
                              t486 = t487->name.
                              DATA(t489) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t489->has = abap_true.
                              t489->value = t486.
                              t482 = t489.
                            ENDIF.
                            t470 = t482.
                            t469 = t470.
                            DATA(t490) = VALUE string( ).
                            DATA(t491) = VALUE abap_bool( ).
                            DATA(t492) = t469.
                            IF t492 IS INITIAL.
                              t491 = abap_true.
                            ELSEIF t492->has = abap_false.
                              t491 = abap_true.
                            ENDIF.
                            IF t491 = abap_true.
                              DATA(t493) = |undefined|.
                              t490 = t493.
                            ELSE.
                              DATA(t494) = VALUE string( ).
                              DATA(t495) = t469.
                              t494 = t495->value.
                              t490 = t494.
                            ENDIF.
                            t468 = t490.
                            DATA(t496) = strlen( t434 ).
                            t433 = |{ t434 }{ t468 }|.
                            DATA(t497) = ||.
                            DATA(t498) = strlen( t433 ).
                            t432 = |{ t433 }{ t497 }|.
                            t431 = t432.
                            DATA t499 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            CLEAR t499.
                            DATA(t500) = t2.
                            t499 = t500->issues.
                            DATA t501 TYPE REF TO zcl_lnt_issue.
                            CLEAR t501.
                            DATA(t502) = t2.
                            DATA t503 TYPE REF TO zcl_lnt_abstract_token.
                            CLEAR t503.
                            DATA t504 TYPE REF TO zcl_lnt_expression_node.
                            CLEAR t504.
                            DATA(t505) = t1.
                            t504 = t505.
                            t503 = t504->get_first_token( ).
                            DATA(t506) = t431.
                            DATA t507 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                            CLEAR t507.
                            t501 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t502 i_token = t503 i_message_26cb = t506 i_fix = t507 ).
                            t499->load( ).
                            APPEND t501 TO t499->items.
                            t499->save( ).
                            DATA t508 TYPE REF TO zcl_lnt_void_type.
                            CLEAR t508.
                            DATA t509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t509.
                            DATA(t510) = abap_true.
                            IF t510 = abap_true.
                              DATA(t511) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                              DATA(t512) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t512->has = abap_true.
                              t512->value = t511.
                              t509 = t512.
                            ELSE.
                              DATA t513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t513.
                              t509 = t513.
                            ENDIF.
                            DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t514.
                            t508 = zcl_lnt_void_type=>get_db65( i_voided = t509 i_qualified_name = t514 ).
                            result = t508.
                            RETURN.
                          ELSE.
                            DATA(t515) = VALUE abap_bool( ).
                            DATA(t516) = VALUE abap_bool( ).
                            DATA t517 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            CLEAR t517.
                            DATA t518 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t518.
                            DATA(t519) = t361.
                            t518 = t519.
                            DATA t520 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            CLEAR t520.
                            DATA(t521) = VALUE abap_bool( ).
                            DATA(t522) = t518.
                            IF t522 IS INITIAL.
                              t521 = abap_true.
                            ENDIF.
                            IF t521 = abap_true.
                              DATA t523 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                              CLEAR t523.
                              t520 = t523.
                            ELSE.
                              DATA(t524) = VALUE abap_bool( ).
                              DATA t525 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t525.
                              DATA(t526) = t518.
                              t525 = t526.
                              t524 = t525->is_generic( ).
                              DATA(t527) = NEW zlnt_runtime_opti_7f2541396f43( ).
                              t527->has = abap_true.
                              t527->value = t524.
                              t520 = t527.
                            ENDIF.
                            t517 = t520.
                            IF t517 IS BOUND.
                              IF t517->has = abap_true.
                                t516 = xsdbool( t517->value IS NOT INITIAL ).
                              ENDIF.
                            ENDIF.
                            t515 = t516.
                            IF t516 = abap_true.
                              DATA(t528) = VALUE abap_bool( ).
                              DATA(t529) = t375.
                              DATA t530 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t530.
                              DATA(t531) = abap_true.
                              IF t531 = abap_true.
                                DATA(t532) = |#|.
                                DATA(t533) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                t533->has = abap_true.
                                t533->value = t532.
                                t530 = t533.
                              ELSE.
                                DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t534.
                                t530 = t534.
                              ENDIF.
                              DATA(t535) = VALUE abap_bool( ).
                              DATA(t536) = VALUE abap_bool( ).
                              IF t529 IS BOUND.
                                t535 = t529->has.
                              ENDIF.
                              IF t530 IS BOUND.
                                t536 = t530->has.
                              ENDIF.
                              IF t535 = t536.
                                IF t535 = abap_false.
                                  t528 = abap_true.
                                ELSEIF t529->value = t530->value.
                                  t528 = abap_true.
                                ENDIF.
                              ENDIF.
                              IF t528 = abap_true.
                                t528 = abap_false.
                              ELSE.
                                t528 = abap_true.
                              ENDIF.
                              t515 = t528.
                            ENDIF.
                            IF t515 = abap_true.
                              DATA(t537) = VALUE string( ).
                              DATA(t538) = |Cannot CONV to generic type|.
                              t537 = t538.
                              DATA t539 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                              CLEAR t539.
                              DATA(t540) = t2.
                              t539 = t540->issues.
                              DATA t541 TYPE REF TO zcl_lnt_issue.
                              CLEAR t541.
                              DATA(t542) = t2.
                              DATA t543 TYPE REF TO zcl_lnt_abstract_token.
                              CLEAR t543.
                              DATA t544 TYPE REF TO zcl_lnt_expression_node.
                              CLEAR t544.
                              DATA(t545) = t1.
                              t544 = t545.
                              t543 = t544->get_first_token( ).
                              DATA(t546) = t537.
                              DATA t547 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                              CLEAR t547.
                              t541 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t542 i_token = t543 i_message_26cb = t546 i_fix = t547 ).
                              t539->load( ).
                              APPEND t541 TO t539->items.
                              t539->save( ).
                              DATA t548 TYPE REF TO zcl_lnt_void_type.
                              CLEAR t548.
                              DATA t549 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t549.
                              DATA(t550) = abap_true.
                              IF t550 = abap_true.
                                DATA(t551) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                                DATA(t552) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                t552->has = abap_true.
                                t552->value = t551.
                                t549 = t552.
                              ELSE.
                                DATA t553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t553.
                                t549 = t553.
                              ENDIF.
                              DATA t554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t554.
                              t548 = zcl_lnt_void_type=>get_db65( i_voided = t549 i_qualified_name = t554 ).
                              result = t548.
                              RETURN.
                            ENDIF.
                          ENDIF.
                          DATA t555 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t555.
                          DATA(t556) = t1.
                          t555 = t556.
                          DATA(t557) = t2.
                          DATA(t558) = t361.
                          zcl_lnt_sy_source=>add_if_inferred( i_node = t555 i_input_967e = t557 i_inferred_type = t558 ).
                          DATA(t559) = t36.
                          DATA(t560) = t2.
                          zcl_lnt_sy_source=>traverse_remaining_children( i_children_9020 = t559 i_input_967e = t560 ).
                          DATA(t561) = t361.
                          result = t561.
                          RETURN.
                        ELSE.
                          DATA(t562) = VALUE abap_bool( ).
                          DATA(t563) = t61.
                          DATA(t564) = |REF|.
                          t562 = xsdbool( t563 = t564 ).
                          IF t562 = abap_true.
                            DATA t565 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t565.
                            DATA t566 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t566.
                            DATA t567 TYPE REF TO zcl_lnt_expression_node.
                            CLEAR t567.
                            DATA(t568) = t1.
                            t567 = t568.
                            DATA(t569) = t2.
                            DATA(t570) = t3.
                            t566 = zcl_lnt_sy_source=>determine_type( i_node = t567 i_input_967e = t569 i_target_type = t570 ).
                            t565 = t566.
                            DATA t571 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t571.
                            DATA t572 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t572.
                            DATA t573 TYPE REF TO zcl_lnt_expression_node.
                            CLEAR t573.
                            DATA t574 TYPE REF TO zcl_lnt_expression_node.
                            CLEAR t574.
                            DATA(t575) = t1.
                            t574 = t575.
                            DATA(t576) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
                            t573 = t574->find_direct_expression( i_type_9913 = t576 ).
                            DATA(t577) = t2.
                            DATA t578 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t578.
                            DATA t579 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            CLEAR t579.
                            DATA t580 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            CLEAR t580.
                            DATA t581 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            CLEAR t581.
                            t572 = zcl_lnt_sy_source=>run_syntax( i_node = t573 i_input_967e = t577 i_target_type = t578 i_write_reference = t579 i_allow_generic_deference = t580 i_read_reference = t581 ).
                            t571 = t572.
                            DATA(t582) = VALUE abap_bool( ).
                            DATA(t583) = VALUE abap_bool( ).
                            DATA(t584) = VALUE abap_bool( ).
                            DATA(t585) = t565.
                            t584 = xsdbool( t585 IS BOUND ).
                            t583 = t584.
                            IF t584 = abap_true.
                              DATA(t586) = VALUE abap_bool( ).
                              DATA t587 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t587.
                              DATA(t588) = t565.
                              t587 = t588.
                              t586 = t587->is_generic( ).
                              t583 = t586.
                            ENDIF.
                            t582 = t583.
                            IF t583 = abap_true.
                              DATA(t589) = VALUE abap_bool( ).
                              DATA(t590) = t571.
                              t589 = xsdbool( t590 IS BOUND ).
                              t582 = t589.
                            ENDIF.
                            IF t582 = abap_true.
                              DATA t591 TYPE REF TO zcl_lnt_data_reference.
                              CLEAR t591.
                              DATA t592 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t592.
                              DATA(t593) = t571.
                              t592 = t593.
                              DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t594.
                              t591 = NEW zcl_lnt_data_reference( i_type_9913 = t592 i_qualified_name = t594 ).
                              t565 = t591.
                            ELSE.
                              DATA(t595) = VALUE abap_bool( ).
                              DATA(t596) = VALUE abap_bool( ).
                              DATA t597 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t597.
                              DATA(t598) = t565.
                              t597 = t598.
                              DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t599.
                              DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t600.
                              t599 = t600.
                              DATA(t601) = VALUE abap_bool( ).
                              DATA(t602) = t597.
                              IF t602 IS INITIAL.
                                t601 = abap_true.
                              ENDIF.
                              t596 = t601.
                              t595 = t596.
                              IF t596 = abap_true.
                                DATA(t603) = VALUE abap_bool( ).
                                DATA(t604) = t571.
                                t603 = xsdbool( t604 IS BOUND ).
                                t595 = t603.
                              ENDIF.
                              IF t595 = abap_true.
                                DATA(t605) = VALUE abap_bool( ).
                                DATA(t606) = t571.
                                t605 = xsdbool( t606 IS BOUND AND t606 IS INSTANCE OF zcl_lnt_any_type ).
                                IF t605 = abap_true.
                                  DATA t607 TYPE REF TO zcl_lnt_data_reference.
                                  CLEAR t607.
                                  DATA t608 TYPE REF TO zcl_lnt_void_type.
                                  CLEAR t608.
                                  DATA t609 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t609.
                                  DATA(t610) = abap_true.
                                  IF t610 = abap_true.
                                    DATA(t611) = |REF-ANY|.
                                    DATA(t612) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                    t612->has = abap_true.
                                    t612->value = t611.
                                    t609 = t612.
                                  ELSE.
                                    DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    CLEAR t613.
                                    t609 = t613.
                                  ENDIF.
                                  DATA t614 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t614.
                                  t608 = zcl_lnt_void_type=>get_db65( i_voided = t609 i_qualified_name = t614 ).
                                  DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t615.
                                  t607 = NEW zcl_lnt_data_reference( i_type_9913 = t608 i_qualified_name = t615 ).
                                  t565 = t607.
                                ELSE.
                                  DATA t616 TYPE REF TO zcl_lnt_data_reference.
                                  CLEAR t616.
                                  DATA t617 TYPE REF TO zcl_lnt_abstract_type.
                                  CLEAR t617.
                                  DATA(t618) = t571.
                                  t617 = t618.
                                  DATA t619 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t619.
                                  t616 = NEW zcl_lnt_data_reference( i_type_9913 = t617 i_qualified_name = t619 ).
                                  t565 = t616.
                                ENDIF.
                              ELSE.
                                DATA(t620) = VALUE abap_bool( ).
                                DATA(t621) = VALUE abap_bool( ).
                                DATA(t622) = t565.
                                t621 = xsdbool( t622 IS BOUND ).
                                t620 = t621.
                                IF t621 = abap_true.
                                  DATA(t623) = VALUE abap_bool( ).
                                  DATA t624 TYPE REF TO zcl_lnt_abstract_type.
                                  CLEAR t624.
                                  DATA(t625) = t3.
                                  t624 = t625.
                                  DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                  CLEAR t626.
                                  DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                  CLEAR t627.
                                  t626 = t627.
                                  DATA(t628) = VALUE abap_bool( ).
                                  DATA(t629) = t624.
                                  IF t629 IS INITIAL.
                                    t628 = abap_true.
                                  ENDIF.
                                  t623 = t628.
                                  t620 = t623.
                                ENDIF.
                                IF t620 = abap_true.
                                  DATA t630 TYPE REF TO zcl_lnt_data_reference.
                                  CLEAR t630.
                                  DATA t631 TYPE REF TO zcl_lnt_abstract_type.
                                  CLEAR t631.
                                  DATA(t632) = t565.
                                  t631 = t632.
                                  DATA t633 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t633.
                                  t630 = NEW zcl_lnt_data_reference( i_type_9913 = t631 i_qualified_name = t633 ).
                                  t565 = t630.
                                ENDIF.
                              ENDIF.
                            ENDIF.
                            DATA t634 TYPE REF TO zcl_lnt_expression_node.
                            CLEAR t634.
                            DATA(t635) = t1.
                            t634 = t635.
                            DATA(t636) = t2.
                            DATA(t637) = t565.
                            zcl_lnt_sy_source=>add_if_inferred( i_node = t634 i_input_967e = t636 i_inferred_type = t637 ).
                            DATA(t638) = t565.
                            result = t638.
                            RETURN.
                          ELSE.
                            DATA(t639) = VALUE abap_bool( ).
                            DATA(t640) = t61.
                            DATA(t641) = |FILTER|.
                            t639 = xsdbool( t640 = t641 ).
                            IF t639 = abap_true.
                              DATA t642 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t642.
                              DATA t643 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t643.
                              DATA t644 TYPE REF TO zcl_lnt_expression_node.
                              CLEAR t644.
                              DATA(t645) = t1.
                              t644 = t645.
                              DATA(t646) = t2.
                              DATA(t647) = t3.
                              t643 = zcl_lnt_sy_source=>determine_type( i_node = t644 i_input_967e = t646 i_target_type = t647 ).
                              t642 = t643.
                              DATA t648 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t648.
                              DATA t649 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t649.
                              DATA t650 TYPE REF TO zcl_lnt_expression_node.
                              CLEAR t650.
                              DATA t651 TYPE REF TO zcl_lnt_expression_node.
                              CLEAR t651.
                              DATA(t652) = t1.
                              t651 = t652.
                              DATA(t653) = zlnt_runtime_desc_78196487750d=>zlnt_member_d174_c8ac82068417.
                              t650 = t651->find_direct_expression( i_type_9913 = t653 ).
                              DATA(t654) = t2.
                              DATA(t655) = t642.
                              t649 = zcl_lnt_sy_filter_body=>run_syntax( i_node = t650 i_input_967e = t654 i_target_type = t655 ).
                              t648 = t649.
                              DATA(t656) = VALUE abap_bool( ).
                              DATA(t657) = VALUE abap_bool( ).
                              DATA t658 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t658.
                              DATA(t659) = t642.
                              t658 = t659.
                              DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t660.
                              DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t661.
                              t660 = t661.
                              DATA(t662) = VALUE abap_bool( ).
                              DATA(t663) = t658.
                              IF t663 IS INITIAL.
                                t662 = abap_true.
                              ENDIF.
                              t657 = t662.
                              t656 = t657.
                              IF t657 = abap_false.
                                DATA(t664) = VALUE abap_bool( ).
                                DATA t665 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t665.
                                DATA(t666) = t642.
                                t665 = t666.
                                t664 = t665->is_generic( ).
                                t656 = t664.
                              ENDIF.
                              IF t656 = abap_true.
                                DATA t667 TYPE REF TO zcl_lnt_expression_node.
                                CLEAR t667.
                                DATA(t668) = t1.
                                t667 = t668.
                                DATA(t669) = t2.
                                DATA(t670) = t648.
                                zcl_lnt_sy_source=>add_if_inferred( i_node = t667 i_input_967e = t669 i_inferred_type = t670 ).
                              ELSE.
                                DATA t671 TYPE REF TO zcl_lnt_expression_node.
                                CLEAR t671.
                                DATA(t672) = t1.
                                t671 = t672.
                                DATA(t673) = t2.
                                DATA t674 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t674.
                                DATA(t675) = abap_true.
                                IF t675 = abap_true.
                                  DATA t676 TYPE REF TO zcl_lnt_abstract_type.
                                  CLEAR t676.
                                  DATA(t677) = t642.
                                  t676 = t677.
                                  t674 = t676.
                                ELSE.
                                  DATA t678 TYPE REF TO zcl_lnt_abstract_type.
                                  CLEAR t678.
                                  t674 = t678.
                                ENDIF.
                                zcl_lnt_sy_source=>add_if_inferred( i_node = t671 i_input_967e = t673 i_inferred_type = t674 ).
                              ENDIF.
                              DATA(t679) = VALUE abap_bool( ).
                              DATA(t680) = VALUE abap_bool( ).
                              DATA(t681) = t642.
                              t680 = xsdbool( t681 IS BOUND ).
                              t679 = t680.
                              IF t680 = abap_true.
                                DATA(t682) = VALUE abap_bool( ).
                                DATA(t683) = VALUE abap_bool( ).
                                DATA t684 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t684.
                                DATA(t685) = t642.
                                t684 = t685.
                                t683 = xsdbool( t684 IS BOUND AND t684 IS INSTANCE OF zcl_lnt_unknown_type ).
                                t682 = xsdbool( t683 = abap_false ).
                                t679 = t682.
                              ENDIF.
                              IF t679 = abap_true.
                                DATA t686 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t686.
                                DATA(t687) = abap_true.
                                IF t687 = abap_true.
                                  DATA t688 TYPE REF TO zcl_lnt_abstract_type.
                                  CLEAR t688.
                                  DATA(t689) = t642.
                                  t688 = t689.
                                  t686 = t688.
                                ELSE.
                                  DATA t690 TYPE REF TO zcl_lnt_abstract_type.
                                  CLEAR t690.
                                  t686 = t690.
                                ENDIF.
                                result = t686.
                                RETURN.
                              ELSE.
                                DATA(t691) = t648.
                                result = t691.
                                RETURN.
                              ENDIF.
                            ELSE.
                              DATA(t692) = VALUE abap_bool( ).
                              DATA(t693) = t61.
                              DATA(t694) = |CORRESPONDING|.
                              t692 = xsdbool( t693 = t694 ).
                              IF t692 = abap_true.
                                DATA t695 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t695.
                                DATA t696 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t696.
                                DATA t697 TYPE REF TO zcl_lnt_expression_node.
                                CLEAR t697.
                                DATA(t698) = t1.
                                t697 = t698.
                                DATA(t699) = t2.
                                DATA(t700) = t3.
                                t696 = zcl_lnt_sy_source=>determine_type( i_node = t697 i_input_967e = t699 i_target_type = t700 ).
                                t695 = t696.
                                DATA t701 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t701.
                                DATA t702 TYPE REF TO zcl_lnt_expression_node.
                                CLEAR t702.
                                DATA t703 TYPE REF TO zcl_lnt_expression_node.
                                CLEAR t703.
                                DATA(t704) = t1.
                                t703 = t704.
                                DATA(t705) = zlnt_runtime_desc_78196487750d=>zlnt_member_d146_4e7b86c7b080.
                                t702 = t703->find_direct_expression( i_type_9913 = t705 ).
                                DATA(t706) = t2.
                                DATA(t707) = t695.
                                t701 = zcl_lnt_sy_corresponding_body=>run_syntax( i_node = t702 i_input_967e = t706 i_target_type = t707 ).
                                DATA t708 TYPE REF TO zcl_lnt_expression_node.
                                CLEAR t708.
                                DATA(t709) = t1.
                                t708 = t709.
                                DATA(t710) = t2.
                                DATA(t711) = t695.
                                zcl_lnt_sy_source=>add_if_inferred( i_node = t708 i_input_967e = t710 i_inferred_type = t711 ).
                                DATA(t712) = t695.
                                result = t712.
                                RETURN.
                              ELSE.
                                DATA(t713) = VALUE abap_bool( ).
                                DATA(t714) = t61.
                                DATA(t715) = |EXACT|.
                                t713 = xsdbool( t714 = t715 ).
                                IF t713 = abap_true.
                                  DATA t716 TYPE REF TO zcl_lnt_abstract_type.
                                  CLEAR t716.
                                  DATA t717 TYPE REF TO zcl_lnt_abstract_type.
                                  CLEAR t717.
                                  DATA t718 TYPE REF TO zcl_lnt_expression_node.
                                  CLEAR t718.
                                  DATA(t719) = t1.
                                  t718 = t719.
                                  DATA(t720) = t2.
                                  DATA(t721) = t3.
                                  t717 = zcl_lnt_sy_source=>determine_type( i_node = t718 i_input_967e = t720 i_target_type = t721 ).
                                  t716 = t717.
                                  DATA t722 TYPE REF TO zcl_lnt_abstract_type.
                                  CLEAR t722.
                                  DATA t723 TYPE REF TO zcl_lnt_expression_node.
                                  CLEAR t723.
                                  DATA t724 TYPE REF TO zcl_lnt_expression_node.
                                  CLEAR t724.
                                  DATA(t725) = t1.
                                  t724 = t725.
                                  DATA(t726) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
                                  t723 = t724->find_direct_expression( i_type_9913 = t726 ).
                                  DATA(t727) = t2.
                                  DATA(t728) = t716.
                                  DATA t729 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  CLEAR t729.
                                  DATA t730 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  CLEAR t730.
                                  DATA t731 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  CLEAR t731.
                                  t722 = zcl_lnt_sy_source=>run_syntax( i_node = t723 i_input_967e = t727 i_target_type = t728 i_write_reference = t729 i_allow_generic_deference = t730 i_read_reference = t731 ).
                                  DATA t732 TYPE REF TO zcl_lnt_expression_node.
                                  CLEAR t732.
                                  DATA(t733) = t1.
                                  t732 = t733.
                                  DATA(t734) = t2.
                                  DATA(t735) = t716.
                                  zcl_lnt_sy_source=>add_if_inferred( i_node = t732 i_input_967e = t734 i_inferred_type = t735 ).
                                  DATA(t736) = t716.
                                  result = t736.
                                  RETURN.
                                ELSE.
                                  DATA(t737) = VALUE abap_bool( ).
                                  DATA(t738) = t61.
                                  DATA(t739) = |VALUE|.
                                  t737 = xsdbool( t738 = t739 ).
                                  IF t737 = abap_true.
                                    DATA t740 TYPE REF TO zcl_lnt_abstract_type.
                                    CLEAR t740.
                                    DATA t741 TYPE REF TO zcl_lnt_abstract_type.
                                    CLEAR t741.
                                    DATA t742 TYPE REF TO zcl_lnt_expression_node.
                                    CLEAR t742.
                                    DATA(t743) = t1.
                                    t742 = t743.
                                    DATA(t744) = t2.
                                    DATA(t745) = t3.
                                    t741 = zcl_lnt_sy_source=>determine_type( i_node = t742 i_input_967e = t744 i_target_type = t745 ).
                                    t740 = t741.
                                    DATA t746 TYPE REF TO zcl_lnt_abstract_type.
                                    CLEAR t746.
                                    DATA t747 TYPE REF TO zcl_lnt_abstract_type.
                                    CLEAR t747.
                                    DATA t748 TYPE REF TO zcl_lnt_expression_node.
                                    CLEAR t748.
                                    DATA t749 TYPE REF TO zcl_lnt_expression_node.
                                    CLEAR t749.
                                    DATA(t750) = t1.
                                    t749 = t750.
                                    DATA(t751) = zlnt_runtime_desc_78196487750d=>zlnt_member_d280_c851733508cf.
                                    t748 = t749->find_direct_expression( i_type_9913 = t751 ).
                                    DATA(t752) = t2.
                                    DATA(t753) = t740.
                                    t747 = zcl_lnt_sy_value_body=>run_syntax( i_node = t748 i_input_967e = t752 i_target_type = t753 ).
                                    t746 = t747.
                                    DATA(t754) = VALUE abap_bool( ).
                                    DATA(t755) = VALUE abap_bool( ).
                                    DATA t756 TYPE REF TO zcl_lnt_abstract_type.
                                    CLEAR t756.
                                    DATA(t757) = t740.
                                    t756 = t757.
                                    DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                    CLEAR t758.
                                    DATA t759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                    CLEAR t759.
                                    t758 = t759.
                                    DATA(t760) = VALUE abap_bool( ).
                                    DATA(t761) = t756.
                                    IF t761 IS INITIAL.
                                      t760 = abap_true.
                                    ENDIF.
                                    t755 = t760.
                                    t754 = t755.
                                    IF t755 = abap_false.
                                      DATA(t762) = VALUE abap_bool( ).
                                      DATA t763 TYPE REF TO zcl_lnt_abstract_type.
                                      CLEAR t763.
                                      DATA(t764) = t740.
                                      t763 = t764.
                                      t762 = t763->is_generic( ).
                                      t754 = t762.
                                    ENDIF.
                                    IF t754 = abap_true.
                                      DATA t765 TYPE REF TO zcl_lnt_expression_node.
                                      CLEAR t765.
                                      DATA(t766) = t1.
                                      t765 = t766.
                                      DATA(t767) = t2.
                                      DATA(t768) = t746.
                                      zcl_lnt_sy_source=>add_if_inferred( i_node = t765 i_input_967e = t767 i_inferred_type = t768 ).
                                    ELSE.
                                      DATA t769 TYPE REF TO zcl_lnt_expression_node.
                                      CLEAR t769.
                                      DATA(t770) = t1.
                                      t769 = t770.
                                      DATA(t771) = t2.
                                      DATA t772 TYPE REF TO zcl_lnt_abstract_type.
                                      CLEAR t772.
                                      DATA(t773) = abap_true.
                                      IF t773 = abap_true.
                                        DATA t774 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t774.
                                        DATA(t775) = t740.
                                        t774 = t775.
                                        t772 = t774.
                                      ELSE.
                                        DATA t776 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t776.
                                        t772 = t776.
                                      ENDIF.
                                      zcl_lnt_sy_source=>add_if_inferred( i_node = t769 i_input_967e = t771 i_inferred_type = t772 ).
                                    ENDIF.
                                    DATA t777 TYPE REF TO zcl_lnt_abstract_type.
                                    CLEAR t777.
                                    DATA(t778) = VALUE abap_bool( ).
                                    DATA(t779) = t740.
                                    t778 = xsdbool( t779 IS BOUND ).
                                    IF t778 = abap_true.
                                      DATA t780 TYPE REF TO zcl_lnt_abstract_type.
                                      CLEAR t780.
                                      DATA(t781) = abap_true.
                                      IF t781 = abap_true.
                                        DATA t782 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t782.
                                        DATA(t783) = t740.
                                        t782 = t783.
                                        t780 = t782.
                                      ELSE.
                                        DATA t784 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t784.
                                        t780 = t784.
                                      ENDIF.
                                      t777 = t780.
                                    ELSE.
                                      DATA(t785) = t746.
                                      t777 = t785.
                                    ENDIF.
                                    result = t777.
                                    RETURN.
                                  ELSE.
                                    DATA t786 TYPE REF TO zcl_lnt_unknown_type.
                                    CLEAR t786.
                                    DATA(t787) = VALUE string( ).
                                    DATA(t788) = |todo, Source type |.
                                    DATA(t789) = t61.
                                    DATA(t790) = strlen( t788 ).
                                    t787 = |{ t788 }{ t789 }|.
                                    DATA t791 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    CLEAR t791.
                                    t786 = NEW zcl_lnt_unknown_type( i_error = t787 i_qualified_name = t791 ).
                                    result = t786.
                                    RETURN.
                                  ENDIF.
                                ENDIF.
                              ENDIF.
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ELSE.
      DATA(t792) = VALUE abap_bool( ).
      DATA(t793) = VALUE abap_bool( ).
      DATA t794 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t794.
      DATA(t795) = t45.
      t794 = t795.
      DATA t796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t796.
      DATA t797 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t797.
      t796 = t797.
      DATA(t798) = VALUE abap_bool( ).
      DATA(t799) = t794.
      IF t799 IS INITIAL.
        t798 = abap_true.
      ENDIF.
      t793 = t798.
      t792 = t793.
      IF t793 = abap_false.
        DATA(t800) = VALUE abap_bool( ).
        DATA(t801) = VALUE abap_bool( ).
        DATA(t802) = t45.
        t801 = xsdbool( t802 IS BOUND AND t802 IS INSTANCE OF zcl_lnt_expression_node ).
        t800 = xsdbool( t801 = abap_false ).
        t792 = t800.
      ENDIF.
      IF t792 = abap_true.
        DATA t803 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t803.
        result = t803.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t804 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t804.
    DATA t805 TYPE REF TO zcl_lnt_unknown_type.
    CLEAR t805.
    DATA(t806) = |todo, Source type|.
    DATA t807 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t807.
    t805 = NEW zcl_lnt_unknown_type( i_error = t806 i_qualified_name = t807 ).
    t804 = t805.
    DATA t808 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t808.
    DATA t809 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t809.
    CREATE OBJECT t809.
    t808 = t809.
    DATA(t810) = VALUE abap_bool( ).
    DATA(t811) = t6.
    t810 = t811->value.
    IF t810 = abap_true.
      DATA(t812) = t808.
      DATA(t813) = |Read From|.
      t812->load( ).
      APPEND t813 TO t812->items.
      t812->save( ).
    ENDIF.
    DATA(t814) = VALUE abap_bool( ).
    DATA(t815) = t4.
    t814 = t815->value.
    IF t814 = abap_true.
      DATA(t816) = t808.
      DATA(t817) = |Write To|.
      t816->load( ).
      APPEND t817 TO t816->items.
      t816->save( ).
    ENDIF.
    DATA(t818) = VALUE abap_bool( ).
    DATA(t819) = abap_false.
    t818 = t819.
    DATA(t820) = VALUE abap_bool( ).
    DATA(t821) = abap_false.
    t820 = t821.
    DATA(t822) = VALUE abap_bool( ).
    DATA(t823) = abap_false.
    t822 = t823.
    DO.
      DATA(t824) = VALUE abap_bool( ).
      DATA(t825) = VALUE i( ).
      DATA(t826) = t36.
      t826->load( ).
      t825 = lines( t826->items ).
      DATA(t827) = 0.
      t824 = xsdbool( t825 >= t827 ).
      IF t824 = abap_false.
        EXIT.
      ENDIF.
      DATA(t828) = VALUE abap_bool( ).
      DATA(t829) = t45.
      t828 = xsdbool( t829 IS BOUND AND t829 IS INSTANCE OF zcl_lnt_expression_node ).
      IF t828 = abap_true.
        DATA t830 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t830.
        DATA t831 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t831.
        DATA t832 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t832.
        DATA(t833) = t45.
        DATA t834 TYPE REF TO object.
        CLEAR t834.
        t834 = t833.
        t832 ?= t834.
        t831 = t832->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t830 = t831.
        DATA(t835) = VALUE abap_bool( ).
        DATA(t836) = t830.
        t835 = xsdbool( t836 IS BOUND AND t836 IS INSTANCE OF zcl_lnt_st_method_call_chain ).
        IF t835 = abap_true.
          DATA t837 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t837.
          DATA t838 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t838.
          DATA t839 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t839.
          DATA(t840) = t45.
          DATA t841 TYPE REF TO object.
          CLEAR t841.
          t841 = t840.
          t839 ?= t841.
          DATA(t842) = t2.
          DATA(t843) = t3.
          t838 = zcl_lnt_sy_method_call_chain=>run_syntax( i_node = t839 i_input_967e = t842 i_target_type = t843 ).
          t837 = t838.
          DATA t844 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t844.
          DATA(t845) = VALUE abap_bool( ).
          DATA(t846) = t822.
          DATA(t847) = abap_true.
          t845 = xsdbool( t846 = t847 ).
          IF t845 = abap_true.
            DATA t848 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t848.
            DATA(t849) = t804.
            DATA(t850) = t837.
            DATA t851 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t851.
            DATA(t852) = abap_true.
            IF t852 = abap_true.
              DATA(t853) = abap_true.
              DATA(t854) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t854->has = abap_true.
              t854->value = t853.
              t851 = t854.
            ELSE.
              DATA t855 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t855.
              t851 = t855.
            ENDIF.
            t848 = zcl_lnt_sy_source=>infer( i_context = t849 i_found = t850 i_arithmetic = t851 ).
            t844 = t848.
          ELSE.
            DATA(t856) = t837.
            t844 = t856.
          ENDIF.
          t804 = t844.
          DATA(t857) = VALUE abap_bool( ).
          DATA t858 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t858.
          DATA(t859) = t804.
          t858 = t859.
          DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t860.
          DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t861.
          t860 = t861.
          DATA(t862) = VALUE abap_bool( ).
          DATA(t863) = t858.
          IF t863 IS INITIAL.
            t862 = abap_true.
          ENDIF.
          t857 = t862.
          IF t857 = abap_true.
            DATA(t864) = VALUE string( ).
            DATA(t865) = |Method has no RETURNING value|.
            t864 = t865.
            DATA t866 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t866.
            DATA(t867) = t2.
            t866 = t867->issues.
            DATA t868 TYPE REF TO zcl_lnt_issue.
            CLEAR t868.
            DATA(t869) = t2.
            DATA t870 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t870.
            DATA t871 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t871.
            DATA(t872) = t1.
            t871 = t872.
            t870 = t871->get_first_token( ).
            DATA(t873) = t864.
            DATA t874 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t874.
            t868 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t869 i_token = t870 i_message_26cb = t873 i_fix = t874 ).
            t866->load( ).
            APPEND t868 TO t866->items.
            t866->save( ).
            DATA t875 TYPE REF TO zcl_lnt_void_type.
            CLEAR t875.
            DATA t876 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t876.
            DATA(t877) = abap_true.
            IF t877 = abap_true.
              DATA(t878) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t879) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t879->has = abap_true.
              t879->value = t878.
              t876 = t879.
            ELSE.
              DATA t880 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t880.
              t876 = t880.
            ENDIF.
            DATA t881 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t881.
            t875 = zcl_lnt_void_type=>get_db65( i_voided = t876 i_qualified_name = t881 ).
            result = t875.
            RETURN.
          ENDIF.
        ELSE.
          DATA(t882) = VALUE abap_bool( ).
          DATA(t883) = t830.
          t882 = xsdbool( t883 IS BOUND AND t883 IS INSTANCE OF zcl_lnt_st_field_chain ).
          IF t882 = abap_true.
            DATA t884 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t884.
            DATA t885 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t885.
            DATA t886 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t886.
            DATA(t887) = t45.
            DATA t888 TYPE REF TO object.
            CLEAR t888.
            t888 = t887.
            t886 ?= t888.
            DATA(t889) = t2.
            DATA t890 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t890.
            DATA(t891) = abap_true.
            IF t891 = abap_true.
              DATA t892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t892.
              DATA(t893) = t808.
              CLEAR t892.
              IF t893 IS BOUND.
                DATA t894 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t894.
                DATA t895 TYPE REF TO object.
                CLEAR t895.
                CLEAR t894.
                t895 = t893.
                TRY.
                    t892 ?= t895.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t892 IS NOT BOUND.
                  TRY.
                      t894 ?= t893.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t894 IS BOUND.
                    t892 = t894->source( ).
                  ENDIF.
                  IF t892 IS NOT BOUND.
                    CREATE OBJECT t892.
                    t892->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t892->oval = t893.
                  ENDIF.
                ENDIF.
              ENDIF.
              t890 = t892.
            ELSE.
              DATA t896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t896.
              t890 = t896.
            ENDIF.
            DATA t897 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t897.
            DATA(t898) = abap_true.
            IF t898 = abap_true.
              DATA(t899) = VALUE abap_bool( ).
              DATA(t900) = t5.
              t899 = t900->value.
              DATA(t901) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t901->has = abap_true.
              t901->value = t899.
              t897 = t901.
            ELSE.
              DATA t902 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t902.
              t897 = t902.
            ENDIF.
            t885 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t886 i_input_967e = t889 i_ref_type = t890 i_allow_generic_deference = t897 ).
            t884 = t885.
            DATA t903 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t903.
            DATA(t904) = VALUE abap_bool( ).
            DATA(t905) = t822.
            DATA(t906) = abap_true.
            t904 = xsdbool( t905 = t906 ).
            IF t904 = abap_true.
              DATA t907 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t907.
              DATA(t908) = t804.
              DATA(t909) = t884.
              DATA t910 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t910.
              DATA(t911) = abap_true.
              IF t911 = abap_true.
                DATA(t912) = abap_true.
                DATA(t913) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t913->has = abap_true.
                t913->value = t912.
                t910 = t913.
              ELSE.
                DATA t914 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t914.
                t910 = t914.
              ENDIF.
              t907 = zcl_lnt_sy_source=>infer( i_context = t908 i_found = t909 i_arithmetic = t910 ).
              t903 = t907.
            ELSE.
              DATA(t915) = t884.
              t903 = t915.
            ENDIF.
            t804 = t903.
          ELSE.
            DATA(t916) = VALUE abap_bool( ).
            DATA(t917) = t830.
            t916 = xsdbool( t917 IS BOUND AND t917 IS INSTANCE OF zcl_lnt_st_string_template ).
            IF t916 = abap_true.
              DATA t918 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t918.
              DATA(t919) = abap_true.
              IF t919 = abap_true.
                DATA t920 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t920.
                DATA t921 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t921.
                DATA(t922) = t45.
                DATA t923 TYPE REF TO object.
                CLEAR t923.
                t923 = t922.
                t921 ?= t923.
                DATA(t924) = t2.
                t920 = zcl_lnt_sy_string_template=>run_syntax( i_node = t921 i_input_967e = t924 ).
                t918 = t920.
              ELSE.
                DATA t925 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t925.
                t918 = t925.
              ENDIF.
              t804 = t918.
            ELSE.
              DATA(t926) = VALUE abap_bool( ).
              DATA(t927) = t830.
              t926 = xsdbool( t927 IS BOUND AND t927 IS INSTANCE OF zcl_lnt_st_source ).
              IF t926 = abap_true.
                DATA t928 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t928.
                DATA t929 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t929.
                DATA t930 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t930.
                DATA(t931) = abap_true.
                IF t931 = abap_true.
                  DATA t932 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t932.
                  DATA(t933) = t45.
                  DATA t934 TYPE REF TO object.
                  CLEAR t934.
                  t934 = t933.
                  t932 ?= t934.
                  t930 = t932.
                ELSE.
                  DATA t935 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t935.
                  t930 = t935.
                ENDIF.
                DATA(t936) = t2.
                DATA t937 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t937.
                DATA t938 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t938.
                DATA t939 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t939.
                DATA t940 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t940.
                t929 = zcl_lnt_sy_source=>run_syntax( i_node = t930 i_input_967e = t936 i_target_type = t937 i_write_reference = t938 i_allow_generic_deference = t939 i_read_reference = t940 ).
                t928 = t929.
                DATA t941 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t941.
                DATA(t942) = t804.
                DATA(t943) = t928.
                DATA t944 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t944.
                DATA(t945) = abap_true.
                IF t945 = abap_true.
                  DATA(t946) = t822.
                  DATA(t947) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t947->has = abap_true.
                  t947->value = t946.
                  t944 = t947.
                ELSE.
                  DATA t948 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t948.
                  t944 = t948.
                ENDIF.
                t941 = zcl_lnt_sy_source=>infer( i_context = t942 i_found = t943 i_arithmetic = t944 ).
                t804 = t941.
              ELSE.
                DATA(t949) = VALUE abap_bool( ).
                DATA(t950) = t830.
                t949 = xsdbool( t950 IS BOUND AND t950 IS INSTANCE OF zcl_lnt_st_expres_constant ).
                IF t949 = abap_true.
                  DATA t951 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t951.
                  DATA t952 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t952.
                  DATA t953 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t953.
                  DATA(t954) = t45.
                  DATA t955 TYPE REF TO object.
                  CLEAR t955.
                  t955 = t954.
                  t953 ?= t955.
                  t952 = zcl_lnt_sy_expres_constant=>run_syntax( i_node = t953 ).
                  t951 = t952.
                  DATA t956 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t956.
                  DATA(t957) = t804.
                  DATA t958 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t958.
                  DATA(t959) = abap_true.
                  IF t959 = abap_true.
                    DATA(t960) = t951.
                    t958 = t960.
                  ELSE.
                    DATA t961 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t961.
                    t958 = t961.
                  ENDIF.
                  DATA t962 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t962.
                  DATA(t963) = abap_true.
                  IF t963 = abap_true.
                    DATA(t964) = t822.
                    DATA(t965) = NEW zlnt_runtime_opti_7f2541396f43( ).
                    t965->has = abap_true.
                    t965->value = t964.
                    t962 = t965.
                  ELSE.
                    DATA t966 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t966.
                    t962 = t966.
                  ENDIF.
                  t956 = zcl_lnt_sy_source=>infer( i_context = t957 i_found = t958 i_arithmetic = t962 ).
                  t804 = t956.
                ELSE.
                  DATA(t967) = VALUE abap_bool( ).
                  DATA(t968) = t830.
                  t967 = xsdbool( t968 IS BOUND AND t968 IS INSTANCE OF zcl_lnt_st_dereference ).
                  IF t967 = abap_true.
                    DATA t969 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t969.
                    DATA t970 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t970.
                    DATA(t971) = t45.
                    DATA t972 TYPE REF TO object.
                    CLEAR t972.
                    t972 = t971.
                    t970 ?= t972.
                    DATA(t973) = t804.
                    DATA(t974) = t2.
                    t969 = zcl_lnt_sy_dereference=>run_syntax( i_node = t970 i_type_9913 = t973 i_input_967e = t974 ).
                    t804 = t969.
                  ELSE.
                    DATA(t975) = VALUE abap_bool( ).
                    DATA(t976) = t830.
                    t975 = xsdbool( t976 IS BOUND AND t976 IS INSTANCE OF zcl_lnt_st_component_chain ).
                    IF t975 = abap_true.
                      DATA t977 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t977.
                      DATA(t978) = t804.
                      DATA t979 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t979.
                      DATA(t980) = t45.
                      DATA t981 TYPE REF TO object.
                      CLEAR t981.
                      t981 = t980.
                      t979 ?= t981.
                      DATA(t982) = t2.
                      t977 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t978 i_node = t979 i_input_967e = t982 ).
                      t804 = t977.
                    ELSE.
                      DATA(t983) = VALUE abap_bool( ).
                      DATA(t984) = t830.
                      t983 = xsdbool( t984 IS BOUND AND t984 IS INSTANCE OF zcl_lnt_arith_operator ).
                      IF t983 = abap_true.
                        DATA(t985) = abap_true.
                        t822 = t985.
                        DATA(t986) = VALUE abap_bool( ).
                        DATA(t987) = VALUE string( ).
                        DATA t988 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t988.
                        DATA(t989) = t45.
                        DATA t990 TYPE REF TO object.
                        CLEAR t990.
                        t990 = t989.
                        t988 ?= t990.
                        t987 = t988->concat_tokens( ).
                        DATA(t991) = |**|.
                        t986 = xsdbool( t987 = t991 ).
                        IF t986 = abap_true.
                          DATA t992 TYPE REF TO zcl_lnt_float_type.
                          CLEAR t992.
                          DATA t993 TYPE REF TO zcl_lnt_abstract_type_data.
                          CLEAR t993.
                          t992 = NEW zcl_lnt_float_type( i_input_967e = t993 ).
                          t804 = t992.
                        ENDIF.
                        DATA(t994) = VALUE string( ).
                        DATA(t995) = VALUE string( ).
                        DATA(t996) = VALUE string( ).
                        DATA t997 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t997.
                        DATA(t998) = t45.
                        DATA t999 TYPE REF TO object.
                        CLEAR t999.
                        t999 = t998.
                        t997 ?= t999.
                        t996 = t997->concat_tokens( ).
                        DATA(t1000) = strlen( t996 ).
                        t995 = t996.
                        IF t995 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                          TRANSLATE t995 TO UPPER CASE.
                        ELSE.
                          t995 = zlnt_runtime_uppe_91169605024d=>full( t995 ).
                        ENDIF.
                        t994 = t995.
                        DATA(t1001) = VALUE abap_bool( ).
                        DATA(t1002) = VALUE abap_bool( ).
                        DATA(t1003) = VALUE abap_bool( ).
                        DATA(t1004) = t994.
                        DATA(t1005) = |BIT-OR|.
                        t1003 = xsdbool( t1004 = t1005 ).
                        t1002 = t1003.
                        IF t1003 = abap_false.
                          DATA(t1006) = VALUE abap_bool( ).
                          DATA(t1007) = t994.
                          DATA(t1008) = |BIT-AND|.
                          t1006 = xsdbool( t1007 = t1008 ).
                          t1002 = t1006.
                        ENDIF.
                        t1001 = t1002.
                        IF t1002 = abap_false.
                          DATA(t1009) = VALUE abap_bool( ).
                          DATA(t1010) = t994.
                          DATA(t1011) = |BIT-XOR|.
                          t1009 = xsdbool( t1010 = t1011 ).
                          t1001 = t1009.
                        ENDIF.
                        IF t1001 = abap_true.
                          DATA(t1012) = abap_true.
                          t818 = t1012.
                          DATA(t1013) = abap_true.
                          t820 = t1013.
                        ENDIF.
                      ELSE.
                        DATA(t1014) = VALUE abap_bool( ).
                        DATA(t1015) = t830.
                        t1014 = xsdbool( t1015 IS BOUND AND t1015 IS INSTANCE OF zcl_lnt_st_attribute_chain ).
                        IF t1014 = abap_true.
                          DATA t1016 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t1016.
                          DATA(t1017) = t804.
                          DATA t1018 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t1018.
                          DATA(t1019) = t45.
                          DATA t1020 TYPE REF TO object.
                          CLEAR t1020.
                          t1020 = t1019.
                          t1018 ?= t1020.
                          DATA(t1021) = t2.
                          DATA(t1022) = t808.
                          t1016 = zcl_lnt_sy_attribute_chain=>run_syntax( i_input_context = t1017 i_node = t1018 i_input_967e = t1021 i_type_9913 = t1022 ).
                          t804 = t1016.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t1023) = VALUE abap_bool( ).
      DATA(t1024) = t818.
      DATA(t1025) = abap_true.
      t1023 = xsdbool( t1024 = t1025 ).
      IF t1023 = abap_true.
        DATA(t1026) = VALUE abap_bool( ).
        DATA(t1027) = VALUE abap_bool( ).
        DATA(t1028) = VALUE abap_bool( ).
        DATA(t1029) = VALUE abap_bool( ).
        DATA(t1030) = VALUE abap_bool( ).
        DATA(t1031) = VALUE abap_bool( ).
        DATA(t1032) = VALUE abap_bool( ).
        DATA(t1033) = t804.
        t1032 = xsdbool( t1033 IS BOUND AND t1033 IS INSTANCE OF zcl_lnt_void_type ).
        t1031 = xsdbool( t1032 = abap_false ).
        t1030 = t1031.
        IF t1031 = abap_true.
          DATA(t1034) = VALUE abap_bool( ).
          DATA(t1035) = VALUE abap_bool( ).
          DATA(t1036) = t804.
          t1035 = xsdbool( t1036 IS BOUND AND t1036 IS INSTANCE OF zcl_lnt_x_string_type ).
          t1034 = xsdbool( t1035 = abap_false ).
          t1030 = t1034.
        ENDIF.
        t1029 = t1030.
        IF t1030 = abap_true.
          DATA(t1037) = VALUE abap_bool( ).
          DATA(t1038) = VALUE abap_bool( ).
          DATA(t1039) = t804.
          t1038 = xsdbool( t1039 IS BOUND AND t1039 IS INSTANCE OF zcl_lnt_hex_type ).
          t1037 = xsdbool( t1038 = abap_false ).
          t1029 = t1037.
        ENDIF.
        t1028 = t1029.
        IF t1029 = abap_true.
          DATA(t1040) = VALUE abap_bool( ).
          DATA(t1041) = VALUE abap_bool( ).
          DATA(t1042) = t804.
          t1041 = xsdbool( t1042 IS BOUND AND t1042 IS INSTANCE OF zcl_lnt_x_generic_type ).
          t1040 = xsdbool( t1041 = abap_false ).
          t1028 = t1040.
        ENDIF.
        t1027 = t1028.
        IF t1028 = abap_true.
          DATA(t1043) = VALUE abap_bool( ).
          DATA(t1044) = VALUE abap_bool( ).
          DATA(t1045) = t804.
          t1044 = xsdbool( t1045 IS BOUND AND t1045 IS INSTANCE OF zcl_lnt_x_sequence_type ).
          t1043 = xsdbool( t1044 = abap_false ).
          t1027 = t1043.
        ENDIF.
        t1026 = t1027.
        IF t1027 = abap_true.
          DATA(t1046) = VALUE abap_bool( ).
          DATA(t1047) = VALUE abap_bool( ).
          DATA(t1048) = t804.
          t1047 = xsdbool( t1048 IS BOUND AND t1048 IS INSTANCE OF zcl_lnt_unknown_type ).
          t1046 = xsdbool( t1047 = abap_false ).
          t1026 = t1046.
        ENDIF.
        IF t1026 = abap_true.
          DATA(t1049) = VALUE string( ).
          DATA(t1050) = |Operator only valid for XSTRING or HEX|.
          t1049 = t1050.
          DATA t1051 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t1051.
          DATA(t1052) = t2.
          t1051 = t1052->issues.
          DATA t1053 TYPE REF TO zcl_lnt_issue.
          CLEAR t1053.
          DATA(t1054) = t2.
          DATA t1055 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1055.
          DATA t1056 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t1056.
          DATA(t1057) = t1.
          t1056 = t1057.
          t1055 = t1056->get_first_token( ).
          DATA(t1058) = t1049.
          DATA t1059 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1059.
          t1053 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1054 i_token = t1055 i_message_26cb = t1058 i_fix = t1059 ).
          t1051->load( ).
          APPEND t1053 TO t1051->items.
          t1051->save( ).
          DATA t1060 TYPE REF TO zcl_lnt_void_type.
          CLEAR t1060.
          DATA t1061 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1061.
          DATA(t1062) = abap_true.
          IF t1062 = abap_true.
            DATA(t1063) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t1064) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1064->has = abap_true.
            t1064->value = t1063.
            t1061 = t1064.
          ELSE.
            DATA t1065 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1065.
            t1061 = t1065.
          ENDIF.
          DATA t1066 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1066.
          t1060 = zcl_lnt_void_type=>get_db65( i_voided = t1061 i_qualified_name = t1066 ).
          result = t1060.
          RETURN.
        ENDIF.
        DATA(t1067) = VALUE abap_bool( ).
        DATA(t1068) = t820.
        DATA(t1069) = abap_false.
        t1067 = xsdbool( t1068 = t1069 ).
        IF t1067 = abap_true.
          DATA(t1070) = abap_false.
          t818 = t1070.
        ENDIF.
        DATA(t1071) = abap_false.
        t820 = t1071.
      ENDIF.
      DATA t1072 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t1072.
      DATA(t1073) = t36.
      DATA t1074 TYPE REF TO object.
      CLEAR t1074.
      t1074 = t1073->shift( ).
      DATA t1075 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1075.
      CLEAR t1072.
      IF t1074 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t1075 ?= t1074.
        DATA t1076 TYPE REF TO object.
        CLEAR t1076.
        t1076 = t1075->as_ref( ).
        t1072 ?= t1076.
      ELSE.
        t1072 ?= t1074.
      ENDIF.
      t45 = t1072.
      DATA(t1077) = VALUE abap_bool( ).
      DATA t1078 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t1078.
      DATA(t1079) = t45.
      t1078 = t1079.
      DATA t1080 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1080.
      DATA t1081 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1081.
      t1080 = t1081.
      DATA(t1082) = VALUE abap_bool( ).
      DATA(t1083) = t1078.
      IF t1083 IS INITIAL.
        t1082 = abap_true.
      ENDIF.
      t1077 = t1082.
      IF t1077 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t1084) = VALUE abap_bool( ).
    DATA t1085 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t1085.
    DATA t1086 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t1086.
    DATA(t1087) = t1.
    t1086 = t1087.
    DATA(t1088) = |&&|.
    t1085 = t1086->find_direct_token_by_text( i_text = t1088 ).
    t1084 = xsdbool( t1085 IS BOUND ).
    IF t1084 = abap_true.
      DATA t1089 TYPE REF TO zcl_lnt_string_type.
      CLEAR t1089.
      DATA t1090 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1090.
      t1089 = zcl_lnt_string_type=>get_db65( i_input_967e = t1090 ).
      result = t1089.
      RETURN.
    ENDIF.
    DATA(t1091) = t804.
    result = t1091.

  ENDMETHOD.

  METHOD traverse_remaining_children.
    DATA(t1) = i_children_9020.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t4.
    DATA(t5) = t1.
    DATA t6 TYPE i.
    DATA t7 TYPE i.
    DATA(t8) = t1.
    t8->load( ).
    t7 = lines( t8->items ).
    DATA(t9) = 1.
    t6 = t7 - t9.
    t6 = t6 + 1.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    t5->load( ).
    CLEAR t10.
    READ TABLE t5->items INDEX t6 INTO t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    CLEAR t4.
    IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t11 ?= t10.
      DATA t12 TYPE REF TO object.
      t12 = t11->as_ref( ).
      t4 ?= t12.
    ELSE.
      t4 ?= t10.
    ENDIF.
    t3 = t4.
    DATA t13 TYPE abap_bool.
    DATA t14 TYPE abap_bool.
    DATA(t15) = t3.
    t14 = xsdbool( t15 IS BOUND ).
    t13 = t14.
    IF t14 = abap_true.
      DATA t16 TYPE abap_bool.
      DATA t17 TYPE REF TO object.
      DATA(t18) = t3.
      t17 = t18->get_db65( ).
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_st_source ).
      t13 = t16.
    ENDIF.
    IF t13 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t20.
      DATA(t21) = abap_true.
      IF t21 = abap_true.
        DATA t22 TYPE REF TO zcl_lnt_expression_node.
        DATA(t23) = t3.
        t22 ?= t23.
        t20 = t22.
      ELSE.
        DATA t24 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t24.
        t20 = t24.
      ENDIF.
      DATA(t25) = t2.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t29.
      t19 = zcl_lnt_sy_source=>run_syntax( i_node = t20 i_input_967e = t25 i_target_type = t26 i_write_reference = t27 i_allow_generic_deference = t28 i_read_reference = t29 ).
    ENDIF.
  ENDMETHOD.

  METHOD infer.
    DATA(t1) = i_context.
    DATA(t2) = i_found.
    DATA(t3) = i_arithmetic.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = t3.
    IF t5 IS INITIAL.
      t4 = abap_true.
    ELSEIF t5->has = abap_false.
      t4 = abap_true.
    ENDIF.
    IF t4 = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA(t8) = abap_false.
        DATA(t9) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t9->has = abap_true.
        t9->value = t8.
        t6 = t9.
      ELSE.
        DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t10.
        t6 = t10.
      ENDIF.
      t3 = t6.
    ENDIF.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE abap_bool.
    DATA(t13) = t3.
    t12 = t13->value.
    DATA(t14) = abap_true.
    t11 = xsdbool( t12 = t14 ).
    IF t11 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_abstract_type.
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t17) = t1.
      DATA(t18) = t2.
      t16 = zcl_lnt_sy_source=>calculation_type( i_left = t17 i_right = t18 ).
      t15 = t16.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t21) = t15.
      t20 = t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      t22 = t23.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = t20.
      IF t26 IS INITIAL.
        t25 = abap_true.
      ENDIF.
      t24 = xsdbool( t25 = abap_false ).
      t19 = t24.
      IF t19 = abap_true.
        DATA t27 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t27.
        DATA(t28) = abap_true.
        IF t28 = abap_true.
          DATA t29 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t30) = t15.
          t29 = t30.
          t27 = t29.
        ELSE.
          DATA t31 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t31.
          t27 = t31.
        ENDIF.
        result = t27.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t32 TYPE abap_bool.
    DATA t33 TYPE abap_bool.
    DATA(t34) = t1.
    t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_float_type ).
    t32 = t33.
    IF t33 = abap_true.
      DATA t35 TYPE abap_bool.
      DATA(t36) = t2.
      t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_integer_type ).
      t32 = t35.
    ENDIF.
    IF t32 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_float_type.
      DATA(t38) = t1.
      t37 ?= t38.
      result = t37.
      RETURN.
    ELSE.
      DATA t39 TYPE abap_bool.
      DATA t40 TYPE abap_bool.
      DATA(t41) = t1.
      t40 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_integer_type ).
      t39 = t40.
      IF t40 = abap_true.
        DATA t42 TYPE abap_bool.
        DATA(t43) = t2.
        t42 = xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcl_lnt_hex_type ).
        t39 = t42.
      ENDIF.
      IF t39 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_integer_type.
        DATA(t45) = t1.
        t44 ?= t45.
        result = t44.
        RETURN.
      ELSE.
        DATA(t46) = VALUE abap_bool( ).
        DATA t47 TYPE abap_bool.
        DATA t48 TYPE abap_bool.
        DATA(t49) = t1.
        t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_integer_type ).
        t47 = t48.
        IF t48 = abap_false.
          DATA t50 TYPE abap_bool.
          DATA(t51) = t1.
          t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_float_type ).
          t47 = t50.
        ENDIF.
        t46 = t47.
        IF t47 = abap_true.
          DATA(t52) = VALUE abap_bool( ).
          DATA t53 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t53.
          DATA t54 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t55) = t2.
          t54 = t55.
          DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t56.
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = t54.
          IF t58 IS INITIAL.
            t57 = abap_true.
          ENDIF.
          IF t57 = abap_true.
            DATA t59 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t59.
            t56 = t59.
          ELSE.
            DATA t60 TYPE abap_bool.
            DATA t61 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t62) = t54.
            t61 = t62.
            t60 = t61->is_generic( ).
            DATA(t63) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t63->has = abap_true.
            t63->value = t60.
            t56 = t63.
          ENDIF.
          t53 = t56.
          IF t53 IS BOUND.
            IF t53->has = abap_true.
              t52 = xsdbool( t53->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          t46 = t52.
        ENDIF.
        IF t46 = abap_true.
          DATA t64 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t64.
          DATA(t65) = abap_true.
          IF t65 = abap_true.
            DATA t66 TYPE REF TO zcl_lnt_abstract_type.
            DATA t67 TYPE REF TO zif_lnt_union_e92befca.
            DATA t68 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t69) = t1.
            t68 = t69.
            t67 ?= t68.
            t66 ?= t67.
            t64 = t66.
          ELSE.
            DATA t70 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t70.
            t64 = t70.
          ENDIF.
          result = t64.
          RETURN.
        ELSE.
          DATA(t71) = t2.
          result = t71.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD calculation_type.
    DATA(t1) = i_left.
    DATA(t2) = i_right.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t12.
      IF t17 IS INITIAL.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t18.
      result = t18.
      RETURN.
    ELSE.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      DATA(t21) = t1.
      t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_void_type ).
      t19 = t20.
      IF t20 = abap_false.
        DATA t22 TYPE abap_bool.
        DATA(t23) = t1.
        t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_unknown_type ).
        t19 = t22.
      ENDIF.
      IF t19 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t24.
        DATA(t25) = abap_true.
        IF t25 = abap_true.
          DATA t26 TYPE REF TO zcl_lnt_abstract_type.
          DATA t27 TYPE REF TO zif_lnt_union_adffe656.
          DATA t28 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t29) = t1.
          t28 = t29.
          t27 ?= t28.
          t26 ?= t27.
          t24 = t26.
        ELSE.
          DATA t30 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t30.
          t24 = t30.
        ENDIF.
        result = t24.
        RETURN.
      ELSE.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE abap_bool.
        DATA(t33) = t2.
        t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_void_type ).
        t31 = t32.
        IF t32 = abap_false.
          DATA t34 TYPE abap_bool.
          DATA(t35) = t2.
          t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_unknown_type ).
          t31 = t34.
        ENDIF.
        IF t31 = abap_true.
          DATA t36 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t36.
          DATA(t37) = abap_true.
          IF t37 = abap_true.
            DATA t38 TYPE REF TO zcl_lnt_abstract_type.
            DATA t39 TYPE REF TO zif_lnt_union_adffe656.
            DATA t40 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t41) = t2.
            t40 = t41.
            t39 ?= t40.
            t38 ?= t39.
            t36 = t38.
          ELSE.
            DATA t42 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t42.
            t36 = t42.
          ENDIF.
          result = t36.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t45 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t46) = t1.
    t45 = t46.
    t44 = zcl_lnt_sy_source=>numeric_rank( i_type_9913 = t45 ).
    t43 = t44.
    DATA t47 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t49 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t50) = t2.
    t49 = t50.
    t48 = zcl_lnt_sy_source=>numeric_rank( i_type_9913 = t49 ).
    t47 = t48.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = VALUE abap_bool( ).
    DATA t53 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t54) = t43.
    t53 = t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    t55 = t56.
    DATA(t57) = VALUE abap_bool( ).
    DATA(t58) = t53.
    IF t58 IS INITIAL.
      t57 = abap_true.
    ELSEIF t58->has = abap_false.
      t57 = abap_true.
    ENDIF.
    t52 = t57.
    t51 = t52.
    IF t52 = abap_true.
      DATA(t59) = VALUE abap_bool( ).
      DATA t60 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t61) = t47.
      t60 = t61.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t63.
      t62 = t63.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = t60.
      IF t65 IS INITIAL.
        t64 = abap_true.
      ELSEIF t65->has = abap_false.
        t64 = abap_true.
      ENDIF.
      t59 = t64.
      t51 = t59.
    ENDIF.
    IF t51 = abap_true.
      DATA t66 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t66.
      result = t66.
      RETURN.
    ELSE.
      DATA(t67) = VALUE abap_bool( ).
      DATA t68 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t69) = t47.
      t68 = t69.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      t70 = t71.
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = t68.
      IF t73 IS INITIAL.
        t72 = abap_true.
      ELSEIF t73->has = abap_false.
        t72 = abap_true.
      ENDIF.
      t67 = t72.
      IF t67 = abap_true.
        DATA t74 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t74.
        DATA(t75) = abap_true.
        IF t75 = abap_true.
          DATA t76 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t77) = t1.
          t76 = t77.
          t74 = t76.
        ELSE.
          DATA t78 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t78.
          t74 = t78.
        ENDIF.
        result = t74.
        RETURN.
      ELSE.
        DATA(t79) = VALUE abap_bool( ).
        DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t81) = t43.
        t80 = t81.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        t82 = t83.
        DATA(t84) = VALUE abap_bool( ).
        DATA(t85) = t80.
        IF t85 IS INITIAL.
          t84 = abap_true.
        ELSEIF t85->has = abap_false.
          t84 = abap_true.
        ENDIF.
        t79 = t84.
        IF t79 = abap_true.
          DATA t86 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t86.
          DATA(t87) = abap_true.
          IF t87 = abap_true.
            DATA t88 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t89) = t2.
            t88 = t89.
            t86 = t88.
          ELSE.
            DATA t90 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t90.
            t86 = t90.
          ENDIF.
          result = t86.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t91 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t91.
    DATA(t92) = abap_true.
    IF t92 = abap_true.
      DATA t93 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t93.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = VALUE f( ).
      DATA(t96) = t43.
      IF t96->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t95 = t96->value.
      DATA(t97) = VALUE f( ).
      DATA(t98) = t47.
      IF t98->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t97 = t98->value.
      t94 = xsdbool( t95 >= t97 ).
      IF t94 = abap_true.
        DATA t99 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t100) = t1.
        t99 = t100.
        t93 = t99.
      ELSE.
        DATA t101 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t102) = t2.
        t101 = t102.
        t93 = t101.
      ENDIF.
      t91 = t93.
    ELSE.
      DATA t103 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t103.
      t91 = t103.
    ENDIF.
    result = t91.

  ENDMETHOD.

  METHOD numeric_rank.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE abap_bool.
    DATA(t3) = t1.
    t2 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_dec_float34_type ).
    IF t2 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t4.
      DATA(t5) = abap_true.
      IF t5 = abap_true.
        DATA(t6) = CONV f( 6 ).
        DATA(t7) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t7->has = abap_true.
        t7->value = t6.
        t4 = t7.
      ELSE.
        DATA t8 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t8.
        t4 = t8.
      ENDIF.
      result = t4.
      RETURN.
    ELSE.
      DATA t9 TYPE abap_bool.
      DATA(t10) = t1.
      t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_dec_float16_type ).
      IF t9 = abap_true.
        DATA t11 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t11.
        DATA(t12) = abap_true.
        IF t12 = abap_true.
          DATA(t13) = CONV f( 5 ).
          DATA(t14) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t14->has = abap_true.
          t14->value = t13.
          t11 = t14.
        ELSE.
          DATA t15 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t15.
          t11 = t15.
        ENDIF.
        result = t11.
        RETURN.
      ELSE.
        DATA t16 TYPE abap_bool.
        DATA(t17) = t1.
        t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_float_type ).
        IF t16 = abap_true.
          DATA t18 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t18.
          DATA(t19) = abap_true.
          IF t19 = abap_true.
            DATA(t20) = CONV f( 4 ).
            DATA(t21) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t21->has = abap_true.
            t21->value = t20.
            t18 = t21.
          ELSE.
            DATA t22 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t22.
            t18 = t22.
          ENDIF.
          result = t18.
          RETURN.
        ELSE.
          DATA t23 TYPE abap_bool.
          DATA(t24) = t1.
          t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_packed_type ).
          IF t23 = abap_true.
            DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t25.
            DATA(t26) = abap_true.
            IF t26 = abap_true.
              DATA(t27) = CONV f( 3 ).
              DATA(t28) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t28->has = abap_true.
              t28->value = t27.
              t25 = t28.
            ELSE.
              DATA t29 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t29.
              t25 = t29.
            ENDIF.
            result = t25.
            RETURN.
          ELSE.
            DATA t30 TYPE abap_bool.
            DATA(t31) = t1.
            t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_integer8_type ).
            IF t30 = abap_true.
              DATA t32 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t32.
              DATA(t33) = abap_true.
              IF t33 = abap_true.
                DATA(t34) = CONV f( 2 ).
                DATA(t35) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t35->has = abap_true.
                t35->value = t34.
                t32 = t35.
              ELSE.
                DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t36.
                t32 = t36.
              ENDIF.
              result = t32.
              RETURN.
            ELSE.
              DATA t37 TYPE abap_bool.
              DATA(t38) = t1.
              t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_integer_type ).
              IF t37 = abap_true.
                DATA t39 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t39.
                DATA(t40) = abap_true.
                IF t40 = abap_true.
                  DATA(t41) = CONV f( 1 ).
                  DATA(t42) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                  t42->has = abap_true.
                  t42->value = t41.
                  t39 = t42.
                ELSE.
                  DATA t43 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  CLEAR t43.
                  t39 = t43.
                ENDIF.
                result = t39.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t44.
    result = t44.

  ENDMETHOD.

  METHOD add_if_inferred.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_inferred_type.
    DATA t4 TYPE REF TO zcl_lnt_basic_types.
    DATA t5 TYPE REF TO zcl_lnt_basic_types.
    DATA(t6) = t2.
    t5 = NEW zcl_lnt_basic_types( i_input_967e = t6 ).
    t4 = t5.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = t1.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    t8 = t9->find_direct_expression( i_type_9913 = t10 ).
    t7 = t8.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA(t14) = t7.
    t13 = t14.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t13.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA(t21) = t13.
      t20 = t21.
      t19 = t20->get_first_token( ).
      t15 = t19.
    ENDIF.
    t12 = t15.
    t11 = t12.
    DATA t22 TYPE abap_bool.
    DATA t23 TYPE abap_bool.
    DATA(t24) = t3.
    t23 = xsdbool( t24 IS BOUND ).
    t22 = t23.
    IF t23 = abap_true.
      DATA t25 TYPE abap_bool.
      DATA(t26) = t11.
      t25 = xsdbool( t26 IS BOUND ).
      t22 = t25.
    ENDIF.
    IF t22 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t28 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t29) = t4.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t31 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t32) = t3.
      t31 = t32.
      t30 = t31->get_qualified_name( ).
      t28 = t29->lookup_qualified_name( i_name = t30 ).
      t27 = t28.
      DATA t33 TYPE abap_bool.
      DATA(t34) = t27.
      t33 = xsdbool( t34 IS BOUND ).
      IF t33 = abap_true.
        DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t38) = t11.
        t37 = t38.
        DATA t39 TYPE string.
        DATA(t40) = t2.
        t39 = t40->filename.
        DATA t41 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t42) = t3.
        t41 = t42.
        DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t44.
        t36 = NEW zcl_lnt_typed_identifier( i_token = t37 i_filename = t39 i_type_9913 = t41 i_meta = t43 i_value = t44 ).
        t35 = t36.
        DATA t45 TYPE REF TO zcl_lnt_current_scope.
        DATA(t46) = t2.
        t45 = t46->scope.
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t47.
        DATA(t48) = abap_true.
        IF t48 = abap_true.
          DATA t49 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t50) = t11.
          t49 = t50.
          t47 = t49.
        ELSE.
          DATA t51 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t51.
          t47 = t51.
        ENDIF.
        DATA(t52) = t35.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t53.
        DATA(t54) = |Inferred Type|.
        CLEAR t53.
        CREATE OBJECT t53.
        t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t53->sval = t54.
        DATA t55 TYPE string.
        DATA(t56) = t2.
        t55 = t56->filename.
        DATA t57 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t57.
        DATA(t58) = abap_true.
        IF t58 = abap_true.
          DATA t59 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t59.
          DATA t60 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t60.
          DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t61.
          DATA(t62) = abap_true.
          IF t62 = abap_true.
            DATA(t63) = abap_true.
            DATA(t64) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t64->has = abap_true.
            t64->value = t63.
            t61 = t64.
          ELSE.
            DATA t65 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t65.
            t61 = t65.
          ENDIF.
          t60 = t61.
          DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t67.
          t66 = t67.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t69.
          t68 = t69.
          t59 = NEW zcl_lnt_ireference_extras( i_oo_name = t66 i_oo_type = t68 i_found_qualified = t60 ).
          CREATE OBJECT t59->zlnt_view_ownkeys_b0e8086400eb.
          t59->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t70.
          IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `foundQualified` p1 = t70 ).
          ENDIF.
          CREATE OBJECT t59->zlnt_json_ownkeys_70e5fd461788.
          t59->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t71) = |foundQualified|.
          DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t72.
          IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
          ENDIF.
          t57 = t59.
        ELSE.
          DATA t73 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t73.
          t57 = t73.
        ENDIF.
        t45->add_reference( i_usage = t47 i_referencing = t52 i_type_9913 = t53 i_filename = t55 i_extra = t57 ).
      ELSE.
        DATA t74 TYPE abap_bool.
        DATA(t75) = t3.
        t74 = xsdbool( t75 IS BOUND AND t75 IS INSTANCE OF zcl_lnt_object_reference_type ).
        IF t74 = abap_true.
          DATA t76 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t76.
          DATA t77 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t77.
          DATA t78 TYPE REF TO zcl_lnt_current_scope.
          DATA t79 TYPE REF TO zcl_lnt_current_scope.
          DATA(t80) = t2.
          t79 = t80->scope.
          t78 = t79.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t82.
          DATA t83 TYPE REF TO zcl_lnt_abstract_type.
          DATA t84 TYPE REF TO zcl_lnt_object_reference_type.
          DATA(t85) = t3.
          t84 ?= t85.
          t83 = t84.
          DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t86.
          DATA t87 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t88 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA(t89) = t83.
          t88 = t89->data_56cc.
          t87 = t88.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t90.
          DATA(t91) = VALUE abap_bool( ).
          DATA(t92) = t87.
          IF t92 IS INITIAL.
            t91 = abap_true.
          ENDIF.
          IF t91 = abap_true.
            DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t93.
            t90 = t93.
          ELSE.
            DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t95 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t96) = t87.
            t95 = t96.
            t94 = t95->zlnt_view_read_sr_c978da49ae47( ).
            t90 = t94.
          ENDIF.
          t86 = t90.
          t82 = t86.
          t81 = t82.
          DATA t97 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t97.
          DATA(t98) = VALUE abap_bool( ).
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t100) = t81.
          t99 = t100.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t102.
          t101 = t102.
          DATA(t103) = VALUE abap_bool( ).
          DATA(t104) = t99.
          IF t104 IS INITIAL.
            t103 = abap_true.
          ELSEIF t104->has = abap_false.
            t103 = abap_true.
          ENDIF.
          t98 = t103.
          IF t98 = abap_true.
            DATA t105 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t105.
            t97 = t105.
          ELSE.
            DATA t106 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t106.
            DATA t107 TYPE REF TO zif_lnt_class_definition.
            CLEAR t107.
            DATA t108 TYPE REF TO zif_lnt_class_definition.
            CLEAR t108.
            DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t109.
            DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t110.
            DATA(t111) = abap_true.
            IF t111 = abap_true.
              DATA t112 TYPE string.
              DATA(t113) = t81.
              t112 = t113->value.
              DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t114->has = abap_true.
              t114->value = t112.
              t110 = t114.
            ELSE.
              DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t115.
              t110 = t115.
            ENDIF.
            t109 = t110.
            DATA t116 TYPE REF TO zif_lnt_class_definition.
            CLEAR t116.
            DATA(t117) = VALUE abap_bool( ).
            DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t119) = t109.
            t118 = t119.
            DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t121.
            t120 = t121.
            DATA(t122) = VALUE abap_bool( ).
            DATA(t123) = t118.
            IF t123 IS INITIAL.
              t122 = abap_true.
            ELSEIF t123->has = abap_false.
              t122 = abap_true.
            ENDIF.
            t117 = t122.
            IF t117 = abap_true.
              DATA t124 TYPE REF TO zif_lnt_class_definition.
              CLEAR t124.
              t116 = t124.
            ELSE.
              DATA t125 TYPE REF TO zif_lnt_class_definition.
              CLEAR t125.
              DATA t126 TYPE REF TO zif_lnt_class_definition.
              CLEAR t126.
              DATA t127 TYPE REF TO zif_lnt_class_definition.
              CLEAR t127.
              DATA t128 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t129 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t130) = t78.
              t129 = t130->current.
              t128 = t129.
              DATA t131 TYPE REF TO zif_lnt_class_definition.
              CLEAR t131.
              DATA(t132) = VALUE abap_bool( ).
              DATA(t133) = t128.
              IF t133 IS INITIAL.
                t132 = abap_true.
              ENDIF.
              IF t132 = abap_true.
                DATA t134 TYPE REF TO zif_lnt_class_definition.
                CLEAR t134.
                t131 = t134.
              ELSE.
                DATA t135 TYPE REF TO zif_lnt_class_definition.
                DATA t136 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t137) = t128.
                t136 = t137.
                DATA t138 TYPE string.
                DATA(t139) = t109.
                t138 = t139->value.
                t135 = t136->find_class_definition( i_name = t138 ).
                t131 = t135.
              ENDIF.
              t127 = t131.
              t126 = t127.
              DATA t140 TYPE REF TO zif_lnt_class_definition.
              CLEAR t140.
              DATA t141 TYPE abap_bool.
              DATA(t142) = t126.
              t141 = xsdbool( t142 IS BOUND ).
              IF t141 = abap_true.
                DATA t143 TYPE REF TO zif_lnt_class_definition.
                CLEAR t143.
                DATA(t144) = abap_true.
                IF t144 = abap_true.
                  DATA t145 TYPE REF TO zif_lnt_class_definition.
                  DATA(t146) = t126.
                  t145 = t146.
                  t143 = t145.
                ELSE.
                  DATA t147 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t147.
                  t143 = t147.
                ENDIF.
                t140 = t143.
              ELSE.
                DATA t148 TYPE REF TO zif_lnt_class_definition.
                CLEAR t148.
                DATA t149 TYPE REF TO zcl_lnt_class.
                CLEAR t149.
                DATA t150 TYPE REF TO zcl_lnt_class.
                CLEAR t150.
                DATA t151 TYPE REF TO zif_lnt_object.
                CLEAR t151.
                DATA t152 TYPE REF TO zif_lnt_registry.
                DATA(t153) = t78.
                t152 = t153->reg.
                DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t154.
                DATA(t155) = abap_true.
                IF t155 = abap_true.
                  DATA(t156) = |CLAS|.
                  DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t157->has = abap_true.
                  t157->value = t156.
                  t154 = t157.
                ELSE.
                  DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t158.
                  t154 = t158.
                ENDIF.
                DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t159.
                DATA(t160) = abap_true.
                IF t160 = abap_true.
                  DATA t161 TYPE string.
                  DATA(t162) = t109.
                  t161 = t162->value.
                  DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t163->has = abap_true.
                  t163->value = t161.
                  t159 = t163.
                ELSE.
                  DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t164.
                  t159 = t164.
                ENDIF.
                t151 = t152->get_object( i_type_9913 = t154 i_name = t159 ).
                DATA t165 TYPE REF TO object.
                t165 = t151.
                t150 ?= t165.
                t149 = t150.
                DATA t166 TYPE REF TO zif_lnt_class_definition.
                CLEAR t166.
                DATA t167 TYPE abap_bool.
                DATA(t168) = t149.
                t167 = xsdbool( t168 IS BOUND ).
                IF t167 = abap_true.
                  DATA t169 TYPE REF TO zif_lnt_class_definition.
                  DATA t170 TYPE REF TO zcl_lnt_class.
                  DATA(t171) = t149.
                  t170 = t171.
                  t169 = t170->gt_dfn_ins_src_obj_cls_ts_clss( ).
                  t166 = t169.
                ELSE.
                  DATA t172 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t172.
                  t166 = t172.
                ENDIF.
                t148 = t166.
                t140 = t148.
              ENDIF.
              t125 = t140.
              t116 = t125.
            ENDIF.
            t108 = t116.
            t107 = t108.
            DATA t173 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t173.
            DATA t174 TYPE abap_bool.
            DATA(t175) = t107.
            t174 = xsdbool( t175 IS BOUND ).
            IF t174 = abap_true.
              DATA t176 TYPE REF TO zif_lnt_interface_definition.
              DATA t177 TYPE REF TO zif_lnt_class_definition.
              DATA(t178) = t107.
              t177 = t178.
              t176 ?= t177.
              t173 = t176.
            ELSE.
              DATA t179 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t179.
              DATA t180 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t180.
              DATA t181 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t181.
              DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t182.
              DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t183.
              DATA(t184) = abap_true.
              IF t184 = abap_true.
                DATA t185 TYPE string.
                DATA(t186) = t81.
                t185 = t186->value.
                DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t187->has = abap_true.
                t187->value = t185.
                t183 = t187.
              ELSE.
                DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t188.
                t183 = t188.
              ENDIF.
              t182 = t183.
              DATA t189 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t189.
              DATA(t190) = VALUE abap_bool( ).
              DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t192) = t182.
              t191 = t192.
              DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t194.
              t193 = t194.
              DATA(t195) = VALUE abap_bool( ).
              DATA(t196) = t191.
              IF t196 IS INITIAL.
                t195 = abap_true.
              ELSEIF t196->has = abap_false.
                t195 = abap_true.
              ENDIF.
              t190 = t195.
              IF t190 = abap_true.
                DATA t197 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t197.
                t189 = t197.
              ELSE.
                DATA t198 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t198.
                DATA t199 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t199.
                DATA t200 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t200.
                DATA t201 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA t202 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t203) = t78.
                t202 = t203->current.
                t201 = t202.
                DATA t204 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t204.
                DATA(t205) = VALUE abap_bool( ).
                DATA(t206) = t201.
                IF t206 IS INITIAL.
                  t205 = abap_true.
                ENDIF.
                IF t205 = abap_true.
                  DATA t207 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t207.
                  t204 = t207.
                ELSE.
                  DATA t208 TYPE REF TO zif_lnt_interface_definition.
                  DATA t209 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA(t210) = t201.
                  t209 = t210.
                  DATA t211 TYPE string.
                  DATA(t212) = t182.
                  t211 = t212->value.
                  t208 = t209->find_interface_definition( i_name = t211 ).
                  t204 = t208.
                ENDIF.
                t200 = t204.
                t199 = t200.
                DATA t213 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t213.
                DATA t214 TYPE abap_bool.
                DATA(t215) = t199.
                t214 = xsdbool( t215 IS BOUND ).
                IF t214 = abap_true.
                  DATA t216 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t216.
                  DATA(t217) = abap_true.
                  IF t217 = abap_true.
                    DATA t218 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t219) = t199.
                    t218 = t219.
                    t216 = t218.
                  ELSE.
                    DATA t220 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t220.
                    t216 = t220.
                  ENDIF.
                  t213 = t216.
                ELSE.
                  DATA t221 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t221.
                  DATA t222 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t222.
                  DATA t223 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t223.
                  DATA t224 TYPE REF TO zif_lnt_object.
                  CLEAR t224.
                  DATA t225 TYPE REF TO zif_lnt_registry.
                  DATA(t226) = t78.
                  t225 = t226->reg.
                  DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t227.
                  DATA(t228) = abap_true.
                  IF t228 = abap_true.
                    DATA(t229) = |INTF|.
                    DATA(t230) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t230->has = abap_true.
                    t230->value = t229.
                    t227 = t230.
                  ELSE.
                    DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t231.
                    t227 = t231.
                  ENDIF.
                  DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t232.
                  DATA(t233) = abap_true.
                  IF t233 = abap_true.
                    DATA t234 TYPE string.
                    DATA(t235) = t182.
                    t234 = t235->value.
                    DATA(t236) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t236->has = abap_true.
                    t236->value = t234.
                    t232 = t236.
                  ELSE.
                    DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t237.
                    t232 = t237.
                  ENDIF.
                  t224 = t225->get_object( i_type_9913 = t227 i_name = t232 ).
                  DATA t238 TYPE REF TO object.
                  t238 = t224.
                  t223 ?= t238.
                  t222 = t223.
                  DATA t239 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t239.
                  DATA t240 TYPE abap_bool.
                  DATA(t241) = t222.
                  t240 = xsdbool( t241 IS BOUND ).
                  IF t240 = abap_true.
                    DATA t242 TYPE REF TO zif_lnt_interface_definition.
                    DATA t243 TYPE REF TO zcl_lnt_ob_interface.
                    DATA t244 TYPE REF TO zcl_lnt_ob_interface.
                    DATA(t245) = t222.
                    t244 = t245.
                    t243 = t244.
                    DATA t246 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t247) = t243.
                    t246 = t247->def.
                    t242 = t246.
                    t239 = t242.
                  ELSE.
                    DATA t248 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t248.
                    t239 = t248.
                  ENDIF.
                  t221 = t239.
                  t213 = t221.
                ENDIF.
                t198 = t213.
                t189 = t198.
              ENDIF.
              t181 = t189.
              t180 = t181.
              DATA t249 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t249.
              DATA t250 TYPE abap_bool.
              DATA(t251) = t180.
              t250 = xsdbool( t251 IS BOUND ).
              IF t250 = abap_true.
                DATA t252 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t252.
                DATA(t253) = abap_true.
                IF t253 = abap_true.
                  DATA t254 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t255) = t180.
                  t254 = t255.
                  t252 = t254.
                ELSE.
                  DATA t256 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t256.
                  t252 = t256.
                ENDIF.
                t249 = t252.
              ELSE.
                DATA t257 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t257.
                t249 = t257.
              ENDIF.
              t179 = t249.
              t173 = t179.
            ENDIF.
            t106 = t173.
            t97 = t106.
          ENDIF.
          t77 = t97.
          t76 = t77.
          DATA t258 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t259 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t260 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t261) = t11.
          t260 = t261.
          DATA t262 TYPE string.
          DATA(t263) = t2.
          t262 = t263->filename.
          DATA t264 TYPE REF TO zcl_lnt_object_reference_type.
          DATA(t265) = t3.
          t264 ?= t265.
          DATA t266 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t266.
          DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t267.
          t259 = NEW zcl_lnt_typed_identifier( i_token = t260 i_filename = t262 i_type_9913 = t264 i_meta = t266 i_value = t267 ).
          t258 = t259.
          DATA t268 TYPE abap_bool.
          DATA(t269) = t76.
          t268 = xsdbool( t269 IS BOUND ).
          IF t268 = abap_true.
            DATA t270 TYPE REF TO zcl_lnt_current_scope.
            DATA(t271) = t2.
            t270 = t271->scope.
            DATA t272 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t272.
            DATA(t273) = abap_true.
            IF t273 = abap_true.
              DATA t274 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t275) = t11.
              t274 = t275.
              t272 = t274.
            ELSE.
              DATA t276 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t276.
              t272 = t276.
            ENDIF.
            DATA(t277) = t258.
            DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t278.
            DATA(t279) = |Inferred Type|.
            CLEAR t278.
            CREATE OBJECT t278.
            t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t278->sval = t279.
            DATA t280 TYPE string.
            DATA(t281) = t2.
            t280 = t281->filename.
            DATA t282 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t282.
            DATA(t283) = abap_true.
            IF t283 = abap_true.
              DATA t284 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t284.
              DATA t285 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t285.
              DATA t286 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t286.
              DATA(t287) = abap_true.
              IF t287 = abap_true.
                DATA(t288) = abap_true.
                DATA(t289) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t289->has = abap_true.
                t289->value = t288.
                t286 = t289.
              ELSE.
                DATA t290 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t290.
                t286 = t290.
              ENDIF.
              t285 = t286.
              DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t292.
              t291 = t292.
              DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t294.
              t293 = t294.
              t284 = NEW zcl_lnt_ireference_extras( i_oo_name = t291 i_oo_type = t293 i_found_qualified = t285 ).
              CREATE OBJECT t284->zlnt_view_ownkeys_b0e8086400eb.
              t284->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t295.
              IF t284->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t284->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `foundQualified` p1 = t295 ).
              ENDIF.
              CREATE OBJECT t284->zlnt_json_ownkeys_70e5fd461788.
              t284->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t296) = |foundQualified|.
              DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t297.
              IF t284->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t284->zlnt_json_ownkeys_70e5fd461788->put( p0 = t296 p1 = t297 ).
              ENDIF.
              t282 = t284.
            ELSE.
              DATA t298 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t298.
              t282 = t298.
            ENDIF.
            t270->add_reference( i_usage = t272 i_referencing = t277 i_type_9913 = t278 i_filename = t280 i_extra = t282 ).
          ELSE.
            DATA t299 TYPE REF TO zcl_lnt_current_scope.
            DATA(t300) = t2.
            t299 = t300->scope.
            DATA t301 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t301.
            DATA(t302) = abap_true.
            IF t302 = abap_true.
              DATA t303 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t304) = t11.
              t303 = t304.
              t301 = t303.
            ELSE.
              DATA t305 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t305.
              t301 = t305.
            ENDIF.
            DATA(t306) = t258.
            DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t307.
            DATA(t308) = |Inferred Type|.
            CLEAR t307.
            CREATE OBJECT t307.
            t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t307->sval = t308.
            DATA t309 TYPE string.
            DATA(t310) = t2.
            t309 = t310->filename.
            DATA t311 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t311.
            DATA(t312) = abap_true.
            IF t312 = abap_true.
              DATA t313 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t313.
              DATA t314 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t314.
              DATA t315 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t315.
              DATA(t316) = abap_true.
              IF t316 = abap_true.
                DATA(t317) = abap_false.
                DATA(t318) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t318->has = abap_true.
                t318->value = t317.
                t315 = t318.
              ELSE.
                DATA t319 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t319.
                t315 = t319.
              ENDIF.
              t314 = t315.
              DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t321.
              t320 = t321.
              DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t323.
              t322 = t323.
              t313 = NEW zcl_lnt_ireference_extras( i_oo_name = t320 i_oo_type = t322 i_found_qualified = t314 ).
              CREATE OBJECT t313->zlnt_view_ownkeys_b0e8086400eb.
              t313->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t324.
              IF t313->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `foundQualified` p1 = t324 ).
              ENDIF.
              CREATE OBJECT t313->zlnt_json_ownkeys_70e5fd461788.
              t313->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t325) = |foundQualified|.
              DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t326.
              IF t313->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = t325 p1 = t326 ).
              ENDIF.
              t311 = t313.
            ELSE.
              DATA t327 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t327.
              t311 = t327.
            ENDIF.
            t299->add_reference( i_usage = t301 i_referencing = t306 i_type_9913 = t307 i_filename = t309 i_extra = t311 ).
          ENDIF.
        ELSE.
          DATA t328 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t329 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t330 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t331) = t11.
          t330 = t331.
          DATA t332 TYPE string.
          DATA(t333) = t2.
          t332 = t333->filename.
          DATA t334 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t335) = t3.
          t334 = t335.
          DATA t336 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t336.
          DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t337.
          t329 = NEW zcl_lnt_typed_identifier( i_token = t330 i_filename = t332 i_type_9913 = t334 i_meta = t336 i_value = t337 ).
          t328 = t329.
          DATA t338 TYPE REF TO zcl_lnt_current_scope.
          DATA(t339) = t2.
          t338 = t339->scope.
          DATA t340 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t340.
          DATA(t341) = abap_true.
          IF t341 = abap_true.
            DATA t342 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t343) = t11.
            t342 = t343.
            t340 = t342.
          ELSE.
            DATA t344 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t344.
            t340 = t344.
          ENDIF.
          DATA(t345) = t328.
          DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t346.
          DATA(t347) = |Inferred Type|.
          CLEAR t346.
          CREATE OBJECT t346.
          t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t346->sval = t347.
          DATA t348 TYPE string.
          DATA(t349) = t2.
          t348 = t349->filename.
          DATA t350 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t350.
          DATA(t351) = abap_true.
          IF t351 = abap_true.
            DATA t352 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t352.
            DATA t353 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t353.
            DATA t354 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t354.
            DATA(t355) = abap_true.
            IF t355 = abap_true.
              DATA(t356) = abap_false.
              DATA(t357) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t357->has = abap_true.
              t357->value = t356.
              t354 = t357.
            ELSE.
              DATA t358 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t358.
              t354 = t358.
            ENDIF.
            t353 = t354.
            DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t360.
            t359 = t360.
            DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t362.
            t361 = t362.
            t352 = NEW zcl_lnt_ireference_extras( i_oo_name = t359 i_oo_type = t361 i_found_qualified = t353 ).
            CREATE OBJECT t352->zlnt_view_ownkeys_b0e8086400eb.
            t352->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t363.
            IF t352->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `foundQualified` p1 = t363 ).
            ENDIF.
            CREATE OBJECT t352->zlnt_json_ownkeys_70e5fd461788.
            t352->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t364) = |foundQualified|.
            DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t365.
            IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t364 p1 = t365 ).
            ENDIF.
            t350 = t352.
          ELSE.
            DATA t366 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t366.
            t350 = t366.
          ENDIF.
          t338->add_reference( i_usage = t340 i_referencing = t345 i_type_9913 = t346 i_filename = t348 i_extra = t350 ).
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD determine_type.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t4 TYPE REF TO zcl_lnt_basic_types.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_basic_types.
    CLEAR t5.
    DATA(t6) = t2.
    t5 = NEW zcl_lnt_basic_types( i_input_967e = t6 ).
    t4 = t5.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA(t9) = t1.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    t8 = t9->find_direct_expression( i_type_9913 = t10 ).
    t7 = t8.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t13.
    DATA(t14) = t7.
    t13 = t14.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t13.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t20.
      DATA(t21) = t13.
      t20 = t21.
      t19 = t20->get_first_token( ).
      t15 = t19.
    ENDIF.
    t12 = t15.
    t11 = t12.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t24.
    DATA(t25) = t11.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = t24.
    IF t28 IS INITIAL.
      t27 = abap_true.
    ENDIF.
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t26 = t29.
    ELSE.
      DATA(t30) = VALUE string( ).
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t32.
      DATA(t33) = t24.
      t32 = t33.
      t31 = t32.
      DATA(t34) = VALUE string( ).
      DATA(t35) = t31.
      t34 = t35->str.
      t30 = t34.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t30.
      t26 = t36.
    ENDIF.
    t23 = t26.
    t22 = t23.
    DATA(t37) = VALUE abap_bool( ).
    DATA t38 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t38.
    DATA(t39) = t7.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    t40 = t41.
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = t38.
    IF t43 IS INITIAL.
      t42 = abap_true.
    ENDIF.
    t37 = t42.
    IF t37 = abap_true.
      DATA t44 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t44.
      DATA t45 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t45.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t47) = abap_true.
      IF t47 = abap_true.
        DATA(t48) = |determineType, child TypeNameOrInfer not found|.
        DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t49->has = abap_true.
        t49->value = t48.
        t46 = t49.
      ELSE.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        t46 = t50.
      ENDIF.
      t45 = NEW zcx_lnt_assert_error( i_message_26cb = t46 ).
      t44 = NEW #( ).
      t44->payload = t45.
      CLEAR t44->source_value.
      IF t45 IS BOUND.
        DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t51.
        DATA t52 TYPE REF TO object.
        CLEAR t52.
        CLEAR t51.
        t52 = t45.
        TRY.
            t44->source_value ?= t52.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t44->source_value IS NOT BOUND.
          TRY.
              t51 ?= t45.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t51 IS BOUND.
            t44->source_value = t51->source( ).
          ENDIF.
          IF t44->source_value IS NOT BOUND.
            CREATE OBJECT t44->source_value.
            t44->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t44->source_value->oval = t45.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t44.
    ELSE.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = t22.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t56.
      DATA(t57) = abap_true.
      IF t57 = abap_true.
        DATA(t58) = |#|.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t58.
        t56 = t59.
      ELSE.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        t56 = t60.
      ENDIF.
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = VALUE abap_bool( ).
      IF t55 IS BOUND.
        t61 = t55->has.
      ENDIF.
      IF t56 IS BOUND.
        t62 = t56->has.
      ENDIF.
      IF t61 = t62.
        IF t61 = abap_false.
          t54 = abap_true.
        ELSEIF t55->value = t56->value.
          t54 = abap_true.
        ENDIF.
      ENDIF.
      t53 = t54.
      IF t54 = abap_true.
        DATA(t63) = VALUE abap_bool( ).
        DATA(t64) = t3.
        t63 = xsdbool( t64 IS BOUND ).
        t53 = t63.
      ENDIF.
      IF t53 = abap_true.
        DATA t65 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t65.
        DATA(t66) = abap_true.
        IF t66 = abap_true.
          DATA t67 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t67.
          DATA(t68) = t3.
          t67 = t68.
          t65 = t67.
        ELSE.
          DATA t69 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t69.
          t65 = t69.
        ENDIF.
        result = t65.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t70) = VALUE abap_bool( ).
    DATA(t71) = VALUE abap_bool( ).
    DATA(t72) = t22.
    DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t73.
    DATA(t74) = abap_true.
    IF t74 = abap_true.
      DATA(t75) = |#|.
      DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t76->has = abap_true.
      t76->value = t75.
      t73 = t76.
    ELSE.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      t73 = t77.
    ENDIF.
    DATA(t78) = VALUE abap_bool( ).
    DATA(t79) = VALUE abap_bool( ).
    IF t72 IS BOUND.
      t78 = t72->has.
    ENDIF.
    IF t73 IS BOUND.
      t79 = t73->has.
    ENDIF.
    IF t78 = t79.
      IF t78 = abap_false.
        t71 = abap_true.
      ELSEIF t72->value = t73->value.
        t71 = abap_true.
      ENDIF.
    ENDIF.
    IF t71 = abap_true.
      t71 = abap_false.
    ELSE.
      t71 = abap_true.
    ENDIF.
    t70 = t71.
    IF t71 = abap_true.
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = t11.
      t80 = xsdbool( t81 IS BOUND ).
      t70 = t80.
    ENDIF.
    IF t70 = abap_true.
      DATA t82 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t82.
      DATA t83 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t83.
      DATA(t84) = t4.
      DATA t85 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t85.
      DATA(t86) = t7.
      t85 = t86.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t87.
      t83 = t84->parse_type( i_node = t85 i_qualified_name = t87 ).
      t82 = t83.
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = VALUE abap_bool( ).
      DATA(t90) = t82.
      t89 = xsdbool( t90 IS BOUND ).
      t88 = t89.
      IF t89 = abap_true.
        DATA(t91) = VALUE abap_bool( ).
        DATA t92 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t92.
        DATA(t93) = t82.
        t92 = t93.
        t91 = xsdbool( t92 IS BOUND AND t92 IS INSTANCE OF zcl_lnt_unknown_type ).
        t88 = t91.
      ENDIF.
      IF t88 = abap_true.
        DATA(t94) = VALUE abap_bool( ).
        DATA(t95) = VALUE abap_bool( ).
        DATA t96 TYPE REF TO zcl_lnt_ddic.
        CLEAR t96.
        DATA t97 TYPE REF TO zcl_lnt_ddic.
        CLEAR t97.
        DATA t98 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t98.
        DATA t99 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t99.
        DATA(t100) = t2.
        t99 = t100->scope.
        t98 = t99.
        DATA t101 TYPE REF TO zcl_lnt_ddic.
        CLEAR t101.
        DATA t102 TYPE REF TO zif_lnt_registry.
        CLEAR t102.
        DATA(t103) = t98.
        t102 = t103->reg.
        t101 = NEW zcl_lnt_ddic( i_reg_f149 = t102 ).
        t97 = t101.
        t96 = t97.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        DATA(t105) = t22.
        t104 = t105.
        DATA(t106) = VALUE abap_bool( ).
        DATA(t107) = VALUE abap_bool( ).
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        DATA(t109) = t104.
        t108 = t109.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        t110 = t111.
        DATA(t112) = VALUE abap_bool( ).
        DATA(t113) = t108.
        IF t113 IS INITIAL.
          t112 = abap_true.
        ELSEIF t113->has = abap_false.
          t112 = abap_true.
        ENDIF.
        t107 = t112.
        IF t107 = abap_true.
          DATA(t114) = abap_true.
          t106 = t114.
        ELSE.
          DATA(t115) = VALUE abap_bool( ).
          DATA t116 TYPE REF TO zif_lnt_registry.
          CLEAR t116.
          DATA(t117) = t96.
          t116 = t117->reg.
          DATA(t118) = VALUE string( ).
          DATA(t119) = t104.
          t118 = t119->value.
          t115 = t116->in_error_namespace( i_name = t118 ).
          t106 = t115.
        ENDIF.
        t95 = t106.
        DATA(t120) = abap_false.
        t94 = xsdbool( t95 = t120 ).
        IF t94 = abap_true.
          DATA t121 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t121.
          DATA(t122) = t2.
          t121 = t122->scope.
          DATA t123 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t123.
          DATA(t124) = abap_true.
          IF t124 = abap_true.
            DATA t125 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t125.
            DATA(t126) = t11.
            t125 = t126.
            t123 = t125.
          ELSE.
            DATA t127 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t127.
            t123 = t127.
          ENDIF.
          DATA t128 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t128.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          DATA(t130) = |Type (Void)|.
          CLEAR t129.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t129->sval = t130.
          DATA(t131) = VALUE string( ).
          DATA(t132) = t2.
          t131 = t132->filename.
          DATA t133 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t133.
          t121->add_reference( i_usage = t123 i_referencing = t128 i_type_9913 = t129 i_filename = t131 i_extra = t133 ).
          DATA t134 TYPE REF TO zcl_lnt_void_type.
          CLEAR t134.
          DATA(t135) = t22.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t136.
          t134 = zcl_lnt_void_type=>get_db65( i_voided = t135 i_qualified_name = t136 ).
          result = t134.
          RETURN.
        ELSE.
          DATA t137 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t137.
          DATA t138 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t138.
          DATA t139 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t139.
          DATA(t140) = t11.
          t139 = t140.
          DATA(t141) = VALUE string( ).
          DATA(t142) = t2.
          t141 = t142->filename.
          DATA t143 TYPE REF TO zcl_lnt_unknown_type.
          CLEAR t143.
          DATA(t144) = t82.
          t143 ?= t144.
          DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t145.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          t138 = NEW zcl_lnt_typed_identifier( i_token = t139 i_filename = t141 i_type_9913 = t143 i_meta = t145 i_value = t146 ).
          t137 = t138.
          DATA t147 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t147.
          DATA(t148) = t2.
          t147 = t148->scope.
          DATA t149 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t149.
          DATA(t150) = abap_true.
          IF t150 = abap_true.
            DATA t151 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t151.
            DATA(t152) = t11.
            t151 = t152.
            t149 = t151.
          ELSE.
            DATA t153 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t153.
            t149 = t153.
          ENDIF.
          DATA(t154) = t137.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          DATA(t156) = |Type|.
          CLEAR t155.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t155->sval = t156.
          DATA(t157) = VALUE string( ).
          DATA(t158) = t2.
          t157 = t158->filename.
          DATA t159 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t159.
          t147->add_reference( i_usage = t149 i_referencing = t154 i_type_9913 = t155 i_filename = t157 i_extra = t159 ).
          DATA t160 TYPE REF TO zcl_lnt_unknown_type.
          CLEAR t160.
          DATA(t161) = t82.
          t160 ?= t161.
          result = t160.
          RETURN.
        ENDIF.
      ELSE.
        DATA(t162) = VALUE abap_bool( ).
        DATA t163 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t163.
        DATA(t164) = t82.
        t163 = t164.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        t165 = t166.
        DATA(t167) = VALUE abap_bool( ).
        DATA(t168) = t163.
        IF t168 IS INITIAL.
          t167 = abap_true.
        ENDIF.
        t162 = t167.
        IF t162 = abap_true.
          DATA(t169) = VALUE string( ).
          DATA(t170) = VALUE string( ).
          DATA(t171) = VALUE string( ).
          DATA(t172) = |Type "|.
          DATA(t173) = VALUE string( ).
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t174.
          DATA(t175) = t22.
          t174 = t175.
          DATA(t176) = VALUE string( ).
          DATA(t177) = VALUE abap_bool( ).
          DATA(t178) = t174.
          IF t178 IS INITIAL.
            t177 = abap_true.
          ELSEIF t178->has = abap_false.
            t177 = abap_true.
          ENDIF.
          IF t177 = abap_true.
            DATA(t179) = |undefined|.
            t176 = t179.
          ELSE.
            DATA(t180) = VALUE string( ).
            DATA(t181) = t174.
            t180 = t181->value.
            t176 = t180.
          ENDIF.
          t173 = t176.
          DATA(t182) = strlen( t172 ).
          t171 = |{ t172 }{ t173 }|.
          DATA(t183) = |" not found in scope, VALUE|.
          DATA(t184) = strlen( t171 ).
          t170 = |{ t171 }{ t183 }|.
          t169 = t170.
          DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t185.
          DATA(t186) = t2.
          t185 = t186->issues.
          DATA t187 TYPE REF TO zcl_lnt_issue.
          CLEAR t187.
          DATA(t188) = t2.
          DATA t189 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t189.
          DATA(t190) = t1.
          t189 = t190->get_first_token( ).
          DATA(t191) = t169.
          DATA t192 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t192.
          t187 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t188 i_token = t189 i_message_26cb = t191 i_fix = t192 ).
          t185->load( ).
          APPEND t187 TO t185->items.
          t185->save( ).
          DATA t193 TYPE REF TO zcl_lnt_void_type.
          CLEAR t193.
          DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t194.
          DATA(t195) = abap_true.
          IF t195 = abap_true.
            DATA(t196) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t197->has = abap_true.
            t197->value = t196.
            t194 = t197.
          ELSE.
            DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t198.
            t194 = t198.
          ENDIF.
          DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t199.
          t193 = zcl_lnt_void_type=>get_db65( i_voided = t194 i_qualified_name = t199 ).
          result = t193.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t200 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t200.
      DATA(t201) = abap_true.
      IF t201 = abap_true.
        DATA t202 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t202.
        DATA(t203) = t82.
        t202 = t203.
        t200 = t202.
      ELSE.
        DATA t204 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t204.
        t200 = t204.
      ENDIF.
      result = t200.
      RETURN.
    ENDIF.
    DATA(t205) = t3.
    result = t205.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d832_63e7e14e265c.
  ENDMETHOD.
ENDCLASS.
