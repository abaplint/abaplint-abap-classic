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
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zcl_lnt_abstract_node.
    t40 = t1.
    t38 ?= t40->children.
    t36 = t38->slice0( ).
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
    DATA(t52) = t45.
    IF xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
      DATA t53 TYPE REF TO zcl_lnt_abstract_token.
      DATA t56 TYPE REF TO zcl_lnt_token_node.
      t56 ?= t45.
      t53 = t56->token.
      DATA(t61) = VALUE string( ).
      DATA(t62) = VALUE string( ).
      DATA(t63) = VALUE string( ).
      t63 = t53->str.
      DATA(t68) = strlen( t63 ).
      t62 = t63.
      IF t62 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t62 TO UPPER CASE.
      ELSE.
        t62 = zlnt_runtime_uppe_91169605024d=>full( t62 ).
      ENDIF.
      t61 = t62.
      IF xsdbool( t61 = |(| ) = abap_true.
      ELSE.
        IF xsdbool( t61 = |-| ) = abap_true.
        ELSE.
          IF xsdbool( t61 = |+| ) = abap_true.
          ELSE.
            IF xsdbool( t61 = |BIT| ) = abap_true.
            ELSE.
              IF xsdbool( t61 = |BOOLC| ) = abap_true.
                DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t89->has = abap_true.
                t89->value = t61.
                DATA t91 TYPE REF TO zif_lnt_method_definition.
                t91 = zcl_lnt_built_in=>search_builtin( i_name = t89 ).
                DATA t93 TYPE REF TO zcl_lnt_current_scope.
                t93 = t2->scope.
                DATA t95 TYPE REF TO zcl_lnt_abstract_token.
                t95 = t53.
                DATA t99 TYPE REF TO zcl_lnt_fi_identifier.
                IF xsdbool( t91 IS INITIAL ) = abap_true.
                ELSE.
                  DATA t103 TYPE REF TO zcl_lnt_fi_identifier.
                  t103 ?= t91.
                  t99 = t103.
                ENDIF.
                DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CREATE OBJECT t106.
                t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                t106->sval = |Builtin Method|.
                DATA(t108) = VALUE string( ).
                t108 = t2->filename.
                DATA t110 TYPE REF TO zcl_lnt_ireference_extras.
                t93->add_reference( i_usage = t95 i_referencing = t99 i_type_9913 = t106 i_filename = t108 i_extra = t110 ).
                DATA t113 TYPE REF TO zcl_lnt_expression_node.
                t113 = t1.
                DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
                zcl_lnt_sy_cond=>run_syntax( i_node = t113->find_direct_expression( i_type_9913 = t115 ) i_input_967e = t2 ).
                DATA t118 TYPE REF TO zcl_lnt_abstract_type_data.
                result = zcl_lnt_string_type=>get_db65( i_input_967e = t118 ).
                RETURN.
              ELSE.
                IF xsdbool( t61 = |XSDBOOL| ) = abap_true.
                  DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t127->has = abap_true.
                  t127->value = t61.
                  DATA t129 TYPE REF TO zif_lnt_method_definition.
                  t129 = zcl_lnt_built_in=>search_builtin( i_name = t127 ).
                  DATA t131 TYPE REF TO zcl_lnt_current_scope.
                  t131 = t2->scope.
                  DATA t133 TYPE REF TO zcl_lnt_abstract_token.
                  t133 = t53.
                  DATA t137 TYPE REF TO zcl_lnt_fi_identifier.
                  IF xsdbool( t129 IS INITIAL ) = abap_true.
                  ELSE.
                    DATA t141 TYPE REF TO zcl_lnt_fi_identifier.
                    t141 ?= t129.
                    t137 = t141.
                  ENDIF.
                  DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CREATE OBJECT t144.
                  t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                  t144->sval = |Builtin Method|.
                  DATA(t146) = VALUE string( ).
                  t146 = t2->filename.
                  DATA t148 TYPE REF TO zcl_lnt_ireference_extras.
                  t131->add_reference( i_usage = t133 i_referencing = t137 i_type_9913 = t144 i_filename = t146 i_extra = t148 ).
                  DATA t151 TYPE REF TO zcl_lnt_expression_node.
                  t151 = t1.
                  DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
                  zcl_lnt_sy_cond=>run_syntax( i_node = t151->find_direct_expression( i_type_9913 = t153 ) i_input_967e = t2 ).
                  DATA t159 TYPE REF TO zcl_lnt_abstract_type_data.
                  DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t164->has = abap_true.
                  t164->value = |ABAP_BOOL|.
                  t160 = t164.
                  DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t170->has = abap_true.
                  t170->value = |ABAP_BOOL|.
                  DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t159 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t160 i_conversion_exit = t172 i_derived_from_constant = t174 i_ddic_name = t170 i_rtti_name = t176 i_description = t178 ).
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
                  DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t183 ).
                  DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ddicName| p1 = t185 ).
                  ENDIF.
                  result = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t159 ).
                  RETURN.
                ELSE.
                  IF xsdbool( t61 = |REDUCE| ) = abap_true.
                    DATA t190 TYPE REF TO zcl_lnt_abstract_type.
                    t190 = zcl_lnt_sy_source=>determine_type( i_node = t1 i_input_967e = t2 i_target_type = t3 ).
                    DATA t196 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t199 TYPE REF TO zcl_lnt_expression_node.
                    t199 = t1.
                    DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d254_c290c4a7bfe3.
                    t196 = zcl_lnt_sy_reduce_body=>run_syntax( i_node = t199->find_direct_expression( i_type_9913 = t201 ) i_input_967e = t2 i_target_type = t190 ).
                    DATA(t204) = VALUE abap_bool( ).
                    DATA(t205) = VALUE abap_bool( ).
                    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t205 = xsdbool( t190 IS INITIAL ).
                    t204 = t205.
                    IF t205 = abap_false.
                      t204 = t190->is_generic( ).
                    ENDIF.
                    IF t204 = abap_true.
                      zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t196 ).
                    ELSE.
                      zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t190 ).
                    ENDIF.
                    zcl_lnt_sy_source=>traverse_remaining_children( i_children_9020 = t36 i_input_967e = t2 ).
                    DATA t229 TYPE REF TO zcl_lnt_abstract_type.
                    IF xsdbool( t190 IS BOUND ) = abap_true.
                      t229 = t190.
                    ELSE.
                      t229 = t196.
                    ENDIF.
                    result = t229.
                    RETURN.
                  ELSE.
                    IF xsdbool( t61 = |SWITCH| ) = abap_true.
                      DATA t241 TYPE REF TO zcl_lnt_abstract_type.
                      t241 = zcl_lnt_sy_source=>determine_type( i_node = t1 i_input_967e = t2 i_target_type = t3 ).
                      DATA t247 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t250 TYPE REF TO zcl_lnt_expression_node.
                      t250 = t1.
                      DATA(t252) = zlnt_runtime_desc_78196487750d=>zlnt_member_d279_5e96219eaf2c.
                      t247 = zcl_lnt_sy_switch_body=>run_syntax( i_node = t250->find_direct_expression( i_type_9913 = t252 ) i_input_967e = t2 i_target_type = t241 ).
                      DATA(t255) = VALUE abap_bool( ).
                      DATA(t256) = VALUE abap_bool( ).
                      DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t256 = xsdbool( t241 IS INITIAL ).
                      t255 = t256.
                      IF t256 = abap_false.
                        t255 = t241->is_generic( ).
                      ENDIF.
                      IF t255 = abap_true.
                        zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t247 ).
                      ELSE.
                        zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t241 ).
                      ENDIF.
                      DATA t278 TYPE REF TO zcl_lnt_abstract_type.
                      IF xsdbool( t241 IS BOUND ) = abap_true.
                        t278 = t241.
                      ELSE.
                        t278 = t247.
                      ENDIF.
                      result = t278.
                      RETURN.
                    ELSE.
                      IF xsdbool( t61 = |COND| ) = abap_true.
                        DATA t290 TYPE REF TO zcl_lnt_abstract_type.
                        t290 = zcl_lnt_sy_source=>determine_type( i_node = t1 i_input_967e = t2 i_target_type = t3 ).
                        DATA t296 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t299 TYPE REF TO zcl_lnt_expression_node.
                        t299 = t1.
                        DATA(t301) = zlnt_runtime_desc_78196487750d=>zlnt_member_d138_55fd16dd4da4.
                        t296 = zcl_lnt_sy_cond_body=>run_syntax( i_node = t299->find_direct_expression( i_type_9913 = t301 ) i_input_967e = t2 i_target_type = t290 ).
                        DATA(t304) = VALUE abap_bool( ).
                        DATA(t305) = VALUE abap_bool( ).
                        DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        t305 = xsdbool( t290 IS INITIAL ).
                        t304 = t305.
                        IF t305 = abap_false.
                          t304 = t290->is_generic( ).
                        ENDIF.
                        IF t304 = abap_true.
                          zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t296 ).
                        ELSE.
                          zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t290 ).
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
                        IF xsdbool( t290 IS BOUND ) = abap_true.
                          t349 = t290.
                        ELSE.
                          t349 = t296.
                        ENDIF.
                        result = t349.
                        RETURN.
                      ELSE.
                        IF xsdbool( t61 = |CONV| ) = abap_true.
                          DATA t361 TYPE REF TO zcl_lnt_abstract_type.
                          t361 = zcl_lnt_sy_source=>determine_type( i_node = t1 i_input_967e = t2 i_target_type = t3 ).
                          DATA t367 TYPE REF TO zcl_lnt_abstract_type.
                          DATA t371 TYPE REF TO zcl_lnt_expression_node.
                          t371 = t1.
                          DATA(t373) = zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924.
                          t367 = zcl_lnt_sy_conv_body=>run_syntax( i_node = t371->find_direct_expression( i_type_9913 = t373 ) i_input_967e = t2 ).
                          DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          DATA t377 TYPE REF TO zcl_lnt_expression_node.
                          DATA t379 TYPE REF TO zcl_lnt_expression_node.
                          t379 = t1.
                          DATA(t381) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
                          t377 = t379->find_direct_expression( i_type_9913 = t381 ).
                          DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          IF xsdbool( t377 IS INITIAL ) = abap_true.
                          ELSE.
                            DATA(t386) = VALUE string( ).
                            t386 = t377->concat_tokens( ).
                            DATA(t389) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t389->has = abap_true.
                            t389->value = t386.
                            t382 = t389.
                          ENDIF.
                          t375 = t382.
                          DATA t392 TYPE REF TO zcl_lnt_type_utils.
                          DATA t394 TYPE REF TO zcl_lnt_current_scope.
                          t394 = t2->scope.
                          t392 = NEW zcl_lnt_type_utils( i_scope = t394 ).
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
                            t401 = xsdbool( t398 IS BOUND AND t398 IS INSTANCE OF zcl_lnt_ty_table_type ).
                          ENDIF.
                          IF t401 = abap_true.
                            DATA t408 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t412 TYPE REF TO zcl_lnt_ty_table_type.
                            t412 ?= t396.
                            t408 = t412->row_type.
                            DATA t417 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t421 TYPE REF TO zcl_lnt_ty_table_type.
                            t421 ?= t398.
                            t417 = t421->row_type.
                            t400 = t392->is_assignable( i_source_75cf = t408 i_target_5f8a = t417 ).
                          ELSE.
                            t400 = t392->is_assignable( i_source_75cf = t396 i_target_5f8a = t398 ).
                          ENDIF.
                          IF xsdbool( t400 = abap_false ) = abap_true.
                            DATA(t431) = VALUE string( ).
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
                            IF xsdbool( t442 IS INITIAL ) = abap_true.
                            ELSE.
                              t444 = t442->zlnt_builtin_clas_3f891b097658( ).
                            ENDIF.
                            t440 = t444.
                            DATA t451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            IF xsdbool( t440 IS INITIAL ) = abap_true.
                            ELSE.
                              DATA(t455) = VALUE string( ).
                              t455 = t440->name.
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
                              t459 = t438->value.
                            ENDIF.
                            t437 = t459.
                            DATA(t465) = strlen( t436 ).
                            t435 = |{ t436 }{ t437 }|.
                            DATA(t467) = strlen( t435 ).
                            t434 = |{ t435 }{ |, | }|.
                            DATA(t468) = VALUE string( ).
                            DATA t469 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            DATA t471 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            DATA t473 TYPE REF TO zcl_lnt_abstract_type.
                            t473 = t367.
                            DATA t475 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            IF xsdbool( t473 IS INITIAL ) = abap_true.
                            ELSE.
                              t475 = t473->zlnt_builtin_clas_3f891b097658( ).
                            ENDIF.
                            t471 = t475.
                            DATA t482 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            IF xsdbool( t471 IS INITIAL ) = abap_true.
                            ELSE.
                              DATA(t486) = VALUE string( ).
                              t486 = t471->name.
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
                              t490 = t469->value.
                            ENDIF.
                            t468 = t490.
                            DATA(t496) = strlen( t434 ).
                            t433 = |{ t434 }{ t468 }|.
                            DATA(t498) = strlen( t433 ).
                            t431 = |{ t433 }{ || }|.
                            DATA t499 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            t499 = t2->issues.
                            DATA t501 TYPE REF TO zcl_lnt_issue.
                            DATA t507 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                            t501 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t431 i_fix = t507 ).
                            t499->load( ).
                            APPEND t501 TO t499->items.
                            t499->save( ).
                            DATA(t511) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                            DATA(t512) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t512->has = abap_true.
                            t512->value = t511.
                            DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            result = zcl_lnt_void_type=>get_db65( i_voided = t512 i_qualified_name = t514 ).
                            RETURN.
                          ELSE.
                            DATA(t515) = VALUE abap_bool( ).
                            DATA(t516) = VALUE abap_bool( ).
                            DATA t517 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            DATA t518 TYPE REF TO zcl_lnt_abstract_type.
                            t518 = t361.
                            DATA t520 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            IF xsdbool( t518 IS INITIAL ) = abap_true.
                            ELSE.
                              DATA(t524) = VALUE abap_bool( ).
                              t524 = t518->is_generic( ).
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
                              DATA(t533) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t533->has = abap_true.
                              t533->value = |#|.
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
                              DATA t539 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                              t539 = t2->issues.
                              DATA t541 TYPE REF TO zcl_lnt_issue.
                              DATA t547 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                              t541 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Cannot CONV to generic type| i_fix = t547 ).
                              t539->load( ).
                              APPEND t541 TO t539->items.
                              t539->save( ).
                              DATA(t551) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                              DATA(t552) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t552->has = abap_true.
                              t552->value = t551.
                              DATA t554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              result = zcl_lnt_void_type=>get_db65( i_voided = t552 i_qualified_name = t554 ).
                              RETURN.
                            ENDIF.
                          ENDIF.
                          zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t361 ).
                          zcl_lnt_sy_source=>traverse_remaining_children( i_children_9020 = t36 i_input_967e = t2 ).
                          result = t361.
                          RETURN.
                        ELSE.
                          IF xsdbool( t61 = |REF| ) = abap_true.
                            DATA t565 TYPE REF TO zcl_lnt_abstract_type.
                            t565 = zcl_lnt_sy_source=>determine_type( i_node = t1 i_input_967e = t2 i_target_type = t3 ).
                            DATA t571 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t574 TYPE REF TO zcl_lnt_expression_node.
                            t574 = t1.
                            DATA(t576) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
                            DATA t578 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t579 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            DATA t580 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            DATA t581 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            t571 = zcl_lnt_sy_source=>run_syntax( i_node = t574->find_direct_expression( i_type_9913 = t576 ) i_input_967e = t2 i_target_type = t578 i_write_reference = t579 i_allow_generic_deference = t580 i_read_reference = t581 ).
                            DATA(t582) = VALUE abap_bool( ).
                            DATA(t583) = VALUE abap_bool( ).
                            DATA(t584) = VALUE abap_bool( ).
                            t584 = xsdbool( t565 IS BOUND ).
                            t583 = t584.
                            IF t584 = abap_true.
                              t583 = t565->is_generic( ).
                            ENDIF.
                            t582 = t583.
                            IF t583 = abap_true.
                              t582 = xsdbool( t571 IS BOUND ).
                            ENDIF.
                            IF t582 = abap_true.
                              DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              t565 = NEW zcl_lnt_data_reference( i_type_9913 = t571 i_qualified_name = t594 ).
                            ELSE.
                              DATA(t595) = VALUE abap_bool( ).
                              DATA(t596) = VALUE abap_bool( ).
                              DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              t596 = xsdbool( t565 IS INITIAL ).
                              t595 = t596.
                              IF t596 = abap_true.
                                t595 = xsdbool( t571 IS BOUND ).
                              ENDIF.
                              IF t595 = abap_true.
                                IF xsdbool( t571 IS BOUND AND t571 IS INSTANCE OF zcl_lnt_any_type ) = abap_true.
                                  DATA(t612) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                  t612->has = abap_true.
                                  t612->value = |REF-ANY|.
                                  DATA t614 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  t565 = NEW zcl_lnt_data_reference( i_type_9913 = zcl_lnt_void_type=>get_db65( i_voided = t612 i_qualified_name = t614 ) i_qualified_name = t615 ).
                                ELSE.
                                  DATA t619 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  t565 = NEW zcl_lnt_data_reference( i_type_9913 = t571 i_qualified_name = t619 ).
                                ENDIF.
                              ELSE.
                                DATA(t620) = VALUE abap_bool( ).
                                DATA(t621) = VALUE abap_bool( ).
                                t621 = xsdbool( t565 IS BOUND ).
                                t620 = t621.
                                IF t621 = abap_true.
                                  DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                  t620 = xsdbool( t3 IS INITIAL ).
                                ENDIF.
                                IF t620 = abap_true.
                                  DATA t633 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  t565 = NEW zcl_lnt_data_reference( i_type_9913 = t565 i_qualified_name = t633 ).
                                ENDIF.
                              ENDIF.
                            ENDIF.
                            zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t565 ).
                            result = t565.
                            RETURN.
                          ELSE.
                            IF xsdbool( t61 = |FILTER| ) = abap_true.
                              DATA t642 TYPE REF TO zcl_lnt_abstract_type.
                              t642 = zcl_lnt_sy_source=>determine_type( i_node = t1 i_input_967e = t2 i_target_type = t3 ).
                              DATA t648 TYPE REF TO zcl_lnt_abstract_type.
                              DATA t651 TYPE REF TO zcl_lnt_expression_node.
                              t651 = t1.
                              DATA(t653) = zlnt_runtime_desc_78196487750d=>zlnt_member_d174_c8ac82068417.
                              t648 = zcl_lnt_sy_filter_body=>run_syntax( i_node = t651->find_direct_expression( i_type_9913 = t653 ) i_input_967e = t2 i_target_type = t642 ).
                              DATA(t656) = VALUE abap_bool( ).
                              DATA(t657) = VALUE abap_bool( ).
                              DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              t657 = xsdbool( t642 IS INITIAL ).
                              t656 = t657.
                              IF t657 = abap_false.
                                t656 = t642->is_generic( ).
                              ENDIF.
                              IF t656 = abap_true.
                                zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t648 ).
                              ELSE.
                                zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t642 ).
                              ENDIF.
                              DATA(t679) = VALUE abap_bool( ).
                              DATA(t680) = VALUE abap_bool( ).
                              t680 = xsdbool( t642 IS BOUND ).
                              t679 = t680.
                              IF t680 = abap_true.
                                DATA t684 TYPE REF TO zcl_lnt_abstract_type.
                                t684 = t642.
                                t679 = xsdbool( xsdbool( t684 IS BOUND AND t684 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
                              ENDIF.
                              IF t679 = abap_true.
                                result = t642.
                                RETURN.
                              ELSE.
                                result = t648.
                                RETURN.
                              ENDIF.
                            ELSE.
                              IF xsdbool( t61 = |CORRESPONDING| ) = abap_true.
                                DATA t695 TYPE REF TO zcl_lnt_abstract_type.
                                t695 = zcl_lnt_sy_source=>determine_type( i_node = t1 i_input_967e = t2 i_target_type = t3 ).
                                DATA t701 TYPE REF TO zcl_lnt_abstract_type.
                                DATA t703 TYPE REF TO zcl_lnt_expression_node.
                                t703 = t1.
                                DATA(t705) = zlnt_runtime_desc_78196487750d=>zlnt_member_d146_4e7b86c7b080.
                                t701 = zcl_lnt_sy_corresponding_body=>run_syntax( i_node = t703->find_direct_expression( i_type_9913 = t705 ) i_input_967e = t2 i_target_type = t695 ).
                                zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t695 ).
                                result = t695.
                                RETURN.
                              ELSE.
                                IF xsdbool( t61 = |EXACT| ) = abap_true.
                                  DATA t716 TYPE REF TO zcl_lnt_abstract_type.
                                  t716 = zcl_lnt_sy_source=>determine_type( i_node = t1 i_input_967e = t2 i_target_type = t3 ).
                                  DATA t722 TYPE REF TO zcl_lnt_abstract_type.
                                  DATA t724 TYPE REF TO zcl_lnt_expression_node.
                                  t724 = t1.
                                  DATA(t726) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
                                  DATA t729 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  DATA t730 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  DATA t731 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  t722 = zcl_lnt_sy_source=>run_syntax( i_node = t724->find_direct_expression( i_type_9913 = t726 ) i_input_967e = t2 i_target_type = t716 i_write_reference = t729 i_allow_generic_deference = t730 i_read_reference = t731 ).
                                  zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t716 ).
                                  result = t716.
                                  RETURN.
                                ELSE.
                                  IF xsdbool( t61 = |VALUE| ) = abap_true.
                                    DATA t740 TYPE REF TO zcl_lnt_abstract_type.
                                    t740 = zcl_lnt_sy_source=>determine_type( i_node = t1 i_input_967e = t2 i_target_type = t3 ).
                                    DATA t746 TYPE REF TO zcl_lnt_abstract_type.
                                    DATA t749 TYPE REF TO zcl_lnt_expression_node.
                                    t749 = t1.
                                    DATA(t751) = zlnt_runtime_desc_78196487750d=>zlnt_member_d280_c851733508cf.
                                    t746 = zcl_lnt_sy_value_body=>run_syntax( i_node = t749->find_direct_expression( i_type_9913 = t751 ) i_input_967e = t2 i_target_type = t740 ).
                                    DATA(t754) = VALUE abap_bool( ).
                                    DATA(t755) = VALUE abap_bool( ).
                                    DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                    t755 = xsdbool( t740 IS INITIAL ).
                                    t754 = t755.
                                    IF t755 = abap_false.
                                      t754 = t740->is_generic( ).
                                    ENDIF.
                                    IF t754 = abap_true.
                                      zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t746 ).
                                    ELSE.
                                      zcl_lnt_sy_source=>add_if_inferred( i_node = t1 i_input_967e = t2 i_inferred_type = t740 ).
                                    ENDIF.
                                    DATA t777 TYPE REF TO zcl_lnt_abstract_type.
                                    IF xsdbool( t740 IS BOUND ) = abap_true.
                                      t777 = t740.
                                    ELSE.
                                      t777 = t746.
                                    ENDIF.
                                    result = t777.
                                    RETURN.
                                  ELSE.
                                    DATA(t788) = |todo, Source type |.
                                    DATA(t790) = strlen( t788 ).
                                    DATA t791 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    result = NEW zcl_lnt_unknown_type( i_error = |{ t788 }{ t61 }| i_qualified_name = t791 ).
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
        DATA(t802) = t45.
        t792 = xsdbool( xsdbool( t802 IS BOUND AND t802 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
      ENDIF.
      IF t792 = abap_true.
        CLEAR result.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t804 TYPE REF TO zcl_lnt_abstract_type.
    DATA t807 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t804 = NEW zcl_lnt_unknown_type( i_error = |todo, Source type| i_qualified_name = t807 ).
    DATA t808 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t808.
    IF t6->value = abap_true.
      t808->load( ).
      APPEND |Read From| TO t808->items.
      t808->save( ).
    ENDIF.
    IF t4->value = abap_true.
      t808->load( ).
      APPEND |Write To| TO t808->items.
      t808->save( ).
    ENDIF.
    DATA(t818) = VALUE abap_bool( ).
    t818 = abap_false.
    DATA(t820) = VALUE abap_bool( ).
    t820 = abap_false.
    DATA(t822) = VALUE abap_bool( ).
    t822 = abap_false.
    DO.
      t36->load( ).
      IF xsdbool( lines( t36->items ) >= 0 ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t829) = t45.
      IF xsdbool( t829 IS BOUND AND t829 IS INSTANCE OF zcl_lnt_expression_node ) = abap_true.
        DATA t830 TYPE REF TO zif_lnt_statement_runnable.
        DATA t832 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t832.
        t832 ?= t45.
        t830 = t832->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        IF xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_method_call_chain ) = abap_true.
          DATA t837 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t837.
          DATA t839 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t839.
          t839 ?= t45.
          t837 = zcl_lnt_sy_method_call_chain=>run_syntax( i_node = t839 i_input_967e = t2 i_target_type = t3 ).
          DATA t844 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t844.
          IF xsdbool( t822 = abap_true ) = abap_true.
            DATA(t854) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t854->has = abap_true.
            t854->value = abap_true.
            t844 = zcl_lnt_sy_source=>infer( i_context = t804 i_found = t837 i_arithmetic = t854 ).
          ELSE.
            t844 = t837.
          ENDIF.
          t804 = t844.
          DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t860.
          CLEAR t860.
          IF xsdbool( t804 IS INITIAL ) = abap_true.
            DATA t866 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t866 = t2->issues.
            DATA t868 TYPE REF TO zcl_lnt_issue.
            DATA t870 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t870.
            t870 = t1->get_first_token( ).
            DATA t874 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t874.
            t868 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t870 i_message_26cb = |Method has no RETURNING value| i_fix = t874 ).
            t866->load( ).
            APPEND t868 TO t866->items.
            t866->save( ).
            DATA t876 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t876.
            DATA(t878) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t879) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t879->has = abap_true.
            t879->value = t878.
            t876 = t879.
            DATA t881 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t881.
            result = zcl_lnt_void_type=>get_db65( i_voided = t876 i_qualified_name = t881 ).
            RETURN.
          ENDIF.
        ELSE.
          IF xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_field_chain ) = abap_true.
            DATA t884 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t884.
            DATA t886 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t886.
            t886 ?= t45.
            DATA t890 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t890.
            DATA t892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t892.
            CLEAR t892.
            IF t808 IS BOUND.
              DATA t894 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t894.
              DATA t895 TYPE REF TO object.
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
            DATA(t899) = VALUE abap_bool( ).
            t899 = t5->value.
            DATA(t901) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t901->has = abap_true.
            t901->value = t899.
            t884 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t886 i_input_967e = t2 i_ref_type = t890 i_allow_generic_deference = t901 ).
            DATA t903 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t903.
            IF xsdbool( t822 = abap_true ) = abap_true.
              DATA(t913) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t913->has = abap_true.
              t913->value = abap_true.
              t903 = zcl_lnt_sy_source=>infer( i_context = t804 i_found = t884 i_arithmetic = t913 ).
            ELSE.
              t903 = t884.
            ENDIF.
            t804 = t903.
          ELSE.
            IF xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_string_template ) = abap_true.
              DATA t921 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t921.
              t921 ?= t45.
              t804 = zcl_lnt_sy_string_template=>run_syntax( i_node = t921 i_input_967e = t2 ).
            ELSE.
              IF xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_source ) = abap_true.
                DATA t929 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t929.
                DATA t930 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t930.
                DATA t932 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t932.
                t932 ?= t45.
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
                DATA(t947) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t947->has = abap_true.
                t947->value = t822.
                t804 = zcl_lnt_sy_source=>infer( i_context = t804 i_found = t929 i_arithmetic = t947 ).
              ELSE.
                IF xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_expres_constant ) = abap_true.
                  DATA t952 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t953 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t953.
                  t953 ?= t45.
                  t952 = zcl_lnt_sy_expres_constant=>run_syntax( i_node = t953 ).
                  DATA t958 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t958.
                  t958 = t952.
                  DATA(t965) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t965->has = abap_true.
                  t965->value = t822.
                  t804 = zcl_lnt_sy_source=>infer( i_context = t804 i_found = t958 i_arithmetic = t965 ).
                ELSE.
                  IF xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_dereference ) = abap_true.
                    DATA t970 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t970.
                    t970 ?= t45.
                    t804 = zcl_lnt_sy_dereference=>run_syntax( i_node = t970 i_type_9913 = t804 i_input_967e = t2 ).
                  ELSE.
                    IF xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_component_chain ) = abap_true.
                      DATA t979 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t979.
                      t979 ?= t45.
                      t804 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t804 i_node = t979 i_input_967e = t2 ).
                    ELSE.
                      IF xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_arith_operator ) = abap_true.
                        t822 = abap_true.
                        DATA t988 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t988.
                        t988 ?= t45.
                        IF xsdbool( t988->concat_tokens( ) = |**| ) = abap_true.
                          DATA t993 TYPE REF TO zcl_lnt_abstract_type_data.
                          CLEAR t993.
                          t804 = NEW zcl_lnt_float_type( i_input_967e = t993 ).
                        ENDIF.
                        DATA(t994) = VALUE string( ).
                        DATA(t995) = VALUE string( ).
                        DATA(t996) = VALUE string( ).
                        DATA t997 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t997.
                        t997 ?= t45.
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
                        t1003 = xsdbool( t994 = |BIT-OR| ).
                        t1002 = t1003.
                        IF t1003 = abap_false.
                          t1002 = xsdbool( t994 = |BIT-AND| ).
                        ENDIF.
                        t1001 = t1002.
                        IF t1002 = abap_false.
                          t1001 = xsdbool( t994 = |BIT-XOR| ).
                        ENDIF.
                        IF t1001 = abap_true.
                          t818 = abap_true.
                          t820 = abap_true.
                        ENDIF.
                      ELSE.
                        IF xsdbool( t830 IS BOUND AND t830 IS INSTANCE OF zcl_lnt_st_attribute_chain ) = abap_true.
                          DATA t1018 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t1018.
                          t1018 ?= t45.
                          t804 = zcl_lnt_sy_attribute_chain=>run_syntax( i_input_context = t804 i_node = t1018 i_input_967e = t2 i_type_9913 = t808 ).
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
      IF xsdbool( t818 = abap_true ) = abap_true.
        DATA(t1026) = VALUE abap_bool( ).
        DATA(t1027) = VALUE abap_bool( ).
        DATA(t1028) = VALUE abap_bool( ).
        DATA(t1029) = VALUE abap_bool( ).
        DATA(t1030) = VALUE abap_bool( ).
        DATA(t1031) = VALUE abap_bool( ).
        t1031 = xsdbool( xsdbool( t804 IS BOUND AND t804 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
        t1030 = t1031.
        IF t1031 = abap_true.
          t1030 = xsdbool( xsdbool( t804 IS BOUND AND t804 IS INSTANCE OF zcl_lnt_x_string_type ) = abap_false ).
        ENDIF.
        t1029 = t1030.
        IF t1030 = abap_true.
          t1029 = xsdbool( xsdbool( t804 IS BOUND AND t804 IS INSTANCE OF zcl_lnt_hex_type ) = abap_false ).
        ENDIF.
        t1028 = t1029.
        IF t1029 = abap_true.
          t1028 = xsdbool( xsdbool( t804 IS BOUND AND t804 IS INSTANCE OF zcl_lnt_x_generic_type ) = abap_false ).
        ENDIF.
        t1027 = t1028.
        IF t1028 = abap_true.
          t1027 = xsdbool( xsdbool( t804 IS BOUND AND t804 IS INSTANCE OF zcl_lnt_x_sequence_type ) = abap_false ).
        ENDIF.
        t1026 = t1027.
        IF t1027 = abap_true.
          t1026 = xsdbool( xsdbool( t804 IS BOUND AND t804 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
        ENDIF.
        IF t1026 = abap_true.
          DATA t1051 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t1051 = t2->issues.
          DATA t1053 TYPE REF TO zcl_lnt_issue.
          DATA t1055 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1055.
          t1055 = t1->get_first_token( ).
          DATA t1059 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1059.
          t1053 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1055 i_message_26cb = |Operator only valid for XSTRING or HEX| i_fix = t1059 ).
          t1051->load( ).
          APPEND t1053 TO t1051->items.
          t1051->save( ).
          DATA t1061 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1061.
          DATA(t1063) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t1064) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1064->has = abap_true.
          t1064->value = t1063.
          t1061 = t1064.
          DATA t1066 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1066.
          result = zcl_lnt_void_type=>get_db65( i_voided = t1061 i_qualified_name = t1066 ).
          RETURN.
        ENDIF.
        IF xsdbool( t820 = abap_false ) = abap_true.
          t818 = abap_false.
        ENDIF.
        t820 = abap_false.
      ENDIF.
      DATA t1072 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t1072.
      DATA t1074 TYPE REF TO object.
      t1074 = t36->shift( ).
      DATA t1075 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1075.
      CLEAR t1072.
      IF t1074 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t1075 ?= t1074.
        DATA t1076 TYPE REF TO object.
        t1076 = t1075->as_ref( ).
        t1072 ?= t1076.
      ELSE.
        t1072 ?= t1074.
      ENDIF.
      t45 = t1072.
      DATA t1080 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1080.
      CLEAR t1080.
      IF xsdbool( t45 IS INITIAL ) = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    DATA t1085 TYPE REF TO zcl_lnt_abstract_token.
    t1085 = t1->find_direct_token_by_text( i_text = |&&| ).
    IF xsdbool( t1085 IS BOUND ) = abap_true.
      DATA t1090 TYPE REF TO zcl_lnt_abstract_type_data.
      result = zcl_lnt_string_type=>get_db65( i_input_967e = t1090 ).
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
      DATA t17 TYPE REF TO object.
      t17 = t3->get_db65( ).
      t13 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_st_source ).
    ENDIF.
    IF t13 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      t22 ?= t3.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t19 = zcl_lnt_sy_source=>run_syntax( i_node = t22 i_input_967e = t2 i_target_type = t26 i_write_reference = t27 i_allow_generic_deference = t28 i_read_reference = t29 ).
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
    IF xsdbool( t3->value = abap_true ) = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_abstract_type.
      t15 = zcl_lnt_sy_source=>calculation_type( i_left = t1 i_right = t2 ).
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( xsdbool( t15 IS INITIAL ) = abap_false ) = abap_true.
        result = t15.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t32 TYPE abap_bool.
    DATA t33 TYPE abap_bool.
    t33 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_float_type ).
    t32 = t33.
    IF t33 = abap_true.
      t32 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
    ENDIF.
    IF t32 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_float_type.
      t37 ?= t1.
      result = t37.
      RETURN.
    ENDIF.
    DATA t39 TYPE abap_bool.
    DATA t40 TYPE abap_bool.
    t40 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ).
    t39 = t40.
    IF t40 = abap_true.
      t39 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_hex_type ).
    ENDIF.
    IF t39 = abap_true.
      DATA t44 TYPE REF TO zcl_lnt_integer_type.
      t44 ?= t1.
      result = t44.
      RETURN.
    ENDIF.
    DATA(t46) = VALUE abap_bool( ).
    DATA t47 TYPE abap_bool.
    DATA t48 TYPE abap_bool.
    t48 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ).
    t47 = t48.
    IF t48 = abap_false.
      t47 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_float_type ).
    ENDIF.
    t46 = t47.
    IF t47 = abap_true.
      DATA(t52) = VALUE abap_bool( ).
      DATA t53 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t54 TYPE REF TO zcl_lnt_abstract_type.
      t54 = t2.
      DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      IF xsdbool( t54 IS INITIAL ) = abap_true.
      ELSE.
        DATA t60 TYPE abap_bool.
        t60 = t54->is_generic( ).
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
      t67 ?= t1.
      t66 ?= t67.
      result = t66.
      RETURN.
    ENDIF.
    result = t2.




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
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t3 = xsdbool( t2 IS INITIAL ).
    ENDIF.
    IF t3 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t19 TYPE abap_bool.
    DATA t20 TYPE abap_bool.
    t20 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
    t19 = t20.
    IF t20 = abap_false.
      t19 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
    ENDIF.
    IF t19 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      DATA t27 TYPE REF TO zif_lnt_union_adffe656.
      t27 ?= t1.
      t26 ?= t27.
      result = t26.
      RETURN.
    ENDIF.
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE abap_bool.
    t32 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_void_type ).
    t31 = t32.
    IF t32 = abap_false.
      t31 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_unknown_type ).
    ENDIF.
    IF t31 = abap_true.
      DATA t38 TYPE REF TO zcl_lnt_abstract_type.
      DATA t39 TYPE REF TO zif_lnt_union_adffe656.
      t39 ?= t2.
      t38 ?= t39.
      result = t38.
      RETURN.
    ENDIF.


    DATA t43 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t43 = zcl_lnt_sy_source=>numeric_rank( i_type_9913 = t1 ).
    DATA t47 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t47 = zcl_lnt_sy_source=>numeric_rank( i_type_9913 = t2 ).
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
      DATA t60 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t60 = t47.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t64) = VALUE abap_bool( ).
      IF t60 IS INITIAL.
        t64 = abap_true.
      ELSEIF t60->has = abap_false.
        t64 = abap_true.
      ENDIF.
      t51 = t64.
    ENDIF.
    IF t51 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t68 = t47.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t72) = VALUE abap_bool( ).
    IF t68 IS INITIAL.
      t72 = abap_true.
    ELSEIF t68->has = abap_false.
      t72 = abap_true.
    ENDIF.
    IF t72 = abap_true.
      result = t1.
      RETURN.
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t80 = t43.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t84) = VALUE abap_bool( ).
    IF t80 IS INITIAL.
      t84 = abap_true.
    ELSEIF t80->has = abap_false.
      t84 = abap_true.
    ENDIF.
    IF t84 = abap_true.
      result = t2.
      RETURN.
    ENDIF.


    DATA t93 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t95) = VALUE f( ).
    IF t43->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t95 = t43->value.
    IF t47->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF xsdbool( t95 >= t47->value ) = abap_true.
      t93 = t1.
    ELSE.
      t93 = t2.
    ENDIF.
    result = t93.

  ENDMETHOD.

  METHOD numeric_rank.
    DATA(t1) = i_type_9913.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_dec_float34_type ) = abap_true.
      DATA(t7) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t7->has = abap_true.
      t7->value = CONV f( 6 ).
      result = t7.
      RETURN.
    ENDIF.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_dec_float16_type ) = abap_true.
      DATA(t14) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t14->has = abap_true.
      t14->value = CONV f( 5 ).
      result = t14.
      RETURN.
    ENDIF.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_float_type ) = abap_true.
      DATA(t21) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t21->has = abap_true.
      t21->value = CONV f( 4 ).
      result = t21.
      RETURN.
    ENDIF.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_packed_type ) = abap_true.
      DATA(t28) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t28->has = abap_true.
      t28->value = CONV f( 3 ).
      result = t28.
      RETURN.
    ENDIF.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer8_type ) = abap_true.
      DATA(t35) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t35->has = abap_true.
      t35->value = CONV f( 2 ).
      result = t35.
      RETURN.
    ENDIF.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ) = abap_true.
      DATA(t42) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t42->has = abap_true.
      t42->value = CONV f( 1 ).
      result = t42.
      RETURN.
    ENDIF.





    CLEAR result.

  ENDMETHOD.

  METHOD add_if_inferred.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_inferred_type.
    DATA t5 TYPE REF TO zcl_lnt_basic_types.
    t5 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    t13 = t1->find_direct_expression( i_type_9913 = t10 ).
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t13 IS INITIAL ) = abap_true.
    ELSE.
      t15 = t13->get_first_token( ).
    ENDIF.
    t11 = t15.
    DATA t22 TYPE abap_bool.
    DATA t23 TYPE abap_bool.
    t23 = xsdbool( t3 IS BOUND ).
    t22 = t23.
    IF t23 = abap_true.
      t22 = xsdbool( t11 IS BOUND ).
    ENDIF.
    IF t22 = abap_true.
      DATA t28 TYPE REF TO zcl_lnt_typed_identifier.
      t28 = t5->lookup_qualified_name( i_name = t3->get_qualified_name( ) ).
      IF xsdbool( t28 IS BOUND ) = abap_true.
        DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        t37 = t11.
        DATA t39 TYPE string.
        t39 = t2->filename.
        DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t36 = NEW zcl_lnt_typed_identifier( i_token = t37 i_filename = t39 i_type_9913 = t3 i_meta = t43 i_value = t44 ).
        DATA t45 TYPE REF TO zcl_lnt_current_scope.
        t45 = t2->scope.
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        t47 = t11.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t53.
        t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t53->sval = |Inferred Type|.
        DATA t55 TYPE string.
        t55 = t2->filename.
        DATA t59 TYPE REF TO zcl_lnt_ireference_extras.
        DATA(t64) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t64->has = abap_true.
        t64->value = abap_true.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t59 = NEW zcl_lnt_ireference_extras( i_oo_name = t66 i_oo_type = t68 i_found_qualified = t64 ).
        CREATE OBJECT t59->zlnt_view_ownkeys_b0e8086400eb.
        t59->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `foundQualified` p1 = t70 ).
        CREATE OBJECT t59->zlnt_json_ownkeys_70e5fd461788.
        t59->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |foundQualified| p1 = t72 ).
        t45->add_reference( i_usage = t47 i_referencing = t36 i_type_9913 = t53 i_filename = t55 i_extra = t59 ).
      ELSE.
        IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_object_reference_type ) = abap_true.
          DATA t78 TYPE REF TO zcl_lnt_current_scope.
          t78 = t2->scope.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t83 TYPE REF TO zcl_lnt_abstract_type.
          DATA t84 TYPE REF TO zcl_lnt_object_reference_type.
          t84 ?= t3.
          t83 = t84.
          DATA t87 TYPE REF TO zcl_lnt_abstract_type_data.
          t87 = t83->data_56cc.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t87 IS INITIAL ) = abap_true.
          ELSE.
            t90 = t87->zlnt_view_read_sr_c978da49ae47( ).
          ENDIF.
          t81 = t90.
          DATA t97 TYPE REF TO zif_lnt_interface_definition.
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t99 = t81.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t103) = VALUE abap_bool( ).
          IF t99 IS INITIAL.
            t103 = abap_true.
          ELSEIF t99->has = abap_false.
            t103 = abap_true.
          ENDIF.
          IF t103 = abap_true.
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
            DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t118 = t109.
            DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t122) = VALUE abap_bool( ).
            IF t118 IS INITIAL.
              t122 = abap_true.
            ELSEIF t118->has = abap_false.
              t122 = abap_true.
            ENDIF.
            IF t122 = abap_true.
            ELSE.
              DATA t126 TYPE REF TO zif_lnt_class_definition.
              DATA t128 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t128 = t78->current.
              DATA t131 TYPE REF TO zif_lnt_class_definition.
              IF xsdbool( t128 IS INITIAL ) = abap_true.
              ELSE.
                DATA t136 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t136 = t128.
                DATA t138 TYPE string.
                t138 = t109->value.
                t131 = t136->find_class_definition( i_name = t138 ).
              ENDIF.
              t126 = t131.
              DATA t140 TYPE REF TO zif_lnt_class_definition.
              IF xsdbool( t126 IS BOUND ) = abap_true.
                t140 = t126.
              ELSE.
                DATA t149 TYPE REF TO zcl_lnt_class.
                DATA t150 TYPE REF TO zcl_lnt_class.
                DATA t152 TYPE REF TO zif_lnt_registry.
                t152 = t78->reg.
                DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t157->has = abap_true.
                t157->value = |CLAS|.
                t154 = t157.
                DATA t161 TYPE string.
                t161 = t109->value.
                DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t163->has = abap_true.
                t163->value = t161.
                DATA t165 TYPE REF TO object.
                t165 = t152->get_object( i_type_9913 = t154 i_name = t163 ).
                t150 ?= t165.
                t149 = t150.
                DATA t166 TYPE REF TO zif_lnt_class_definition.
                IF xsdbool( t149 IS BOUND ) = abap_true.
                  t166 = t149->gt_dfn_ins_src_obj_cls_ts_clss( ).
                ELSE.
                  CLEAR t166.
                ENDIF.
                t140 = t166.
              ENDIF.
              t116 = t140.
            ENDIF.
            t107 = t116.
            DATA t173 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t107 IS BOUND ) = abap_true.
              DATA t176 TYPE REF TO zif_lnt_interface_definition.
              t176 ?= t107.
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
              DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t191 = t182.
              DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t195) = VALUE abap_bool( ).
              IF t191 IS INITIAL.
                t195 = abap_true.
              ELSEIF t191->has = abap_false.
                t195 = abap_true.
              ENDIF.
              IF t195 = abap_true.
              ELSE.
                DATA t199 TYPE REF TO zif_lnt_interface_definition.
                DATA t201 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t201 = t78->current.
                DATA t204 TYPE REF TO zif_lnt_interface_definition.
                IF xsdbool( t201 IS INITIAL ) = abap_true.
                ELSE.
                  DATA t209 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  t209 = t201.
                  DATA t211 TYPE string.
                  t211 = t182->value.
                  t204 = t209->find_interface_definition( i_name = t211 ).
                ENDIF.
                t199 = t204.
                DATA t213 TYPE REF TO zif_lnt_interface_definition.
                IF xsdbool( t199 IS BOUND ) = abap_true.
                  t213 = t199.
                ELSE.
                  DATA t222 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t223 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t225 TYPE REF TO zif_lnt_registry.
                  t225 = t78->reg.
                  DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t230) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t230->has = abap_true.
                  t230->value = |INTF|.
                  t227 = t230.
                  DATA t234 TYPE string.
                  t234 = t182->value.
                  DATA(t236) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t236->has = abap_true.
                  t236->value = t234.
                  DATA t238 TYPE REF TO object.
                  t238 = t225->get_object( i_type_9913 = t227 i_name = t236 ).
                  t223 ?= t238.
                  t222 = t223.
                  DATA t239 TYPE REF TO zif_lnt_interface_definition.
                  IF xsdbool( t222 IS BOUND ) = abap_true.
                    t239 = t222->def.
                  ELSE.
                    CLEAR t239.
                  ENDIF.
                  t213 = t239.
                ENDIF.
                t189 = t213.
              ENDIF.
              t180 = t189.
              DATA t249 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t180 IS BOUND ) = abap_true.
                t249 = t180.
              ELSE.
                CLEAR t249.
              ENDIF.
              t173 = t249.
            ENDIF.
            t97 = t173.
          ENDIF.
          DATA t258 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t260 TYPE REF TO zcl_lnt_abstract_token.
          t260 = t11.
          DATA t262 TYPE string.
          t262 = t2->filename.
          DATA t264 TYPE REF TO zcl_lnt_object_reference_type.
          t264 ?= t3.
          DATA t266 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t258 = NEW zcl_lnt_typed_identifier( i_token = t260 i_filename = t262 i_type_9913 = t264 i_meta = t266 i_value = t267 ).
          IF xsdbool( t97 IS BOUND ) = abap_true.
            DATA t270 TYPE REF TO zcl_lnt_current_scope.
            t270 = t2->scope.
            DATA t272 TYPE REF TO zcl_lnt_abstract_token.
            t272 = t11.
            DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CREATE OBJECT t278.
            t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t278->sval = |Inferred Type|.
            DATA t280 TYPE string.
            t280 = t2->filename.
            DATA t284 TYPE REF TO zcl_lnt_ireference_extras.
            DATA(t289) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t289->has = abap_true.
            t289->value = abap_true.
            DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t284 = NEW zcl_lnt_ireference_extras( i_oo_name = t291 i_oo_type = t293 i_found_qualified = t289 ).
            CREATE OBJECT t284->zlnt_view_ownkeys_b0e8086400eb.
            t284->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t284->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `foundQualified` p1 = t295 ).
            CREATE OBJECT t284->zlnt_json_ownkeys_70e5fd461788.
            t284->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t284->zlnt_json_ownkeys_70e5fd461788->put( p0 = |foundQualified| p1 = t297 ).
            t270->add_reference( i_usage = t272 i_referencing = t258 i_type_9913 = t278 i_filename = t280 i_extra = t284 ).
          ELSE.
            DATA t299 TYPE REF TO zcl_lnt_current_scope.
            t299 = t2->scope.
            DATA t301 TYPE REF TO zcl_lnt_abstract_token.
            t301 = t11.
            DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CREATE OBJECT t307.
            t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t307->sval = |Inferred Type|.
            DATA t309 TYPE string.
            t309 = t2->filename.
            DATA t313 TYPE REF TO zcl_lnt_ireference_extras.
            DATA(t318) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t318->has = abap_true.
            t318->value = abap_false.
            DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t313 = NEW zcl_lnt_ireference_extras( i_oo_name = t320 i_oo_type = t322 i_found_qualified = t318 ).
            CREATE OBJECT t313->zlnt_view_ownkeys_b0e8086400eb.
            t313->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `foundQualified` p1 = t324 ).
            CREATE OBJECT t313->zlnt_json_ownkeys_70e5fd461788.
            t313->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = |foundQualified| p1 = t326 ).
            t299->add_reference( i_usage = t301 i_referencing = t258 i_type_9913 = t307 i_filename = t309 i_extra = t313 ).
          ENDIF.
        ELSE.
          DATA t329 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t330 TYPE REF TO zcl_lnt_abstract_token.
          t330 = t11.
          DATA t332 TYPE string.
          t332 = t2->filename.
          DATA t336 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t329 = NEW zcl_lnt_typed_identifier( i_token = t330 i_filename = t332 i_type_9913 = t3 i_meta = t336 i_value = t337 ).
          DATA t338 TYPE REF TO zcl_lnt_current_scope.
          t338 = t2->scope.
          DATA t340 TYPE REF TO zcl_lnt_abstract_token.
          t340 = t11.
          DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t346.
          t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t346->sval = |Inferred Type|.
          DATA t348 TYPE string.
          t348 = t2->filename.
          DATA t352 TYPE REF TO zcl_lnt_ireference_extras.
          DATA(t357) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t357->has = abap_true.
          t357->value = abap_false.
          DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t352 = NEW zcl_lnt_ireference_extras( i_oo_name = t359 i_oo_type = t361 i_found_qualified = t357 ).
          CREATE OBJECT t352->zlnt_view_ownkeys_b0e8086400eb.
          t352->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `foundQualified` p1 = t363 ).
          CREATE OBJECT t352->zlnt_json_ownkeys_70e5fd461788.
          t352->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = |foundQualified| p1 = t365 ).
          t338->add_reference( i_usage = t340 i_referencing = t329 i_type_9913 = t346 i_filename = t348 i_extra = t352 ).
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
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    t7 = t1->find_direct_expression( i_type_9913 = t10 ).
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    t13 = t7.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t13 IS INITIAL ) = abap_true.
    ELSE.
      t15 = t13->get_first_token( ).
    ENDIF.
    t11 = t15.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    t24 = t11.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t24 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t34) = VALUE string( ).
      t34 = t24->str.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t34.
      t26 = t36.
    ENDIF.
    t22 = t26.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t7 IS INITIAL ) = abap_true.
      DATA t44 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t45 TYPE REF TO zcx_lnt_assert_error.
      DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t49->has = abap_true.
      t49->value = |determineType, child TypeNameOrInfer not found|.
      t45 = NEW zcx_lnt_assert_error( i_message_26cb = t49 ).
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
    ENDIF.
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = VALUE abap_bool( ).
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t59->has = abap_true.
    t59->value = |#|.
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
      t53 = xsdbool( t3 IS BOUND ).
    ENDIF.
    IF t53 = abap_true.
      result = t3.
      RETURN.
    ENDIF.

    DATA(t70) = VALUE abap_bool( ).
    DATA(t71) = VALUE abap_bool( ).
    DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t76->has = abap_true.
    t76->value = |#|.
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
      t70 = xsdbool( t11 IS BOUND ).
    ENDIF.
    IF t70 = abap_true.
      DATA t82 TYPE REF TO zcl_lnt_abstract_type.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t82 = t5->parse_type( i_node = t7 i_qualified_name = t87 ).
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = VALUE abap_bool( ).
      t89 = xsdbool( t82 IS BOUND ).
      t88 = t89.
      IF t89 = abap_true.
        DATA t92 TYPE REF TO zcl_lnt_abstract_type.
        t92 = t82.
        t88 = xsdbool( t92 IS BOUND AND t92 IS INSTANCE OF zcl_lnt_unknown_type ).
      ENDIF.
      IF t88 = abap_true.
        DATA t101 TYPE REF TO zcl_lnt_ddic.
        DATA t102 TYPE REF TO zif_lnt_registry.
        t102 = t2->scope->reg.
        t101 = NEW zcl_lnt_ddic( i_reg_f149 = t102 ).
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t104 = t22.
        DATA(t106) = VALUE abap_bool( ).
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t108 = t104.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t112) = VALUE abap_bool( ).
        IF t108 IS INITIAL.
          t112 = abap_true.
        ELSEIF t108->has = abap_false.
          t112 = abap_true.
        ENDIF.
        IF t112 = abap_true.
          t106 = abap_true.
        ELSE.
          DATA t116 TYPE REF TO zif_lnt_registry.
          t116 = t101->reg.
          DATA(t118) = VALUE string( ).
          t118 = t104->value.
          t106 = t116->in_error_namespace( i_name = t118 ).
        ENDIF.
        IF xsdbool( t106 = abap_false ) = abap_true.
          DATA t121 TYPE REF TO zcl_lnt_current_scope.
          t121 = t2->scope.
          DATA t123 TYPE REF TO zcl_lnt_abstract_token.
          t123 = t11.
          DATA t128 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t129->sval = |Type (Void)|.
          DATA(t131) = VALUE string( ).
          t131 = t2->filename.
          DATA t133 TYPE REF TO zcl_lnt_ireference_extras.
          t121->add_reference( i_usage = t123 i_referencing = t128 i_type_9913 = t129 i_filename = t131 i_extra = t133 ).
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t22 i_qualified_name = t136 ).
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
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t155->sval = |Type|.
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
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t82 IS INITIAL ) = abap_true.
          DATA(t169) = VALUE string( ).
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
            t176 = t174->value.
          ENDIF.
          t173 = t176.
          DATA(t182) = strlen( t172 ).
          t171 = |{ t172 }{ t173 }|.
          DATA(t184) = strlen( t171 ).
          t169 = |{ t171 }{ |" not found in scope, VALUE| }|.
          DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t185 = t2->issues.
          DATA t187 TYPE REF TO zcl_lnt_issue.
          DATA t192 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t187 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t169 i_fix = t192 ).
          t185->load( ).
          APPEND t187 TO t185->items.
          t185->save( ).
          DATA(t196) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t197->has = abap_true.
          t197->value = t196.
          DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t197 i_qualified_name = t199 ).
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
