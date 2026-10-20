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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d669_a69ba8d8f8a6.
    t3 = t1->find_direct_statement( i_type_9913 = t6 ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA t19 TYPE REF TO zcl_lnt_statement_node.
    t19 = t3.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t17 = t19->find_first_expression( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t17 IS INITIAL ) = abap_true.
    ELSE.
      t22 = t17->get_first_token( ).
    ENDIF.
    t15 = t22.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t15 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zcl_lnt_abstract_node.
    t41 = t1.
    t40 = t41->children.
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
      IF xsdbool( xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_statement_node ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t53 TYPE REF TO zif_lnt_statement.
      DATA t55 TYPE REF TO zcl_lnt_statement_node.
      DATA t57 TYPE REF TO object.
      t57 = t45.
      t55 ?= t57.
      t53 = t55->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_st_statem_type ) = abap_true.
        DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t62) = NEW zcl_lnt_sy_type( ).
        DATA t63 TYPE REF TO zcl_lnt_statement_node.
        DATA t65 TYPE REF TO object.
        t65 = t45.
        t63 ?= t65.
        DATA t69 TYPE string.
        DATA t70 TYPE string.
        t70 = t15->str.
        DATA(t77) = strlen( t70 ).
        t69 = |{ t70 }{ |-| }|.
        DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t78->has = abap_true.
        t78->value = t69.
        t60 = t62->run_syntax( i_node = t63 i_input_967e = t2 i_qualified_name_prefix = t78 ).
        IF xsdbool( t60 IS BOUND ) = abap_true.
          DATA t83 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t83.
          DATA(t84) = VALUE string( ).
          DATA t86 TYPE REF TO zcl_lnt_fi_identifier.
          t86 = t60.
          DATA t90 TYPE string.
          t90 = t86->token->str.
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
          ELSE.
            IF t101 > t102 - t100.
              t101 = t102 - t100.
            ENDIF.
            t98 = t99+t100(t101).
          ENDIF.
          IF xsdbool( t98 = |!| ) = abap_true.
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
            ELSE.
              IF t110 > t113 - t109.
                t110 = t113 - t109.
              ENDIF.
              t107 = t105+t109(t110).
            ENDIF.
            t90 = t107.
          ENDIF.
          t84 = t90.
          DATA t115 TYPE REF TO zcl_lnt_abstract_type.
          t115 = t60->type_cba0.
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
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t129 ).
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t131.
          IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t131 ).
          ENDIF.
          t37->load( ).
          APPEND t83 TO t37->items.
          t37->save( ).
        ENDIF.
      ELSE.
        IF xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_st_type_mesh ) = abap_true.
          DATA t134 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t136 TYPE REF TO zcl_lnt_statement_node.
          DATA t138 TYPE REF TO object.
          t138 = t45.
          t136 ?= t138.
          t134 = me->run_mesh_node( i_node = t136 i_input_967e = t2 ).
          IF xsdbool( t134 IS BOUND ) = abap_true.
            DATA t143 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t143.
            DATA(t144) = VALUE string( ).
            DATA t146 TYPE REF TO zcl_lnt_fi_identifier.
            t146 = t134.
            DATA t150 TYPE string.
            t150 = t146->token->str.
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
            ELSE.
              IF t161 > t162 - t160.
                t161 = t162 - t160.
              ENDIF.
              t158 = t159+t160(t161).
            ENDIF.
            IF xsdbool( t158 = |!| ) = abap_true.
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
              ELSE.
                IF t170 > t173 - t169.
                  t170 = t173 - t169.
                ENDIF.
                t167 = t165+t169(t170).
              ENDIF.
              t150 = t167.
            ENDIF.
            t144 = t150.
            DATA t175 TYPE REF TO zcl_lnt_abstract_type.
            t175 = t134->type_cba0.
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
            DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t189.
            t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t189 ).
            DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t191.
            IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t191 ).
            ENDIF.
            t37->load( ).
            APPEND t143 TO t37->items.
            t37->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t192 TYPE string.
    t192 = t15->str.
    DATA t199 TYPE abap_bool.
    DATA t200 TYPE abap_bool.
    t200 = xsdbool( t2->scope->get_type( ) = |class_definition| ).
    t199 = t200.
    IF t200 = abap_false.
      t199 = xsdbool( t2->scope->get_type( ) = |interface| ).
    ENDIF.
    IF t199 = abap_true.
      DATA t211 TYPE string.
      DATA t212 TYPE string.
      t212 = t2->scope->get_name( ).
      DATA(t216) = strlen( t212 ).
      t211 = |{ t212 }{ |=>| }|.
      DATA(t218) = strlen( t211 ).
      t192 = |{ t211 }{ t192 }|.
    ENDIF.
    DATA t222 TYPE REF TO zcl_lnt_abstract_token.
    t222 = t15.
    DATA t224 TYPE string.
    t224 = t2->filename.
    DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t231->has = abap_true.
    t231->value = t192.
    DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t235 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    result = NEW zcl_lnt_typed_identifier( i_token = t222 i_filename = t224 i_type_9913 = NEW zcl_lnt_structure_type( i_components = t37 i_qualified_name = t231 i_ddic_name = t233 i_description = t234 ) i_meta = t235 i_value = t236 ).

  ENDMETHOD.

  METHOD run_mesh_node.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t5 = t1->find_first_expression( i_type_9913 = t8 ).
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
    ELSE.
      t9 = t5->get_first_token( ).
    ENDIF.
    t3 = t9.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t24 = t1->find_first_expression( i_type_9913 = t27 ).
    DATA t28 TYPE REF TO zcl_lnt_abstract_type.
    DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t28 = NEW zcl_lnt_basic_types( i_input_967e = t2 )->resolve_type_name( i_type_name = t24 i_length = t33 i_decimals_2eed = t34 i_qualified_name = t35 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t28 IS INITIAL ) = abap_true.
      DATA(t45) = |Mesh node, unknown type |.
      DATA(t46) = VALUE string( ).
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t49 TYPE REF TO zcl_lnt_expression_node.
      t49 = t24.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t49 IS INITIAL ) = abap_true.
      ELSE.
        DATA t55 TYPE string.
        t55 = t49->concat_tokens( ).
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
        t59 = t47->value.
      ENDIF.
      t46 = t59.
      DATA(t65) = strlen( t45 ).
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t28 = NEW zcl_lnt_unknown_type( i_error = |{ t45 }{ t46 }| i_qualified_name = t66 ).
    ELSE.
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
      IF xsdbool( t68 >= 0 ) = abap_true.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t28 = NEW zcl_lnt_data_reference( i_type_9913 = t28 i_qualified_name = t79 ).
      ENDIF.
    ENDIF.
    DATA t83 TYPE REF TO zcl_lnt_abstract_token.
    t83 = t3.
    DATA t85 TYPE string.
    t85 = t2->filename.
    DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    result = NEW zcl_lnt_typed_identifier( i_token = t83 i_filename = t85 i_type_9913 = t28 i_meta = t89 i_value = t90 ).

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
