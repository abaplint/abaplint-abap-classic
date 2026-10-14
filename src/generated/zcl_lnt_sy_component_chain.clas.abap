* TS: src/abap/5_syntax/expressions/component_chain.ts:12:1 ComponentChain
CLASS zcl_lnt_sy_component_chain DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_context TYPE REF TO zcl_lnt_abstract_type i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_component_chain IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_context ).
    DATA(t2) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t3) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t6) = CAST zcl_lnt_abstract_type( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zcl_lnt_abstract_type( t5 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t16) = CAST zcl_lnt_expression_node( t2 ).
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t18) = CAST zcl_lnt_abstract_node( t15 ).
    t17 = t18->children.
    t14 = t17.
    t13 ?= t14.
    t12 = t13.
    DATA t19 TYPE i.
    DATA(t20) = 0.
    t19 = t20.
    DO.
      DATA t21 TYPE abap_bool.
      DATA(t22) = t19.
      DATA t23 TYPE i.
      DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
      t23 = lines( t24->items ).
      t21 = xsdbool( t22 < t23 ).
      IF t21 = abap_false.
        EXIT.
      ENDIF.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE abap_bool.
      DATA(t27) = CAST zcl_lnt_abstract_type( t1 ).
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_void_type ).
      t25 = t26.
      IF t26 = abap_false.
        DATA t28 TYPE abap_bool.
        DATA(t29) = CAST zcl_lnt_abstract_type( t1 ).
        t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_unknown_type ).
        t25 = t28.
      ENDIF.
      IF t25 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t30.
        DATA(t31) = abap_true.
        IF t31 = abap_true.
          DATA t32 TYPE REF TO zcl_lnt_abstract_type.
          DATA t33 TYPE REF TO zif_lnt_union_adffe656.
          DATA t34 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t35) = CAST zcl_lnt_abstract_type( t1 ).
          t34 = t35.
          t33 ?= t34.
          t32 ?= t33.
          t30 = t32.
        ELSE.
          DATA t36 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t36.
          t30 = t36.
        ENDIF.
        result = t30.
        RETURN.
      ENDIF.
      DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
      DATA(t40) = t19.
      t40 = t40 + 1.
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      READ TABLE t39->items INDEX t40 INTO t41.
      t38 ?= t41.
      t37 = t38.
      DATA t42 TYPE abap_bool.
      DATA t43 TYPE abap_bool.
      DATA(t44) = t19.
      DATA(t45) = 0.
      t43 = xsdbool( t44 = t45 ).
      t42 = t43.
      IF t43 = abap_true.
        DATA(t46) = VALUE abap_bool( ).
        DATA t47 TYPE string.
        DATA t48 TYPE string.
        DATA(t49) = CAST zif_lnt_union_4cf1d054( t37 ).
        t48 = t49->concat_tokens(  ).
        DATA(t50) = strlen( t48 ).
        t47 = t48.
        IF t47 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t47 TO UPPER CASE.
        ELSE.
          t47 = zlnt_runtime_uppe_91169605024d=>full( t47 ).
        ENDIF.
        DATA(t51) = |TABLE_LINE|.
        t46 = xsdbool( t47 = t51 ).
        t42 = t46.
      ENDIF.
      IF t42 = abap_true.
        DATA t52 TYPE i.
        DATA(t53) = t19.
        DATA(t54) = 1.
        t52 = t53 + t54.
        t19 = t52.
        CONTINUE.
      ELSE.
        DATA t55 TYPE abap_bool.
        DATA t56 TYPE REF TO object.
        DATA(t57) = CAST zif_lnt_union_4cf1d054( t37 ).
        t56 = t57->get_db65(  ).
        t55 = xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_st_dereference ).
        IF t55 = abap_true.
          DATA t58 TYPE abap_bool.
          DATA t59 TYPE abap_bool.
          DATA(t60) = CAST zcl_lnt_abstract_type( t1 ).
          t59 = xsdbool( t60 IS BOUND AND t60 IS INSTANCE OF zcl_lnt_data_reference ).
          t58 = xsdbool( t59 = abap_false ).
          IF t58 = abap_true.
            DATA t61 TYPE string.
            DATA(t62) = |Not a data reference, cannot be dereferenced|.
            t61 = t62.
            DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t64) = CAST zcl_lnt_syntax_input( t3 ).
            t63 = t64->issues.
            DATA t65 TYPE REF TO zcl_lnt_issue.
            DATA(t66) = CAST zcl_lnt_syntax_input( t3 ).
            DATA t67 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t68) = CAST zif_lnt_union_4cf1d054( t37 ).
            t67 = t68->get_first_token(  ).
            DATA(t69) = t61.
            DATA t70 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t70.
            t65 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t66 i_token = t67 i_message_26cb = t69 i_fix = t70 ).
            APPEND t65 TO t63->items.
            DATA t71 TYPE REF TO zcl_lnt_void_type.
            CLEAR t71.
            DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t72.
            DATA(t73) = abap_true.
            IF t73 = abap_true.
              DATA(t74) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t75->has = abap_true.
              t75->value = t74.
              t72 = t75.
            ELSE.
              DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t76.
              t72 = t76.
            ENDIF.
            DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t77.
            t71 = zcl_lnt_void_type=>get_db65( i_voided = t72 i_qualified_name = t77 ).
            result = t71.
            RETURN.
          ENDIF.
          DATA t78 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t78.
          DATA(t79) = abap_true.
          IF t79 = abap_true.
            DATA t80 TYPE REF TO zcl_lnt_abstract_type.
            DATA t81 TYPE REF TO zcl_lnt_data_reference.
            DATA t82 TYPE REF TO zcl_lnt_data_reference.
            DATA(t83) = CAST zcl_lnt_abstract_type( t1 ).
            t82 ?= t83.
            t81 = t82.
            DATA t84 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t85) = CAST zcl_lnt_data_reference( t81 ).
            t84 = t85->type_cba0.
            t80 = t84.
            t78 = t80.
          ELSE.
            DATA t86 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t86.
            t78 = t86.
          ENDIF.
          t1 = t78.
          DATA t87 TYPE i.
          DATA(t88) = t19.
          DATA(t89) = 1.
          t87 = t88 + t89.
          t19 = t87.
          CONTINUE.
        ELSE.
          DATA t90 TYPE abap_bool.
          DATA t91 TYPE REF TO object.
          DATA(t92) = CAST zif_lnt_union_4cf1d054( t37 ).
          t91 = t92->get_db65(  ).
          t90 = xsdbool( t91 IS BOUND AND t91 IS INSTANCE OF zcl_lnt_arrow_or_dash ).
          IF t90 = abap_true.
            DATA t93 TYPE string.
            DATA t94 TYPE string.
            DATA(t95) = CAST zif_lnt_union_4cf1d054( t37 ).
            t94 = t95->concat_tokens(  ).
            t93 = t94.
            DATA t96 TYPE abap_bool.
            DATA(t97) = t93.
            DATA(t98) = |-|.
            t96 = xsdbool( t97 = t98 ).
            IF t96 = abap_true.
              DATA t99 TYPE abap_bool.
              DATA t100 TYPE abap_bool.
              DATA(t101) = CAST zcl_lnt_abstract_type( t1 ).
              t100 = xsdbool( t101 IS BOUND AND t101 IS INSTANCE OF zcl_lnt_structure_type ).
              t99 = xsdbool( t100 = abap_false ).
              IF t99 = abap_true.
                DATA t102 TYPE string.
                DATA(t103) = |ComponentChain, not a structure|.
                t102 = t103.
                DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t105) = CAST zcl_lnt_syntax_input( t3 ).
                t104 = t105->issues.
                DATA t106 TYPE REF TO zcl_lnt_issue.
                DATA(t107) = CAST zcl_lnt_syntax_input( t3 ).
                DATA t108 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t109) = CAST zif_lnt_union_4cf1d054( t37 ).
                t108 = t109->get_first_token(  ).
                DATA(t110) = t102.
                DATA t111 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t111.
                t106 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t107 i_token = t108 i_message_26cb = t110 i_fix = t111 ).
                APPEND t106 TO t104->items.
                DATA t112 TYPE REF TO zcl_lnt_void_type.
                CLEAR t112.
                DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t113.
                DATA(t114) = abap_true.
                IF t114 = abap_true.
                  DATA(t115) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t116->has = abap_true.
                  t116->value = t115.
                  t113 = t116.
                ELSE.
                  DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t117.
                  t113 = t117.
                ENDIF.
                DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t118.
                t112 = zcl_lnt_void_type=>get_db65( i_voided = t113 i_qualified_name = t118 ).
                result = t112.
                RETURN.
              ENDIF.
            ELSE.
              DATA t119 TYPE abap_bool.
              DATA(t120) = t93.
              DATA(t121) = |=>|.
              t119 = xsdbool( t120 = t121 ).
              IF t119 = abap_true.
                DATA t122 TYPE abap_bool.
                DATA t123 TYPE abap_bool.
                DATA(t124) = CAST zcl_lnt_abstract_type( t1 ).
                t123 = xsdbool( t124 IS BOUND AND t124 IS INSTANCE OF zcl_lnt_object_reference_type ).
                t122 = xsdbool( t123 = abap_false ).
                IF t122 = abap_true.
                  DATA t125 TYPE string.
                  DATA(t126) = |ComponentChain, not a reference|.
                  t125 = t126.
                  DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t128) = CAST zcl_lnt_syntax_input( t3 ).
                  t127 = t128->issues.
                  DATA t129 TYPE REF TO zcl_lnt_issue.
                  DATA(t130) = CAST zcl_lnt_syntax_input( t3 ).
                  DATA t131 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t132) = CAST zif_lnt_union_4cf1d054( t37 ).
                  t131 = t132->get_first_token(  ).
                  DATA(t133) = t125.
                  DATA t134 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t134.
                  t129 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t130 i_token = t131 i_message_26cb = t133 i_fix = t134 ).
                  APPEND t129 TO t127->items.
                  DATA t135 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t135.
                  DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t136.
                  DATA(t137) = abap_true.
                  IF t137 = abap_true.
                    DATA(t138) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t139->has = abap_true.
                    t139->value = t138.
                    t136 = t139.
                  ELSE.
                    DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t140.
                    t136 = t140.
                  ENDIF.
                  DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t141.
                  t135 = zcl_lnt_void_type=>get_db65( i_voided = t136 i_qualified_name = t141 ).
                  result = t135.
                  RETURN.
                ENDIF.
              ELSE.
                DATA t142 TYPE abap_bool.
                DATA(t143) = t93.
                DATA(t144) = |->|.
                t142 = xsdbool( t143 = t144 ).
                IF t142 = abap_true.
                  DATA t145 TYPE abap_bool.
                  DATA t146 TYPE abap_bool.
                  DATA t147 TYPE abap_bool.
                  DATA(t148) = CAST zcl_lnt_abstract_type( t1 ).
                  t147 = xsdbool( t148 IS BOUND AND t148 IS INSTANCE OF zcl_lnt_object_reference_type ).
                  t146 = xsdbool( t147 = abap_false ).
                  t145 = t146.
                  IF t146 = abap_true.
                    DATA t149 TYPE abap_bool.
                    DATA t150 TYPE abap_bool.
                    DATA(t151) = CAST zcl_lnt_abstract_type( t1 ).
                    t150 = xsdbool( t151 IS BOUND AND t151 IS INSTANCE OF zcl_lnt_data_reference ).
                    t149 = xsdbool( t150 = abap_false ).
                    t145 = t149.
                  ENDIF.
                  IF t145 = abap_true.
                    DATA t152 TYPE string.
                    DATA(t153) = |ComponentChain, not a reference|.
                    t152 = t153.
                    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t155) = CAST zcl_lnt_syntax_input( t3 ).
                    t154 = t155->issues.
                    DATA t156 TYPE REF TO zcl_lnt_issue.
                    DATA(t157) = CAST zcl_lnt_syntax_input( t3 ).
                    DATA t158 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t159) = CAST zif_lnt_union_4cf1d054( t37 ).
                    t158 = t159->get_first_token(  ).
                    DATA(t160) = t152.
                    DATA t161 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t161.
                    t156 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t157 i_token = t158 i_message_26cb = t160 i_fix = t161 ).
                    APPEND t156 TO t154->items.
                    DATA t162 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t162.
                    DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t163.
                    DATA(t164) = abap_true.
                    IF t164 = abap_true.
                      DATA(t165) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                      DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t166->has = abap_true.
                      t166->value = t165.
                      t163 = t166.
                    ELSE.
                      DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t167.
                      t163 = t167.
                    ENDIF.
                    DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t168.
                    t162 = zcl_lnt_void_type=>get_db65( i_voided = t163 i_qualified_name = t168 ).
                    result = t162.
                    RETURN.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ELSE.
            DATA t169 TYPE abap_bool.
            DATA t170 TYPE REF TO object.
            DATA(t171) = CAST zif_lnt_union_4cf1d054( t37 ).
            t170 = t171->get_db65(  ).
            t169 = xsdbool( t170 IS BOUND AND t170 IS INSTANCE OF zcl_lnt_st_component_name ).
            IF t169 = abap_true.
              DATA t172 TYPE string.
              DATA t173 TYPE string.
              DATA(t174) = CAST zif_lnt_union_4cf1d054( t37 ).
              t173 = t174->concat_tokens(  ).
              t172 = t173.
              DATA t175 TYPE abap_bool.
              DATA(t176) = CAST zcl_lnt_abstract_type( t1 ).
              t175 = xsdbool( t176 IS BOUND AND t176 IS INSTANCE OF zcl_lnt_data_reference ).
              IF t175 = abap_true.
                DATA t177 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t177.
                DATA(t178) = abap_true.
                IF t178 = abap_true.
                  DATA t179 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t180 TYPE REF TO zcl_lnt_data_reference.
                  DATA t181 TYPE REF TO zcl_lnt_data_reference.
                  DATA(t182) = CAST zcl_lnt_abstract_type( t1 ).
                  t181 ?= t182.
                  t180 = t181.
                  DATA t183 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t184) = CAST zcl_lnt_data_reference( t180 ).
                  t183 = t184->type_cba0.
                  t179 = t183.
                  t177 = t179.
                ELSE.
                  DATA t185 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t185.
                  t177 = t185.
                ENDIF.
                t1 = t177.
                DATA t186 TYPE abap_bool.
                DATA(t187) = t172.
                DATA(t188) = |*|.
                t186 = xsdbool( t187 = t188 ).
                IF t186 = abap_true.
                  DATA t189 TYPE i.
                  DATA(t190) = t19.
                  DATA(t191) = 1.
                  t189 = t190 + t191.
                  t19 = t189.
                  CONTINUE.
                ENDIF.
              ENDIF.
              DATA t192 TYPE abap_bool.
              DATA(t193) = CAST zcl_lnt_abstract_type( t1 ).
              t192 = xsdbool( t193 IS BOUND AND t193 IS INSTANCE OF zcl_lnt_structure_type ).
              IF t192 = abap_true.
                DATA t194 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t194.
                DATA t195 TYPE REF TO zcl_lnt_structure_type.
                DATA t196 TYPE REF TO zcl_lnt_structure_type.
                DATA(t197) = CAST zcl_lnt_abstract_type( t1 ).
                t196 ?= t197.
                t195 = t196.
                DATA t198 TYPE string.
                DATA(t199) = t172.
                t198 = t199.
                DATA t200 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t200.
                DATA t201 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
                DATA(t202) = CAST zcl_lnt_structure_type( t195 ).
                t201 = t202->indexed.
                DATA t203 TYPE string.
                DATA(t204) = t198.
                DATA(t205) = strlen( t204 ).
                t203 = t204.
                IF t203 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t203 TO UPPER CASE.
                ELSE.
                  t203 = zlnt_runtime_uppe_91169605024d=>full( t203 ).
                ENDIF.
                t200 = t201->get( p0 = t203 ).
                t194 = t200.
                t1 = t194.
                DATA(t206) = VALUE abap_bool( ).
                DATA t207 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t208) = CAST zcl_lnt_abstract_type( t1 ).
                t207 = t208.
                DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t210.
                t209 = t210.
                DATA(t211) = VALUE abap_bool( ).
                DATA(t212) = CAST zcl_lnt_abstract_type( t207 ).
                IF t212 IS INITIAL.
                  t211 = abap_true.
                ENDIF.
                t206 = t211.
                IF t206 = abap_true.
                  DATA t213 TYPE string.
                  DATA t214 TYPE string.
                  DATA t215 TYPE string.
                  DATA(t216) = |Component "|.
                  DATA(t217) = t172.
                  DATA(t218) = strlen( t216 ).
                  t215 = |{ t216 }{ t217 }|.
                  DATA(t219) = |" not found in structure|.
                  DATA(t220) = strlen( t215 ).
                  t214 = |{ t215 }{ t219 }|.
                  t213 = t214.
                  DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t222) = CAST zcl_lnt_syntax_input( t3 ).
                  t221 = t222->issues.
                  DATA t223 TYPE REF TO zcl_lnt_issue.
                  DATA(t224) = CAST zcl_lnt_syntax_input( t3 ).
                  DATA t225 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t226) = CAST zif_lnt_union_4cf1d054( t37 ).
                  t225 = t226->get_first_token(  ).
                  DATA(t227) = t213.
                  DATA t228 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t228.
                  t223 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t224 i_token = t225 i_message_26cb = t227 i_fix = t228 ).
                  APPEND t223 TO t221->items.
                  DATA t229 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t229.
                  DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t230.
                  DATA(t231) = abap_true.
                  IF t231 = abap_true.
                    DATA(t232) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t233->has = abap_true.
                    t233->value = t232.
                    t230 = t233.
                  ELSE.
                    DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t234.
                    t230 = t234.
                  ENDIF.
                  DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t235.
                  t229 = zcl_lnt_void_type=>get_db65( i_voided = t230 i_qualified_name = t235 ).
                  result = t229.
                  RETURN.
                ENDIF.
              ELSE.
                DATA t236 TYPE abap_bool.
                DATA(t237) = CAST zcl_lnt_abstract_type( t1 ).
                t236 = xsdbool( t237 IS BOUND AND t237 IS INSTANCE OF zcl_lnt_object_reference_type ).
                IF t236 = abap_true.
                  DATA t238 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA t239 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA t240 TYPE REF TO zcl_lnt_object_reference_type.
                  DATA t241 TYPE REF TO zcl_lnt_object_reference_type.
                  DATA(t242) = CAST zcl_lnt_abstract_type( t1 ).
                  t241 ?= t242.
                  t240 = t241.
                  DATA t243 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA(t244) = CAST zcl_lnt_object_reference_type( t240 ).
                  t243 = t244->identifier.
                  t239 = t243.
                  t238 = t239.
                  DATA t245 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t245.
                  DATA t246 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t246.
                  DATA t247 TYPE REF TO zcl_lnt_current_scope.
                  DATA t248 TYPE REF TO zcl_lnt_current_scope.
                  DATA(t249) = CAST zcl_lnt_syntax_input( t3 ).
                  t248 = t249->scope.
                  t247 = t248.
                  DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t250.
                  DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t251.
                  DATA(t252) = abap_true.
                  IF t252 = abap_true.
                    DATA(t253) = VALUE string( ).
                    DATA t254 TYPE REF TO zcl_lnt_fi_identifier.
                    DATA(t255) = CAST zcl_lnt_fi_identifier( t238 ).
                    t254 = t255.
                    DATA(t256) = VALUE string( ).
                    DATA t257 TYPE string.
                    DATA t258 TYPE string.
                    DATA t259 TYPE REF TO zcl_lnt_abstract_token.
                    DATA t260 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t261) = CAST zcl_lnt_fi_identifier( t254 ).
                    t260 = t261->token.
                    t259 = t260.
                    DATA t262 TYPE string.
                    DATA(t263) = CAST zcl_lnt_abstract_token( t259 ).
                    t262 = t263->str.
                    t258 = t262.
                    t257 = t258.
                    DATA(t264) = VALUE abap_bool( ).
                    DATA(t265) = VALUE string( ).
                    DATA(t266) = t257.
                    DATA(t267) = 0.
                    DATA(t268) = 1.
                    DATA(t269) = strlen( t266 ).
                    IF t267 < 0.
                      t267 = t267 + t269.
                      IF t267 < 0.
                        t267 = 0.
                      ENDIF.
                    ENDIF.
                    IF t267 > t269 OR t268 <= 0.
                      CLEAR t265.
                    ELSE.
                      IF t268 > t269 - t267.
                        t268 = t269 - t267.
                      ENDIF.
                      t265 = t266+t267(t268).
                    ENDIF.
                    DATA(t270) = |!|.
                    t264 = xsdbool( t265 = t270 ).
                    IF t264 = abap_true.
                      DATA(t271) = VALUE string( ).
                      DATA t272 TYPE string.
                      DATA(t273) = t257.
                      t272 = t273.
                      DATA(t274) = VALUE string( ).
                      DATA(t275) = t272.
                      DATA(t276) = 1.
                      DATA t277 TYPE i.
                      DATA(t278) = t272.
                      DATA(t279) = strlen( t278 ).
                      t277 = t279.
                      DATA(t280) = strlen( t275 ).
                      IF t276 < 0.
                        t276 = t276 + t280.
                        IF t276 < 0.
                          t276 = 0.
                        ENDIF.
                      ENDIF.
                      IF t276 > t280 OR t277 <= 0.
                        CLEAR t274.
                      ELSE.
                        IF t277 > t280 - t276.
                          t277 = t280 - t276.
                        ENDIF.
                        t274 = t275+t276(t277).
                      ENDIF.
                      t271 = t274.
                      t257 = t271.
                    ENDIF.
                    DATA(t281) = t257.
                    t256 = t281.
                    t253 = t256.
                    DATA(t282) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t282->has = abap_true.
                    t282->value = t253.
                    t251 = t282.
                  ELSE.
                    DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t283.
                    t251 = t283.
                  ENDIF.
                  t250 = t251.
                  DATA t284 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t284.
                  DATA(t285) = VALUE abap_bool( ).
                  DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t287) = CAST zlnt_runtime_opti_4ba3bdccd169( t250 ).
                  t286 = t287.
                  DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t289.
                  t288 = t289.
                  DATA(t290) = VALUE abap_bool( ).
                  DATA(t291) = CAST zlnt_runtime_opti_4ba3bdccd169( t286 ).
                  IF t291 IS INITIAL.
                    t290 = abap_true.
                  ELSEIF t291->has = abap_false.
                    t290 = abap_true.
                  ENDIF.
                  t285 = t290.
                  IF t285 = abap_true.
                    DATA t292 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t292.
                    t284 = t292.
                  ELSE.
                    DATA t293 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t293.
                    DATA t294 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t294.
                    DATA t295 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t295.
                    DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t296.
                    DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t297.
                    DATA(t298) = abap_true.
                    IF t298 = abap_true.
                      DATA t299 TYPE string.
                      DATA(t300) = CAST zlnt_runtime_opti_4ba3bdccd169( t250 ).
                      t299 = t300->value.
                      DATA(t301) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t301->has = abap_true.
                      t301->value = t299.
                      t297 = t301.
                    ELSE.
                      DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t302.
                      t297 = t302.
                    ENDIF.
                    t296 = t297.
                    DATA t303 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t303.
                    DATA(t304) = VALUE abap_bool( ).
                    DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t306) = CAST zlnt_runtime_opti_4ba3bdccd169( t296 ).
                    t305 = t306.
                    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t308.
                    t307 = t308.
                    DATA(t309) = VALUE abap_bool( ).
                    DATA(t310) = CAST zlnt_runtime_opti_4ba3bdccd169( t305 ).
                    IF t310 IS INITIAL.
                      t309 = abap_true.
                    ELSEIF t310->has = abap_false.
                      t309 = abap_true.
                    ENDIF.
                    t304 = t309.
                    IF t304 = abap_true.
                      DATA t311 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t311.
                      t303 = t311.
                    ELSE.
                      DATA t312 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t312.
                      DATA t313 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t313.
                      DATA t314 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t314.
                      DATA t315 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      DATA t316 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      DATA(t317) = CAST zcl_lnt_current_scope( t247 ).
                      t316 = t317->current.
                      t315 = t316.
                      DATA t318 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t318.
                      DATA(t319) = VALUE abap_bool( ).
                      DATA(t320) = CAST zcl_lnt_spaghetti_scope_node( t315 ).
                      IF t320 IS INITIAL.
                        t319 = abap_true.
                      ENDIF.
                      IF t319 = abap_true.
                        DATA t321 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t321.
                        t318 = t321.
                      ELSE.
                        DATA t322 TYPE REF TO zif_lnt_class_definition.
                        DATA t323 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        DATA(t324) = CAST zcl_lnt_spaghetti_scope_node( t315 ).
                        t323 = t324.
                        DATA t325 TYPE string.
                        DATA(t326) = CAST zlnt_runtime_opti_4ba3bdccd169( t296 ).
                        t325 = t326->value.
                        t322 = t323->find_class_definition( i_name = t325 ).
                        t318 = t322.
                      ENDIF.
                      t314 = t318.
                      t313 = t314.
                      DATA t327 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t327.
                      DATA t328 TYPE abap_bool.
                      DATA(t329) = CAST zif_lnt_class_definition( t313 ).
                      t328 = xsdbool( t329 IS BOUND ).
                      IF t328 = abap_true.
                        DATA t330 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t330.
                        DATA(t331) = abap_true.
                        IF t331 = abap_true.
                          DATA t332 TYPE REF TO zif_lnt_class_definition.
                          DATA(t333) = CAST zif_lnt_class_definition( t313 ).
                          t332 = t333.
                          t330 = t332.
                        ELSE.
                          DATA t334 TYPE REF TO zif_lnt_class_definition.
                          CLEAR t334.
                          t330 = t334.
                        ENDIF.
                        t327 = t330.
                      ELSE.
                        DATA t335 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t335.
                        DATA t336 TYPE REF TO zcl_lnt_class.
                        CLEAR t336.
                        DATA t337 TYPE REF TO zcl_lnt_class.
                        CLEAR t337.
                        DATA t338 TYPE REF TO zif_lnt_object.
                        CLEAR t338.
                        DATA t339 TYPE REF TO zif_lnt_registry.
                        DATA(t340) = CAST zcl_lnt_current_scope( t247 ).
                        t339 = t340->reg.
                        DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t341.
                        DATA(t342) = abap_true.
                        IF t342 = abap_true.
                          DATA(t343) = |CLAS|.
                          DATA(t344) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t344->has = abap_true.
                          t344->value = t343.
                          t341 = t344.
                        ELSE.
                          DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t345.
                          t341 = t345.
                        ENDIF.
                        DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t346.
                        DATA(t347) = abap_true.
                        IF t347 = abap_true.
                          DATA t348 TYPE string.
                          DATA(t349) = CAST zlnt_runtime_opti_4ba3bdccd169( t296 ).
                          t348 = t349->value.
                          DATA(t350) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t350->has = abap_true.
                          t350->value = t348.
                          t346 = t350.
                        ELSE.
                          DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t351.
                          t346 = t351.
                        ENDIF.
                        t338 = t339->get_object( i_type_9913 = t341 i_name = t346 ).
                        DATA t352 TYPE REF TO object.
                        t352 = t338.
                        t337 ?= t352.
                        t336 = t337.
                        DATA t353 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t353.
                        DATA t354 TYPE abap_bool.
                        DATA(t355) = CAST zcl_lnt_class( t336 ).
                        t354 = xsdbool( t355 IS BOUND ).
                        IF t354 = abap_true.
                          DATA t356 TYPE REF TO zif_lnt_class_definition.
                          DATA t357 TYPE REF TO zcl_lnt_class.
                          DATA(t358) = CAST zcl_lnt_class( t336 ).
                          t357 = t358.
                          t356 = t357->gt_dfn_ins_src_obj_cls_ts_clss(  ).
                          t353 = t356.
                        ELSE.
                          DATA t359 TYPE REF TO zif_lnt_class_definition.
                          CLEAR t359.
                          t353 = t359.
                        ENDIF.
                        t335 = t353.
                        t327 = t335.
                      ENDIF.
                      t312 = t327.
                      t303 = t312.
                    ENDIF.
                    t295 = t303.
                    t294 = t295.
                    DATA t360 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t360.
                    DATA t361 TYPE abap_bool.
                    DATA(t362) = CAST zif_lnt_class_definition( t294 ).
                    t361 = xsdbool( t362 IS BOUND ).
                    IF t361 = abap_true.
                      DATA t363 TYPE REF TO zif_lnt_interface_definition.
                      DATA t364 TYPE REF TO zif_lnt_class_definition.
                      DATA(t365) = CAST zif_lnt_class_definition( t294 ).
                      t364 = t365.
                      t363 ?= t364.
                      t360 = t363.
                    ELSE.
                      DATA t366 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t366.
                      DATA t367 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t367.
                      DATA t368 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t368.
                      DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t369.
                      DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t370.
                      DATA(t371) = abap_true.
                      IF t371 = abap_true.
                        DATA t372 TYPE string.
                        DATA(t373) = CAST zlnt_runtime_opti_4ba3bdccd169( t250 ).
                        t372 = t373->value.
                        DATA(t374) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t374->has = abap_true.
                        t374->value = t372.
                        t370 = t374.
                      ELSE.
                        DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t375.
                        t370 = t375.
                      ENDIF.
                      t369 = t370.
                      DATA t376 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t376.
                      DATA(t377) = VALUE abap_bool( ).
                      DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t379) = CAST zlnt_runtime_opti_4ba3bdccd169( t369 ).
                      t378 = t379.
                      DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t381.
                      t380 = t381.
                      DATA(t382) = VALUE abap_bool( ).
                      DATA(t383) = CAST zlnt_runtime_opti_4ba3bdccd169( t378 ).
                      IF t383 IS INITIAL.
                        t382 = abap_true.
                      ELSEIF t383->has = abap_false.
                        t382 = abap_true.
                      ENDIF.
                      t377 = t382.
                      IF t377 = abap_true.
                        DATA t384 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t384.
                        t376 = t384.
                      ELSE.
                        DATA t385 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t385.
                        DATA t386 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t386.
                        DATA t387 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t387.
                        DATA t388 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        DATA t389 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        DATA(t390) = CAST zcl_lnt_current_scope( t247 ).
                        t389 = t390->current.
                        t388 = t389.
                        DATA t391 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t391.
                        DATA(t392) = VALUE abap_bool( ).
                        DATA(t393) = CAST zcl_lnt_spaghetti_scope_node( t388 ).
                        IF t393 IS INITIAL.
                          t392 = abap_true.
                        ENDIF.
                        IF t392 = abap_true.
                          DATA t394 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t394.
                          t391 = t394.
                        ELSE.
                          DATA t395 TYPE REF TO zif_lnt_interface_definition.
                          DATA t396 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                          DATA(t397) = CAST zcl_lnt_spaghetti_scope_node( t388 ).
                          t396 = t397.
                          DATA t398 TYPE string.
                          DATA(t399) = CAST zlnt_runtime_opti_4ba3bdccd169( t369 ).
                          t398 = t399->value.
                          t395 = t396->find_interface_definition( i_name = t398 ).
                          t391 = t395.
                        ENDIF.
                        t387 = t391.
                        t386 = t387.
                        DATA t400 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t400.
                        DATA t401 TYPE abap_bool.
                        DATA(t402) = CAST zif_lnt_interface_definition( t386 ).
                        t401 = xsdbool( t402 IS BOUND ).
                        IF t401 = abap_true.
                          DATA t403 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t403.
                          DATA(t404) = abap_true.
                          IF t404 = abap_true.
                            DATA t405 TYPE REF TO zif_lnt_interface_definition.
                            DATA(t406) = CAST zif_lnt_interface_definition( t386 ).
                            t405 = t406.
                            t403 = t405.
                          ELSE.
                            DATA t407 TYPE REF TO zif_lnt_interface_definition.
                            CLEAR t407.
                            t403 = t407.
                          ENDIF.
                          t400 = t403.
                        ELSE.
                          DATA t408 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t408.
                          DATA t409 TYPE REF TO zcl_lnt_ob_interface.
                          CLEAR t409.
                          DATA t410 TYPE REF TO zcl_lnt_ob_interface.
                          CLEAR t410.
                          DATA t411 TYPE REF TO zif_lnt_object.
                          CLEAR t411.
                          DATA t412 TYPE REF TO zif_lnt_registry.
                          DATA(t413) = CAST zcl_lnt_current_scope( t247 ).
                          t412 = t413->reg.
                          DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t414.
                          DATA(t415) = abap_true.
                          IF t415 = abap_true.
                            DATA(t416) = |INTF|.
                            DATA(t417) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t417->has = abap_true.
                            t417->value = t416.
                            t414 = t417.
                          ELSE.
                            DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t418.
                            t414 = t418.
                          ENDIF.
                          DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t419.
                          DATA(t420) = abap_true.
                          IF t420 = abap_true.
                            DATA t421 TYPE string.
                            DATA(t422) = CAST zlnt_runtime_opti_4ba3bdccd169( t369 ).
                            t421 = t422->value.
                            DATA(t423) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t423->has = abap_true.
                            t423->value = t421.
                            t419 = t423.
                          ELSE.
                            DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t424.
                            t419 = t424.
                          ENDIF.
                          t411 = t412->get_object( i_type_9913 = t414 i_name = t419 ).
                          DATA t425 TYPE REF TO object.
                          t425 = t411.
                          t410 ?= t425.
                          t409 = t410.
                          DATA t426 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t426.
                          DATA t427 TYPE abap_bool.
                          DATA(t428) = CAST zcl_lnt_ob_interface( t409 ).
                          t427 = xsdbool( t428 IS BOUND ).
                          IF t427 = abap_true.
                            DATA t429 TYPE REF TO zif_lnt_interface_definition.
                            DATA t430 TYPE REF TO zcl_lnt_ob_interface.
                            DATA t431 TYPE REF TO zcl_lnt_ob_interface.
                            DATA(t432) = CAST zcl_lnt_ob_interface( t409 ).
                            t431 = t432.
                            t430 = t431.
                            DATA t433 TYPE REF TO zif_lnt_interface_definition.
                            DATA(t434) = CAST zcl_lnt_ob_interface( t430 ).
                            t433 = t434->def.
                            t429 = t433.
                            t426 = t429.
                          ELSE.
                            DATA t435 TYPE REF TO zif_lnt_interface_definition.
                            CLEAR t435.
                            t426 = t435.
                          ENDIF.
                          t408 = t426.
                          t400 = t408.
                        ENDIF.
                        t385 = t400.
                        t376 = t385.
                      ENDIF.
                      t368 = t376.
                      t367 = t368.
                      DATA t436 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t436.
                      DATA t437 TYPE abap_bool.
                      DATA(t438) = CAST zif_lnt_interface_definition( t367 ).
                      t437 = xsdbool( t438 IS BOUND ).
                      IF t437 = abap_true.
                        DATA t439 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t439.
                        DATA(t440) = abap_true.
                        IF t440 = abap_true.
                          DATA t441 TYPE REF TO zif_lnt_interface_definition.
                          DATA(t442) = CAST zif_lnt_interface_definition( t367 ).
                          t441 = t442.
                          t439 = t441.
                        ELSE.
                          DATA t443 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t443.
                          t439 = t443.
                        ENDIF.
                        t436 = t439.
                      ELSE.
                        DATA t444 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t444.
                        t436 = t444.
                      ENDIF.
                      t366 = t436.
                      t360 = t366.
                    ENDIF.
                    t293 = t360.
                    t284 = t293.
                  ENDIF.
                  t246 = t284.
                  t245 = t246.
                  DATA(t445) = VALUE abap_bool( ).
                  DATA t446 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t447) = CAST zif_lnt_interface_definition( t245 ).
                  t446 = t447.
                  DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t449.
                  t448 = t449.
                  DATA(t450) = VALUE abap_bool( ).
                  DATA(t451) = CAST zif_lnt_interface_definition( t446 ).
                  IF t451 IS INITIAL.
                    t450 = abap_true.
                  ENDIF.
                  t445 = t450.
                  IF t445 = abap_true.
                    DATA(t452) = VALUE string( ).
                    DATA(t453) = VALUE string( ).
                    DATA(t454) = VALUE string( ).
                    DATA t455 TYPE REF TO zcl_lnt_fi_identifier.
                    DATA(t456) = CAST zcl_lnt_fi_identifier( t238 ).
                    t455 = t456.
                    DATA(t457) = VALUE string( ).
                    DATA t458 TYPE string.
                    DATA t459 TYPE string.
                    DATA t460 TYPE REF TO zcl_lnt_abstract_token.
                    DATA t461 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t462) = CAST zcl_lnt_fi_identifier( t455 ).
                    t461 = t462->token.
                    t460 = t461.
                    DATA t463 TYPE string.
                    DATA(t464) = CAST zcl_lnt_abstract_token( t460 ).
                    t463 = t464->str.
                    t459 = t463.
                    t458 = t459.
                    DATA(t465) = VALUE abap_bool( ).
                    DATA(t466) = VALUE string( ).
                    DATA(t467) = t458.
                    DATA(t468) = 0.
                    DATA(t469) = 1.
                    DATA(t470) = strlen( t467 ).
                    IF t468 < 0.
                      t468 = t468 + t470.
                      IF t468 < 0.
                        t468 = 0.
                      ENDIF.
                    ENDIF.
                    IF t468 > t470 OR t469 <= 0.
                      CLEAR t466.
                    ELSE.
                      IF t469 > t470 - t468.
                        t469 = t470 - t468.
                      ENDIF.
                      t466 = t467+t468(t469).
                    ENDIF.
                    DATA(t471) = |!|.
                    t465 = xsdbool( t466 = t471 ).
                    IF t465 = abap_true.
                      DATA(t472) = VALUE string( ).
                      DATA t473 TYPE string.
                      DATA(t474) = t458.
                      t473 = t474.
                      DATA(t475) = VALUE string( ).
                      DATA(t476) = t473.
                      DATA(t477) = 1.
                      DATA t478 TYPE i.
                      DATA(t479) = t473.
                      DATA(t480) = strlen( t479 ).
                      t478 = t480.
                      DATA(t481) = strlen( t476 ).
                      IF t477 < 0.
                        t477 = t477 + t481.
                        IF t477 < 0.
                          t477 = 0.
                        ENDIF.
                      ENDIF.
                      IF t477 > t481 OR t478 <= 0.
                        CLEAR t475.
                      ELSE.
                        IF t478 > t481 - t477.
                          t478 = t481 - t477.
                        ENDIF.
                        t475 = t476+t477(t478).
                      ENDIF.
                      t472 = t475.
                      t458 = t472.
                    ENDIF.
                    DATA(t482) = t458.
                    t457 = t482.
                    t454 = t457.
                    DATA(t483) = | not found in scope|.
                    DATA(t484) = strlen( t454 ).
                    t453 = |{ t454 }{ t483 }|.
                    t452 = t453.
                    DATA t485 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t486) = CAST zcl_lnt_syntax_input( t3 ).
                    t485 = t486->issues.
                    DATA t487 TYPE REF TO zcl_lnt_issue.
                    DATA(t488) = CAST zcl_lnt_syntax_input( t3 ).
                    DATA t489 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t490) = CAST zif_lnt_union_4cf1d054( t37 ).
                    t489 = t490->get_first_token(  ).
                    DATA(t491) = t452.
                    DATA t492 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t492.
                    t487 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t488 i_token = t489 i_message_26cb = t491 i_fix = t492 ).
                    APPEND t487 TO t485->items.
                    DATA t493 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t493.
                    DATA t494 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t494.
                    DATA(t495) = abap_true.
                    IF t495 = abap_true.
                      DATA(t496) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                      DATA(t497) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t497->has = abap_true.
                      t497->value = t496.
                      t494 = t497.
                    ELSE.
                      DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t498.
                      t494 = t498.
                    ENDIF.
                    DATA t499 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t499.
                    t493 = zcl_lnt_void_type=>get_db65( i_voided = t494 i_qualified_name = t499 ).
                    result = t493.
                    RETURN.
                  ENDIF.
                  DATA t500 TYPE REF TO zcl_lnt_object_oriented.
                  DATA t501 TYPE REF TO zcl_lnt_object_oriented.
                  DATA t502 TYPE REF TO zcl_lnt_current_scope.
                  DATA(t503) = CAST zcl_lnt_syntax_input( t3 ).
                  t502 = t503->scope.
                  t501 = NEW zcl_lnt_object_oriented( i_scope = t502 ).
                  t500 = t501.
                  DATA t504 TYPE REF TO zcl_lnt_class_attribute.
                  CLEAR t504.
                  DATA t505 TYPE REF TO zcl_lnt_class_attribute.
                  CLEAR t505.
                  DATA(t506) = CAST zcl_lnt_object_oriented( t500 ).
                  DATA t507 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t507.
                  DATA(t508) = abap_true.
                  IF t508 = abap_true.
                    DATA t509 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t510) = CAST zif_lnt_interface_definition( t245 ).
                    t509 = t510.
                    t507 = t509.
                  ELSE.
                    DATA t511 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t511.
                    t507 = t511.
                  ENDIF.
                  DATA t512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t512.
                  DATA(t513) = abap_true.
                  IF t513 = abap_true.
                    DATA(t514) = t172.
                    DATA(t515) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t515->has = abap_true.
                    t515->value = t514.
                    t512 = t515.
                  ELSE.
                    DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t516.
                    t512 = t516.
                  ENDIF.
                  t505 = t506->search_attribute_name( i_def = t507 i_name = t512 ).
                  t504 = t505.
                  DATA t517 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t517.
                  DATA t518 TYPE REF TO zcl_lnt_class_attribute.
                  DATA(t519) = CAST zcl_lnt_class_attribute( t504 ).
                  t518 = t519.
                  DATA t520 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t520.
                  DATA(t521) = VALUE abap_bool( ).
                  DATA(t522) = CAST zcl_lnt_class_attribute( t518 ).
                  IF t522 IS INITIAL.
                    t521 = abap_true.
                  ENDIF.
                  IF t521 = abap_true.
                    DATA t523 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t523.
                    t520 = t523.
                  ELSE.
                    DATA t524 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t525 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA t526 TYPE REF TO zcl_lnt_class_attribute.
                    DATA(t527) = CAST zcl_lnt_class_attribute( t518 ).
                    t526 = t527.
                    t525 = t526.
                    DATA t528 TYPE REF TO zcl_lnt_abstract_type.
                    DATA(t529) = CAST zcl_lnt_typed_identifier( t525 ).
                    t528 = t529->type_cba0.
                    t524 = t528.
                    t520 = t524.
                  ENDIF.
                  t517 = t520.
                  t1 = t517.
                  DATA(t530) = VALUE abap_bool( ).
                  DATA t531 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t532) = CAST zcl_lnt_abstract_type( t1 ).
                  t531 = t532.
                  DATA t533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t534.
                  t533 = t534.
                  DATA(t535) = VALUE abap_bool( ).
                  DATA(t536) = CAST zcl_lnt_abstract_type( t531 ).
                  IF t536 IS INITIAL.
                    t535 = abap_true.
                  ENDIF.
                  t530 = t535.
                  IF t530 = abap_true.
                    DATA t537 TYPE string.
                    DATA t538 TYPE string.
                    DATA t539 TYPE string.
                    DATA(t540) = |Attribute "|.
                    DATA(t541) = t172.
                    DATA(t542) = strlen( t540 ).
                    t539 = |{ t540 }{ t541 }|.
                    DATA(t543) = |" not found|.
                    DATA(t544) = strlen( t539 ).
                    t538 = |{ t539 }{ t543 }|.
                    t537 = t538.
                    DATA t545 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t546) = CAST zcl_lnt_syntax_input( t3 ).
                    t545 = t546->issues.
                    DATA t547 TYPE REF TO zcl_lnt_issue.
                    DATA(t548) = CAST zcl_lnt_syntax_input( t3 ).
                    DATA t549 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t550) = CAST zif_lnt_union_4cf1d054( t37 ).
                    t549 = t550->get_first_token(  ).
                    DATA(t551) = t537.
                    DATA t552 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t552.
                    t547 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t548 i_token = t549 i_message_26cb = t551 i_fix = t552 ).
                    APPEND t547 TO t545->items.
                    DATA t553 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t553.
                    DATA t554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t554.
                    DATA(t555) = abap_true.
                    IF t555 = abap_true.
                      DATA(t556) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                      DATA(t557) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t557->has = abap_true.
                      t557->value = t556.
                      t554 = t557.
                    ELSE.
                      DATA t558 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t558.
                      t554 = t558.
                    ENDIF.
                    DATA t559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t559.
                    t553 = zcl_lnt_void_type=>get_db65( i_voided = t554 i_qualified_name = t559 ).
                    result = t553.
                    RETURN.
                  ELSE.
                    DATA t560 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t560.
                    DATA t561 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t561.
                    DATA t562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t562.
                    DATA(t563) = abap_true.
                    IF t563 = abap_true.
                      DATA(t564) = VALUE string( ).
                      DATA t565 TYPE REF TO zcl_lnt_fi_identifier.
                      DATA(t566) = CAST zcl_lnt_fi_identifier( t238 ).
                      t565 = t566.
                      DATA(t567) = VALUE string( ).
                      DATA t568 TYPE string.
                      DATA t569 TYPE string.
                      DATA t570 TYPE REF TO zcl_lnt_abstract_token.
                      DATA t571 TYPE REF TO zcl_lnt_abstract_token.
                      DATA(t572) = CAST zcl_lnt_fi_identifier( t565 ).
                      t571 = t572->token.
                      t570 = t571.
                      DATA t573 TYPE string.
                      DATA(t574) = CAST zcl_lnt_abstract_token( t570 ).
                      t573 = t574->str.
                      t569 = t573.
                      t568 = t569.
                      DATA(t575) = VALUE abap_bool( ).
                      DATA(t576) = VALUE string( ).
                      DATA(t577) = t568.
                      DATA(t578) = 0.
                      DATA(t579) = 1.
                      DATA(t580) = strlen( t577 ).
                      IF t578 < 0.
                        t578 = t578 + t580.
                        IF t578 < 0.
                          t578 = 0.
                        ENDIF.
                      ENDIF.
                      IF t578 > t580 OR t579 <= 0.
                        CLEAR t576.
                      ELSE.
                        IF t579 > t580 - t578.
                          t579 = t580 - t578.
                        ENDIF.
                        t576 = t577+t578(t579).
                      ENDIF.
                      DATA(t581) = |!|.
                      t575 = xsdbool( t576 = t581 ).
                      IF t575 = abap_true.
                        DATA(t582) = VALUE string( ).
                        DATA t583 TYPE string.
                        DATA(t584) = t568.
                        t583 = t584.
                        DATA(t585) = VALUE string( ).
                        DATA(t586) = t583.
                        DATA(t587) = 1.
                        DATA t588 TYPE i.
                        DATA(t589) = t583.
                        DATA(t590) = strlen( t589 ).
                        t588 = t590.
                        DATA(t591) = strlen( t586 ).
                        IF t587 < 0.
                          t587 = t587 + t591.
                          IF t587 < 0.
                            t587 = 0.
                          ENDIF.
                        ENDIF.
                        IF t587 > t591 OR t588 <= 0.
                          CLEAR t585.
                        ELSE.
                          IF t588 > t591 - t587.
                            t588 = t591 - t587.
                          ENDIF.
                          t585 = t586+t587(t588).
                        ENDIF.
                        t582 = t585.
                        t568 = t582.
                      ENDIF.
                      DATA(t592) = t568.
                      t567 = t592.
                      t564 = t567.
                      DATA(t593) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t593->has = abap_true.
                      t593->value = t564.
                      t562 = t593.
                    ELSE.
                      DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t594.
                      t562 = t594.
                    ENDIF.
                    DATA t595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t595.
                    DATA(t596) = abap_true.
                    IF t596 = abap_true.
                      DATA(t597) = VALUE string( ).
                      DATA t598 TYPE abap_bool.
                      DATA(t599) = CAST zcl_lnt_fi_identifier( t238 ).
                      t598 = xsdbool( t599 IS BOUND AND t599 IS INSTANCE OF zcl_lnt_ty_class_definition ).
                      IF t598 = abap_true.
                        DATA(t600) = |CLAS|.
                        t597 = t600.
                      ELSE.
                        DATA(t601) = |INTF|.
                        t597 = t601.
                      ENDIF.
                      DATA(t602) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t602->has = abap_true.
                      t602->value = t597.
                      t595 = t602.
                    ELSE.
                      DATA t603 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t603.
                      t595 = t603.
                    ENDIF.
                    DATA t604 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t604.
                    t561 = NEW zcl_lnt_ireference_extras( i_oo_name = t562 i_oo_type = t595 i_found_qualified = t604 ).
                    t560 = t561.
                    DATA t605 TYPE REF TO zcl_lnt_current_scope.
                    DATA(t606) = CAST zcl_lnt_syntax_input( t3 ).
                    t605 = t606->scope.
                    DATA t607 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t607.
                    DATA(t608) = abap_true.
                    IF t608 = abap_true.
                      DATA t609 TYPE REF TO zcl_lnt_abstract_token.
                      DATA(t610) = CAST zif_lnt_union_4cf1d054( t37 ).
                      t609 = t610->get_first_token(  ).
                      t607 = t609.
                    ELSE.
                      DATA t611 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t611.
                      t607 = t611.
                    ENDIF.
                    DATA(t612) = CAST zcl_lnt_class_attribute( t504 ).
                    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA(t614) = |Write To|.
                    CREATE OBJECT t613.
                    t613->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                    t613->sval = t614.
                    DATA t615 TYPE string.
                    DATA(t616) = CAST zcl_lnt_syntax_input( t3 ).
                    t615 = t616->filename.
                    DATA t617 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t617.
                    DATA(t618) = abap_true.
                    IF t618 = abap_true.
                      DATA(t619) = CAST zcl_lnt_ireference_extras( t560 ).
                      t617 = t619.
                    ELSE.
                      DATA t620 TYPE REF TO zcl_lnt_ireference_extras.
                      CLEAR t620.
                      t617 = t620.
                    ENDIF.
                    t605->add_reference( i_usage = t607 i_referencing = t612 i_type_9913 = t613 i_filename = t615 i_extra = t617 ).
                  ENDIF.
                ELSE.
                  DATA(t621) = VALUE string( ).
                  DATA(t622) = VALUE string( ).
                  DATA(t623) = |ComponentChain, not a structure, |.
                  DATA(t624) = VALUE string( ).
                  DATA t625 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t625.
                  DATA t626 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t626.
                  DATA t627 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t627.
                  DATA t628 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t628.
                  DATA t629 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t630 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t631) = CAST zcl_lnt_abstract_type( t1 ).
                  t630 = t631.
                  t629 = t630.
                  DATA t632 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t632.
                  DATA(t633) = VALUE abap_bool( ).
                  DATA(t634) = CAST zcl_lnt_abstract_type( t629 ).
                  IF t634 IS INITIAL.
                    t633 = abap_true.
                  ENDIF.
                  IF t633 = abap_true.
                    DATA t635 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                    CLEAR t635.
                    t632 = t635.
                  ELSE.
                    DATA t636 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                    DATA(t637) = CAST zcl_lnt_abstract_type( t629 ).
                    t636 = t637->zlnt_builtin_clas_3f891b097658( ).
                    t632 = t636.
                  ENDIF.
                  t628 = t632.
                  t627 = t628.
                  DATA t638 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t638.
                  DATA(t639) = VALUE abap_bool( ).
                  DATA(t640) = CAST zlnt_runtime_clas_a39833db3295( t627 ).
                  IF t640 IS INITIAL.
                    t639 = abap_true.
                  ENDIF.
                  IF t639 = abap_true.
                    DATA t641 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t641.
                    t638 = t641.
                  ELSE.
                    DATA t642 TYPE string.
                    DATA t643 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                    DATA(t644) = CAST zlnt_runtime_clas_a39833db3295( t627 ).
                    t643 = t644.
                    t642 = t643->name.
                    DATA(t645) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t645->has = abap_true.
                    t645->value = t642.
                    t638 = t645.
                  ENDIF.
                  t626 = t638.
                  t625 = t626.
                  DATA(t646) = VALUE string( ).
                  DATA(t647) = VALUE abap_bool( ).
                  DATA(t648) = CAST zlnt_runtime_opti_4ba3bdccd169( t625 ).
                  IF t648 IS INITIAL.
                    t647 = abap_true.
                  ELSEIF t648->has = abap_false.
                    t647 = abap_true.
                  ENDIF.
                  IF t647 = abap_true.
                    DATA(t649) = |undefined|.
                    t646 = t649.
                  ELSE.
                    DATA t650 TYPE string.
                    DATA(t651) = CAST zlnt_runtime_opti_4ba3bdccd169( t625 ).
                    t650 = t651->value.
                    t646 = t650.
                  ENDIF.
                  t624 = t646.
                  DATA(t652) = strlen( t623 ).
                  t622 = |{ t623 }{ t624 }|.
                  t621 = t622.
                  DATA t653 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t654) = CAST zcl_lnt_syntax_input( t3 ).
                  t653 = t654->issues.
                  DATA t655 TYPE REF TO zcl_lnt_issue.
                  DATA(t656) = CAST zcl_lnt_syntax_input( t3 ).
                  DATA t657 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t658) = CAST zif_lnt_union_4cf1d054( t37 ).
                  t657 = t658->get_first_token(  ).
                  DATA(t659) = t621.
                  DATA t660 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t660.
                  t655 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t656 i_token = t657 i_message_26cb = t659 i_fix = t660 ).
                  APPEND t655 TO t653->items.
                  DATA t661 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t661.
                  DATA t662 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t662.
                  DATA(t663) = abap_true.
                  IF t663 = abap_true.
                    DATA(t664) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t665) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t665->has = abap_true.
                    t665->value = t664.
                    t662 = t665.
                  ELSE.
                    DATA t666 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t666.
                    t662 = t666.
                  ENDIF.
                  DATA t667 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t667.
                  t661 = zcl_lnt_void_type=>get_db65( i_voided = t662 i_qualified_name = t667 ).
                  result = t661.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t668 TYPE i.
      DATA(t669) = t19.
      DATA(t670) = 1.
      t668 = t669 + t670.
      t19 = t668.
    ENDDO.
    DATA t671 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t671.
    DATA(t672) = abap_true.
    IF t672 = abap_true.
      DATA t673 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t674) = CAST zcl_lnt_abstract_type( t1 ).
      t673 = t674.
      t671 = t673.
    ELSE.
      DATA t675 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t675.
      t671 = t675.
    ENDIF.
    result = t671.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d765_78a92a32d2a4.
  ENDMETHOD.
ENDCLASS.
