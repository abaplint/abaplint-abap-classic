* TS: src/lsp/semantic.ts:22:1 SemanticHighlighting
CLASS zcl_lnt_semantic_highlighting DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    CLASS-DATA token_types TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA token_type_map TYPE REF TO zlnt_runtime_map__fed782b2fc26.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    CLASS-METHODS semantic_tokens_legend RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_2d2f513b.
    CLASS-METHODS init_legend.
    METHODS semantic_tokens_range IMPORTING i_range TYPE REF TO zcl_lnt_itext_document_range RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_d48da73b.
    METHODS encode_tokens IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CLASS-DATA zlnt_builtin_init_ceda21d7331d TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_1c3f77c0f160.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_semantic_highlighting IMPLEMENTATION.
  METHOD constructor.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    zcl_lnt_semantic_highlighting=>init_legend( ).
  ENDMETHOD.

  METHOD semantic_tokens_legend.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    zcl_lnt_semantic_highlighting=>init_legend( ).
    DATA t1 TYPE REF TO zcl_lnt_shape_2d2f513b.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t5.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      t5 = zcl_lnt_semantic_highlighting=>token_types.
      t3 = t5.
    ELSE.
      DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t6.
      t3 = t6.
    ENDIF.
    t2 = t3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t10.
      t8 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t11.
      t8 = t11.
    ENDIF.
    t7 = t8.
    t1 = NEW zcl_lnt_shape_2d2f513b( i_token_types = t2 i_token_modifiers = t7 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokenTypes` p1 = t12 ).
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokenModifiers` p1 = t13 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t14) = |tokenTypes|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
    ENDIF.
    DATA(t16) = |tokenModifiers|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD init_legend.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    DATA(t1) = VALUE abap_bool( ).
    DATA(t2) = VALUE i( ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t3.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    t3 = zcl_lnt_semantic_highlighting=>token_types.
    t3->load( ).
    t2 = lines( t3->items ).
    DATA(t4) = 0.
    t1 = xsdbool( t2 = t4 ).
    IF t1 = abap_true.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      DATA t5 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
      DATA t6 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
      DATA(t7) = NEW zlnt_runtime_map__fed782b2fc26( ).
      t6 = t7.
      DATA(t8) = t6.
      t5 = t8.
      zcl_lnt_semantic_highlighting=>token_type_map = t5.
      DATA t9 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
      CLEAR t10.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      t10 = zcl_lnt_semantic_highlighting=>token_type_map.
      DATA(t11) = CONV string( zcl_lnt_semantic_module=>source_abap ).
      DATA(t12) = VALUE f( ).
      DATA(t13) = VALUE i( ).
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t14.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      t14 = zcl_lnt_semantic_highlighting=>token_types.
      t14->load( ).
      t13 = lines( t14->items ).
      t12 = t13.
      t9 = t10->set( p0 = t11 p1 = t12 ).
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t15.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      t15 = zcl_lnt_semantic_highlighting=>token_types.
      DATA(t16) = CONV string( zcl_lnt_semantic_module=>source_abap ).
      t15->load( ).
      APPEND t16 TO t15->items.
      t15->save( ).
      DATA t17 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
      CLEAR t18.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      t18 = zcl_lnt_semantic_highlighting=>token_type_map.
      DATA(t19) = CONV string( zcl_lnt_semantic_module=>block_abap ).
      DATA(t20) = VALUE f( ).
      DATA(t21) = VALUE i( ).
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t22.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      t22 = zcl_lnt_semantic_highlighting=>token_types.
      t22->load( ).
      t21 = lines( t22->items ).
      t20 = t21.
      t17 = t18->set( p0 = t19 p1 = t20 ).
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      t23 = zcl_lnt_semantic_highlighting=>token_types.
      DATA(t24) = CONV string( zcl_lnt_semantic_module=>block_abap ).
      t23->load( ).
      APPEND t24 TO t23->items.
      t23->save( ).
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_map__a1006b231250.
      CLEAR t26.
      IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
        zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
      ENDIF.
      t26 = zcl_lnt_main_d_module=>semantic_token_types_namespace.
      t25 = t26->keys( ).
      DATA(t27) = VALUE string( ).
      t25->dense( ).
      DATA(t28) = VALUE i( ).
      DO.
        t25->load( ).
        IF t28 >= lines( t25->items ).
          EXIT.
        ENDIF.
        CLEAR t27.
        READ TABLE t25->items INDEX t28 + 1 INTO t27.
        IF t25->has( t28 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t28 = t28 + 1.
        DATA t29 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
        CLEAR t29.
        DATA t30 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
        CLEAR t30.
        IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
          zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
        ENDIF.
        t30 = zcl_lnt_semantic_highlighting=>token_type_map.
        DATA(t31) = t27.
        DATA(t32) = VALUE f( ).
        DATA(t33) = VALUE i( ).
        DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t34.
        IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
          zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
        ENDIF.
        t34 = zcl_lnt_semantic_highlighting=>token_types.
        t34->load( ).
        t33 = lines( t34->items ).
        t32 = t33.
        t29 = t30->set( p0 = t31 p1 = t32 ).
        DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t35.
        IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
          zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
        ENDIF.
        t35 = zcl_lnt_semantic_highlighting=>token_types.
        DATA(t36) = t27.
        t35->load( ).
        APPEND t36 TO t35->items.
        t35->save( ).
      ENDDO.
    ENDIF.
  ENDMETHOD.

  METHOD semantic_tokens_range.
    DATA(t1) = i_range.
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = me->reg.
    DATA t5 TYPE string.
    DATA t6 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t7) = t1.
    t6 = t7->text_document.
    t5 = t6->zlnt_view_read_no_0041136eb871( ).
    t3 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t4 i_filename = t5 ).
    t2 = t3.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_abap_file.
    DATA(t10) = t2.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_shape_d48da73b.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA t19 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
        CREATE OBJECT t19.
        t17 = t19.
      ELSE.
        DATA t20 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
        CLEAR t20.
        t17 = t20.
      ENDIF.
      t16 = t17.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      t21 = t22.
      t15 = NEW zcl_lnt_shape_d48da73b( i_result_id = t21 i_data_dc02 = t16 ).
      CREATE OBJECT t15->zlnt_view_ownkeys_b0e8086400eb.
      t15->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      IF t15->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t15->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `data` p1 = t23 ).
      ENDIF.
      CREATE OBJECT t15->zlnt_json_ownkeys_70e5fd461788.
      t15->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t24) = |data|.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      IF t15->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t15->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
      ENDIF.
      result = t15.
      RETURN.
    ENDIF.
    DATA t26 TYPE REF TO zcl_lnt_position.
    DATA t27 TYPE REF TO zcl_lnt_position.
    DATA t28 TYPE f.
    DATA t29 TYPE f.
    DATA t30 TYPE REF TO zcl_lnt_no_position.
    DATA(t31) = t1.
    t30 = t31->start.
    t29 = t30->zlnt_view_read_no_30cccf3c929a( ).
    DATA(t32) = CONV f( 1 ).
    t28 = t29 + t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t35 TYPE REF TO zcl_lnt_no_position.
    DATA(t36) = t1.
    t35 = t36->start.
    t34 = t35->zlnt_view_read_no_a9574d1ec283( ).
    DATA(t37) = CONV f( 1 ).
    DATA(t38) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t38->has = abap_true.
    t38->value = t37.
    t33 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t34 right = t38 op = `+` ).
    t27 = NEW zcl_lnt_position( i_row = t28 i_col = t33 ).
    t26 = t27.
    DATA t39 TYPE REF TO zcl_lnt_position.
    DATA t40 TYPE REF TO zcl_lnt_position.
    DATA t41 TYPE f.
    DATA t42 TYPE f.
    DATA t43 TYPE REF TO zcl_lnt_no_position.
    DATA(t44) = t1.
    t43 = t44->end.
    t42 = t43->zlnt_view_read_no_30cccf3c929a( ).
    DATA(t45) = CONV f( 1 ).
    t41 = t42 + t45.
    DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t47 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t48 TYPE REF TO zcl_lnt_no_position.
    DATA(t49) = t1.
    t48 = t49->end.
    t47 = t48->zlnt_view_read_no_a9574d1ec283( ).
    DATA(t50) = CONV f( 1 ).
    DATA(t51) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t51->has = abap_true.
    t51->value = t50.
    t46 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t47 right = t51 op = `+` ).
    t40 = NEW zcl_lnt_position( i_row = t41 i_col = t46 ).
    t39 = t40.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t53.
    t52 = t53.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zcl_lnt_abap_file.
    DATA t56 TYPE REF TO zcl_lnt_abap_file.
    DATA(t57) = t2.
    t56 = t57.
    t55 = t56.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t59) = t55.
    t58 = t59->statements.
    t54 = t58.
    DATA t60 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t60.
    DATA t61 TYPE REF TO object.
    CLEAR t61.
    DATA(t62) = VALUE i( ).
    DO.
      t54->load( ).
      IF t62 >= lines( t54->items ).
        EXIT.
      ENDIF.
      CLEAR t61.
      READ TABLE t54->items INDEX t62 + 1 INTO t61.
      t62 = t62 + 1.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t63.
      CLEAR t60.
      IF t61 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t63 ?= t61.
        DATA t64 TYPE REF TO object.
        t64 = t63->as_ref( ).
        t60 ?= t64.
      ELSE.
        t60 ?= t61.
      ENDIF.
      DATA t65 TYPE abap_bool.
      DATA t66 TYPE REF TO zcl_lnt_position.
      DATA t67 TYPE REF TO zcl_lnt_abstract_token.
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t69) = t60.
      t68 = t69->get_first_token( ).
      t67 = t68.
      DATA t70 TYPE REF TO zcl_lnt_position.
      DATA(t71) = t67.
      t70 = t71->start.
      t66 = t70.
      t65 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_virtual_position ).
      IF t65 = abap_true.
        CONTINUE.
      ELSE.
        DATA t72 TYPE abap_bool.
        DATA t73 TYPE REF TO zcl_lnt_position.
        DATA t74 TYPE REF TO zcl_lnt_abstract_token.
        DATA t75 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t76) = t60.
        t75 = t76->get_first_token( ).
        t74 = t75.
        DATA t77 TYPE REF TO zcl_lnt_position.
        DATA(t78) = t74.
        t77 = t78->start.
        t73 = t77.
        DATA(t79) = t39.
        t72 = t73->is_after( i_p = t79 ).
        IF t72 = abap_true.
          EXIT.
        ELSE.
          DATA(t80) = VALUE abap_bool( ).
          DATA t81 TYPE REF TO zcl_lnt_position.
          DATA t82 TYPE REF TO zcl_lnt_position.
          DATA t83 TYPE REF TO zcl_lnt_abstract_token.
          DATA t84 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t85) = t60.
          t84 = t85->get_last_token( ).
          t83 = t84.
          DATA t86 TYPE REF TO zcl_lnt_position.
          DATA t87 TYPE f.
          DATA t88 TYPE REF TO zcl_lnt_position.
          DATA t89 TYPE REF TO zcl_lnt_position.
          DATA(t90) = t83.
          t89 = t90->start.
          t88 = t89.
          DATA t91 TYPE f.
          DATA(t92) = t88.
          t91 = t92->row.
          t87 = t91.
          DATA t93 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t94 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t95 TYPE REF TO zcl_lnt_position.
          DATA t96 TYPE REF TO zcl_lnt_position.
          DATA(t97) = t83.
          t96 = t97->start.
          t95 = t96.
          DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t99) = t95.
          t98 = t99->col.
          t94 = t98.
          DATA t100 TYPE f.
          DATA t101 TYPE i.
          DATA t102 TYPE string.
          DATA(t103) = t83.
          t102 = t103->str.
          DATA(t104) = strlen( t102 ).
          t101 = t104.
          t100 = t101.
          DATA(t105) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t105->has = abap_true.
          t105->value = t100.
          t93 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t94 right = t105 op = `+` ).
          t86 = NEW zcl_lnt_position( i_row = t87 i_col = t93 ).
          t82 = t86.
          t81 = t82.
          DATA t106 TYPE REF TO zcl_lnt_position.
          DATA(t107) = t26.
          t106 = t107.
          DATA t108 TYPE abap_bool.
          DATA t109 TYPE abap_bool.
          DATA t110 TYPE f.
          DATA(t111) = t81.
          t110 = t111->row.
          DATA t112 TYPE f.
          DATA(t113) = t106.
          t112 = t113->row.
          t109 = xsdbool( t110 < t112 ).
          t108 = t109.
          IF t109 = abap_false.
            DATA t114 TYPE abap_bool.
            DATA t115 TYPE abap_bool.
            DATA t116 TYPE f.
            DATA(t117) = t81.
            t116 = t117->row.
            DATA t118 TYPE f.
            DATA(t119) = t106.
            t118 = t119->row.
            t115 = xsdbool( t116 = t118 ).
            t114 = t115.
            IF t115 = abap_true.
              DATA t120 TYPE abap_bool.
              DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t122) = t81.
              t121 = t122->col.
              DATA t123 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t124) = t106.
              t123 = t124->col.
              t120 = zlnt_runtime_numb_290eb04a9758=>compare( left = t121 right = t123 op = `<` ).
              t114 = t120.
            ENDIF.
            t108 = t114.
          ENDIF.
          t80 = t108.
          IF t80 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t125 TYPE REF TO zif_lnt_statement.
      DATA t126 TYPE REF TO zif_lnt_statement.
      DATA(t127) = t60.
      t126 = t127->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t125 = t126.
      DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t129) = t60.
      t128 = t129->get_token_nodes( ).
      DATA t130 TYPE REF TO zcl_lnt_token_node.
      CLEAR t130.
      DATA t131 TYPE REF TO object.
      CLEAR t131.
      DATA(t132) = VALUE i( ).
      DO.
        t128->load( ).
        IF t132 >= lines( t128->items ).
          EXIT.
        ENDIF.
        CLEAR t131.
        READ TABLE t128->items INDEX t132 + 1 INTO t131.
        t132 = t132 + 1.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        CLEAR t130.
        IF t131 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t133 ?= t131.
          DATA t134 TYPE REF TO object.
          t134 = t133->as_ref( ).
          t130 ?= t134.
        ELSE.
          t130 ?= t131.
        ENDIF.
        DATA t135 TYPE REF TO zcl_lnt_abstract_token.
        DATA t136 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t137) = t130.
        t136 = t137->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t135 = t136.
        DATA t138 TYPE string.
        DATA(t139) = |keyword|.
        t138 = t139.
        DATA t140 TYPE abap_bool.
        DATA(t141) = t135.
        t140 = xsdbool( t141 IS BOUND AND t141 IS INSTANCE OF zcl_lnt_punctuation ).
        IF t140 = abap_true.
          DATA(t142) = CONV string( zcl_lnt_semantic_module=>source_abap ).
          t138 = t142.
        ELSE.
          DATA(t143) = VALUE abap_bool( ).
          DATA(t144) = VALUE abap_bool( ).
          DATA(t145) = VALUE abap_bool( ).
          DATA(t146) = VALUE abap_bool( ).
          DATA(t147) = VALUE abap_bool( ).
          DATA(t148) = VALUE abap_bool( ).
          DATA(t149) = VALUE abap_bool( ).
          DATA(t150) = VALUE abap_bool( ).
          DATA(t151) = VALUE abap_bool( ).
          DATA(t152) = VALUE abap_bool( ).
          DATA t153 TYPE abap_bool.
          DATA t154 TYPE abap_bool.
          DATA(t155) = t125.
          t154 = xsdbool( t155 IS BOUND AND t155 IS INSTANCE OF zcl_lnt_public ).
          t153 = t154.
          IF t154 = abap_false.
            DATA t156 TYPE abap_bool.
            DATA(t157) = t125.
            t156 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_private ).
            t153 = t156.
          ENDIF.
          t152 = t153.
          IF t153 = abap_false.
            DATA t158 TYPE abap_bool.
            DATA(t159) = t125.
            t158 = xsdbool( t159 IS BOUND AND t159 IS INSTANCE OF zcl_lnt_protected ).
            t152 = t158.
          ENDIF.
          t151 = t152.
          IF t152 = abap_false.
            DATA t160 TYPE abap_bool.
            DATA(t161) = t125.
            t160 = xsdbool( t161 IS BOUND AND t161 IS INSTANCE OF zcl_lnt_st_class_definition ).
            t151 = t160.
          ENDIF.
          t150 = t151.
          IF t151 = abap_false.
            DATA t162 TYPE abap_bool.
            DATA(t163) = t125.
            t162 = xsdbool( t163 IS BOUND AND t163 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
            t150 = t162.
          ENDIF.
          t149 = t150.
          IF t150 = abap_false.
            DATA t164 TYPE abap_bool.
            DATA(t165) = t125.
            t164 = xsdbool( t165 IS BOUND AND t165 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
            t149 = t164.
          ENDIF.
          t148 = t149.
          IF t149 = abap_false.
            DATA t166 TYPE abap_bool.
            DATA(t167) = t125.
            t166 = xsdbool( t167 IS BOUND AND t167 IS INSTANCE OF zcl_lnt_end_method ).
            t148 = t166.
          ENDIF.
          t147 = t148.
          IF t148 = abap_false.
            DATA t168 TYPE abap_bool.
            DATA(t169) = t125.
            t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_end_class ).
            t147 = t168.
          ENDIF.
          t146 = t147.
          IF t147 = abap_false.
            DATA t170 TYPE abap_bool.
            DATA(t171) = t125.
            t170 = xsdbool( t171 IS BOUND AND t171 IS INSTANCE OF zcl_lnt_st_interface ).
            t146 = t170.
          ENDIF.
          t145 = t146.
          IF t146 = abap_false.
            DATA t172 TYPE abap_bool.
            DATA(t173) = t125.
            t172 = xsdbool( t173 IS BOUND AND t173 IS INSTANCE OF zcl_lnt_end_interface ).
            t145 = t172.
          ENDIF.
          t144 = t145.
          IF t145 = abap_false.
            DATA t174 TYPE abap_bool.
            DATA(t175) = t125.
            t174 = xsdbool( t175 IS BOUND AND t175 IS INSTANCE OF zcl_lnt_st_form ).
            t144 = t174.
          ENDIF.
          t143 = t144.
          IF t144 = abap_false.
            DATA t176 TYPE abap_bool.
            DATA(t177) = t125.
            t176 = xsdbool( t177 IS BOUND AND t177 IS INSTANCE OF zcl_lnt_end_form ).
            t143 = t176.
          ENDIF.
          IF t143 = abap_true.
            DATA(t178) = CONV string( zcl_lnt_semantic_module=>block_abap ).
            t138 = t178.
          ELSE.
            DATA(t179) = VALUE abap_bool( ).
            DATA(t180) = VALUE abap_bool( ).
            DATA(t181) = VALUE abap_bool( ).
            DATA t182 TYPE abap_bool.
            DATA t183 TYPE abap_bool.
            DATA(t184) = t135.
            t183 = xsdbool( t184 IS BOUND AND t184 IS INSTANCE OF zcl_lnt_string_token ).
            t182 = t183.
            IF t183 = abap_false.
              DATA t185 TYPE abap_bool.
              DATA(t186) = t135.
              t185 = xsdbool( t186 IS BOUND AND t186 IS INSTANCE OF zcl_lnt_lx_string_template ).
              t182 = t185.
            ENDIF.
            t181 = t182.
            IF t182 = abap_false.
              DATA t187 TYPE abap_bool.
              DATA(t188) = t135.
              t187 = xsdbool( t188 IS BOUND AND t188 IS INSTANCE OF zcl_lnt_string_template_begin ).
              t181 = t187.
            ENDIF.
            t180 = t181.
            IF t181 = abap_false.
              DATA t189 TYPE abap_bool.
              DATA(t190) = t135.
              t189 = xsdbool( t190 IS BOUND AND t190 IS INSTANCE OF zcl_lnt_string_template_end ).
              t180 = t189.
            ENDIF.
            t179 = t180.
            IF t180 = abap_false.
              DATA t191 TYPE abap_bool.
              DATA(t192) = t135.
              t191 = xsdbool( t192 IS BOUND AND t192 IS INSTANCE OF zcl_lnt_string_template_middle ).
              t179 = t191.
            ENDIF.
            IF t179 = abap_true.
              DATA(t193) = |string|.
              t138 = t193.
            ELSE.
              DATA t194 TYPE abap_bool.
              DATA(t195) = t135.
              t194 = xsdbool( t195 IS BOUND AND t195 IS INSTANCE OF zcl_lnt_lx_comment ).
              IF t194 = abap_true.
                DATA(t196) = |comment|.
                t138 = t196.
              ELSE.
                DATA t197 TYPE abap_bool.
                DATA(t198) = t130.
                t197 = xsdbool( t198 IS BOUND AND t198 IS INSTANCE OF zcl_lnt_token_node_regex ).
                IF t197 = abap_true.
                  DATA(t199) = CONV string( zcl_lnt_semantic_module=>source_abap ).
                  t138 = t199.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t200 TYPE REF TO zcl_lnt_abstract_token.
        DATA t201 TYPE REF TO zcl_lnt_abstract_token.
        DATA t202 TYPE REF TO zcl_lnt_token_node.
        DATA(t203) = t130.
        t202 = t203.
        DATA t204 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t205) = t202.
        t204 = t205->token.
        t201 = t204.
        t200 = t201.
        DATA(t206) = t52.
        DATA t207 TYPE REF TO zcl_lnt_ls_token.
        DATA t208 TYPE f.
        DATA t209 TYPE f.
        DATA t210 TYPE f.
        DATA t211 TYPE REF TO zcl_lnt_position.
        DATA t212 TYPE REF TO zcl_lnt_position.
        DATA t213 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t214) = t200.
        t213 = t214.
        DATA t215 TYPE REF TO zcl_lnt_position.
        DATA(t216) = t213.
        t215 = t216->start.
        t212 = t215.
        t211 = t212.
        DATA t217 TYPE f.
        DATA(t218) = t211.
        t217 = t218->row.
        t210 = t217.
        DATA(t219) = CONV f( 1 ).
        t209 = t210 - t219.
        t208 = t209.
        DATA t220 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t221 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t222 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t223 TYPE REF TO zcl_lnt_position.
        DATA t224 TYPE REF TO zcl_lnt_position.
        DATA t225 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t226) = t200.
        t225 = t226.
        DATA t227 TYPE REF TO zcl_lnt_position.
        DATA(t228) = t225.
        t227 = t228->start.
        t224 = t227.
        t223 = t224.
        DATA t229 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t230) = t223.
        t229 = t230->col.
        t222 = t229.
        DATA(t231) = CONV f( 1 ).
        DATA(t232) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t232->has = abap_true.
        t232->value = t231.
        t221 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t222 right = t232 op = `-` ).
        t220 = t221.
        DATA t233 TYPE f.
        DATA t234 TYPE f.
        DATA t235 TYPE i.
        DATA t236 TYPE string.
        DATA t237 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t238) = t200.
        t237 = t238.
        DATA t239 TYPE string.
        DATA(t240) = t237.
        t239 = t240->str.
        t236 = t239.
        DATA(t241) = strlen( t236 ).
        t235 = t241.
        t234 = t235.
        t233 = t234.
        DATA t242 TYPE string.
        DATA(t243) = t138.
        t242 = t243.
        DATA t244 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t245 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t245.
        t244 = t245.
        t207 = NEW zcl_lnt_ls_token( i_line = t208 i_start_char = t220 i_length = t233 i_token_type = t242 i_token_modifiers = t244 ).
        CREATE OBJECT t207->zlnt_view_ownkeys_b0e8086400eb.
        t207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t246 ).
        ENDIF.
        DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t247.
        IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `startChar` p1 = t247 ).
        ENDIF.
        DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t248.
        IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t248 ).
        ENDIF.
        DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t249.
        IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokenType` p1 = t249 ).
        ENDIF.
        DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t250.
        IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokenModifiers` p1 = t250 ).
        ENDIF.
        CREATE OBJECT t207->zlnt_json_ownkeys_70e5fd461788.
        t207->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t251) = |line|.
        DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t252.
        IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t251 p1 = t252 ).
        ENDIF.
        DATA(t253) = |startChar|.
        DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t254.
        IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t253 p1 = t254 ).
        ENDIF.
        DATA(t255) = |length|.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t256.
        IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t255 p1 = t256 ).
        ENDIF.
        DATA(t257) = |tokenType|.
        DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t258.
        IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t257 p1 = t258 ).
        ENDIF.
        DATA(t259) = |tokenModifiers|.
        DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t260.
        IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t259 p1 = t260 ).
        ENDIF.
        t206->load( ).
        APPEND t207 TO t206->items.
        t206->save( ).
      ENDDO.
    ENDDO.
    DATA t261 TYPE REF TO zcl_lnt_shape_d48da73b.
    CLEAR t261.
    DATA t262 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CLEAR t263.
    DATA(t264) = abap_true.
    IF t264 = abap_true.
      DATA t265 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
      DATA(t266) = t52.
      t265 = me->encode_tokens( i_tokens = t266 ).
      t263 = t265.
    ELSE.
      DATA t267 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
      CLEAR t267.
      t263 = t267.
    ENDIF.
    t262 = t263.
    DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t269.
    t268 = t269.
    t261 = NEW zcl_lnt_shape_d48da73b( i_result_id = t268 i_data_dc02 = t262 ).
    CREATE OBJECT t261->zlnt_view_ownkeys_b0e8086400eb.
    t261->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `data` p1 = t270 ).
    ENDIF.
    CREATE OBJECT t261->zlnt_json_ownkeys_70e5fd461788.
    t261->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t271) = |data|.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t271 p1 = t272 ).
    ENDIF.
    result = t261.

  ENDMETHOD.

  METHOD encode_tokens.
    DATA(t1) = i_tokens.
    DATA t2 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t3 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t5 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t7 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = t1.
    DATA t9 TYPE REF TO zcl_lnt_ls_token.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t8->load( ).
      IF t11 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t8->items INDEX t11 + 1 INTO t10.
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
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t16) = t4.
      t15 = t16.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
        DATA(t21) = t2.
        DATA t22 TYPE f.
        DATA(t23) = t9.
        t22 = t23->line.
        t21->load( ).
        APPEND t22 TO t21->items.
        t21->save( ).
      ELSE.
        DATA(t24) = t2.
        DATA(t25) = VALUE f( ).
        DATA t26 TYPE f.
        DATA(t27) = t9.
        t26 = t27->line.
        DATA(t28) = VALUE f( ).
        DATA(t29) = t4.
        IF t29->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t28 = t29->value.
        t25 = t26 - t28.
        t24->load( ).
        APPEND t25 TO t24->items.
        t24->save( ).
      ENDIF.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = t4.
      DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA t35 TYPE f.
        DATA(t36) = t9.
        t35 = t36->line.
        DATA(t37) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t37->has = abap_true.
        t37->value = t35.
        t33 = t37.
      ELSE.
        DATA t38 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t38.
        t33 = t38.
      ENDIF.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE abap_bool( ).
      IF t32 IS BOUND.
        t39 = t32->has.
      ENDIF.
      IF t33 IS BOUND.
        t40 = t33->has.
      ENDIF.
      IF t39 = t40.
        IF t39 = abap_false.
          t31 = abap_true.
        ELSE.
          IF t32->number_special <> 0 OR t33->number_special <> 0.
            t31 = xsdbool( t32->number_special = t33->number_special AND t32->number_special <> 1 ).
          ELSE.
            t31 = xsdbool( t32->value = t33->value ).
          ENDIF.
        ENDIF.
      ENDIF.
      t30 = t31.
      IF t31 = abap_true.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = t6.
        IF t42 IS BOUND.
          IF t42->has = abap_true.
            IF t42->number_special <> 0.
              t41 = xsdbool( t42->number_special <> 1 ).
            ELSE.
              t41 = xsdbool( t42->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
        ENDIF.
        t30 = t41.
      ENDIF.
      IF t30 = abap_true.
        DATA(t43) = t2.
        DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t44.
        DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t46) = t9.
        t45 = t46->start_char.
        DATA(t47) = VALUE f( ).
        DATA(t48) = t6.
        IF t48->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t47 = t48->value.
        DATA(t49) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t49->has = abap_true.
        t49->value = t47.
        t44 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t45 right = t49 op = `-` ).
        DATA(t50) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t44 ) ).
        t43->load( ).
        APPEND t50 TO t43->items.
        t43->save( ).
      ELSE.
        DATA(t51) = t2.
        DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t53) = t9.
        t52 = t53->start_char.
        DATA(t54) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t52 ) ).
        t51->load( ).
        APPEND t54 TO t51->items.
        t51->save( ).
      ENDIF.
      DATA(t55) = t2.
      DATA t56 TYPE f.
      DATA(t57) = t9.
      t56 = t57->length.
      t55->load( ).
      APPEND t56 TO t55->items.
      t55->save( ).
      DATA(t58) = t2.
      DATA(t59) = VALUE f( ).
      DATA t60 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t60.
      DATA t61 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
      CLEAR t61.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      t61 = zcl_lnt_semantic_highlighting=>token_type_map.
      DATA t62 TYPE string.
      DATA(t63) = t9.
      t62 = t63->token_type.
      t60 = t61->get( p0 = t62 ).
      IF t60->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t59 = t60->value.
      t58->load( ).
      APPEND t59 TO t58->items.
      t58->save( ).
      DATA(t64) = t2.
      DATA(t65) = CONV f( 0 ).
      t64->load( ).
      APPEND t65 TO t64->items.
      t64->save( ).
      DATA t66 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t66.
      DATA(t67) = abap_true.
      IF t67 = abap_true.
        DATA t68 TYPE f.
        DATA(t69) = t9.
        t68 = t69->line.
        DATA(t70) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t70->has = abap_true.
        t70->value = t68.
        t66 = t70.
      ELSE.
        DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t71.
        t66 = t71.
      ENDIF.
      t4 = t66.
      DATA t72 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t72.
      DATA(t73) = abap_true.
      IF t73 = abap_true.
        DATA t74 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t75) = t9.
        t74 = t75->start_char.
        t72 = t74.
      ELSE.
        DATA t76 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t76.
        t72 = t76.
      ENDIF.
      t6 = t72.
    ENDDO.
    DATA(t77) = t2.
    result = t77.

  ENDMETHOD.

  METHOD zlnt_builtin_init_1c3f77c0f160.
    IF zlnt_builtin_init_ceda21d7331d = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_ceda21d7331d = abap_true.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    zcl_lnt_semantic_highlighting=>token_types = t1.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1178_20e6d35d1ab6.
  ENDMETHOD.
ENDCLASS.
