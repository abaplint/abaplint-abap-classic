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
    DATA(t5) = t1.
    DATA(t6) = t2.
    t4 = t5->get_file_by_name( i_filename = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zif_lnt_file.
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
      DATA t14 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t14.
      result = t14.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zif_lnt_object.
    DATA t16 TYPE REF TO zif_lnt_object.
    DATA(t17) = t1.
    DATA t18 TYPE REF TO zif_lnt_file.
    DATA(t19) = t3.
    t18 = t19.
    t16 = t17->find_object_for_file( i_file = t18 ).
    t15 = t16.
    DATA t20 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_object.
    DATA(t22) = t15.
    t21 = t22.
    DATA t23 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t21.
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t26.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zcl_lnt_iparse_result.
      DATA t28 TYPE REF TO zif_lnt_object.
      DATA(t29) = t21.
      t28 = t29.
      DATA t30 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t31.
      DATA t32 TYPE REF TO zif_lnt_registry.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t27 = t28->parse( i_release_7928 = t30 i_global_macros_5535 = t31 i_reg_f149 = t32 i_language_version_0e1d = t33 ).
      t23 = t27.
    ENDIF.
    t20 = t23.
    DATA t34 TYPE abap_bool.
    DATA(t35) = t15.
    t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_abap_object ).
    IF t34 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t37 TYPE REF TO zcl_lnt_abap_object.
      DATA t38 TYPE REF TO zcl_lnt_abap_object.
      DATA(t39) = t15.
      DATA t40 TYPE REF TO object.
      t40 = t39.
      t38 ?= t40.
      t37 = t38.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t42) = t37.
      t41 = t42->parsed.
      t36 = t41.
      DATA t43 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t43.
      DATA t44 TYPE REF TO object.
      CLEAR t44.
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
        DATA(t52) = t43.
        t51 = t52.
        DATA t53 TYPE string.
        DATA(t54) = t51.
        t53 = t54->filename.
        t50 = t53.
        DATA(t55) = strlen( t50 ).
        t49 = t50.
        IF t49 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t49 TO UPPER CASE.
        ELSE.
          t49 = zlnt_runtime_uppe_91169605024d=>full( t49 ).
        ENDIF.
        DATA t56 TYPE string.
        DATA(t57) = t2.
        DATA(t58) = strlen( t57 ).
        t56 = t57.
        IF t56 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t56 TO UPPER CASE.
        ELSE.
          t56 = zlnt_runtime_uppe_91169605024d=>full( t56 ).
        ENDIF.
        t48 = xsdbool( t49 = t56 ).
        IF t48 = abap_true.
          DATA t59 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t59.
          DATA(t60) = abap_true.
          IF t60 = abap_true.
            DATA(t61) = t43.
            t59 = t61.
          ELSE.
            DATA t62 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t62.
            t59 = t62.
          ENDIF.
          result = t59.
          RETURN.
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t63 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t63.
    result = t63.

  ENDMETHOD.

  METHOD token_to_range.
    DATA(t1) = i_token.
    DATA t2 TYPE REF TO zcl_lnt_range.
    CLEAR t2.
    DATA t3 TYPE f.
    DATA t4 TYPE f.
    DATA t5 TYPE f.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE REF TO zcl_lnt_position.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t9) = t1.
    t8 = t9.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t11) = t8.
    t10 = t11->start.
    t7 = t10.
    t6 = t7.
    DATA t12 TYPE f.
    DATA(t13) = t6.
    t12 = t13->row.
    t5 = t12.
    DATA(t14) = CONV f( 1 ).
    t4 = t5 - t14.
    t3 = t4.
    DATA t15 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t16 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t17 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t18 TYPE REF TO zcl_lnt_position.
    DATA t19 TYPE REF TO zcl_lnt_position.
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t21) = t1.
    t20 = t21.
    DATA t22 TYPE REF TO zcl_lnt_position.
    DATA(t23) = t20.
    t22 = t23->start.
    t19 = t22.
    t18 = t19.
    DATA t24 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t25) = t18.
    t24 = t25->col.
    t17 = t24.
    DATA(t26) = CONV f( 1 ).
    DATA(t27) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t27->has = abap_true.
    t27->value = t26.
    t16 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t17 right = t27 op = `-` ).
    t15 = t16.
    DATA t28 TYPE f.
    DATA t29 TYPE f.
    DATA t30 TYPE f.
    DATA t31 TYPE REF TO zcl_lnt_position.
    DATA t32 TYPE REF TO zcl_lnt_position.
    DATA t33 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t34) = t1.
    t33 = t34.
    DATA t35 TYPE REF TO zcl_lnt_position.
    DATA t36 TYPE f.
    DATA t37 TYPE REF TO zcl_lnt_position.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA(t39) = t33.
    t38 = t39->start.
    t37 = t38.
    DATA t40 TYPE f.
    DATA(t41) = t37.
    t40 = t41->row.
    t36 = t40.
    DATA t42 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t43 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t44 TYPE REF TO zcl_lnt_position.
    DATA t45 TYPE REF TO zcl_lnt_position.
    DATA(t46) = t33.
    t45 = t46->start.
    t44 = t45.
    DATA t47 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t48) = t44.
    t47 = t48->col.
    t43 = t47.
    DATA t49 TYPE f.
    DATA t50 TYPE i.
    DATA t51 TYPE string.
    DATA(t52) = t33.
    t51 = t52->str.
    DATA(t53) = strlen( t51 ).
    t50 = t53.
    t49 = t50.
    DATA(t54) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t54->has = abap_true.
    t54->value = t49.
    t42 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t43 right = t54 op = `+` ).
    t35 = NEW zcl_lnt_position( i_row = t36 i_col = t42 ).
    t32 = t35.
    t31 = t32.
    DATA t55 TYPE f.
    DATA(t56) = t31.
    t55 = t56->row.
    t30 = t55.
    DATA(t57) = CONV f( 1 ).
    t29 = t30 - t57.
    t28 = t29.
    DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t60 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t61 TYPE REF TO zcl_lnt_position.
    DATA t62 TYPE REF TO zcl_lnt_position.
    DATA t63 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t64) = t1.
    t63 = t64.
    DATA t65 TYPE REF TO zcl_lnt_position.
    DATA t66 TYPE f.
    DATA t67 TYPE REF TO zcl_lnt_position.
    DATA t68 TYPE REF TO zcl_lnt_position.
    DATA(t69) = t63.
    t68 = t69->start.
    t67 = t68.
    DATA t70 TYPE f.
    DATA(t71) = t67.
    t70 = t71->row.
    t66 = t70.
    DATA t72 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t73 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t74 TYPE REF TO zcl_lnt_position.
    DATA t75 TYPE REF TO zcl_lnt_position.
    DATA(t76) = t63.
    t75 = t76->start.
    t74 = t75.
    DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t78) = t74.
    t77 = t78->col.
    t73 = t77.
    DATA t79 TYPE f.
    DATA t80 TYPE i.
    DATA t81 TYPE string.
    DATA(t82) = t63.
    t81 = t82->str.
    DATA(t83) = strlen( t81 ).
    t80 = t83.
    t79 = t80.
    DATA(t84) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t84->has = abap_true.
    t84->value = t79.
    t72 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t73 right = t84 op = `+` ).
    t65 = NEW zcl_lnt_position( i_row = t66 i_col = t72 ).
    t62 = t65.
    t61 = t62.
    DATA t85 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t86) = t61.
    t85 = t86->col.
    t60 = t85.
    DATA(t87) = CONV f( 1 ).
    DATA(t88) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t88->has = abap_true.
    t88->value = t87.
    t59 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t60 right = t88 op = `-` ).
    t58 = t59.
    DATA t89 TYPE REF TO zcl_lnt_range.
    CLEAR t89.
    DATA t90 TYPE REF TO zcl_lnt_no_position.
    CLEAR t90.
    DATA t91 TYPE REF TO zcl_lnt_no_position.
    DATA(t92) = t3.
    DATA(t93) = t15.
    t91 = NEW zcl_lnt_no_position( i_line = t92 i_character = t93 ).
    CREATE OBJECT t91->zlnt_view_ownkeys_b0e8086400eb.
    t91->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t94 ).
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t95 ).
    ENDIF.
    t90 = t91.
    DATA t96 TYPE REF TO zcl_lnt_no_position.
    CLEAR t96.
    DATA t97 TYPE REF TO zcl_lnt_no_position.
    DATA(t98) = t28.
    DATA(t99) = t58.
    t97 = NEW zcl_lnt_no_position( i_line = t98 i_character = t99 ).
    CREATE OBJECT t97->zlnt_view_ownkeys_b0e8086400eb.
    t97->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    IF t97->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t97->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t100 ).
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    IF t97->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t97->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t101 ).
    ENDIF.
    t96 = t97.
    t89 = NEW zcl_lnt_range( i_start = t90 i_end = t96 ).
    CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
    t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t102 ).
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t103 ).
    ENDIF.
    CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
    t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t104) = |start|.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
    ENDIF.
    DATA(t106) = |end|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
    ENDIF.
    t2 = t89.
    result = t2.

  ENDMETHOD.

  METHOD position_to_ls.
    DATA(t1) = i_pos.
    DATA t2 TYPE REF TO zcl_lnt_no_position.
    CLEAR t2.
    DATA t3 TYPE f.
    DATA t4 TYPE f.
    DATA t5 TYPE f.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE f.
    DATA(t9) = t6.
    t8 = t9->row.
    t5 = t8.
    DATA(t10) = CONV f( 1 ).
    t4 = t5 - t10.
    t3 = t4.
    DATA t11 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t12 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t13 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA(t15) = t1.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t17) = t14.
    t16 = t17->col.
    t13 = t16.
    DATA(t18) = CONV f( 1 ).
    DATA(t19) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t19->has = abap_true.
    t19->value = t18.
    t12 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t13 right = t19 op = `-` ).
    t11 = t12.
    DATA t20 TYPE REF TO zcl_lnt_no_position.
    DATA t21 TYPE f.
    DATA(t22) = t3.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t24) = t11.
    t23 = t24.
    t20 = NEW zcl_lnt_no_position( i_line = t21 i_character = t23 ).
    CREATE OBJECT t20->zlnt_view_ownkeys_b0e8086400eb.
    t20->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t25 ).
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t26 ).
    ENDIF.
    CREATE OBJECT t20->zlnt_json_ownkeys_70e5fd461788.
    t20->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t27) = |line|.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
    ENDIF.
    DATA(t29) = |character|.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = t29 p1 = t30 ).
    ENDIF.
    t2 = t20.
    result = t2.

  ENDMETHOD.

  METHOD identifer_to_location.
    DATA(t1) = i_identifier.
    DATA t2 TYPE REF TO zcl_lnt_location.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA t5 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE string.
    DATA(t8) = t5.
    t7 = t8->filename.
    t4 = t7.
    t3 = t4.
    DATA t9 TYPE REF TO zcl_lnt_range.
    DATA t10 TYPE REF TO zcl_lnt_range.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t12 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t13) = t1.
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t15) = t12.
    t14 = t15->token.
    t11 = t14.
    t10 = zcl_lnt_lsp_utils=>token_to_range( i_token = t11 ).
    t9 = t10.
    t2 = NEW zcl_lnt_location( i_uri = t3 i_range = t9 ).
    CREATE OBJECT t2->zlnt_view_ownkeys_b0e8086400eb.
    t2->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t16 ).
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t17 ).
    ENDIF.
    CREATE OBJECT t2->zlnt_json_ownkeys_70e5fd461788.
    t2->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t18) = |uri|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
    ENDIF.
    DATA(t20) = |range|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t20 p1 = t21 ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD find_cursor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_pos.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = t1.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t8) = t2.
    t7 = t8->zlnt_view_read_sr_ecd019429cea( ).
    t6 = t7->zlnt_view_read_no_0041136eb871( ).
    t4 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t5 i_filename = t6 ).
    t3 = t4.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_abap_file.
    DATA(t11) = t3.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t10.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    t9 = t14.
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_icursor_data.
      CLEAR t16.
      result = t16.
      RETURN.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA t18 TYPE REF TO zcl_lnt_position.
    DATA t19 TYPE f.
    DATA t20 TYPE f.
    DATA t21 TYPE REF TO zcl_lnt_no_position.
    DATA(t22) = t2.
    t21 = t22->zlnt_view_read_sr_5fb39d89ef2d( ).
    t20 = t21->zlnt_view_read_no_30cccf3c929a( ).
    DATA(t23) = CONV f( 1 ).
    t19 = t20 + t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t26 TYPE REF TO zcl_lnt_no_position.
    DATA(t27) = t2.
    t26 = t27->zlnt_view_read_sr_5fb39d89ef2d( ).
    t25 = t26->zlnt_view_read_no_a9574d1ec283( ).
    DATA(t28) = CONV f( 1 ).
    DATA(t29) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t29->has = abap_true.
    t29->value = t28.
    t24 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t25 right = t29 op = `+` ).
    t18 = NEW zcl_lnt_position( i_row = t19 i_col = t24 ).
    t17 = t18.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zcl_lnt_abap_file.
    DATA t32 TYPE REF TO zcl_lnt_abap_file.
    DATA(t33) = t3.
    t32 = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t35) = t31.
    t34 = t35->statements.
    t30 = t34.
    DATA t36 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t36.
    DATA t37 TYPE REF TO object.
    CLEAR t37.
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
      DATA(t43) = t36.
      DATA(t44) = t17.
      DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t47.
      t46 = t47.
      DATA(t48) = t46.
      DATA(t49) = t36.
      t48->load( ).
      APPEND t49 TO t48->items.
      t48->save( ).
      DATA(t50) = t46.
      t45 = t50.
      t42 = zcl_lnt_lsp_utils=>build_stack( i_node = t43 i_search_b3ca = t44 i_parents = t45 ).
      t41 = t42.
      DATA(t51) = VALUE abap_bool( ).
      DATA t52 TYPE REF TO zcl_lnt_shape_33dfa816.
      DATA(t53) = t41.
      t52 = t53.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      t54 = t55.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = t52.
      IF t58 IS INITIAL.
        t57 = abap_true.
      ENDIF.
      t56 = xsdbool( t57 = abap_false ).
      t51 = t56.
      IF t51 = abap_true.
        DATA t59 TYPE REF TO zcl_lnt_icursor_data.
        CLEAR t59.
        DATA(t60) = abap_true.
        IF t60 = abap_true.
          DATA t61 TYPE REF TO zcl_lnt_icursor_data.
          DATA t62 TYPE REF TO zcl_lnt_abstract_token.
          DATA t63 TYPE REF TO zcl_lnt_abstract_token.
          DATA t64 TYPE REF TO zcl_lnt_shape_33dfa816.
          DATA(t65) = t41.
          t64 = t65.
          t63 = t64->token.
          t62 = t63.
          DATA t66 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t67 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t68 TYPE REF TO zcl_lnt_abstract_token.
          DATA t69 TYPE REF TO zcl_lnt_shape_33dfa816.
          DATA(t70) = t41.
          t69 = t70.
          t68 = t69->token.
          DATA t71 TYPE string.
          DATA t72 TYPE REF TO zcl_lnt_abstract_file.
          DATA t73 TYPE REF TO zcl_lnt_abap_file.
          DATA(t74) = t3.
          t73 = t74.
          t72 = t73.
          DATA t75 TYPE string.
          DATA(t76) = t72.
          t75 = t76->filename.
          t71 = t75.
          t67 = NEW zcl_lnt_fi_identifier( i_token = t68 i_filename = t71 ).
          t66 = t67.
          DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t79 TYPE REF TO zcl_lnt_shape_33dfa816.
          DATA(t80) = t41.
          t79 = t80.
          t78 = t79->stack.
          t77 = t78.
          DATA t81 TYPE REF TO zcl_lnt_statement_node.
          DATA(t82) = t36.
          t81 = t82.
          t61 = NEW zcl_lnt_icursor_data( i_token = t62 i_identifier = t66 i_stack = t77 i_snode = t81 ).
          CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
          t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t83.
          IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t83 ).
          ENDIF.
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
          IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t87 p1 = t88 ).
          ENDIF.
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
          t59 = t61.
        ELSE.
          DATA t95 TYPE REF TO zcl_lnt_icursor_data.
          CLEAR t95.
          t59 = t95.
        ENDIF.
        result = t59.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t96 TYPE REF TO zcl_lnt_icursor_data.
    CLEAR t96.
    result = t96.

  ENDMETHOD.

  METHOD build_stack.
    DATA(t1) = i_node.
    DATA(t2) = i_search_b3ca.
    DATA(t3) = i_parents.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t3.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t1.
    t6 = t7->get_children( ).
    DATA t8 TYPE REF TO zif_lnt_node.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
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
      DATA(t14) = t8.
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_token_node ).
      IF t13 = abap_true.
        DATA t15 TYPE REF TO zcl_lnt_abstract_token.
        DATA t16 TYPE REF TO zcl_lnt_abstract_token.
        DATA t17 TYPE REF TO zcl_lnt_token_node.
        DATA t18 TYPE REF TO zcl_lnt_token_node.
        DATA(t19) = t8.
        DATA t20 TYPE REF TO object.
        t20 = t19.
        t18 ?= t20.
        t17 = t18.
        DATA t21 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t22) = t17.
        t21 = t22->token.
        t16 = t21.
        t15 = t16.
        DATA(t23) = VALUE abap_bool( ).
        DATA t24 TYPE abap_bool.
        DATA t25 TYPE abap_bool.
        DATA t26 TYPE f.
        DATA t27 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t28) = t15.
        t27 = t28.
        DATA t29 TYPE f.
        DATA t30 TYPE REF TO zcl_lnt_position.
        DATA t31 TYPE REF TO zcl_lnt_position.
        DATA(t32) = t27.
        t31 = t32->start.
        t30 = t31.
        DATA t33 TYPE f.
        DATA(t34) = t30.
        t33 = t34->row.
        t29 = t33.
        t26 = t29.
        DATA t35 TYPE f.
        DATA t36 TYPE REF TO zcl_lnt_position.
        DATA(t37) = t2.
        t36 = t37.
        DATA t38 TYPE f.
        DATA(t39) = t36.
        t38 = t39->row.
        t35 = t38.
        t25 = xsdbool( t26 = t35 ).
        t24 = t25.
        IF t25 = abap_true.
          DATA t40 TYPE abap_bool.
          DATA t41 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t42 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t43) = t15.
          t42 = t43.
          DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t45 TYPE REF TO zcl_lnt_position.
          DATA t46 TYPE REF TO zcl_lnt_position.
          DATA(t47) = t42.
          t46 = t47->start.
          t45 = t46.
          DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t49) = t45.
          t48 = t49->col.
          t44 = t48.
          t41 = t44.
          DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t51 TYPE REF TO zcl_lnt_position.
          DATA(t52) = t2.
          t51 = t52.
          DATA t53 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t54) = t51.
          t53 = t54->col.
          t50 = t53.
          t40 = zlnt_runtime_numb_290eb04a9758=>compare( left = t41 right = t50 op = `<=` ).
          t24 = t40.
        ENDIF.
        t23 = t24.
        IF t24 = abap_true.
          DATA t55 TYPE abap_bool.
          DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t57 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t58 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t59) = t15.
          t58 = t59.
          DATA t60 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t61 TYPE REF TO zcl_lnt_position.
          DATA t62 TYPE REF TO zcl_lnt_position.
          DATA(t63) = t58.
          t62 = t63->start.
          t61 = t62.
          DATA t64 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t65) = t61.
          t64 = t65->col.
          t60 = t64.
          t57 = t60.
          DATA t66 TYPE f.
          DATA t67 TYPE i.
          DATA t68 TYPE string.
          DATA t69 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t70) = t15.
          t69 = t70.
          DATA t71 TYPE string.
          DATA(t72) = t69.
          t71 = t72->str.
          t68 = t71.
          DATA(t73) = strlen( t68 ).
          t67 = t73.
          t66 = t67.
          DATA(t74) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t74->has = abap_true.
          t74->value = t66.
          t56 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t57 right = t74 op = `+` ).
          DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t76 TYPE REF TO zcl_lnt_position.
          DATA(t77) = t2.
          t76 = t77.
          DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t79) = t76.
          t78 = t79->col.
          t75 = t78.
          t55 = zlnt_runtime_numb_290eb04a9758=>compare( left = t56 right = t75 op = `>` ).
          t23 = t55.
        ENDIF.
        IF t23 = abap_true.
          DATA t80 TYPE REF TO zcl_lnt_shape_33dfa816.
          CLEAR t80.
          DATA(t81) = abap_true.
          IF t81 = abap_true.
            DATA t82 TYPE REF TO zcl_lnt_shape_33dfa816.
            CLEAR t82.
            DATA t83 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t83.
            DATA t84 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t84.
            DATA(t85) = abap_true.
            IF t85 = abap_true.
              DATA(t86) = t15.
              t84 = t86.
            ELSE.
              DATA t87 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t87.
              t84 = t87.
            ENDIF.
            t83 = t84.
            DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t88.
            DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t89.
            DATA(t90) = abap_true.
            IF t90 = abap_true.
              DATA(t91) = t4.
              t89 = t91.
            ELSE.
              DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t92.
              t89 = t92.
            ENDIF.
            t88 = t89.
            t82 = NEW zcl_lnt_shape_33dfa816( i_token = t83 i_stack = t88 ).
            CREATE OBJECT t82->zlnt_view_ownkeys_b0e8086400eb.
            t82->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t93.
            IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t93 ).
            ENDIF.
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
            IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
            ENDIF.
            DATA(t97) = |stack|.
            DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t98.
            IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
            ENDIF.
            t80 = t82.
          ELSE.
            DATA t99 TYPE REF TO zcl_lnt_shape_33dfa816.
            CLEAR t99.
            t80 = t99.
          ENDIF.
          result = t80.
          RETURN.
        ENDIF.
      ELSE.
        DATA t100 TYPE REF TO zcl_lnt_shape_33dfa816.
        DATA t101 TYPE REF TO zcl_lnt_shape_33dfa816.
        DATA(t102) = t8.
        DATA(t103) = t2.
        DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t105) = t4.
        DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t108.
        t107 = t108.
        DATA(t109) = t107.
        DATA(t110) = t8.
        t109->load( ).
        APPEND t110 TO t109->items.
        t109->save( ).
        DATA(t111) = t107.
        t106 = t111.
        t104 = t105->concat( p0 = t106 ).
        t101 = zcl_lnt_lsp_utils=>build_stack( i_node = t102 i_search_b3ca = t103 i_parents = t104 ).
        t100 = t101.
        DATA(t112) = VALUE abap_bool( ).
        DATA t113 TYPE REF TO zcl_lnt_shape_33dfa816.
        DATA(t114) = t100.
        t113 = t114.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        t115 = t116.
        DATA(t117) = VALUE abap_bool( ).
        DATA(t118) = VALUE abap_bool( ).
        DATA(t119) = t113.
        IF t119 IS INITIAL.
          t118 = abap_true.
        ENDIF.
        t117 = xsdbool( t118 = abap_false ).
        t112 = t117.
        IF t112 = abap_true.
          DATA t120 TYPE REF TO zcl_lnt_shape_33dfa816.
          CLEAR t120.
          DATA(t121) = abap_true.
          IF t121 = abap_true.
            DATA t122 TYPE REF TO zcl_lnt_shape_33dfa816.
            DATA(t123) = t100.
            t122 = t123.
            t120 = t122.
          ELSE.
            DATA t124 TYPE REF TO zcl_lnt_shape_33dfa816.
            CLEAR t124.
            t120 = t124.
          ENDIF.
          result = t120.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t125 TYPE REF TO zcl_lnt_shape_33dfa816.
    CLEAR t125.
    result = t125.

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
