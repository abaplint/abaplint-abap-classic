* TS: src/abap/5_syntax/expressions/sql_compare.ts:14:1 SQLCompare
CLASS zcl_lnt_sy_sql_compare DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input i_tables_8d5a TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    CLASS-METHODS find_type IMPORTING i_field_name TYPE string i_tables_8d5a TYPE REF TO zlnt_runtime_arra_b72089862d0f i_scope TYPE REF TO zcl_lnt_current_scope RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_sql_compare IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zlnt_runtime_arra_b72089862d0f( i_tables_8d5a ).
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
    DATA(t11) = CAST zif_lnt_union_bb14dc41( t1 ).
    t10 = t11->get_first_child( ).
    t9 ?= t10.
    t8 = t9.
    DATA t12 TYPE REF TO zif_lnt_union_daf022d4.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = CAST zif_lnt_union_4cf1d054( t8 ).
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
      DATA(t19) = CAST zif_lnt_union_4cf1d054( t8 ).
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
      DATA(t24) = CAST zif_lnt_union_bb14dc41( t1 ).
      t23 = t24->get_first_child( ).
      t22 ?= t23.
      t21 ?= t22.
      DATA(t25) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t21 i_input_967e = t25 ).
      RETURN.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t27) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
    t26 = t27->find_direct_expressions( i_type_9913 = t28 ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t29.
    DATA t30 TYPE REF TO object.
    CLEAR t30.
    LOOP AT t26->items INTO t30.
      t29 ?= t30.
      DATA t31 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t32.
      DATA(t33) = abap_true.
      IF t33 = abap_true.
        DATA(t34) = CAST zcl_lnt_expression_node( t29 ).
        t32 = t34.
      ELSE.
        DATA t35 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t35.
        t32 = t35.
      ENDIF.
      DATA(t36) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t37 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t40.
      t31 = zcl_lnt_sy_source=>run_syntax( i_node = t32 i_input_967e = t36 i_target_type = t37 i_write_reference = t38 i_allow_generic_deference = t39 i_read_reference = t40 ).
    ENDLOOP.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t42) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t43) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20 ).
    t41 = t42->find_direct_expressions( i_type_9913 = t43 ).
    DATA t44 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t44.
    DATA t45 TYPE REF TO object.
    CLEAR t45.
    LOOP AT t41->items INTO t45.
      t44 ?= t45.
      DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t48 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t49) = CAST zcl_lnt_expression_node( t44 ).
      t48 = t49.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t51) = CAST zcl_lnt_abstract_node( t48 ).
      t50 = t51->children.
      t47 = t50.
      t46 ?= t47.
      DATA t52 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t52.
      DATA t53 TYPE REF TO object.
      CLEAR t53.
      LOOP AT t46->items INTO t53.
        t52 ?= t53.
        DATA t54 TYPE abap_bool.
        DATA(t55) = CAST zif_lnt_union_4cf1d054( t52 ).
        t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_expression_node ).
        IF t54 = abap_true.
          DATA t56 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t56.
          DATA(t57) = abap_true.
          IF t57 = abap_true.
            DATA t58 TYPE REF TO zcl_lnt_abstract_token.
            DATA t59 TYPE REF TO zcl_lnt_expression_node.
            DATA(t60) = CAST zif_lnt_union_4cf1d054( t52 ).
            DATA t61 TYPE REF TO object.
            t61 = t60.
            t59 ?= t61.
            t58 = t59->get_first_token( ).
            t56 = t58.
          ELSE.
            DATA t62 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t62.
            t56 = t62.
          ENDIF.
          t5 = t56.
          EXIT.
        ENDIF.
      ENDLOOP.
      DATA t63 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t64) = CAST zcl_lnt_expression_node( t44 ).
      DATA(t65) = CAST zcl_lnt_syntax_input( t2 ).
      t63 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t64 i_input_967e = t65 ).
      t4 = t63.
    ENDLOOP.
    DATA t66 TYPE REF TO zcl_lnt_expression_node.
    DATA t67 TYPE REF TO zcl_lnt_expression_node.
    DATA(t68) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t69) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d279_5e96219eaf2c ).
    t67 = t68->find_direct_expression( i_type_9913 = t69 ).
    t66 = t67.
    DATA t70 TYPE abap_bool.
    DATA(t71) = CAST zcl_lnt_expression_node( t66 ).
    t70 = xsdbool( t71 IS BOUND ).
    IF t70 = abap_true.
      DATA t72 TYPE REF TO zcl_lnt_expression_node.
      DATA(t73) = CAST zcl_lnt_expression_node( t66 ).
      t72 = t73.
      DATA(t74) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_sql_in=>run_syntax( i_node = t72 i_input_967e = t74 ).
    ENDIF.
    DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t78.
    DATA t79 TYPE REF TO zcl_lnt_expression_node.
    DATA t80 TYPE REF TO zcl_lnt_expression_node.
    DATA(t81) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t82) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    t80 = t81->find_direct_expression( i_type_9913 = t82 ).
    t79 = t80.
    DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t83.
    DATA(t84) = VALUE abap_bool( ).
    DATA(t85) = CAST zcl_lnt_expression_node( t79 ).
    IF t85 IS INITIAL.
      t84 = abap_true.
    ENDIF.
    IF t84 = abap_true.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      t83 = t86.
    ELSE.
      DATA t87 TYPE string.
      DATA t88 TYPE REF TO zcl_lnt_expression_node.
      DATA(t89) = CAST zcl_lnt_expression_node( t79 ).
      t88 = t89.
      t87 = t88->concat_tokens( ).
      DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t90->has = abap_true.
      t90->value = t87.
      t83 = t90.
    ENDIF.
    t78 = t83.
    t77 = t78.
    DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t91.
    DATA(t92) = VALUE abap_bool( ).
    DATA(t93) = CAST zlnt_runtime_opti_4ba3bdccd169( t77 ).
    IF t93 IS INITIAL.
      t92 = abap_true.
    ELSEIF t93->has = abap_false.
      t92 = abap_true.
    ENDIF.
    IF t92 = abap_true.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t94.
      t91 = t94.
    ELSE.
      DATA t95 TYPE string.
      DATA t96 TYPE string.
      DATA(t97) = CAST zlnt_runtime_opti_4ba3bdccd169( t77 ).
      t96 = t97->value.
      DATA(t98) = strlen( t96 ).
      t95 = t96.
      IF t95 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t95 TO UPPER CASE.
      ELSE.
        t95 = zlnt_runtime_uppe_91169605024d=>full( t95 ).
      ENDIF.
      DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t99->has = abap_true.
      t99->value = t95.
      t91 = t99.
    ENDIF.
    t76 = t91.
    t75 = t76.
    DATA(t100) = VALUE abap_bool( ).
    DATA(t101) = VALUE abap_bool( ).
    DATA(t102) = VALUE abap_bool( ).
    DATA(t103) = CAST zlnt_runtime_opti_4ba3bdccd169( t75 ).
    IF t103 IS BOUND.
      IF t103->has = abap_true.
        t102 = xsdbool( strlen( t103->value ) > 0 ).
      ENDIF.
    ENDIF.
    t101 = t102.
    IF t102 = abap_true.
      DATA t104 TYPE abap_bool.
      DATA(t105) = CAST zcl_lnt_abstract_type( t4 ).
      t104 = xsdbool( t105 IS BOUND ).
      t101 = t104.
    ENDIF.
    t100 = t101.
    IF t101 = abap_true.
      DATA t106 TYPE abap_bool.
      DATA(t107) = CAST zcl_lnt_abstract_token( t5 ).
      t106 = xsdbool( t107 IS BOUND ).
      t100 = t106.
    ENDIF.
    IF t100 = abap_true.
      DATA t108 TYPE REF TO zcl_lnt_abstract_type.
      DATA t109 TYPE REF TO zcl_lnt_abstract_type.
      DATA t110 TYPE string.
      DATA(t111) = CAST zlnt_runtime_opti_4ba3bdccd169( t75 ).
      t110 = t111->value.
      DATA(t112) = CAST zlnt_runtime_arra_b72089862d0f( t3 ).
      DATA t113 TYPE REF TO zcl_lnt_current_scope.
      DATA(t114) = CAST zcl_lnt_syntax_input( t2 ).
      t113 = t114->scope.
      t109 = zcl_lnt_sy_sql_compare=>find_type( i_field_name = t110 i_tables_8d5a = t112 i_scope = t113 ).
      t108 = t109.
      DATA t115 TYPE string.
      DATA(t116) = ||.
      t115 = t116.
      DATA t117 TYPE abap_bool.
      DATA t118 TYPE abap_bool.
      DATA(t119) = CAST zcl_lnt_abstract_type( t4 ).
      t118 = xsdbool( t119 IS BOUND AND t119 IS INSTANCE OF zcl_lnt_integer_type ).
      t117 = t118.
      IF t118 = abap_true.
        DATA t120 TYPE abap_bool.
        DATA(t121) = CAST zcl_lnt_abstract_type( t108 ).
        t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_character_type ).
        t117 = t120.
      ENDIF.
      IF t117 = abap_true.
        DATA t122 TYPE string.
        DATA t123 TYPE string.
        DATA(t124) = ||.
        DATA t125 TYPE string.
        DATA(t126) = CAST zlnt_runtime_opti_4ba3bdccd169( t75 ).
        t125 = t126->value.
        DATA(t127) = strlen( t124 ).
        t123 = |{ t124 }{ t125 }|.
        DATA(t128) = |: Integer to CHAR conversion|.
        DATA(t129) = strlen( t123 ).
        t122 = |{ t123 }{ t128 }|.
        t115 = t122.
      ELSE.
        DATA t130 TYPE abap_bool.
        DATA t131 TYPE abap_bool.
        DATA(t132) = CAST zcl_lnt_abstract_type( t4 ).
        t131 = xsdbool( t132 IS BOUND AND t132 IS INSTANCE OF zcl_lnt_integer_type ).
        t130 = t131.
        IF t131 = abap_true.
          DATA t133 TYPE abap_bool.
          DATA(t134) = CAST zcl_lnt_abstract_type( t108 ).
          t133 = xsdbool( t134 IS BOUND AND t134 IS INSTANCE OF zcl_lnt_numeric_type ).
          t130 = t133.
        ENDIF.
        IF t130 = abap_true.
          DATA t135 TYPE string.
          DATA t136 TYPE string.
          DATA(t137) = ||.
          DATA t138 TYPE string.
          DATA(t139) = CAST zlnt_runtime_opti_4ba3bdccd169( t75 ).
          t138 = t139->value.
          DATA(t140) = strlen( t137 ).
          t136 = |{ t137 }{ t138 }|.
          DATA(t141) = |: Integer to NUMC conversion|.
          DATA(t142) = strlen( t136 ).
          t135 = |{ t136 }{ t141 }|.
          t115 = t135.
        ELSE.
          DATA t143 TYPE abap_bool.
          DATA t144 TYPE abap_bool.
          DATA(t145) = CAST zcl_lnt_abstract_type( t4 ).
          t144 = xsdbool( t145 IS BOUND AND t145 IS INSTANCE OF zcl_lnt_numeric_type ).
          t143 = t144.
          IF t144 = abap_true.
            DATA t146 TYPE abap_bool.
            DATA(t147) = CAST zcl_lnt_abstract_type( t108 ).
            t146 = xsdbool( t147 IS BOUND AND t147 IS INSTANCE OF zcl_lnt_integer_type ).
            t143 = t146.
          ENDIF.
          IF t143 = abap_true.
            DATA t148 TYPE string.
            DATA t149 TYPE string.
            DATA(t150) = ||.
            DATA t151 TYPE string.
            DATA(t152) = CAST zlnt_runtime_opti_4ba3bdccd169( t75 ).
            t151 = t152->value.
            DATA(t153) = strlen( t150 ).
            t149 = |{ t150 }{ t151 }|.
            DATA(t154) = |: NUMC to Integer conversion|.
            DATA(t155) = strlen( t149 ).
            t148 = |{ t149 }{ t154 }|.
            t115 = t148.
          ELSE.
            DATA t156 TYPE abap_bool.
            DATA t157 TYPE abap_bool.
            DATA(t158) = CAST zcl_lnt_abstract_type( t4 ).
            t157 = xsdbool( t158 IS BOUND AND t158 IS INSTANCE OF zcl_lnt_character_type ).
            t156 = t157.
            IF t157 = abap_true.
              DATA t159 TYPE abap_bool.
              DATA(t160) = CAST zcl_lnt_abstract_type( t108 ).
              t159 = xsdbool( t160 IS BOUND AND t160 IS INSTANCE OF zcl_lnt_integer_type ).
              t156 = t159.
            ENDIF.
            IF t156 = abap_true.
              DATA t161 TYPE string.
              DATA t162 TYPE string.
              DATA(t163) = ||.
              DATA t164 TYPE string.
              DATA(t165) = CAST zlnt_runtime_opti_4ba3bdccd169( t75 ).
              t164 = t165->value.
              DATA(t166) = strlen( t163 ).
              t162 = |{ t163 }{ t164 }|.
              DATA(t167) = |: CHAR to Integer conversion|.
              DATA(t168) = strlen( t162 ).
              t161 = |{ t162 }{ t167 }|.
              t115 = t161.
            ELSE.
              DATA(t169) = VALUE abap_bool( ).
              DATA t170 TYPE abap_bool.
              DATA t171 TYPE abap_bool.
              DATA(t172) = CAST zcl_lnt_abstract_type( t4 ).
              t171 = xsdbool( t172 IS BOUND AND t172 IS INSTANCE OF zcl_lnt_character_type ).
              t170 = t171.
              IF t171 = abap_true.
                DATA t173 TYPE abap_bool.
                DATA(t174) = CAST zcl_lnt_abstract_type( t108 ).
                t173 = xsdbool( t174 IS BOUND AND t174 IS INSTANCE OF zcl_lnt_character_type ).
                t170 = t173.
              ENDIF.
              t169 = t170.
              IF t170 = abap_true.
                DATA t175 TYPE abap_bool.
                DATA t176 TYPE int8.
                DATA t177 TYPE REF TO zcl_lnt_character_type.
                DATA t178 TYPE REF TO zcl_lnt_character_type.
                DATA(t179) = CAST zcl_lnt_abstract_type( t4 ).
                t178 ?= t179.
                t177 = t178.
                DATA t180 TYPE int8.
                DATA(t181) = CAST zcl_lnt_character_type( t177 ).
                t180 = t181->length.
                t176 = t180.
                DATA t182 TYPE int8.
                DATA t183 TYPE REF TO zcl_lnt_character_type.
                DATA t184 TYPE REF TO zcl_lnt_character_type.
                DATA(t185) = CAST zcl_lnt_abstract_type( t108 ).
                t184 ?= t185.
                t183 = t184.
                DATA t186 TYPE int8.
                DATA(t187) = CAST zcl_lnt_character_type( t183 ).
                t186 = t187->length.
                t182 = t186.
                t175 = xsdbool( t176 > t182 ).
                t169 = t175.
              ENDIF.
              IF t169 = abap_true.
                DATA t188 TYPE string.
                DATA t189 TYPE string.
                DATA(t190) = ||.
                DATA t191 TYPE string.
                DATA(t192) = CAST zlnt_runtime_opti_4ba3bdccd169( t75 ).
                t191 = t192->value.
                DATA(t193) = strlen( t190 ).
                t189 = |{ t190 }{ t191 }|.
                DATA(t194) = |: Source field longer than database field, CHAR -> CHAR|.
                DATA(t195) = strlen( t189 ).
                t188 = |{ t189 }{ t194 }|.
                t115 = t188.
              ELSE.
                DATA(t196) = VALUE abap_bool( ).
                DATA t197 TYPE abap_bool.
                DATA t198 TYPE abap_bool.
                DATA(t199) = CAST zcl_lnt_abstract_type( t4 ).
                t198 = xsdbool( t199 IS BOUND AND t199 IS INSTANCE OF zcl_lnt_numeric_type ).
                t197 = t198.
                IF t198 = abap_true.
                  DATA t200 TYPE abap_bool.
                  DATA(t201) = CAST zcl_lnt_abstract_type( t108 ).
                  t200 = xsdbool( t201 IS BOUND AND t201 IS INSTANCE OF zcl_lnt_numeric_type ).
                  t197 = t200.
                ENDIF.
                t196 = t197.
                IF t197 = abap_true.
                  DATA t202 TYPE abap_bool.
                  DATA t203 TYPE int8.
                  DATA t204 TYPE REF TO zcl_lnt_numeric_type.
                  DATA(t205) = CAST zcl_lnt_abstract_type( t4 ).
                  t204 ?= t205.
                  t203 = t204->get_length( ).
                  DATA t206 TYPE int8.
                  DATA t207 TYPE REF TO zcl_lnt_numeric_type.
                  DATA(t208) = CAST zcl_lnt_abstract_type( t108 ).
                  t207 ?= t208.
                  t206 = t207->get_length( ).
                  t202 = xsdbool( t203 > t206 ).
                  t196 = t202.
                ENDIF.
                IF t196 = abap_true.
                  DATA t209 TYPE string.
                  DATA t210 TYPE string.
                  DATA(t211) = ||.
                  DATA t212 TYPE string.
                  DATA(t213) = CAST zlnt_runtime_opti_4ba3bdccd169( t75 ).
                  t212 = t213->value.
                  DATA(t214) = strlen( t211 ).
                  t210 = |{ t211 }{ t212 }|.
                  DATA(t215) = |: Source field longer than database field, NUMC -> NUMC|.
                  DATA(t216) = strlen( t210 ).
                  t209 = |{ t210 }{ t215 }|.
                  t115 = t209.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t217 TYPE abap_bool.
      DATA(t218) = t115.
      DATA(t219) = ||.
      t217 = xsdbool( t218 <> t219 ).
      IF t217 = abap_true.
        DATA t220 TYPE REF TO zcl_lnt_current_scope.
        DATA(t221) = CAST zcl_lnt_syntax_input( t2 ).
        t220 = t221->scope.
        DATA t222 TYPE string.
        DATA(t223) = CAST zlnt_runtime_opti_4ba3bdccd169( t75 ).
        t222 = t223->value.
        DATA(t224) = t115.
        DATA t225 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t226) = CAST zcl_lnt_abstract_token( t5 ).
        t225 = t226.
        t220->add_sql_conversion( i_field_name = t222 i_message_26cb = t224 i_token = t225 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD find_type.
    DATA(t1) = i_field_name.
    DATA(t2) = CAST zlnt_runtime_arra_b72089862d0f( i_tables_8d5a ).
    DATA(t3) = CAST zcl_lnt_current_scope( i_scope ).
    DATA(t4) = CAST zlnt_runtime_arra_b72089862d0f( t2 ).
    DATA t5 TYPE REF TO zif_lnt_union_c74a232f.
    CLEAR t5.
    LOOP AT t4->items INTO t5.
      DATA t6 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t6.
      DATA t7 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t7.
      DATA t8 TYPE REF TO zif_lnt_union_c74a232f.
      DATA(t9) = CAST zif_lnt_union_c74a232f( t5 ).
      t8 = t9.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t10.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = CAST zif_lnt_union_c74a232f( t8 ).
      IF t12 IS INITIAL.
        t11 = abap_true.
      ENDIF.
      IF t11 = abap_true.
        DATA t13 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t13.
        t10 = t13.
      ELSE.
        DATA t14 TYPE REF TO zcl_lnt_abstract_type.
        DATA t15 TYPE REF TO zif_lnt_union_c74a232f.
        DATA(t16) = CAST zif_lnt_union_c74a232f( t8 ).
        t15 = t16.
        DATA t17 TYPE REF TO zif_lnt_registry.
        DATA t18 TYPE REF TO zcl_lnt_current_scope.
        DATA(t19) = CAST zcl_lnt_current_scope( t3 ).
        t18 = t19.
        DATA t20 TYPE REF TO zif_lnt_registry.
        DATA(t21) = CAST zcl_lnt_current_scope( t18 ).
        t20 = t21->reg.
        t17 = t20.
        t14 = t15->parse_type( i_reg_f149 = t17 ).
        t10 = t14.
      ENDIF.
      t7 = t10.
      t6 = t7.
      DATA t22 TYPE abap_bool.
      DATA(t23) = CAST zcl_lnt_abstract_type( t6 ).
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t22 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t24.
        DATA t25 TYPE REF TO zcl_lnt_structure_type.
        DATA t26 TYPE REF TO zcl_lnt_structure_type.
        DATA(t27) = CAST zcl_lnt_abstract_type( t6 ).
        t26 ?= t27.
        t25 = t26.
        DATA t28 TYPE string.
        DATA(t29) = t1.
        t28 = t29.
        DATA t30 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t30.
        DATA t31 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t32) = CAST zcl_lnt_structure_type( t25 ).
        t31 = t32->indexed.
        DATA t33 TYPE string.
        DATA(t34) = t28.
        DATA(t35) = strlen( t34 ).
        t33 = t34.
        IF t33 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t33 TO UPPER CASE.
        ELSE.
          t33 = zlnt_runtime_uppe_91169605024d=>full( t33 ).
        ENDIF.
        t30 = t31->get( p0 = t33 ).
        t24 = t30.
        result = t24.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t36 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t36.
    result = t36.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d813_25344fc234da.
  ENDMETHOD.
ENDCLASS.
