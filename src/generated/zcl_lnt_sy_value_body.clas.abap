* TS: src/abap/5_syntax/expressions/value_body.ts:11:1 ValueBody
CLASS zcl_lnt_sy_value_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS inserts_using_table_key IMPORTING i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS character_or_hex_length IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_164098b6.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_value_body IMPLEMENTATION.
  METHOD run_syntax.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA(t4) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t1 IS INITIAL ).
    IF t4 = abap_true.
      result = t3.
      RETURN.
    ENDIF.
    DATA t12 TYPE abap_bool.
    t12 = abap_false.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    t16 = t1.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    t15 = t16->find_direct_expression( i_type_9913 = t18 ).
    t14 = t15.
    DATA t19 TYPE abap_bool.
    t19 = xsdbool( t14 IS BOUND ).
    IF t19 = abap_true.
      DATA(t21) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      t22 = t14.
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t21 = zcl_lnt_sy_let=>run_syntax( i_node = t22 i_input_967e = t2 i_skip_scope = t28 ).
      t12 = t21.
    ENDIF.
    DATA t29 TYPE f.
    DATA(t30) = CONV f( 0 ).
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    t34 = t1.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d182_555fcb96e22f.
    t33 = t34->find_direct_expressions( i_type_9913 = t36 ).
    t32 = t33.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE abap_bool.
    t38 = xsdbool( t32 IS BOUND ).
    IF t38 = abap_true.
      t37 = t32.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t41.
      t37 = t41.
    ENDIF.
    t31 = t37.
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    DATA t43 TYPE REF TO object.
    DATA(t44) = VALUE i( ).
    DO.
      t31->load( ).
      IF t44 >= lines( t31->items ).
        EXIT.
      ENDIF.
      CLEAR t43.
      READ TABLE t31->items INDEX t44 + 1 INTO t43.
      t44 = t44 + 1.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      CLEAR t42.
      IF t43 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t45 ?= t43.
        DATA t46 TYPE REF TO object.
        t46 = t45->as_ref( ).
        t42 ?= t46.
      ELSE.
        t42 ?= t43.
      ENDIF.
      DATA t48 TYPE abap_bool.
      t48 = zcl_lnt_sy_for=>run_syntax( i_node = t42 i_input_967e = t2 ).
      DATA t51 TYPE abap_bool.
      t51 = xsdbool( t48 = abap_true ).
      IF t51 = abap_true.
        DATA t54 TYPE f.
        DATA(t56) = CONV f( 1 ).
        t54 = t29 + t56.
        t29 = t54.
      ENDIF.
    ENDDO.
    DATA t57 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t57 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA(t59) = VALUE abap_bool( ).
    DATA(t60) = VALUE abap_bool( ).
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
    DATA t63 TYPE REF TO zcl_lnt_expression_node.
    t63 = t1.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d355_f5f8042a98ef.
    t62 = t63->find_direct_expression( i_type_9913 = t65 ).
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t68) = VALUE abap_bool( ).
    DATA(t69) = xsdbool( t62 IS INITIAL ).
    t68 = xsdbool( t69 = abap_false ).
    t60 = t68.
    t59 = t60.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t73 TYPE REF TO zcl_lnt_abstract_node.
    t73 = t1.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t76 = t73->children.
    t72 = t76.
    t71 ?= t72.
    DATA t78 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t79 TYPE REF TO object.
    DATA(t80) = VALUE i( ).
    DO.
      t71->load( ).
      IF t80 >= lines( t71->items ).
        EXIT.
      ENDIF.
      CLEAR t79.
      READ TABLE t71->items INDEX t80 + 1 INTO t79.
      t80 = t80 + 1.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      CLEAR t78.
      IF t79 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t81 ?= t79.
        DATA t82 TYPE REF TO object.
        t82 = t81->as_ref( ).
        t78 ?= t82.
      ELSE.
        t78 ?= t79.
      ENDIF.
      DATA t83 TYPE abap_bool.
      DATA t84 TYPE abap_bool.
      t84 = xsdbool( t78 IS BOUND AND t78 IS INSTANCE OF zcl_lnt_expression_node ).
      t83 = xsdbool( t84 = abap_false ).
      IF t83 = abap_true.
        CONTINUE.
      ELSE.
        DATA t86 TYPE abap_bool.
        DATA t87 TYPE REF TO zif_lnt_statement_runnable.
        DATA t88 TYPE REF TO zcl_lnt_expression_node.
        DATA t90 TYPE REF TO object.
        t90 = t78.
        t88 ?= t90.
        t87 = t88->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t86 = xsdbool( t87 IS BOUND AND t87 IS INSTANCE OF zcl_lnt_st_field_assignment ).
        IF t86 = abap_true.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          DATA t95 TYPE REF TO zcl_lnt_expression_node.
          DATA t96 TYPE REF TO zcl_lnt_expression_node.
          DATA t97 TYPE REF TO zcl_lnt_expression_node.
          DATA t99 TYPE REF TO object.
          t99 = t78.
          t97 ?= t99.
          DATA(t100) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
          t96 = t97->find_direct_expression( i_type_9913 = t100 ).
          t95 = t96.
          DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t101.
          DATA(t102) = xsdbool( t95 IS INITIAL ).
          IF t102 = abap_true.
            CLEAR t101.
          ELSE.
            DATA t105 TYPE string.
            DATA t106 TYPE REF TO zcl_lnt_expression_node.
            t106 = t95.
            t105 = t106->concat_tokens( ).
            DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t108->has = abap_true.
            t108->value = t105.
            t101 = t108.
          ENDIF.
          t93 = t101.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          DATA(t110) = VALUE abap_bool( ).
          IF t93 IS INITIAL.
            t110 = abap_true.
          ELSEIF t93->has = abap_false.
            t110 = abap_true.
          ENDIF.
          IF t110 = abap_true.
            CLEAR t109.
          ELSE.
            DATA t113 TYPE string.
            DATA t114 TYPE string.
            t114 = t93->value.
            DATA(t116) = strlen( t114 ).
            t113 = t114.
            IF t113 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t113 TO UPPER CASE.
            ELSE.
              t113 = zlnt_runtime_uppe_91169605024d=>full( t113 ).
            ENDIF.
            DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t117->has = abap_true.
            t117->value = t113.
            t109 = t117.
          ENDIF.
          t91 = t109.
          DATA(t118) = VALUE abap_bool( ).
          DATA(t119) = VALUE abap_bool( ).
          DATA(t120) = VALUE abap_bool( ).
          IF t91 IS BOUND.
            IF t91->has = abap_true.
              t120 = xsdbool( strlen( t91->value ) > 0 ).
            ENDIF.
          ENDIF.
          t119 = t120.
          IF t120 = abap_true.
            DATA t122 TYPE abap_bool.
            t122 = xsdbool( t59 = abap_false ).
            t119 = t122.
          ENDIF.
          t118 = t119.
          IF t119 = abap_true.
            DATA t125 TYPE abap_bool.
            DATA t127 TYPE string.
            t127 = t91->value.
            t125 = t57->has( p0 = t127 ).
            t118 = t125.
          ENDIF.
          IF t118 = abap_true.
            DATA(t130) = |Duplicate field assignment|.
            DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t131 = t2->issues.
            DATA t133 TYPE REF TO zcl_lnt_issue.
            DATA t135 TYPE REF TO zcl_lnt_abstract_token.
            DATA t136 TYPE REF TO zcl_lnt_expression_node.
            DATA t138 TYPE REF TO object.
            t138 = t78.
            t136 ?= t138.
            t135 = t136->get_first_token( ).
            DATA t140 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t140.
            t133 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t135 i_message_26cb = t130 i_fix = t140 ).
            t131->load( ).
            APPEND t133 TO t131->items.
            t131->save( ).
            DATA t141 TYPE REF TO zcl_lnt_void_type.
            CLEAR t141.
            DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t142.
            DATA(t144) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t145->has = abap_true.
            t145->value = t144.
            t142 = t145.
            DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t147.
            t141 = zcl_lnt_void_type=>get_db65( i_voided = t142 i_qualified_name = t147 ).
            result = t141.
            RETURN.
          ENDIF.
          DATA(t148) = VALUE abap_bool( ).
          IF t91 IS BOUND.
            IF t91->has = abap_true.
              t148 = xsdbool( strlen( t91->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t148 = abap_true.
            DATA t150 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            DATA t152 TYPE string.
            t152 = t91->value.
            t150 = t57->add( p0 = t152 ).
          ENDIF.
        ELSE.
          DATA t154 TYPE abap_bool.
          DATA t155 TYPE REF TO zif_lnt_statement_runnable.
          DATA t156 TYPE REF TO zcl_lnt_expression_node.
          DATA t158 TYPE REF TO object.
          t158 = t78.
          t156 ?= t158.
          t155 = t156->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t154 = xsdbool( t155 IS BOUND AND t155 IS INSTANCE OF zcl_lnt_value_body_line ).
          IF t154 = abap_true.
            DATA t159 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            DATA t160 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            t160 = t57->copy( p0 = t57 ).
            t159 = t160.
            DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t164 TYPE REF TO zcl_lnt_expression_node.
            DATA t166 TYPE REF TO object.
            t166 = t78.
            t164 ?= t166.
            DATA(t167) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
            t163 = t164->find_direct_expressions( i_type_9913 = t167 ).
            DATA t168 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t168.
            DATA t169 TYPE REF TO object.
            CLEAR t169.
            DATA(t170) = VALUE i( ).
            DO.
              t163->load( ).
              IF t170 >= lines( t163->items ).
                EXIT.
              ENDIF.
              CLEAR t169.
              READ TABLE t163->items INDEX t170 + 1 INTO t169.
              t170 = t170 + 1.
              DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t171.
              CLEAR t168.
              IF t169 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t171 ?= t169.
                DATA t172 TYPE REF TO object.
                t172 = t171->as_ref( ).
                t168 ?= t172.
              ELSE.
                t168 ?= t169.
              ENDIF.
              DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t173.
              DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t175.
              DATA t177 TYPE REF TO zcl_lnt_expression_node.
              DATA t178 TYPE REF TO zcl_lnt_expression_node.
              DATA(t180) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
              t178 = t168->find_direct_expression( i_type_9913 = t180 ).
              t177 = t178.
              DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t181.
              DATA(t182) = xsdbool( t177 IS INITIAL ).
              IF t182 = abap_true.
                CLEAR t181.
              ELSE.
                DATA t185 TYPE string.
                DATA t186 TYPE REF TO zcl_lnt_expression_node.
                t186 = t177.
                t185 = t186->concat_tokens( ).
                DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t188->has = abap_true.
                t188->value = t185.
                t181 = t188.
              ENDIF.
              t175 = t181.
              DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t189.
              DATA(t190) = VALUE abap_bool( ).
              IF t175 IS INITIAL.
                t190 = abap_true.
              ELSEIF t175->has = abap_false.
                t190 = abap_true.
              ENDIF.
              IF t190 = abap_true.
                CLEAR t189.
              ELSE.
                DATA t193 TYPE string.
                DATA t194 TYPE string.
                t194 = t175->value.
                DATA(t196) = strlen( t194 ).
                t193 = t194.
                IF t193 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t193 TO UPPER CASE.
                ELSE.
                  t193 = zlnt_runtime_uppe_91169605024d=>full( t193 ).
                ENDIF.
                DATA(t197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t197->has = abap_true.
                t197->value = t193.
                t189 = t197.
              ENDIF.
              t173 = t189.
              DATA(t198) = VALUE abap_bool( ).
              DATA(t199) = VALUE abap_bool( ).
              IF t173 IS BOUND.
                IF t173->has = abap_true.
                  t199 = xsdbool( strlen( t173->value ) > 0 ).
                ENDIF.
              ENDIF.
              t198 = t199.
              IF t199 = abap_true.
                DATA t201 TYPE abap_bool.
                DATA t203 TYPE string.
                t203 = t173->value.
                t201 = t159->has( p0 = t203 ).
                t198 = t201.
              ENDIF.
              IF t198 = abap_true.
                DATA(t206) = |Duplicate field assignment|.
                DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                t207 = t2->issues.
                DATA t209 TYPE REF TO zcl_lnt_issue.
                DATA t211 TYPE REF TO zcl_lnt_abstract_token.
                t211 = t168->get_first_token( ).
                DATA t214 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t214.
                t209 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t211 i_message_26cb = t206 i_fix = t214 ).
                t207->load( ).
                APPEND t209 TO t207->items.
                t207->save( ).
                DATA t215 TYPE REF TO zcl_lnt_void_type.
                CLEAR t215.
                DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t216.
                DATA(t218) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t219->has = abap_true.
                t219->value = t218.
                t216 = t219.
                DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t221.
                t215 = zcl_lnt_void_type=>get_db65( i_voided = t216 i_qualified_name = t221 ).
                result = t215.
                RETURN.
              ENDIF.
              DATA(t222) = VALUE abap_bool( ).
              IF t173 IS BOUND.
                IF t173->has = abap_true.
                  t222 = xsdbool( strlen( t173->value ) > 0 ).
                ENDIF.
              ENDIF.
              IF t222 = abap_true.
                DATA t224 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
                DATA t226 TYPE string.
                t226 = t173->value.
                t224 = t159->add( p0 = t226 ).
              ENDIF.
            ENDDO.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t229 TYPE REF TO zcl_lnt_expression_node.
    t229 = t1.
    DATA(t231) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
    t228 = t229->find_direct_expressions( i_type_9913 = t231 ).
    DATA t232 TYPE REF TO zcl_lnt_expression_node.
    DATA t233 TYPE REF TO object.
    DATA(t234) = VALUE i( ).
    DO.
      t228->load( ).
      IF t234 >= lines( t228->items ).
        EXIT.
      ENDIF.
      CLEAR t233.
      READ TABLE t228->items INDEX t234 + 1 INTO t233.
      t234 = t234 + 1.
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t235.
      CLEAR t232.
      IF t233 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t235 ?= t233.
        DATA t236 TYPE REF TO object.
        t236 = t235->as_ref( ).
        t232 ?= t236.
      ELSE.
        t232 ?= t233.
      ENDIF.
      zcl_lnt_sy_field_assignment=>run_syntax( i_node = t232 i_input_967e = t2 i_target_type = t3 ).
    ENDDO.
    DATA t240 TYPE REF TO zcl_lnt_abstract_type.
    DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t243 TYPE REF TO zcl_lnt_expression_node.
    t243 = t1.
    DATA(t245) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t242 = t243->find_direct_expressions( i_type_9913 = t245 ).
    DATA t246 TYPE REF TO zcl_lnt_expression_node.
    DATA t247 TYPE REF TO object.
    DATA(t248) = VALUE i( ).
    DO.
      t242->load( ).
      IF t248 >= lines( t242->items ).
        EXIT.
      ENDIF.
      CLEAR t247.
      READ TABLE t242->items INDEX t248 + 1 INTO t247.
      t248 = t248 + 1.
      DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t249.
      CLEAR t246.
      IF t247 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t249 ?= t247.
        DATA t250 TYPE REF TO object.
        t250 = t249->as_ref( ).
        t246 ?= t250.
      ELSE.
        t246 ?= t247.
      ENDIF.
      DATA t251 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t251.
      DATA t252 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t252.
      t252 = t246.
      DATA t258 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t258.
      DATA t259 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t259.
      DATA t260 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t260.
      t251 = zcl_lnt_sy_source=>run_syntax( i_node = t252 i_input_967e = t2 i_target_type = t240 i_write_reference = t258 i_allow_generic_deference = t259 i_read_reference = t260 ).
      t240 = t251.
    ENDDO.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t264 TYPE REF TO zcl_lnt_expression_node.
    DATA t265 TYPE REF TO zcl_lnt_expression_node.
    DATA t266 TYPE REF TO zcl_lnt_expression_node.
    t266 = t1.
    DATA(t268) = zlnt_runtime_desc_78196487750d=>zlnt_member_d354_a6deeff18cfd.
    t265 = t266->find_direct_expression( i_type_9913 = t268 ).
    t264 = t265.
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t270) = xsdbool( t264 IS INITIAL ).
    IF t270 = abap_true.
    ELSE.
      DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t274 TYPE REF TO zcl_lnt_expression_node.
      t274 = t264.
      DATA(t276) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t273 = t274->find_direct_expressions( i_type_9913 = t276 ).
      t269 = t273.
    ENDIF.
    t262 = t269.
    DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t278 TYPE abap_bool.
    t278 = xsdbool( t262 IS BOUND ).
    IF t278 = abap_true.
      t277 = t262.
    ELSE.
      DATA t282 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t282.
      t277 = t282.
    ENDIF.
    t261 = t277.
    DATA t283 TYPE REF TO zcl_lnt_expression_node.
    DATA t284 TYPE REF TO object.
    DATA(t285) = VALUE i( ).
    DO.
      t261->load( ).
      IF t285 >= lines( t261->items ).
        EXIT.
      ENDIF.
      CLEAR t284.
      READ TABLE t261->items INDEX t285 + 1 INTO t284.
      t285 = t285 + 1.
      DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t286.
      CLEAR t283.
      IF t284 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t286 ?= t284.
        DATA t287 TYPE REF TO object.
        t287 = t286->as_ref( ).
        t283 ?= t287.
      ELSE.
        t283 ?= t284.
      ENDIF.
      DATA t288 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t288.
      DATA t289 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t289.
      t289 = t283.
      DATA t295 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t295.
      DATA t296 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t296.
      DATA t297 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t297.
      t288 = zcl_lnt_sy_source=>run_syntax( i_node = t289 i_input_967e = t2 i_target_type = t240 i_write_reference = t295 i_allow_generic_deference = t296 i_read_reference = t297 ).
      t240 = t288.
    ENDDO.
    DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t299 TYPE REF TO zcl_lnt_expression_node.
    t299 = t1.
    DATA(t301) = zlnt_runtime_desc_78196487750d=>zlnt_member_d355_f5f8042a98ef.
    t298 = t299->find_direct_expressions( i_type_9913 = t301 ).
    DATA t302 TYPE REF TO zcl_lnt_expression_node.
    DATA t303 TYPE REF TO object.
    DATA(t304) = VALUE i( ).
    DO.
      t298->load( ).
      IF t304 >= lines( t298->items ).
        EXIT.
      ENDIF.
      CLEAR t303.
      READ TABLE t298->items INDEX t304 + 1 INTO t303.
      t304 = t304 + 1.
      DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t305.
      CLEAR t302.
      IF t303 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t305 ?= t303.
        DATA t306 TYPE REF TO object.
        t306 = t305->as_ref( ).
        t302 ?= t306.
      ELSE.
        t302 ?= t303.
      ENDIF.
      DATA(t307) = VALUE abap_bool( ).
      DATA(t308) = VALUE abap_bool( ).
      DATA(t309) = VALUE abap_bool( ).
      DATA t310 TYPE abap_bool.
      DATA t311 TYPE abap_bool.
      DATA t312 TYPE abap_bool.
      t312 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t311 = xsdbool( t312 = abap_false ).
      t310 = t311.
      IF t311 = abap_true.
        DATA t314 TYPE abap_bool.
        DATA t315 TYPE abap_bool.
        t315 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_unknown_type ).
        t314 = xsdbool( t315 = abap_false ).
        t310 = t314.
      ENDIF.
      t309 = t310.
      IF t310 = abap_true.
        DATA t317 TYPE abap_bool.
        DATA t318 TYPE abap_bool.
        t318 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_any_type ).
        t317 = xsdbool( t318 = abap_false ).
        t309 = t317.
      ENDIF.
      t308 = t309.
      IF t309 = abap_true.
        DATA(t320) = VALUE abap_bool( ).
        DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t323.
        DATA(t325) = VALUE abap_bool( ).
        DATA(t326) = xsdbool( t3 IS INITIAL ).
        t325 = xsdbool( t326 = abap_false ).
        t320 = t325.
        t308 = t320.
      ENDIF.
      t307 = t308.
      IF t308 = abap_true.
        DATA t328 TYPE abap_bool.
        DATA t329 TYPE abap_bool.
        t329 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_void_type ).
        t328 = xsdbool( t329 = abap_false ).
        t307 = t328.
      ENDIF.
      IF t307 = abap_true.
        DATA(t332) = |Value, not a table type|.
        DATA t333 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t333 = t2->issues.
        DATA t335 TYPE REF TO zcl_lnt_issue.
        DATA t337 TYPE REF TO zcl_lnt_abstract_token.
        t337 = t302->get_first_token( ).
        DATA t340 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t340.
        t335 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t337 i_message_26cb = t332 i_fix = t340 ).
        t333->load( ).
        APPEND t335 TO t333->items.
        t333->save( ).
        DATA t341 TYPE REF TO zcl_lnt_void_type.
        CLEAR t341.
        DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t342.
        DATA(t344) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t345) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t345->has = abap_true.
        t345->value = t344.
        t342 = t345.
        DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t347.
        t341 = zcl_lnt_void_type=>get_db65( i_voided = t342 i_qualified_name = t347 ).
        result = t341.
        RETURN.
      ENDIF.
      DATA t348 TYPE REF TO zcl_lnt_abstract_type.
      t348 = t3.
      DATA t350 TYPE abap_bool.
      t350 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t350 = abap_true.
        DATA t356 TYPE REF TO zcl_lnt_ty_table_type.
        t356 ?= t3.
        DATA t358 TYPE REF TO zcl_lnt_abstract_type.
        t358 = t356->row_type.
        t348 = t358.
      ENDIF.
      DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t363) = zlnt_runtime_desc_78196487750d=>zlnt_member_d356_3218bf7cfc33.
      t361 = t302->find_direct_expressions( i_type_9913 = t363 ).
      DATA t364 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t364.
      DATA t365 TYPE REF TO object.
      CLEAR t365.
      DATA(t366) = VALUE i( ).
      DO.
        t361->load( ).
        IF t366 >= lines( t361->items ).
          EXIT.
        ENDIF.
        CLEAR t365.
        READ TABLE t361->items INDEX t366 + 1 INTO t365.
        t366 = t366 + 1.
        DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t367.
        CLEAR t364.
        IF t365 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t367 ?= t365.
          DATA t368 TYPE REF TO object.
          t368 = t367->as_ref( ).
          t364 ?= t368.
        ELSE.
          t364 ?= t365.
        ENDIF.
        DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t371) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t369 = t364->find_direct_expressions( i_type_9913 = t371 ).
        DATA t372 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t372.
        DATA t373 TYPE REF TO object.
        CLEAR t373.
        DATA(t374) = VALUE i( ).
        DO.
          t369->load( ).
          IF t374 >= lines( t369->items ).
            EXIT.
          ENDIF.
          CLEAR t373.
          READ TABLE t369->items INDEX t374 + 1 INTO t373.
          t374 = t374 + 1.
          DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t375.
          CLEAR t372.
          IF t373 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t375 ?= t373.
            DATA t376 TYPE REF TO object.
            t376 = t375->as_ref( ).
            t372 ?= t376.
          ELSE.
            t372 ?= t373.
          ENDIF.
          DATA t377 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t377.
          DATA t378 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t378.
          t378 = t372.
          DATA t383 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t383.
          DATA t384 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t384.
          DATA t385 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t385.
          DATA t386 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t386.
          t377 = zcl_lnt_sy_source=>run_syntax( i_node = t378 i_input_967e = t2 i_target_type = t383 i_write_reference = t384 i_allow_generic_deference = t385 i_read_reference = t386 ).
        ENDDO.
      ENDDO.
      DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t389) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
      t387 = t302->find_direct_expressions( i_type_9913 = t389 ).
      DATA t390 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t390.
      DATA t391 TYPE REF TO object.
      CLEAR t391.
      DATA(t392) = VALUE i( ).
      DO.
        t387->load( ).
        IF t392 >= lines( t387->items ).
          EXIT.
        ENDIF.
        CLEAR t391.
        READ TABLE t387->items INDEX t392 + 1 INTO t391.
        t392 = t392 + 1.
        DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t393.
        CLEAR t390.
        IF t391 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t393 ?= t391.
          DATA t394 TYPE REF TO object.
          t394 = t393->as_ref( ).
          t390 ?= t394.
        ELSE.
          t390 ?= t391.
        ENDIF.
        zcl_lnt_sy_field_assignment=>run_syntax( i_node = t390 i_input_967e = t2 i_target_type = t348 ).
      ENDDO.
      DATA t398 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t400) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t398 = t302->find_direct_expressions( i_type_9913 = t400 ).
      DATA t401 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t401.
      DATA t402 TYPE REF TO object.
      CLEAR t402.
      DATA(t403) = VALUE i( ).
      DO.
        t398->load( ).
        IF t403 >= lines( t398->items ).
          EXIT.
        ENDIF.
        CLEAR t402.
        READ TABLE t398->items INDEX t403 + 1 INTO t402.
        t403 = t403 + 1.
        DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t404.
        CLEAR t401.
        IF t402 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t404 ?= t402.
          DATA t405 TYPE REF TO object.
          t405 = t404->as_ref( ).
          t401 ?= t405.
        ELSE.
          t401 ?= t402.
        ENDIF.
        DATA t406 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t406.
        DATA t407 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t407.
        DATA t408 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t408.
        t408 = t401.
        DATA t414 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t414.
        DATA t415 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t415.
        DATA t416 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t416.
        t407 = zcl_lnt_sy_source=>run_syntax( i_node = t408 i_input_967e = t2 i_target_type = t348 i_write_reference = t414 i_allow_generic_deference = t415 i_read_reference = t416 ).
        t406 = t407.
        DATA t417 TYPE abap_bool.
        DATA t418 TYPE abap_bool.
        t418 = xsdbool( t348 IS BOUND AND t348 IS INSTANCE OF zcl_lnt_string_type ).
        t417 = t418.
        IF t418 = abap_true.
          DATA t420 TYPE abap_bool.
          t420 = xsdbool( t406 IS BOUND AND t406 IS INSTANCE OF zcl_lnt_character_type ).
          t417 = t420.
        ENDIF.
        IF t417 = abap_true.
          DATA(t423) = |VALUE, source type CharacterType not compatible with StringT|.
          t423 = t423 && |ype|.
          DATA t424 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t424 = t2->issues.
          DATA t426 TYPE REF TO zcl_lnt_issue.
          DATA t428 TYPE REF TO zcl_lnt_abstract_token.
          t428 = t401->get_first_token( ).
          DATA t431 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t431.
          t426 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t428 i_message_26cb = t423 i_fix = t431 ).
          t424->load( ).
          APPEND t426 TO t424->items.
          t424->save( ).
        ELSE.
          DATA t432 TYPE abap_bool.
          t432 = zcl_lnt_sy_value_body=>inserts_using_table_key( i_target_type = t3 ).
          IF t432 = abap_true.
            DATA t434 TYPE REF TO zcl_lnt_shape_164098b6.
            DATA t435 TYPE REF TO zcl_lnt_shape_164098b6.
            t435 = zcl_lnt_sy_value_body=>character_or_hex_length( i_type_9913 = t348 ).
            t434 = t435.
            DATA t437 TYPE REF TO zcl_lnt_shape_164098b6.
            DATA t438 TYPE REF TO zcl_lnt_shape_164098b6.
            t438 = zcl_lnt_sy_value_body=>character_or_hex_length( i_type_9913 = t406 ).
            t437 = t438.
            DATA(t440) = VALUE abap_bool( ).
            DATA(t441) = VALUE abap_bool( ).
            DATA(t442) = VALUE abap_bool( ).
            DATA(t443) = VALUE abap_bool( ).
            DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t446.
            DATA(t448) = VALUE abap_bool( ).
            DATA(t449) = xsdbool( t434 IS INITIAL ).
            t448 = xsdbool( t449 = abap_false ).
            t443 = t448.
            t442 = t443.
            IF t443 = abap_true.
              DATA(t451) = VALUE abap_bool( ).
              DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t454.
              DATA(t456) = VALUE abap_bool( ).
              DATA(t457) = xsdbool( t437 IS INITIAL ).
              t456 = xsdbool( t457 = abap_false ).
              t451 = t456.
              t442 = t451.
            ENDIF.
            t441 = t442.
            IF t442 = abap_true.
              DATA t459 TYPE abap_bool.
              DATA t460 TYPE string.
              DATA t461 TYPE REF TO zcl_lnt_shape_164098b6.
              t461 = t434.
              t460 = t461->abap.
              DATA t463 TYPE string.
              DATA t464 TYPE REF TO zcl_lnt_shape_164098b6.
              t464 = t437.
              t463 = t464->abap.
              t459 = xsdbool( t460 = t463 ).
              t441 = t459.
            ENDIF.
            t440 = t441.
            IF t441 = abap_true.
              DATA t466 TYPE abap_bool.
              DATA t467 TYPE f.
              DATA t468 TYPE REF TO zcl_lnt_shape_164098b6.
              t468 = t434.
              t467 = t468->length.
              DATA t470 TYPE f.
              DATA t471 TYPE REF TO zcl_lnt_shape_164098b6.
              t471 = t437.
              t470 = t471->length.
              t466 = xsdbool( t467 <> t470 ).
              t440 = t466.
            ENDIF.
            IF t440 = abap_true.
              DATA(t473) = VALUE string( ).
              DATA(t474) = VALUE string( ).
              DATA(t475) = VALUE string( ).
              DATA(t476) = VALUE string( ).
              DATA t477 TYPE string.
              DATA t478 TYPE string.
              DATA(t479) = |VALUE, source type |.
              DATA t480 TYPE string.
              DATA t481 TYPE REF TO zcl_lnt_shape_164098b6.
              t481 = t437.
              t480 = t481->abap.
              DATA(t483) = strlen( t479 ).
              t478 = |{ t479 }{ t480 }|.
              DATA(t484) = | LENGTH |.
              DATA(t485) = strlen( t478 ).
              t477 = |{ t478 }{ t484 }|.
              DATA(t486) = VALUE string( ).
              DATA t487 TYPE f.
              DATA t488 TYPE REF TO zcl_lnt_shape_164098b6.
              t488 = t437.
              t487 = t488->length.
              IF t487 <> trunc( t487 ) OR t487 > range_safe_integer OR t487 < 0 - range_safe_integer.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              DATA(t490) = CONV int8( t487 ).
              t486 = |{ t490 }|.
              DATA(t491) = strlen( t477 ).
              t476 = |{ t477 }{ t486 }|.
              DATA(t492) = | not compatible |.
              DATA(t493) = strlen( t476 ).
              t475 = |{ t476 }{ t492 }|.
              DATA(t494) = VALUE string( ).
              DATA(t495) = VALUE string( ).
              DATA t496 TYPE string.
              DATA t497 TYPE string.
              DATA(t498) = |with row type |.
              DATA t499 TYPE string.
              DATA t500 TYPE REF TO zcl_lnt_shape_164098b6.
              t500 = t434.
              t499 = t500->abap.
              DATA(t502) = strlen( t498 ).
              t497 = |{ t498 }{ t499 }|.
              DATA(t503) = | LENGTH |.
              DATA(t504) = strlen( t497 ).
              t496 = |{ t497 }{ t503 }|.
              DATA(t505) = VALUE string( ).
              DATA t506 TYPE f.
              DATA t507 TYPE REF TO zcl_lnt_shape_164098b6.
              t507 = t434.
              t506 = t507->length.
              IF t506 <> trunc( t506 ) OR t506 > range_safe_integer OR t506 < 0 - range_safe_integer.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              DATA(t509) = CONV int8( t506 ).
              t505 = |{ t509 }|.
              DATA(t510) = strlen( t496 ).
              t495 = |{ t496 }{ t505 }|.
              DATA(t511) = ||.
              DATA(t512) = strlen( t495 ).
              t494 = |{ t495 }{ t511 }|.
              DATA(t513) = strlen( t475 ).
              t474 = |{ t475 }{ t494 }|.
              t473 = t474.
              DATA t514 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t514 = t2->issues.
              DATA t516 TYPE REF TO zcl_lnt_issue.
              DATA t518 TYPE REF TO zcl_lnt_abstract_token.
              t518 = t401->get_first_token( ).
              DATA t521 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t521.
              t516 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t518 i_message_26cb = t473 i_fix = t521 ).
              t514->load( ).
              APPEND t516 TO t514->items.
              t514->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t522 TYPE abap_bool.
    t522 = xsdbool( t12 = abap_true ).
    IF t522 = abap_true.
      DATA t525 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t526 TYPE REF TO zcl_lnt_current_scope.
      t526 = t2->scope.
      DATA t528 TYPE REF TO zcl_lnt_position.
      DATA t529 TYPE REF TO zcl_lnt_abstract_token.
      DATA t530 TYPE REF TO zcl_lnt_abstract_token.
      DATA t531 TYPE REF TO zcl_lnt_expression_node.
      t531 = t1.
      t530 = t531->get_last_token( ).
      t529 = t530.
      DATA t533 TYPE REF TO zcl_lnt_position.
      DATA t534 TYPE f.
      DATA t536 TYPE REF TO zcl_lnt_position.
      t536 = t529->start.
      DATA t538 TYPE f.
      t538 = t536->row.
      t534 = t538.
      DATA t540 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t541 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t543 TYPE REF TO zcl_lnt_position.
      t543 = t529->start.
      DATA t545 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t545 = t543->col.
      t541 = t545.
      DATA t547 TYPE f.
      DATA t549 TYPE string.
      t549 = t529->str.
      t547 = strlen( t549 ).
      DATA(t552) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t552->has = abap_true.
      t552->value = t547.
      t540 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t541 right = t552 op = `+` ).
      t533 = NEW zcl_lnt_position( i_row = t534 i_col = t540 ).
      t528 = t533.
      t525 = t526->pop( i_end = t528 ).
    ENDIF.
    DATA t553 TYPE f.
    DATA(t554) = CONV f( 0 ).
    t553 = t554.
    DO.
      DATA t555 TYPE abap_bool.
      t555 = xsdbool( t553 < t29 ).
      IF t555 = abap_false.
        EXIT.
      ENDIF.
      DATA t558 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t559 TYPE REF TO zcl_lnt_current_scope.
      t559 = t2->scope.
      DATA t561 TYPE REF TO zcl_lnt_position.
      DATA t562 TYPE REF TO zcl_lnt_abstract_token.
      DATA t563 TYPE REF TO zcl_lnt_abstract_token.
      DATA t564 TYPE REF TO zcl_lnt_expression_node.
      t564 = t1.
      t563 = t564->get_last_token( ).
      t562 = t563.
      DATA t566 TYPE REF TO zcl_lnt_position.
      DATA t567 TYPE f.
      DATA t569 TYPE REF TO zcl_lnt_position.
      t569 = t562->start.
      DATA t571 TYPE f.
      t571 = t569->row.
      t567 = t571.
      DATA t573 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t574 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t576 TYPE REF TO zcl_lnt_position.
      t576 = t562->start.
      DATA t578 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t578 = t576->col.
      t574 = t578.
      DATA t580 TYPE f.
      DATA t582 TYPE string.
      t582 = t562->str.
      t580 = strlen( t582 ).
      DATA(t585) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t585->has = abap_true.
      t585->value = t580.
      t573 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t574 right = t585 op = `+` ).
      t566 = NEW zcl_lnt_position( i_row = t567 i_col = t573 ).
      t561 = t566.
      t558 = t559->pop( i_end = t561 ).
      DATA t586 TYPE f.
      DATA(t588) = CONV f( 1 ).
      t586 = t553 + t588.
      t553 = t586.
    ENDDO.
    DATA(t589) = VALUE abap_bool( ).
    DATA(t590) = VALUE abap_bool( ).
    DATA t591 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t592 TYPE REF TO zcl_lnt_abstract_type.
    t592 = t3.
    DATA t594 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t595) = xsdbool( t592 IS INITIAL ).
    IF t595 = abap_true.
    ELSE.
      DATA t598 TYPE abap_bool.
      DATA t599 TYPE REF TO zcl_lnt_abstract_type.
      t599 = t592.
      t598 = t599->is_generic( ).
      DATA(t601) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t601->has = abap_true.
      t601->value = t598.
      t594 = t601.
    ENDIF.
    t591 = t594.
    IF t591 IS BOUND.
      IF t591->has = abap_true.
        t590 = xsdbool( t591->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    t589 = t590.
    IF t590 = abap_true.
      DATA t602 TYPE abap_bool.
      t602 = xsdbool( t240 IS BOUND ).
      t589 = t602.
    ENDIF.
    IF t589 = abap_true.
      result = t240.
      RETURN.
    ENDIF.
    DATA t609 TYPE REF TO zcl_lnt_abstract_type.
    DATA t610 TYPE abap_bool.
    t610 = xsdbool( t3 IS BOUND ).
    IF t610 = abap_true.
      t609 = t3.
    ELSE.
      t609 = t240.
    ENDIF.
    result = t609.

  ENDMETHOD.

  METHOD inserts_using_table_key.
    DATA(t1) = i_target_type.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t9 TYPE REF TO zcl_lnt_ty_table_type.
    t9 ?= t1.
    DATA t12 TYPE REF TO zcl_lnt_itable_key.
    DATA t13 TYPE REF TO zcl_lnt_itable_key.
    DATA t14 TYPE REF TO zcl_lnt_itable_options.
    t14 = t9->options.
    t13 = t14->zlnt_view_read_sr_48b89cc62ab9( ).
    t12 = t13.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t17) = xsdbool( t12 IS INITIAL ).
    IF t17 = abap_true.
    ELSE.
      DATA t20 TYPE string.
      DATA t21 TYPE REF TO zcl_lnt_itable_key.
      t21 = t12.
      t20 = t21->zlnt_view_read_sr_f361ef311f50( ).
      DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t23->has = abap_true.
      t23->value = t20.
      t16 = t23.
    ENDIF.
    t6 = t16.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |SORTED|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t27 = t30.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    IF t6 IS BOUND.
      t32 = t6->has.
    ENDIF.
    IF t27 IS BOUND.
      t33 = t27->has.
    ENDIF.
    IF t32 = t33.
      IF t32 = abap_false.
        t25 = abap_true.
      ELSEIF t6->value = t27->value.
        t25 = abap_true.
      ENDIF.
    ENDIF.
    t24 = t25.
    IF t25 = abap_false.
      DATA(t34) = VALUE abap_bool( ).
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t38) = |HASHED|.
      DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t39->has = abap_true.
      t39->value = t38.
      t36 = t39.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = VALUE abap_bool( ).
      IF t6 IS BOUND.
        t41 = t6->has.
      ENDIF.
      IF t36 IS BOUND.
        t42 = t36->has.
      ENDIF.
      IF t41 = t42.
        IF t41 = abap_false.
          t34 = abap_true.
        ELSEIF t6->value = t36->value.
          t34 = abap_true.
        ENDIF.
      ENDIF.
      t24 = t34.
    ENDIF.
    result = t24.

  ENDMETHOD.

  METHOD character_or_hex_length.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE abap_bool.
    t2 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_character_type ).
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_shape_164098b6.
      DATA t7 TYPE string.
      t7 = |c|.
      DATA t9 TYPE f.
      DATA t12 TYPE REF TO zcl_lnt_character_type.
      t12 ?= t1.
      DATA t14 TYPE f.
      t14 = t12->length.
      t9 = t14.
      t6 = NEW zcl_lnt_shape_164098b6( i_abap = t7 i_length = t9 ).
      CREATE OBJECT t6->zlnt_view_ownkeys_b0e8086400eb.
      t6->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t16 ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t17 ).
      ENDIF.
      CREATE OBJECT t6->zlnt_json_ownkeys_70e5fd461788.
      t6->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t18) = |abap|.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
      DATA(t20) = |length|.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t20 p1 = t21 ).
      ENDIF.
      result = t6.
      RETURN.
    ELSE.
      DATA t23 TYPE abap_bool.
      t23 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_hex_type ).
      IF t23 = abap_true.
        DATA t27 TYPE REF TO zcl_lnt_shape_164098b6.
        DATA t28 TYPE string.
        t28 = |x|.
        DATA t30 TYPE f.
        DATA t33 TYPE REF TO zcl_lnt_hex_type.
        t33 ?= t1.
        DATA t35 TYPE f.
        t35 = t33->length.
        t30 = t35.
        t27 = NEW zcl_lnt_shape_164098b6( i_abap = t28 i_length = t30 ).
        CREATE OBJECT t27->zlnt_view_ownkeys_b0e8086400eb.
        t27->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t37 ).
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t38 ).
        ENDIF.
        CREATE OBJECT t27->zlnt_json_ownkeys_70e5fd461788.
        t27->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t39) = |abap|.
        DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
        DATA(t41) = |length|.
        DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
        ENDIF.
        result = t27.
        RETURN.
      ENDIF.
    ENDIF.
    CLEAR result.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d848_c57a8b36aa9d.
  ENDMETHOD.
ENDCLASS.
