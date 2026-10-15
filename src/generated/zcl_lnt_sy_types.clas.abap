* TS: src/abap/5_syntax/structures/types.ts:13:1 Types
CLASS zcl_lnt_sy_types DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_qualified_name_prefix TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_types IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_qualified_name_prefix.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA(t8) = t1.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t7 = t8->find_first_expression( i_type_9913 = t9 ).
    t6 = t7.
    t5 = t6->get_first_token( ).
    t4 = t5.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    CREATE OBJECT t11.
    t10 = t11.
    DATA t12 TYPE REF TO zif_lnt_union_adffe656.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_union_adffe656.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = t3.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    t17 = t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t15.
    IF t20 IS INITIAL.
      t19 = abap_true.
    ELSEIF t20->has = abap_false.
      t19 = abap_true.
    ENDIF.
    t14 = t19.
    IF t14 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      DATA(t22) = abap_true.
      IF t22 = abap_true.
        DATA(t23) = ||.
        DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t24->has = abap_true.
        t24->value = t23.
        t21 = t24.
      ELSE.
        DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t25.
        t21 = t25.
      ENDIF.
      t3 = t21.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    DATA t28 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t28.
    DATA(t29) = t1.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    DATA(t31) = t28.
    t30 = t31->children.
    t27 = t30.
    t26 ?= t27.
    DATA t32 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t32.
    DATA t33 TYPE REF TO object.
    CLEAR t33.
    DATA(t34) = VALUE i( ).
    DO.
      t26->load( ).
      IF t34 >= lines( t26->items ).
        EXIT.
      ENDIF.
      CLEAR t33.
      READ TABLE t26->items INDEX t34 + 1 INTO t33.
      t34 = t34 + 1.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      CLEAR t32.
      IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t35 ?= t33.
        DATA t36 TYPE REF TO object.
        CLEAR t36.
        t36 = t35->as_ref( ).
        t32 ?= t36.
      ELSE.
        t32 ?= t33.
      ENDIF.
      DATA t37 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t37.
      DATA t38 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      DATA(t40) = t32.
      t39 = t40->get_db65( ).
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      t41 = t39.
      t38 ?= t41.
      t37 = t38.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = t32.
      t42 = xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t42 = abap_true.
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = t37.
        t44 = xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_st_statem_type ).
        IF t44 = abap_true.
          DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t46.
          DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t47.
          DATA(t48) = NEW zcl_lnt_sy_type( ).
          DATA t49 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t49.
          DATA(t50) = t32.
          DATA t51 TYPE REF TO object.
          CLEAR t51.
          t51 = t50.
          t49 ?= t51.
          DATA(t52) = t2.
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t53.
          DATA(t54) = abap_true.
          IF t54 = abap_true.
            DATA(t55) = VALUE string( ).
            DATA(t56) = VALUE string( ).
            DATA(t57) = VALUE string( ).
            DATA(t58) = t3.
            t57 = t58->value.
            DATA(t59) = VALUE string( ).
            DATA t60 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t60.
            DATA(t61) = t4.
            t60 = t61.
            DATA(t62) = VALUE string( ).
            DATA(t63) = t60.
            t62 = t63->str.
            t59 = t62.
            DATA(t64) = strlen( t57 ).
            t56 = |{ t57 }{ t59 }|.
            DATA(t65) = |-|.
            DATA(t66) = strlen( t56 ).
            t55 = |{ t56 }{ t65 }|.
            DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t67->has = abap_true.
            t67->value = t55.
            t53 = t67.
          ELSE.
            DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t68.
            t53 = t68.
          ENDIF.
          t47 = t48->run_syntax( i_node = t49 i_input_967e = t52 i_qualified_name_prefix = t53 ).
          t46 = t47.
          DATA(t69) = VALUE abap_bool( ).
          DATA(t70) = t46.
          t69 = xsdbool( t70 IS BOUND ).
          IF t69 = abap_true.
            DATA(t71) = VALUE abap_bool( ).
            DATA(t72) = VALUE i( ).
            DATA(t73) = VALUE string( ).
            DATA t74 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t74.
            DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t75.
            DATA(t76) = t46.
            t75 = t76.
            t74 = t75.
            DATA(t77) = VALUE string( ).
            DATA(t78) = VALUE string( ).
            DATA(t79) = VALUE string( ).
            DATA t80 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t80.
            DATA t81 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t81.
            DATA(t82) = t74.
            t81 = t82->token.
            t80 = t81.
            DATA(t83) = VALUE string( ).
            DATA(t84) = t80.
            t83 = t84->str.
            t79 = t83.
            t78 = t79.
            DATA(t85) = VALUE abap_bool( ).
            DATA(t86) = VALUE string( ).
            DATA(t87) = t78.
            DATA(t88) = 0.
            DATA(t89) = 1.
            DATA(t90) = strlen( t87 ).
            IF t88 < 0.
              t88 = t88 + t90.
              IF t88 < 0.
                t88 = 0.
              ENDIF.
            ENDIF.
            IF t88 > t90 OR t89 <= 0.
              CLEAR t86.
            ELSE.
              IF t89 > t90 - t88.
                t89 = t90 - t88.
              ENDIF.
              t86 = t87+t88(t89).
            ENDIF.
            DATA(t91) = |!|.
            t85 = xsdbool( t86 = t91 ).
            IF t85 = abap_true.
              DATA(t92) = VALUE string( ).
              DATA(t93) = VALUE string( ).
              DATA(t94) = t78.
              t93 = t94.
              DATA(t95) = VALUE string( ).
              DATA(t96) = t93.
              DATA(t97) = 1.
              DATA(t98) = VALUE i( ).
              DATA(t99) = t93.
              DATA(t100) = strlen( t99 ).
              t98 = t100.
              DATA(t101) = strlen( t96 ).
              IF t97 < 0.
                t97 = t97 + t101.
                IF t97 < 0.
                  t97 = 0.
                ENDIF.
              ENDIF.
              IF t97 > t101 OR t98 <= 0.
                CLEAR t95.
              ELSE.
                IF t98 > t101 - t97.
                  t98 = t101 - t97.
                ENDIF.
                t95 = t96+t97(t98).
              ENDIF.
              t92 = t95.
              t78 = t92.
            ENDIF.
            DATA(t102) = t78.
            t77 = t102.
            t73 = t77.
            DATA(t103) = strlen( t73 ).
            t72 = t103.
            DATA(t104) = 30.
            t71 = xsdbool( t72 > t104 ).
            IF t71 = abap_true.
              DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t105.
              DATA(t106) = t2.
              t105 = t106->issues.
              DATA t107 TYPE REF TO zcl_lnt_issue.
              CLEAR t107.
              DATA(t108) = t2.
              DATA t109 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t109.
              DATA t110 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t110.
              DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t111.
              DATA(t112) = t46.
              t111 = t112.
              t110 = t111.
              DATA t113 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t113.
              DATA(t114) = t110.
              t113 = t114->token.
              t109 = t113.
              DATA(t115) = |Structure field name longer than 30 characters|.
              DATA t116 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t116.
              t107 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t108 i_token = t109 i_message_26cb = t115 i_fix = t116 ).
              t105->load( ).
              APPEND t107 TO t105->items.
              t105->save( ).
            ENDIF.
            DATA(t117) = t10.
            DATA t118 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t118.
            DATA(t119) = VALUE string( ).
            DATA(t120) = VALUE string( ).
            DATA t121 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t121.
            DATA t122 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t122.
            DATA(t123) = t46.
            t122 = t123.
            t121 = t122.
            DATA(t124) = VALUE string( ).
            DATA(t125) = VALUE string( ).
            DATA(t126) = VALUE string( ).
            DATA t127 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t127.
            DATA t128 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t128.
            DATA(t129) = t121.
            t128 = t129->token.
            t127 = t128.
            DATA(t130) = VALUE string( ).
            DATA(t131) = t127.
            t130 = t131->str.
            t126 = t130.
            t125 = t126.
            DATA(t132) = VALUE abap_bool( ).
            DATA(t133) = VALUE string( ).
            DATA(t134) = t125.
            DATA(t135) = 0.
            DATA(t136) = 1.
            DATA(t137) = strlen( t134 ).
            IF t135 < 0.
              t135 = t135 + t137.
              IF t135 < 0.
                t135 = 0.
              ENDIF.
            ENDIF.
            IF t135 > t137 OR t136 <= 0.
              CLEAR t133.
            ELSE.
              IF t136 > t137 - t135.
                t136 = t137 - t135.
              ENDIF.
              t133 = t134+t135(t136).
            ENDIF.
            DATA(t138) = |!|.
            t132 = xsdbool( t133 = t138 ).
            IF t132 = abap_true.
              DATA(t139) = VALUE string( ).
              DATA(t140) = VALUE string( ).
              DATA(t141) = t125.
              t140 = t141.
              DATA(t142) = VALUE string( ).
              DATA(t143) = t140.
              DATA(t144) = 1.
              DATA(t145) = VALUE i( ).
              DATA(t146) = t140.
              DATA(t147) = strlen( t146 ).
              t145 = t147.
              DATA(t148) = strlen( t143 ).
              IF t144 < 0.
                t144 = t144 + t148.
                IF t144 < 0.
                  t144 = 0.
                ENDIF.
              ENDIF.
              IF t144 > t148 OR t145 <= 0.
                CLEAR t142.
              ELSE.
                IF t145 > t148 - t144.
                  t145 = t148 - t144.
                ENDIF.
                t142 = t143+t144(t145).
              ENDIF.
              t139 = t142.
              t125 = t139.
            ENDIF.
            DATA(t149) = t125.
            t124 = t149.
            t120 = t124.
            t119 = t120.
            DATA t150 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t150.
            DATA t151 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t151.
            DATA t152 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t152.
            DATA t153 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t153.
            DATA(t154) = t46.
            t153 = t154.
            t152 = t153.
            DATA t155 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t155.
            DATA(t156) = t152.
            t155 = t156->type_cba0.
            t151 = t155.
            t150 = t151.
            DATA t157 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t157.
            DATA t158 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t158.
            t157 = t158.
            DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t159.
            DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t160.
            t159 = t160.
            t118 = NEW zcl_lnt_istructure_component( i_name = t119 i_type_9913 = t150 i_as_include = t157 i_suffix = t159 ).
            CREATE OBJECT t118->zlnt_view_ownkeys_b0e8086400eb.
            t118->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t161.
            IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t161 ).
            ENDIF.
            DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t162.
            IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t162 ).
            ENDIF.
            CREATE OBJECT t118->zlnt_json_ownkeys_70e5fd461788.
            t118->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t163) = |name|.
            DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t164.
            IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t163 p1 = t164 ).
            ENDIF.
            DATA(t165) = |type|.
            DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t166.
            IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t165 p1 = t166 ).
            ENDIF.
            t117->load( ).
            APPEND t118 TO t117->items.
            t117->save( ).
          ENDIF.
        ELSE.
          DATA(t167) = VALUE abap_bool( ).
          DATA(t168) = t37.
          t167 = xsdbool( t168 IS BOUND AND t168 IS INSTANCE OF zcl_lnt_st_include_type ).
          IF t167 = abap_true.
            DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t169.
            DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t170.
            DATA(t171) = NEW zcl_lnt_sy_include_type( ).
            DATA t172 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t172.
            DATA(t173) = t32.
            DATA t174 TYPE REF TO object.
            CLEAR t174.
            t174 = t173.
            t172 ?= t174.
            DATA(t175) = t2.
            t170 = t171->run_syntax( i_node = t172 i_input_967e = t175 ).
            t169 = t170.
            DATA(t176) = VALUE abap_bool( ).
            DATA(t177) = VALUE abap_bool( ).
            DATA(t178) = t169.
            IF t178 IS BOUND AND t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t177 = xsdbool( t178->oval IS INSTANCE OF zcl_lnt_void_type ).
            ENDIF.
            t176 = t177.
            IF t177 = abap_false.
              DATA(t179) = VALUE abap_bool( ).
              DATA(t180) = t169.
              IF t180 IS BOUND AND t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t179 = xsdbool( t180->oval IS INSTANCE OF zcl_lnt_unknown_type ).
              ENDIF.
              t176 = t179.
            ENDIF.
            IF t176 = abap_true.
              DATA t181 TYPE REF TO zif_lnt_union_adffe656.
              CLEAR t181.
              DATA(t182) = abap_true.
              IF t182 = abap_true.
                DATA t183 TYPE REF TO zif_lnt_union_adffe656.
                CLEAR t183.
                DATA(t184) = t169.
                DATA t185 TYPE REF TO object.
                CLEAR t185.
                t185 = t184->as_ref( ).
                t183 ?= t185.
                t181 = t183.
              ELSE.
                DATA t186 TYPE REF TO zif_lnt_union_adffe656.
                CLEAR t186.
                t181 = t186.
              ENDIF.
              t12 = t181.
            ELSE.
              DATA(t187) = VALUE i( ).
              DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t188.
              DATA(t189) = t169.
              CLEAR t188.
              IF t189 IS BOUND.
                IF t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  TRY.
                      t188 ?= t189->oval.
                    CATCH cx_sy_move_cast_error.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
                  ENDTRY.
                ELSEIF t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
                  CREATE OBJECT t188.
                  t188->source = t189.
                ELSE.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
                ENDIF.
                t188->load( ).
                DATA t190 TYPE REF TO object.
                CLEAR t190.
                DATA t191 TYPE REF TO zcl_lnt_istructure_component.
                CLEAR t191.
                LOOP AT t188->items INTO t190.
                  DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t192.
                  CLEAR t191.
                  IF t190 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                    t192 ?= t190.
                    CLEAR t191.
                    IF t192 IS BOUND.
                      IF t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        TRY.
                            t191 ?= t192->oval.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                      ENDIF.
                      IF t191 IS NOT BOUND.
                        IF t192->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t192->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t192->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t192->tag <>
                        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                          DATA t193 TYPE REF TO zlnt_view_storage_74017ca272ac.
                          CLEAR t193.
                          IF t192->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                          ENDIF.
                          TRY.
                              t193 ?= t192->oval.
                            CATCH cx_sy_move_cast_error.
                              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                          ENDTRY.
                          IF t193->structural( ) <> abap_true.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                          ENDIF.
                        ENDIF.
                        DATA(t194) = VALUE string( ).
                        DATA t195 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t195.
                        DATA t196 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t196.
                        DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t197.
                        t191 = NEW zcl_lnt_istructure_component( view_source = t192 i_name = t194 i_type_9913 = t195 i_as_include = t196 i_suffix = t197 ).
                      ENDIF.
                    ENDIF.
                  ELSE.
                    t191 ?= t190.
                  ENDIF.
                ENDLOOP.
              ENDIF.
              DATA t198 TYPE REF TO zcl_lnt_istructure_component.
              CLEAR t198.
              DATA t199 TYPE REF TO object.
              CLEAR t199.
              DATA(t200) = VALUE i( ).
              DO.
                t188->load( ).
                IF t200 >= lines( t188->items ).
                  EXIT.
                ENDIF.
                CLEAR t199.
                READ TABLE t188->items INDEX t200 + 1 INTO t199.
                t200 = t200 + 1.
                DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t201.
                CLEAR t198.
                IF t199 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t201 ?= t199.
                  CLEAR t198.
                  IF t201 IS BOUND.
                    IF t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      TRY.
                          t198 ?= t201->oval.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                    ENDIF.
                    IF t198 IS NOT BOUND.
                      IF t201->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t201->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t201->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t201->tag <>
                      zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                        DATA t202 TYPE REF TO zlnt_view_storage_74017ca272ac.
                        CLEAR t202.
                        IF t201->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                        ENDIF.
                        TRY.
                            t202 ?= t201->oval.
                          CATCH cx_sy_move_cast_error.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                        ENDTRY.
                        IF t202->structural( ) <> abap_true.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                        ENDIF.
                      ENDIF.
                      DATA(t203) = VALUE string( ).
                      DATA t204 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t204.
                      DATA t205 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t205.
                      DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t206.
                      t198 = NEW zcl_lnt_istructure_component( view_source = t201 i_name = t203 i_type_9913 = t204 i_as_include = t205 i_suffix = t206 ).
                    ENDIF.
                  ENDIF.
                ELSE.
                  t198 ?= t199.
                ENDIF.
                DATA(t207) = t10.
                DATA(t208) = t198.
                t207->load( ).
                APPEND t208 TO t207->items.
                t207->save( ).
              ENDDO.
              DATA(t209) = VALUE i( ).
              DATA(t210) = t10.
              t210->load( ).
              t209 = lines( t210->items ).
              t187 = t209.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t211) = VALUE abap_bool( ).
        DATA(t212) = VALUE abap_bool( ).
        DATA(t213) = t32.
        t212 = xsdbool( t213 IS BOUND AND t213 IS INSTANCE OF zcl_lnt_structure_node ).
        t211 = t212.
        IF t212 = abap_true.
          DATA(t214) = VALUE abap_bool( ).
          DATA(t215) = t37.
          t214 = xsdbool( t215 IS BOUND AND t215 IS INSTANCE OF zcl_lnt_sr_types ).
          t211 = t214.
        ENDIF.
        IF t211 = abap_true.
          DATA t216 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t216.
          DATA t217 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t217.
          DATA(t218) = NEW zcl_lnt_sy_types( ).
          DATA t219 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t219.
          DATA(t220) = t32.
          DATA t221 TYPE REF TO object.
          CLEAR t221.
          t221 = t220.
          t219 ?= t221.
          DATA(t222) = t2.
          DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t223.
          DATA(t224) = abap_true.
          IF t224 = abap_true.
            DATA(t225) = VALUE string( ).
            DATA(t226) = VALUE string( ).
            DATA(t227) = VALUE string( ).
            DATA(t228) = t3.
            t227 = t228->value.
            DATA(t229) = VALUE string( ).
            DATA t230 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t230.
            DATA(t231) = t4.
            t230 = t231.
            DATA(t232) = VALUE string( ).
            DATA(t233) = t230.
            t232 = t233->str.
            t229 = t232.
            DATA(t234) = strlen( t227 ).
            t226 = |{ t227 }{ t229 }|.
            DATA(t235) = |-|.
            DATA(t236) = strlen( t226 ).
            t225 = |{ t226 }{ t235 }|.
            DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t237->has = abap_true.
            t237->value = t225.
            t223 = t237.
          ELSE.
            DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t238.
            t223 = t238.
          ENDIF.
          t217 = t218->run_syntax( i_node = t219 i_input_967e = t222 i_qualified_name_prefix = t223 ).
          t216 = t217.
          DATA(t239) = VALUE abap_bool( ).
          DATA(t240) = t216.
          t239 = xsdbool( t240 IS BOUND ).
          IF t239 = abap_true.
            DATA(t241) = VALUE abap_bool( ).
            DATA(t242) = VALUE i( ).
            DATA(t243) = VALUE string( ).
            DATA t244 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t244.
            DATA t245 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t245.
            DATA(t246) = t216.
            t245 = t246.
            t244 = t245.
            DATA(t247) = VALUE string( ).
            DATA(t248) = VALUE string( ).
            DATA(t249) = VALUE string( ).
            DATA t250 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t250.
            DATA t251 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t251.
            DATA(t252) = t244.
            t251 = t252->token.
            t250 = t251.
            DATA(t253) = VALUE string( ).
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
              DATA(t263) = VALUE string( ).
              DATA(t264) = t248.
              t263 = t264.
              DATA(t265) = VALUE string( ).
              DATA(t266) = t263.
              DATA(t267) = 1.
              DATA(t268) = VALUE i( ).
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
            DATA(t273) = strlen( t243 ).
            t242 = t273.
            DATA(t274) = 30.
            t241 = xsdbool( t242 > t274 ).
            IF t241 = abap_true.
              DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t275.
              DATA(t276) = t2.
              t275 = t276->issues.
              DATA t277 TYPE REF TO zcl_lnt_issue.
              CLEAR t277.
              DATA(t278) = t2.
              DATA t279 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t279.
              DATA t280 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t280.
              DATA t281 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t281.
              DATA(t282) = t216.
              t281 = t282.
              t280 = t281.
              DATA t283 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t283.
              DATA(t284) = t280.
              t283 = t284->token.
              t279 = t283.
              DATA(t285) = |Structure field name longer than 30 characters|.
              DATA t286 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t286.
              t277 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t278 i_token = t279 i_message_26cb = t285 i_fix = t286 ).
              t275->load( ).
              APPEND t277 TO t275->items.
              t275->save( ).
            ENDIF.
            DATA(t287) = t10.
            DATA t288 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t288.
            DATA(t289) = VALUE string( ).
            DATA(t290) = VALUE string( ).
            DATA t291 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t291.
            DATA t292 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t292.
            DATA(t293) = t216.
            t292 = t293.
            t291 = t292.
            DATA(t294) = VALUE string( ).
            DATA(t295) = VALUE string( ).
            DATA(t296) = VALUE string( ).
            DATA t297 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t297.
            DATA t298 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t298.
            DATA(t299) = t291.
            t298 = t299->token.
            t297 = t298.
            DATA(t300) = VALUE string( ).
            DATA(t301) = t297.
            t300 = t301->str.
            t296 = t300.
            t295 = t296.
            DATA(t302) = VALUE abap_bool( ).
            DATA(t303) = VALUE string( ).
            DATA(t304) = t295.
            DATA(t305) = 0.
            DATA(t306) = 1.
            DATA(t307) = strlen( t304 ).
            IF t305 < 0.
              t305 = t305 + t307.
              IF t305 < 0.
                t305 = 0.
              ENDIF.
            ENDIF.
            IF t305 > t307 OR t306 <= 0.
              CLEAR t303.
            ELSE.
              IF t306 > t307 - t305.
                t306 = t307 - t305.
              ENDIF.
              t303 = t304+t305(t306).
            ENDIF.
            DATA(t308) = |!|.
            t302 = xsdbool( t303 = t308 ).
            IF t302 = abap_true.
              DATA(t309) = VALUE string( ).
              DATA(t310) = VALUE string( ).
              DATA(t311) = t295.
              t310 = t311.
              DATA(t312) = VALUE string( ).
              DATA(t313) = t310.
              DATA(t314) = 1.
              DATA(t315) = VALUE i( ).
              DATA(t316) = t310.
              DATA(t317) = strlen( t316 ).
              t315 = t317.
              DATA(t318) = strlen( t313 ).
              IF t314 < 0.
                t314 = t314 + t318.
                IF t314 < 0.
                  t314 = 0.
                ENDIF.
              ENDIF.
              IF t314 > t318 OR t315 <= 0.
                CLEAR t312.
              ELSE.
                IF t315 > t318 - t314.
                  t315 = t318 - t314.
                ENDIF.
                t312 = t313+t314(t315).
              ENDIF.
              t309 = t312.
              t295 = t309.
            ENDIF.
            DATA(t319) = t295.
            t294 = t319.
            t290 = t294.
            t289 = t290.
            DATA t320 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t320.
            DATA t321 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t321.
            DATA t322 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t322.
            DATA t323 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t323.
            DATA(t324) = t216.
            t323 = t324.
            t322 = t323.
            DATA t325 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t325.
            DATA(t326) = t322.
            t325 = t326->type_cba0.
            t321 = t325.
            t320 = t321.
            DATA t327 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t327.
            DATA t328 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t328.
            t327 = t328.
            DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t329.
            DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t330.
            t329 = t330.
            t288 = NEW zcl_lnt_istructure_component( i_name = t289 i_type_9913 = t320 i_as_include = t327 i_suffix = t329 ).
            CREATE OBJECT t288->zlnt_view_ownkeys_b0e8086400eb.
            t288->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t331.
            IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t331 ).
            ENDIF.
            DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t332.
            IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t332 ).
            ENDIF.
            CREATE OBJECT t288->zlnt_json_ownkeys_70e5fd461788.
            t288->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t333) = |name|.
            DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t334.
            IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t333 p1 = t334 ).
            ENDIF.
            DATA(t335) = |type|.
            DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t336.
            IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t335 p1 = t336 ).
            ENDIF.
            t287->load( ).
            APPEND t288 TO t287->items.
            t287->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t337) = VALUE abap_bool( ).
    DATA(t338) = t12.
    t337 = xsdbool( t338 IS BOUND ).
    IF t337 = abap_true.
      DATA t339 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t339.
      DATA(t340) = abap_true.
      IF t340 = abap_true.
        DATA t341 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t341.
        DATA(t342) = t4.
        DATA(t343) = VALUE string( ).
        DATA(t344) = t2.
        t343 = t344->filename.
        DATA t345 TYPE REF TO zif_lnt_union_ea265422.
        CLEAR t345.
        DATA t346 TYPE REF TO zif_lnt_union_adffe656.
        CLEAR t346.
        DATA(t347) = t12.
        t346 = t347.
        t345 ?= t346.
        DATA t348 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t348.
        DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t349.
        t341 = NEW zcl_lnt_typed_identifier( i_token = t342 i_filename = t343 i_type_9913 = t345 i_meta = t348 i_value = t349 ).
        t339 = t341.
      ELSE.
        DATA t350 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t350.
        t339 = t350.
      ENDIF.
      result = t339.
      RETURN.
    ELSE.
      DATA(t351) = VALUE abap_bool( ).
      DATA(t352) = VALUE i( ).
      DATA(t353) = t10.
      t353->load( ).
      t352 = lines( t353->items ).
      DATA(t354) = 0.
      t351 = xsdbool( t352 = t354 ).
      IF t351 = abap_true.
        DATA t355 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t355.
        result = t355.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t356) = VALUE string( ).
    DATA(t357) = VALUE string( ).
    DATA(t358) = VALUE string( ).
    DATA(t359) = t3.
    t358 = t359->value.
    DATA(t360) = VALUE string( ).
    DATA t361 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t361.
    DATA(t362) = t4.
    t361 = t362.
    DATA(t363) = VALUE string( ).
    DATA(t364) = t361.
    t363 = t364->str.
    t360 = t363.
    DATA(t365) = strlen( t358 ).
    t357 = |{ t358 }{ t360 }|.
    t356 = t357.
    DATA(t366) = VALUE abap_bool( ).
    DATA(t367) = VALUE abap_bool( ).
    DATA(t368) = VALUE string( ).
    DATA t369 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t369.
    DATA(t370) = t2.
    t369 = t370->scope.
    t368 = t369->get_type( ).
    DATA(t371) = |class_definition|.
    t367 = xsdbool( t368 = t371 ).
    t366 = t367.
    IF t367 = abap_false.
      DATA(t372) = VALUE abap_bool( ).
      DATA(t373) = VALUE string( ).
      DATA t374 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t374.
      DATA(t375) = t2.
      t374 = t375->scope.
      t373 = t374->get_type( ).
      DATA(t376) = |interface|.
      t372 = xsdbool( t373 = t376 ).
      t366 = t372.
    ENDIF.
    IF t366 = abap_true.
      DATA(t377) = VALUE string( ).
      DATA(t378) = VALUE string( ).
      DATA(t379) = VALUE string( ).
      DATA t380 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t380.
      DATA(t381) = t2.
      t380 = t381->scope.
      t379 = t380->get_name( ).
      DATA(t382) = |=>|.
      DATA(t383) = strlen( t379 ).
      t378 = |{ t379 }{ t382 }|.
      DATA(t384) = t356.
      DATA(t385) = strlen( t378 ).
      t377 = |{ t378 }{ t384 }|.
      t356 = t377.
    ENDIF.
    DATA t386 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t386.
    DATA(t387) = abap_true.
    IF t387 = abap_true.
      DATA t388 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t388.
      DATA(t389) = t4.
      DATA(t390) = VALUE string( ).
      DATA(t391) = t2.
      t390 = t391->filename.
      DATA t392 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t392.
      DATA(t393) = t10.
      DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t394.
      DATA(t395) = abap_true.
      IF t395 = abap_true.
        DATA(t396) = t356.
        DATA(t397) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t397->has = abap_true.
        t397->value = t396.
        t394 = t397.
      ELSE.
        DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t398.
        t394 = t398.
      ENDIF.
      DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t399.
      DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t400.
      t392 = NEW zcl_lnt_structure_type( i_components = t393 i_qualified_name = t394 i_ddic_name = t399 i_description = t400 ).
      DATA t401 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t401.
      DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t402.
      t388 = NEW zcl_lnt_typed_identifier( i_token = t389 i_filename = t390 i_type_9913 = t392 i_meta = t401 i_value = t402 ).
      t386 = t388.
    ELSE.
      DATA t403 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t403.
      t386 = t403.
    ENDIF.
    result = t386.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d996_4db7887f8eb3.
  ENDMETHOD.
ENDCLASS.
