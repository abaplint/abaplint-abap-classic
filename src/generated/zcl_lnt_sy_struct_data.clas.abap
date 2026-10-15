* TS: src/abap/5_syntax/structures/data.ts:20:1 Data
CLASS zcl_lnt_sy_struct_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    CLASS-METHODS run_common_part_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_struct_data IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zif_lnt_union_1e9858bf.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_union_1e9858bf.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_node.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t10.
    DATA(t11) = t1.
    t10 = t11.
    DATA t12 TYPE REF TO zif_lnt_node.
    CLEAR t12.
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA t14 TYPE REF TO zif_lnt_node.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t15.
      DATA(t16) = t10.
      t15 = t16->children.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      t15->load( ).
      CLEAR t17.
      READ TABLE t15->items INDEX 1 INTO t17.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t14.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t17.
        DATA t19 TYPE REF TO object.
        CLEAR t19.
        t19 = t18->as_ref( ).
        t14 ?= t19.
      ELSE.
        t14 ?= t17.
      ENDIF.
      t12 = t14.
    ELSE.
      DATA t20 TYPE REF TO zif_lnt_node.
      CLEAR t20.
      t12 = t20.
    ENDIF.
    t9 = t12.
    t8 ?= t9.
    t7 = t8.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t7.
    IF t23 IS INITIAL.
      t22 = abap_true.
    ENDIF.
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t24.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t25.
      DATA t26 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t26.
      DATA(t27) = t7.
      t26 = t27.
      t25 = t26->get_children( ).
      t21 = t25.
    ENDIF.
    t6 = t21.
    t5 = t6.
    DATA t28 TYPE REF TO zif_lnt_union_1e9858bf.
    CLEAR t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t5.
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    IF t29 = abap_true.
      DATA t31 TYPE REF TO zif_lnt_union_1e9858bf.
      CLEAR t31.
      t28 = t31.
    ELSE.
      DATA t32 TYPE REF TO zif_lnt_union_1e9858bf.
      CLEAR t32.
      DATA t33 TYPE REF TO zif_lnt_node.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t34.
      DATA(t35) = t5.
      t34 = t35.
      DATA t36 TYPE REF TO object.
      CLEAR t36.
      t34->load( ).
      CLEAR t36.
      READ TABLE t34->items INDEX 4 INTO t36.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      CLEAR t33.
      IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t37 ?= t36.
        DATA t38 TYPE REF TO object.
        CLEAR t38.
        t38 = t37->as_ref( ).
        t33 ?= t38.
      ELSE.
        t33 ?= t36.
      ENDIF.
      t32 ?= t33.
      t28 = t32.
    ENDIF.
    t4 = t28.
    t3 = t4.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = VALUE abap_bool( ).
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = t3.
    t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_token_node ).
    t40 = t41.
    IF t41 = abap_true.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = VALUE string( ).
      DATA(t45) = VALUE string( ).
      DATA t46 TYPE REF TO zcl_lnt_token_node.
      CLEAR t46.
      DATA t47 TYPE REF TO zcl_lnt_token_node.
      CLEAR t47.
      DATA(t48) = t3.
      DATA t49 TYPE REF TO object.
      CLEAR t49.
      t49 = t48.
      t47 ?= t49.
      t46 = t47.
      DATA(t50) = VALUE string( ).
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t51.
      DATA t52 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t52.
      DATA(t53) = t46.
      t52 = t53->token.
      t51 = t52.
      DATA(t54) = VALUE string( ).
      DATA(t55) = t51.
      t54 = t55->str.
      t50 = t54.
      t45 = t50.
      DATA(t56) = strlen( t45 ).
      t44 = t45.
      IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t44 TO UPPER CASE.
      ELSE.
        t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
      ENDIF.
      DATA(t57) = |COMMON|.
      t43 = xsdbool( t44 = t57 ).
      t40 = t43.
    ENDIF.
    t39 = t40.
    DATA(t58) = t39.
    IF t58 = abap_true.
      DATA(t59) = t1.
      DATA(t60) = t2.
      zcl_lnt_sy_struct_data=>run_common_part_syntax( i_node = t59 i_input_967e = t60 ).
      DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t61.
      result = t61.
      RETURN.
    ENDIF.
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t62.
    DATA t63 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t63.
    DATA t64 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t64.
    DATA(t65) = t1.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t64 = t65->find_first_expression( i_type_9913 = t66 ).
    t63 = t64.
    t62 = t63.
    DATA t67 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t67.
    DATA t68 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t68.
    DATA(t69) = t62.
    t68 = t69->get_first_token( ).
    t67 = t68.
    DATA(t70) = VALUE abap_bool( ).
    DATA(t71) = VALUE f( ).
    DATA t72 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t72.
    DATA(t73) = t62.
    t72 = t73.
    DATA(t74) = VALUE f( ).
    DATA(t75) = t72.
    t74 = t75->token_count.
    t71 = t74.
    DATA(t76) = CONV f( 1 ).
    t70 = xsdbool( t71 > t76 ).
    IF t70 = abap_true.
      DATA t77 TYPE REF TO zcl_lnt_lx_identifier.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_position.
      CLEAR t78.
      DATA t79 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t79.
      DATA(t80) = t67.
      t79 = t80.
      DATA t81 TYPE REF TO zcl_lnt_position.
      CLEAR t81.
      DATA(t82) = t79.
      t81 = t82->start.
      t78 = t81.
      DATA(t83) = VALUE string( ).
      DATA(t84) = t62.
      t83 = t84->concat_tokens( ).
      t77 = NEW zcl_lnt_lx_identifier( i_start = t78 i_str = t83 ).
      t67 = t77.
    ENDIF.
    DATA(t85) = VALUE abap_bool( ).
    DATA(t86) = abap_false.
    t85 = t86.
    DATA t87 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t89.
    DATA(t90) = NEW zlnt_runtime_map__a1006b231250( ).
    t89 = t90.
    DATA(t91) = t89.
    t88 = t91.
    t87 = t88.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t93.
    CREATE OBJECT t93.
    t92 = t93.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t95.
    DATA t96 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t96.
    DATA(t97) = t1.
    t96 = t97.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t98.
    DATA(t99) = t96.
    t98 = t99->children.
    t95 = t98.
    t94 ?= t95.
    DATA t100 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t100.
    DATA t101 TYPE REF TO object.
    CLEAR t101.
    DATA(t102) = VALUE i( ).
    DO.
      t94->load( ).
      IF t102 >= lines( t94->items ).
        EXIT.
      ENDIF.
      CLEAR t101.
      READ TABLE t94->items INDEX t102 + 1 INTO t101.
      t102 = t102 + 1.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t103.
      CLEAR t100.
      IF t101 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t103 ?= t101.
        DATA t104 TYPE REF TO object.
        CLEAR t104.
        t104 = t103->as_ref( ).
        t100 ?= t104.
      ELSE.
        t100 ?= t101.
      ENDIF.
      DATA t105 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t105.
      DATA t106 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t106.
      DATA t107 TYPE REF TO object.
      CLEAR t107.
      DATA(t108) = t100.
      t107 = t108->get_db65( ).
      DATA t109 TYPE REF TO object.
      CLEAR t109.
      t109 = t107.
      t106 ?= t109.
      t105 = t106.
      DATA(t110) = VALUE abap_bool( ).
      DATA(t111) = VALUE abap_bool( ).
      DATA(t112) = t100.
      t111 = xsdbool( t112 IS BOUND AND t112 IS INSTANCE OF zcl_lnt_statement_node ).
      t110 = t111.
      IF t111 = abap_true.
        DATA(t113) = VALUE abap_bool( ).
        DATA(t114) = t105.
        t113 = xsdbool( t114 IS BOUND AND t114 IS INSTANCE OF zcl_lnt_st_data ).
        t110 = t113.
      ENDIF.
      IF t110 = abap_true.
        DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t115.
        DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t116.
        DATA(t117) = NEW zcl_lnt_sy_statem_data( ).
        DATA t118 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t118.
        DATA(t119) = t100.
        DATA t120 TYPE REF TO object.
        CLEAR t120.
        t120 = t119.
        t118 ?= t120.
        DATA(t121) = t2.
        t116 = t117->run_syntax( i_node = t118 i_input_967e = t121 ).
        t115 = t116.
        DATA(t122) = VALUE abap_bool( ).
        DATA(t123) = t115.
        t122 = xsdbool( t123 IS BOUND ).
        IF t122 = abap_true.
          DATA(t124) = t92.
          DATA t125 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t125.
          DATA(t126) = VALUE string( ).
          DATA(t127) = VALUE string( ).
          DATA t128 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t128.
          DATA t129 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t129.
          DATA(t130) = t115.
          t129 = t130.
          t128 = t129.
          DATA(t131) = VALUE string( ).
          DATA(t132) = VALUE string( ).
          DATA(t133) = VALUE string( ).
          DATA t134 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t134.
          DATA t135 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t135.
          DATA(t136) = t128.
          t135 = t136->token.
          t134 = t135.
          DATA(t137) = VALUE string( ).
          DATA(t138) = t134.
          t137 = t138->str.
          t133 = t137.
          t132 = t133.
          DATA(t139) = VALUE abap_bool( ).
          DATA(t140) = VALUE string( ).
          DATA(t141) = t132.
          DATA(t142) = 0.
          DATA(t143) = 1.
          DATA(t144) = strlen( t141 ).
          IF t142 < 0.
            t142 = t142 + t144.
            IF t142 < 0.
              t142 = 0.
            ENDIF.
          ENDIF.
          IF t142 > t144 OR t143 <= 0.
            CLEAR t140.
          ELSE.
            IF t143 > t144 - t142.
              t143 = t144 - t142.
            ENDIF.
            t140 = t141+t142(t143).
          ENDIF.
          DATA(t145) = |!|.
          t139 = xsdbool( t140 = t145 ).
          IF t139 = abap_true.
            DATA(t146) = VALUE string( ).
            DATA(t147) = VALUE string( ).
            DATA(t148) = t132.
            t147 = t148.
            DATA(t149) = VALUE string( ).
            DATA(t150) = t147.
            DATA(t151) = 1.
            DATA(t152) = VALUE i( ).
            DATA(t153) = t147.
            DATA(t154) = strlen( t153 ).
            t152 = t154.
            DATA(t155) = strlen( t150 ).
            IF t151 < 0.
              t151 = t151 + t155.
              IF t151 < 0.
                t151 = 0.
              ENDIF.
            ENDIF.
            IF t151 > t155 OR t152 <= 0.
              CLEAR t149.
            ELSE.
              IF t152 > t155 - t151.
                t152 = t155 - t151.
              ENDIF.
              t149 = t150+t151(t152).
            ENDIF.
            t146 = t149.
            t132 = t146.
          ENDIF.
          DATA(t156) = t132.
          t131 = t156.
          t127 = t131.
          t126 = t127.
          DATA t157 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t157.
          DATA t158 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t158.
          DATA t159 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t159.
          DATA t160 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t160.
          DATA(t161) = t115.
          t160 = t161.
          t159 = t160.
          DATA t162 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t162.
          DATA(t163) = t159.
          t162 = t163->type_cba0.
          t158 = t162.
          t157 = t158.
          DATA t164 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t164.
          DATA t165 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t165.
          t164 = t165.
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t166.
          DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t167.
          t166 = t167.
          t125 = NEW zcl_lnt_istructure_component( i_name = t126 i_type_9913 = t157 i_as_include = t164 i_suffix = t166 ).
          CREATE OBJECT t125->zlnt_view_ownkeys_b0e8086400eb.
          t125->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t168.
          IF t125->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t125->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t168 ).
          ENDIF.
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t125->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t125->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t169 ).
          ENDIF.
          CREATE OBJECT t125->zlnt_json_ownkeys_70e5fd461788.
          t125->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t170) = |name|.
          DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t171.
          IF t125->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t125->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
          ENDIF.
          DATA(t172) = |type|.
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          IF t125->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t125->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
          ENDIF.
          t124->load( ).
          APPEND t125 TO t124->items.
          t124->save( ).
          DATA(t174) = VALUE abap_bool( ).
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t175.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t176.
          DATA t177 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t177.
          DATA t178 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t178.
          DATA(t179) = t115.
          t178 = t179.
          t177 = t178.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t180.
          DATA(t181) = t177.
          t180 = t181->value.
          t176 = t180.
          t175 = t176.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t182.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          t182 = t183.
          DATA(t184) = VALUE abap_bool( ).
          DATA(t185) = VALUE abap_bool( ).
          DATA(t186) = t175.
          IF t186 IS INITIAL.
            t185 = abap_true.
          ENDIF.
          t184 = xsdbool( t185 = abap_false ).
          t174 = t184.
          IF t174 = abap_true.
            DATA t187 TYPE REF TO zlnt_runtime_map__a1006b231250.
            CLEAR t187.
            DATA(t188) = t87.
            DATA(t189) = VALUE string( ).
            DATA t190 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t190.
            DATA t191 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t191.
            DATA(t192) = t115.
            t191 = t192.
            t190 = t191.
            DATA(t193) = VALUE string( ).
            DATA(t194) = VALUE string( ).
            DATA(t195) = VALUE string( ).
            DATA t196 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t196.
            DATA t197 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t197.
            DATA(t198) = t190.
            t197 = t198->token.
            t196 = t197.
            DATA(t199) = VALUE string( ).
            DATA(t200) = t196.
            t199 = t200->str.
            t195 = t199.
            t194 = t195.
            DATA(t201) = VALUE abap_bool( ).
            DATA(t202) = VALUE string( ).
            DATA(t203) = t194.
            DATA(t204) = 0.
            DATA(t205) = 1.
            DATA(t206) = strlen( t203 ).
            IF t204 < 0.
              t204 = t204 + t206.
              IF t204 < 0.
                t204 = 0.
              ENDIF.
            ENDIF.
            IF t204 > t206 OR t205 <= 0.
              CLEAR t202.
            ELSE.
              IF t205 > t206 - t204.
                t205 = t206 - t204.
              ENDIF.
              t202 = t203+t204(t205).
            ENDIF.
            DATA(t207) = |!|.
            t201 = xsdbool( t202 = t207 ).
            IF t201 = abap_true.
              DATA(t208) = VALUE string( ).
              DATA(t209) = VALUE string( ).
              DATA(t210) = t194.
              t209 = t210.
              DATA(t211) = VALUE string( ).
              DATA(t212) = t209.
              DATA(t213) = 1.
              DATA(t214) = VALUE i( ).
              DATA(t215) = t209.
              DATA(t216) = strlen( t215 ).
              t214 = t216.
              DATA(t217) = strlen( t212 ).
              IF t213 < 0.
                t213 = t213 + t217.
                IF t213 < 0.
                  t213 = 0.
                ENDIF.
              ENDIF.
              IF t213 > t217 OR t214 <= 0.
                CLEAR t211.
              ELSE.
                IF t214 > t217 - t213.
                  t214 = t217 - t213.
                ENDIF.
                t211 = t212+t213(t214).
              ENDIF.
              t208 = t211.
              t194 = t208.
            ENDIF.
            DATA(t218) = t194.
            t193 = t218.
            t189 = t193.
            DATA(t219) = VALUE string( ).
            DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t220.
            DATA t221 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t221.
            DATA t222 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t222.
            DATA(t223) = t115.
            t222 = t223.
            t221 = t222.
            DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t224.
            DATA(t225) = t221.
            t224 = t225->value.
            t220 = t224.
            t219 = t220->as_string( ).
            t187 = t188->set( p0 = t189 p1 = t219 ).
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t226) = VALUE abap_bool( ).
        DATA(t227) = VALUE abap_bool( ).
        DATA(t228) = t100.
        t227 = xsdbool( t228 IS BOUND AND t228 IS INSTANCE OF zcl_lnt_structure_node ).
        t226 = t227.
        IF t227 = abap_true.
          DATA(t229) = VALUE abap_bool( ).
          DATA(t230) = t105.
          t229 = xsdbool( t230 IS BOUND AND t230 IS INSTANCE OF zcl_lnt_sr_data ).
          t226 = t229.
        ENDIF.
        IF t226 = abap_true.
          DATA t231 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t231.
          DATA t232 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t232.
          DATA t233 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t233.
          DATA(t234) = t100.
          DATA t235 TYPE REF TO object.
          CLEAR t235.
          t235 = t234.
          t233 ?= t235.
          DATA(t236) = t2.
          t232 = zcl_lnt_sy_struct_data=>run_syntax( i_node = t233 i_input_967e = t236 ).
          t231 = t232.
          DATA(t237) = VALUE abap_bool( ).
          DATA(t238) = t231.
          t237 = xsdbool( t238 IS BOUND ).
          IF t237 = abap_true.
            DATA(t239) = t92.
            DATA t240 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t240.
            DATA(t241) = VALUE string( ).
            DATA(t242) = VALUE string( ).
            DATA t243 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t243.
            DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t244.
            DATA(t245) = t231.
            t244 = t245.
            t243 = t244.
            DATA(t246) = VALUE string( ).
            DATA(t247) = VALUE string( ).
            DATA(t248) = VALUE string( ).
            DATA t249 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t249.
            DATA t250 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t250.
            DATA(t251) = t243.
            t250 = t251->token.
            t249 = t250.
            DATA(t252) = VALUE string( ).
            DATA(t253) = t249.
            t252 = t253->str.
            t248 = t252.
            t247 = t248.
            DATA(t254) = VALUE abap_bool( ).
            DATA(t255) = VALUE string( ).
            DATA(t256) = t247.
            DATA(t257) = 0.
            DATA(t258) = 1.
            DATA(t259) = strlen( t256 ).
            IF t257 < 0.
              t257 = t257 + t259.
              IF t257 < 0.
                t257 = 0.
              ENDIF.
            ENDIF.
            IF t257 > t259 OR t258 <= 0.
              CLEAR t255.
            ELSE.
              IF t258 > t259 - t257.
                t258 = t259 - t257.
              ENDIF.
              t255 = t256+t257(t258).
            ENDIF.
            DATA(t260) = |!|.
            t254 = xsdbool( t255 = t260 ).
            IF t254 = abap_true.
              DATA(t261) = VALUE string( ).
              DATA(t262) = VALUE string( ).
              DATA(t263) = t247.
              t262 = t263.
              DATA(t264) = VALUE string( ).
              DATA(t265) = t262.
              DATA(t266) = 1.
              DATA(t267) = VALUE i( ).
              DATA(t268) = t262.
              DATA(t269) = strlen( t268 ).
              t267 = t269.
              DATA(t270) = strlen( t265 ).
              IF t266 < 0.
                t266 = t266 + t270.
                IF t266 < 0.
                  t266 = 0.
                ENDIF.
              ENDIF.
              IF t266 > t270 OR t267 <= 0.
                CLEAR t264.
              ELSE.
                IF t267 > t270 - t266.
                  t267 = t270 - t266.
                ENDIF.
                t264 = t265+t266(t267).
              ENDIF.
              t261 = t264.
              t247 = t261.
            ENDIF.
            DATA(t271) = t247.
            t246 = t271.
            t242 = t246.
            t241 = t242.
            DATA t272 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t272.
            DATA t273 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t273.
            DATA t274 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t274.
            DATA t275 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t275.
            DATA(t276) = t231.
            t275 = t276.
            t274 = t275.
            DATA t277 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t277.
            DATA(t278) = t274.
            t277 = t278->type_cba0.
            t273 = t277.
            t272 = t273.
            DATA t279 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t279.
            DATA t280 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t280.
            t279 = t280.
            DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t281.
            DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t282.
            t281 = t282.
            t240 = NEW zcl_lnt_istructure_component( i_name = t241 i_type_9913 = t272 i_as_include = t279 i_suffix = t281 ).
            CREATE OBJECT t240->zlnt_view_ownkeys_b0e8086400eb.
            t240->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t283.
            IF t240->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t283 ).
            ENDIF.
            DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t284.
            IF t240->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t284 ).
            ENDIF.
            CREATE OBJECT t240->zlnt_json_ownkeys_70e5fd461788.
            t240->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t285) = |name|.
            DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t286.
            IF t240->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
            ENDIF.
            DATA(t287) = |type|.
            DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t288.
            IF t240->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = t287 p1 = t288 ).
            ENDIF.
            t239->load( ).
            APPEND t240 TO t239->items.
            t239->save( ).
          ENDIF.
        ELSE.
          DATA(t289) = VALUE abap_bool( ).
          DATA(t290) = VALUE abap_bool( ).
          DATA(t291) = t100.
          t290 = xsdbool( t291 IS BOUND AND t291 IS INSTANCE OF zcl_lnt_statement_node ).
          t289 = t290.
          IF t290 = abap_true.
            DATA(t292) = VALUE abap_bool( ).
            DATA(t293) = t105.
            t292 = xsdbool( t293 IS BOUND AND t293 IS INSTANCE OF zcl_lnt_data_begin ).
            t289 = t292.
          ENDIF.
          IF t289 = abap_true.
            DATA(t294) = VALUE abap_bool( ).
            DATA t295 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t295.
            DATA t296 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t296.
            DATA(t297) = t100.
            DATA t298 TYPE REF TO object.
            CLEAR t298.
            t298 = t297.
            t296 ?= t298.
            DATA(t299) = |OCCURS|.
            t295 = t296->find_direct_token_by_text( i_text = t299 ).
            t294 = xsdbool( t295 IS BOUND ).
            IF t294 = abap_true.
              DATA(t300) = abap_true.
              t85 = t300.
            ENDIF.
          ELSE.
            DATA(t301) = VALUE abap_bool( ).
            DATA(t302) = VALUE abap_bool( ).
            DATA(t303) = t100.
            t302 = xsdbool( t303 IS BOUND AND t303 IS INSTANCE OF zcl_lnt_statement_node ).
            t301 = t302.
            IF t302 = abap_true.
              DATA(t304) = VALUE abap_bool( ).
              DATA(t305) = t105.
              t304 = xsdbool( t305 IS BOUND AND t305 IS INSTANCE OF zcl_lnt_st_include_type ).
              t301 = t304.
            ENDIF.
            IF t301 = abap_true.
              DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t306.
              DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t307.
              DATA(t308) = NEW zcl_lnt_sy_include_type( ).
              DATA t309 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t309.
              DATA(t310) = t100.
              DATA t311 TYPE REF TO object.
              CLEAR t311.
              t311 = t310.
              t309 ?= t311.
              DATA(t312) = t2.
              t307 = t308->run_syntax( i_node = t309 i_input_967e = t312 ).
              t306 = t307.
              DATA(t313) = VALUE abap_bool( ).
              DATA(t314) = t306.
              IF t314 IS BOUND AND t314->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t313 = xsdbool( t314->oval IS INSTANCE OF zcl_lnt_void_type ).
              ENDIF.
              IF t313 = abap_true.
                DATA(t315) = VALUE abap_bool( ).
                DATA(t316) = t85.
                DATA(t317) = abap_true.
                t315 = xsdbool( t316 = t317 ).
                IF t315 = abap_true.
                  DATA t318 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t318.
                  DATA t319 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t319.
                  DATA t320 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t320.
                  DATA(t321) = t306.
                  CLEAR t320.
                  IF t321 IS BOUND.
                    IF t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      TRY.
                          t320 ?= t321->oval.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                    ENDIF.
                    IF t320 IS NOT BOUND.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
                    ENDIF.
                  ENDIF.
                  DATA t322 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t322.
                  DATA(t323) = VALUE abap_bool( ).
                  DATA(t324) = abap_true.
                  t323 = t324.
                  DATA(t325) = VALUE string( ).
                  DATA(t326) = |DEFAULT|.
                  t325 = t326.
                  DATA t327 TYPE REF TO zcl_lnt_itable_key.
                  CLEAR t327.
                  DATA t328 TYPE REF TO zcl_lnt_itable_key.
                  CLEAR t328.
                  t327 = t328.
                  DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t329.
                  DATA t330 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t330.
                  t329 = t330.
                  t322 = NEW zcl_lnt_itable_options( i_with_header = t323 i_key_type = t325 i_primary_key = t327 i_secondary = t329 ).
                  CREATE OBJECT t322->zlnt_view_ownkeys_b0e8086400eb.
                  t322->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t331.
                  IF t322->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t331 ).
                  ENDIF.
                  DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t332.
                  IF t322->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t332 ).
                  ENDIF.
                  CREATE OBJECT t322->zlnt_json_ownkeys_70e5fd461788.
                  t322->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t333) = |withHeader|.
                  DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t334.
                  IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t333 p1 = t334 ).
                  ENDIF.
                  DATA(t335) = |keyType|.
                  DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t336.
                  IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t335 p1 = t336 ).
                  ENDIF.
                  DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t337.
                  DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t338.
                  t319 = NEW zcl_lnt_ty_table_type( i_row_type = t320 i_options = t322 i_qualified_name = t337 i_description = t338 ).
                  t318 = t319.
                  DATA t339 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t339.
                  DATA(t340) = abap_true.
                  IF t340 = abap_true.
                    DATA t341 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t341.
                    DATA(t342) = t67.
                    DATA(t343) = VALUE string( ).
                    DATA(t344) = t2.
                    t343 = t344->filename.
                    DATA(t345) = t318.
                    DATA t346 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t346.
                    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t347.
                    t341 = NEW zcl_lnt_typed_identifier( i_token = t342 i_filename = t343 i_type_9913 = t345 i_meta = t346 i_value = t347 ).
                    t339 = t341.
                  ELSE.
                    DATA t348 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t348.
                    t339 = t348.
                  ENDIF.
                  result = t339.
                  RETURN.
                ELSE.
                  DATA t349 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t349.
                  DATA(t350) = abap_true.
                  IF t350 = abap_true.
                    DATA t351 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t351.
                    DATA(t352) = t67.
                    DATA(t353) = VALUE string( ).
                    DATA(t354) = t2.
                    t353 = t354->filename.
                    DATA t355 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t355.
                    DATA(t356) = t306.
                    CLEAR t355.
                    IF t356 IS BOUND.
                      IF t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        TRY.
                            t355 ?= t356->oval.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                      ENDIF.
                      IF t355 IS NOT BOUND.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
                      ENDIF.
                    ENDIF.
                    DATA t357 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t357.
                    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t358.
                    t351 = NEW zcl_lnt_typed_identifier( i_token = t352 i_filename = t353 i_type_9913 = t355 i_meta = t357 i_value = t358 ).
                    t349 = t351.
                  ELSE.
                    DATA t359 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t359.
                    t349 = t359.
                  ENDIF.
                  result = t349.
                  RETURN.
                ENDIF.
              ELSE.
                DATA(t360) = VALUE abap_bool( ).
                DATA(t361) = t306.
                IF t361 IS BOUND AND t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t360 = xsdbool( t361->oval IS INSTANCE OF zcl_lnt_unknown_type ).
                ENDIF.
                IF t360 = abap_true.
                  DATA t362 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t362.
                  DATA(t363) = abap_true.
                  IF t363 = abap_true.
                    DATA t364 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t364.
                    DATA(t365) = t67.
                    DATA(t366) = VALUE string( ).
                    DATA(t367) = t2.
                    t366 = t367->filename.
                    DATA t368 TYPE REF TO zcl_lnt_unknown_type.
                    CLEAR t368.
                    DATA(t369) = t306.
                    CLEAR t368.
                    IF t369 IS BOUND.
                      IF t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        TRY.
                            t368 ?= t369->oval.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                      ENDIF.
                      IF t368 IS NOT BOUND.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
                      ENDIF.
                    ENDIF.
                    DATA t370 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t370.
                    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t371.
                    t364 = NEW zcl_lnt_typed_identifier( i_token = t365 i_filename = t366 i_type_9913 = t368 i_meta = t370 i_value = t371 ).
                    t362 = t364.
                  ELSE.
                    DATA t372 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t372.
                    t362 = t372.
                  ENDIF.
                  result = t362.
                  RETURN.
                ENDIF.
              ENDIF.
              DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t373.
              DATA(t374) = t306.
              CLEAR t373.
              IF t374 IS BOUND.
                IF t374->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  TRY.
                      t373 ?= t374->oval.
                    CATCH cx_sy_move_cast_error.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
                  ENDTRY.
                ELSEIF t374->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
                  CREATE OBJECT t373.
                  t373->source = t374.
                ELSE.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
                ENDIF.
                t373->load( ).
                DATA t375 TYPE REF TO object.
                CLEAR t375.
                DATA t376 TYPE REF TO zcl_lnt_istructure_component.
                CLEAR t376.
                LOOP AT t373->items INTO t375.
                  DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t377.
                  CLEAR t376.
                  IF t375 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                    t377 ?= t375.
                    CLEAR t376.
                    IF t377 IS BOUND.
                      IF t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        TRY.
                            t376 ?= t377->oval.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                      ENDIF.
                      IF t376 IS NOT BOUND.
                        IF t377->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t377->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t377->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t377->tag <>
                        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                          DATA t378 TYPE REF TO zlnt_view_storage_74017ca272ac.
                          CLEAR t378.
                          IF t377->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                          ENDIF.
                          TRY.
                              t378 ?= t377->oval.
                            CATCH cx_sy_move_cast_error.
                              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                          ENDTRY.
                          IF t378->structural( ) <> abap_true.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                          ENDIF.
                        ENDIF.
                        DATA(t379) = VALUE string( ).
                        DATA t380 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t380.
                        DATA t381 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t381.
                        DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t382.
                        t376 = NEW zcl_lnt_istructure_component( view_source = t377 i_name = t379 i_type_9913 = t380 i_as_include = t381 i_suffix = t382 ).
                      ENDIF.
                    ENDIF.
                  ELSE.
                    t376 ?= t375.
                  ENDIF.
                ENDLOOP.
              ENDIF.
              DATA t383 TYPE REF TO zcl_lnt_istructure_component.
              CLEAR t383.
              DATA t384 TYPE REF TO object.
              CLEAR t384.
              DATA(t385) = VALUE i( ).
              DO.
                t373->load( ).
                IF t385 >= lines( t373->items ).
                  EXIT.
                ENDIF.
                CLEAR t384.
                READ TABLE t373->items INDEX t385 + 1 INTO t384.
                t385 = t385 + 1.
                DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t386.
                CLEAR t383.
                IF t384 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t386 ?= t384.
                  CLEAR t383.
                  IF t386 IS BOUND.
                    IF t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      TRY.
                          t383 ?= t386->oval.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                    ENDIF.
                    IF t383 IS NOT BOUND.
                      IF t386->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t386->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t386->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t386->tag <>
                      zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                        DATA t387 TYPE REF TO zlnt_view_storage_74017ca272ac.
                        CLEAR t387.
                        IF t386->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                        ENDIF.
                        TRY.
                            t387 ?= t386->oval.
                          CATCH cx_sy_move_cast_error.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                        ENDTRY.
                        IF t387->structural( ) <> abap_true.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                        ENDIF.
                      ENDIF.
                      DATA(t388) = VALUE string( ).
                      DATA t389 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t389.
                      DATA t390 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t390.
                      DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t391.
                      t383 = NEW zcl_lnt_istructure_component( view_source = t386 i_name = t388 i_type_9913 = t389 i_as_include = t390 i_suffix = t391 ).
                    ENDIF.
                  ENDIF.
                ELSE.
                  t383 ?= t384.
                ENDIF.
                DATA(t392) = t92.
                DATA(t393) = t383.
                t392->load( ).
                APPEND t393 TO t392->items.
                t392->save( ).
              ENDDO.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t394) = VALUE abap_bool( ).
    DATA(t395) = t85.
    DATA(t396) = abap_true.
    t394 = xsdbool( t395 = t396 ).
    IF t394 = abap_true.
      DATA t397 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t397.
      DATA(t398) = abap_true.
      IF t398 = abap_true.
        DATA t399 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t399.
        DATA(t400) = t67.
        DATA(t401) = VALUE string( ).
        DATA(t402) = t2.
        t401 = t402->filename.
        DATA t403 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t403.
        DATA t404 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t404.
        DATA(t405) = t92.
        DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t406.
        DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t407.
        DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t408.
        t404 = NEW zcl_lnt_structure_type( i_components = t405 i_qualified_name = t406 i_ddic_name = t407 i_description = t408 ).
        DATA t409 TYPE REF TO zcl_lnt_itable_options.
        CLEAR t409.
        DATA(t410) = VALUE abap_bool( ).
        DATA(t411) = abap_true.
        t410 = t411.
        DATA(t412) = VALUE string( ).
        DATA(t413) = |DEFAULT|.
        t412 = t413.
        DATA t414 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t414.
        DATA t415 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t415.
        t414 = t415.
        DATA t416 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t416.
        DATA t417 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t417.
        t416 = t417.
        t409 = NEW zcl_lnt_itable_options( i_with_header = t410 i_key_type = t412 i_primary_key = t414 i_secondary = t416 ).
        CREATE OBJECT t409->zlnt_view_ownkeys_b0e8086400eb.
        t409->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t418.
        IF t409->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t409->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t418 ).
        ENDIF.
        DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t419.
        IF t409->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t409->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t419 ).
        ENDIF.
        CREATE OBJECT t409->zlnt_json_ownkeys_70e5fd461788.
        t409->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t420) = |withHeader|.
        DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t421.
        IF t409->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t409->zlnt_json_ownkeys_70e5fd461788->put( p0 = t420 p1 = t421 ).
        ENDIF.
        DATA(t422) = |keyType|.
        DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t423.
        IF t409->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t409->zlnt_json_ownkeys_70e5fd461788->put( p0 = t422 p1 = t423 ).
        ENDIF.
        DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t424.
        DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t425.
        t403 = NEW zcl_lnt_ty_table_type( i_row_type = t404 i_options = t409 i_qualified_name = t424 i_description = t425 ).
        DATA t426 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t426.
        DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t427.
        t399 = NEW zcl_lnt_typed_identifier( i_token = t400 i_filename = t401 i_type_9913 = t403 i_meta = t426 i_value = t427 ).
        t397 = t399.
      ELSE.
        DATA t428 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t428.
        t397 = t428.
      ENDIF.
      result = t397.
      RETURN.
    ELSE.
      DATA t429 TYPE REF TO zlnt_runtime_map__a1006b231250.
      CLEAR t429.
      DATA t430 TYPE REF TO zlnt_runtime_map__a1006b231250.
      CLEAR t430.
      DATA(t431) = VALUE abap_bool( ).
      DATA(t432) = VALUE i( ).
      DATA t433 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t433.
      DATA(t434) = t87.
      t433 = t434->keys( ).
      t433->load( ).
      t432 = lines( t433->items ).
      DATA(t435) = 0.
      t431 = xsdbool( t432 > t435 ).
      IF t431 = abap_true.
        DATA t436 TYPE REF TO zlnt_runtime_map__a1006b231250.
        CLEAR t436.
        DATA(t437) = abap_true.
        IF t437 = abap_true.
          DATA(t438) = t87.
          t436 = t438.
        ELSE.
          DATA t439 TYPE REF TO zlnt_runtime_map__a1006b231250.
          CLEAR t439.
          t436 = t439.
        ENDIF.
        t430 = t436.
      ELSE.
        DATA t440 TYPE REF TO zlnt_runtime_map__a1006b231250.
        CLEAR t440.
        t430 = t440.
      ENDIF.
      t429 = t430.
      DATA t441 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t441.
      DATA(t442) = abap_true.
      IF t442 = abap_true.
        DATA t443 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t443.
        DATA(t444) = t67.
        DATA(t445) = VALUE string( ).
        DATA(t446) = t2.
        t445 = t446->filename.
        DATA t447 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t447.
        DATA(t448) = t92.
        DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t449.
        DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t450.
        DATA t451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t451.
        t447 = NEW zcl_lnt_structure_type( i_components = t448 i_qualified_name = t449 i_ddic_name = t450 i_description = t451 ).
        DATA t452 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t452.
        DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t453.
        DATA(t454) = abap_true.
        IF t454 = abap_true.
          DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t455.
          DATA(t456) = t429.
          CLEAR t455.
          IF t456 IS BOUND.
            CLEAR t455.
            IF t456 IS BOUND.
              DATA t457 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t457.
              DATA t458 TYPE REF TO object.
              CLEAR t458.
              CLEAR t457.
              t458 = t456.
              TRY.
                  t455 ?= t458.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t455 IS NOT BOUND.
                TRY.
                    t457 ?= t456.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t457 IS BOUND.
                  t455 = t457->source( ).
                ENDIF.
                IF t455 IS NOT BOUND.
                  CREATE OBJECT t455.
                  t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t455->oval = t456.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
          t453 = t455.
        ELSE.
          DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t459.
          t453 = t459.
        ENDIF.
        t443 = NEW zcl_lnt_typed_identifier( i_token = t444 i_filename = t445 i_type_9913 = t447 i_meta = t452 i_value = t453 ).
        t441 = t443.
      ELSE.
        DATA t460 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t460.
        t441 = t460.
      ENDIF.
      result = t441.

    ENDIF.
  ENDMETHOD.

  METHOD run_common_part_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t3->load( ).
      IF t11 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t3->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t15 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t16 TYPE REF TO object.
      DATA(t17) = t9.
      t16 = t17->get_db65( ).
      DATA t18 TYPE REF TO object.
      t18 = t16.
      t15 ?= t18.
      t14 = t15.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      DATA(t21) = t9.
      t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_statement_node ).
      t19 = t20.
      IF t20 = abap_true.
        DATA t22 TYPE abap_bool.
        DATA(t23) = t14.
        t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_st_data ).
        t19 = t22.
      ENDIF.
      IF t19 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t25 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t26) = NEW zcl_lnt_sy_statem_data( ).
        DATA t27 TYPE REF TO zcl_lnt_statement_node.
        DATA(t28) = t9.
        DATA t29 TYPE REF TO object.
        t29 = t28.
        t27 ?= t29.
        DATA(t30) = t2.
        t25 = t26->run_syntax( i_node = t27 i_input_967e = t30 ).
        t24 = t25.
        DATA t31 TYPE abap_bool.
        DATA(t32) = t24.
        t31 = xsdbool( t32 IS BOUND ).
        IF t31 = abap_true.
          DATA t33 TYPE REF TO zcl_lnt_current_scope.
          DATA t34 TYPE REF TO zcl_lnt_current_scope.
          DATA(t35) = t2.
          t34 = t35->scope.
          t33 = t34.
          DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t36.
          DATA t37 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t37.
          DATA(t38) = abap_true.
          IF t38 = abap_true.
            DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t40) = t24.
            t39 = t40.
            t37 = t39.
          ELSE.
            DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t41.
            t37 = t41.
          ENDIF.
          t36 = t37.
          DATA(t42) = VALUE abap_bool( ).
          DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t44) = t36.
          t43 = t44.
          DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t46.
          t45 = t46.
          DATA(t47) = VALUE abap_bool( ).
          DATA(t48) = t43.
          IF t48 IS INITIAL.
            t47 = abap_true.
          ENDIF.
          t42 = t47.
          IF t42 = abap_true.
          ELSE.
            DATA(t49) = t33.
            DATA(t50) = VALUE string( ).
            DATA t51 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t53) = t36.
            t52 = t53.
            t51 = t52.
            DATA(t54) = VALUE string( ).
            DATA t55 TYPE string.
            DATA t56 TYPE string.
            DATA t57 TYPE REF TO zcl_lnt_abstract_token.
            DATA t58 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t59) = t51.
            t58 = t59->token.
            t57 = t58.
            DATA t60 TYPE string.
            DATA(t61) = t57.
            t60 = t61->str.
            t56 = t60.
            t55 = t56.
            DATA(t62) = VALUE abap_bool( ).
            DATA(t63) = VALUE string( ).
            DATA(t64) = t55.
            DATA(t65) = 0.
            DATA(t66) = 1.
            DATA(t67) = strlen( t64 ).
            IF t65 < 0.
              t65 = t65 + t67.
              IF t65 < 0.
                t65 = 0.
              ENDIF.
            ENDIF.
            IF t65 > t67 OR t66 <= 0.
              CLEAR t63.
            ELSE.
              IF t66 > t67 - t65.
                t66 = t67 - t65.
              ENDIF.
              t63 = t64+t65(t66).
            ENDIF.
            DATA(t68) = |!|.
            t62 = xsdbool( t63 = t68 ).
            IF t62 = abap_true.
              DATA(t69) = VALUE string( ).
              DATA t70 TYPE string.
              DATA(t71) = t55.
              t70 = t71.
              DATA(t72) = VALUE string( ).
              DATA(t73) = t70.
              DATA(t74) = 1.
              DATA t75 TYPE i.
              DATA(t76) = t70.
              DATA(t77) = strlen( t76 ).
              t75 = t77.
              DATA(t78) = strlen( t73 ).
              IF t74 < 0.
                t74 = t74 + t78.
                IF t74 < 0.
                  t74 = 0.
                ENDIF.
              ENDIF.
              IF t74 > t78 OR t75 <= 0.
                CLEAR t72.
              ELSE.
                IF t75 > t78 - t74.
                  t75 = t78 - t74.
                ENDIF.
                t72 = t73+t74(t75).
              ENDIF.
              t69 = t72.
              t55 = t69.
            ENDIF.
            DATA(t79) = t55.
            t54 = t79.
            t50 = t54.
            DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t81) = t36.
            t80 = t81.
            t49->add_named_identifier( i_name = t50 i_identifier = t80 ).
          ENDIF.
        ENDIF.
      ELSE.
        DATA t82 TYPE abap_bool.
        DATA t83 TYPE abap_bool.
        DATA(t84) = t9.
        t83 = xsdbool( t84 IS BOUND AND t84 IS INSTANCE OF zcl_lnt_structure_node ).
        t82 = t83.
        IF t83 = abap_true.
          DATA t85 TYPE abap_bool.
          DATA(t86) = t14.
          t85 = xsdbool( t86 IS BOUND AND t86 IS INSTANCE OF zcl_lnt_sr_data ).
          t82 = t85.
        ENDIF.
        IF t82 = abap_true.
          DATA t87 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t88 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t89 TYPE REF TO zcl_lnt_structure_node.
          DATA(t90) = t9.
          DATA t91 TYPE REF TO object.
          t91 = t90.
          t89 ?= t91.
          DATA(t92) = t2.
          t88 = zcl_lnt_sy_struct_data=>run_syntax( i_node = t89 i_input_967e = t92 ).
          t87 = t88.
          DATA t93 TYPE abap_bool.
          DATA(t94) = t87.
          t93 = xsdbool( t94 IS BOUND ).
          IF t93 = abap_true.
            DATA t95 TYPE REF TO zcl_lnt_current_scope.
            DATA t96 TYPE REF TO zcl_lnt_current_scope.
            DATA(t97) = t2.
            t96 = t97->scope.
            t95 = t96.
            DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t98.
            DATA t99 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t99.
            DATA(t100) = abap_true.
            IF t100 = abap_true.
              DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t102) = t87.
              t101 = t102.
              t99 = t101.
            ELSE.
              DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t103.
              t99 = t103.
            ENDIF.
            t98 = t99.
            DATA(t104) = VALUE abap_bool( ).
            DATA t105 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t106) = t98.
            t105 = t106.
            DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t108.
            t107 = t108.
            DATA(t109) = VALUE abap_bool( ).
            DATA(t110) = t105.
            IF t110 IS INITIAL.
              t109 = abap_true.
            ENDIF.
            t104 = t109.
            IF t104 = abap_true.
            ELSE.
              DATA(t111) = t95.
              DATA(t112) = VALUE string( ).
              DATA t113 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t114 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t115) = t98.
              t114 = t115.
              t113 = t114.
              DATA(t116) = VALUE string( ).
              DATA t117 TYPE string.
              DATA t118 TYPE string.
              DATA t119 TYPE REF TO zcl_lnt_abstract_token.
              DATA t120 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t121) = t113.
              t120 = t121->token.
              t119 = t120.
              DATA t122 TYPE string.
              DATA(t123) = t119.
              t122 = t123->str.
              t118 = t122.
              t117 = t118.
              DATA(t124) = VALUE abap_bool( ).
              DATA(t125) = VALUE string( ).
              DATA(t126) = t117.
              DATA(t127) = 0.
              DATA(t128) = 1.
              DATA(t129) = strlen( t126 ).
              IF t127 < 0.
                t127 = t127 + t129.
                IF t127 < 0.
                  t127 = 0.
                ENDIF.
              ENDIF.
              IF t127 > t129 OR t128 <= 0.
                CLEAR t125.
              ELSE.
                IF t128 > t129 - t127.
                  t128 = t129 - t127.
                ENDIF.
                t125 = t126+t127(t128).
              ENDIF.
              DATA(t130) = |!|.
              t124 = xsdbool( t125 = t130 ).
              IF t124 = abap_true.
                DATA(t131) = VALUE string( ).
                DATA t132 TYPE string.
                DATA(t133) = t117.
                t132 = t133.
                DATA(t134) = VALUE string( ).
                DATA(t135) = t132.
                DATA(t136) = 1.
                DATA t137 TYPE i.
                DATA(t138) = t132.
                DATA(t139) = strlen( t138 ).
                t137 = t139.
                DATA(t140) = strlen( t135 ).
                IF t136 < 0.
                  t136 = t136 + t140.
                  IF t136 < 0.
                    t136 = 0.
                  ENDIF.
                ENDIF.
                IF t136 > t140 OR t137 <= 0.
                  CLEAR t134.
                ELSE.
                  IF t137 > t140 - t136.
                    t137 = t140 - t136.
                  ENDIF.
                  t134 = t135+t136(t137).
                ENDIF.
                t131 = t134.
                t117 = t131.
              ENDIF.
              DATA(t141) = t117.
              t116 = t141.
              t112 = t116.
              DATA t142 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t143) = t98.
              t142 = t143.
              t111->add_named_identifier( i_name = t112 i_identifier = t142 ).
            ENDIF.
          ENDIF.
        ELSE.
          DATA t144 TYPE abap_bool.
          DATA t145 TYPE abap_bool.
          DATA(t146) = t9.
          t145 = xsdbool( t146 IS BOUND AND t146 IS INSTANCE OF zcl_lnt_statement_node ).
          t144 = t145.
          IF t145 = abap_true.
            DATA t147 TYPE abap_bool.
            DATA(t148) = t14.
            t147 = xsdbool( t148 IS BOUND AND t148 IS INSTANCE OF zcl_lnt_st_statem_type ).
            t144 = t147.
          ENDIF.
          IF t144 = abap_true.
            DATA t149 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t151) = NEW zcl_lnt_sy_type( ).
            DATA t152 TYPE REF TO zcl_lnt_statement_node.
            DATA(t153) = t9.
            DATA t154 TYPE REF TO object.
            t154 = t153.
            t152 ?= t154.
            DATA(t155) = t2.
            DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t156.
            t150 = t151->run_syntax( i_node = t152 i_input_967e = t155 i_qualified_name_prefix = t156 ).
            t149 = t150.
            DATA t157 TYPE abap_bool.
            DATA(t158) = t149.
            t157 = xsdbool( t158 IS BOUND ).
            IF t157 = abap_true.
              DATA t159 TYPE REF TO zcl_lnt_current_scope.
              DATA t160 TYPE REF TO zcl_lnt_current_scope.
              DATA(t161) = t2.
              t160 = t161->scope.
              t159 = t160.
              DATA t162 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t162.
              DATA t163 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t163.
              DATA(t164) = abap_true.
              IF t164 = abap_true.
                DATA t165 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t166) = t149.
                t165 = t166.
                t163 = t165.
              ELSE.
                DATA t167 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t167.
                t163 = t167.
              ENDIF.
              t162 = t163.
              DATA(t168) = VALUE abap_bool( ).
              DATA t169 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t170) = t162.
              t169 = t170.
              DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t172.
              t171 = t172.
              DATA(t173) = VALUE abap_bool( ).
              DATA(t174) = t169.
              IF t174 IS INITIAL.
                t173 = abap_true.
              ENDIF.
              t168 = t173.
              IF t168 = abap_true.
              ELSE.
                DATA(t175) = t159.
                DATA(t176) = VALUE string( ).
                DATA t177 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t178 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t179) = t162.
                t178 = t179.
                t177 = t178.
                DATA(t180) = VALUE string( ).
                DATA t181 TYPE string.
                DATA t182 TYPE string.
                DATA t183 TYPE REF TO zcl_lnt_abstract_token.
                DATA t184 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t185) = t177.
                t184 = t185->token.
                t183 = t184.
                DATA t186 TYPE string.
                DATA(t187) = t183.
                t186 = t187->str.
                t182 = t186.
                t181 = t182.
                DATA(t188) = VALUE abap_bool( ).
                DATA(t189) = VALUE string( ).
                DATA(t190) = t181.
                DATA(t191) = 0.
                DATA(t192) = 1.
                DATA(t193) = strlen( t190 ).
                IF t191 < 0.
                  t191 = t191 + t193.
                  IF t191 < 0.
                    t191 = 0.
                  ENDIF.
                ENDIF.
                IF t191 > t193 OR t192 <= 0.
                  CLEAR t189.
                ELSE.
                  IF t192 > t193 - t191.
                    t192 = t193 - t191.
                  ENDIF.
                  t189 = t190+t191(t192).
                ENDIF.
                DATA(t194) = |!|.
                t188 = xsdbool( t189 = t194 ).
                IF t188 = abap_true.
                  DATA(t195) = VALUE string( ).
                  DATA t196 TYPE string.
                  DATA(t197) = t181.
                  t196 = t197.
                  DATA(t198) = VALUE string( ).
                  DATA(t199) = t196.
                  DATA(t200) = 1.
                  DATA t201 TYPE i.
                  DATA(t202) = t196.
                  DATA(t203) = strlen( t202 ).
                  t201 = t203.
                  DATA(t204) = strlen( t199 ).
                  IF t200 < 0.
                    t200 = t200 + t204.
                    IF t200 < 0.
                      t200 = 0.
                    ENDIF.
                  ENDIF.
                  IF t200 > t204 OR t201 <= 0.
                    CLEAR t198.
                  ELSE.
                    IF t201 > t204 - t200.
                      t201 = t204 - t200.
                    ENDIF.
                    t198 = t199+t200(t201).
                  ENDIF.
                  t195 = t198.
                  t181 = t195.
                ENDIF.
                DATA(t205) = t181.
                t180 = t205.
                t176 = t180.
                DATA t206 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t206.
                DATA(t207) = abap_true.
                IF t207 = abap_true.
                  DATA t208 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t209) = t162.
                  t208 = t209.
                  t206 = t208.
                ELSE.
                  DATA t210 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t210.
                  t206 = t210.
                ENDIF.
                t175->add_type_named( i_name = t176 i_type_9913 = t206 ).
              ENDIF.
            ENDIF.
          ELSE.
            DATA t211 TYPE abap_bool.
            DATA t212 TYPE abap_bool.
            DATA(t213) = t9.
            t212 = xsdbool( t213 IS BOUND AND t213 IS INSTANCE OF zcl_lnt_structure_node ).
            t211 = t212.
            IF t212 = abap_true.
              DATA t214 TYPE abap_bool.
              DATA(t215) = t14.
              t214 = xsdbool( t215 IS BOUND AND t215 IS INSTANCE OF zcl_lnt_sr_types ).
              t211 = t214.
            ENDIF.
            IF t211 = abap_true.
              DATA t216 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t217 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t218) = NEW zcl_lnt_sy_types( ).
              DATA t219 TYPE REF TO zcl_lnt_structure_node.
              DATA(t220) = t9.
              DATA t221 TYPE REF TO object.
              t221 = t220.
              t219 ?= t221.
              DATA(t222) = t2.
              DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t223.
              t217 = t218->run_syntax( i_node = t219 i_input_967e = t222 i_qualified_name_prefix = t223 ).
              t216 = t217.
              DATA t224 TYPE abap_bool.
              DATA(t225) = t216.
              t224 = xsdbool( t225 IS BOUND ).
              IF t224 = abap_true.
                DATA t226 TYPE REF TO zcl_lnt_current_scope.
                DATA t227 TYPE REF TO zcl_lnt_current_scope.
                DATA(t228) = t2.
                t227 = t228->scope.
                t226 = t227.
                DATA t229 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t229.
                DATA t230 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t230.
                DATA(t231) = abap_true.
                IF t231 = abap_true.
                  DATA t232 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t233) = t216.
                  t232 = t233.
                  t230 = t232.
                ELSE.
                  DATA t234 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t234.
                  t230 = t234.
                ENDIF.
                t229 = t230.
                DATA(t235) = VALUE abap_bool( ).
                DATA t236 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t237) = t229.
                t236 = t237.
                DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t239.
                t238 = t239.
                DATA(t240) = VALUE abap_bool( ).
                DATA(t241) = t236.
                IF t241 IS INITIAL.
                  t240 = abap_true.
                ENDIF.
                t235 = t240.
                IF t235 = abap_true.
                ELSE.
                  DATA(t242) = t226.
                  DATA(t243) = VALUE string( ).
                  DATA t244 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA t245 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t246) = t229.
                  t245 = t246.
                  t244 = t245.
                  DATA(t247) = VALUE string( ).
                  DATA t248 TYPE string.
                  DATA t249 TYPE string.
                  DATA t250 TYPE REF TO zcl_lnt_abstract_token.
                  DATA t251 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t252) = t244.
                  t251 = t252->token.
                  t250 = t251.
                  DATA t253 TYPE string.
                  DATA(t254) = t250.
                  t253 = t254->str.
                  t249 = t253.
                  t248 = t249.
                  DATA(t255) = VALUE abap_bool( ).
                  DATA(t256) = VALUE string( ).
                  DATA(t257) = t248.
                  DATA(t258) = 0.
                  DATA(t259) = 1.
                  DATA(t260) = strlen( t257 ).
                  IF t258 < 0.
                    t258 = t258 + t260.
                    IF t258 < 0.
                      t258 = 0.
                    ENDIF.
                  ENDIF.
                  IF t258 > t260 OR t259 <= 0.
                    CLEAR t256.
                  ELSE.
                    IF t259 > t260 - t258.
                      t259 = t260 - t258.
                    ENDIF.
                    t256 = t257+t258(t259).
                  ENDIF.
                  DATA(t261) = |!|.
                  t255 = xsdbool( t256 = t261 ).
                  IF t255 = abap_true.
                    DATA(t262) = VALUE string( ).
                    DATA t263 TYPE string.
                    DATA(t264) = t248.
                    t263 = t264.
                    DATA(t265) = VALUE string( ).
                    DATA(t266) = t263.
                    DATA(t267) = 1.
                    DATA t268 TYPE i.
                    DATA(t269) = t263.
                    DATA(t270) = strlen( t269 ).
                    t268 = t270.
                    DATA(t271) = strlen( t266 ).
                    IF t267 < 0.
                      t267 = t267 + t271.
                      IF t267 < 0.
                        t267 = 0.
                      ENDIF.
                    ENDIF.
                    IF t267 > t271 OR t268 <= 0.
                      CLEAR t265.
                    ELSE.
                      IF t268 > t271 - t267.
                        t268 = t271 - t267.
                      ENDIF.
                      t265 = t266+t267(t268).
                    ENDIF.
                    t262 = t265.
                    t248 = t262.
                  ENDIF.
                  DATA(t272) = t248.
                  t247 = t272.
                  t243 = t247.
                  DATA t273 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t273.
                  DATA(t274) = abap_true.
                  IF t274 = abap_true.
                    DATA t275 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t276) = t229.
                    t275 = t276.
                    t273 = t275.
                  ELSE.
                    DATA t277 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t277.
                    t273 = t277.
                  ENDIF.
                  t242->add_type_named( i_name = t243 i_type_9913 = t273 ).
                ENDIF.
              ENDIF.
            ELSE.
              DATA t278 TYPE abap_bool.
              DATA t279 TYPE abap_bool.
              DATA(t280) = t9.
              t279 = xsdbool( t280 IS BOUND AND t280 IS INSTANCE OF zcl_lnt_statement_node ).
              t278 = t279.
              IF t279 = abap_true.
                DATA t281 TYPE abap_bool.
                DATA(t282) = t14.
                t281 = xsdbool( t282 IS BOUND AND t282 IS INSTANCE OF zcl_lnt_st_statem_constant ).
                t278 = t281.
              ENDIF.
              IF t278 = abap_true.
                DATA t283 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t284 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t285) = NEW zcl_lnt_sy_statem_constant( ).
                DATA t286 TYPE REF TO zcl_lnt_statement_node.
                DATA(t287) = t9.
                DATA t288 TYPE REF TO object.
                t288 = t287.
                t286 ?= t288.
                DATA(t289) = t2.
                t284 = t285->run_syntax( i_node = t286 i_input_967e = t289 ).
                t283 = t284.
                DATA t290 TYPE abap_bool.
                DATA(t291) = t283.
                t290 = xsdbool( t291 IS BOUND ).
                IF t290 = abap_true.
                  DATA t292 TYPE REF TO zcl_lnt_current_scope.
                  DATA t293 TYPE REF TO zcl_lnt_current_scope.
                  DATA(t294) = t2.
                  t293 = t294->scope.
                  t292 = t293.
                  DATA t295 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t295.
                  DATA t296 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t296.
                  DATA(t297) = abap_true.
                  IF t297 = abap_true.
                    DATA(t298) = t283.
                    t296 = t298.
                  ELSE.
                    DATA t299 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t299.
                    t296 = t299.
                  ENDIF.
                  t295 = t296.
                  DATA(t300) = VALUE abap_bool( ).
                  DATA t301 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t302) = t295.
                  t301 = t302.
                  DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t304.
                  t303 = t304.
                  DATA(t305) = VALUE abap_bool( ).
                  DATA(t306) = t301.
                  IF t306 IS INITIAL.
                    t305 = abap_true.
                  ENDIF.
                  t300 = t305.
                  IF t300 = abap_true.
                  ELSE.
                    DATA(t307) = t292.
                    DATA(t308) = VALUE string( ).
                    DATA t309 TYPE REF TO zcl_lnt_fi_identifier.
                    DATA t310 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t311) = t295.
                    t310 = t311.
                    t309 = t310.
                    DATA(t312) = VALUE string( ).
                    DATA t313 TYPE string.
                    DATA t314 TYPE string.
                    DATA t315 TYPE REF TO zcl_lnt_abstract_token.
                    DATA t316 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t317) = t309.
                    t316 = t317->token.
                    t315 = t316.
                    DATA t318 TYPE string.
                    DATA(t319) = t315.
                    t318 = t319->str.
                    t314 = t318.
                    t313 = t314.
                    DATA(t320) = VALUE abap_bool( ).
                    DATA(t321) = VALUE string( ).
                    DATA(t322) = t313.
                    DATA(t323) = 0.
                    DATA(t324) = 1.
                    DATA(t325) = strlen( t322 ).
                    IF t323 < 0.
                      t323 = t323 + t325.
                      IF t323 < 0.
                        t323 = 0.
                      ENDIF.
                    ENDIF.
                    IF t323 > t325 OR t324 <= 0.
                      CLEAR t321.
                    ELSE.
                      IF t324 > t325 - t323.
                        t324 = t325 - t323.
                      ENDIF.
                      t321 = t322+t323(t324).
                    ENDIF.
                    DATA(t326) = |!|.
                    t320 = xsdbool( t321 = t326 ).
                    IF t320 = abap_true.
                      DATA(t327) = VALUE string( ).
                      DATA t328 TYPE string.
                      DATA(t329) = t313.
                      t328 = t329.
                      DATA(t330) = VALUE string( ).
                      DATA(t331) = t328.
                      DATA(t332) = 1.
                      DATA t333 TYPE i.
                      DATA(t334) = t328.
                      DATA(t335) = strlen( t334 ).
                      t333 = t335.
                      DATA(t336) = strlen( t331 ).
                      IF t332 < 0.
                        t332 = t332 + t336.
                        IF t332 < 0.
                          t332 = 0.
                        ENDIF.
                      ENDIF.
                      IF t332 > t336 OR t333 <= 0.
                        CLEAR t330.
                      ELSE.
                        IF t333 > t336 - t332.
                          t333 = t336 - t332.
                        ENDIF.
                        t330 = t331+t332(t333).
                      ENDIF.
                      t327 = t330.
                      t313 = t327.
                    ENDIF.
                    DATA(t337) = t313.
                    t312 = t337.
                    t308 = t312.
                    DATA t338 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t339) = t295.
                    t338 = t339.
                    t307->add_named_identifier( i_name = t308 i_identifier = t338 ).
                  ENDIF.
                ENDIF.
              ELSE.
                DATA t340 TYPE abap_bool.
                DATA t341 TYPE abap_bool.
                DATA(t342) = t9.
                t341 = xsdbool( t342 IS BOUND AND t342 IS INSTANCE OF zcl_lnt_statement_node ).
                t340 = t341.
                IF t341 = abap_true.
                  DATA t343 TYPE abap_bool.
                  DATA(t344) = t14.
                  t343 = xsdbool( t344 IS BOUND AND t344 IS INSTANCE OF zcl_lnt_st_ranges ).
                  t340 = t343.
                ENDIF.
                IF t340 = abap_true.
                  DATA(t345) = NEW zcl_lnt_sy_ranges( ).
                  DATA t346 TYPE REF TO zcl_lnt_statement_node.
                  DATA(t347) = t9.
                  DATA t348 TYPE REF TO object.
                  t348 = t347.
                  t346 ?= t348.
                  DATA(t349) = t2.
                  t345->run_syntax( i_node = t346 i_input_967e = t349 ).
                ELSE.
                  DATA t350 TYPE abap_bool.
                  DATA t351 TYPE abap_bool.
                  DATA(t352) = t9.
                  t351 = xsdbool( t352 IS BOUND AND t352 IS INSTANCE OF zcl_lnt_statement_node ).
                  t350 = t351.
                  IF t351 = abap_true.
                    DATA t353 TYPE abap_bool.
                    DATA(t354) = t14.
                    t353 = xsdbool( t354 IS BOUND AND t354 IS INSTANCE OF zcl_lnt_st_select_option ).
                    t350 = t353.
                  ENDIF.
                  IF t350 = abap_true.
                    DATA(t355) = NEW zcl_lnt_sy_select_option( ).
                    DATA t356 TYPE REF TO zcl_lnt_statement_node.
                    DATA(t357) = t9.
                    DATA t358 TYPE REF TO object.
                    t358 = t357.
                    t356 ?= t358.
                    DATA(t359) = t2.
                    t355->run_syntax( i_node = t356 i_input_967e = t359 ).
                  ELSE.
                    DATA t360 TYPE abap_bool.
                    DATA t361 TYPE abap_bool.
                    DATA(t362) = t9.
                    t361 = xsdbool( t362 IS BOUND AND t362 IS INSTANCE OF zcl_lnt_statement_node ).
                    t360 = t361.
                    IF t361 = abap_true.
                      DATA t363 TYPE abap_bool.
                      DATA(t364) = t14.
                      t363 = xsdbool( t364 IS BOUND AND t364 IS INSTANCE OF zcl_lnt_st_parameter ).
                      t360 = t363.
                    ENDIF.
                    IF t360 = abap_true.
                      DATA(t365) = NEW zcl_lnt_sy_parameter_parameter( ).
                      DATA t366 TYPE REF TO zcl_lnt_statement_node.
                      DATA(t367) = t9.
                      DATA t368 TYPE REF TO object.
                      t368 = t367.
                      t366 ?= t368.
                      DATA(t369) = t2.
                      t365->run_syntax( i_node = t366 i_input_967e = t369 ).
                    ELSE.
                      DATA t370 TYPE abap_bool.
                      DATA t371 TYPE abap_bool.
                      DATA(t372) = t9.
                      t371 = xsdbool( t372 IS BOUND AND t372 IS INSTANCE OF zcl_lnt_structure_node ).
                      t370 = t371.
                      IF t371 = abap_true.
                        DATA t373 TYPE abap_bool.
                        DATA(t374) = t14.
                        t373 = xsdbool( t374 IS BOUND AND t374 IS INSTANCE OF zcl_lnt_sr_constants ).
                        t370 = t373.
                      ENDIF.
                      IF t370 = abap_true.
                        DATA t375 TYPE REF TO zcl_lnt_shape_28fac025.
                        DATA t376 TYPE REF TO zcl_lnt_shape_28fac025.
                        DATA(t377) = NEW zcl_lnt_sy_constants( ).
                        DATA t378 TYPE REF TO zcl_lnt_structure_node.
                        DATA(t379) = t9.
                        DATA t380 TYPE REF TO object.
                        t380 = t379.
                        t378 ?= t380.
                        DATA(t381) = t2.
                        t376 = t377->run_syntax( i_node = t378 i_input_967e = t381 ).
                        t375 = t376.
                        DATA t382 TYPE REF TO zcl_lnt_typed_identifier.
                        DATA t383 TYPE REF TO zcl_lnt_typed_identifier.
                        DATA(t384) = t375.
                        t383 = t384->type_cba0.
                        t382 = t383.
                        DATA t385 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
                        DATA t386 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
                        DATA(t387) = t375.
                        t386 = t387->values.
                        t385 = t386.
                        DATA t388 TYPE abap_bool.
                        DATA(t389) = t382.
                        t388 = xsdbool( t389 IS BOUND ).
                        IF t388 = abap_true.
                          DATA t390 TYPE REF TO zcl_lnt_current_scope.
                          DATA t391 TYPE REF TO zcl_lnt_current_scope.
                          DATA(t392) = t2.
                          t391 = t392->scope.
                          t390 = t391.
                          DATA t393 TYPE REF TO zcl_lnt_typed_identifier.
                          CLEAR t393.
                          DATA t394 TYPE REF TO zcl_lnt_typed_identifier.
                          CLEAR t394.
                          DATA(t395) = abap_true.
                          IF t395 = abap_true.
                            DATA t396 TYPE REF TO zcl_lnt_typed_identifier.
                            DATA(t397) = t382.
                            t396 = t397.
                            t394 = t396.
                          ELSE.
                            DATA t398 TYPE REF TO zcl_lnt_typed_identifier.
                            CLEAR t398.
                            t394 = t398.
                          ENDIF.
                          t393 = t394.
                          DATA(t399) = VALUE abap_bool( ).
                          DATA t400 TYPE REF TO zcl_lnt_typed_identifier.
                          DATA(t401) = t393.
                          t400 = t401.
                          DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t403.
                          t402 = t403.
                          DATA(t404) = VALUE abap_bool( ).
                          DATA(t405) = t400.
                          IF t405 IS INITIAL.
                            t404 = abap_true.
                          ENDIF.
                          t399 = t404.
                          IF t399 = abap_true.
                          ELSE.
                            DATA(t406) = t390.
                            DATA(t407) = VALUE string( ).
                            DATA t408 TYPE REF TO zcl_lnt_fi_identifier.
                            DATA t409 TYPE REF TO zcl_lnt_typed_identifier.
                            DATA(t410) = t393.
                            t409 = t410.
                            t408 = t409.
                            DATA(t411) = VALUE string( ).
                            DATA t412 TYPE string.
                            DATA t413 TYPE string.
                            DATA t414 TYPE REF TO zcl_lnt_abstract_token.
                            DATA t415 TYPE REF TO zcl_lnt_abstract_token.
                            DATA(t416) = t408.
                            t415 = t416->token.
                            t414 = t415.
                            DATA t417 TYPE string.
                            DATA(t418) = t414.
                            t417 = t418->str.
                            t413 = t417.
                            t412 = t413.
                            DATA(t419) = VALUE abap_bool( ).
                            DATA(t420) = VALUE string( ).
                            DATA(t421) = t412.
                            DATA(t422) = 0.
                            DATA(t423) = 1.
                            DATA(t424) = strlen( t421 ).
                            IF t422 < 0.
                              t422 = t422 + t424.
                              IF t422 < 0.
                                t422 = 0.
                              ENDIF.
                            ENDIF.
                            IF t422 > t424 OR t423 <= 0.
                              CLEAR t420.
                            ELSE.
                              IF t423 > t424 - t422.
                                t423 = t424 - t422.
                              ENDIF.
                              t420 = t421+t422(t423).
                            ENDIF.
                            DATA(t425) = |!|.
                            t419 = xsdbool( t420 = t425 ).
                            IF t419 = abap_true.
                              DATA(t426) = VALUE string( ).
                              DATA t427 TYPE string.
                              DATA(t428) = t412.
                              t427 = t428.
                              DATA(t429) = VALUE string( ).
                              DATA(t430) = t427.
                              DATA(t431) = 1.
                              DATA t432 TYPE i.
                              DATA(t433) = t427.
                              DATA(t434) = strlen( t433 ).
                              t432 = t434.
                              DATA(t435) = strlen( t430 ).
                              IF t431 < 0.
                                t431 = t431 + t435.
                                IF t431 < 0.
                                  t431 = 0.
                                ENDIF.
                              ENDIF.
                              IF t431 > t435 OR t432 <= 0.
                                CLEAR t429.
                              ELSE.
                                IF t432 > t435 - t431.
                                  t432 = t435 - t431.
                                ENDIF.
                                t429 = t430+t431(t432).
                              ENDIF.
                              t426 = t429.
                              t412 = t426.
                            ENDIF.
                            DATA(t436) = t412.
                            t411 = t436.
                            t407 = t411.
                            DATA t437 TYPE REF TO zcl_lnt_typed_identifier.
                            DATA(t438) = t393.
                            t437 = t438.
                            t406->add_named_identifier( i_name = t407 i_identifier = t437 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d992_23ce209550cb.
  ENDMETHOD.
ENDCLASS.
