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
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    zcl_lnt_semantic_highlighting=>init_legend( ).
  ENDMETHOD.

  METHOD semantic_tokens_legend.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    zcl_lnt_semantic_highlighting=>init_legend( ).
    DATA t1 TYPE REF TO zcl_lnt_shape_2d2f513b.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    t2 = zcl_lnt_semantic_highlighting=>token_types.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t7.
    t1 = NEW zcl_lnt_shape_2d2f513b( i_token_types = t2 i_token_modifiers = t7 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokenTypes` p1 = t12 ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokenModifiers` p1 = t13 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tokenTypes| p1 = t15 ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tokenModifiers| p1 = t17 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD init_legend.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
      zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
    ENDIF.
    t3 = zcl_lnt_semantic_highlighting=>token_types.
    t3->load( ).
    IF xsdbool( lines( t3->items ) = 0 ) = abap_true.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      zcl_lnt_semantic_highlighting=>token_type_map = NEW zlnt_runtime_map__fed782b2fc26( ).
      DATA t9 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
      DATA t10 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      t10 = zcl_lnt_semantic_highlighting=>token_type_map.
      DATA(t11) = CONV string( zcl_lnt_semantic_module=>source_abap ).
      DATA(t12) = VALUE f( ).
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      t14 = zcl_lnt_semantic_highlighting=>token_types.
      t14->load( ).
      t12 = lines( t14->items ).
      t9 = t10->set( p0 = t11 p1 = t12 ).
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      t15 = zcl_lnt_semantic_highlighting=>token_types.
      DATA(t16) = CONV string( zcl_lnt_semantic_module=>source_abap ).
      t15->load( ).
      APPEND t16 TO t15->items.
      t15->save( ).
      DATA t17 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
      DATA t18 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      t18 = zcl_lnt_semantic_highlighting=>token_type_map.
      DATA(t19) = CONV string( zcl_lnt_semantic_module=>block_abap ).
      DATA(t20) = VALUE f( ).
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      t22 = zcl_lnt_semantic_highlighting=>token_types.
      t22->load( ).
      t20 = lines( t22->items ).
      t17 = t18->set( p0 = t19 p1 = t20 ).
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
        zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
      ENDIF.
      t23 = zcl_lnt_semantic_highlighting=>token_types.
      DATA(t24) = CONV string( zcl_lnt_semantic_module=>block_abap ).
      t23->load( ).
      APPEND t24 TO t23->items.
      t23->save( ).
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      IF zcl_lnt_main_d_module=>zlnt_builtin_init_13c3051ba199 = abap_false.
        zcl_lnt_main_d_module=>zlnt_builtin_init_b51b0369cabd( ).
      ENDIF.
      t25 = zcl_lnt_main_d_module=>semantic_token_types_namespace->keys( ).
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
        DATA(t32) = VALUE f( ).
        DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t34.
        IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
          zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
        ENDIF.
        t34 = zcl_lnt_semantic_highlighting=>token_types.
        t34->load( ).
        t32 = lines( t34->items ).
        t29 = t30->set( p0 = t27 p1 = t32 ).
        DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t35.
        IF zcl_lnt_semantic_highlighting=>zlnt_builtin_init_ceda21d7331d = abap_false.
          zcl_lnt_semantic_highlighting=>zlnt_builtin_init_1c3f77c0f160( ).
        ENDIF.
        t35 = zcl_lnt_semantic_highlighting=>token_types.
        t35->load( ).
        APPEND t27 TO t35->items.
        t35->save( ).
      ENDDO.
    ENDIF.
  ENDMETHOD.

  METHOD semantic_tokens_range.
    DATA(t1) = i_range.
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = me->reg.
    t2 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t4 i_filename = t1->text_document->zlnt_view_read_no_0041136eb871( ) ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_shape_d48da73b.
      DATA t16 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
      CREATE OBJECT t16.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t15 = NEW zcl_lnt_shape_d48da73b( i_result_id = t21 i_data_dc02 = t16 ).
      CREATE OBJECT t15->zlnt_view_ownkeys_b0e8086400eb.
      t15->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t15->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `data` p1 = t23 ).
      CREATE OBJECT t15->zlnt_json_ownkeys_70e5fd461788.
      t15->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t15->zlnt_json_ownkeys_70e5fd461788->put( p0 = |data| p1 = t25 ).
      result = t15.
      RETURN.
    ENDIF.
    DATA t26 TYPE REF TO zcl_lnt_position.
    DATA t28 TYPE f.
    DATA t29 TYPE f.
    t29 = t1->start->zlnt_view_read_no_30cccf3c929a( ).
    DATA(t32) = CONV f( 1 ).
    t28 = t29 + t32.
    DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t34 = t1->start->zlnt_view_read_no_a9574d1ec283( ).
    DATA(t38) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t38->has = abap_true.
    t38->value = CONV f( 1 ).
    t26 = NEW zcl_lnt_position( i_row = t28 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t34 right = t38 op = `+` ) ).
    DATA t39 TYPE REF TO zcl_lnt_position.
    DATA t41 TYPE f.
    DATA t42 TYPE f.
    t42 = t1->end->zlnt_view_read_no_30cccf3c929a( ).
    DATA(t45) = CONV f( 1 ).
    t41 = t42 + t45.
    DATA t47 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t47 = t1->end->zlnt_view_read_no_a9574d1ec283( ).
    DATA(t51) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t51->has = abap_true.
    t51->value = CONV f( 1 ).
    t39 = NEW zcl_lnt_position( i_row = t41 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t47 right = t51 op = `+` ) ).
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t54 = t2->statements.
    DATA t60 TYPE REF TO zcl_lnt_statement_node.
    DATA t61 TYPE REF TO object.
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
      DATA t66 TYPE REF TO zcl_lnt_position.
      t66 = t60->get_first_token( )->start.
      IF xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_virtual_position ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t77 TYPE REF TO zcl_lnt_position.
      t77 = t60->get_first_token( )->start.
      IF t77->is_after( i_p = t39 ) = abap_true.
        EXIT.
      ENDIF.
      DATA t81 TYPE REF TO zcl_lnt_position.
      DATA t83 TYPE REF TO zcl_lnt_abstract_token.
      t83 = t60->get_last_token( ).
      DATA t87 TYPE f.
      t87 = t83->start->row.
      DATA t94 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t94 = t83->start->col.
      DATA t100 TYPE f.
      t100 = strlen( t83->str ).
      DATA(t105) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t105->has = abap_true.
      t105->value = t100.
      t81 = NEW zcl_lnt_position( i_row = t87 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t94 right = t105 op = `+` ) ).
      DATA t106 TYPE REF TO zcl_lnt_position.
      t106 = t26.
      DATA t108 TYPE abap_bool.
      DATA t109 TYPE abap_bool.
      t109 = xsdbool( t81->row < t106->row ).
      t108 = t109.
      IF t109 = abap_false.
        DATA t114 TYPE abap_bool.
        DATA t115 TYPE abap_bool.
        t115 = xsdbool( t81->row = t106->row ).
        t114 = t115.
        IF t115 = abap_true.
          DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t121 = t81->col.
          DATA t123 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t123 = t106->col.
          t114 = zlnt_runtime_numb_290eb04a9758=>compare( left = t121 right = t123 op = `<` ).
        ENDIF.
        t108 = t114.
      ENDIF.
      IF t108 = abap_true.
        CONTINUE.
      ENDIF.


      DATA t125 TYPE REF TO zif_lnt_statement.
      t125 = t60->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t128 = t60->get_token_nodes( ).
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
        t135 = t130->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        DATA t138 TYPE string.
        t138 = |keyword|.
        IF xsdbool( t135 IS BOUND AND t135 IS INSTANCE OF zcl_lnt_punctuation ) = abap_true.
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
          t154 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_public ).
          t153 = t154.
          IF t154 = abap_false.
            t153 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_private ).
          ENDIF.
          t152 = t153.
          IF t153 = abap_false.
            t152 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_protected ).
          ENDIF.
          t151 = t152.
          IF t152 = abap_false.
            t151 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_st_class_definition ).
          ENDIF.
          t150 = t151.
          IF t151 = abap_false.
            t150 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
          ENDIF.
          t149 = t150.
          IF t150 = abap_false.
            t149 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
          ENDIF.
          t148 = t149.
          IF t149 = abap_false.
            t148 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_end_method ).
          ENDIF.
          t147 = t148.
          IF t148 = abap_false.
            t147 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_end_class ).
          ENDIF.
          t146 = t147.
          IF t147 = abap_false.
            t146 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_st_interface ).
          ENDIF.
          t145 = t146.
          IF t146 = abap_false.
            t145 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_end_interface ).
          ENDIF.
          t144 = t145.
          IF t145 = abap_false.
            t144 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_st_form ).
          ENDIF.
          t143 = t144.
          IF t144 = abap_false.
            t143 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_end_form ).
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
            t183 = xsdbool( t135 IS BOUND AND t135 IS INSTANCE OF zcl_lnt_string_token ).
            t182 = t183.
            IF t183 = abap_false.
              t182 = xsdbool( t135 IS BOUND AND t135 IS INSTANCE OF zcl_lnt_lx_string_template ).
            ENDIF.
            t181 = t182.
            IF t182 = abap_false.
              t181 = xsdbool( t135 IS BOUND AND t135 IS INSTANCE OF zcl_lnt_string_template_begin ).
            ENDIF.
            t180 = t181.
            IF t181 = abap_false.
              t180 = xsdbool( t135 IS BOUND AND t135 IS INSTANCE OF zcl_lnt_string_template_end ).
            ENDIF.
            t179 = t180.
            IF t180 = abap_false.
              t179 = xsdbool( t135 IS BOUND AND t135 IS INSTANCE OF zcl_lnt_string_template_middle ).
            ENDIF.
            IF t179 = abap_true.
              t138 = |string|.
            ELSE.
              IF xsdbool( t135 IS BOUND AND t135 IS INSTANCE OF zcl_lnt_lx_comment ) = abap_true.
                t138 = |comment|.
              ELSE.
                IF xsdbool( t130 IS BOUND AND t130 IS INSTANCE OF zcl_lnt_token_node_regex ) = abap_true.
                  DATA(t199) = CONV string( zcl_lnt_semantic_module=>source_abap ).
                  t138 = t199.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t200 TYPE REF TO zcl_lnt_abstract_token.
        t200 = t130->token.
        DATA t207 TYPE REF TO zcl_lnt_ls_token.
        DATA t208 TYPE f.
        DATA t210 TYPE f.
        t210 = t200->start->row.
        DATA(t219) = CONV f( 1 ).
        t208 = t210 - t219.
        DATA t220 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t222 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t222 = t200->start->col.
        DATA(t232) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t232->has = abap_true.
        t232->value = CONV f( 1 ).
        t220 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t222 right = t232 op = `-` ).
        DATA t233 TYPE f.
        DATA t234 TYPE f.
        t234 = strlen( t200->str ).
        t233 = t234.
        DATA t242 TYPE string.
        t242 = t138.
        DATA t244 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t244.
        t207 = NEW zcl_lnt_ls_token( i_line = t208 i_start_char = t220 i_length = t233 i_token_type = t242 i_token_modifiers = t244 ).
        CREATE OBJECT t207->zlnt_view_ownkeys_b0e8086400eb.
        t207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t246 ).
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
        DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t252.
        t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |line| p1 = t252 ).
        DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t254.
        IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |startChar| p1 = t254 ).
        ENDIF.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t256.
        IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |length| p1 = t256 ).
        ENDIF.
        DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t258.
        IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tokenType| p1 = t258 ).
        ENDIF.
        DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t260.
        IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tokenModifiers| p1 = t260 ).
        ENDIF.
        t52->load( ).
        APPEND t207 TO t52->items.
        t52->save( ).
      ENDDO.
    ENDDO.
    DATA t261 TYPE REF TO zcl_lnt_shape_d48da73b.
    DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t261 = NEW zcl_lnt_shape_d48da73b( i_result_id = t268 i_data_dc02 = me->encode_tokens( i_tokens = t52 ) ).
    CREATE OBJECT t261->zlnt_view_ownkeys_b0e8086400eb.
    t261->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `data` p1 = t270 ).
    CREATE OBJECT t261->zlnt_json_ownkeys_70e5fd461788.
    t261->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = |data| p1 = t272 ).
    result = t261.

  ENDMETHOD.

  METHOD encode_tokens.
    DATA(t1) = i_tokens.
    DATA t2 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t6 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t9 TYPE REF TO zcl_lnt_ls_token.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t1->load( ).
      IF t11 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t1->items INDEX t11 + 1 INTO t10.
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
      DATA t15 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t15 = t4.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      DATA(t19) = VALUE abap_bool( ).
      IF t15 IS INITIAL.
        t19 = abap_true.
      ELSEIF t15->has = abap_false.
        t19 = abap_true.
      ENDIF.
      IF t19 = abap_true.
        DATA t22 TYPE f.
        t22 = t9->line.
        t2->load( ).
        APPEND t22 TO t2->items.
        t2->save( ).
      ELSE.
        DATA(t25) = VALUE f( ).
        DATA t26 TYPE f.
        t26 = t9->line.
        DATA(t28) = VALUE f( ).
        DATA(t29) = t4.
        IF t29->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t28 = t29->value.
        t25 = t26 - t28.
        t2->load( ).
        APPEND t25 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = t4.
      DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t35 TYPE f.
      t35 = t9->line.
      DATA(t37) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t37->has = abap_true.
      t37->value = t35.
      t33 = t37.
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
        DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t44.
        DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t45 = t9->start_char.
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
        t2->load( ).
        APPEND t50 TO t2->items.
        t2->save( ).
      ELSE.
        DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t52 = t9->start_char.
        DATA(t54) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t52 ) ).
        t2->load( ).
        APPEND t54 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA t56 TYPE f.
      t56 = t9->length.
      t2->load( ).
      APPEND t56 TO t2->items.
      t2->save( ).
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
      t62 = t9->token_type.
      t60 = t61->get( p0 = t62 ).
      IF t60->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t59 = t60->value.
      t2->load( ).
      APPEND t59 TO t2->items.
      t2->save( ).
      t2->load( ).
      APPEND CONV f( 0 ) TO t2->items.
      t2->save( ).
      DATA t68 TYPE f.
      t68 = t9->line.
      DATA(t70) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t70->has = abap_true.
      t70->value = t68.
      t4 = t70.
      t6 = t9->start_char.
    ENDDO.
    result = t2.

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
