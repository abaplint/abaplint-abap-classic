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
    DATA t4 TYPE REF TO zif_lnt_file.
    t4 = t1->get_file_by_name( i_filename = t2 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7 = xsdbool( t3 IS INITIAL ).
    IF t7 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zif_lnt_object.
    DATA t16 TYPE REF TO zif_lnt_object.
    DATA t18 TYPE REF TO zif_lnt_file.
    t18 = t3.
    t16 = t1->find_object_for_file( i_file = t18 ).
    t15 = t16.
    DATA t20 TYPE REF TO zcl_lnt_iparse_result.
    DATA t21 TYPE REF TO zif_lnt_object.
    t21 = t15.
    DATA t23 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t24) = xsdbool( t21 IS INITIAL ).
    IF t24 = abap_true.
    ELSE.
      DATA t27 TYPE REF TO zcl_lnt_iparse_result.
      DATA t28 TYPE REF TO zif_lnt_object.
      t28 = t21.
      DATA t30 TYPE REF TO zcl_lnt_abap_release.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t32 TYPE REF TO zif_lnt_registry.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t27 = t28->parse( i_release_7928 = t30 i_global_macros_5535 = t31 i_reg_f149 = t32 i_language_version_0e1d = t33 ).
      t23 = t27.
    ENDIF.
    t20 = t23.
    DATA t34 TYPE abap_bool.
    t34 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_abap_object ).
    IF t34 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t38 TYPE REF TO zcl_lnt_abap_object.
      DATA t40 TYPE REF TO object.
      t40 = t15.
      t38 ?= t40.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t41 = t38->parsed.
      t36 = t41.
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
        DATA(t48) = VALUE abap_bool( ).
        DATA t49 TYPE string.
        DATA t50 TYPE string.
        DATA t51 TYPE REF TO zcl_lnt_abstract_file.
        t51 = t43.
        DATA t53 TYPE string.
        t53 = t51->filename.
        t50 = t53.
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
        t48 = xsdbool( t49 = t56 ).
        IF t48 = abap_true.
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
    DATA t10 TYPE REF TO zcl_lnt_position.
    t10 = t1->start.
    DATA t12 TYPE f.
    t12 = t10->row.
    t5 = t12.
    DATA(t14) = CONV f( 1 ).
    t4 = t5 - t14.
    DATA t16 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t17 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t22 TYPE REF TO zcl_lnt_position.
    t22 = t1->start.
    DATA t24 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t24 = t22->col.
    t17 = t24.
    DATA(t26) = CONV f( 1 ).
    DATA(t27) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t27->has = abap_true.
    t27->value = t26.
    t16 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t17 right = t27 op = `-` ).
    DATA t29 TYPE f.
    DATA t30 TYPE f.
    DATA t33 TYPE REF TO zcl_lnt_abstract_token.
    t33 = t1.
    DATA t35 TYPE REF TO zcl_lnt_position.
    DATA t36 TYPE f.
    DATA t38 TYPE REF TO zcl_lnt_position.
    t38 = t33->start.
    DATA t40 TYPE f.
    t40 = t38->row.
    t36 = t40.
    DATA t42 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t43 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t45 TYPE REF TO zcl_lnt_position.
    t45 = t33->start.
    DATA t47 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t47 = t45->col.
    t43 = t47.
    DATA t49 TYPE f.
    DATA t51 TYPE string.
    t51 = t33->str.
    t49 = strlen( t51 ).
    DATA(t54) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t54->has = abap_true.
    t54->value = t49.
    t42 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t43 right = t54 op = `+` ).
    t35 = NEW zcl_lnt_position( i_row = t36 i_col = t42 ).
    DATA t55 TYPE f.
    t55 = t35->row.
    t30 = t55.
    DATA(t57) = CONV f( 1 ).
    t29 = t30 - t57.
    DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t60 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t63 TYPE REF TO zcl_lnt_abstract_token.
    t63 = t1.
    DATA t65 TYPE REF TO zcl_lnt_position.
    DATA t66 TYPE f.
    DATA t68 TYPE REF TO zcl_lnt_position.
    t68 = t63->start.
    DATA t70 TYPE f.
    t70 = t68->row.
    t66 = t70.
    DATA t72 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t73 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t75 TYPE REF TO zcl_lnt_position.
    t75 = t63->start.
    DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t77 = t75->col.
    t73 = t77.
    DATA t79 TYPE f.
    DATA t81 TYPE string.
    t81 = t63->str.
    t79 = strlen( t81 ).
    DATA(t84) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t84->has = abap_true.
    t84->value = t79.
    t72 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t73 right = t84 op = `+` ).
    t65 = NEW zcl_lnt_position( i_row = t66 i_col = t72 ).
    DATA t85 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t85 = t65->col.
    t60 = t85.
    DATA(t87) = CONV f( 1 ).
    DATA(t88) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t88->has = abap_true.
    t88->value = t87.
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
    DATA t96 TYPE REF TO zcl_lnt_no_position.
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
    t96 = t97.
    t89 = NEW zcl_lnt_range( i_start = t90 i_end = t96 ).
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
    DATA(t104) = |start|.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
    DATA(t106) = |end|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
    ENDIF.
    result = t89.

  ENDMETHOD.

  METHOD position_to_ls.
    DATA(t1) = i_pos.
    DATA t4 TYPE f.
    DATA t5 TYPE f.
    DATA t8 TYPE f.
    t8 = t1->row.
    t5 = t8.
    DATA(t10) = CONV f( 1 ).
    t4 = t5 - t10.
    DATA t12 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t13 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t16 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t16 = t1->col.
    t13 = t16.
    DATA(t18) = CONV f( 1 ).
    DATA(t19) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t19->has = abap_true.
    t19->value = t18.
    t12 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t13 right = t19 op = `-` ).
    DATA t20 TYPE REF TO zcl_lnt_no_position.
    DATA t21 TYPE f.
    t21 = t4.
    DATA t23 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t23 = t12.
    t20 = NEW zcl_lnt_no_position( i_line = t21 i_character = t23 ).
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
    DATA(t27) = |line|.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
    DATA(t29) = |character|.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = t29 p1 = t30 ).
    ENDIF.
    result = t20.

  ENDMETHOD.

  METHOD identifer_to_location.
    DATA(t1) = i_identifier.
    DATA t2 TYPE REF TO zcl_lnt_location.
    DATA t3 TYPE string.
    DATA t7 TYPE string.
    t7 = t1->filename.
    t3 = t7.
    DATA t9 TYPE REF TO zcl_lnt_range.
    DATA t10 TYPE REF TO zcl_lnt_range.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    t14 = t1->token.
    t11 = t14.
    t10 = zcl_lnt_lsp_utils=>token_to_range( i_token = t11 ).
    t9 = t10.
    t2 = NEW zcl_lnt_location( i_uri = t3 i_range = t9 ).
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
    DATA(t18) = |uri|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
    DATA(t20) = |range|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t20 p1 = t21 ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD find_cursor.
    DATA(t2) = i_pos.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = i_reg_f149.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    t7 = t2->zlnt_view_read_sr_ecd019429cea( ).
    t6 = t7->zlnt_view_read_no_0041136eb871( ).
    t4 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t5 i_filename = t6 ).
    t3 = t4.
    DATA(t9) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9 = xsdbool( t3 IS INITIAL ).
    IF t9 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA t18 TYPE REF TO zcl_lnt_position.
    DATA t19 TYPE f.
    DATA t20 TYPE f.
    DATA t21 TYPE REF TO zcl_lnt_no_position.
    t21 = t2->zlnt_view_read_sr_5fb39d89ef2d( ).
    t20 = t21->zlnt_view_read_no_30cccf3c929a( ).
    DATA(t23) = CONV f( 1 ).
    t19 = t20 + t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t26 TYPE REF TO zcl_lnt_no_position.
    t26 = t2->zlnt_view_read_sr_5fb39d89ef2d( ).
    t25 = t26->zlnt_view_read_no_a9574d1ec283( ).
    DATA(t28) = CONV f( 1 ).
    DATA(t29) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t29->has = abap_true.
    t29->value = t28.
    t24 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t25 right = t29 op = `+` ).
    t18 = NEW zcl_lnt_position( i_row = t19 i_col = t24 ).
    t17 = t18.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t34 = t3->statements.
    t30 = t34.
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
      DATA t42 TYPE REF TO zcl_lnt_shape_33dfa816.
      DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t47.
      t46 = t47.
      t46->load( ).
      APPEND t36 TO t46->items.
      t46->save( ).
      t45 = t46.
      t42 = zcl_lnt_lsp_utils=>build_stack( i_node = t36 i_search_b3ca = t17 i_parents = t45 ).
      t41 = t42.
      DATA(t51) = VALUE abap_bool( ).
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = xsdbool( t41 IS INITIAL ).
      t56 = xsdbool( t57 = abap_false ).
      t51 = t56.
      IF t51 = abap_true.
        DATA t61 TYPE REF TO zcl_lnt_icursor_data.
        DATA t62 TYPE REF TO zcl_lnt_abstract_token.
        DATA t63 TYPE REF TO zcl_lnt_abstract_token.
        DATA t64 TYPE REF TO zcl_lnt_shape_33dfa816.
        t64 = t41.
        t63 = t64->token.
        t62 = t63.
        DATA t66 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t67 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t68 TYPE REF TO zcl_lnt_abstract_token.
        DATA t69 TYPE REF TO zcl_lnt_shape_33dfa816.
        t69 = t41.
        t68 = t69->token.
        DATA t71 TYPE string.
        DATA t72 TYPE REF TO zcl_lnt_abstract_file.
        t72 = t3.
        DATA t75 TYPE string.
        t75 = t72->filename.
        t71 = t75.
        t67 = NEW zcl_lnt_fi_identifier( i_token = t68 i_filename = t71 ).
        t66 = t67.
        DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t79 TYPE REF TO zcl_lnt_shape_33dfa816.
        t79 = t41.
        t78 = t79->stack.
        t77 = t78.
        DATA t81 TYPE REF TO zcl_lnt_statement_node.
        t81 = t36.
        t61 = NEW zcl_lnt_icursor_data( i_token = t62 i_identifier = t66 i_stack = t77 i_snode = t81 ).
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
        DATA(t87) = |token|.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t87 p1 = t88 ).
        DATA(t89) = |identifier|.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
        ENDIF.
        DATA(t91) = |stack|.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
        ENDIF.
        DATA(t93) = |snode|.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
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
      DATA t13 TYPE abap_bool.
      t13 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_token_node ).
      IF t13 = abap_true.
        DATA t15 TYPE REF TO zcl_lnt_abstract_token.
        DATA t18 TYPE REF TO zcl_lnt_token_node.
        DATA t20 TYPE REF TO object.
        t20 = t8.
        t18 ?= t20.
        DATA t21 TYPE REF TO zcl_lnt_abstract_token.
        t21 = t18->token.
        t15 = t21.
        DATA(t23) = VALUE abap_bool( ).
        DATA t24 TYPE abap_bool.
        DATA t25 TYPE abap_bool.
        DATA t26 TYPE f.
        DATA t31 TYPE REF TO zcl_lnt_position.
        t31 = t15->start.
        DATA t33 TYPE f.
        t33 = t31->row.
        t26 = t33.
        DATA t35 TYPE f.
        DATA t38 TYPE f.
        t38 = t2->row.
        t35 = t38.
        t25 = xsdbool( t26 = t35 ).
        t24 = t25.
        IF t25 = abap_true.
          DATA t40 TYPE abap_bool.
          DATA t41 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t46 TYPE REF TO zcl_lnt_position.
          t46 = t15->start.
          DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t48 = t46->col.
          t41 = t48.
          DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t53 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t53 = t2->col.
          t50 = t53.
          t40 = zlnt_runtime_numb_290eb04a9758=>compare( left = t41 right = t50 op = `<=` ).
          t24 = t40.
        ENDIF.
        t23 = t24.
        IF t24 = abap_true.
          DATA t55 TYPE abap_bool.
          DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t57 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t62 TYPE REF TO zcl_lnt_position.
          t62 = t15->start.
          DATA t64 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t64 = t62->col.
          t57 = t64.
          DATA t66 TYPE f.
          DATA t68 TYPE string.
          DATA t71 TYPE string.
          t71 = t15->str.
          t68 = t71.
          t66 = strlen( t68 ).
          DATA(t74) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t74->has = abap_true.
          t74->value = t66.
          t56 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t57 right = t74 op = `+` ).
          DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t78 = t2->col.
          t75 = t78.
          t55 = zlnt_runtime_numb_290eb04a9758=>compare( left = t56 right = t75 op = `>` ).
          t23 = t55.
        ENDIF.
        IF t23 = abap_true.
          DATA t82 TYPE REF TO zcl_lnt_shape_33dfa816.
          CLEAR t82.
          DATA t83 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t83.
          t83 = t15.
          DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t88.
          t88 = t4.
          t82 = NEW zcl_lnt_shape_33dfa816( i_token = t83 i_stack = t88 ).
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
          DATA(t95) = |token|.
          DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t96.
          t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
          DATA(t97) = |stack|.
          DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t98.
          IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
          ENDIF.
          result = t82.
          RETURN.
        ENDIF.
      ELSE.
        DATA t100 TYPE REF TO zcl_lnt_shape_33dfa816.
        DATA t101 TYPE REF TO zcl_lnt_shape_33dfa816.
        DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t108.
        t107 = t108.
        t107->load( ).
        APPEND t8 TO t107->items.
        t107->save( ).
        t106 = t107.
        t104 = t4->concat( p0 = t106 ).
        t101 = zcl_lnt_lsp_utils=>build_stack( i_node = t8 i_search_b3ca = t2 i_parents = t104 ).
        t100 = t101.
        DATA(t112) = VALUE abap_bool( ).
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        DATA(t117) = VALUE abap_bool( ).
        DATA(t118) = xsdbool( t100 IS INITIAL ).
        t117 = xsdbool( t118 = abap_false ).
        t112 = t117.
        IF t112 = abap_true.
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
