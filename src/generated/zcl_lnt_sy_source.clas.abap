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
      DATA(t12) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t12->has = abap_true.
      t12->value = abap_false.
      t4 = t12.
    ENDIF.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t5.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ELSEIF t15->has = abap_false.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA(t19) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t19->has = abap_true.
      t19->value = abap_false.
      t5 = t19.
    ENDIF.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t6.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ELSEIF t22->has = abap_false.
      t21 = abap_true.
    ENDIF.
    IF t21 = abap_true.
      DATA(t26) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t26->has = abap_true.
      t26->value = abap_true.
      t6 = t26.
    ENDIF.
    DATA(t28) = VALUE abap_bool( ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t28 = xsdbool( t1 IS INITIAL ).
    IF t28 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zcl_lnt_abstract_node.
    t40 = t1.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t43 = t40->children.
    t39 = t43.
    t38 ?= t39.
    t37 = t38->slice0( ).
    t36 = t37.
    DATA t45 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t46 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t48 TYPE REF TO object.
    t48 = t36->shift( ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t49 ?= t48.
      DATA t50 TYPE REF TO object.
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
      DATA t56 TYPE REF TO zcl_lnt_token_node.
      DATA t58 TYPE REF TO object.
      t58 = t45.
      t56 ?= t58.
      DATA t59 TYPE REF TO zcl_lnt_abstract_token.
      t59 = t56->token.
      t53 = t59.
      DATA(t61) = VALUE string( ).
      DATA(t62) = VALUE string( ).
      DATA(t63) = VALUE string( ).
      DATA(t66) = VALUE string( ).
      t66 = t53->str.
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
      DATA(t71) = |(|.
      t69 = xsdbool( t61 = t71 ).
      IF t69 = abap_true.
      ELSE.
        DATA(t72) = VALUE abap_bool( ).
        DATA(t74) = |-|.
        t72 = xsdbool( t61 = t74 ).
        IF t72 = abap_true.
        ELSE.
          DATA(t75) = VALUE abap_bool( ).
          DATA(t77) = |+|.
          t75 = xsdbool( t61 = t77 ).
          IF t75 = abap_true.
          ELSE.
            DATA(t78) = VALUE abap_bool( ).
            DATA(t80) = |BIT|.
            t78 = xsdbool( t61 = t80 ).
            IF t78 = abap_true.
            ELSE.
              DATA(t81) = VALUE abap_bool( ).
              DATA(t83) = |BOOLC|.
              t81 = xsdbool( t61 = t83 ).
              IF t81 = abap_true.
                DATA t85 TYPE REF TO zif_lnt_method_definition.
                DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t89->has = abap_true.
                t89->value = t61.
                t86 = t89.
                t85 = zcl_lnt_built_in=>search_builtin( i_name = t86 ).
                DATA t91 TYPE REF TO zif_lnt_method_definition.
                t91 = t85.
                DATA t93 TYPE REF TO zcl_lnt_current_scope.
                t93 = t2->scope.
                DATA t95 TYPE REF TO zcl_lnt_abstract_token.
                t95 = t53.
                DATA t99 TYPE REF TO zcl_lnt_fi_identifier.
                DATA(t100) = xsdbool( t91 IS INITIAL ).
                IF t100 = abap_true.
                ELSE.
                  DATA t103 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA t104 TYPE REF TO zif_lnt_method_definition.
                  t104 = t91.
                  t103 ?= t104.
                  t99 = t103.
                ENDIF.
                DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t107) = |Builtin Method|.
                CREATE OBJECT t106.
                t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                t106->sval = t107.
                DATA(t108) = VALUE string( ).
                t108 = t2->filename.
                DATA t110 TYPE REF TO zcl_lnt_ireference_extras.
                t93->add_reference( i_usage = t95 i_referencing = t99 i_type_9913 = t106 i_filename = t108 i_extra = t110 ).
                DATA t111 TYPE REF TO zcl_lnt_expression_node.
                DATA t112 TYPE REF TO zcl_lnt_expression_node.
                DATA t113 TYPE REF TO zcl_lnt_expression_node.
                t113 = t1.
                DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
                t112 = t113->find_direct_expression( i_type_9913 = t115 ).
                t111 = t112.
                zcl_lnt_sy_cond=>run_syntax( i_node = t111 i_input_967e = t2 ).
                DATA t117 TYPE REF TO zcl_lnt_string_type.
                DATA t118 TYPE REF TO zcl_lnt_abstract_type_data.
                t117 = zcl_lnt_string_type=>get_db65( i_input_967e = t118 ).
                result = t117.
                RETURN.
              ELSE.
                DATA(t119) = VALUE abap_bool( ).
                DATA(t121) = |XSDBOOL|.
                t119 = xsdbool( t61 = t121 ).
                IF t119 = abap_true.
                  DATA t123 TYPE REF TO zif_lnt_method_definition.
                  DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t127->has = abap_true.
                  t127->value = t61.
                  t124 = t127.
                  t123 = zcl_lnt_built_in=>search_builtin( i_name = t124 ).
                  DATA t129 TYPE REF TO zif_lnt_method_definition.
                  t129 = t123.
                  DATA t131 TYPE REF TO zcl_lnt_current_scope.
                  t131 = t2->scope.
                  DATA t133 TYPE REF TO zcl_lnt_abstract_token.
                  t133 = t53.
                  DATA t137 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA(t138) = xsdbool( t129 IS INITIAL ).
                  IF t138 = abap_true.
                  ELSE.
                    DATA t141 TYPE REF TO zcl_lnt_fi_identifier.
                    DATA t142 TYPE REF TO zif_lnt_method_definition.
                    t142 = t129.
                    t141 ?= t142.
                    t137 = t141.
                  ENDIF.
                  DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA(t145) = |Builtin Method|.
                  CREATE OBJECT t144.
                  t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                  t144->sval = t145.
                  DATA(t146) = VALUE string( ).
                  t146 = t2->filename.
                  DATA t148 TYPE REF TO zcl_lnt_ireference_extras.
                  t131->add_reference( i_usage = t133 i_referencing = t137 i_type_9913 = t144 i_filename = t146 i_extra = t148 ).
                  DATA t149 TYPE REF TO zcl_lnt_expression_node.
                  DATA t150 TYPE REF TO zcl_lnt_expression_node.
                  DATA t151 TYPE REF TO zcl_lnt_expression_node.
                  t151 = t1.
                  DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
                  t150 = t151->find_direct_expression( i_type_9913 = t153 ).
                  t149 = t150.
                  zcl_lnt_sy_cond=>run_syntax( i_node = t149 i_input_967e = t2 ).
                  DATA t155 TYPE REF TO zcl_lnt_character_type.
                  DATA(t156) = CONV f( 1 ).
                  DATA t157 TYPE REF TO zcl_lnt_abstract_type_data.
                  DATA t159 TYPE REF TO zcl_lnt_abstract_type_data.
                  DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t163) = |ABAP_BOOL|.
                  DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t164->has = abap_true.
                  t164->value = t163.
                  t160 = t164.
                  DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t169) = |ABAP_BOOL|.
                  DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t170->has = abap_true.
                  t170->value = t169.
                  t166 = t170.
                  DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t159 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t160 i_conversion_exit = t172 i_derived_from_constant = t174 i_ddic_name = t166 i_rtti_name = t176 i_description = t178 ).
                  CREATE OBJECT t159->zlnt_view_ownkeys_b0e8086400eb.
                  t159->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t180 ).
                  DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t181 ).
                  ENDIF.
                  CREATE OBJECT t159->zlnt_json_ownkeys_70e5fd461788.
                  t159->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t182) = |qualifiedName|.
                  DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
                  DATA(t184) = |ddicName|.
                  DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
                  ENDIF.
                  t157 = t159.
                  t155 = NEW zcl_lnt_character_type( i_length = t156 i_extra = t157 ).
                  result = t155.
                  RETURN.
                ELSE.
                  DATA(t187) = VALUE abap_bool( ).
                  DATA(t189) = |REDUCE|.
                  t187 = xsdbool( t61 = t189 ).
                  IF t187 = abap_true.
                    DATA t190 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t191 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t192 TYPE REF TO zcl_lnt_expression_node.
                    t192 = t1.
                    t191 = zcl_lnt_sy_source=>determine_type( i_node = t192 i_input_967e = t2 i_target_type = t3 ).
                    t190 = t191.
                    DATA t196 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t197 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t198 TYPE REF TO zcl_lnt_expression_node.
                    DATA t199 TYPE REF TO zcl_lnt_expression_node.
                    t199 = t1.
                    DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d254_c290c4a7bfe3.
                    t198 = t199->find_direct_expression( i_type_9913 = t201 ).
                    t197 = zcl_lnt_sy_reduce_body=>run_syntax( i_node = t198 i_input_967e = t2 i_target_type = t190 ).
                    t196 = t197.
                    DATA(t204) = VALUE abap_bool( ).
                    DATA(t205) = VALUE abap_bool( ).
                    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t205 = xsdbool( t190 IS INITIAL ).
                    t204 = t205.
                    IF t205 = abap_false.
                      DATA(t212) = VALUE abap_bool( ).
                      DATA t213 TYPE REF TO zcl_lnt_abstract_type.
                      t213 = t190.
                      t212 = t213->is_generic( ).
                      t204 = t212.
                    ENDIF.
                    IF t204 = abap_true.
                      DATA t215 TYPE REF TO zcl_lnt_expression_node.
                      t215 = t1.
                      zcl_lnt_sy_source=>add_if_inferred( i_node = t215 i_input_967e = t2 i_inferred_type = t196 ).
                    ELSE.
                      DATA t219 TYPE REF TO zcl_lnt_expression_node.
                      t219 = t1.
                      DATA t222 TYPE REF TO zcl_lnt_abstract_type.
                      t222 = t190.
                      zcl_lnt_sy_source=>add_if_inferred( i_node = t219 i_input_967e = t2 i_inferred_type = t222 ).
                    ENDIF.
                    zcl_lnt_sy_source=>traverse_remaining_children( i_children_9020 = t36 i_input_967e = t2 ).
                    DATA t229 TYPE REF TO zcl_lnt_abstract_type.
                    DATA(t230) = VALUE abap_bool( ).
                    t230 = xsdbool( t190 IS BOUND ).
                    IF t230 = abap_true.
                      t229 = t190.
                    ELSE.
                      t229 = t196.
                    ENDIF.
                    result = t229.
                    RETURN.
                  ELSE.
                    DATA(t238) = VALUE abap_bool( ).
                    DATA(t240) = |SWITCH|.
                    t238 = xsdbool( t61 = t240 ).
                    IF t238 = abap_true.
                      DATA t241 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t242 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t243 TYPE REF TO zcl_lnt_expression_node.
                      t243 = t1.
                      t242 = zcl_lnt_sy_source=>determine_type( i_node = t243 i_input_967e = t2 i_target_type = t3 ).
                      t241 = t242.
                      DATA t247 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t248 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t249 TYPE REF TO zcl_lnt_expression_node.
                      DATA t250 TYPE REF TO zcl_lnt_expression_node.
                      t250 = t1.
                      DATA(t252) = zlnt_runtime_desc_78196487750d=>zlnt_member_d279_5e96219eaf2c.
                      t249 = t250->find_direct_expression( i_type_9913 = t252 ).
                      t248 = zcl_lnt_sy_switch_body=>run_syntax( i_node = t249 i_input_967e = t2 i_target_type = t241 ).
                      t247 = t248.
                      DATA(t255) = VALUE abap_bool( ).
                      DATA(t256) = VALUE abap_bool( ).
                      DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t256 = xsdbool( t241 IS INITIAL ).
                      t255 = t256.
                      IF t256 = abap_false.
                        DATA(t263) = VALUE abap_bool( ).
                        DATA t264 TYPE REF TO zcl_lnt_abstract_type.
                        t264 = t241.
                        t263 = t264->is_generic( ).
                        t255 = t263.
                      ENDIF.
                      IF t255 = abap_true.
                        DATA t266 TYPE REF TO zcl_lnt_expression_node.
                        t266 = t1.
                        zcl_lnt_sy_source=>add_if_inferred( i_node = t266 i_input_967e = t2 i_inferred_type = t247 ).
                      ELSE.
                        DATA t270 TYPE REF TO zcl_lnt_expression_node.
                        t270 = t1.
                        DATA t273 TYPE REF TO zcl_lnt_abstract_type.
                        t273 = t241.
                        zcl_lnt_sy_source=>add_if_inferred( i_node = t270 i_input_967e = t2 i_inferred_type = t273 ).
                      ENDIF.
                      DATA t278 TYPE REF TO zcl_lnt_abstract_type.
                      DATA(t279) = VALUE abap_bool( ).
                      t279 = xsdbool( t241 IS BOUND ).
                      IF t279 = abap_true.
                        t278 = t241.
                      ELSE.
                        t278 = t247.
                      ENDIF.
                      result = t278.
                      RETURN.
                    ELSE.
                      DATA(t287) = VALUE abap_bool( ).
                      DATA(t289) = |COND|.
                      t287 = xsdbool( t61 = t289 ).
                      IF t287 = abap_true.
                        DATA t290 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t291 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t292 TYPE REF TO zcl_lnt_expression_node.
                        t292 = t1.
                        t291 = zcl_lnt_sy_source=>determine_type( i_node = t292 i_input_967e = t2 i_target_type = t3 ).
                        t290 = t291.
                        DATA t296 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t297 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t298 TYPE REF TO zcl_lnt_expression_node.
                        DATA t299 TYPE REF TO zcl_lnt_expression_node.
                        t299 = t1.
                        DATA(t301) = zlnt_runtime_desc_78196487750d=>zlnt_member_d138_55fd16dd4da4.
                        t298 = t299->find_direct_expression( i_type_9913 = t301 ).
                        t297 = zcl_lnt_sy_cond_body=>run_syntax( i_node = t298 i_input_967e = t2 i_target_type = t290 ).
                        t296 = t297.
                        DATA(t304) = VALUE abap_bool( ).
                        DATA(t305) = VALUE abap_bool( ).
                        DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        t305 = xsdbool( t290 IS INITIAL ).
                        t304 = t305.
                        IF t305 = abap_false.
                          DATA(t312) = VALUE abap_bool( ).
                          DATA t313 TYPE REF TO zcl_lnt_abstract_type.
                          t313 = t290.
                          t312 = t313->is_generic( ).
                          t304 = t312.
                        ENDIF.
                        IF t304 = abap_true.
                          DATA t315 TYPE REF TO zcl_lnt_expression_node.
                          t315 = t1.
                          zcl_lnt_sy_source=>add_if_inferred( i_node = t315 i_input_967e = t2 i_inferred_type = t296 ).
                        ELSE.
                          DATA t319 TYPE REF TO zcl_lnt_expression_node.
                          t319 = t1.
                          DATA t322 TYPE REF TO zcl_lnt_abstract_type.
                          t322 = t290.
                          zcl_lnt_sy_source=>add_if_inferred( i_node = t319 i_input_967e = t2 i_inferred_type = t322 ).
                        ENDIF.
                        DATA t327 TYPE REF TO zif_lnt_union_4cf1d054.
                        DATA t329 TYPE REF TO object.
                        t329 = t36->shift( ).
                        DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        IF t329 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                          t330 ?= t329.
                          DATA t331 TYPE REF TO object.
                          t331 = t330->as_ref( ).
                          t327 ?= t331.
                        ELSE.
                          t327 ?= t329.
                        ENDIF.
                        DATA t332 TYPE REF TO zif_lnt_union_4cf1d054.
                        DATA t334 TYPE REF TO object.
                        t334 = t36->shift( ).
                        DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        IF t334 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                          t335 ?= t334.
                          DATA t336 TYPE REF TO object.
                          t336 = t335->as_ref( ).
                          t332 ?= t336.
                        ELSE.
                          t332 ?= t334.
                        ENDIF.
                        DATA t337 TYPE REF TO zif_lnt_union_4cf1d054.
                        DATA t339 TYPE REF TO object.
                        t339 = t36->shift( ).
                        DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        IF t339 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                          t340 ?= t339.
                          DATA t341 TYPE REF TO object.
                          t341 = t340->as_ref( ).
                          t337 ?= t341.
                        ELSE.
                          t337 ?= t339.
                        ENDIF.
                        DATA t342 TYPE REF TO zif_lnt_union_4cf1d054.
                        DATA t344 TYPE REF TO object.
                        t344 = t36->shift( ).
                        DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        IF t344 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                          t345 ?= t344.
                          DATA t346 TYPE REF TO object.
                          t346 = t345->as_ref( ).
                          t342 ?= t346.
                        ELSE.
                          t342 ?= t344.
                        ENDIF.
                        zcl_lnt_sy_source=>traverse_remaining_children( i_children_9020 = t36 i_input_967e = t2 ).
                        DATA t349 TYPE REF TO zcl_lnt_abstract_type.
                        DATA(t350) = VALUE abap_bool( ).
                        t350 = xsdbool( t290 IS BOUND ).
                        IF t350 = abap_true.
                          t349 = t290.
                        ELSE.
                          t349 = t296.
                        ENDIF.
                        result = t349.
                        RETURN.
                      ELSE.
                        DATA(t358) = VALUE abap_bool( ).
                        DATA(t360) = |CONV|.
                        t358 = xsdbool( t61 = t360 ).
                        IF t358 = abap_true.
                          DATA t361 TYPE REF TO zcl_lnt_abstract_type.
                          DATA t362 TYPE REF TO zcl_lnt_abstract_type.
                          DATA t363 TYPE REF TO zcl_lnt_expression_node.
                          t363 = t1.
                          t362 = zcl_lnt_sy_source=>determine_type( i_node = t363 i_input_967e = t2 i_target_type = t3 ).
                          t361 = t362.
                          DATA t367 TYPE REF TO zcl_lnt_abstract_type.
                          DATA t368 TYPE REF TO zcl_lnt_abstract_type.
                          DATA t369 TYPE REF TO zcl_lnt_expression_node.
                          DATA t370 TYPE REF TO zcl_lnt_expression_node.
                          DATA t371 TYPE REF TO zcl_lnt_expression_node.
                          t371 = t1.
                          DATA(t373) = zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924.
                          t370 = t371->find_direct_expression( i_type_9913 = t373 ).
                          t369 = t370.
                          t368 = zcl_lnt_sy_conv_body=>run_syntax( i_node = t369 i_input_967e = t2 ).
                          t367 = t368.
                          DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          DATA t377 TYPE REF TO zcl_lnt_expression_node.
                          DATA t378 TYPE REF TO zcl_lnt_expression_node.
                          DATA t379 TYPE REF TO zcl_lnt_expression_node.
                          t379 = t1.
                          DATA(t381) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
                          t378 = t379->find_direct_expression( i_type_9913 = t381 ).
                          t377 = t378.
                          DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          DATA(t383) = xsdbool( t377 IS INITIAL ).
                          IF t383 = abap_true.
                          ELSE.
                            DATA(t386) = VALUE string( ).
                            DATA t387 TYPE REF TO zcl_lnt_expression_node.
                            t387 = t377.
                            t386 = t387->concat_tokens( ).
                            DATA(t389) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t389->has = abap_true.
                            t389->value = t386.
                            t382 = t389.
                          ENDIF.
                          t375 = t382.
                          DATA(t390) = VALUE abap_bool( ).
                          DATA(t391) = VALUE abap_bool( ).
                          DATA t392 TYPE REF TO zcl_lnt_type_utils.
                          DATA t393 TYPE REF TO zcl_lnt_type_utils.
                          DATA t394 TYPE REF TO zcl_lnt_current_scope.
                          t394 = t2->scope.
                          t393 = NEW zcl_lnt_type_utils( i_scope = t394 ).
                          t392 = t393.
                          DATA t396 TYPE REF TO zcl_lnt_abstract_type.
                          t396 = t361.
                          DATA t398 TYPE REF TO zcl_lnt_abstract_type.
                          t398 = t367.
                          DATA(t400) = VALUE abap_bool( ).
                          DATA(t401) = VALUE abap_bool( ).
                          DATA(t402) = VALUE abap_bool( ).
                          t402 = xsdbool( t396 IS BOUND AND t396 IS INSTANCE OF zcl_lnt_ty_table_type ).
                          t401 = t402.
                          IF t402 = abap_true.
                            DATA(t404) = VALUE abap_bool( ).
                            t404 = xsdbool( t398 IS BOUND AND t398 IS INSTANCE OF zcl_lnt_ty_table_type ).
                            t401 = t404.
                          ENDIF.
                          IF t401 = abap_true.
                            DATA(t406) = VALUE abap_bool( ).
                            DATA t408 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t412 TYPE REF TO zcl_lnt_ty_table_type.
                            t412 ?= t396.
                            DATA t414 TYPE REF TO zcl_lnt_abstract_type.
                            t414 = t412->row_type.
                            t408 = t414.
                            DATA t417 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t421 TYPE REF TO zcl_lnt_ty_table_type.
                            t421 ?= t398.
                            DATA t423 TYPE REF TO zcl_lnt_abstract_type.
                            t423 = t421->row_type.
                            t417 = t423.
                            t406 = t392->is_assignable( i_source_75cf = t408 i_target_5f8a = t417 ).
                            t400 = t406.
                          ELSE.
                            DATA(t426) = VALUE abap_bool( ).
                            t426 = t392->is_assignable( i_source_75cf = t396 i_target_5f8a = t398 ).
                            t400 = t426.
                          ENDIF.
                          t391 = t400.
                          t390 = xsdbool( t391 = abap_false ).
                          IF t390 = abap_true.
                            DATA(t431) = VALUE string( ).
                            DATA(t432) = VALUE string( ).
                            DATA(t433) = VALUE string( ).
                            DATA(t434) = VALUE string( ).
                            DATA(t435) = VALUE string( ).
                            DATA(t436) = |CONV: Types not compatible, |.
                            DATA(t437) = VALUE string( ).
                            DATA t438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            DATA t440 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            DATA t442 TYPE REF TO zcl_lnt_abstract_type.
                            t442 = t361.
                            DATA t444 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            DATA(t445) = xsdbool( t442 IS INITIAL ).
                            IF t445 = abap_true.
                            ELSE.
                              DATA t448 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              DATA t449 TYPE REF TO zcl_lnt_abstract_type.
                              t449 = t442.
                              t448 = t449->zlnt_builtin_clas_3f891b097658( ).
                              t444 = t448.
                            ENDIF.
                            t440 = t444.
                            DATA t451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            DATA(t452) = xsdbool( t440 IS INITIAL ).
                            IF t452 = abap_true.
                            ELSE.
                              DATA(t455) = VALUE string( ).
                              DATA t456 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              t456 = t440.
                              t455 = t456->name.
                              DATA(t458) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t458->has = abap_true.
                              t458->value = t455.
                              t451 = t458.
                            ENDIF.
                            t438 = t451.
                            DATA(t459) = VALUE string( ).
                            DATA(t460) = VALUE abap_bool( ).
                            IF t438 IS INITIAL.
                              t460 = abap_true.
                            ELSEIF t438->has = abap_false.
                              t460 = abap_true.
                            ENDIF.
                            IF t460 = abap_true.
                              t459 = |undefined|.
                            ELSE.
                              DATA(t463) = VALUE string( ).
                              t463 = t438->value.
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
                            DATA t471 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            DATA t473 TYPE REF TO zcl_lnt_abstract_type.
                            t473 = t367.
                            DATA t475 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            DATA(t476) = xsdbool( t473 IS INITIAL ).
                            IF t476 = abap_true.
                            ELSE.
                              DATA t479 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              DATA t480 TYPE REF TO zcl_lnt_abstract_type.
                              t480 = t473.
                              t479 = t480->zlnt_builtin_clas_3f891b097658( ).
                              t475 = t479.
                            ENDIF.
                            t471 = t475.
                            DATA t482 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            DATA(t483) = xsdbool( t471 IS INITIAL ).
                            IF t483 = abap_true.
                            ELSE.
                              DATA(t486) = VALUE string( ).
                              DATA t487 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              t487 = t471.
                              t486 = t487->name.
                              DATA(t489) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t489->has = abap_true.
                              t489->value = t486.
                              t482 = t489.
                            ENDIF.
                            t469 = t482.
                            DATA(t490) = VALUE string( ).
                            DATA(t491) = VALUE abap_bool( ).
                            IF t469 IS INITIAL.
                              t491 = abap_true.
                            ELSEIF t469->has = abap_false.
                              t491 = abap_true.
                            ENDIF.
                            IF t491 = abap_true.
                              t490 = |undefined|.
                            ELSE.
                              DATA(t494) = VALUE string( ).
                              t494 = t469->value.
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
                            t499 = t2->issues.
                            DATA t501 TYPE REF TO zcl_lnt_issue.
                            DATA t503 TYPE REF TO zcl_lnt_abstract_token.
                            DATA t504 TYPE REF TO zcl_lnt_expression_node.
                            t504 = t1.
                            t503 = t504->get_first_token( ).
                            DATA t507 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                            t501 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t503 i_message_26cb = t431 i_fix = t507 ).
                            t499->load( ).
                            APPEND t501 TO t499->items.
                            t499->save( ).
                            DATA t508 TYPE REF TO zcl_lnt_void_type.
                            DATA t509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            DATA(t511) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                            DATA(t512) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t512->has = abap_true.
                            t512->value = t511.
                            t509 = t512.
                            DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            t508 = zcl_lnt_void_type=>get_db65( i_voided = t509 i_qualified_name = t514 ).
                            result = t508.
                            RETURN.
                          ELSE.
                            DATA(t515) = VALUE abap_bool( ).
                            DATA(t516) = VALUE abap_bool( ).
                            DATA t517 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            DATA t518 TYPE REF TO zcl_lnt_abstract_type.
                            t518 = t361.
                            DATA t520 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            DATA(t521) = xsdbool( t518 IS INITIAL ).
                            IF t521 = abap_true.
                            ELSE.
                              DATA(t524) = VALUE abap_bool( ).
                              DATA t525 TYPE REF TO zcl_lnt_abstract_type.
                              t525 = t518.
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
                              DATA t530 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              DATA(t532) = |#|.
                              DATA(t533) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t533->has = abap_true.
                              t533->value = t532.
                              t530 = t533.
                              DATA(t535) = VALUE abap_bool( ).
                              DATA(t536) = VALUE abap_bool( ).
                              IF t375 IS BOUND.
                                t535 = t375->has.
                              ENDIF.
                              IF t530 IS BOUND.
                                t536 = t530->has.
                              ENDIF.
                              IF t535 = t536.
                                IF t535 = abap_false.
                                  t528 = abap_true.
                                ELSEIF t375->value = t530->value.
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
                              t537 = |Cannot CONV to generic type|.
                              DATA t539 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                              t539 = t2->issues.
                              DATA t541 TYPE REF TO zcl_lnt_issue.
                              DATA t543 TYPE REF TO zcl_lnt_abstract_token.
                              DATA t544 TYPE REF TO zcl_lnt_expression_node.
                              t544 = t1.
                              t543 = t544->get_first_token( ).
                              DATA t547 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                              t541 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t543 i_message_26cb = t537 i_fix = t547 ).
                              t539->load( ).
                              APPEND t541 TO t539->items.
                              t539->save( ).
                              DATA t548 TYPE REF TO zcl_lnt_void_type.
                              DATA t549 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              DATA(t551) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                              DATA(t552) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t552->has = abap_true.
                              t552->value = t551.
                              t549 = t552.
                              DATA t554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              t548 = zcl_lnt_void_type=>get_db65( i_voided = t549 i_qualified_name = t554 ).
                              result = t548.
                              RETURN.
                            ENDIF.
                          ENDIF.
                          DATA t555 TYPE REF TO zcl_lnt_expression_node.
                          t555 = t1.
                          zcl_lnt_sy_source=>add_if_inferred( i_node = t555 i_input_967e = t2 i_inferred_type = t361 ).
                          zcl_lnt_sy_source=>traverse_remaining_children( i_children_9020 = t36 i_input_967e = t2 ).
                          result = t361.
                          RETURN.
                        ELSE.
                          DATA(t562) = VALUE abap_bool( ).
                          DATA(t564) = |REF|.
                          t562 = xsdbool( t61 = t564 ).
                          IF t562 = abap_true.
                            DATA t565 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t566 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t567 TYPE REF TO zcl_lnt_expression_node.
                            t567 = t1.
                            t566 = zcl_lnt_sy_source=>determine_type( i_node = t567 i_input_967e = t2 i_target_type = t3 ).
                            t565 = t566.
                            DATA t571 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t572 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t573 TYPE REF TO zcl_lnt_expression_node.
                            DATA t574 TYPE REF TO zcl_lnt_expression_node.
                            t574 = t1.
                            DATA(t576) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
                            t573 = t574->find_direct_expression( i_type_9913 = t576 ).
                            DATA t578 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t579 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            DATA t580 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            DATA t581 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            t572 = zcl_lnt_sy_source=>run_syntax( i_node = t573 i_input_967e = t2 i_target_type = t578 i_write_reference = t579 i_allow_generic_deference = t580 i_read_reference = t581 ).
                            t571 = t572.
                            DATA(t582) = VALUE abap_bool( ).
                            DATA(t583) = VALUE abap_bool( ).
                            DATA(t584) = VALUE abap_bool( ).
                            t584 = xsdbool( t565 IS BOUND ).
                            t583 = t584.
                            IF t584 = abap_true.
                              DATA(t586) = VALUE abap_bool( ).
                              DATA t587 TYPE REF TO zcl_lnt_abstract_type.
                              t587 = t565.
                              t586 = t587->is_generic( ).
                              t583 = t586.
                            ENDIF.
                            t582 = t583.
                            IF t583 = abap_true.
                              DATA(t589) = VALUE abap_bool( ).
                              t589 = xsdbool( t571 IS BOUND ).
                              t582 = t589.
                            ENDIF.
                            IF t582 = abap_true.
                              DATA t591 TYPE REF TO zcl_lnt_data_reference.
                              DATA t592 TYPE REF TO zcl_lnt_abstract_type.
                              t592 = t571.
                              DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              t591 = NEW zcl_lnt_data_reference( i_type_9913 = t592 i_qualified_name = t594 ).
                              t565 = t591.
                            ELSE.
                              DATA(t595) = VALUE abap_bool( ).
                              DATA(t596) = VALUE abap_bool( ).
                              DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              t596 = xsdbool( t565 IS INITIAL ).
                              t595 = t596.
                              IF t596 = abap_true.
                                DATA(t603) = VALUE abap_bool( ).
                                t603 = xsdbool( t571 IS BOUND ).
                                t595 = t603.
                              ENDIF.
                              IF t595 = abap_true.
                                DATA(t605) = VALUE abap_bool( ).
                                t605 = xsdbool( t571 IS BOUND AND t571 IS INSTANCE OF zcl_lnt_any_type ).
                                IF t605 = abap_true.
                                  DATA t607 TYPE REF TO zcl_lnt_data_reference.
                                  DATA t608 TYPE REF TO zcl_lnt_void_type.
                                  DATA t609 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  DATA(t611) = |REF-ANY|.
                                  DATA(t612) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                  t612->has = abap_true.
                                  t612->value = t611.
                                  t609 = t612.
                                  DATA t614 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  t608 = zcl_lnt_void_type=>get_db65( i_voided = t609 i_qualified_name = t614 ).
                                  DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  t607 = NEW zcl_lnt_data_reference( i_type_9913 = t608 i_qualified_name = t615 ).
                                  t565 = t607.
                                ELSE.
                                  DATA t616 TYPE REF TO zcl_lnt_data_reference.
                                  DATA t617 TYPE REF TO zcl_lnt_abstract_type.
                                  t617 = t571.
                                  DATA t619 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  t616 = NEW zcl_lnt_data_reference( i_type_9913 = t617 i_qualified_name = t619 ).
                                  t565 = t616.
                                ENDIF.
                              ELSE.
                                DATA(t620) = VALUE abap_bool( ).
                                DATA(t621) = VALUE abap_bool( ).
                                t621 = xsdbool( t565 IS BOUND ).
                                t620 = t621.
                                IF t621 = abap_true.
                                  DATA(t623) = VALUE abap_bool( ).
                                  DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                  t623 = xsdbool( t3 IS INITIAL ).
                                  t620 = t623.
                                ENDIF.
                                IF t620 = abap_true.
                                  DATA t630 TYPE REF TO zcl_lnt_data_reference.
                                  DATA t631 TYPE REF TO zcl_lnt_abstract_type.
                                  t631 = t565.
                                  DATA t633 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  t630 = NEW zcl_lnt_data_reference( i_type_9913 = t631 i_qualified_name = t633 ).
                                  t565 = t630.
                                ENDIF.
                              ENDIF.
                            ENDIF.
                            DATA t634 TYPE REF TO zcl_lnt_expression_node.
                            t634 = t1.
                            zcl_lnt_sy_source=>add_if_inferred( i_node = t634 i_input_967e = t2 i_inferred_type = t565 ).
                            result = t565.
                            RETURN.
                          ELSE.
                            DATA(t639) = VALUE abap_bool( ).
                            DATA(t641) = |FILTER|.
                            t639 = xsdbool( t61 = t641 ).
                            IF t639 = abap_true.
                              DATA t642 TYPE REF TO zcl_lnt_abstract_type.
                              DATA t643 TYPE REF TO zcl_lnt_abstract_type.
                              DATA t644 TYPE REF TO zcl_lnt_expression_node.
                              t644 = t1.
                              t643 = zcl_lnt_sy_source=>determine_type( i_node = t644 i_input_967e = t2 i_target_type = t3 ).
                              t642 = t643.
                              DATA t648 TYPE REF TO zcl_lnt_abstract_type.
                              DATA t649 TYPE REF TO zcl_lnt_abstract_type.
                              DATA t650 TYPE REF TO zcl_lnt_expression_node.
                              DATA t651 TYPE REF TO zcl_lnt_expression_node.
                              t651 = t1.
                              DATA(t653) = zlnt_runtime_desc_78196487750d=>zlnt_member_d174_c8ac82068417.
                              t650 = t651->find_direct_expression( i_type_9913 = t653 ).
                              t649 = zcl_lnt_sy_filter_body=>run_syntax( i_node = t650 i_input_967e = t2 i_target_type = t642 ).
                              t648 = t649.
                              DATA(t656) = VALUE abap_bool( ).
                              DATA(t657) = VALUE abap_bool( ).
                              DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              t657 = xsdbool( t642 IS INITIAL ).
                              t656 = t657.
                              IF t657 = abap_false.
                                DATA(t664) = VALUE abap_bool( ).
                                DATA t665 TYPE REF TO zcl_lnt_abstract_type.
                                t665 = t642.
                                t664 = t665->is_generic( ).
                                t656 = t664.
                              ENDIF.
                              IF t656 = abap_true.
                                DATA t667 TYPE REF TO zcl_lnt_expression_node.
                                t667 = t1.
                                zcl_lnt_sy_source=>add_if_inferred( i_node = t667 i_input_967e = t2 i_inferred_type = t648 ).
                              ELSE.
                                DATA t671 TYPE REF TO zcl_lnt_expression_node.
                                t671 = t1.
                                DATA t674 TYPE REF TO zcl_lnt_abstract_type.
                                t674 = t642.
                                zcl_lnt_sy_source=>add_if_inferred( i_node = t671 i_input_967e = t2 i_inferred_type = t674 ).
                              ENDIF.
                              DATA(t679) = VALUE abap_bool( ).
                              DATA(t680) = VALUE abap_bool( ).
                              t680 = xsdbool( t642 IS BOUND ).
                              t679 = t680.
                              IF t680 = abap_true.
                                DATA(t682) = VALUE abap_bool( ).
                                DATA(t683) = VALUE abap_bool( ).
                                DATA t684 TYPE REF TO zcl_lnt_abstract_type.
                                t684 = t642.
                                t683 = xsdbool( t684 IS BOUND AND t684 IS INSTANCE OF zcl_lnt_unknown_type ).
                                t682 = xsdbool( t683 = abap_false ).
                                t679 = t682.
                              ENDIF.
                              IF t679 = abap_true.
                                result = t642.
                                RETURN.
                              ELSE.
                                result = t648.
                                RETURN.
                              ENDIF.
                            ELSE.
                              DATA(t692) = VALUE abap_bool( ).
                              DATA(t694) = |CORRESPONDING|.
                              t692 = xsdbool( t61 = t694 ).
                              IF t692 = abap_true.
                                DATA t695 TYPE REF TO zcl_lnt_abstract_type.
                                DATA t696 TYPE REF TO zcl_lnt_abstract_type.
                                DATA t697 TYPE REF TO zcl_lnt_expression_node.
                                t697 = t1.
                                t696 = zcl_lnt_sy_source=>determine_type( i_node = t697 i_input_967e = t2 i_target_type = t3 ).
                                t695 = t696.
                                DATA t701 TYPE REF TO zcl_lnt_abstract_type.
                                DATA t702 TYPE REF TO zcl_lnt_expression_node.
                                DATA t703 TYPE REF TO zcl_lnt_expression_node.
                                t703 = t1.
                                DATA(t705) = zlnt_runtime_desc_78196487750d=>zlnt_member_d146_4e7b86c7b080.
                                t702 = t703->find_direct_expression( i_type_9913 = t705 ).
                                t701 = zcl_lnt_sy_corresponding_body=>run_syntax( i_node = t702 i_input_967e = t2 i_target_type = t695 ).
                                DATA t708 TYPE REF TO zcl_lnt_expression_node.
                                t708 = t1.
                                zcl_lnt_sy_source=>add_if_inferred( i_node = t708 i_input_967e = t2 i_inferred_type = t695 ).
                                result = t695.
                                RETURN.
                              ELSE.
                                DATA(t713) = VALUE abap_bool( ).
                                DATA(t715) = |EXACT|.
                                t713 = xsdbool( t61 = t715 ).
                                IF t713 = abap_true.
                                  DATA t716 TYPE REF TO zcl_lnt_abstract_type.
                                  DATA t717 TYPE REF TO zcl_lnt_abstract_type.
                                  DATA t718 TYPE REF TO zcl_lnt_expression_node.
                                  t718 = t1.
                                  t717 = zcl_lnt_sy_source=>determine_type( i_node = t718 i_input_967e = t2 i_target_type = t3 ).
                                  t716 = t717.
                                  DATA t722 TYPE REF TO zcl_lnt_abstract_type.
                                  DATA t723 TYPE REF TO zcl_lnt_expression_node.
                                  DATA t724 TYPE REF TO zcl_lnt_expression_node.
                                  t724 = t1.
                                  DATA(t726) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
                                  t723 = t724->find_direct_expression( i_type_9913 = t726 ).
                                  DATA t729 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  DATA t730 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  DATA t731 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  t722 = zcl_lnt_sy_source=>run_syntax( i_node = t723 i_input_967e = t2 i_target_type = t716 i_write_reference = t729 i_allow_generic_deference = t730 i_read_reference = t731 ).
                                  DATA t732 TYPE REF TO zcl_lnt_expression_node.
                                  t732 = t1.
                                  zcl_lnt_sy_source=>add_if_inferred( i_node = t732 i_input_967e = t2 i_inferred_type = t716 ).
                                  result = t716.
                                  RETURN.
                                ELSE.
                                  DATA(t737) = VALUE abap_bool( ).
                                  DATA(t739) = |VALUE|.
                                  t737 = xsdbool( t61 = t739 ).
                                  IF t737 = abap_true.
                                    DATA t740 TYPE REF TO zcl_lnt_abstract_type.
                                    DATA t741 TYPE REF TO zcl_lnt_abstract_type.
                                    DATA t742 TYPE REF TO zcl_lnt_expression_node.
                                    t742 = t1.
                                    t741 = zcl_lnt_sy_source=>determine_type( i_node = t742 i_input_967e = t2 i_target_type = t3 ).
                                    t740 = t741.
                                    DATA t746 TYPE REF TO zcl_lnt_abstract_type.
                                    DATA t747 TYPE REF TO zcl_lnt_abstract_type.
                                    DATA t748 TYPE REF TO zcl_lnt_expression_node.
                                    DATA t749 TYPE REF TO zcl_lnt_expression_node.
                                    t749 = t1.
                                    DATA(t751) = zlnt_runtime_desc_78196487750d=>zlnt_member_d280_c851733508cf.
                                    t748 = t749->find_direct_expression( i_type_9913 = t751 ).
                                    t747 = zcl_lnt_sy_value_body=>run_syntax( i_node = t748 i_input_967e = t2 i_target_type = t740 ).
                                    t746 = t747.
                                    DATA(t754) = VALUE abap_bool( ).
                                    DATA(t755) = VALUE abap_bool( ).
                                    DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                    t755 = xsdbool( t740 IS INITIAL ).
                                    t754 = t755.
                                    IF t755 = abap_false.
                                      DATA(t762) = VALUE abap_bool( ).
                                      DATA t763 TYPE REF TO zcl_lnt_abstract_type.
                                      t763 = t740.
                                      t762 = t763->is_generic( ).
                                      t754 = t762.
                                    ENDIF.
                                    IF t754 = abap_true.
                                      DATA t765 TYPE REF TO zcl_lnt_expression_node.
                                      t765 = t1.
                                      zcl_lnt_sy_source=>add_if_inferred( i_node = t765 i_input_967e = t2 i_inferred_type = t746 ).
                                    ELSE.
                                      DATA t769 TYPE REF TO zcl_lnt_expression_node.
                                      t769 = t1.
                                      DATA t772 TYPE REF TO zcl_lnt_abstract_type.
                                      t772 = t740.
                                      zcl_lnt_sy_source=>add_if_inferred( i_node = t769 i_input_967e = t2 i_inferred_type = t772 ).
                                    ENDIF.
                                    DATA t777 TYPE REF TO zcl_lnt_abstract_type.
                                    DATA(t778) = VALUE abap_bool( ).
                                    t778 = xsdbool( t740 IS BOUND ).
                                    IF t778 = abap_true.
                                      t777 = t740.
                                    ELSE.
                                      t777 = t746.
                                    ENDIF.
                                    result = t777.
                                    RETURN.
                                  ELSE.
                                    DATA t786 TYPE REF TO zcl_lnt_unknown_type.
                                    DATA(t787) = VALUE string( ).
                                    DATA(t788) = |todo, Source type |.
                                    DATA(t790) = strlen( t788 ).
                                    t787 = |{ t788 }{ t61 }|.
                                    DATA t791 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
      DATA t796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t793 = xsdbool( t45 IS INITIAL ).
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
        CLEAR result.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t804 TYPE REF TO zcl_lnt_abstract_type.
    DATA t805 TYPE REF TO zcl_lnt_unknown_type.
    DATA(t806) = |todo, Source type|.
    DATA t807 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t805 = NEW zcl_lnt_unknown_type( i_error = t806 i_qualified_name = t807 ).
    t804 = t805.
    DATA t808 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t809 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t809.
    t808 = t809.
    DATA(t810) = VALUE abap_bool( ).
    t810 = t6->value.
    IF t810 = abap_true.
      DATA(t813) = |Read From|.
      t808->load( ).
      APPEND t813 TO t808->items.
      t808->save( ).
    ENDIF.
    DATA(t814) = VALUE abap_bool( ).
    t814 = t4->value.
    IF t814 = abap_true.
      DATA(t817) = |Write To|.
      t808->load( ).
      APPEND t817 TO t808->items.
      t808->save( ).
    ENDIF.
    DATA(t818) = VALUE abap_bool( ).
    t818 = abap_false.
    DATA(t820) = VALUE abap_bool( ).
    t820 = abap_false.
    DATA(t822) = VALUE abap_bool( ).
    t822 = abap_false.
    DO.
      DATA(t824) = VALUE abap_bool( ).
      DATA(t825) = VALUE i( ).
      t36->load( ).
      t825 = lines( t36->items ).
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
        DATA t834 TYPE REF TO object.
        CLEAR t834.
        t834 = t45.
        t832 ?= t834.
        t831 = t832->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t830 = t831.
        DATA(t835) = VALUE abap_bool( ).
        t835 = xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_method_call_chain ).
        IF t835 = abap_true.
          DATA t837 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t837.
          DATA t838 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t838.
          DATA t839 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t839.
          DATA t841 TYPE REF TO object.
          CLEAR t841.
          t841 = t45.
          t839 ?= t841.
          t838 = zcl_lnt_sy_method_call_chain=>run_syntax( i_node = t839 i_input_967e = t2 i_target_type = t3 ).
          t837 = t838.
          DATA t844 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t844.
          DATA(t845) = VALUE abap_bool( ).
          t845 = xsdbool( t822 = abap_true ).
          IF t845 = abap_true.
            DATA t848 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t848.
            DATA t851 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t851.
            DATA(t854) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t854->has = abap_true.
            t854->value = abap_true.
            t851 = t854.
            t848 = zcl_lnt_sy_source=>infer( i_context = t804 i_found = t837 i_arithmetic = t851 ).
            t844 = t848.
          ELSE.
            t844 = t837.
          ENDIF.
          t804 = t844.
          DATA(t857) = VALUE abap_bool( ).
          DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t860.
          CLEAR t860.
          t857 = xsdbool( t804 IS INITIAL ).
          IF t857 = abap_true.
            DATA(t864) = VALUE string( ).
            t864 = |Method has no RETURNING value|.
            DATA t866 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t866.
            t866 = t2->issues.
            DATA t868 TYPE REF TO zcl_lnt_issue.
            CLEAR t868.
            DATA t870 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t870.
            DATA t871 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t871.
            t871 = t1.
            t870 = t871->get_first_token( ).
            DATA t874 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t874.
            t868 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t870 i_message_26cb = t864 i_fix = t874 ).
            t866->load( ).
            APPEND t868 TO t866->items.
            t866->save( ).
            DATA t875 TYPE REF TO zcl_lnt_void_type.
            CLEAR t875.
            DATA t876 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t876.
            DATA(t878) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t879) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t879->has = abap_true.
            t879->value = t878.
            t876 = t879.
            DATA t881 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t881.
            t875 = zcl_lnt_void_type=>get_db65( i_voided = t876 i_qualified_name = t881 ).
            result = t875.
            RETURN.
          ENDIF.
        ELSE.
          DATA(t882) = VALUE abap_bool( ).
          t882 = xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_field_chain ).
          IF t882 = abap_true.
            DATA t884 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t884.
            DATA t885 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t885.
            DATA t886 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t886.
            DATA t888 TYPE REF TO object.
            CLEAR t888.
            t888 = t45.
            t886 ?= t888.
            DATA t890 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t890.
            DATA t892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t892.
            CLEAR t892.
            IF t808 IS BOUND.
              DATA t894 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t894.
              DATA t895 TYPE REF TO object.
              CLEAR t895.
              CLEAR t894.
              t895 = t808.
              TRY.
                  t892 ?= t895.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t892 IS NOT BOUND.
                TRY.
                    t894 ?= t808.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t894 IS BOUND.
                  t892 = t894->source( ).
                ENDIF.
                IF t892 IS NOT BOUND.
                  CREATE OBJECT t892.
                  t892->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t892->oval = t808.
                ENDIF.
              ENDIF.
            ENDIF.
            t890 = t892.
            DATA t897 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t897.
            DATA(t899) = VALUE abap_bool( ).
            t899 = t5->value.
            DATA(t901) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t901->has = abap_true.
            t901->value = t899.
            t897 = t901.
            t885 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t886 i_input_967e = t2 i_ref_type = t890 i_allow_generic_deference = t897 ).
            t884 = t885.
            DATA t903 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t903.
            DATA(t904) = VALUE abap_bool( ).
            t904 = xsdbool( t822 = abap_true ).
            IF t904 = abap_true.
              DATA t907 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t907.
              DATA t910 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t910.
              DATA(t913) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t913->has = abap_true.
              t913->value = abap_true.
              t910 = t913.
              t907 = zcl_lnt_sy_source=>infer( i_context = t804 i_found = t884 i_arithmetic = t910 ).
              t903 = t907.
            ELSE.
              t903 = t884.
            ENDIF.
            t804 = t903.
          ELSE.
            DATA(t916) = VALUE abap_bool( ).
            t916 = xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_string_template ).
            IF t916 = abap_true.
              DATA t920 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t920.
              DATA t921 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t921.
              DATA t923 TYPE REF TO object.
              CLEAR t923.
              t923 = t45.
              t921 ?= t923.
              t920 = zcl_lnt_sy_string_template=>run_syntax( i_node = t921 i_input_967e = t2 ).
              t804 = t920.
            ELSE.
              DATA(t926) = VALUE abap_bool( ).
              t926 = xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_source ).
              IF t926 = abap_true.
                DATA t929 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t929.
                DATA t930 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t930.
                DATA t932 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t932.
                DATA t934 TYPE REF TO object.
                CLEAR t934.
                t934 = t45.
                t932 ?= t934.
                t930 = t932.
                DATA t937 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t937.
                DATA t938 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t938.
                DATA t939 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t939.
                DATA t940 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t940.
                t929 = zcl_lnt_sy_source=>run_syntax( i_node = t930 i_input_967e = t2 i_target_type = t937 i_write_reference = t938 i_allow_generic_deference = t939 i_read_reference = t940 ).
                DATA t941 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t941.
                DATA t944 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t944.
                DATA(t947) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t947->has = abap_true.
                t947->value = t822.
                t944 = t947.
                t941 = zcl_lnt_sy_source=>infer( i_context = t804 i_found = t929 i_arithmetic = t944 ).
                t804 = t941.
              ELSE.
                DATA(t949) = VALUE abap_bool( ).
                t949 = xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_expres_constant ).
                IF t949 = abap_true.
                  DATA t952 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t952.
                  DATA t953 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t953.
                  DATA t955 TYPE REF TO object.
                  CLEAR t955.
                  t955 = t45.
                  t953 ?= t955.
                  t952 = zcl_lnt_sy_expres_constant=>run_syntax( i_node = t953 ).
                  DATA t956 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t956.
                  DATA t958 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t958.
                  t958 = t952.
                  DATA t962 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t962.
                  DATA(t965) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t965->has = abap_true.
                  t965->value = t822.
                  t962 = t965.
                  t956 = zcl_lnt_sy_source=>infer( i_context = t804 i_found = t958 i_arithmetic = t962 ).
                  t804 = t956.
                ELSE.
                  DATA(t967) = VALUE abap_bool( ).
                  t967 = xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_dereference ).
                  IF t967 = abap_true.
                    DATA t969 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t969.
                    DATA t970 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t970.
                    DATA t972 TYPE REF TO object.
                    CLEAR t972.
                    t972 = t45.
                    t970 ?= t972.
                    t969 = zcl_lnt_sy_dereference=>run_syntax( i_node = t970 i_type_9913 = t804 i_input_967e = t2 ).
                    t804 = t969.
                  ELSE.
                    DATA(t975) = VALUE abap_bool( ).
                    t975 = xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_component_chain ).
                    IF t975 = abap_true.
                      DATA t977 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t977.
                      DATA t979 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t979.
                      DATA t981 TYPE REF TO object.
                      CLEAR t981.
                      t981 = t45.
                      t979 ?= t981.
                      t977 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t804 i_node = t979 i_input_967e = t2 ).
                      t804 = t977.
                    ELSE.
                      DATA(t983) = VALUE abap_bool( ).
                      t983 = xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_arith_operator ).
                      IF t983 = abap_true.
                        t822 = abap_true.
                        DATA(t986) = VALUE abap_bool( ).
                        DATA(t987) = VALUE string( ).
                        DATA t988 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t988.
                        DATA t990 TYPE REF TO object.
                        CLEAR t990.
                        t990 = t45.
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
                        DATA t999 TYPE REF TO object.
                        CLEAR t999.
                        t999 = t45.
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
                        DATA(t1005) = |BIT-OR|.
                        t1003 = xsdbool( t994 = t1005 ).
                        t1002 = t1003.
                        IF t1003 = abap_false.
                          DATA(t1006) = VALUE abap_bool( ).
                          DATA(t1008) = |BIT-AND|.
                          t1006 = xsdbool( t994 = t1008 ).
                          t1002 = t1006.
                        ENDIF.
                        t1001 = t1002.
                        IF t1002 = abap_false.
                          DATA(t1009) = VALUE abap_bool( ).
                          DATA(t1011) = |BIT-XOR|.
                          t1009 = xsdbool( t994 = t1011 ).
                          t1001 = t1009.
                        ENDIF.
                        IF t1001 = abap_true.
                          t818 = abap_true.
                          t820 = abap_true.
                        ENDIF.
                      ELSE.
                        DATA(t1014) = VALUE abap_bool( ).
                        t1014 = xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_attribute_chain ).
                        IF t1014 = abap_true.
                          DATA t1016 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t1016.
                          DATA t1018 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t1018.
                          DATA t1020 TYPE REF TO object.
                          CLEAR t1020.
                          t1020 = t45.
                          t1018 ?= t1020.
                          t1016 = zcl_lnt_sy_attribute_chain=>run_syntax( i_input_context = t804 i_node = t1018 i_input_967e = t2 i_type_9913 = t808 ).
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
      t1023 = xsdbool( t818 = abap_true ).
      IF t1023 = abap_true.
        DATA(t1026) = VALUE abap_bool( ).
        DATA(t1027) = VALUE abap_bool( ).
        DATA(t1028) = VALUE abap_bool( ).
        DATA(t1029) = VALUE abap_bool( ).
        DATA(t1030) = VALUE abap_bool( ).
        DATA(t1031) = VALUE abap_bool( ).
        DATA(t1032) = VALUE abap_bool( ).
        t1032 = xsdbool( t804 IS BOUND AND t804 IS INSTANCE OF zcl_lnt_void_type ).
        t1031 = xsdbool( t1032 = abap_false ).
        t1030 = t1031.
        IF t1031 = abap_true.
          DATA(t1034) = VALUE abap_bool( ).
          DATA(t1035) = VALUE abap_bool( ).
          t1035 = xsdbool( t804 IS BOUND AND t804 IS INSTANCE OF zcl_lnt_x_string_type ).
          t1034 = xsdbool( t1035 = abap_false ).
          t1030 = t1034.
        ENDIF.
        t1029 = t1030.
        IF t1030 = abap_true.
          DATA(t1037) = VALUE abap_bool( ).
          DATA(t1038) = VALUE abap_bool( ).
          t1038 = xsdbool( t804 IS BOUND AND t804 IS INSTANCE OF zcl_lnt_hex_type ).
          t1037 = xsdbool( t1038 = abap_false ).
          t1029 = t1037.
        ENDIF.
        t1028 = t1029.
        IF t1029 = abap_true.
          DATA(t1040) = VALUE abap_bool( ).
          DATA(t1041) = VALUE abap_bool( ).
          t1041 = xsdbool( t804 IS BOUND AND t804 IS INSTANCE OF zcl_lnt_x_generic_type ).
          t1040 = xsdbool( t1041 = abap_false ).
          t1028 = t1040.
        ENDIF.
        t1027 = t1028.
        IF t1028 = abap_true.
          DATA(t1043) = VALUE abap_bool( ).
          DATA(t1044) = VALUE abap_bool( ).
          t1044 = xsdbool( t804 IS BOUND AND t804 IS INSTANCE OF zcl_lnt_x_sequence_type ).
          t1043 = xsdbool( t1044 = abap_false ).
          t1027 = t1043.
        ENDIF.
        t1026 = t1027.
        IF t1027 = abap_true.
          DATA(t1046) = VALUE abap_bool( ).
          DATA(t1047) = VALUE abap_bool( ).
          t1047 = xsdbool( t804 IS BOUND AND t804 IS INSTANCE OF zcl_lnt_unknown_type ).
          t1046 = xsdbool( t1047 = abap_false ).
          t1026 = t1046.
        ENDIF.
        IF t1026 = abap_true.
          DATA(t1049) = VALUE string( ).
          t1049 = |Operator only valid for XSTRING or HEX|.
          DATA t1051 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t1051.
          t1051 = t2->issues.
          DATA t1053 TYPE REF TO zcl_lnt_issue.
          CLEAR t1053.
          DATA t1055 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1055.
          DATA t1056 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t1056.
          t1056 = t1.
          t1055 = t1056->get_first_token( ).
          DATA t1059 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1059.
          t1053 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1055 i_message_26cb = t1049 i_fix = t1059 ).
          t1051->load( ).
          APPEND t1053 TO t1051->items.
          t1051->save( ).
          DATA t1060 TYPE REF TO zcl_lnt_void_type.
          CLEAR t1060.
          DATA t1061 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1061.
          DATA(t1063) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t1064) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1064->has = abap_true.
          t1064->value = t1063.
          t1061 = t1064.
          DATA t1066 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1066.
          t1060 = zcl_lnt_void_type=>get_db65( i_voided = t1061 i_qualified_name = t1066 ).
          result = t1060.
          RETURN.
        ENDIF.
        DATA(t1067) = VALUE abap_bool( ).
        t1067 = xsdbool( t820 = abap_false ).
        IF t1067 = abap_true.
          t818 = abap_false.
        ENDIF.
        t820 = abap_false.
      ENDIF.
      DATA t1072 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t1072.
      DATA t1074 TYPE REF TO object.
      CLEAR t1074.
      t1074 = t36->shift( ).
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
      DATA t1080 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1080.
      CLEAR t1080.
      t1077 = xsdbool( t45 IS INITIAL ).
      IF t1077 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t1084) = VALUE abap_bool( ).
    DATA t1085 TYPE REF TO zcl_lnt_abstract_token.
    DATA t1086 TYPE REF TO zcl_lnt_expression_node.
    t1086 = t1.
    DATA(t1088) = |&&|.
    t1085 = t1086->find_direct_token_by_text( i_text = t1088 ).
    t1084 = xsdbool( t1085 IS BOUND ).
    IF t1084 = abap_true.
      DATA t1089 TYPE REF TO zcl_lnt_string_type.
      DATA t1090 TYPE REF TO zcl_lnt_abstract_type_data.
      t1089 = zcl_lnt_string_type=>get_db65( i_input_967e = t1090 ).
      result = t1089.
      RETURN.
    ENDIF.
    result = t804.

  ENDMETHOD.

  METHOD traverse_remaining_children.
    DATA(t1) = i_children_9020.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t4 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t6 TYPE i.
    DATA t7 TYPE i.
    t1->load( ).
    t7 = lines( t1->items ).
    DATA(t9) = 1.
    t6 = t7 - t9.
    t6 = t6 + 1.
    DATA t10 TYPE REF TO object.
    t1->load( ).
    READ TABLE t1->items INDEX t6 INTO t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    t14 = xsdbool( t3 IS BOUND ).
    t13 = t14.
    IF t14 = abap_true.
      DATA t16 TYPE abap_bool.
      DATA t17 TYPE REF TO object.
      t17 = t3->get_db65( ).
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_st_source ).
      t13 = t16.
    ENDIF.
    IF t13 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      t22 ?= t3.
      t20 = t22.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t19 = zcl_lnt_sy_source=>run_syntax( i_node = t20 i_input_967e = t2 i_target_type = t26 i_write_reference = t27 i_allow_generic_deference = t28 i_read_reference = t29 ).
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
      DATA(t9) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t9->has = abap_true.
      t9->value = abap_false.
      t3 = t9.
    ENDIF.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE abap_bool.
    t12 = t3->value.
    t11 = xsdbool( t12 = abap_true ).
    IF t11 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_abstract_type.
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      t16 = zcl_lnt_sy_source=>calculation_type( i_left = t1 i_right = t2 ).
      t15 = t16.
      DATA(t19) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = xsdbool( t15 IS INITIAL ).
      t24 = xsdbool( t25 = abap_false ).
      t19 = t24.
      IF t19 = abap_true.
        result = t15.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t32 TYPE abap_bool.
    DATA t33 TYPE abap_bool.
    t33 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_float_type ).
    t32 = t33.
    IF t33 = abap_true.
      DATA t35 TYPE abap_bool.
      t35 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
      t32 = t35.
    ENDIF.
    IF t32 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_float_type.
      t37 ?= t1.
      result = t37.
      RETURN.
    ELSE.
      DATA t39 TYPE abap_bool.
      DATA t40 TYPE abap_bool.
      t40 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ).
      t39 = t40.
      IF t40 = abap_true.
        DATA t42 TYPE abap_bool.
        t42 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_hex_type ).
        t39 = t42.
      ENDIF.
      IF t39 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_integer_type.
        t44 ?= t1.
        result = t44.
        RETURN.
      ELSE.
        DATA(t46) = VALUE abap_bool( ).
        DATA t47 TYPE abap_bool.
        DATA t48 TYPE abap_bool.
        t48 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ).
        t47 = t48.
        IF t48 = abap_false.
          DATA t50 TYPE abap_bool.
          t50 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_float_type ).
          t47 = t50.
        ENDIF.
        t46 = t47.
        IF t47 = abap_true.
          DATA(t52) = VALUE abap_bool( ).
          DATA t53 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t54 TYPE REF TO zcl_lnt_abstract_type.
          t54 = t2.
          DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t57) = xsdbool( t54 IS INITIAL ).
          IF t57 = abap_true.
          ELSE.
            DATA t60 TYPE abap_bool.
            DATA t61 TYPE REF TO zcl_lnt_abstract_type.
            t61 = t54.
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
          DATA t66 TYPE REF TO zcl_lnt_abstract_type.
          DATA t67 TYPE REF TO zif_lnt_union_e92befca.
          DATA t68 TYPE REF TO zcl_lnt_abstract_type.
          t68 = t1.
          t67 ?= t68.
          t66 ?= t67.
          result = t66.
          RETURN.
        ELSE.
          result = t2.
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
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t1 IS INITIAL ).
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t11 = xsdbool( t2 IS INITIAL ).
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      CLEAR result.
      RETURN.
    ELSE.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      t20 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
      t19 = t20.
      IF t20 = abap_false.
        DATA t22 TYPE abap_bool.
        t22 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
        t19 = t22.
      ENDIF.
      IF t19 = abap_true.
        DATA t26 TYPE REF TO zcl_lnt_abstract_type.
        DATA t27 TYPE REF TO zif_lnt_union_adffe656.
        DATA t28 TYPE REF TO zcl_lnt_abstract_type.
        t28 = t1.
        t27 ?= t28.
        t26 ?= t27.
        result = t26.
        RETURN.
      ELSE.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE abap_bool.
        t32 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_void_type ).
        t31 = t32.
        IF t32 = abap_false.
          DATA t34 TYPE abap_bool.
          t34 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_unknown_type ).
          t31 = t34.
        ENDIF.
        IF t31 = abap_true.
          DATA t38 TYPE REF TO zcl_lnt_abstract_type.
          DATA t39 TYPE REF TO zif_lnt_union_adffe656.
          DATA t40 TYPE REF TO zcl_lnt_abstract_type.
          t40 = t2.
          t39 ?= t40.
          t38 ?= t39.
          result = t38.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t45 TYPE REF TO zcl_lnt_abstract_type.
    t45 = t1.
    t44 = zcl_lnt_sy_source=>numeric_rank( i_type_9913 = t45 ).
    t43 = t44.
    DATA t47 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t49 TYPE REF TO zcl_lnt_abstract_type.
    t49 = t2.
    t48 = zcl_lnt_sy_source=>numeric_rank( i_type_9913 = t49 ).
    t47 = t48.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = VALUE abap_bool( ).
    DATA t53 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t53 = t43.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t57) = VALUE abap_bool( ).
    IF t53 IS INITIAL.
      t57 = abap_true.
    ELSEIF t53->has = abap_false.
      t57 = abap_true.
    ENDIF.
    t52 = t57.
    t51 = t52.
    IF t52 = abap_true.
      DATA(t59) = VALUE abap_bool( ).
      DATA t60 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t60 = t47.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t64) = VALUE abap_bool( ).
      IF t60 IS INITIAL.
        t64 = abap_true.
      ELSEIF t60->has = abap_false.
        t64 = abap_true.
      ENDIF.
      t59 = t64.
      t51 = t59.
    ENDIF.
    IF t51 = abap_true.
      CLEAR result.
      RETURN.
    ELSE.
      DATA(t67) = VALUE abap_bool( ).
      DATA t68 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t68 = t47.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t72) = VALUE abap_bool( ).
      IF t68 IS INITIAL.
        t72 = abap_true.
      ELSEIF t68->has = abap_false.
        t72 = abap_true.
      ENDIF.
      t67 = t72.
      IF t67 = abap_true.
        result = t1.
        RETURN.
      ELSE.
        DATA(t79) = VALUE abap_bool( ).
        DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t80 = t43.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t84) = VALUE abap_bool( ).
        IF t80 IS INITIAL.
          t84 = abap_true.
        ELSEIF t80->has = abap_false.
          t84 = abap_true.
        ENDIF.
        t79 = t84.
        IF t79 = abap_true.
          result = t2.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t93 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t94) = VALUE abap_bool( ).
    DATA(t95) = VALUE f( ).
    IF t43->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t95 = t43->value.
    DATA(t97) = VALUE f( ).
    IF t47->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t97 = t47->value.
    t94 = xsdbool( t95 >= t97 ).
    IF t94 = abap_true.
      t93 = t1.
    ELSE.
      t93 = t2.
    ENDIF.
    result = t93.

  ENDMETHOD.

  METHOD numeric_rank.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE abap_bool.
    t2 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_dec_float34_type ).
    IF t2 = abap_true.
      DATA(t6) = CONV f( 6 ).
      DATA(t7) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t7->has = abap_true.
      t7->value = t6.
      result = t7.
      RETURN.
    ELSE.
      DATA t9 TYPE abap_bool.
      t9 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_dec_float16_type ).
      IF t9 = abap_true.
        DATA(t13) = CONV f( 5 ).
        DATA(t14) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t14->has = abap_true.
        t14->value = t13.
        result = t14.
        RETURN.
      ELSE.
        DATA t16 TYPE abap_bool.
        t16 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_float_type ).
        IF t16 = abap_true.
          DATA(t20) = CONV f( 4 ).
          DATA(t21) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t21->has = abap_true.
          t21->value = t20.
          result = t21.
          RETURN.
        ELSE.
          DATA t23 TYPE abap_bool.
          t23 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_packed_type ).
          IF t23 = abap_true.
            DATA(t27) = CONV f( 3 ).
            DATA(t28) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t28->has = abap_true.
            t28->value = t27.
            result = t28.
            RETURN.
          ELSE.
            DATA t30 TYPE abap_bool.
            t30 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer8_type ).
            IF t30 = abap_true.
              DATA(t34) = CONV f( 2 ).
              DATA(t35) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t35->has = abap_true.
              t35->value = t34.
              result = t35.
              RETURN.
            ELSE.
              DATA t37 TYPE abap_bool.
              t37 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ).
              IF t37 = abap_true.
                DATA(t41) = CONV f( 1 ).
                DATA(t42) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t42->has = abap_true.
                t42->value = t41.
                result = t42.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD add_if_inferred.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_inferred_type.
    DATA t5 TYPE REF TO zcl_lnt_basic_types.
    t5 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    t8 = t1->find_direct_expression( i_type_9913 = t10 ).
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    t13 = t8.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t16) = xsdbool( t13 IS INITIAL ).
    IF t16 = abap_true.
    ELSE.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      t20 = t13.
      t19 = t20->get_first_token( ).
      t15 = t19.
    ENDIF.
    t11 = t15.
    DATA t22 TYPE abap_bool.
    DATA t23 TYPE abap_bool.
    t23 = xsdbool( t3 IS BOUND ).
    t22 = t23.
    IF t23 = abap_true.
      DATA t25 TYPE abap_bool.
      t25 = xsdbool( t11 IS BOUND ).
      t22 = t25.
    ENDIF.
    IF t22 = abap_true.
      DATA t28 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t31 TYPE REF TO zcl_lnt_abstract_type.
      t31 = t3.
      t30 = t31->get_qualified_name( ).
      t28 = t5->lookup_qualified_name( i_name = t30 ).
      DATA t33 TYPE abap_bool.
      t33 = xsdbool( t28 IS BOUND ).
      IF t33 = abap_true.
        DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        t37 = t11.
        DATA t39 TYPE string.
        t39 = t2->filename.
        DATA t41 TYPE REF TO zcl_lnt_abstract_type.
        t41 = t3.
        DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t36 = NEW zcl_lnt_typed_identifier( i_token = t37 i_filename = t39 i_type_9913 = t41 i_meta = t43 i_value = t44 ).
        DATA t45 TYPE REF TO zcl_lnt_current_scope.
        t45 = t2->scope.
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        t47 = t11.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t54) = |Inferred Type|.
        CREATE OBJECT t53.
        t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t53->sval = t54.
        DATA t55 TYPE string.
        t55 = t2->filename.
        DATA t57 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t59 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t60 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t64) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t64->has = abap_true.
        t64->value = abap_true.
        t60 = t64.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t59 = NEW zcl_lnt_ireference_extras( i_oo_name = t66 i_oo_type = t68 i_found_qualified = t60 ).
        CREATE OBJECT t59->zlnt_view_ownkeys_b0e8086400eb.
        t59->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `foundQualified` p1 = t70 ).
        CREATE OBJECT t59->zlnt_json_ownkeys_70e5fd461788.
        t59->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t71) = |foundQualified|.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
        t57 = t59.
        t45->add_reference( i_usage = t47 i_referencing = t36 i_type_9913 = t53 i_filename = t55 i_extra = t57 ).
      ELSE.
        DATA t74 TYPE abap_bool.
        t74 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_object_reference_type ).
        IF t74 = abap_true.
          DATA t78 TYPE REF TO zcl_lnt_current_scope.
          DATA t79 TYPE REF TO zcl_lnt_current_scope.
          t79 = t2->scope.
          t78 = t79.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t83 TYPE REF TO zcl_lnt_abstract_type.
          DATA t84 TYPE REF TO zcl_lnt_object_reference_type.
          t84 ?= t3.
          t83 = t84.
          DATA t87 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t88 TYPE REF TO zcl_lnt_abstract_type_data.
          t88 = t83->data_56cc.
          t87 = t88.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t91) = xsdbool( t87 IS INITIAL ).
          IF t91 = abap_true.
          ELSE.
            DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t95 TYPE REF TO zcl_lnt_abstract_type_data.
            t95 = t87.
            t94 = t95->zlnt_view_read_sr_c978da49ae47( ).
            t90 = t94.
          ENDIF.
          t81 = t90.
          DATA t97 TYPE REF TO zif_lnt_interface_definition.
          DATA(t98) = VALUE abap_bool( ).
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t99 = t81.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t103) = VALUE abap_bool( ).
          IF t99 IS INITIAL.
            t103 = abap_true.
          ELSEIF t99->has = abap_false.
            t103 = abap_true.
          ENDIF.
          t98 = t103.
          IF t98 = abap_true.
          ELSE.
            DATA t107 TYPE REF TO zif_lnt_class_definition.
            DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t112 TYPE string.
            t112 = t81->value.
            DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t114->has = abap_true.
            t114->value = t112.
            t109 = t114.
            DATA t116 TYPE REF TO zif_lnt_class_definition.
            DATA(t117) = VALUE abap_bool( ).
            DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t118 = t109.
            DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t122) = VALUE abap_bool( ).
            IF t118 IS INITIAL.
              t122 = abap_true.
            ELSEIF t118->has = abap_false.
              t122 = abap_true.
            ENDIF.
            t117 = t122.
            IF t117 = abap_true.
            ELSE.
              DATA t126 TYPE REF TO zif_lnt_class_definition.
              DATA t128 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t129 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t129 = t78->current.
              t128 = t129.
              DATA t131 TYPE REF TO zif_lnt_class_definition.
              DATA(t132) = xsdbool( t128 IS INITIAL ).
              IF t132 = abap_true.
              ELSE.
                DATA t135 TYPE REF TO zif_lnt_class_definition.
                DATA t136 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t136 = t128.
                DATA t138 TYPE string.
                t138 = t109->value.
                t135 = t136->find_class_definition( i_name = t138 ).
                t131 = t135.
              ENDIF.
              t126 = t131.
              DATA t140 TYPE REF TO zif_lnt_class_definition.
              DATA t141 TYPE abap_bool.
              t141 = xsdbool( t126 IS BOUND ).
              IF t141 = abap_true.
                t140 = t126.
              ELSE.
                DATA t149 TYPE REF TO zcl_lnt_class.
                DATA t150 TYPE REF TO zcl_lnt_class.
                DATA t151 TYPE REF TO zif_lnt_object.
                DATA t152 TYPE REF TO zif_lnt_registry.
                t152 = t78->reg.
                DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t156) = |CLAS|.
                DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t157->has = abap_true.
                t157->value = t156.
                t154 = t157.
                DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t161 TYPE string.
                t161 = t109->value.
                DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t163->has = abap_true.
                t163->value = t161.
                t159 = t163.
                t151 = t152->get_object( i_type_9913 = t154 i_name = t159 ).
                DATA t165 TYPE REF TO object.
                t165 = t151.
                t150 ?= t165.
                t149 = t150.
                DATA t166 TYPE REF TO zif_lnt_class_definition.
                DATA t167 TYPE abap_bool.
                t167 = xsdbool( t149 IS BOUND ).
                IF t167 = abap_true.
                  DATA t169 TYPE REF TO zif_lnt_class_definition.
                  DATA t170 TYPE REF TO zcl_lnt_class.
                  t170 = t149.
                  t169 = t170->gt_dfn_ins_src_obj_cls_ts_clss( ).
                  t166 = t169.
                ELSE.
                  CLEAR t166.
                ENDIF.
                t140 = t166.
              ENDIF.
              t116 = t140.
            ENDIF.
            t107 = t116.
            DATA t173 TYPE REF TO zif_lnt_interface_definition.
            DATA t174 TYPE abap_bool.
            t174 = xsdbool( t107 IS BOUND ).
            IF t174 = abap_true.
              DATA t176 TYPE REF TO zif_lnt_interface_definition.
              DATA t177 TYPE REF TO zif_lnt_class_definition.
              t177 = t107.
              t176 ?= t177.
              t173 = t176.
            ELSE.
              DATA t180 TYPE REF TO zif_lnt_interface_definition.
              DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t185 TYPE string.
              t185 = t81->value.
              DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t187->has = abap_true.
              t187->value = t185.
              t182 = t187.
              DATA t189 TYPE REF TO zif_lnt_interface_definition.
              DATA(t190) = VALUE abap_bool( ).
              DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t191 = t182.
              DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t195) = VALUE abap_bool( ).
              IF t191 IS INITIAL.
                t195 = abap_true.
              ELSEIF t191->has = abap_false.
                t195 = abap_true.
              ENDIF.
              t190 = t195.
              IF t190 = abap_true.
              ELSE.
                DATA t199 TYPE REF TO zif_lnt_interface_definition.
                DATA t201 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA t202 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t202 = t78->current.
                t201 = t202.
                DATA t204 TYPE REF TO zif_lnt_interface_definition.
                DATA(t205) = xsdbool( t201 IS INITIAL ).
                IF t205 = abap_true.
                ELSE.
                  DATA t208 TYPE REF TO zif_lnt_interface_definition.
                  DATA t209 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  t209 = t201.
                  DATA t211 TYPE string.
                  t211 = t182->value.
                  t208 = t209->find_interface_definition( i_name = t211 ).
                  t204 = t208.
                ENDIF.
                t199 = t204.
                DATA t213 TYPE REF TO zif_lnt_interface_definition.
                DATA t214 TYPE abap_bool.
                t214 = xsdbool( t199 IS BOUND ).
                IF t214 = abap_true.
                  t213 = t199.
                ELSE.
                  DATA t222 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t223 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t224 TYPE REF TO zif_lnt_object.
                  DATA t225 TYPE REF TO zif_lnt_registry.
                  t225 = t78->reg.
                  DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t229) = |INTF|.
                  DATA(t230) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t230->has = abap_true.
                  t230->value = t229.
                  t227 = t230.
                  DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t234 TYPE string.
                  t234 = t182->value.
                  DATA(t236) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t236->has = abap_true.
                  t236->value = t234.
                  t232 = t236.
                  t224 = t225->get_object( i_type_9913 = t227 i_name = t232 ).
                  DATA t238 TYPE REF TO object.
                  t238 = t224.
                  t223 ?= t238.
                  t222 = t223.
                  DATA t239 TYPE REF TO zif_lnt_interface_definition.
                  DATA t240 TYPE abap_bool.
                  t240 = xsdbool( t222 IS BOUND ).
                  IF t240 = abap_true.
                    DATA t246 TYPE REF TO zif_lnt_interface_definition.
                    t246 = t222->def.
                    t239 = t246.
                  ELSE.
                    CLEAR t239.
                  ENDIF.
                  t213 = t239.
                ENDIF.
                t189 = t213.
              ENDIF.
              t180 = t189.
              DATA t249 TYPE REF TO zif_lnt_interface_definition.
              DATA t250 TYPE abap_bool.
              t250 = xsdbool( t180 IS BOUND ).
              IF t250 = abap_true.
                t249 = t180.
              ELSE.
                CLEAR t249.
              ENDIF.
              t173 = t249.
            ENDIF.
            t97 = t173.
          ENDIF.
          DATA t258 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t259 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t260 TYPE REF TO zcl_lnt_abstract_token.
          t260 = t11.
          DATA t262 TYPE string.
          t262 = t2->filename.
          DATA t264 TYPE REF TO zcl_lnt_object_reference_type.
          t264 ?= t3.
          DATA t266 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t259 = NEW zcl_lnt_typed_identifier( i_token = t260 i_filename = t262 i_type_9913 = t264 i_meta = t266 i_value = t267 ).
          t258 = t259.
          DATA t268 TYPE abap_bool.
          t268 = xsdbool( t97 IS BOUND ).
          IF t268 = abap_true.
            DATA t270 TYPE REF TO zcl_lnt_current_scope.
            t270 = t2->scope.
            DATA t272 TYPE REF TO zcl_lnt_abstract_token.
            t272 = t11.
            DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t279) = |Inferred Type|.
            CREATE OBJECT t278.
            t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t278->sval = t279.
            DATA t280 TYPE string.
            t280 = t2->filename.
            DATA t282 TYPE REF TO zcl_lnt_ireference_extras.
            DATA t284 TYPE REF TO zcl_lnt_ireference_extras.
            DATA t285 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA(t289) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t289->has = abap_true.
            t289->value = abap_true.
            t285 = t289.
            DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t284 = NEW zcl_lnt_ireference_extras( i_oo_name = t291 i_oo_type = t293 i_found_qualified = t285 ).
            CREATE OBJECT t284->zlnt_view_ownkeys_b0e8086400eb.
            t284->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t284->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `foundQualified` p1 = t295 ).
            CREATE OBJECT t284->zlnt_json_ownkeys_70e5fd461788.
            t284->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t296) = |foundQualified|.
            DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t284->zlnt_json_ownkeys_70e5fd461788->put( p0 = t296 p1 = t297 ).
            t282 = t284.
            t270->add_reference( i_usage = t272 i_referencing = t258 i_type_9913 = t278 i_filename = t280 i_extra = t282 ).
          ELSE.
            DATA t299 TYPE REF TO zcl_lnt_current_scope.
            t299 = t2->scope.
            DATA t301 TYPE REF TO zcl_lnt_abstract_token.
            t301 = t11.
            DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t308) = |Inferred Type|.
            CREATE OBJECT t307.
            t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t307->sval = t308.
            DATA t309 TYPE string.
            t309 = t2->filename.
            DATA t311 TYPE REF TO zcl_lnt_ireference_extras.
            DATA t313 TYPE REF TO zcl_lnt_ireference_extras.
            DATA t314 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA(t318) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t318->has = abap_true.
            t318->value = abap_false.
            t314 = t318.
            DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t313 = NEW zcl_lnt_ireference_extras( i_oo_name = t320 i_oo_type = t322 i_found_qualified = t314 ).
            CREATE OBJECT t313->zlnt_view_ownkeys_b0e8086400eb.
            t313->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `foundQualified` p1 = t324 ).
            CREATE OBJECT t313->zlnt_json_ownkeys_70e5fd461788.
            t313->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t325) = |foundQualified|.
            DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = t325 p1 = t326 ).
            t311 = t313.
            t299->add_reference( i_usage = t301 i_referencing = t258 i_type_9913 = t307 i_filename = t309 i_extra = t311 ).
          ENDIF.
        ELSE.
          DATA t329 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t330 TYPE REF TO zcl_lnt_abstract_token.
          t330 = t11.
          DATA t332 TYPE string.
          t332 = t2->filename.
          DATA t334 TYPE REF TO zcl_lnt_abstract_type.
          t334 = t3.
          DATA t336 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t329 = NEW zcl_lnt_typed_identifier( i_token = t330 i_filename = t332 i_type_9913 = t334 i_meta = t336 i_value = t337 ).
          DATA t338 TYPE REF TO zcl_lnt_current_scope.
          t338 = t2->scope.
          DATA t340 TYPE REF TO zcl_lnt_abstract_token.
          t340 = t11.
          DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t347) = |Inferred Type|.
          CREATE OBJECT t346.
          t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t346->sval = t347.
          DATA t348 TYPE string.
          t348 = t2->filename.
          DATA t350 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t352 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t353 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t357) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t357->has = abap_true.
          t357->value = abap_false.
          t353 = t357.
          DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t352 = NEW zcl_lnt_ireference_extras( i_oo_name = t359 i_oo_type = t361 i_found_qualified = t353 ).
          CREATE OBJECT t352->zlnt_view_ownkeys_b0e8086400eb.
          t352->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `foundQualified` p1 = t363 ).
          CREATE OBJECT t352->zlnt_json_ownkeys_70e5fd461788.
          t352->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t364) = |foundQualified|.
          DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t364 p1 = t365 ).
          t350 = t352.
          t338->add_reference( i_usage = t340 i_referencing = t329 i_type_9913 = t346 i_filename = t348 i_extra = t350 ).
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD determine_type.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t5 TYPE REF TO zcl_lnt_basic_types.
    t5 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    t8 = t1->find_direct_expression( i_type_9913 = t10 ).
    t7 = t8.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    t13 = t7.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t16) = xsdbool( t13 IS INITIAL ).
    IF t16 = abap_true.
    ELSE.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      t20 = t13.
      t19 = t20->get_first_token( ).
      t15 = t19.
    ENDIF.
    t11 = t15.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    t24 = t11.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = xsdbool( t24 IS INITIAL ).
    IF t27 = abap_true.
    ELSE.
      DATA(t30) = VALUE string( ).
      DATA(t34) = VALUE string( ).
      t34 = t24->str.
      t30 = t34.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t30.
      t26 = t36.
    ENDIF.
    t22 = t26.
    DATA(t37) = VALUE abap_bool( ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t37 = xsdbool( t7 IS INITIAL ).
    IF t37 = abap_true.
      DATA t44 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t45 TYPE REF TO zcx_lnt_assert_error.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t48) = |determineType, child TypeNameOrInfer not found|.
      DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t49->has = abap_true.
      t49->value = t48.
      t46 = t49.
      t45 = NEW zcx_lnt_assert_error( i_message_26cb = t46 ).
      t44 = NEW #( ).
      t44->payload = t45.
      CLEAR t44->source_value.
      DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t52 TYPE REF TO object.
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
      RAISE EXCEPTION t44.
    ELSE.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = VALUE abap_bool( ).
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t58) = |#|.
      DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t59->has = abap_true.
      t59->value = t58.
      t56 = t59.
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = VALUE abap_bool( ).
      IF t22 IS BOUND.
        t61 = t22->has.
      ENDIF.
      IF t56 IS BOUND.
        t62 = t56->has.
      ENDIF.
      IF t61 = t62.
        IF t61 = abap_false.
          t54 = abap_true.
        ELSEIF t22->value = t56->value.
          t54 = abap_true.
        ENDIF.
      ENDIF.
      t53 = t54.
      IF t54 = abap_true.
        DATA(t63) = VALUE abap_bool( ).
        t63 = xsdbool( t3 IS BOUND ).
        t53 = t63.
      ENDIF.
      IF t53 = abap_true.
        result = t3.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t70) = VALUE abap_bool( ).
    DATA(t71) = VALUE abap_bool( ).
    DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t75) = |#|.
    DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t76->has = abap_true.
    t76->value = t75.
    t73 = t76.
    DATA(t78) = VALUE abap_bool( ).
    DATA(t79) = VALUE abap_bool( ).
    IF t22 IS BOUND.
      t78 = t22->has.
    ENDIF.
    IF t73 IS BOUND.
      t79 = t73->has.
    ENDIF.
    IF t78 = t79.
      IF t78 = abap_false.
        t71 = abap_true.
      ELSEIF t22->value = t73->value.
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
      t80 = xsdbool( t11 IS BOUND ).
      t70 = t80.
    ENDIF.
    IF t70 = abap_true.
      DATA t82 TYPE REF TO zcl_lnt_abstract_type.
      DATA t83 TYPE REF TO zcl_lnt_abstract_type.
      DATA t85 TYPE REF TO zcl_lnt_expression_node.
      t85 = t7.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t83 = t5->parse_type( i_node = t85 i_qualified_name = t87 ).
      t82 = t83.
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = VALUE abap_bool( ).
      t89 = xsdbool( t82 IS BOUND ).
      t88 = t89.
      IF t89 = abap_true.
        DATA(t91) = VALUE abap_bool( ).
        DATA t92 TYPE REF TO zcl_lnt_abstract_type.
        t92 = t82.
        t91 = xsdbool( t92 IS BOUND AND t92 IS INSTANCE OF zcl_lnt_unknown_type ).
        t88 = t91.
      ENDIF.
      IF t88 = abap_true.
        DATA(t94) = VALUE abap_bool( ).
        DATA(t95) = VALUE abap_bool( ).
        DATA t99 TYPE REF TO zcl_lnt_current_scope.
        t99 = t2->scope.
        DATA t101 TYPE REF TO zcl_lnt_ddic.
        DATA t102 TYPE REF TO zif_lnt_registry.
        t102 = t99->reg.
        t101 = NEW zcl_lnt_ddic( i_reg_f149 = t102 ).
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t104 = t22.
        DATA(t106) = VALUE abap_bool( ).
        DATA(t107) = VALUE abap_bool( ).
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t108 = t104.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t112) = VALUE abap_bool( ).
        IF t108 IS INITIAL.
          t112 = abap_true.
        ELSEIF t108->has = abap_false.
          t112 = abap_true.
        ENDIF.
        t107 = t112.
        IF t107 = abap_true.
          t106 = abap_true.
        ELSE.
          DATA(t115) = VALUE abap_bool( ).
          DATA t116 TYPE REF TO zif_lnt_registry.
          t116 = t101->reg.
          DATA(t118) = VALUE string( ).
          t118 = t104->value.
          t115 = t116->in_error_namespace( i_name = t118 ).
          t106 = t115.
        ENDIF.
        t95 = t106.
        t94 = xsdbool( t95 = abap_false ).
        IF t94 = abap_true.
          DATA t121 TYPE REF TO zcl_lnt_current_scope.
          t121 = t2->scope.
          DATA t123 TYPE REF TO zcl_lnt_abstract_token.
          t123 = t11.
          DATA t128 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t130) = |Type (Void)|.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t129->sval = t130.
          DATA(t131) = VALUE string( ).
          t131 = t2->filename.
          DATA t133 TYPE REF TO zcl_lnt_ireference_extras.
          t121->add_reference( i_usage = t123 i_referencing = t128 i_type_9913 = t129 i_filename = t131 i_extra = t133 ).
          DATA t134 TYPE REF TO zcl_lnt_void_type.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t134 = zcl_lnt_void_type=>get_db65( i_voided = t22 i_qualified_name = t136 ).
          result = t134.
          RETURN.
        ELSE.
          DATA t138 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t139 TYPE REF TO zcl_lnt_abstract_token.
          t139 = t11.
          DATA(t141) = VALUE string( ).
          t141 = t2->filename.
          DATA t143 TYPE REF TO zcl_lnt_unknown_type.
          t143 ?= t82.
          DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t138 = NEW zcl_lnt_typed_identifier( i_token = t139 i_filename = t141 i_type_9913 = t143 i_meta = t145 i_value = t146 ).
          DATA t147 TYPE REF TO zcl_lnt_current_scope.
          t147 = t2->scope.
          DATA t149 TYPE REF TO zcl_lnt_abstract_token.
          t149 = t11.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t156) = |Type|.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t155->sval = t156.
          DATA(t157) = VALUE string( ).
          t157 = t2->filename.
          DATA t159 TYPE REF TO zcl_lnt_ireference_extras.
          t147->add_reference( i_usage = t149 i_referencing = t138 i_type_9913 = t155 i_filename = t157 i_extra = t159 ).
          DATA t160 TYPE REF TO zcl_lnt_unknown_type.
          t160 ?= t82.
          result = t160.
          RETURN.
        ENDIF.
      ELSE.
        DATA(t162) = VALUE abap_bool( ).
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t162 = xsdbool( t82 IS INITIAL ).
        IF t162 = abap_true.
          DATA(t169) = VALUE string( ).
          DATA(t170) = VALUE string( ).
          DATA(t171) = VALUE string( ).
          DATA(t172) = |Type "|.
          DATA(t173) = VALUE string( ).
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t174 = t22.
          DATA(t176) = VALUE string( ).
          DATA(t177) = VALUE abap_bool( ).
          IF t174 IS INITIAL.
            t177 = abap_true.
          ELSEIF t174->has = abap_false.
            t177 = abap_true.
          ENDIF.
          IF t177 = abap_true.
            t176 = |undefined|.
          ELSE.
            DATA(t180) = VALUE string( ).
            t180 = t174->value.
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
          t185 = t2->issues.
          DATA t187 TYPE REF TO zcl_lnt_issue.
          DATA t189 TYPE REF TO zcl_lnt_abstract_token.
          t189 = t1->get_first_token( ).
          DATA t192 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t187 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t189 i_message_26cb = t169 i_fix = t192 ).
          t185->load( ).
          APPEND t187 TO t185->items.
          t185->save( ).
          DATA t193 TYPE REF TO zcl_lnt_void_type.
          DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t196) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t197->has = abap_true.
          t197->value = t196.
          t194 = t197.
          DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t193 = zcl_lnt_void_type=>get_db65( i_voided = t194 i_qualified_name = t199 ).
          result = t193.
          RETURN.
        ENDIF.
      ENDIF.
      result = t82.
      RETURN.
    ENDIF.
    result = t3.

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
