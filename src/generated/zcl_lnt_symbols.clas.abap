* TS: src/lsp/symbols.ts:13:1 Symbols
CLASS zcl_lnt_symbols DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS find_8f95 IMPORTING i_uri TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS selection_range IMPORTING i_identifier TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE REF TO zcl_lnt_range.
    METHODS range IMPORTING i_identifer TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE REF TO zcl_lnt_range.
    METHODS new_symbol_ranged IMPORTING i_identifier TYPE REF TO zcl_lnt_fi_identifier i_kind TYPE i i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_range TYPE REF TO zcl_lnt_range RETURNING VALUE(result) TYPE REF TO object.
    METHODS new_symbol IMPORTING i_identifier TYPE REF TO zcl_lnt_fi_identifier i_kind TYPE i i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO object.
    METHODS output_forms IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS output_modules IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS output_classes IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS output_method_implementations IMPORTING i_methods TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS output_class_attributes IMPORTING i_attr TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_symbols IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD find_8f95.
    DATA(t1) = i_uri.
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = me->reg.
    DATA(t5) = t1.
    t3 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t4 i_filename = t5 ).
    t2 = t3.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA(t8) = t2.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t7.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    IF t6 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t13.
      result = t13.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    t14 = t15.
    DATA(t16) = VALUE i( ).
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_abap_file.
    DATA(t20) = t2.
    t19 = t20.
    t18 = me->output_classes( i_file = t19 ).
    t17 ?= t18.
    DATA t21 TYPE REF TO zcl_lnt_document_symbol.
    CLEAR t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    DATA(t23) = VALUE i( ).
    DO.
      t17->load( ).
      IF t23 >= lines( t17->items ).
        EXIT.
      ENDIF.
      CLEAR t22.
      READ TABLE t17->items INDEX t23 + 1 INTO t22.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t21.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t22.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t21 ?= t25.
      ELSE.
        t21 ?= t22.
      ENDIF.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t27) = t14.
      t26 ?= t27.
      DATA(t28) = t21.
      t26->load( ).
      APPEND t28 TO t26->items.
      t26->save( ).
    ENDDO.
    DATA t29 TYPE i.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t31) = t14.
    t30 ?= t31.
    t30->load( ).
    t29 = lines( t30->items ).
    t16 = t29.
    DATA(t32) = VALUE i( ).
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zcl_lnt_abap_file.
    DATA(t36) = t2.
    t35 = t36.
    t34 = me->output_forms( i_file = t35 ).
    t33 ?= t34.
    DATA t37 TYPE REF TO zcl_lnt_document_symbol.
    CLEAR t37.
    DATA t38 TYPE REF TO object.
    CLEAR t38.
    DATA(t39) = VALUE i( ).
    DO.
      t33->load( ).
      IF t39 >= lines( t33->items ).
        EXIT.
      ENDIF.
      CLEAR t38.
      READ TABLE t33->items INDEX t39 + 1 INTO t38.
      t39 = t39 + 1.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      CLEAR t37.
      IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t40 ?= t38.
        DATA t41 TYPE REF TO object.
        t41 = t40->as_ref( ).
        t37 ?= t41.
      ELSE.
        t37 ?= t38.
      ENDIF.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t43) = t14.
      t42 ?= t43.
      DATA(t44) = t37.
      t42->load( ).
      APPEND t44 TO t42->items.
      t42->save( ).
    ENDDO.
    DATA t45 TYPE i.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t47) = t14.
    t46 ?= t47.
    t46->load( ).
    t45 = lines( t46->items ).
    t32 = t45.
    DATA(t48) = VALUE i( ).
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zcl_lnt_abap_file.
    DATA(t52) = t2.
    t51 = t52.
    t50 = me->output_modules( i_file = t51 ).
    t49 ?= t50.
    DATA t53 TYPE REF TO zcl_lnt_document_symbol.
    CLEAR t53.
    DATA t54 TYPE REF TO object.
    CLEAR t54.
    DATA(t55) = VALUE i( ).
    DO.
      t49->load( ).
      IF t55 >= lines( t49->items ).
        EXIT.
      ENDIF.
      CLEAR t54.
      READ TABLE t49->items INDEX t55 + 1 INTO t54.
      t55 = t55 + 1.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      CLEAR t53.
      IF t54 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t56 ?= t54.
        DATA t57 TYPE REF TO object.
        t57 = t56->as_ref( ).
        t53 ?= t57.
      ELSE.
        t53 ?= t54.
      ENDIF.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t59) = t14.
      t58 ?= t59.
      DATA(t60) = t53.
      t58->load( ).
      APPEND t60 TO t58->items.
      t58->save( ).
    ENDDO.
    DATA t61 TYPE i.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t63) = t14.
    t62 ?= t63.
    t62->load( ).
    t61 = lines( t62->items ).
    t48 = t61.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t65) = t14.
    t64 ?= t65.
    result = t64.

  ENDMETHOD.

  METHOD selection_range.
    DATA(t1) = i_identifier.
    DATA t2 TYPE REF TO zcl_lnt_position.
    DATA t3 TYPE REF TO zcl_lnt_position.
    DATA t4 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t9) = t4.
    t8 = t9->token.
    t7 = t8.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t11) = t7.
    t10 = t11->start.
    t6 = t10.
    t3 = t6.
    t2 = t3.
    DATA(t12) = VALUE string( ).
    DATA(t13) = VALUE string( ).
    DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t15) = t1.
    t14 = t15.
    DATA(t16) = VALUE string( ).
    DATA t17 TYPE string.
    DATA t18 TYPE string.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t21) = t14.
    t20 = t21->token.
    t19 = t20.
    DATA t22 TYPE string.
    DATA(t23) = t19.
    t22 = t23->str.
    t18 = t22.
    t17 = t18.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = VALUE string( ).
    DATA(t26) = t17.
    DATA(t27) = 0.
    DATA(t28) = 1.
    DATA(t29) = strlen( t26 ).
    IF t27 < 0.
      t27 = t27 + t29.
      IF t27 < 0.
        t27 = 0.
      ENDIF.
    ENDIF.
    IF t27 > t29 OR t28 <= 0.
      CLEAR t25.
    ELSE.
      IF t28 > t29 - t27.
        t28 = t29 - t27.
      ENDIF.
      t25 = t26+t27(t28).
    ENDIF.
    DATA(t30) = |!|.
    t24 = xsdbool( t25 = t30 ).
    IF t24 = abap_true.
      DATA(t31) = VALUE string( ).
      DATA t32 TYPE string.
      DATA(t33) = t17.
      t32 = t33.
      DATA(t34) = VALUE string( ).
      DATA(t35) = t32.
      DATA(t36) = 1.
      DATA t37 TYPE i.
      DATA(t38) = t32.
      DATA(t39) = strlen( t38 ).
      t37 = t39.
      DATA(t40) = strlen( t35 ).
      IF t36 < 0.
        t36 = t36 + t40.
        IF t36 < 0.
          t36 = 0.
        ENDIF.
      ENDIF.
      IF t36 > t40 OR t37 <= 0.
        CLEAR t34.
      ELSE.
        IF t37 > t40 - t36.
          t37 = t40 - t36.
        ENDIF.
        t34 = t35+t36(t37).
      ENDIF.
      t31 = t34.
      t17 = t31.
    ENDIF.
    DATA(t41) = t17.
    t16 = t41.
    t13 = t16.
    t12 = t13.
    DATA t42 TYPE REF TO zcl_lnt_range.
    CLEAR t42.
    DATA t43 TYPE f.
    DATA t44 TYPE f.
    DATA t45 TYPE f.
    DATA t46 TYPE REF TO zcl_lnt_position.
    DATA(t47) = t2.
    t46 = t47.
    DATA t48 TYPE f.
    DATA(t49) = t46.
    t48 = t49->row.
    t45 = t48.
    DATA(t50) = CONV f( 1 ).
    t44 = t45 - t50.
    t43 = t44.
    DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t53 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t54 TYPE REF TO zcl_lnt_position.
    DATA(t55) = t2.
    t54 = t55.
    DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t57) = t54.
    t56 = t57->col.
    t53 = t56.
    DATA(t58) = CONV f( 1 ).
    DATA(t59) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t59->has = abap_true.
    t59->value = t58.
    t52 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t53 right = t59 op = `-` ).
    t51 = t52.
    DATA t60 TYPE f.
    DATA t61 TYPE f.
    DATA t62 TYPE f.
    DATA t63 TYPE REF TO zcl_lnt_position.
    DATA(t64) = t2.
    t63 = t64.
    DATA t65 TYPE f.
    DATA(t66) = t63.
    t65 = t66->row.
    t62 = t65.
    DATA(t67) = CONV f( 1 ).
    t61 = t62 - t67.
    t60 = t61.
    DATA t68 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t70 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t72 TYPE REF TO zcl_lnt_position.
    DATA(t73) = t2.
    t72 = t73.
    DATA t74 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t75) = t72.
    t74 = t75->col.
    t71 = t74.
    DATA(t76) = CONV f( 1 ).
    DATA(t77) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t77->has = abap_true.
    t77->value = t76.
    t70 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t71 right = t77 op = `-` ).
    DATA t78 TYPE f.
    DATA t79 TYPE i.
    DATA(t80) = t12.
    DATA(t81) = strlen( t80 ).
    t79 = t81.
    t78 = t79.
    DATA(t82) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t82->has = abap_true.
    t82->value = t78.
    t69 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t70 right = t82 op = `+` ).
    t68 = t69.
    DATA t83 TYPE REF TO zcl_lnt_range.
    CLEAR t83.
    DATA t84 TYPE REF TO zcl_lnt_no_position.
    CLEAR t84.
    DATA t85 TYPE REF TO zcl_lnt_no_position.
    DATA(t86) = t43.
    DATA(t87) = t51.
    t85 = NEW zcl_lnt_no_position( i_line = t86 i_character = t87 ).
    CREATE OBJECT t85->zlnt_view_ownkeys_b0e8086400eb.
    t85->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t88 ).
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t89 ).
    ENDIF.
    t84 = t85.
    DATA t90 TYPE REF TO zcl_lnt_no_position.
    CLEAR t90.
    DATA t91 TYPE REF TO zcl_lnt_no_position.
    DATA(t92) = t60.
    DATA(t93) = t68.
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
    t83 = NEW zcl_lnt_range( i_start = t84 i_end = t90 ).
    CREATE OBJECT t83->zlnt_view_ownkeys_b0e8086400eb.
    t83->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t96 ).
    ENDIF.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t97 ).
    ENDIF.
    CREATE OBJECT t83->zlnt_json_ownkeys_70e5fd461788.
    t83->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t98) = |start|.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
    ENDIF.
    DATA(t100) = |end|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
    ENDIF.
    t42 = t83.
    result = t42.

  ENDMETHOD.

  METHOD range.
    DATA(t1) = i_identifer.
    DATA t2 TYPE REF TO zcl_lnt_position.
    DATA t3 TYPE REF TO zcl_lnt_position.
    DATA t4 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t9) = t4.
    t8 = t9->token.
    t7 = t8.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t11) = t7.
    t10 = t11->start.
    t6 = t10.
    t3 = t6.
    t2 = t3.
    DATA t12 TYPE REF TO zcl_lnt_position.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t15) = t1.
    t14 = t15.
    DATA t16 TYPE REF TO zcl_lnt_position.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t19) = t14.
    t18 = t19->token.
    t17 = t18.
    DATA t20 TYPE REF TO zcl_lnt_position.
    DATA t21 TYPE f.
    DATA t22 TYPE REF TO zcl_lnt_position.
    DATA t23 TYPE REF TO zcl_lnt_position.
    DATA(t24) = t17.
    t23 = t24->start.
    t22 = t23.
    DATA t25 TYPE f.
    DATA(t26) = t22.
    t25 = t26->row.
    t21 = t25.
    DATA t27 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t28 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t29 TYPE REF TO zcl_lnt_position.
    DATA t30 TYPE REF TO zcl_lnt_position.
    DATA(t31) = t17.
    t30 = t31->start.
    t29 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t33) = t29.
    t32 = t33->col.
    t28 = t32.
    DATA t34 TYPE f.
    DATA t35 TYPE i.
    DATA t36 TYPE string.
    DATA(t37) = t17.
    t36 = t37->str.
    DATA(t38) = strlen( t36 ).
    t35 = t38.
    t34 = t35.
    DATA(t39) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t39->has = abap_true.
    t39->value = t34.
    t27 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t28 right = t39 op = `+` ).
    t20 = NEW zcl_lnt_position( i_row = t21 i_col = t27 ).
    t16 = t20.
    t13 = t16.
    t12 = t13.
    DATA t40 TYPE REF TO zcl_lnt_range.
    CLEAR t40.
    DATA t41 TYPE f.
    DATA t42 TYPE f.
    DATA t43 TYPE f.
    DATA t44 TYPE REF TO zcl_lnt_position.
    DATA(t45) = t2.
    t44 = t45.
    DATA t46 TYPE f.
    DATA(t47) = t44.
    t46 = t47->row.
    t43 = t46.
    DATA(t48) = CONV f( 1 ).
    t42 = t43 - t48.
    t41 = t42.
    DATA t49 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t52 TYPE REF TO zcl_lnt_position.
    DATA(t53) = t2.
    t52 = t53.
    DATA t54 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t55) = t52.
    t54 = t55->col.
    t51 = t54.
    DATA(t56) = CONV f( 1 ).
    DATA(t57) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t57->has = abap_true.
    t57->value = t56.
    t50 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t51 right = t57 op = `-` ).
    t49 = t50.
    DATA t58 TYPE f.
    DATA t59 TYPE f.
    DATA t60 TYPE f.
    DATA t61 TYPE REF TO zcl_lnt_position.
    DATA(t62) = t12.
    t61 = t62.
    DATA t63 TYPE f.
    DATA(t64) = t61.
    t63 = t64->row.
    t60 = t63.
    DATA(t65) = CONV f( 1 ).
    t59 = t60 - t65.
    t58 = t59.
    DATA t66 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t67 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t68 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t69 TYPE REF TO zcl_lnt_position.
    DATA(t70) = t12.
    t69 = t70.
    DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t72) = t69.
    t71 = t72->col.
    t68 = t71.
    DATA(t73) = CONV f( 1 ).
    DATA(t74) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t74->has = abap_true.
    t74->value = t73.
    t67 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t68 right = t74 op = `-` ).
    t66 = t67.
    DATA t75 TYPE REF TO zcl_lnt_range.
    CLEAR t75.
    DATA t76 TYPE REF TO zcl_lnt_no_position.
    CLEAR t76.
    DATA t77 TYPE REF TO zcl_lnt_no_position.
    DATA(t78) = t41.
    DATA(t79) = t49.
    t77 = NEW zcl_lnt_no_position( i_line = t78 i_character = t79 ).
    CREATE OBJECT t77->zlnt_view_ownkeys_b0e8086400eb.
    t77->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t80 ).
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t81 ).
    ENDIF.
    t76 = t77.
    DATA t82 TYPE REF TO zcl_lnt_no_position.
    CLEAR t82.
    DATA t83 TYPE REF TO zcl_lnt_no_position.
    DATA(t84) = t58.
    DATA(t85) = t66.
    t83 = NEW zcl_lnt_no_position( i_line = t84 i_character = t85 ).
    CREATE OBJECT t83->zlnt_view_ownkeys_b0e8086400eb.
    t83->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t86 ).
    ENDIF.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t87 ).
    ENDIF.
    t82 = t83.
    t75 = NEW zcl_lnt_range( i_start = t76 i_end = t82 ).
    CREATE OBJECT t75->zlnt_view_ownkeys_b0e8086400eb.
    t75->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t88 ).
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t89 ).
    ENDIF.
    CREATE OBJECT t75->zlnt_json_ownkeys_70e5fd461788.
    t75->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t90) = |start|.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t90 p1 = t91 ).
    ENDIF.
    DATA(t92) = |end|.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
    ENDIF.
    t40 = t75.
    result = t40.

  ENDMETHOD.

  METHOD new_symbol_ranged.
    DATA(t1) = i_identifier.
    DATA(t2) = i_kind.
    DATA(t3) = i_children_9020.
    DATA(t4) = i_range.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_document_symbol.
    CLEAR t6.
    DATA(t7) = VALUE string( ).
    DATA(t8) = VALUE string( ).
    DATA t9 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t10) = t1.
    t9 = t10.
    DATA(t11) = VALUE string( ).
    DATA t12 TYPE string.
    DATA t13 TYPE string.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t16) = t9.
    t15 = t16->token.
    t14 = t15.
    DATA t17 TYPE string.
    DATA(t18) = t14.
    t17 = t18->str.
    t13 = t17.
    t12 = t13.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE string( ).
    DATA(t21) = t12.
    DATA(t22) = 0.
    DATA(t23) = 1.
    DATA(t24) = strlen( t21 ).
    IF t22 < 0.
      t22 = t22 + t24.
      IF t22 < 0.
        t22 = 0.
      ENDIF.
    ENDIF.
    IF t22 > t24 OR t23 <= 0.
      CLEAR t20.
    ELSE.
      IF t23 > t24 - t22.
        t23 = t24 - t22.
      ENDIF.
      t20 = t21+t22(t23).
    ENDIF.
    DATA(t25) = |!|.
    t19 = xsdbool( t20 = t25 ).
    IF t19 = abap_true.
      DATA(t26) = VALUE string( ).
      DATA t27 TYPE string.
      DATA(t28) = t12.
      t27 = t28.
      DATA(t29) = VALUE string( ).
      DATA(t30) = t27.
      DATA(t31) = 1.
      DATA t32 TYPE i.
      DATA(t33) = t27.
      DATA(t34) = strlen( t33 ).
      t32 = t34.
      DATA(t35) = strlen( t30 ).
      IF t31 < 0.
        t31 = t31 + t35.
        IF t31 < 0.
          t31 = 0.
        ENDIF.
      ENDIF.
      IF t31 > t35 OR t32 <= 0.
        CLEAR t29.
      ELSE.
        IF t32 > t35 - t31.
          t32 = t35 - t31.
        ENDIF.
        t29 = t30+t31(t32).
      ENDIF.
      t26 = t29.
      t12 = t26.
    ENDIF.
    DATA(t36) = t12.
    t11 = t36.
    t8 = t11.
    t7 = t8.
    DATA t37 TYPE f.
    DATA t38 TYPE f.
    DATA(t39) = t2.
    t38 = t39.
    t37 = t38.
    DATA t40 TYPE REF TO zcl_lnt_range.
    DATA(t41) = t4.
    t40 = t41.
    DATA t42 TYPE REF TO zcl_lnt_range.
    CLEAR t42.
    DATA t43 TYPE REF TO zcl_lnt_range.
    CLEAR t43.
    DATA t44 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t45) = t1.
    t44 = t45.
    DATA t46 TYPE REF TO zcl_lnt_range.
    CLEAR t46.
    DATA t47 TYPE REF TO zcl_lnt_position.
    DATA t48 TYPE REF TO zcl_lnt_position.
    DATA t49 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t50) = t44.
    t49 = t50.
    DATA t51 TYPE REF TO zcl_lnt_position.
    DATA t52 TYPE REF TO zcl_lnt_abstract_token.
    DATA t53 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t54) = t49.
    t53 = t54->token.
    t52 = t53.
    DATA t55 TYPE REF TO zcl_lnt_position.
    DATA(t56) = t52.
    t55 = t56->start.
    t51 = t55.
    t48 = t51.
    t47 = t48.
    DATA(t57) = VALUE string( ).
    DATA(t58) = VALUE string( ).
    DATA t59 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t60) = t44.
    t59 = t60.
    DATA(t61) = VALUE string( ).
    DATA t62 TYPE string.
    DATA t63 TYPE string.
    DATA t64 TYPE REF TO zcl_lnt_abstract_token.
    DATA t65 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t66) = t59.
    t65 = t66->token.
    t64 = t65.
    DATA t67 TYPE string.
    DATA(t68) = t64.
    t67 = t68->str.
    t63 = t67.
    t62 = t63.
    DATA(t69) = VALUE abap_bool( ).
    DATA(t70) = VALUE string( ).
    DATA(t71) = t62.
    DATA(t72) = 0.
    DATA(t73) = 1.
    DATA(t74) = strlen( t71 ).
    IF t72 < 0.
      t72 = t72 + t74.
      IF t72 < 0.
        t72 = 0.
      ENDIF.
    ENDIF.
    IF t72 > t74 OR t73 <= 0.
      CLEAR t70.
    ELSE.
      IF t73 > t74 - t72.
        t73 = t74 - t72.
      ENDIF.
      t70 = t71+t72(t73).
    ENDIF.
    DATA(t75) = |!|.
    t69 = xsdbool( t70 = t75 ).
    IF t69 = abap_true.
      DATA(t76) = VALUE string( ).
      DATA t77 TYPE string.
      DATA(t78) = t62.
      t77 = t78.
      DATA(t79) = VALUE string( ).
      DATA(t80) = t77.
      DATA(t81) = 1.
      DATA t82 TYPE i.
      DATA(t83) = t77.
      DATA(t84) = strlen( t83 ).
      t82 = t84.
      DATA(t85) = strlen( t80 ).
      IF t81 < 0.
        t81 = t81 + t85.
        IF t81 < 0.
          t81 = 0.
        ENDIF.
      ENDIF.
      IF t81 > t85 OR t82 <= 0.
        CLEAR t79.
      ELSE.
        IF t82 > t85 - t81.
          t82 = t85 - t81.
        ENDIF.
        t79 = t80+t81(t82).
      ENDIF.
      t76 = t79.
      t62 = t76.
    ENDIF.
    DATA(t86) = t62.
    t61 = t86.
    t58 = t61.
    t57 = t58.
    DATA t87 TYPE REF TO zcl_lnt_range.
    CLEAR t87.
    DATA t88 TYPE f.
    DATA t89 TYPE f.
    DATA t90 TYPE f.
    DATA t91 TYPE REF TO zcl_lnt_position.
    DATA(t92) = t47.
    t91 = t92.
    DATA t93 TYPE f.
    DATA(t94) = t91.
    t93 = t94->row.
    t90 = t93.
    DATA(t95) = CONV f( 1 ).
    t89 = t90 - t95.
    t88 = t89.
    DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t99 TYPE REF TO zcl_lnt_position.
    DATA(t100) = t47.
    t99 = t100.
    DATA t101 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t102) = t99.
    t101 = t102->col.
    t98 = t101.
    DATA(t103) = CONV f( 1 ).
    DATA(t104) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t104->has = abap_true.
    t104->value = t103.
    t97 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t98 right = t104 op = `-` ).
    t96 = t97.
    DATA t105 TYPE f.
    DATA t106 TYPE f.
    DATA t107 TYPE f.
    DATA t108 TYPE REF TO zcl_lnt_position.
    DATA(t109) = t47.
    t108 = t109.
    DATA t110 TYPE f.
    DATA(t111) = t108.
    t110 = t111->row.
    t107 = t110.
    DATA(t112) = CONV f( 1 ).
    t106 = t107 - t112.
    t105 = t106.
    DATA t113 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t114 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t117 TYPE REF TO zcl_lnt_position.
    DATA(t118) = t47.
    t117 = t118.
    DATA t119 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t120) = t117.
    t119 = t120->col.
    t116 = t119.
    DATA(t121) = CONV f( 1 ).
    DATA(t122) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t122->has = abap_true.
    t122->value = t121.
    t115 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t116 right = t122 op = `-` ).
    DATA t123 TYPE f.
    DATA t124 TYPE i.
    DATA(t125) = t57.
    DATA(t126) = strlen( t125 ).
    t124 = t126.
    t123 = t124.
    DATA(t127) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t127->has = abap_true.
    t127->value = t123.
    t114 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t115 right = t127 op = `+` ).
    t113 = t114.
    DATA t128 TYPE REF TO zcl_lnt_range.
    CLEAR t128.
    DATA t129 TYPE REF TO zcl_lnt_no_position.
    CLEAR t129.
    DATA t130 TYPE REF TO zcl_lnt_no_position.
    DATA(t131) = t88.
    DATA(t132) = t96.
    t130 = NEW zcl_lnt_no_position( i_line = t131 i_character = t132 ).
    CREATE OBJECT t130->zlnt_view_ownkeys_b0e8086400eb.
    t130->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t133 ).
    ENDIF.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t134 ).
    ENDIF.
    t129 = t130.
    DATA t135 TYPE REF TO zcl_lnt_no_position.
    CLEAR t135.
    DATA t136 TYPE REF TO zcl_lnt_no_position.
    DATA(t137) = t105.
    DATA(t138) = t113.
    t136 = NEW zcl_lnt_no_position( i_line = t137 i_character = t138 ).
    CREATE OBJECT t136->zlnt_view_ownkeys_b0e8086400eb.
    t136->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t139 ).
    ENDIF.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t140 ).
    ENDIF.
    t135 = t136.
    t128 = NEW zcl_lnt_range( i_start = t129 i_end = t135 ).
    CREATE OBJECT t128->zlnt_view_ownkeys_b0e8086400eb.
    t128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t141 ).
    ENDIF.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t142 ).
    ENDIF.
    CREATE OBJECT t128->zlnt_json_ownkeys_70e5fd461788.
    t128->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t143) = |start|.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
    ENDIF.
    DATA(t145) = |end|.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t145 p1 = t146 ).
    ENDIF.
    t87 = t128.
    t46 = t87.
    t43 = t46.
    t42 = t43.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t148.
    DATA(t149) = abap_true.
    IF t149 = abap_true.
      DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t151) = t3.
      t150 ?= t151.
      t148 = t150.
    ELSE.
      DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t152.
      t148 = t152.
    ENDIF.
    t147 = t148.
    DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t154.
    t153 = t154.
    DATA t155 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t156 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CLEAR t156.
    t155 = t156.
    DATA t157 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t158 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t158.
    t157 = t158.
    t6 = NEW zcl_lnt_document_symbol( i_name = t7 i_detail_4ec1 = t153 i_kind = t37 i_tags = t155 i_deprecated = t157 i_range = t40 i_selection_range = t42 i_children_9020 = t147 ).
    CREATE OBJECT t6->zlnt_view_ownkeys_b0e8086400eb.
    t6->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t159 ).
    ENDIF.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t160 ).
    ENDIF.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t161 ).
    ENDIF.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `selectionRange` p1 = t162 ).
    ENDIF.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `children` p1 = t163 ).
    ENDIF.
    CREATE OBJECT t6->zlnt_json_ownkeys_70e5fd461788.
    t6->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t164) = |name|.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
    ENDIF.
    DATA(t166) = |kind|.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
    ENDIF.
    DATA(t168) = |range|.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
    ENDIF.
    DATA(t170) = |selectionRange|.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
    ENDIF.
    DATA(t172) = |children|.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
    ENDIF.
    t5 = t6.
    DATA t174 TYPE REF TO zcl_lnt_document_symbol.
    DATA t175 TYPE REF TO object.
    t175 = t5.
    t174 ?= t175.
    result = t174.

  ENDMETHOD.

  METHOD new_symbol.
    DATA(t1) = i_identifier.
    DATA(t2) = i_kind.
    DATA(t3) = i_children_9020.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_document_symbol.
    CLEAR t5.
    DATA(t6) = VALUE string( ).
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t9) = t1.
    t8 = t9.
    DATA(t10) = VALUE string( ).
    DATA t11 TYPE string.
    DATA t12 TYPE string.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t15) = t8.
    t14 = t15->token.
    t13 = t14.
    DATA t16 TYPE string.
    DATA(t17) = t13.
    t16 = t17->str.
    t12 = t16.
    t11 = t12.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = VALUE string( ).
    DATA(t20) = t11.
    DATA(t21) = 0.
    DATA(t22) = 1.
    DATA(t23) = strlen( t20 ).
    IF t21 < 0.
      t21 = t21 + t23.
      IF t21 < 0.
        t21 = 0.
      ENDIF.
    ENDIF.
    IF t21 > t23 OR t22 <= 0.
      CLEAR t19.
    ELSE.
      IF t22 > t23 - t21.
        t22 = t23 - t21.
      ENDIF.
      t19 = t20+t21(t22).
    ENDIF.
    DATA(t24) = |!|.
    t18 = xsdbool( t19 = t24 ).
    IF t18 = abap_true.
      DATA(t25) = VALUE string( ).
      DATA t26 TYPE string.
      DATA(t27) = t11.
      t26 = t27.
      DATA(t28) = VALUE string( ).
      DATA(t29) = t26.
      DATA(t30) = 1.
      DATA t31 TYPE i.
      DATA(t32) = t26.
      DATA(t33) = strlen( t32 ).
      t31 = t33.
      DATA(t34) = strlen( t29 ).
      IF t30 < 0.
        t30 = t30 + t34.
        IF t30 < 0.
          t30 = 0.
        ENDIF.
      ENDIF.
      IF t30 > t34 OR t31 <= 0.
        CLEAR t28.
      ELSE.
        IF t31 > t34 - t30.
          t31 = t34 - t30.
        ENDIF.
        t28 = t29+t30(t31).
      ENDIF.
      t25 = t28.
      t11 = t25.
    ENDIF.
    DATA(t35) = t11.
    t10 = t35.
    t7 = t10.
    t6 = t7.
    DATA t36 TYPE f.
    DATA t37 TYPE f.
    DATA(t38) = t2.
    t37 = t38.
    t36 = t37.
    DATA t39 TYPE REF TO zcl_lnt_range.
    CLEAR t39.
    DATA t40 TYPE REF TO zcl_lnt_range.
    CLEAR t40.
    DATA t41 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t42) = t1.
    t41 = t42.
    DATA t43 TYPE REF TO zcl_lnt_range.
    CLEAR t43.
    DATA t44 TYPE REF TO zcl_lnt_position.
    DATA t45 TYPE REF TO zcl_lnt_position.
    DATA t46 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t47) = t41.
    t46 = t47.
    DATA t48 TYPE REF TO zcl_lnt_position.
    DATA t49 TYPE REF TO zcl_lnt_abstract_token.
    DATA t50 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t51) = t46.
    t50 = t51->token.
    t49 = t50.
    DATA t52 TYPE REF TO zcl_lnt_position.
    DATA(t53) = t49.
    t52 = t53->start.
    t48 = t52.
    t45 = t48.
    t44 = t45.
    DATA t54 TYPE REF TO zcl_lnt_position.
    DATA t55 TYPE REF TO zcl_lnt_position.
    DATA t56 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t57) = t41.
    t56 = t57.
    DATA t58 TYPE REF TO zcl_lnt_position.
    DATA t59 TYPE REF TO zcl_lnt_abstract_token.
    DATA t60 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t61) = t56.
    t60 = t61->token.
    t59 = t60.
    DATA t62 TYPE REF TO zcl_lnt_position.
    DATA t63 TYPE f.
    DATA t64 TYPE REF TO zcl_lnt_position.
    DATA t65 TYPE REF TO zcl_lnt_position.
    DATA(t66) = t59.
    t65 = t66->start.
    t64 = t65.
    DATA t67 TYPE f.
    DATA(t68) = t64.
    t67 = t68->row.
    t63 = t67.
    DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t70 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t71 TYPE REF TO zcl_lnt_position.
    DATA t72 TYPE REF TO zcl_lnt_position.
    DATA(t73) = t59.
    t72 = t73->start.
    t71 = t72.
    DATA t74 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t75) = t71.
    t74 = t75->col.
    t70 = t74.
    DATA t76 TYPE f.
    DATA t77 TYPE i.
    DATA t78 TYPE string.
    DATA(t79) = t59.
    t78 = t79->str.
    DATA(t80) = strlen( t78 ).
    t77 = t80.
    t76 = t77.
    DATA(t81) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t81->has = abap_true.
    t81->value = t76.
    t69 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t70 right = t81 op = `+` ).
    t62 = NEW zcl_lnt_position( i_row = t63 i_col = t69 ).
    t58 = t62.
    t55 = t58.
    t54 = t55.
    DATA t82 TYPE REF TO zcl_lnt_range.
    CLEAR t82.
    DATA t83 TYPE f.
    DATA t84 TYPE f.
    DATA t85 TYPE f.
    DATA t86 TYPE REF TO zcl_lnt_position.
    DATA(t87) = t44.
    t86 = t87.
    DATA t88 TYPE f.
    DATA(t89) = t86.
    t88 = t89->row.
    t85 = t88.
    DATA(t90) = CONV f( 1 ).
    t84 = t85 - t90.
    t83 = t84.
    DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t93 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t94 TYPE REF TO zcl_lnt_position.
    DATA(t95) = t44.
    t94 = t95.
    DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t97) = t94.
    t96 = t97->col.
    t93 = t96.
    DATA(t98) = CONV f( 1 ).
    DATA(t99) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t99->has = abap_true.
    t99->value = t98.
    t92 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t93 right = t99 op = `-` ).
    t91 = t92.
    DATA t100 TYPE f.
    DATA t101 TYPE f.
    DATA t102 TYPE f.
    DATA t103 TYPE REF TO zcl_lnt_position.
    DATA(t104) = t54.
    t103 = t104.
    DATA t105 TYPE f.
    DATA(t106) = t103.
    t105 = t106->row.
    t102 = t105.
    DATA(t107) = CONV f( 1 ).
    t101 = t102 - t107.
    t100 = t101.
    DATA t108 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t109 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t111 TYPE REF TO zcl_lnt_position.
    DATA(t112) = t54.
    t111 = t112.
    DATA t113 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t114) = t111.
    t113 = t114->col.
    t110 = t113.
    DATA(t115) = CONV f( 1 ).
    DATA(t116) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t116->has = abap_true.
    t116->value = t115.
    t109 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t110 right = t116 op = `-` ).
    t108 = t109.
    DATA t117 TYPE REF TO zcl_lnt_range.
    CLEAR t117.
    DATA t118 TYPE REF TO zcl_lnt_no_position.
    CLEAR t118.
    DATA t119 TYPE REF TO zcl_lnt_no_position.
    DATA(t120) = t83.
    DATA(t121) = t91.
    t119 = NEW zcl_lnt_no_position( i_line = t120 i_character = t121 ).
    CREATE OBJECT t119->zlnt_view_ownkeys_b0e8086400eb.
    t119->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t122 ).
    ENDIF.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t123 ).
    ENDIF.
    t118 = t119.
    DATA t124 TYPE REF TO zcl_lnt_no_position.
    CLEAR t124.
    DATA t125 TYPE REF TO zcl_lnt_no_position.
    DATA(t126) = t100.
    DATA(t127) = t108.
    t125 = NEW zcl_lnt_no_position( i_line = t126 i_character = t127 ).
    CREATE OBJECT t125->zlnt_view_ownkeys_b0e8086400eb.
    t125->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    IF t125->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t125->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t128 ).
    ENDIF.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    IF t125->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t125->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t129 ).
    ENDIF.
    t124 = t125.
    t117 = NEW zcl_lnt_range( i_start = t118 i_end = t124 ).
    CREATE OBJECT t117->zlnt_view_ownkeys_b0e8086400eb.
    t117->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    IF t117->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t130 ).
    ENDIF.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    IF t117->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t131 ).
    ENDIF.
    CREATE OBJECT t117->zlnt_json_ownkeys_70e5fd461788.
    t117->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t132) = |start|.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    IF t117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t117->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
    ENDIF.
    DATA(t134) = |end|.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    IF t117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t117->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
    ENDIF.
    t82 = t117.
    t43 = t82.
    t40 = t43.
    t39 = t40.
    DATA t136 TYPE REF TO zcl_lnt_range.
    CLEAR t136.
    DATA t137 TYPE REF TO zcl_lnt_range.
    CLEAR t137.
    DATA t138 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t139) = t1.
    t138 = t139.
    DATA t140 TYPE REF TO zcl_lnt_range.
    CLEAR t140.
    DATA t141 TYPE REF TO zcl_lnt_position.
    DATA t142 TYPE REF TO zcl_lnt_position.
    DATA t143 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t144) = t138.
    t143 = t144.
    DATA t145 TYPE REF TO zcl_lnt_position.
    DATA t146 TYPE REF TO zcl_lnt_abstract_token.
    DATA t147 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t148) = t143.
    t147 = t148->token.
    t146 = t147.
    DATA t149 TYPE REF TO zcl_lnt_position.
    DATA(t150) = t146.
    t149 = t150->start.
    t145 = t149.
    t142 = t145.
    t141 = t142.
    DATA(t151) = VALUE string( ).
    DATA(t152) = VALUE string( ).
    DATA t153 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t154) = t138.
    t153 = t154.
    DATA(t155) = VALUE string( ).
    DATA t156 TYPE string.
    DATA t157 TYPE string.
    DATA t158 TYPE REF TO zcl_lnt_abstract_token.
    DATA t159 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t160) = t153.
    t159 = t160->token.
    t158 = t159.
    DATA t161 TYPE string.
    DATA(t162) = t158.
    t161 = t162->str.
    t157 = t161.
    t156 = t157.
    DATA(t163) = VALUE abap_bool( ).
    DATA(t164) = VALUE string( ).
    DATA(t165) = t156.
    DATA(t166) = 0.
    DATA(t167) = 1.
    DATA(t168) = strlen( t165 ).
    IF t166 < 0.
      t166 = t166 + t168.
      IF t166 < 0.
        t166 = 0.
      ENDIF.
    ENDIF.
    IF t166 > t168 OR t167 <= 0.
      CLEAR t164.
    ELSE.
      IF t167 > t168 - t166.
        t167 = t168 - t166.
      ENDIF.
      t164 = t165+t166(t167).
    ENDIF.
    DATA(t169) = |!|.
    t163 = xsdbool( t164 = t169 ).
    IF t163 = abap_true.
      DATA(t170) = VALUE string( ).
      DATA t171 TYPE string.
      DATA(t172) = t156.
      t171 = t172.
      DATA(t173) = VALUE string( ).
      DATA(t174) = t171.
      DATA(t175) = 1.
      DATA t176 TYPE i.
      DATA(t177) = t171.
      DATA(t178) = strlen( t177 ).
      t176 = t178.
      DATA(t179) = strlen( t174 ).
      IF t175 < 0.
        t175 = t175 + t179.
        IF t175 < 0.
          t175 = 0.
        ENDIF.
      ENDIF.
      IF t175 > t179 OR t176 <= 0.
        CLEAR t173.
      ELSE.
        IF t176 > t179 - t175.
          t176 = t179 - t175.
        ENDIF.
        t173 = t174+t175(t176).
      ENDIF.
      t170 = t173.
      t156 = t170.
    ENDIF.
    DATA(t180) = t156.
    t155 = t180.
    t152 = t155.
    t151 = t152.
    DATA t181 TYPE REF TO zcl_lnt_range.
    CLEAR t181.
    DATA t182 TYPE f.
    DATA t183 TYPE f.
    DATA t184 TYPE f.
    DATA t185 TYPE REF TO zcl_lnt_position.
    DATA(t186) = t141.
    t185 = t186.
    DATA t187 TYPE f.
    DATA(t188) = t185.
    t187 = t188->row.
    t184 = t187.
    DATA(t189) = CONV f( 1 ).
    t183 = t184 - t189.
    t182 = t183.
    DATA t190 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t193 TYPE REF TO zcl_lnt_position.
    DATA(t194) = t141.
    t193 = t194.
    DATA t195 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t196) = t193.
    t195 = t196->col.
    t192 = t195.
    DATA(t197) = CONV f( 1 ).
    DATA(t198) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t198->has = abap_true.
    t198->value = t197.
    t191 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t192 right = t198 op = `-` ).
    t190 = t191.
    DATA t199 TYPE f.
    DATA t200 TYPE f.
    DATA t201 TYPE f.
    DATA t202 TYPE REF TO zcl_lnt_position.
    DATA(t203) = t141.
    t202 = t203.
    DATA t204 TYPE f.
    DATA(t205) = t202.
    t204 = t205->row.
    t201 = t204.
    DATA(t206) = CONV f( 1 ).
    t200 = t201 - t206.
    t199 = t200.
    DATA t207 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t208 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t209 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t210 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t211 TYPE REF TO zcl_lnt_position.
    DATA(t212) = t141.
    t211 = t212.
    DATA t213 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t214) = t211.
    t213 = t214->col.
    t210 = t213.
    DATA(t215) = CONV f( 1 ).
    DATA(t216) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t216->has = abap_true.
    t216->value = t215.
    t209 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t210 right = t216 op = `-` ).
    DATA t217 TYPE f.
    DATA t218 TYPE i.
    DATA(t219) = t151.
    DATA(t220) = strlen( t219 ).
    t218 = t220.
    t217 = t218.
    DATA(t221) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t221->has = abap_true.
    t221->value = t217.
    t208 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t209 right = t221 op = `+` ).
    t207 = t208.
    DATA t222 TYPE REF TO zcl_lnt_range.
    CLEAR t222.
    DATA t223 TYPE REF TO zcl_lnt_no_position.
    CLEAR t223.
    DATA t224 TYPE REF TO zcl_lnt_no_position.
    DATA(t225) = t182.
    DATA(t226) = t190.
    t224 = NEW zcl_lnt_no_position( i_line = t225 i_character = t226 ).
    CREATE OBJECT t224->zlnt_view_ownkeys_b0e8086400eb.
    t224->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    IF t224->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t224->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t227 ).
    ENDIF.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    IF t224->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t224->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t228 ).
    ENDIF.
    t223 = t224.
    DATA t229 TYPE REF TO zcl_lnt_no_position.
    CLEAR t229.
    DATA t230 TYPE REF TO zcl_lnt_no_position.
    DATA(t231) = t199.
    DATA(t232) = t207.
    t230 = NEW zcl_lnt_no_position( i_line = t231 i_character = t232 ).
    CREATE OBJECT t230->zlnt_view_ownkeys_b0e8086400eb.
    t230->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    IF t230->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t230->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t233 ).
    ENDIF.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    IF t230->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t230->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t234 ).
    ENDIF.
    t229 = t230.
    t222 = NEW zcl_lnt_range( i_start = t223 i_end = t229 ).
    CREATE OBJECT t222->zlnt_view_ownkeys_b0e8086400eb.
    t222->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t235 ).
    ENDIF.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t236 ).
    ENDIF.
    CREATE OBJECT t222->zlnt_json_ownkeys_70e5fd461788.
    t222->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t237) = |start|.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t237 p1 = t238 ).
    ENDIF.
    DATA(t239) = |end|.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t239 p1 = t240 ).
    ENDIF.
    t181 = t222.
    t140 = t181.
    t137 = t140.
    t136 = t137.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t241.
    DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t242.
    DATA(t243) = abap_true.
    IF t243 = abap_true.
      DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t245) = t3.
      t244 ?= t245.
      t242 = t244.
    ELSE.
      DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t246.
      t242 = t246.
    ENDIF.
    t241 = t242.
    DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t248.
    t247 = t248.
    DATA t249 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t250 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CLEAR t250.
    t249 = t250.
    DATA t251 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t252 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t252.
    t251 = t252.
    t5 = NEW zcl_lnt_document_symbol( i_name = t6 i_detail_4ec1 = t247 i_kind = t36 i_tags = t249 i_deprecated = t251 i_range = t39 i_selection_range = t136 i_children_9020 = t241 ).
    CREATE OBJECT t5->zlnt_view_ownkeys_b0e8086400eb.
    t5->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t253 ).
    ENDIF.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t254 ).
    ENDIF.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t255 ).
    ENDIF.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `selectionRange` p1 = t256 ).
    ENDIF.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `children` p1 = t257 ).
    ENDIF.
    CREATE OBJECT t5->zlnt_json_ownkeys_70e5fd461788.
    t5->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t258) = |name|.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t258 p1 = t259 ).
    ENDIF.
    DATA(t260) = |kind|.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t260 p1 = t261 ).
    ENDIF.
    DATA(t262) = |range|.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t262 p1 = t263 ).
    ENDIF.
    DATA(t264) = |selectionRange|.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t264 p1 = t265 ).
    ENDIF.
    DATA(t266) = |children|.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
    ENDIF.
    t4 = t5.
    DATA t268 TYPE REF TO zcl_lnt_document_symbol.
    DATA t269 TYPE REF TO object.
    t269 = t4.
    t268 ?= t269.
    result = t268.

  ENDMETHOD.

  METHOD output_forms.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zif_lnt_abap_file_information.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t9) = t6.
    t8 = t9->info.
    t5 = t8.
    t4 = t5->list_form_definitions( ).
    DATA t10 TYPE REF TO zcl_lnt_info_form_definition.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE REF TO zcl_lnt_document_symbol.
      DATA t16 TYPE REF TO zcl_lnt_document_symbol.
      DATA t17 TYPE REF TO object.
      DATA t18 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t19) = t10.
      t18 = t19->identifier.
      DATA(t20) = 12.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t21.
      t17 = me->new_symbol( i_identifier = t18 i_kind = t20 i_children_9020 = t21 ).
      t16 ?= t17.
      t15 = t16.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t23) = t2.
      t22 ?= t23.
      DATA(t24) = t15.
      t22->load( ).
      APPEND t24 TO t22->items.
      t22->save( ).
    ENDDO.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = t2.
    t25 ?= t26.
    result = t25.

  ENDMETHOD.

  METHOD output_modules.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->statements.
    t4 = t7.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t4->load( ).
      IF t11 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t4->items INDEX t11 + 1 INTO t10.
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
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE REF TO zif_lnt_statement.
      DATA(t16) = t9.
      t15 = t16->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_st_module ).
      IF t14 = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t18.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        DATA t20 TYPE REF TO zcl_lnt_expression_node.
        DATA(t21) = t9.
        DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
        t20 = t21->find_first_expression( i_type_9913 = t22 ).
        t19 = t20.
        DATA t23 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t23.
        DATA(t24) = VALUE abap_bool( ).
        DATA(t25) = t19.
        IF t25 IS INITIAL.
          t24 = abap_true.
        ENDIF.
        IF t24 = abap_true.
          DATA t26 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t26.
          t23 = t26.
        ELSE.
          DATA t27 TYPE REF TO zcl_lnt_abstract_token.
          DATA t28 TYPE REF TO zcl_lnt_expression_node.
          DATA(t29) = t19.
          t28 = t29.
          t27 = t28->get_first_token( ).
          t23 = t27.
        ENDIF.
        t18 = t23.
        t17 = t18.
        DATA(t30) = VALUE abap_bool( ).
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t32) = t17.
        t31 = t32.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t34.
        t33 = t34.
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = t31.
        IF t36 IS INITIAL.
          t35 = abap_true.
        ENDIF.
        t30 = t35.
        IF t30 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t39 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t40) = t17.
        t39 = t40.
        DATA t41 TYPE string.
        DATA t42 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t43) = t1.
        t42 = t43.
        DATA t44 TYPE string.
        DATA(t45) = t42.
        t44 = t45->filename.
        t41 = t44.
        t38 = NEW zcl_lnt_fi_identifier( i_token = t39 i_filename = t41 ).
        t37 = t38.
        DATA t46 TYPE REF TO zcl_lnt_document_symbol.
        DATA t47 TYPE REF TO zcl_lnt_document_symbol.
        DATA t48 TYPE REF TO object.
        DATA(t49) = t37.
        DATA(t50) = 2.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t51.
        t48 = me->new_symbol( i_identifier = t49 i_kind = t50 i_children_9020 = t51 ).
        t47 ?= t48.
        t46 = t47.
        DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t53) = t2.
        t52 ?= t53.
        DATA(t54) = t46.
        t52->load( ).
        APPEND t54 TO t52->items.
        t52->save( ).
      ENDIF.
    ENDDO.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t56) = t2.
    t55 ?= t56.
    result = t55.

  ENDMETHOD.

  METHOD output_classes.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zif_lnt_abap_file_information.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t9) = t6.
    t8 = t9->info.
    t5 = t8.
    t4 = t5->list_class_definitions( ).
    DATA t10 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t16.
      t15 = t16.
      DATA(t17) = VALUE i( ).
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t21) = t10.
      t20 = t21->attributes.
      t19 = me->output_class_attributes( i_attr = t20 ).
      t18 ?= t19.
      DATA t22 TYPE REF TO zcl_lnt_document_symbol.
      CLEAR t22.
      DATA t23 TYPE REF TO object.
      CLEAR t23.
      DATA(t24) = VALUE i( ).
      DO.
        t18->load( ).
        IF t24 >= lines( t18->items ).
          EXIT.
        ENDIF.
        CLEAR t23.
        READ TABLE t18->items INDEX t24 + 1 INTO t23.
        t24 = t24 + 1.
        DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t25.
        CLEAR t22.
        IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t25 ?= t23.
          DATA t26 TYPE REF TO object.
          t26 = t25->as_ref( ).
          t22 ?= t26.
        ELSE.
          t22 ?= t23.
        ENDIF.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t28) = t15.
        t27 ?= t28.
        DATA(t29) = t22.
        t27->load( ).
        APPEND t29 TO t27->items.
        t27->save( ).
      ENDDO.
      DATA t30 TYPE i.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t32) = t15.
      t31 ?= t32.
      t31->load( ).
      t30 = lines( t31->items ).
      t17 = t30.
      DATA t33 TYPE REF TO zcl_lnt_document_symbol.
      DATA t34 TYPE REF TO zcl_lnt_document_symbol.
      DATA t35 TYPE REF TO object.
      DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t37) = t10.
      t36 = t37->identifier.
      DATA(t38) = 5.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t40) = t15.
      t39 ?= t40.
      t35 = me->new_symbol( i_identifier = t36 i_kind = t38 i_children_9020 = t39 ).
      t34 ?= t35.
      t33 = t34.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t42) = t2.
      t41 ?= t42.
      DATA(t43) = t33.
      t41->load( ).
      APPEND t43 TO t41->items.
      t41->save( ).
    ENDDO.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t45 TYPE REF TO zif_lnt_abap_file_information.
    DATA t46 TYPE REF TO zcl_lnt_abap_file.
    DATA(t47) = t1.
    t46 = t47.
    DATA t48 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t49) = t46.
    t48 = t49->info.
    t45 = t48.
    t44 = t45->list_class_implementations( ).
    DATA t50 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    CLEAR t50.
    DATA t51 TYPE REF TO object.
    CLEAR t51.
    DATA(t52) = VALUE i( ).
    DO.
      t44->load( ).
      IF t52 >= lines( t44->items ).
        EXIT.
      ENDIF.
      CLEAR t51.
      READ TABLE t44->items INDEX t52 + 1 INTO t51.
      t52 = t52 + 1.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      CLEAR t50.
      IF t51 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t53 ?= t51.
        DATA t54 TYPE REF TO object.
        t54 = t53->as_ref( ).
        t50 ?= t54.
      ELSE.
        t50 ?= t51.
      ENDIF.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t56.
      t55 = t56.
      DATA(t57) = VALUE i( ).
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t61) = t50.
      t60 = t61->methods.
      DATA(t62) = t1.
      t59 = me->output_method_implementations( i_methods = t60 i_file = t62 ).
      t58 ?= t59.
      DATA t63 TYPE REF TO zcl_lnt_document_symbol.
      CLEAR t63.
      DATA t64 TYPE REF TO object.
      CLEAR t64.
      DATA(t65) = VALUE i( ).
      DO.
        t58->load( ).
        IF t65 >= lines( t58->items ).
          EXIT.
        ENDIF.
        CLEAR t64.
        READ TABLE t58->items INDEX t65 + 1 INTO t64.
        t65 = t65 + 1.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        CLEAR t63.
        IF t64 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t66 ?= t64.
          DATA t67 TYPE REF TO object.
          t67 = t66->as_ref( ).
          t63 ?= t67.
        ELSE.
          t63 ?= t64.
        ENDIF.
        DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t69) = t55.
        t68 ?= t69.
        DATA(t70) = t63.
        t68->load( ).
        APPEND t70 TO t68->items.
        t68->save( ).
      ENDDO.
      DATA t71 TYPE i.
      DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t73) = t55.
      t72 ?= t73.
      t72->load( ).
      t71 = lines( t72->items ).
      t57 = t71.
      DATA t74 TYPE REF TO zcl_lnt_document_symbol.
      DATA t75 TYPE REF TO zcl_lnt_document_symbol.
      DATA t76 TYPE REF TO object.
      DATA t77 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t78) = t50.
      t77 = t78->identifier.
      DATA(t79) = 5.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t81) = t55.
      t80 ?= t81.
      t76 = me->new_symbol( i_identifier = t77 i_kind = t79 i_children_9020 = t80 ).
      t75 ?= t76.
      t74 = t75.
      DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t83) = t2.
      t82 ?= t83.
      DATA(t84) = t74.
      t82->load( ).
      APPEND t84 TO t82->items.
      t82->save( ).
    ENDDO.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t86) = t2.
    t85 ?= t86.
    result = t85.

  ENDMETHOD.

  METHOD output_method_implementations.
    DATA(t1) = i_methods.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = t1.
    DATA t6 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t5->load( ).
      IF t8 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t5->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_position.
      DATA t12 TYPE REF TO zcl_lnt_position.
      DATA t13 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t14) = t6.
      t13 = t14.
      DATA t15 TYPE REF TO zcl_lnt_position.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t18) = t13.
      t17 = t18->token.
      t16 = t17.
      DATA t19 TYPE REF TO zcl_lnt_position.
      DATA(t20) = t16.
      t19 = t20->start.
      t15 = t19.
      t12 = t15.
      t11 = t12.
      DATA t21 TYPE REF TO zcl_lnt_position.
      DATA t22 TYPE REF TO zcl_lnt_position.
      CLEAR t22.
      t21 = t22.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t24 TYPE REF TO zcl_lnt_abap_file.
      DATA(t25) = t2.
      t24 = t25.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t27) = t24.
      t26 = t27->statements.
      t23 = t26.
      DATA t28 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t28.
      DATA t29 TYPE REF TO object.
      CLEAR t29.
      DATA(t30) = VALUE i( ).
      DO.
        t23->load( ).
        IF t30 >= lines( t23->items ).
          EXIT.
        ENDIF.
        CLEAR t29.
        READ TABLE t23->items INDEX t30 + 1 INTO t29.
        t30 = t30 + 1.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        CLEAR t28.
        IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t31 ?= t29.
          DATA t32 TYPE REF TO object.
          t32 = t31->as_ref( ).
          t28 ?= t32.
        ELSE.
          t28 ?= t29.
        ENDIF.
        DATA(t33) = VALUE abap_bool( ).
        DATA t34 TYPE REF TO zcl_lnt_position.
        DATA t35 TYPE REF TO zcl_lnt_position.
        DATA t36 TYPE REF TO zcl_lnt_abstract_token.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t38) = t28.
        t37 = t38->get_first_token( ).
        t36 = t37.
        DATA t39 TYPE REF TO zcl_lnt_position.
        DATA(t40) = t36.
        t39 = t40->start.
        t35 = t39.
        t34 = t35.
        DATA t41 TYPE REF TO zcl_lnt_position.
        DATA(t42) = t11.
        t41 = t42.
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE abap_bool.
        DATA t45 TYPE f.
        DATA(t46) = t34.
        t45 = t46->row.
        DATA t47 TYPE f.
        DATA(t48) = t41.
        t47 = t48->row.
        t44 = xsdbool( t45 < t47 ).
        t43 = t44.
        IF t44 = abap_false.
          DATA t49 TYPE abap_bool.
          DATA t50 TYPE abap_bool.
          DATA t51 TYPE f.
          DATA(t52) = t34.
          t51 = t52->row.
          DATA t53 TYPE f.
          DATA(t54) = t41.
          t53 = t54->row.
          t50 = xsdbool( t51 = t53 ).
          t49 = t50.
          IF t50 = abap_true.
            DATA t55 TYPE abap_bool.
            DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t57) = t34.
            t56 = t57->col.
            DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t59) = t41.
            t58 = t59->col.
            t55 = zlnt_runtime_numb_290eb04a9758=>compare( left = t56 right = t58 op = `<` ).
            t49 = t55.
          ENDIF.
          t43 = t49.
        ENDIF.
        t33 = t43.
        IF t33 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t60 TYPE abap_bool.
        DATA t61 TYPE REF TO zif_lnt_statement.
        DATA(t62) = t28.
        t61 = t62->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_end_method ).
        IF t60 = abap_true.
          DATA t63 TYPE REF TO zcl_lnt_position.
          CLEAR t63.
          DATA(t64) = abap_true.
          IF t64 = abap_true.
            DATA t65 TYPE REF TO zcl_lnt_position.
            DATA t66 TYPE REF TO zcl_lnt_abstract_token.
            DATA t67 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t68) = t28.
            t67 = t68->get_last_token( ).
            t66 = t67.
            DATA t69 TYPE REF TO zcl_lnt_position.
            DATA t70 TYPE f.
            DATA t71 TYPE REF TO zcl_lnt_position.
            DATA t72 TYPE REF TO zcl_lnt_position.
            DATA(t73) = t66.
            t72 = t73->start.
            t71 = t72.
            DATA t74 TYPE f.
            DATA(t75) = t71.
            t74 = t75->row.
            t70 = t74.
            DATA t76 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t78 TYPE REF TO zcl_lnt_position.
            DATA t79 TYPE REF TO zcl_lnt_position.
            DATA(t80) = t66.
            t79 = t80->start.
            t78 = t79.
            DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t82) = t78.
            t81 = t82->col.
            t77 = t81.
            DATA t83 TYPE f.
            DATA t84 TYPE i.
            DATA t85 TYPE string.
            DATA(t86) = t66.
            t85 = t86->str.
            DATA(t87) = strlen( t85 ).
            t84 = t87.
            t83 = t84.
            DATA(t88) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t88->has = abap_true.
            t88->value = t83.
            t76 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t77 right = t88 op = `+` ).
            t69 = NEW zcl_lnt_position( i_row = t70 i_col = t76 ).
            t65 = t69.
            t63 = t65.
          ELSE.
            DATA t89 TYPE REF TO zcl_lnt_position.
            CLEAR t89.
            t63 = t89.
          ENDIF.
          t21 = t63.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t90) = VALUE abap_bool( ).
      DATA t91 TYPE REF TO zcl_lnt_position.
      DATA(t92) = t21.
      t91 = t92.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      t93 = t94.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = t91.
      IF t96 IS INITIAL.
        t95 = abap_true.
      ENDIF.
      t90 = t95.
      IF t90 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t97 TYPE REF TO zcl_lnt_range.
      CLEAR t97.
      DATA t98 TYPE REF TO zcl_lnt_range.
      CLEAR t98.
      DATA t99 TYPE f.
      DATA t100 TYPE f.
      DATA t101 TYPE f.
      DATA t102 TYPE REF TO zcl_lnt_position.
      DATA(t103) = t11.
      t102 = t103.
      DATA t104 TYPE f.
      DATA(t105) = t102.
      t104 = t105->row.
      t101 = t104.
      DATA(t106) = CONV f( 1 ).
      t100 = t101 - t106.
      t99 = t100.
      DATA t107 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t108 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t109 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t110 TYPE REF TO zcl_lnt_position.
      DATA(t111) = t11.
      t110 = t111.
      DATA t112 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t113) = t110.
      t112 = t113->col.
      t109 = t112.
      DATA(t114) = CONV f( 1 ).
      DATA(t115) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t115->has = abap_true.
      t115->value = t114.
      t108 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t109 right = t115 op = `-` ).
      t107 = t108.
      DATA t116 TYPE f.
      DATA t117 TYPE f.
      DATA t118 TYPE f.
      DATA t119 TYPE REF TO zcl_lnt_position.
      DATA t120 TYPE REF TO zcl_lnt_position.
      DATA(t121) = t21.
      t120 = t121.
      t119 = t120.
      DATA t122 TYPE f.
      DATA(t123) = t119.
      t122 = t123->row.
      t118 = t122.
      DATA(t124) = CONV f( 1 ).
      t117 = t118 - t124.
      t116 = t117.
      DATA t125 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t126 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t127 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t128 TYPE REF TO zcl_lnt_position.
      DATA t129 TYPE REF TO zcl_lnt_position.
      DATA(t130) = t21.
      t129 = t130.
      t128 = t129.
      DATA t131 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t132) = t128.
      t131 = t132->col.
      t127 = t131.
      DATA(t133) = CONV f( 1 ).
      DATA(t134) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t134->has = abap_true.
      t134->value = t133.
      t126 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t127 right = t134 op = `-` ).
      t125 = t126.
      DATA t135 TYPE REF TO zcl_lnt_range.
      CLEAR t135.
      DATA t136 TYPE REF TO zcl_lnt_no_position.
      CLEAR t136.
      DATA t137 TYPE REF TO zcl_lnt_no_position.
      DATA(t138) = t99.
      DATA(t139) = t107.
      t137 = NEW zcl_lnt_no_position( i_line = t138 i_character = t139 ).
      CREATE OBJECT t137->zlnt_view_ownkeys_b0e8086400eb.
      t137->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      IF t137->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t137->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t140 ).
      ENDIF.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t141.
      IF t137->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t137->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t141 ).
      ENDIF.
      t136 = t137.
      DATA t142 TYPE REF TO zcl_lnt_no_position.
      CLEAR t142.
      DATA t143 TYPE REF TO zcl_lnt_no_position.
      DATA(t144) = t116.
      DATA(t145) = t125.
      t143 = NEW zcl_lnt_no_position( i_line = t144 i_character = t145 ).
      CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
      t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t146.
      IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t146 ).
      ENDIF.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t147 ).
      ENDIF.
      t142 = t143.
      t135 = NEW zcl_lnt_range( i_start = t136 i_end = t142 ).
      CREATE OBJECT t135->zlnt_view_ownkeys_b0e8086400eb.
      t135->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t148 ).
      ENDIF.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t149 ).
      ENDIF.
      CREATE OBJECT t135->zlnt_json_ownkeys_70e5fd461788.
      t135->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t150) = |start|.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
      ENDIF.
      DATA(t152) = |end|.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = t152 p1 = t153 ).
      ENDIF.
      t98 = t135.
      t97 = t98.
      DATA t154 TYPE REF TO zcl_lnt_document_symbol.
      DATA t155 TYPE REF TO zcl_lnt_document_symbol.
      DATA t156 TYPE REF TO object.
      DATA(t157) = t6.
      DATA(t158) = 6.
      DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t159.
      DATA(t160) = t97.
      t156 = me->new_symbol_ranged( i_identifier = t157 i_kind = t158 i_children_9020 = t159 i_range = t160 ).
      t155 ?= t156.
      t154 = t155.
      DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t162) = t3.
      t161 ?= t162.
      DATA(t163) = t154.
      t161->load( ).
      APPEND t163 TO t161->items.
      t161->save( ).
    ENDDO.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t165) = t3.
    t164 ?= t165.
    result = t164.

  ENDMETHOD.

  METHOD output_class_attributes.
    DATA(t1) = i_attr.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    t10 = t11.
    DATA(t12) = t1.
    DATA t13 TYPE REF TO zcl_lnt_info_attribute.
    CLEAR t13.
    DATA t14 TYPE REF TO object.
    CLEAR t14.
    DATA(t15) = VALUE i( ).
    DO.
      t12->load( ).
      IF t15 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t12->items INDEX t15 + 1 INTO t14.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t13.
      IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t14.
        DATA t17 TYPE REF TO object.
        t17 = t16->as_ref( ).
        t13 ?= t17.
      ELSE.
        t13 ?= t14.
      ENDIF.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t19) = t10.
      t18 ?= t19.
      DATA t20 TYPE REF TO zcl_lnt_document_symbol.
      DATA t21 TYPE REF TO object.
      DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t23) = t13.
      t22 = t23->identifier.
      DATA(t24) = 7.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t25.
      t21 = me->new_symbol( i_identifier = t22 i_kind = t24 i_children_9020 = t25 ).
      t20 ?= t21.
      t18->load( ).
      APPEND t20 TO t18->items.
      t18->save( ).
    ENDDO.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t27) = t10.
    t26 ?= t27.
    result = t26.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1179_ba3758ce15fc.
  ENDMETHOD.
ENDCLASS.
