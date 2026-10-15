* TS: src/abap/5_syntax/expressions/sql_compare.ts:14:1 SQLCompare
CLASS zcl_lnt_sy_sql_compare DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input i_tables_8d5a TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    CLASS-METHODS find_type IMPORTING i_field_name TYPE string i_tables_8d5a TYPE REF TO zlnt_runtime_arra_b72089862d0f i_scope TYPE REF TO zcl_lnt_current_scope RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_sql_compare IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_tables_8d5a.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zif_lnt_union_daf022d4.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t10 TYPE REF TO zif_lnt_node.
    DATA(t11) = t1.
    t10 = t11->get_first_child( ).
    t9 ?= t10.
    t8 = t9.
    DATA t12 TYPE REF TO zif_lnt_union_daf022d4.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t8.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t15.
      t12 = t15.
    ELSE.
      DATA t16 TYPE REF TO zif_lnt_union_daf022d4.
      DATA t17 TYPE REF TO object.
      DATA t18 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t19) = t8.
      t18 = t19.
      t17 = t18->get_db65( ).
      DATA t20 TYPE REF TO object.
      t20 = t17.
      t16 ?= t20.
      t12 = t16.
    ENDIF.
    t7 = t12.
    t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_st_dynamic ).
    IF t6 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA t22 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t23 TYPE REF TO zif_lnt_node.
      DATA(t24) = t1.
      t23 = t24->get_first_child( ).
      t22 ?= t23.
      t21 ?= t22.
      DATA(t25) = t2.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t21 i_input_967e = t25 ).
      RETURN.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t27) = t1.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    t26 = t27->find_direct_expressions( i_type_9913 = t28 ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t29.
    DATA t30 TYPE REF TO object.
    CLEAR t30.
    DATA(t31) = VALUE i( ).
    DO.
      t26->load( ).
      IF t31 >= lines( t26->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t26->items INDEX t31 + 1 INTO t30.
      t31 = t31 + 1.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      CLEAR t29.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t32 ?= t30.
        DATA t33 TYPE REF TO object.
        t33 = t32->as_ref( ).
        t29 ?= t33.
      ELSE.
        t29 ?= t30.
      ENDIF.
      DATA t34 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t34.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t35.
      DATA(t36) = abap_true.
      IF t36 = abap_true.
        DATA(t37) = t29.
        t35 = t37.
      ELSE.
        DATA t38 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t38.
        t35 = t38.
      ENDIF.
      DATA(t39) = t2.
      DATA t40 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t42.
      DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t43.
      t34 = zcl_lnt_sy_source=>run_syntax( i_node = t35 i_input_967e = t39 i_target_type = t40 i_write_reference = t41 i_allow_generic_deference = t42 i_read_reference = t43 ).
    ENDDO.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t45) = t1.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    t44 = t45->find_direct_expressions( i_type_9913 = t46 ).
    DATA t47 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t47.
    DATA t48 TYPE REF TO object.
    CLEAR t48.
    DATA(t49) = VALUE i( ).
    DO.
      t44->load( ).
      IF t49 >= lines( t44->items ).
        EXIT.
      ENDIF.
      CLEAR t48.
      READ TABLE t44->items INDEX t49 + 1 INTO t48.
      t49 = t49 + 1.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      CLEAR t47.
      IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t50 ?= t48.
        DATA t51 TYPE REF TO object.
        t51 = t50->as_ref( ).
        t47 ?= t51.
      ELSE.
        t47 ?= t48.
      ENDIF.
      DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t54 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t55) = t47.
      t54 = t55.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t57) = t54.
      t56 = t57->children.
      t53 = t56.
      t52 ?= t53.
      DATA t58 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t58.
      DATA t59 TYPE REF TO object.
      CLEAR t59.
      DATA(t60) = VALUE i( ).
      DO.
        t52->load( ).
        IF t60 >= lines( t52->items ).
          EXIT.
        ENDIF.
        CLEAR t59.
        READ TABLE t52->items INDEX t60 + 1 INTO t59.
        t60 = t60 + 1.
        DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t61.
        CLEAR t58.
        IF t59 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t61 ?= t59.
          DATA t62 TYPE REF TO object.
          t62 = t61->as_ref( ).
          t58 ?= t62.
        ELSE.
          t58 ?= t59.
        ENDIF.
        DATA t63 TYPE abap_bool.
        DATA(t64) = t58.
        t63 = xsdbool( t64 IS BOUND AND t64 IS INSTANCE OF zcl_lnt_expression_node ).
        IF t63 = abap_true.
          DATA t65 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t65.
          DATA(t66) = abap_true.
          IF t66 = abap_true.
            DATA t67 TYPE REF TO zcl_lnt_abstract_token.
            DATA t68 TYPE REF TO zcl_lnt_expression_node.
            DATA(t69) = t58.
            DATA t70 TYPE REF TO object.
            t70 = t69.
            t68 ?= t70.
            t67 = t68->get_first_token( ).
            t65 = t67.
          ELSE.
            DATA t71 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t71.
            t65 = t71.
          ENDIF.
          t5 = t65.
          EXIT.
        ENDIF.
      ENDDO.
      DATA t72 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t73) = t47.
      DATA(t74) = t2.
      t72 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t73 i_input_967e = t74 ).
      t4 = t72.
    ENDDO.
    DATA t75 TYPE REF TO zcl_lnt_expression_node.
    DATA t76 TYPE REF TO zcl_lnt_expression_node.
    DATA(t77) = t1.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d299_0ba2c1ef340d.
    t76 = t77->find_direct_expression( i_type_9913 = t78 ).
    t75 = t76.
    DATA t79 TYPE abap_bool.
    DATA(t80) = t75.
    t79 = xsdbool( t80 IS BOUND ).
    IF t79 = abap_true.
      DATA t81 TYPE REF TO zcl_lnt_expression_node.
      DATA(t82) = t75.
      t81 = t82.
      DATA(t83) = t2.
      zcl_lnt_sy_sql_in=>run_syntax( i_node = t81 i_input_967e = t83 ).
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t87.
    DATA t88 TYPE REF TO zcl_lnt_expression_node.
    DATA t89 TYPE REF TO zcl_lnt_expression_node.
    DATA(t90) = t1.
    DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    t89 = t90->find_direct_expression( i_type_9913 = t91 ).
    t88 = t89.
    DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t92.
    DATA(t93) = VALUE abap_bool( ).
    DATA(t94) = t88.
    IF t94 IS INITIAL.
      t93 = abap_true.
    ENDIF.
    IF t93 = abap_true.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t95.
      t92 = t95.
    ELSE.
      DATA t96 TYPE string.
      DATA t97 TYPE REF TO zcl_lnt_expression_node.
      DATA(t98) = t88.
      t97 = t98.
      t96 = t97->concat_tokens( ).
      DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t99->has = abap_true.
      t99->value = t96.
      t92 = t99.
    ENDIF.
    t87 = t92.
    t86 = t87.
    DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t100.
    DATA(t101) = VALUE abap_bool( ).
    DATA(t102) = t86.
    IF t102 IS INITIAL.
      t101 = abap_true.
    ELSEIF t102->has = abap_false.
      t101 = abap_true.
    ENDIF.
    IF t101 = abap_true.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t103.
      t100 = t103.
    ELSE.
      DATA t104 TYPE string.
      DATA t105 TYPE string.
      DATA(t106) = t86.
      t105 = t106->value.
      DATA(t107) = strlen( t105 ).
      t104 = t105.
      IF t104 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t104 TO UPPER CASE.
      ELSE.
        t104 = zlnt_runtime_uppe_91169605024d=>full( t104 ).
      ENDIF.
      DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t108->has = abap_true.
      t108->value = t104.
      t100 = t108.
    ENDIF.
    t85 = t100.
    t84 = t85.
    DATA(t109) = VALUE abap_bool( ).
    DATA(t110) = VALUE abap_bool( ).
    DATA(t111) = VALUE abap_bool( ).
    DATA(t112) = t84.
    IF t112 IS BOUND.
      IF t112->has = abap_true.
        t111 = xsdbool( strlen( t112->value ) > 0 ).
      ENDIF.
    ENDIF.
    t110 = t111.
    IF t111 = abap_true.
      DATA t113 TYPE abap_bool.
      DATA(t114) = t4.
      t113 = xsdbool( t114 IS BOUND ).
      t110 = t113.
    ENDIF.
    t109 = t110.
    IF t110 = abap_true.
      DATA t115 TYPE abap_bool.
      DATA(t116) = t5.
      t115 = xsdbool( t116 IS BOUND ).
      t109 = t115.
    ENDIF.
    IF t109 = abap_true.
      DATA t117 TYPE REF TO zcl_lnt_abstract_type.
      DATA t118 TYPE REF TO zcl_lnt_abstract_type.
      DATA t119 TYPE string.
      DATA(t120) = t84.
      t119 = t120->value.
      DATA(t121) = t3.
      DATA t122 TYPE REF TO zcl_lnt_current_scope.
      DATA(t123) = t2.
      t122 = t123->scope.
      t118 = zcl_lnt_sy_sql_compare=>find_type( i_field_name = t119 i_tables_8d5a = t121 i_scope = t122 ).
      t117 = t118.
      DATA t124 TYPE string.
      DATA(t125) = ||.
      t124 = t125.
      DATA t126 TYPE abap_bool.
      DATA t127 TYPE abap_bool.
      DATA(t128) = t4.
      t127 = xsdbool( t128 IS BOUND AND t128 IS INSTANCE OF zcl_lnt_integer_type ).
      t126 = t127.
      IF t127 = abap_true.
        DATA t129 TYPE abap_bool.
        DATA(t130) = t117.
        t129 = xsdbool( t130 IS BOUND AND t130 IS INSTANCE OF zcl_lnt_character_type ).
        t126 = t129.
      ENDIF.
      IF t126 = abap_true.
        DATA t131 TYPE string.
        DATA t132 TYPE string.
        DATA(t133) = ||.
        DATA t134 TYPE string.
        DATA(t135) = t84.
        t134 = t135->value.
        DATA(t136) = strlen( t133 ).
        t132 = |{ t133 }{ t134 }|.
        DATA(t137) = |: Integer to CHAR conversion|.
        DATA(t138) = strlen( t132 ).
        t131 = |{ t132 }{ t137 }|.
        t124 = t131.
      ELSE.
        DATA t139 TYPE abap_bool.
        DATA t140 TYPE abap_bool.
        DATA(t141) = t4.
        t140 = xsdbool( t141 IS BOUND AND t141 IS INSTANCE OF zcl_lnt_integer_type ).
        t139 = t140.
        IF t140 = abap_true.
          DATA t142 TYPE abap_bool.
          DATA(t143) = t117.
          t142 = xsdbool( t143 IS BOUND AND t143 IS INSTANCE OF zcl_lnt_numeric_type ).
          t139 = t142.
        ENDIF.
        IF t139 = abap_true.
          DATA t144 TYPE string.
          DATA t145 TYPE string.
          DATA(t146) = ||.
          DATA t147 TYPE string.
          DATA(t148) = t84.
          t147 = t148->value.
          DATA(t149) = strlen( t146 ).
          t145 = |{ t146 }{ t147 }|.
          DATA(t150) = |: Integer to NUMC conversion|.
          DATA(t151) = strlen( t145 ).
          t144 = |{ t145 }{ t150 }|.
          t124 = t144.
        ELSE.
          DATA t152 TYPE abap_bool.
          DATA t153 TYPE abap_bool.
          DATA(t154) = t4.
          t153 = xsdbool( t154 IS BOUND AND t154 IS INSTANCE OF zcl_lnt_numeric_type ).
          t152 = t153.
          IF t153 = abap_true.
            DATA t155 TYPE abap_bool.
            DATA(t156) = t117.
            t155 = xsdbool( t156 IS BOUND AND t156 IS INSTANCE OF zcl_lnt_integer_type ).
            t152 = t155.
          ENDIF.
          IF t152 = abap_true.
            DATA t157 TYPE string.
            DATA t158 TYPE string.
            DATA(t159) = ||.
            DATA t160 TYPE string.
            DATA(t161) = t84.
            t160 = t161->value.
            DATA(t162) = strlen( t159 ).
            t158 = |{ t159 }{ t160 }|.
            DATA(t163) = |: NUMC to Integer conversion|.
            DATA(t164) = strlen( t158 ).
            t157 = |{ t158 }{ t163 }|.
            t124 = t157.
          ELSE.
            DATA t165 TYPE abap_bool.
            DATA t166 TYPE abap_bool.
            DATA(t167) = t4.
            t166 = xsdbool( t167 IS BOUND AND t167 IS INSTANCE OF zcl_lnt_character_type ).
            t165 = t166.
            IF t166 = abap_true.
              DATA t168 TYPE abap_bool.
              DATA(t169) = t117.
              t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_integer_type ).
              t165 = t168.
            ENDIF.
            IF t165 = abap_true.
              DATA t170 TYPE string.
              DATA t171 TYPE string.
              DATA(t172) = ||.
              DATA t173 TYPE string.
              DATA(t174) = t84.
              t173 = t174->value.
              DATA(t175) = strlen( t172 ).
              t171 = |{ t172 }{ t173 }|.
              DATA(t176) = |: CHAR to Integer conversion|.
              DATA(t177) = strlen( t171 ).
              t170 = |{ t171 }{ t176 }|.
              t124 = t170.
            ELSE.
              DATA(t178) = VALUE abap_bool( ).
              DATA t179 TYPE abap_bool.
              DATA t180 TYPE abap_bool.
              DATA(t181) = t4.
              t180 = xsdbool( t181 IS BOUND AND t181 IS INSTANCE OF zcl_lnt_character_type ).
              t179 = t180.
              IF t180 = abap_true.
                DATA t182 TYPE abap_bool.
                DATA(t183) = t117.
                t182 = xsdbool( t183 IS BOUND AND t183 IS INSTANCE OF zcl_lnt_character_type ).
                t179 = t182.
              ENDIF.
              t178 = t179.
              IF t179 = abap_true.
                DATA t184 TYPE abap_bool.
                DATA t185 TYPE f.
                DATA t186 TYPE REF TO zcl_lnt_character_type.
                DATA t187 TYPE REF TO zcl_lnt_character_type.
                DATA(t188) = t4.
                t187 ?= t188.
                t186 = t187.
                DATA t189 TYPE f.
                DATA(t190) = t186.
                t189 = t190->length.
                t185 = t189.
                DATA t191 TYPE f.
                DATA t192 TYPE REF TO zcl_lnt_character_type.
                DATA t193 TYPE REF TO zcl_lnt_character_type.
                DATA(t194) = t117.
                t193 ?= t194.
                t192 = t193.
                DATA t195 TYPE f.
                DATA(t196) = t192.
                t195 = t196->length.
                t191 = t195.
                t184 = xsdbool( t185 > t191 ).
                t178 = t184.
              ENDIF.
              IF t178 = abap_true.
                DATA t197 TYPE string.
                DATA t198 TYPE string.
                DATA(t199) = ||.
                DATA t200 TYPE string.
                DATA(t201) = t84.
                t200 = t201->value.
                DATA(t202) = strlen( t199 ).
                t198 = |{ t199 }{ t200 }|.
                DATA(t203) = |: Source field longer than database field, CHAR -> CHAR|.
                DATA(t204) = strlen( t198 ).
                t197 = |{ t198 }{ t203 }|.
                t124 = t197.
              ELSE.
                DATA(t205) = VALUE abap_bool( ).
                DATA t206 TYPE abap_bool.
                DATA t207 TYPE abap_bool.
                DATA(t208) = t4.
                t207 = xsdbool( t208 IS BOUND AND t208 IS INSTANCE OF zcl_lnt_numeric_type ).
                t206 = t207.
                IF t207 = abap_true.
                  DATA t209 TYPE abap_bool.
                  DATA(t210) = t117.
                  t209 = xsdbool( t210 IS BOUND AND t210 IS INSTANCE OF zcl_lnt_numeric_type ).
                  t206 = t209.
                ENDIF.
                t205 = t206.
                IF t206 = abap_true.
                  DATA t211 TYPE abap_bool.
                  DATA t212 TYPE f.
                  DATA t213 TYPE REF TO zcl_lnt_numeric_type.
                  DATA t214 TYPE REF TO zcl_lnt_numeric_type.
                  DATA(t215) = t4.
                  t214 ?= t215.
                  t213 = t214.
                  DATA t216 TYPE f.
                  DATA(t217) = t213.
                  t216 = t217->length.
                  t212 = t216.
                  DATA t218 TYPE f.
                  DATA t219 TYPE REF TO zcl_lnt_numeric_type.
                  DATA t220 TYPE REF TO zcl_lnt_numeric_type.
                  DATA(t221) = t117.
                  t220 ?= t221.
                  t219 = t220.
                  DATA t222 TYPE f.
                  DATA(t223) = t219.
                  t222 = t223->length.
                  t218 = t222.
                  t211 = xsdbool( t212 > t218 ).
                  t205 = t211.
                ENDIF.
                IF t205 = abap_true.
                  DATA t224 TYPE string.
                  DATA t225 TYPE string.
                  DATA(t226) = ||.
                  DATA t227 TYPE string.
                  DATA(t228) = t84.
                  t227 = t228->value.
                  DATA(t229) = strlen( t226 ).
                  t225 = |{ t226 }{ t227 }|.
                  DATA(t230) = |: Source field longer than database field, NUMC -> NUMC|.
                  DATA(t231) = strlen( t225 ).
                  t224 = |{ t225 }{ t230 }|.
                  t124 = t224.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t232 TYPE abap_bool.
      DATA(t233) = t124.
      DATA(t234) = ||.
      t232 = xsdbool( t233 <> t234 ).
      IF t232 = abap_true.
        DATA t235 TYPE REF TO zcl_lnt_current_scope.
        DATA t236 TYPE REF TO zcl_lnt_current_scope.
        DATA(t237) = t2.
        t236 = t237->scope.
        t235 = t236.
        DATA t238 TYPE string.
        DATA t239 TYPE string.
        DATA(t240) = t84.
        t239 = t240->value.
        t238 = t239.
        DATA t241 TYPE string.
        DATA(t242) = t124.
        t241 = t242.
        DATA t243 TYPE REF TO zcl_lnt_abstract_token.
        DATA t244 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t245) = t5.
        t244 = t245.
        t243 = t244.
        DATA t246 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t246.
        DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t247.
        DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t248.
        DATA t249 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t249.
        DATA t250 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t250.
        DATA t251 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t252 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t253) = t235.
        t252 = t253->current.
        t251 = t252.
        DATA t254 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t254.
        DATA(t255) = VALUE abap_bool( ).
        DATA(t256) = t251.
        IF t256 IS INITIAL.
          t255 = abap_true.
        ENDIF.
        IF t255 = abap_true.
          DATA t257 TYPE REF TO zcl_lnt_iscope_data.
          CLEAR t257.
          t254 = t257.
        ELSE.
          DATA t258 TYPE REF TO zcl_lnt_iscope_data.
          DATA t259 TYPE REF TO zcl_lnt_scope_data.
          DATA t260 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t261) = t251.
          t260 = t261.
          t259 = t260.
          DATA t262 TYPE REF TO zcl_lnt_iscope_data.
          DATA(t263) = t259.
          t262 = t263->data_56cc.
          t258 = t262.
          t254 = t258.
        ENDIF.
        t250 = t254.
        t249 = t250.
        DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t264.
        DATA(t265) = VALUE abap_bool( ).
        DATA(t266) = t249.
        IF t266 IS INITIAL.
          t265 = abap_true.
        ENDIF.
        IF t265 = abap_true.
          DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t267.
          t264 = t267.
        ELSE.
          DATA t268 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t269 TYPE REF TO zcl_lnt_iscope_data.
          DATA(t270) = t249.
          t269 = t270.
          t268 = t269->sql_conversion.
          t264 = t268.
        ENDIF.
        t248 = t264.
        t247 = t248.
        DATA t271 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t271.
        DATA(t272) = VALUE abap_bool( ).
        DATA(t273) = t247.
        IF t273 IS INITIAL.
          t272 = abap_true.
        ENDIF.
        IF t272 = abap_true.
          DATA t274 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t274.
          t271 = t274.
        ELSE.
          DATA(t275) = VALUE f( ).
          DATA(t276) = VALUE i( ).
          DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t278) = t247.
          t277 = t278.
          DATA t279 TYPE REF TO zcl_lnt_shape_9a575e77.
          CLEAR t279.
          DATA t280 TYPE string.
          DATA(t281) = t238.
          t280 = t281.
          DATA t282 TYPE string.
          DATA(t283) = t241.
          t282 = t283.
          DATA t284 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t284.
          DATA t285 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t285.
          DATA(t286) = abap_true.
          IF t286 = abap_true.
            DATA(t287) = t243.
            t285 = t287.
          ELSE.
            DATA t288 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t288.
            t285 = t288.
          ENDIF.
          t284 = t285.
          t279 = NEW zcl_lnt_shape_9a575e77( i_field_name = t280 i_message_26cb = t282 i_token = t284 ).
          CREATE OBJECT t279->zlnt_view_ownkeys_b0e8086400eb.
          t279->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t289.
          IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fieldName` p1 = t289 ).
          ENDIF.
          DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t290.
          IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t290 ).
          ENDIF.
          DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t291.
          IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t291 ).
          ENDIF.
          CREATE OBJECT t279->zlnt_json_ownkeys_70e5fd461788.
          t279->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t292) = |fieldName|.
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t293.
          IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t292 p1 = t293 ).
          ENDIF.
          DATA(t294) = |message|.
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t295.
          IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t294 p1 = t295 ).
          ENDIF.
          DATA(t296) = |token|.
          DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t297.
          IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t296 p1 = t297 ).
          ENDIF.
          t277->load( ).
          APPEND t279 TO t277->items.
          t276 = lines( t277->items ).
          t277->save( ).
          t275 = t276.
          DATA(t298) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t298->has = abap_true.
          t298->value = t275.
          t271 = t298.
        ENDIF.
        t246 = t271.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD find_type.
    DATA(t1) = i_field_name.
    DATA(t2) = i_tables_8d5a.
    DATA(t3) = i_scope.
    DATA(t4) = t2.
    DATA t5 TYPE REF TO zif_lnt_union_c74a232f.
    CLEAR t5.
    DATA(t6) = VALUE i( ).
    DO.
      t4->load( ).
      IF t6 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t4->items INDEX t6 + 1 INTO t5.
      t6 = t6 + 1.
      DATA t7 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t7.
      DATA t8 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t8.
      DATA t9 TYPE REF TO zif_lnt_union_c74a232f.
      DATA(t10) = t5.
      t9 = t10.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = t9.
      IF t13 IS INITIAL.
        t12 = abap_true.
      ENDIF.
      IF t12 = abap_true.
        DATA t14 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t14.
        t11 = t14.
      ELSE.
        DATA t15 TYPE REF TO zcl_lnt_abstract_type.
        DATA t16 TYPE REF TO zif_lnt_union_c74a232f.
        DATA(t17) = t9.
        t16 = t17.
        DATA t18 TYPE REF TO zif_lnt_registry.
        DATA t19 TYPE REF TO zcl_lnt_current_scope.
        DATA(t20) = t3.
        t19 = t20.
        DATA t21 TYPE REF TO zif_lnt_registry.
        DATA(t22) = t19.
        t21 = t22->reg.
        t18 = t21.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        t15 = t16->parse_type( i_reg_f149 = t18 i_data_element = t23 i_description = t24 ).
        t11 = t15.
      ENDIF.
      t8 = t11.
      t7 = t8.
      DATA t25 TYPE abap_bool.
      DATA(t26) = t7.
      t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t25 = abap_true.
        DATA t27 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t27.
        DATA t28 TYPE REF TO zcl_lnt_structure_type.
        DATA t29 TYPE REF TO zcl_lnt_structure_type.
        DATA(t30) = t7.
        t29 ?= t30.
        t28 = t29.
        DATA t31 TYPE string.
        DATA(t32) = t1.
        t31 = t32.
        DATA t33 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t33.
        DATA t34 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t35) = t28.
        t34 = t35->indexed.
        DATA t36 TYPE string.
        DATA(t37) = t31.
        DATA(t38) = strlen( t37 ).
        t36 = t37.
        IF t36 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t36 TO UPPER CASE.
        ELSE.
          t36 = zlnt_runtime_uppe_91169605024d=>full( t36 ).
        ENDIF.
        t33 = t34->get( p0 = t36 ).
        t27 = t33.
        result = t27.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t39 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t39.
    result = t39.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d835_877fa39e77bb.
  ENDMETHOD.
ENDCLASS.
