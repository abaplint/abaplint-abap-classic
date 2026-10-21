* TS: src/lsp/_lsp_utils.ts:19:1 LSPUtils
CLASS zcl_lnt_lsp_utils DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS get_abap_file IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
    CLASS-METHODS token_to_range IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_range.
    CLASS-METHODS position_to_ls IMPORTING i_pos TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zcl_lnt_no_position.
    CLASS-METHODS identifer_to_location IMPORTING i_identifier TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE REF TO zcl_lnt_location.
    CLASS-METHODS find_cursor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_pos TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zcl_lnt_icursor_data.
    CLASS-METHODS build_stack IMPORTING i_node TYPE REF TO zif_lnt_node i_search_b3ca TYPE REF TO zcl_lnt_position i_parents TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_33dfa816.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lsp_utils IMPLEMENTATION.
  METHOD get_abap_file.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_filename.
    DATA t3 TYPE REF TO zif_lnt_file.
    t3 = t1->get_file_by_name( i_filename = t2 ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zif_lnt_object.
    t15 = t1->find_object_for_file( i_file = t3 ).
    DATA t20 TYPE REF TO zcl_lnt_iparse_result.
    DATA t21 TYPE REF TO zif_lnt_object.
    t21 = t15.
    DATA t23 TYPE REF TO zcl_lnt_iparse_result.
    IF xsdbool( t21 IS INITIAL ) = abap_true.
    ELSE.
      DATA t30 TYPE REF TO zcl_lnt_abap_release.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t32 TYPE REF TO zif_lnt_registry.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t23 = t21->parse( i_release_7928 = t30 i_global_macros_5535 = t31 i_reg_f149 = t32 i_language_version_0e1d = t33 ).
    ENDIF.
    t20 = t23.
    IF xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_abap_object ) = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t38 TYPE REF TO zcl_lnt_abap_object.
      t38 ?= t15.
      t36 = t38->parsed.
      DATA t43 TYPE REF TO zcl_lnt_abap_file.
      DATA t44 TYPE REF TO object.
      DATA(t45) = VALUE i( ).
      DO.
        t36->load( ).
        IF t45 >= lines( t36->items ).
          EXIT.
        ENDIF.
        CLEAR t44.
        READ TABLE t36->items INDEX t45 + 1 INTO t44.
        t45 = t45 + 1.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t46.
        CLEAR t43.
        IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t46 ?= t44.
          DATA t47 TYPE REF TO object.
          t47 = t46->as_ref( ).
          t43 ?= t47.
        ELSE.
          t43 ?= t44.
        ENDIF.
        DATA t49 TYPE string.
        DATA t50 TYPE string.
        DATA t51 TYPE REF TO zcl_lnt_abstract_file.
        t51 = t43.
        t50 = t51->filename.
        DATA(t55) = strlen( t50 ).
        t49 = t50.
        IF t49 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t49 TO UPPER CASE.
        ELSE.
          t49 = zlnt_runtime_uppe_91169605024d=>full( t49 ).
        ENDIF.
        DATA t56 TYPE string.
        DATA(t58) = strlen( t2 ).
        t56 = t2.
        IF t56 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t56 TO UPPER CASE.
        ELSE.
          t56 = zlnt_runtime_uppe_91169605024d=>full( t56 ).
        ENDIF.
        IF xsdbool( t49 = t56 ) = abap_true.
          result = t43.
          RETURN.
        ENDIF.
      ENDDO.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD token_to_range.
    DATA(t1) = i_token.
    DATA t4 TYPE f.
    DATA t5 TYPE f.
    t5 = t1->start->row.
    DATA(t14) = CONV f( 1 ).
    t4 = t5 - t14.
    DATA t16 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t17 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t17 = t1->start->col.
    DATA(t27) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t27->has = abap_true.
    t27->value = CONV f( 1 ).
    t16 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t17 right = t27 op = `-` ).
    DATA t29 TYPE f.
    DATA t30 TYPE f.
    DATA t33 TYPE REF TO zcl_lnt_abstract_token.
    t33 = t1.
    DATA t36 TYPE f.
    t36 = t33->start->row.
    DATA t43 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t43 = t33->start->col.
    DATA t49 TYPE f.
    t49 = strlen( t33->str ).
    DATA(t54) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t54->has = abap_true.
    t54->value = t49.
    t30 = NEW zcl_lnt_position( i_row = t36 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t43 right = t54 op = `+` ) )->row.
    DATA(t57) = CONV f( 1 ).
    t29 = t30 - t57.
    DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t60 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t63 TYPE REF TO zcl_lnt_abstract_token.
    t63 = t1.
    DATA t66 TYPE f.
    t66 = t63->start->row.
    DATA t73 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t73 = t63->start->col.
    DATA t79 TYPE f.
    t79 = strlen( t63->str ).
    DATA(t84) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t84->has = abap_true.
    t84->value = t79.
    t60 = NEW zcl_lnt_position( i_row = t66 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t73 right = t84 op = `+` ) )->col.
    DATA(t88) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t88->has = abap_true.
    t88->value = CONV f( 1 ).
    t59 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t60 right = t88 op = `-` ).
    DATA t89 TYPE REF TO zcl_lnt_range.
    DATA t90 TYPE REF TO zcl_lnt_no_position.
    DATA t91 TYPE REF TO zcl_lnt_no_position.
    t91 = NEW zcl_lnt_no_position( i_line = t4 i_character = t16 ).
    CREATE OBJECT t91->zlnt_view_ownkeys_b0e8086400eb.
    t91->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t94 ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t95 ).
    ENDIF.
    t90 = t91.
    DATA t97 TYPE REF TO zcl_lnt_no_position.
    t97 = NEW zcl_lnt_no_position( i_line = t29 i_character = t59 ).
    CREATE OBJECT t97->zlnt_view_ownkeys_b0e8086400eb.
    t97->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t97->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t100 ).
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t97->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t97->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t101 ).
    ENDIF.
    t89 = NEW zcl_lnt_range( i_start = t90 i_end = t97 ).
    CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
    t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t102 ).
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t103 ).
    ENDIF.
    CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
    t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t105 ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t107 ).
    ENDIF.
    result = t89.

  ENDMETHOD.

  METHOD position_to_ls.
    DATA(t1) = i_pos.
    DATA t4 TYPE f.
    DATA t5 TYPE f.
    t5 = t1->row.
    DATA(t10) = CONV f( 1 ).
    t4 = t5 - t10.
    DATA t13 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t13 = t1->col.
    DATA(t19) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t19->has = abap_true.
    t19->value = CONV f( 1 ).
    DATA t20 TYPE REF TO zcl_lnt_no_position.
    t20 = NEW zcl_lnt_no_position( i_line = t4 i_character = zlnt_runtime_numb_290eb04a9758=>calculate( left = t13 right = t19 op = `-` ) ).
    CREATE OBJECT t20->zlnt_view_ownkeys_b0e8086400eb.
    t20->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t25 ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t26 ).
    ENDIF.
    CREATE OBJECT t20->zlnt_json_ownkeys_70e5fd461788.
    t20->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = |line| p1 = t28 ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = |character| p1 = t30 ).
    ENDIF.
    result = t20.

  ENDMETHOD.

  METHOD identifer_to_location.
    DATA(t1) = i_identifier.
    DATA t2 TYPE REF TO zcl_lnt_location.
    DATA t3 TYPE string.
    t3 = t1->filename.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    t14 = t1->token.
    t2 = NEW zcl_lnt_location( i_uri = t3 i_range = zcl_lnt_lsp_utils=>token_to_range( i_token = t14 ) ).
    CREATE OBJECT t2->zlnt_view_ownkeys_b0e8086400eb.
    t2->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t16 ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t17 ).
    ENDIF.
    CREATE OBJECT t2->zlnt_json_ownkeys_70e5fd461788.
    t2->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t19 ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t21 ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD find_cursor.
    DATA(t2) = i_pos.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = i_reg_f149.
    t3 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t5 i_filename = t2->zlnt_view_read_sr_ecd019429cea( )->zlnt_view_read_no_0041136eb871( ) ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA t19 TYPE f.
    DATA t20 TYPE f.
    t20 = t2->zlnt_view_read_sr_5fb39d89ef2d( )->zlnt_view_read_no_30cccf3c929a( ).
    DATA(t23) = CONV f( 1 ).
    t19 = t20 + t23.
    DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t25 = t2->zlnt_view_read_sr_5fb39d89ef2d( )->zlnt_view_read_no_a9574d1ec283( ).
    DATA(t29) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t29->has = abap_true.
    t29->value = CONV f( 1 ).
    t17 = NEW zcl_lnt_position( i_row = t19 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t25 right = t29 op = `+` ) ).
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t30 = t3->statements.
    DATA t36 TYPE REF TO zcl_lnt_statement_node.
    DATA t37 TYPE REF TO object.
    DATA(t38) = VALUE i( ).
    DO.
      t30->load( ).
      IF t38 >= lines( t30->items ).
        EXIT.
      ENDIF.
      CLEAR t37.
      READ TABLE t30->items INDEX t38 + 1 INTO t37.
      t38 = t38 + 1.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      CLEAR t36.
      IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t39 ?= t37.
        DATA t40 TYPE REF TO object.
        t40 = t39->as_ref( ).
        t36 ?= t40.
      ELSE.
        t36 ?= t37.
      ENDIF.
      DATA t41 TYPE REF TO zcl_lnt_shape_33dfa816.
      DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t46.
      t46->load( ).
      APPEND t36 TO t46->items.
      t46->save( ).
      t41 = zcl_lnt_lsp_utils=>build_stack( i_node = t36 i_search_b3ca = t17 i_parents = t46 ).
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      IF xsdbool( xsdbool( t41 IS INITIAL ) = abap_false ) = abap_true.
        DATA t61 TYPE REF TO zcl_lnt_icursor_data.
        DATA t62 TYPE REF TO zcl_lnt_abstract_token.
        t62 = t41->token.
        DATA t66 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t68 TYPE REF TO zcl_lnt_abstract_token.
        t68 = t41->token.
        DATA t71 TYPE string.
        DATA t72 TYPE REF TO zcl_lnt_abstract_file.
        t72 = t3.
        t71 = t72->filename.
        t66 = NEW zcl_lnt_fi_identifier( i_token = t68 i_filename = t71 ).
        DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t77 = t41->stack.
        t61 = NEW zcl_lnt_icursor_data( i_token = t62 i_identifier = t66 i_stack = t77 i_snode = t36 ).
        CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
        t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t83 ).
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t84 ).
        ENDIF.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stack` p1 = t85 ).
        ENDIF.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `snode` p1 = t86 ).
        ENDIF.
        CREATE OBJECT t61->zlnt_json_ownkeys_70e5fd461788.
        t61->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t88 ).
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t90 ).
        ENDIF.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |stack| p1 = t92 ).
        ENDIF.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |snode| p1 = t94 ).
        ENDIF.
        result = t61.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD build_stack.
    DATA(t2) = i_search_b3ca.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = i_parents.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = i_node->get_children( ).
    DATA t8 TYPE REF TO zif_lnt_node.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t6->load( ).
      IF t10 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t6->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      IF xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
        DATA t15 TYPE REF TO zcl_lnt_abstract_token.
        DATA t18 TYPE REF TO zcl_lnt_token_node.
        t18 ?= t8.
        t15 = t18->token.
        DATA(t23) = VALUE abap_bool( ).
        DATA t24 TYPE abap_bool.
        DATA t25 TYPE abap_bool.
        t25 = xsdbool( t15->start->row = t2->row ).
        t24 = t25.
        IF t25 = abap_true.
          DATA t41 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t41 = t15->start->col.
          DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t50 = t2->col.
          t24 = zlnt_runtime_numb_290eb04a9758=>compare( left = t41 right = t50 op = `<=` ).
        ENDIF.
        t23 = t24.
        IF t24 = abap_true.
          DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t57 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t57 = t15->start->col.
          DATA t66 TYPE f.
          t66 = strlen( t15->str ).
          DATA(t74) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t74->has = abap_true.
          t74->value = t66.
          t56 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t57 right = t74 op = `+` ).
          DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t75 = t2->col.
          t23 = zlnt_runtime_numb_290eb04a9758=>compare( left = t56 right = t75 op = `>` ).
        ENDIF.
        IF t23 = abap_true.
          DATA t82 TYPE REF TO zcl_lnt_shape_33dfa816.
          t82 = NEW zcl_lnt_shape_33dfa816( i_token = t15 i_stack = t4 ).
          CREATE OBJECT t82->zlnt_view_ownkeys_b0e8086400eb.
          t82->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t93.
          t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t93 ).
          DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t94.
          IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stack` p1 = t94 ).
          ENDIF.
          CREATE OBJECT t82->zlnt_json_ownkeys_70e5fd461788.
          t82->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t96.
          t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t96 ).
          DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t98.
          IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |stack| p1 = t98 ).
          ENDIF.
          result = t82.
          RETURN.
        ENDIF.
      ELSE.
        DATA t100 TYPE REF TO zcl_lnt_shape_33dfa816.
        DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t107.
        t107->load( ).
        APPEND t8 TO t107->items.
        t107->save( ).
        t100 = zcl_lnt_lsp_utils=>build_stack( i_node = t8 i_search_b3ca = t2 i_parents = t4->concat( p0 = t107 ) ).
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        IF xsdbool( xsdbool( t100 IS INITIAL ) = abap_false ) = abap_true.
          result = t100.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    CLEAR result.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1162_f2724f1b52ea.
  ENDMETHOD.
ENDCLASS.
