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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d669_a69ba8d8f8a6.
    t4 = t1->find_direct_statement( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7 = xsdbool( t3 IS INITIAL ).
    IF t7 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t19 TYPE REF TO zcl_lnt_statement_node.
    t19 = t3.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t18 = t19->find_first_expression( i_type_9913 = t21 ).
    t17 = t18.
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t23) = xsdbool( t17 IS INITIAL ).
    IF t23 = abap_true.
    ELSE.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      t27 = t17.
      t26 = t27->get_first_token( ).
      t22 = t26.
    ENDIF.
    t15 = t22.
    DATA(t29) = VALUE abap_bool( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t29 = xsdbool( t15 IS INITIAL ).
    IF t29 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t37 = t38.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zcl_lnt_abstract_node.
    t41 = t1.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t43 = t41->children.
    t40 = t43.
    t39 ?= t40.
    DATA t45 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t46 TYPE REF TO object.
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
      t51 = xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_statement_node ).
      t50 = xsdbool( t51 = abap_false ).
      IF t50 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t53 TYPE REF TO zif_lnt_statement.
      DATA t54 TYPE REF TO zif_lnt_statement.
      DATA t55 TYPE REF TO zcl_lnt_statement_node.
      DATA t57 TYPE REF TO object.
      t57 = t45.
      t55 ?= t57.
      t54 = t55->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t53 = t54.
      DATA t58 TYPE abap_bool.
      t58 = xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_st_statem_type ).
      IF t58 = abap_true.
        DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t60.
        DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t61.
        DATA(t62) = NEW zcl_lnt_sy_type( ).
        DATA t63 TYPE REF TO zcl_lnt_statement_node.
        DATA t65 TYPE REF TO object.
        t65 = t45.
        t63 ?= t65.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA t69 TYPE string.
        DATA t70 TYPE string.
        DATA t74 TYPE string.
        t74 = t15->str.
        t70 = t74.
        DATA(t76) = |-|.
        DATA(t77) = strlen( t70 ).
        t69 = |{ t70 }{ t76 }|.
        DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t78->has = abap_true.
        t78->value = t69.
        t67 = t78.
        t61 = t62->run_syntax( i_node = t63 i_input_967e = t2 i_qualified_name_prefix = t67 ).
        t60 = t61.
        DATA t80 TYPE abap_bool.
        t80 = xsdbool( t60 IS BOUND ).
        IF t80 = abap_true.
          DATA t83 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t83.
          DATA(t84) = VALUE string( ).
          DATA(t85) = VALUE string( ).
          DATA t86 TYPE REF TO zcl_lnt_fi_identifier.
          t86 = t60.
          DATA(t89) = VALUE string( ).
          DATA t90 TYPE string.
          DATA t93 TYPE REF TO zcl_lnt_abstract_token.
          t93 = t86->token.
          DATA t95 TYPE string.
          t95 = t93->str.
          t90 = t95.
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
            t105 = t90.
            DATA(t107) = VALUE string( ).
            DATA(t109) = 1.
            DATA t110 TYPE i.
            t110 = strlen( t105 ).
            DATA(t113) = strlen( t105 ).
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
              t107 = t105+t109(t110).
            ENDIF.
            t104 = t107.
            t90 = t104.
          ENDIF.
          t89 = t90.
          t85 = t89.
          t84 = t85.
          DATA t115 TYPE REF TO zcl_lnt_abstract_type.
          DATA t120 TYPE REF TO zcl_lnt_abstract_type.
          t120 = t60->type_cba0.
          t115 = t120.
          DATA t122 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t122.
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t124.
          t83 = NEW zcl_lnt_istructure_component( i_name = t84 i_type_9913 = t115 i_as_include = t122 i_suffix = t124 ).
          CREATE OBJECT t83->zlnt_view_ownkeys_b0e8086400eb.
          t83->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t126 ).
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
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
          DATA(t130) = |type|.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t131.
          IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
          ENDIF.
          t37->load( ).
          APPEND t83 TO t37->items.
          t37->save( ).
        ENDIF.
      ELSE.
        DATA t132 TYPE abap_bool.
        t132 = xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_st_type_mesh ).
        IF t132 = abap_true.
          DATA t134 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t135 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t136 TYPE REF TO zcl_lnt_statement_node.
          DATA t138 TYPE REF TO object.
          t138 = t45.
          t136 ?= t138.
          t135 = me->run_mesh_node( i_node = t136 i_input_967e = t2 ).
          t134 = t135.
          DATA t140 TYPE abap_bool.
          t140 = xsdbool( t134 IS BOUND ).
          IF t140 = abap_true.
            DATA t143 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t143.
            DATA(t144) = VALUE string( ).
            DATA(t145) = VALUE string( ).
            DATA t146 TYPE REF TO zcl_lnt_fi_identifier.
            t146 = t134.
            DATA(t149) = VALUE string( ).
            DATA t150 TYPE string.
            DATA t153 TYPE REF TO zcl_lnt_abstract_token.
            t153 = t146->token.
            DATA t155 TYPE string.
            t155 = t153->str.
            t150 = t155.
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
              t165 = t150.
              DATA(t167) = VALUE string( ).
              DATA(t169) = 1.
              DATA t170 TYPE i.
              t170 = strlen( t165 ).
              DATA(t173) = strlen( t165 ).
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
                t167 = t165+t169(t170).
              ENDIF.
              t164 = t167.
              t150 = t164.
            ENDIF.
            t149 = t150.
            t145 = t149.
            t144 = t145.
            DATA t175 TYPE REF TO zcl_lnt_abstract_type.
            DATA t180 TYPE REF TO zcl_lnt_abstract_type.
            t180 = t134->type_cba0.
            t175 = t180.
            DATA t182 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t182.
            DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t184.
            t143 = NEW zcl_lnt_istructure_component( i_name = t144 i_type_9913 = t175 i_as_include = t182 i_suffix = t184 ).
            CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
            t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t186.
            t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t186 ).
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
            t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t188 p1 = t189 ).
            DATA(t190) = |type|.
            DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t191.
            IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
            ENDIF.
            t37->load( ).
            APPEND t143 TO t37->items.
            t37->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t192 TYPE string.
    DATA t197 TYPE string.
    t197 = t15->str.
    t192 = t197.
    DATA t199 TYPE abap_bool.
    DATA t200 TYPE abap_bool.
    DATA t201 TYPE string.
    DATA t202 TYPE REF TO zcl_lnt_current_scope.
    t202 = t2->scope.
    t201 = t202->get_type( ).
    DATA(t204) = |class_definition|.
    t200 = xsdbool( t201 = t204 ).
    t199 = t200.
    IF t200 = abap_false.
      DATA t205 TYPE abap_bool.
      DATA t206 TYPE string.
      DATA t207 TYPE REF TO zcl_lnt_current_scope.
      t207 = t2->scope.
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
      t213 = t2->scope.
      t212 = t213->get_name( ).
      DATA(t215) = |=>|.
      DATA(t216) = strlen( t212 ).
      t211 = |{ t212 }{ t215 }|.
      DATA(t218) = strlen( t211 ).
      t210 = |{ t211 }{ t192 }|.
      t192 = t210.
    ENDIF.
    DATA t221 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t222 TYPE REF TO zcl_lnt_abstract_token.
    t222 = t15.
    DATA t224 TYPE string.
    t224 = t2->filename.
    DATA t226 TYPE REF TO zcl_lnt_structure_type.
    DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t231->has = abap_true.
    t231->value = t192.
    t228 = t231.
    DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t226 = NEW zcl_lnt_structure_type( i_components = t37 i_qualified_name = t228 i_ddic_name = t233 i_description = t234 ).
    DATA t235 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t221 = NEW zcl_lnt_typed_identifier( i_token = t222 i_filename = t224 i_type_9913 = t226 i_meta = t235 i_value = t236 ).
    result = t221.

  ENDMETHOD.

  METHOD run_mesh_node.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t6 = t1->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t10) = xsdbool( t5 IS INITIAL ).
    IF t10 = abap_true.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      t14 = t5.
      t13 = t14->get_first_token( ).
      t9 = t13.
    ENDIF.
    t3 = t9.
    DATA(t16) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16 = xsdbool( t3 IS INITIAL ).
    IF t16 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t25 = t1->find_first_expression( i_type_9913 = t27 ).
    t24 = t25.
    DATA t28 TYPE REF TO zcl_lnt_abstract_type.
    DATA t29 TYPE REF TO zcl_lnt_abstract_type.
    DATA t30 TYPE REF TO zcl_lnt_basic_types.
    t30 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
    DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t29 = t30->resolve_type_name( i_type_name = t24 i_length = t33 i_decimals_2eed = t34 i_qualified_name = t35 ).
    t28 = t29.
    DATA(t36) = VALUE abap_bool( ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t36 = xsdbool( t28 IS INITIAL ).
    IF t36 = abap_true.
      DATA t43 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t44) = VALUE string( ).
      DATA(t45) = |Mesh node, unknown type |.
      DATA(t46) = VALUE string( ).
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t49 TYPE REF TO zcl_lnt_expression_node.
      t49 = t24.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t52) = xsdbool( t49 IS INITIAL ).
      IF t52 = abap_true.
      ELSE.
        DATA t55 TYPE string.
        DATA t56 TYPE REF TO zcl_lnt_expression_node.
        t56 = t49.
        t55 = t56->concat_tokens( ).
        DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t58->has = abap_true.
        t58->value = t55.
        t51 = t58.
      ENDIF.
      t47 = t51.
      DATA(t59) = VALUE string( ).
      DATA(t60) = VALUE abap_bool( ).
      IF t47 IS INITIAL.
        t60 = abap_true.
      ELSEIF t47->has = abap_false.
        t60 = abap_true.
      ENDIF.
      IF t60 = abap_true.
        t59 = |undefined|.
      ELSE.
        DATA t63 TYPE string.
        t63 = t47->value.
        t59 = t63.
      ENDIF.
      t46 = t59.
      DATA(t65) = strlen( t45 ).
      t44 = |{ t45 }{ t46 }|.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t43 = NEW zcl_lnt_unknown_type( i_error = t44 i_qualified_name = t66 ).
      t28 = t43.
    ELSE.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = VALUE i( ).
      DATA t69 TYPE string.
      DATA t70 TYPE string.
      t70 = t1->concat_tokens( ).
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
        t77 = t28.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t76 = NEW zcl_lnt_data_reference( i_type_9913 = t77 i_qualified_name = t79 ).
        t28 = t76.
      ENDIF.
    ENDIF.
    DATA t82 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t83 TYPE REF TO zcl_lnt_abstract_token.
    t83 = t3.
    DATA t85 TYPE string.
    t85 = t2->filename.
    DATA t87 TYPE REF TO zcl_lnt_abstract_type.
    t87 = t28.
    DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t82 = NEW zcl_lnt_typed_identifier( i_token = t83 i_filename = t85 i_type_9913 = t87 i_meta = t89 i_value = t90 ).
    result = t82.

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
