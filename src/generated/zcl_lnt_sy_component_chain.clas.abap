* TS: src/abap/5_syntax/expressions/component_chain.ts:12:1 ComponentChain
CLASS zcl_lnt_sy_component_chain DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_context TYPE REF TO zcl_lnt_abstract_type i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_component_chain IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_context.
    DATA(t2) = i_node.
    DATA(t3) = i_input_967e.
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
    DATA(t16) = t2.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t18) = t15.
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
      DATA(t24) = t12.
      t24->load( ).
      t23 = lines( t24->items ).
      t21 = xsdbool( t22 < t23 ).
      IF t21 = abap_false.
        EXIT.
      ENDIF.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE abap_bool.
      DATA(t27) = t1.
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_void_type ).
      t25 = t26.
      IF t26 = abap_false.
        DATA t28 TYPE abap_bool.
        DATA(t29) = t1.
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
          DATA(t35) = t1.
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
      CLEAR t37.
      DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t38.
      DATA(t39) = t12.
      DATA(t40) = t19.
      t40 = t40 + 1.
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      t39->load( ).
      CLEAR t41.
      READ TABLE t39->items INDEX t40 INTO t41.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      CLEAR t38.
      IF t41 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t42 ?= t41.
        DATA t43 TYPE REF TO object.
        t43 = t42->as_ref( ).
        t38 ?= t43.
      ELSE.
        t38 ?= t41.
      ENDIF.
      t37 = t38.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      DATA(t46) = t19.
      DATA(t47) = 0.
      t45 = xsdbool( t46 = t47 ).
      t44 = t45.
      IF t45 = abap_true.
        DATA(t48) = VALUE abap_bool( ).
        DATA t49 TYPE string.
        DATA t50 TYPE string.
        DATA(t51) = t37.
        t50 = t51->concat_tokens( ).
        DATA(t52) = strlen( t50 ).
        t49 = t50.
        IF t49 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t49 TO UPPER CASE.
        ELSE.
          t49 = zlnt_runtime_uppe_91169605024d=>full( t49 ).
        ENDIF.
        DATA(t53) = |TABLE_LINE|.
        t48 = xsdbool( t49 = t53 ).
        t44 = t48.
      ENDIF.
      IF t44 = abap_true.
        DATA t54 TYPE i.
        DATA(t55) = t19.
        DATA(t56) = 1.
        t54 = t55 + t56.
        t19 = t54.
        CONTINUE.
      ELSE.
        DATA t57 TYPE abap_bool.
        DATA t58 TYPE REF TO object.
        DATA(t59) = t37.
        t58 = t59->get_db65( ).
        t57 = xsdbool( t58 IS BOUND AND t58 IS INSTANCE OF zcl_lnt_st_dereference ).
        IF t57 = abap_true.
          DATA t60 TYPE abap_bool.
          DATA t61 TYPE abap_bool.
          DATA(t62) = t1.
          t61 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_data_reference ).
          t60 = xsdbool( t61 = abap_false ).
          IF t60 = abap_true.
            DATA t63 TYPE string.
            DATA(t64) = |Not a data reference, cannot be dereferenced|.
            t63 = t64.
            DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t66) = t3.
            t65 = t66->issues.
            DATA t67 TYPE REF TO zcl_lnt_issue.
            DATA(t68) = t3.
            DATA t69 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t70) = t37.
            t69 = t70->get_first_token( ).
            DATA(t71) = t63.
            DATA t72 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t72.
            t67 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t68 i_token = t69 i_message_26cb = t71 i_fix = t72 ).
            t65->load( ).
            APPEND t67 TO t65->items.
            t65->save( ).
            DATA t73 TYPE REF TO zcl_lnt_void_type.
            CLEAR t73.
            DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t74.
            DATA(t75) = abap_true.
            IF t75 = abap_true.
              DATA(t76) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t77->has = abap_true.
              t77->value = t76.
              t74 = t77.
            ELSE.
              DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t78.
              t74 = t78.
            ENDIF.
            DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t79.
            t73 = zcl_lnt_void_type=>get_db65( i_voided = t74 i_qualified_name = t79 ).
            result = t73.
            RETURN.
          ENDIF.
          DATA t80 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t80.
          DATA(t81) = abap_true.
          IF t81 = abap_true.
            DATA t82 TYPE REF TO zcl_lnt_abstract_type.
            DATA t83 TYPE REF TO zcl_lnt_data_reference.
            DATA t84 TYPE REF TO zcl_lnt_data_reference.
            DATA(t85) = t1.
            t84 ?= t85.
            t83 = t84.
            DATA t86 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t87) = t83.
            t86 = t87->type_cba0.
            t82 = t86.
            t80 = t82.
          ELSE.
            DATA t88 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t88.
            t80 = t88.
          ENDIF.
          t1 = t80.
          DATA t89 TYPE i.
          DATA(t90) = t19.
          DATA(t91) = 1.
          t89 = t90 + t91.
          t19 = t89.
          CONTINUE.
        ELSE.
          DATA t92 TYPE abap_bool.
          DATA t93 TYPE REF TO object.
          DATA(t94) = t37.
          t93 = t94->get_db65( ).
          t92 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_arrow_or_dash ).
          IF t92 = abap_true.
            DATA t95 TYPE string.
            DATA t96 TYPE string.
            DATA(t97) = t37.
            t96 = t97->concat_tokens( ).
            t95 = t96.
            DATA t98 TYPE abap_bool.
            DATA(t99) = t95.
            DATA(t100) = |-|.
            t98 = xsdbool( t99 = t100 ).
            IF t98 = abap_true.
              DATA t101 TYPE abap_bool.
              DATA t102 TYPE abap_bool.
              DATA(t103) = t1.
              t102 = xsdbool( t103 IS BOUND AND t103 IS INSTANCE OF zcl_lnt_structure_type ).
              t101 = xsdbool( t102 = abap_false ).
              IF t101 = abap_true.
                DATA t104 TYPE string.
                DATA(t105) = |ComponentChain, not a structure|.
                t104 = t105.
                DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t107) = t3.
                t106 = t107->issues.
                DATA t108 TYPE REF TO zcl_lnt_issue.
                DATA(t109) = t3.
                DATA t110 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t111) = t37.
                t110 = t111->get_first_token( ).
                DATA(t112) = t104.
                DATA t113 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t113.
                t108 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t109 i_token = t110 i_message_26cb = t112 i_fix = t113 ).
                t106->load( ).
                APPEND t108 TO t106->items.
                t106->save( ).
                DATA t114 TYPE REF TO zcl_lnt_void_type.
                CLEAR t114.
                DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t115.
                DATA(t116) = abap_true.
                IF t116 = abap_true.
                  DATA(t117) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t118->has = abap_true.
                  t118->value = t117.
                  t115 = t118.
                ELSE.
                  DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t119.
                  t115 = t119.
                ENDIF.
                DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t120.
                t114 = zcl_lnt_void_type=>get_db65( i_voided = t115 i_qualified_name = t120 ).
                result = t114.
                RETURN.
              ENDIF.
            ELSE.
              DATA t121 TYPE abap_bool.
              DATA(t122) = t95.
              DATA(t123) = |=>|.
              t121 = xsdbool( t122 = t123 ).
              IF t121 = abap_true.
                DATA t124 TYPE abap_bool.
                DATA t125 TYPE abap_bool.
                DATA(t126) = t1.
                t125 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_object_reference_type ).
                t124 = xsdbool( t125 = abap_false ).
                IF t124 = abap_true.
                  DATA t127 TYPE string.
                  DATA(t128) = |ComponentChain, not a reference|.
                  t127 = t128.
                  DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t130) = t3.
                  t129 = t130->issues.
                  DATA t131 TYPE REF TO zcl_lnt_issue.
                  DATA(t132) = t3.
                  DATA t133 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t134) = t37.
                  t133 = t134->get_first_token( ).
                  DATA(t135) = t127.
                  DATA t136 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t136.
                  t131 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t132 i_token = t133 i_message_26cb = t135 i_fix = t136 ).
                  t129->load( ).
                  APPEND t131 TO t129->items.
                  t129->save( ).
                  DATA t137 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t137.
                  DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t138.
                  DATA(t139) = abap_true.
                  IF t139 = abap_true.
                    DATA(t140) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t141->has = abap_true.
                    t141->value = t140.
                    t138 = t141.
                  ELSE.
                    DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t142.
                    t138 = t142.
                  ENDIF.
                  DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t143.
                  t137 = zcl_lnt_void_type=>get_db65( i_voided = t138 i_qualified_name = t143 ).
                  result = t137.
                  RETURN.
                ENDIF.
              ELSE.
                DATA t144 TYPE abap_bool.
                DATA(t145) = t95.
                DATA(t146) = |->|.
                t144 = xsdbool( t145 = t146 ).
                IF t144 = abap_true.
                  DATA t147 TYPE abap_bool.
                  DATA t148 TYPE abap_bool.
                  DATA t149 TYPE abap_bool.
                  DATA(t150) = t1.
                  t149 = xsdbool( t150 IS BOUND AND t150 IS INSTANCE OF zcl_lnt_object_reference_type ).
                  t148 = xsdbool( t149 = abap_false ).
                  t147 = t148.
                  IF t148 = abap_true.
                    DATA t151 TYPE abap_bool.
                    DATA t152 TYPE abap_bool.
                    DATA(t153) = t1.
                    t152 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_data_reference ).
                    t151 = xsdbool( t152 = abap_false ).
                    t147 = t151.
                  ENDIF.
                  IF t147 = abap_true.
                    DATA t154 TYPE string.
                    DATA(t155) = |ComponentChain, not a reference|.
                    t154 = t155.
                    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t157) = t3.
                    t156 = t157->issues.
                    DATA t158 TYPE REF TO zcl_lnt_issue.
                    DATA(t159) = t3.
                    DATA t160 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t161) = t37.
                    t160 = t161->get_first_token( ).
                    DATA(t162) = t154.
                    DATA t163 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t163.
                    t158 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t159 i_token = t160 i_message_26cb = t162 i_fix = t163 ).
                    t156->load( ).
                    APPEND t158 TO t156->items.
                    t156->save( ).
                    DATA t164 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t164.
                    DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t165.
                    DATA(t166) = abap_true.
                    IF t166 = abap_true.
                      DATA(t167) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                      DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t168->has = abap_true.
                      t168->value = t167.
                      t165 = t168.
                    ELSE.
                      DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t169.
                      t165 = t169.
                    ENDIF.
                    DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t170.
                    t164 = zcl_lnt_void_type=>get_db65( i_voided = t165 i_qualified_name = t170 ).
                    result = t164.
                    RETURN.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ELSE.
            DATA t171 TYPE abap_bool.
            DATA t172 TYPE REF TO object.
            DATA(t173) = t37.
            t172 = t173->get_db65( ).
            t171 = xsdbool( t172 IS BOUND AND t172 IS INSTANCE OF zcl_lnt_st_component_name ).
            IF t171 = abap_true.
              DATA t174 TYPE string.
              DATA t175 TYPE string.
              DATA(t176) = t37.
              t175 = t176->concat_tokens( ).
              t174 = t175.
              DATA t177 TYPE abap_bool.
              DATA(t178) = t1.
              t177 = xsdbool( t178 IS BOUND AND t178 IS INSTANCE OF zcl_lnt_data_reference ).
              IF t177 = abap_true.
                DATA t179 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t179.
                DATA(t180) = abap_true.
                IF t180 = abap_true.
                  DATA t181 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t182 TYPE REF TO zcl_lnt_data_reference.
                  DATA t183 TYPE REF TO zcl_lnt_data_reference.
                  DATA(t184) = t1.
                  t183 ?= t184.
                  t182 = t183.
                  DATA t185 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t186) = t182.
                  t185 = t186->type_cba0.
                  t181 = t185.
                  t179 = t181.
                ELSE.
                  DATA t187 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t187.
                  t179 = t187.
                ENDIF.
                t1 = t179.
                DATA t188 TYPE abap_bool.
                DATA(t189) = t174.
                DATA(t190) = |*|.
                t188 = xsdbool( t189 = t190 ).
                IF t188 = abap_true.
                  DATA t191 TYPE i.
                  DATA(t192) = t19.
                  DATA(t193) = 1.
                  t191 = t192 + t193.
                  t19 = t191.
                  CONTINUE.
                ENDIF.
              ENDIF.
              DATA t194 TYPE abap_bool.
              DATA(t195) = t1.
              t194 = xsdbool( t195 IS BOUND AND t195 IS INSTANCE OF zcl_lnt_structure_type ).
              IF t194 = abap_true.
                DATA t196 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t196.
                DATA t197 TYPE REF TO zcl_lnt_structure_type.
                DATA t198 TYPE REF TO zcl_lnt_structure_type.
                DATA(t199) = t1.
                t198 ?= t199.
                t197 = t198.
                DATA t200 TYPE string.
                DATA(t201) = t174.
                t200 = t201.
                DATA t202 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t202.
                DATA t203 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
                DATA(t204) = t197.
                t203 = t204->indexed.
                DATA t205 TYPE string.
                DATA(t206) = t200.
                DATA(t207) = strlen( t206 ).
                t205 = t206.
                IF t205 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t205 TO UPPER CASE.
                ELSE.
                  t205 = zlnt_runtime_uppe_91169605024d=>full( t205 ).
                ENDIF.
                t202 = t203->get( p0 = t205 ).
                t196 = t202.
                t1 = t196.
                DATA(t208) = VALUE abap_bool( ).
                DATA t209 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t210) = t1.
                t209 = t210.
                DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t212.
                t211 = t212.
                DATA(t213) = VALUE abap_bool( ).
                DATA(t214) = t209.
                IF t214 IS INITIAL.
                  t213 = abap_true.
                ENDIF.
                t208 = t213.
                IF t208 = abap_true.
                  DATA t215 TYPE string.
                  DATA t216 TYPE string.
                  DATA t217 TYPE string.
                  DATA(t218) = |Component "|.
                  DATA(t219) = t174.
                  DATA(t220) = strlen( t218 ).
                  t217 = |{ t218 }{ t219 }|.
                  DATA(t221) = |" not found in structure|.
                  DATA(t222) = strlen( t217 ).
                  t216 = |{ t217 }{ t221 }|.
                  t215 = t216.
                  DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t224) = t3.
                  t223 = t224->issues.
                  DATA t225 TYPE REF TO zcl_lnt_issue.
                  DATA(t226) = t3.
                  DATA t227 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t228) = t37.
                  t227 = t228->get_first_token( ).
                  DATA(t229) = t215.
                  DATA t230 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t230.
                  t225 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t226 i_token = t227 i_message_26cb = t229 i_fix = t230 ).
                  t223->load( ).
                  APPEND t225 TO t223->items.
                  t223->save( ).
                  DATA t231 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t231.
                  DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t232.
                  DATA(t233) = abap_true.
                  IF t233 = abap_true.
                    DATA(t234) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t235->has = abap_true.
                    t235->value = t234.
                    t232 = t235.
                  ELSE.
                    DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t236.
                    t232 = t236.
                  ENDIF.
                  DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t237.
                  t231 = zcl_lnt_void_type=>get_db65( i_voided = t232 i_qualified_name = t237 ).
                  result = t231.
                  RETURN.
                ENDIF.
              ELSE.
                DATA t238 TYPE abap_bool.
                DATA(t239) = t1.
                t238 = xsdbool( t239 IS BOUND AND t239 IS INSTANCE OF zcl_lnt_object_reference_type ).
                IF t238 = abap_true.
                  DATA t240 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA t241 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA t242 TYPE REF TO zcl_lnt_object_reference_type.
                  DATA t243 TYPE REF TO zcl_lnt_object_reference_type.
                  DATA(t244) = t1.
                  t243 ?= t244.
                  t242 = t243.
                  DATA t245 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA(t246) = t242.
                  t245 = t246->identifier.
                  t241 = t245.
                  t240 = t241.
                  DATA t247 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t247.
                  DATA t248 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t248.
                  DATA t249 TYPE REF TO zcl_lnt_current_scope.
                  DATA t250 TYPE REF TO zcl_lnt_current_scope.
                  DATA(t251) = t3.
                  t250 = t251->scope.
                  t249 = t250.
                  DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t252.
                  DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t253.
                  DATA(t254) = abap_true.
                  IF t254 = abap_true.
                    DATA(t255) = VALUE string( ).
                    DATA t256 TYPE REF TO zcl_lnt_fi_identifier.
                    DATA(t257) = t240.
                    t256 = t257.
                    DATA(t258) = VALUE string( ).
                    DATA t259 TYPE string.
                    DATA t260 TYPE string.
                    DATA t261 TYPE REF TO zcl_lnt_abstract_token.
                    DATA t262 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t263) = t256.
                    t262 = t263->token.
                    t261 = t262.
                    DATA t264 TYPE string.
                    DATA(t265) = t261.
                    t264 = t265->str.
                    t260 = t264.
                    t259 = t260.
                    DATA(t266) = VALUE abap_bool( ).
                    DATA(t267) = VALUE string( ).
                    DATA(t268) = t259.
                    DATA(t269) = 0.
                    DATA(t270) = 1.
                    DATA(t271) = strlen( t268 ).
                    IF t269 < 0.
                      t269 = t269 + t271.
                      IF t269 < 0.
                        t269 = 0.
                      ENDIF.
                    ENDIF.
                    IF t269 > t271 OR t270 <= 0.
                      CLEAR t267.
                    ELSE.
                      IF t270 > t271 - t269.
                        t270 = t271 - t269.
                      ENDIF.
                      t267 = t268+t269(t270).
                    ENDIF.
                    DATA(t272) = |!|.
                    t266 = xsdbool( t267 = t272 ).
                    IF t266 = abap_true.
                      DATA(t273) = VALUE string( ).
                      DATA t274 TYPE string.
                      DATA(t275) = t259.
                      t274 = t275.
                      DATA(t276) = VALUE string( ).
                      DATA(t277) = t274.
                      DATA(t278) = 1.
                      DATA t279 TYPE i.
                      DATA(t280) = t274.
                      DATA(t281) = strlen( t280 ).
                      t279 = t281.
                      DATA(t282) = strlen( t277 ).
                      IF t278 < 0.
                        t278 = t278 + t282.
                        IF t278 < 0.
                          t278 = 0.
                        ENDIF.
                      ENDIF.
                      IF t278 > t282 OR t279 <= 0.
                        CLEAR t276.
                      ELSE.
                        IF t279 > t282 - t278.
                          t279 = t282 - t278.
                        ENDIF.
                        t276 = t277+t278(t279).
                      ENDIF.
                      t273 = t276.
                      t259 = t273.
                    ENDIF.
                    DATA(t283) = t259.
                    t258 = t283.
                    t255 = t258.
                    DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t284->has = abap_true.
                    t284->value = t255.
                    t253 = t284.
                  ELSE.
                    DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t285.
                    t253 = t285.
                  ENDIF.
                  t252 = t253.
                  DATA t286 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t286.
                  DATA(t287) = VALUE abap_bool( ).
                  DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t289) = t252.
                  t288 = t289.
                  DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t291.
                  t290 = t291.
                  DATA(t292) = VALUE abap_bool( ).
                  DATA(t293) = t288.
                  IF t293 IS INITIAL.
                    t292 = abap_true.
                  ELSEIF t293->has = abap_false.
                    t292 = abap_true.
                  ENDIF.
                  t287 = t292.
                  IF t287 = abap_true.
                    DATA t294 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t294.
                    t286 = t294.
                  ELSE.
                    DATA t295 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t295.
                    DATA t296 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t296.
                    DATA t297 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t297.
                    DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t298.
                    DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t299.
                    DATA(t300) = abap_true.
                    IF t300 = abap_true.
                      DATA t301 TYPE string.
                      DATA(t302) = t252.
                      t301 = t302->value.
                      DATA(t303) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t303->has = abap_true.
                      t303->value = t301.
                      t299 = t303.
                    ELSE.
                      DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t304.
                      t299 = t304.
                    ENDIF.
                    t298 = t299.
                    DATA t305 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t305.
                    DATA(t306) = VALUE abap_bool( ).
                    DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t308) = t298.
                    t307 = t308.
                    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t310.
                    t309 = t310.
                    DATA(t311) = VALUE abap_bool( ).
                    DATA(t312) = t307.
                    IF t312 IS INITIAL.
                      t311 = abap_true.
                    ELSEIF t312->has = abap_false.
                      t311 = abap_true.
                    ENDIF.
                    t306 = t311.
                    IF t306 = abap_true.
                      DATA t313 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t313.
                      t305 = t313.
                    ELSE.
                      DATA t314 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t314.
                      DATA t315 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t315.
                      DATA t316 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t316.
                      DATA t317 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      DATA t318 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      DATA(t319) = t249.
                      t318 = t319->current.
                      t317 = t318.
                      DATA t320 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t320.
                      DATA(t321) = VALUE abap_bool( ).
                      DATA(t322) = t317.
                      IF t322 IS INITIAL.
                        t321 = abap_true.
                      ENDIF.
                      IF t321 = abap_true.
                        DATA t323 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t323.
                        t320 = t323.
                      ELSE.
                        DATA t324 TYPE REF TO zif_lnt_class_definition.
                        DATA t325 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        DATA(t326) = t317.
                        t325 = t326.
                        DATA t327 TYPE string.
                        DATA(t328) = t298.
                        t327 = t328->value.
                        t324 = t325->find_class_definition( i_name = t327 ).
                        t320 = t324.
                      ENDIF.
                      t316 = t320.
                      t315 = t316.
                      DATA t329 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t329.
                      DATA t330 TYPE abap_bool.
                      DATA(t331) = t315.
                      t330 = xsdbool( t331 IS BOUND ).
                      IF t330 = abap_true.
                        DATA t332 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t332.
                        DATA(t333) = abap_true.
                        IF t333 = abap_true.
                          DATA t334 TYPE REF TO zif_lnt_class_definition.
                          DATA(t335) = t315.
                          t334 = t335.
                          t332 = t334.
                        ELSE.
                          DATA t336 TYPE REF TO zif_lnt_class_definition.
                          CLEAR t336.
                          t332 = t336.
                        ENDIF.
                        t329 = t332.
                      ELSE.
                        DATA t337 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t337.
                        DATA t338 TYPE REF TO zcl_lnt_class.
                        CLEAR t338.
                        DATA t339 TYPE REF TO zcl_lnt_class.
                        CLEAR t339.
                        DATA t340 TYPE REF TO zif_lnt_object.
                        CLEAR t340.
                        DATA t341 TYPE REF TO zif_lnt_registry.
                        DATA(t342) = t249.
                        t341 = t342->reg.
                        DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t343.
                        DATA(t344) = abap_true.
                        IF t344 = abap_true.
                          DATA(t345) = |CLAS|.
                          DATA(t346) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t346->has = abap_true.
                          t346->value = t345.
                          t343 = t346.
                        ELSE.
                          DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t347.
                          t343 = t347.
                        ENDIF.
                        DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t348.
                        DATA(t349) = abap_true.
                        IF t349 = abap_true.
                          DATA t350 TYPE string.
                          DATA(t351) = t298.
                          t350 = t351->value.
                          DATA(t352) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t352->has = abap_true.
                          t352->value = t350.
                          t348 = t352.
                        ELSE.
                          DATA t353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t353.
                          t348 = t353.
                        ENDIF.
                        t340 = t341->get_object( i_type_9913 = t343 i_name = t348 ).
                        DATA t354 TYPE REF TO object.
                        t354 = t340.
                        t339 ?= t354.
                        t338 = t339.
                        DATA t355 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t355.
                        DATA t356 TYPE abap_bool.
                        DATA(t357) = t338.
                        t356 = xsdbool( t357 IS BOUND ).
                        IF t356 = abap_true.
                          DATA t358 TYPE REF TO zif_lnt_class_definition.
                          DATA t359 TYPE REF TO zcl_lnt_class.
                          DATA(t360) = t338.
                          t359 = t360.
                          t358 = t359->gt_dfn_ins_src_obj_cls_ts_clss( ).
                          t355 = t358.
                        ELSE.
                          DATA t361 TYPE REF TO zif_lnt_class_definition.
                          CLEAR t361.
                          t355 = t361.
                        ENDIF.
                        t337 = t355.
                        t329 = t337.
                      ENDIF.
                      t314 = t329.
                      t305 = t314.
                    ENDIF.
                    t297 = t305.
                    t296 = t297.
                    DATA t362 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t362.
                    DATA t363 TYPE abap_bool.
                    DATA(t364) = t296.
                    t363 = xsdbool( t364 IS BOUND ).
                    IF t363 = abap_true.
                      DATA t365 TYPE REF TO zif_lnt_interface_definition.
                      DATA t366 TYPE REF TO zif_lnt_class_definition.
                      DATA(t367) = t296.
                      t366 = t367.
                      t365 ?= t366.
                      t362 = t365.
                    ELSE.
                      DATA t368 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t368.
                      DATA t369 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t369.
                      DATA t370 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t370.
                      DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t371.
                      DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t372.
                      DATA(t373) = abap_true.
                      IF t373 = abap_true.
                        DATA t374 TYPE string.
                        DATA(t375) = t252.
                        t374 = t375->value.
                        DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t376->has = abap_true.
                        t376->value = t374.
                        t372 = t376.
                      ELSE.
                        DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t377.
                        t372 = t377.
                      ENDIF.
                      t371 = t372.
                      DATA t378 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t378.
                      DATA(t379) = VALUE abap_bool( ).
                      DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t381) = t371.
                      t380 = t381.
                      DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t383.
                      t382 = t383.
                      DATA(t384) = VALUE abap_bool( ).
                      DATA(t385) = t380.
                      IF t385 IS INITIAL.
                        t384 = abap_true.
                      ELSEIF t385->has = abap_false.
                        t384 = abap_true.
                      ENDIF.
                      t379 = t384.
                      IF t379 = abap_true.
                        DATA t386 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t386.
                        t378 = t386.
                      ELSE.
                        DATA t387 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t387.
                        DATA t388 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t388.
                        DATA t389 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t389.
                        DATA t390 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        DATA t391 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        DATA(t392) = t249.
                        t391 = t392->current.
                        t390 = t391.
                        DATA t393 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t393.
                        DATA(t394) = VALUE abap_bool( ).
                        DATA(t395) = t390.
                        IF t395 IS INITIAL.
                          t394 = abap_true.
                        ENDIF.
                        IF t394 = abap_true.
                          DATA t396 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t396.
                          t393 = t396.
                        ELSE.
                          DATA t397 TYPE REF TO zif_lnt_interface_definition.
                          DATA t398 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                          DATA(t399) = t390.
                          t398 = t399.
                          DATA t400 TYPE string.
                          DATA(t401) = t371.
                          t400 = t401->value.
                          t397 = t398->find_interface_definition( i_name = t400 ).
                          t393 = t397.
                        ENDIF.
                        t389 = t393.
                        t388 = t389.
                        DATA t402 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t402.
                        DATA t403 TYPE abap_bool.
                        DATA(t404) = t388.
                        t403 = xsdbool( t404 IS BOUND ).
                        IF t403 = abap_true.
                          DATA t405 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t405.
                          DATA(t406) = abap_true.
                          IF t406 = abap_true.
                            DATA t407 TYPE REF TO zif_lnt_interface_definition.
                            DATA(t408) = t388.
                            t407 = t408.
                            t405 = t407.
                          ELSE.
                            DATA t409 TYPE REF TO zif_lnt_interface_definition.
                            CLEAR t409.
                            t405 = t409.
                          ENDIF.
                          t402 = t405.
                        ELSE.
                          DATA t410 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t410.
                          DATA t411 TYPE REF TO zcl_lnt_ob_interface.
                          CLEAR t411.
                          DATA t412 TYPE REF TO zcl_lnt_ob_interface.
                          CLEAR t412.
                          DATA t413 TYPE REF TO zif_lnt_object.
                          CLEAR t413.
                          DATA t414 TYPE REF TO zif_lnt_registry.
                          DATA(t415) = t249.
                          t414 = t415->reg.
                          DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t416.
                          DATA(t417) = abap_true.
                          IF t417 = abap_true.
                            DATA(t418) = |INTF|.
                            DATA(t419) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t419->has = abap_true.
                            t419->value = t418.
                            t416 = t419.
                          ELSE.
                            DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t420.
                            t416 = t420.
                          ENDIF.
                          DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t421.
                          DATA(t422) = abap_true.
                          IF t422 = abap_true.
                            DATA t423 TYPE string.
                            DATA(t424) = t371.
                            t423 = t424->value.
                            DATA(t425) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t425->has = abap_true.
                            t425->value = t423.
                            t421 = t425.
                          ELSE.
                            DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t426.
                            t421 = t426.
                          ENDIF.
                          t413 = t414->get_object( i_type_9913 = t416 i_name = t421 ).
                          DATA t427 TYPE REF TO object.
                          t427 = t413.
                          t412 ?= t427.
                          t411 = t412.
                          DATA t428 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t428.
                          DATA t429 TYPE abap_bool.
                          DATA(t430) = t411.
                          t429 = xsdbool( t430 IS BOUND ).
                          IF t429 = abap_true.
                            DATA t431 TYPE REF TO zif_lnt_interface_definition.
                            DATA t432 TYPE REF TO zcl_lnt_ob_interface.
                            DATA t433 TYPE REF TO zcl_lnt_ob_interface.
                            DATA(t434) = t411.
                            t433 = t434.
                            t432 = t433.
                            DATA t435 TYPE REF TO zif_lnt_interface_definition.
                            DATA(t436) = t432.
                            t435 = t436->def.
                            t431 = t435.
                            t428 = t431.
                          ELSE.
                            DATA t437 TYPE REF TO zif_lnt_interface_definition.
                            CLEAR t437.
                            t428 = t437.
                          ENDIF.
                          t410 = t428.
                          t402 = t410.
                        ENDIF.
                        t387 = t402.
                        t378 = t387.
                      ENDIF.
                      t370 = t378.
                      t369 = t370.
                      DATA t438 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t438.
                      DATA t439 TYPE abap_bool.
                      DATA(t440) = t369.
                      t439 = xsdbool( t440 IS BOUND ).
                      IF t439 = abap_true.
                        DATA t441 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t441.
                        DATA(t442) = abap_true.
                        IF t442 = abap_true.
                          DATA t443 TYPE REF TO zif_lnt_interface_definition.
                          DATA(t444) = t369.
                          t443 = t444.
                          t441 = t443.
                        ELSE.
                          DATA t445 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t445.
                          t441 = t445.
                        ENDIF.
                        t438 = t441.
                      ELSE.
                        DATA t446 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t446.
                        t438 = t446.
                      ENDIF.
                      t368 = t438.
                      t362 = t368.
                    ENDIF.
                    t295 = t362.
                    t286 = t295.
                  ENDIF.
                  t248 = t286.
                  t247 = t248.
                  DATA(t447) = VALUE abap_bool( ).
                  DATA t448 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t449) = t247.
                  t448 = t449.
                  DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t451.
                  t450 = t451.
                  DATA(t452) = VALUE abap_bool( ).
                  DATA(t453) = t448.
                  IF t453 IS INITIAL.
                    t452 = abap_true.
                  ENDIF.
                  t447 = t452.
                  IF t447 = abap_true.
                    DATA(t454) = VALUE string( ).
                    DATA(t455) = VALUE string( ).
                    DATA(t456) = VALUE string( ).
                    DATA t457 TYPE REF TO zcl_lnt_fi_identifier.
                    DATA(t458) = t240.
                    t457 = t458.
                    DATA(t459) = VALUE string( ).
                    DATA t460 TYPE string.
                    DATA t461 TYPE string.
                    DATA t462 TYPE REF TO zcl_lnt_abstract_token.
                    DATA t463 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t464) = t457.
                    t463 = t464->token.
                    t462 = t463.
                    DATA t465 TYPE string.
                    DATA(t466) = t462.
                    t465 = t466->str.
                    t461 = t465.
                    t460 = t461.
                    DATA(t467) = VALUE abap_bool( ).
                    DATA(t468) = VALUE string( ).
                    DATA(t469) = t460.
                    DATA(t470) = 0.
                    DATA(t471) = 1.
                    DATA(t472) = strlen( t469 ).
                    IF t470 < 0.
                      t470 = t470 + t472.
                      IF t470 < 0.
                        t470 = 0.
                      ENDIF.
                    ENDIF.
                    IF t470 > t472 OR t471 <= 0.
                      CLEAR t468.
                    ELSE.
                      IF t471 > t472 - t470.
                        t471 = t472 - t470.
                      ENDIF.
                      t468 = t469+t470(t471).
                    ENDIF.
                    DATA(t473) = |!|.
                    t467 = xsdbool( t468 = t473 ).
                    IF t467 = abap_true.
                      DATA(t474) = VALUE string( ).
                      DATA t475 TYPE string.
                      DATA(t476) = t460.
                      t475 = t476.
                      DATA(t477) = VALUE string( ).
                      DATA(t478) = t475.
                      DATA(t479) = 1.
                      DATA t480 TYPE i.
                      DATA(t481) = t475.
                      DATA(t482) = strlen( t481 ).
                      t480 = t482.
                      DATA(t483) = strlen( t478 ).
                      IF t479 < 0.
                        t479 = t479 + t483.
                        IF t479 < 0.
                          t479 = 0.
                        ENDIF.
                      ENDIF.
                      IF t479 > t483 OR t480 <= 0.
                        CLEAR t477.
                      ELSE.
                        IF t480 > t483 - t479.
                          t480 = t483 - t479.
                        ENDIF.
                        t477 = t478+t479(t480).
                      ENDIF.
                      t474 = t477.
                      t460 = t474.
                    ENDIF.
                    DATA(t484) = t460.
                    t459 = t484.
                    t456 = t459.
                    DATA(t485) = | not found in scope|.
                    DATA(t486) = strlen( t456 ).
                    t455 = |{ t456 }{ t485 }|.
                    t454 = t455.
                    DATA t487 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t488) = t3.
                    t487 = t488->issues.
                    DATA t489 TYPE REF TO zcl_lnt_issue.
                    DATA(t490) = t3.
                    DATA t491 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t492) = t37.
                    t491 = t492->get_first_token( ).
                    DATA(t493) = t454.
                    DATA t494 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t494.
                    t489 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t490 i_token = t491 i_message_26cb = t493 i_fix = t494 ).
                    t487->load( ).
                    APPEND t489 TO t487->items.
                    t487->save( ).
                    DATA t495 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t495.
                    DATA t496 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t496.
                    DATA(t497) = abap_true.
                    IF t497 = abap_true.
                      DATA(t498) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                      DATA(t499) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t499->has = abap_true.
                      t499->value = t498.
                      t496 = t499.
                    ELSE.
                      DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t500.
                      t496 = t500.
                    ENDIF.
                    DATA t501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t501.
                    t495 = zcl_lnt_void_type=>get_db65( i_voided = t496 i_qualified_name = t501 ).
                    result = t495.
                    RETURN.
                  ENDIF.
                  DATA t502 TYPE REF TO zcl_lnt_object_oriented.
                  DATA t503 TYPE REF TO zcl_lnt_object_oriented.
                  DATA t504 TYPE REF TO zcl_lnt_current_scope.
                  DATA(t505) = t3.
                  t504 = t505->scope.
                  t503 = NEW zcl_lnt_object_oriented( i_scope = t504 ).
                  t502 = t503.
                  DATA t506 TYPE REF TO zcl_lnt_class_attribute.
                  CLEAR t506.
                  DATA t507 TYPE REF TO zcl_lnt_class_attribute.
                  CLEAR t507.
                  DATA(t508) = t502.
                  DATA t509 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t509.
                  DATA(t510) = abap_true.
                  IF t510 = abap_true.
                    DATA t511 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t512) = t247.
                    t511 = t512.
                    t509 = t511.
                  ELSE.
                    DATA t513 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t513.
                    t509 = t513.
                  ENDIF.
                  DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t514.
                  DATA(t515) = abap_true.
                  IF t515 = abap_true.
                    DATA(t516) = t174.
                    DATA(t517) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t517->has = abap_true.
                    t517->value = t516.
                    t514 = t517.
                  ELSE.
                    DATA t518 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t518.
                    t514 = t518.
                  ENDIF.
                  t507 = t508->search_attribute_name( i_def = t509 i_name = t514 ).
                  t506 = t507.
                  DATA t519 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t519.
                  DATA t520 TYPE REF TO zcl_lnt_class_attribute.
                  DATA(t521) = t506.
                  t520 = t521.
                  DATA t522 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t522.
                  DATA(t523) = VALUE abap_bool( ).
                  DATA(t524) = t520.
                  IF t524 IS INITIAL.
                    t523 = abap_true.
                  ENDIF.
                  IF t523 = abap_true.
                    DATA t525 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t525.
                    t522 = t525.
                  ELSE.
                    DATA t526 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t527 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA t528 TYPE REF TO zcl_lnt_class_attribute.
                    DATA(t529) = t520.
                    t528 = t529.
                    t527 = t528.
                    DATA t530 TYPE REF TO zcl_lnt_abstract_type.
                    DATA(t531) = t527.
                    t530 = t531->type_cba0.
                    t526 = t530.
                    t522 = t526.
                  ENDIF.
                  t519 = t522.
                  t1 = t519.
                  DATA(t532) = VALUE abap_bool( ).
                  DATA t533 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t534) = t1.
                  t533 = t534.
                  DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t536.
                  t535 = t536.
                  DATA(t537) = VALUE abap_bool( ).
                  DATA(t538) = t533.
                  IF t538 IS INITIAL.
                    t537 = abap_true.
                  ENDIF.
                  t532 = t537.
                  IF t532 = abap_true.
                    DATA t539 TYPE string.
                    DATA t540 TYPE string.
                    DATA t541 TYPE string.
                    DATA(t542) = |Attribute "|.
                    DATA(t543) = t174.
                    DATA(t544) = strlen( t542 ).
                    t541 = |{ t542 }{ t543 }|.
                    DATA(t545) = |" not found|.
                    DATA(t546) = strlen( t541 ).
                    t540 = |{ t541 }{ t545 }|.
                    t539 = t540.
                    DATA t547 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t548) = t3.
                    t547 = t548->issues.
                    DATA t549 TYPE REF TO zcl_lnt_issue.
                    DATA(t550) = t3.
                    DATA t551 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t552) = t37.
                    t551 = t552->get_first_token( ).
                    DATA(t553) = t539.
                    DATA t554 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t554.
                    t549 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t550 i_token = t551 i_message_26cb = t553 i_fix = t554 ).
                    t547->load( ).
                    APPEND t549 TO t547->items.
                    t547->save( ).
                    DATA t555 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t555.
                    DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t556.
                    DATA(t557) = abap_true.
                    IF t557 = abap_true.
                      DATA(t558) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                      DATA(t559) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t559->has = abap_true.
                      t559->value = t558.
                      t556 = t559.
                    ELSE.
                      DATA t560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t560.
                      t556 = t560.
                    ENDIF.
                    DATA t561 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t561.
                    t555 = zcl_lnt_void_type=>get_db65( i_voided = t556 i_qualified_name = t561 ).
                    result = t555.
                    RETURN.
                  ELSE.
                    DATA t562 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t562.
                    DATA t563 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t563.
                    DATA t564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t564.
                    DATA t565 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t565.
                    DATA(t566) = abap_true.
                    IF t566 = abap_true.
                      DATA(t567) = VALUE string( ).
                      DATA t568 TYPE REF TO zcl_lnt_fi_identifier.
                      DATA(t569) = t240.
                      t568 = t569.
                      DATA(t570) = VALUE string( ).
                      DATA t571 TYPE string.
                      DATA t572 TYPE string.
                      DATA t573 TYPE REF TO zcl_lnt_abstract_token.
                      DATA t574 TYPE REF TO zcl_lnt_abstract_token.
                      DATA(t575) = t568.
                      t574 = t575->token.
                      t573 = t574.
                      DATA t576 TYPE string.
                      DATA(t577) = t573.
                      t576 = t577->str.
                      t572 = t576.
                      t571 = t572.
                      DATA(t578) = VALUE abap_bool( ).
                      DATA(t579) = VALUE string( ).
                      DATA(t580) = t571.
                      DATA(t581) = 0.
                      DATA(t582) = 1.
                      DATA(t583) = strlen( t580 ).
                      IF t581 < 0.
                        t581 = t581 + t583.
                        IF t581 < 0.
                          t581 = 0.
                        ENDIF.
                      ENDIF.
                      IF t581 > t583 OR t582 <= 0.
                        CLEAR t579.
                      ELSE.
                        IF t582 > t583 - t581.
                          t582 = t583 - t581.
                        ENDIF.
                        t579 = t580+t581(t582).
                      ENDIF.
                      DATA(t584) = |!|.
                      t578 = xsdbool( t579 = t584 ).
                      IF t578 = abap_true.
                        DATA(t585) = VALUE string( ).
                        DATA t586 TYPE string.
                        DATA(t587) = t571.
                        t586 = t587.
                        DATA(t588) = VALUE string( ).
                        DATA(t589) = t586.
                        DATA(t590) = 1.
                        DATA t591 TYPE i.
                        DATA(t592) = t586.
                        DATA(t593) = strlen( t592 ).
                        t591 = t593.
                        DATA(t594) = strlen( t589 ).
                        IF t590 < 0.
                          t590 = t590 + t594.
                          IF t590 < 0.
                            t590 = 0.
                          ENDIF.
                        ENDIF.
                        IF t590 > t594 OR t591 <= 0.
                          CLEAR t588.
                        ELSE.
                          IF t591 > t594 - t590.
                            t591 = t594 - t590.
                          ENDIF.
                          t588 = t589+t590(t591).
                        ENDIF.
                        t585 = t588.
                        t571 = t585.
                      ENDIF.
                      DATA(t595) = t571.
                      t570 = t595.
                      t567 = t570.
                      DATA(t596) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t596->has = abap_true.
                      t596->value = t567.
                      t565 = t596.
                    ELSE.
                      DATA t597 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t597.
                      t565 = t597.
                    ENDIF.
                    t564 = t565.
                    DATA t598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t598.
                    DATA t599 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t599.
                    DATA(t600) = abap_true.
                    IF t600 = abap_true.
                      DATA(t601) = VALUE string( ).
                      DATA t602 TYPE abap_bool.
                      DATA(t603) = t240.
                      t602 = xsdbool( t603 IS BOUND AND t603 IS INSTANCE OF zcl_lnt_ty_class_definition ).
                      IF t602 = abap_true.
                        DATA(t604) = |CLAS|.
                        t601 = t604.
                      ELSE.
                        DATA(t605) = |INTF|.
                        t601 = t605.
                      ENDIF.
                      DATA(t606) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t606->has = abap_true.
                      t606->value = t601.
                      t599 = t606.
                    ELSE.
                      DATA t607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t607.
                      t599 = t607.
                    ENDIF.
                    t598 = t599.
                    DATA t608 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    DATA t609 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t609.
                    t608 = t609.
                    t563 = NEW zcl_lnt_ireference_extras( i_oo_name = t564 i_oo_type = t598 i_found_qualified = t608 ).
                    CREATE OBJECT t563->zlnt_view_ownkeys_b0e8086400eb.
                    t563->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t610.
                    IF t563->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t563->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t610 ).
                    ENDIF.
                    DATA t611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t611.
                    IF t563->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t563->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t611 ).
                    ENDIF.
                    CREATE OBJECT t563->zlnt_json_ownkeys_70e5fd461788.
                    t563->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t612) = |ooName|.
                    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t613.
                    IF t563->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t563->zlnt_json_ownkeys_70e5fd461788->put( p0 = t612 p1 = t613 ).
                    ENDIF.
                    DATA(t614) = |ooType|.
                    DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t615.
                    IF t563->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t563->zlnt_json_ownkeys_70e5fd461788->put( p0 = t614 p1 = t615 ).
                    ENDIF.
                    t562 = t563.
                    DATA t616 TYPE REF TO zcl_lnt_current_scope.
                    DATA(t617) = t3.
                    t616 = t617->scope.
                    DATA t618 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t618.
                    DATA(t619) = abap_true.
                    IF t619 = abap_true.
                      DATA t620 TYPE REF TO zcl_lnt_abstract_token.
                      DATA(t621) = t37.
                      t620 = t621->get_first_token( ).
                      t618 = t620.
                    ELSE.
                      DATA t622 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t622.
                      t618 = t622.
                    ENDIF.
                    DATA(t623) = t506.
                    DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t624.
                    DATA(t625) = |Write To|.
                    CLEAR t624.
                    CREATE OBJECT t624.
                    t624->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                    t624->sval = t625.
                    DATA t626 TYPE string.
                    DATA(t627) = t3.
                    t626 = t627->filename.
                    DATA t628 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t628.
                    DATA(t629) = abap_true.
                    IF t629 = abap_true.
                      DATA(t630) = t562.
                      t628 = t630.
                    ELSE.
                      DATA t631 TYPE REF TO zcl_lnt_ireference_extras.
                      CLEAR t631.
                      t628 = t631.
                    ENDIF.
                    t616->add_reference( i_usage = t618 i_referencing = t623 i_type_9913 = t624 i_filename = t626 i_extra = t628 ).
                  ENDIF.
                ELSE.
                  DATA(t632) = VALUE string( ).
                  DATA(t633) = VALUE string( ).
                  DATA(t634) = |ComponentChain, not a structure, |.
                  DATA(t635) = VALUE string( ).
                  DATA t636 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t636.
                  DATA t637 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t637.
                  DATA t638 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t638.
                  DATA t639 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t639.
                  DATA t640 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t641 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t642) = t1.
                  t641 = t642.
                  t640 = t641.
                  DATA t643 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t643.
                  DATA(t644) = VALUE abap_bool( ).
                  DATA(t645) = t640.
                  IF t645 IS INITIAL.
                    t644 = abap_true.
                  ENDIF.
                  IF t644 = abap_true.
                    DATA t646 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                    CLEAR t646.
                    t643 = t646.
                  ELSE.
                    DATA t647 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                    DATA(t648) = t640.
                    t647 = t648->zlnt_builtin_clas_3f891b097658( ).
                    t643 = t647.
                  ENDIF.
                  t639 = t643.
                  t638 = t639.
                  DATA t649 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t649.
                  DATA(t650) = VALUE abap_bool( ).
                  DATA(t651) = t638.
                  IF t651 IS INITIAL.
                    t650 = abap_true.
                  ENDIF.
                  IF t650 = abap_true.
                    DATA t652 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t652.
                    t649 = t652.
                  ELSE.
                    DATA t653 TYPE string.
                    DATA t654 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                    DATA(t655) = t638.
                    t654 = t655.
                    t653 = t654->name.
                    DATA(t656) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t656->has = abap_true.
                    t656->value = t653.
                    t649 = t656.
                  ENDIF.
                  t637 = t649.
                  t636 = t637.
                  DATA(t657) = VALUE string( ).
                  DATA(t658) = VALUE abap_bool( ).
                  DATA(t659) = t636.
                  IF t659 IS INITIAL.
                    t658 = abap_true.
                  ELSEIF t659->has = abap_false.
                    t658 = abap_true.
                  ENDIF.
                  IF t658 = abap_true.
                    DATA(t660) = |undefined|.
                    t657 = t660.
                  ELSE.
                    DATA t661 TYPE string.
                    DATA(t662) = t636.
                    t661 = t662->value.
                    t657 = t661.
                  ENDIF.
                  t635 = t657.
                  DATA(t663) = strlen( t634 ).
                  t633 = |{ t634 }{ t635 }|.
                  t632 = t633.
                  DATA t664 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t665) = t3.
                  t664 = t665->issues.
                  DATA t666 TYPE REF TO zcl_lnt_issue.
                  DATA(t667) = t3.
                  DATA t668 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t669) = t37.
                  t668 = t669->get_first_token( ).
                  DATA(t670) = t632.
                  DATA t671 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t671.
                  t666 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t667 i_token = t668 i_message_26cb = t670 i_fix = t671 ).
                  t664->load( ).
                  APPEND t666 TO t664->items.
                  t664->save( ).
                  DATA t672 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t672.
                  DATA t673 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t673.
                  DATA(t674) = abap_true.
                  IF t674 = abap_true.
                    DATA(t675) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t676) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t676->has = abap_true.
                    t676->value = t675.
                    t673 = t676.
                  ELSE.
                    DATA t677 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t677.
                    t673 = t677.
                  ENDIF.
                  DATA t678 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t678.
                  t672 = zcl_lnt_void_type=>get_db65( i_voided = t673 i_qualified_name = t678 ).
                  result = t672.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t679 TYPE i.
      DATA(t680) = t19.
      DATA(t681) = 1.
      t679 = t680 + t681.
      t19 = t679.
    ENDDO.
    DATA t682 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t682.
    DATA(t683) = abap_true.
    IF t683 = abap_true.
      DATA t684 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t685) = t1.
      t684 = t685.
      t682 = t684.
    ELSE.
      DATA t686 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t686.
      t682 = t686.
    ENDIF.
    result = t682.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d787_542025a81743.
  ENDMETHOD.
ENDCLASS.
