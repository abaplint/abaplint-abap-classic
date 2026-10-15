* TS: src/abap/5_syntax/structures/type_mesh.ts:12:1 TypeMesh
CLASS zcl_lnt_sy_type_mesh DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS run_mesh_node IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_type_mesh IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_statement_node.
    DATA t4 TYPE REF TO zcl_lnt_statement_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d669_a69ba8d8f8a6.
    t4 = t5->find_direct_statement( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_statement_node.
    DATA(t9) = t3.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t14.
      result = t14.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t19 TYPE REF TO zcl_lnt_statement_node.
    DATA(t20) = t3.
    t19 = t20.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t18 = t19->find_first_expression( i_type_9913 = t21 ).
    t17 = t18.
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t17.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t25.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA(t28) = t17.
      t27 = t28.
      t26 = t27->get_first_token( ).
      t22 = t26.
    ENDIF.
    t16 = t22.
    t15 = t16.
    DATA(t29) = VALUE abap_bool( ).
    DATA t30 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t31) = t15.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    t32 = t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = t30.
    IF t35 IS INITIAL.
      t34 = abap_true.
    ENDIF.
    t29 = t34.
    IF t29 = abap_true.
      DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t36.
      result = t36.
      RETURN.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t37 = t38.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t42) = t1.
    t41 = t42.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t44) = t41.
    t43 = t44->children.
    t40 = t43.
    t39 ?= t40.
    DATA t45 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t45.
    DATA t46 TYPE REF TO object.
    CLEAR t46.
    DATA(t47) = VALUE i( ).
    DO.
      t39->load( ).
      IF t47 >= lines( t39->items ).
        EXIT.
      ENDIF.
      CLEAR t46.
      READ TABLE t39->items INDEX t47 + 1 INTO t46.
      t47 = t47 + 1.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      CLEAR t45.
      IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t48 ?= t46.
        DATA t49 TYPE REF TO object.
        t49 = t48->as_ref( ).
        t45 ?= t49.
      ELSE.
        t45 ?= t46.
      ENDIF.
      DATA t50 TYPE abap_bool.
      DATA t51 TYPE abap_bool.
      DATA(t52) = t45.
      t51 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_statement_node ).
      t50 = xsdbool( t51 = abap_false ).
      IF t50 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t53 TYPE REF TO zif_lnt_statement.
      DATA t54 TYPE REF TO zif_lnt_statement.
      DATA t55 TYPE REF TO zcl_lnt_statement_node.
      DATA(t56) = t45.
      DATA t57 TYPE REF TO object.
      t57 = t56.
      t55 ?= t57.
      t54 = t55->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t53 = t54.
      DATA t58 TYPE abap_bool.
      DATA(t59) = t53.
      t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_st_statem_type ).
      IF t58 = abap_true.
        DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t60.
        DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t61.
        DATA(t62) = NEW zcl_lnt_sy_type( ).
        DATA t63 TYPE REF TO zcl_lnt_statement_node.
        DATA(t64) = t45.
        DATA t65 TYPE REF TO object.
        t65 = t64.
        t63 ?= t65.
        DATA(t66) = t2.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA(t68) = abap_true.
        IF t68 = abap_true.
          DATA t69 TYPE string.
          DATA t70 TYPE string.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          DATA t72 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t73) = t15.
          t72 = t73.
          t71 = t72.
          DATA t74 TYPE string.
          DATA(t75) = t71.
          t74 = t75->str.
          t70 = t74.
          DATA(t76) = |-|.
          DATA(t77) = strlen( t70 ).
          t69 = |{ t70 }{ t76 }|.
          DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t78->has = abap_true.
          t78->value = t69.
          t67 = t78.
        ELSE.
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          t67 = t79.
        ENDIF.
        t61 = t62->run_syntax( i_node = t63 i_input_967e = t66 i_qualified_name_prefix = t67 ).
        t60 = t61.
        DATA t80 TYPE abap_bool.
        DATA(t81) = t60.
        t80 = xsdbool( t81 IS BOUND ).
        IF t80 = abap_true.
          DATA(t82) = t37.
          DATA t83 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t83.
          DATA(t84) = VALUE string( ).
          DATA(t85) = VALUE string( ).
          DATA t86 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t87 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t88) = t60.
          t87 = t88.
          t86 = t87.
          DATA(t89) = VALUE string( ).
          DATA t90 TYPE string.
          DATA t91 TYPE string.
          DATA t92 TYPE REF TO zcl_lnt_abstract_token.
          DATA t93 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t94) = t86.
          t93 = t94->token.
          t92 = t93.
          DATA t95 TYPE string.
          DATA(t96) = t92.
          t95 = t96->str.
          t91 = t95.
          t90 = t91.
          DATA(t97) = VALUE abap_bool( ).
          DATA(t98) = VALUE string( ).
          DATA(t99) = t90.
          DATA(t100) = 0.
          DATA(t101) = 1.
          DATA(t102) = strlen( t99 ).
          IF t100 < 0.
            t100 = t100 + t102.
            IF t100 < 0.
              t100 = 0.
            ENDIF.
          ENDIF.
          IF t100 > t102 OR t101 <= 0.
            CLEAR t98.
          ELSE.
            IF t101 > t102 - t100.
              t101 = t102 - t100.
            ENDIF.
            t98 = t99+t100(t101).
          ENDIF.
          DATA(t103) = |!|.
          t97 = xsdbool( t98 = t103 ).
          IF t97 = abap_true.
            DATA(t104) = VALUE string( ).
            DATA t105 TYPE string.
            DATA(t106) = t90.
            t105 = t106.
            DATA(t107) = VALUE string( ).
            DATA(t108) = t105.
            DATA(t109) = 1.
            DATA t110 TYPE i.
            DATA(t111) = t105.
            DATA(t112) = strlen( t111 ).
            t110 = t112.
            DATA(t113) = strlen( t108 ).
            IF t109 < 0.
              t109 = t109 + t113.
              IF t109 < 0.
                t109 = 0.
              ENDIF.
            ENDIF.
            IF t109 > t113 OR t110 <= 0.
              CLEAR t107.
            ELSE.
              IF t110 > t113 - t109.
                t110 = t113 - t109.
              ENDIF.
              t107 = t108+t109(t110).
            ENDIF.
            t104 = t107.
            t90 = t104.
          ENDIF.
          DATA(t114) = t90.
          t89 = t114.
          t85 = t89.
          t84 = t85.
          DATA t115 TYPE REF TO zcl_lnt_abstract_type.
          DATA t116 TYPE REF TO zcl_lnt_abstract_type.
          DATA t117 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t118 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t119) = t60.
          t118 = t119.
          t117 = t118.
          DATA t120 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t121) = t117.
          t120 = t121->type_cba0.
          t116 = t120.
          t115 = t116.
          DATA t122 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t123 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t123.
          t122 = t123.
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t125.
          t124 = t125.
          t83 = NEW zcl_lnt_istructure_component( i_name = t84 i_type_9913 = t115 i_as_include = t122 i_suffix = t124 ).
          CREATE OBJECT t83->zlnt_view_ownkeys_b0e8086400eb.
          t83->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t126 ).
          ENDIF.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t127 ).
          ENDIF.
          CREATE OBJECT t83->zlnt_json_ownkeys_70e5fd461788.
          t83->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t128) = |name|.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
          ENDIF.
          DATA(t130) = |type|.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t131.
          IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
          ENDIF.
          t82->load( ).
          APPEND t83 TO t82->items.
          t82->save( ).
        ENDIF.
      ELSE.
        DATA t132 TYPE abap_bool.
        DATA(t133) = t53.
        t132 = xsdbool( t133 IS BOUND AND t133 IS INSTANCE OF zcl_lnt_st_type_mesh ).
        IF t132 = abap_true.
          DATA t134 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t135 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t136 TYPE REF TO zcl_lnt_statement_node.
          DATA(t137) = t45.
          DATA t138 TYPE REF TO object.
          t138 = t137.
          t136 ?= t138.
          DATA(t139) = t2.
          t135 = me->run_mesh_node( i_node = t136 i_input_967e = t139 ).
          t134 = t135.
          DATA t140 TYPE abap_bool.
          DATA(t141) = t134.
          t140 = xsdbool( t141 IS BOUND ).
          IF t140 = abap_true.
            DATA(t142) = t37.
            DATA t143 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t143.
            DATA(t144) = VALUE string( ).
            DATA(t145) = VALUE string( ).
            DATA t146 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t148) = t134.
            t147 = t148.
            t146 = t147.
            DATA(t149) = VALUE string( ).
            DATA t150 TYPE string.
            DATA t151 TYPE string.
            DATA t152 TYPE REF TO zcl_lnt_abstract_token.
            DATA t153 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t154) = t146.
            t153 = t154->token.
            t152 = t153.
            DATA t155 TYPE string.
            DATA(t156) = t152.
            t155 = t156->str.
            t151 = t155.
            t150 = t151.
            DATA(t157) = VALUE abap_bool( ).
            DATA(t158) = VALUE string( ).
            DATA(t159) = t150.
            DATA(t160) = 0.
            DATA(t161) = 1.
            DATA(t162) = strlen( t159 ).
            IF t160 < 0.
              t160 = t160 + t162.
              IF t160 < 0.
                t160 = 0.
              ENDIF.
            ENDIF.
            IF t160 > t162 OR t161 <= 0.
              CLEAR t158.
            ELSE.
              IF t161 > t162 - t160.
                t161 = t162 - t160.
              ENDIF.
              t158 = t159+t160(t161).
            ENDIF.
            DATA(t163) = |!|.
            t157 = xsdbool( t158 = t163 ).
            IF t157 = abap_true.
              DATA(t164) = VALUE string( ).
              DATA t165 TYPE string.
              DATA(t166) = t150.
              t165 = t166.
              DATA(t167) = VALUE string( ).
              DATA(t168) = t165.
              DATA(t169) = 1.
              DATA t170 TYPE i.
              DATA(t171) = t165.
              DATA(t172) = strlen( t171 ).
              t170 = t172.
              DATA(t173) = strlen( t168 ).
              IF t169 < 0.
                t169 = t169 + t173.
                IF t169 < 0.
                  t169 = 0.
                ENDIF.
              ENDIF.
              IF t169 > t173 OR t170 <= 0.
                CLEAR t167.
              ELSE.
                IF t170 > t173 - t169.
                  t170 = t173 - t169.
                ENDIF.
                t167 = t168+t169(t170).
              ENDIF.
              t164 = t167.
              t150 = t164.
            ENDIF.
            DATA(t174) = t150.
            t149 = t174.
            t145 = t149.
            t144 = t145.
            DATA t175 TYPE REF TO zcl_lnt_abstract_type.
            DATA t176 TYPE REF TO zcl_lnt_abstract_type.
            DATA t177 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t178 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t179) = t134.
            t178 = t179.
            t177 = t178.
            DATA t180 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t181) = t177.
            t180 = t181->type_cba0.
            t176 = t180.
            t175 = t176.
            DATA t182 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t183.
            t182 = t183.
            DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t185.
            t184 = t185.
            t143 = NEW zcl_lnt_istructure_component( i_name = t144 i_type_9913 = t175 i_as_include = t182 i_suffix = t184 ).
            CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
            t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t186.
            IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t186 ).
            ENDIF.
            DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t187.
            IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t187 ).
            ENDIF.
            CREATE OBJECT t143->zlnt_json_ownkeys_70e5fd461788.
            t143->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t188) = |name|.
            DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t189.
            IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t188 p1 = t189 ).
            ENDIF.
            DATA(t190) = |type|.
            DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t191.
            IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
            ENDIF.
            t142->load( ).
            APPEND t143 TO t142->items.
            t142->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t192 TYPE string.
    DATA t193 TYPE string.
    DATA t194 TYPE REF TO zcl_lnt_abstract_token.
    DATA t195 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t196) = t15.
    t195 = t196.
    t194 = t195.
    DATA t197 TYPE string.
    DATA(t198) = t194.
    t197 = t198->str.
    t193 = t197.
    t192 = t193.
    DATA t199 TYPE abap_bool.
    DATA t200 TYPE abap_bool.
    DATA t201 TYPE string.
    DATA t202 TYPE REF TO zcl_lnt_current_scope.
    DATA(t203) = t2.
    t202 = t203->scope.
    t201 = t202->get_type( ).
    DATA(t204) = |class_definition|.
    t200 = xsdbool( t201 = t204 ).
    t199 = t200.
    IF t200 = abap_false.
      DATA t205 TYPE abap_bool.
      DATA t206 TYPE string.
      DATA t207 TYPE REF TO zcl_lnt_current_scope.
      DATA(t208) = t2.
      t207 = t208->scope.
      t206 = t207->get_type( ).
      DATA(t209) = |interface|.
      t205 = xsdbool( t206 = t209 ).
      t199 = t205.
    ENDIF.
    IF t199 = abap_true.
      DATA t210 TYPE string.
      DATA t211 TYPE string.
      DATA t212 TYPE string.
      DATA t213 TYPE REF TO zcl_lnt_current_scope.
      DATA(t214) = t2.
      t213 = t214->scope.
      t212 = t213->get_name( ).
      DATA(t215) = |=>|.
      DATA(t216) = strlen( t212 ).
      t211 = |{ t212 }{ t215 }|.
      DATA(t217) = t192.
      DATA(t218) = strlen( t211 ).
      t210 = |{ t211 }{ t217 }|.
      t192 = t210.
    ENDIF.
    DATA t219 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t219.
    DATA(t220) = abap_true.
    IF t220 = abap_true.
      DATA t221 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t221.
      DATA t222 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t223) = t15.
      t222 = t223.
      DATA t224 TYPE string.
      DATA(t225) = t2.
      t224 = t225->filename.
      DATA t226 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t226.
      DATA(t227) = t37.
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t228.
      DATA(t229) = abap_true.
      IF t229 = abap_true.
        DATA(t230) = t192.
        DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t231->has = abap_true.
        t231->value = t230.
        t228 = t231.
      ELSE.
        DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t232.
        t228 = t232.
      ENDIF.
      DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t233.
      DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t234.
      t226 = NEW zcl_lnt_structure_type( i_components = t227 i_qualified_name = t228 i_ddic_name = t233 i_description = t234 ).
      DATA t235 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t235.
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t236.
      t221 = NEW zcl_lnt_typed_identifier( i_token = t222 i_filename = t224 i_type_9913 = t226 i_meta = t235 i_value = t236 ).
      t219 = t221.
    ELSE.
      DATA t237 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t237.
      t219 = t237.
    ENDIF.
    result = t219.

  ENDMETHOD.

  METHOD run_mesh_node.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t6 = t7->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t5.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = t5.
      t14 = t15.
      t13 = t14->get_first_token( ).
      t9 = t13.
    ENDIF.
    t4 = t9.
    t3 = t4.
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = t3.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    t19 = t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t17.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    t16 = t21.
    IF t16 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t23.
      result = t23.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA(t26) = t1.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t25 = t26->find_first_expression( i_type_9913 = t27 ).
    t24 = t25.
    DATA t28 TYPE REF TO zcl_lnt_abstract_type.
    DATA t29 TYPE REF TO zcl_lnt_abstract_type.
    DATA t30 TYPE REF TO zcl_lnt_basic_types.
    DATA(t31) = t2.
    t30 = NEW zcl_lnt_basic_types( i_input_967e = t31 ).
    DATA(t32) = t24.
    DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t29 = t30->resolve_type_name( i_type_name = t32 i_length = t33 i_decimals_2eed = t34 i_qualified_name = t35 ).
    t28 = t29.
    DATA(t36) = VALUE abap_bool( ).
    DATA t37 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t38) = t28.
    t37 = t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    t39 = t40.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = t37.
    IF t42 IS INITIAL.
      t41 = abap_true.
    ENDIF.
    t36 = t41.
    IF t36 = abap_true.
      DATA t43 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t43.
      DATA(t44) = VALUE string( ).
      DATA(t45) = |Mesh node, unknown type |.
      DATA(t46) = VALUE string( ).
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA t49 TYPE REF TO zcl_lnt_expression_node.
      DATA(t50) = t24.
      t49 = t50.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = t49.
      IF t53 IS INITIAL.
        t52 = abap_true.
      ENDIF.
      IF t52 = abap_true.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        t51 = t54.
      ELSE.
        DATA t55 TYPE string.
        DATA t56 TYPE REF TO zcl_lnt_expression_node.
        DATA(t57) = t49.
        t56 = t57.
        t55 = t56->concat_tokens( ).
        DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t58->has = abap_true.
        t58->value = t55.
        t51 = t58.
      ENDIF.
      t48 = t51.
      t47 = t48.
      DATA(t59) = VALUE string( ).
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = t47.
      IF t61 IS INITIAL.
        t60 = abap_true.
      ELSEIF t61->has = abap_false.
        t60 = abap_true.
      ENDIF.
      IF t60 = abap_true.
        DATA(t62) = |undefined|.
        t59 = t62.
      ELSE.
        DATA t63 TYPE string.
        DATA(t64) = t47.
        t63 = t64->value.
        t59 = t63.
      ENDIF.
      t46 = t59.
      DATA(t65) = strlen( t45 ).
      t44 = |{ t45 }{ t46 }|.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      t43 = NEW zcl_lnt_unknown_type( i_error = t44 i_qualified_name = t66 ).
      t28 = t43.
    ELSE.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = VALUE i( ).
      DATA t69 TYPE string.
      DATA t70 TYPE string.
      DATA(t71) = t1.
      t70 = t71->concat_tokens( ).
      DATA(t72) = strlen( t70 ).
      t69 = t70.
      IF t69 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t69 TO UPPER CASE.
      ELSE.
        t69 = zlnt_runtime_uppe_91169605024d=>full( t69 ).
      ENDIF.
      DATA(t73) = | TYPE REF TO |.
      DATA(t74) = strlen( t69 ).
      IF t73 IS INITIAL.
        t68 = 0.
      ELSE.
        FIND t73 IN t69 MATCH OFFSET t68.
        IF sy-subrc <> 0.
          t68 = -1.
        ENDIF.
      ENDIF.
      DATA(t75) = 0.
      t67 = xsdbool( t68 >= t75 ).
      IF t67 = abap_true.
        DATA t76 TYPE REF TO zcl_lnt_data_reference.
        DATA t77 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t78) = t28.
        t77 = t78.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        t76 = NEW zcl_lnt_data_reference( i_type_9913 = t77 i_qualified_name = t79 ).
        t28 = t76.
      ENDIF.
    ENDIF.
    DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t80.
    DATA(t81) = abap_true.
    IF t81 = abap_true.
      DATA t82 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t83 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t84) = t3.
      t83 = t84.
      DATA t85 TYPE string.
      DATA(t86) = t2.
      t85 = t86->filename.
      DATA t87 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t88) = t28.
      t87 = t88.
      DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t89.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      t82 = NEW zcl_lnt_typed_identifier( i_token = t83 i_filename = t85 i_type_9913 = t87 i_meta = t89 i_value = t90 ).
      t80 = t82.
    ELSE.
      DATA t91 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t91.
      t80 = t91.
    ENDIF.
    result = t80.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d995_2c3b22cc1366.
  ENDMETHOD.
ENDCLASS.
