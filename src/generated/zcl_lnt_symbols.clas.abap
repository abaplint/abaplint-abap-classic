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
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD find_8f95.
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = me->reg.
    DATA(t5) = i_uri.
    t2 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t4 i_filename = t5 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    DATA(t16) = VALUE i( ).
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t18 = me->output_classes( i_file = t2 ).
    t17 ?= t18.
    DATA t21 TYPE REF TO zcl_lnt_document_symbol.
    DATA t22 TYPE REF TO object.
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
      t26 ?= t14.
      t26->load( ).
      APPEND t21 TO t26->items.
      t26->save( ).
    ENDDO.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t30 ?= t14.
    t30->load( ).
    t16 = lines( t30->items ).
    DATA(t32) = VALUE i( ).
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t34 = me->output_forms( i_file = t2 ).
    t33 ?= t34.
    DATA t37 TYPE REF TO zcl_lnt_document_symbol.
    DATA t38 TYPE REF TO object.
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
      t42 ?= t14.
      t42->load( ).
      APPEND t37 TO t42->items.
      t42->save( ).
    ENDDO.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t46 ?= t14.
    t46->load( ).
    t32 = lines( t46->items ).
    DATA(t48) = VALUE i( ).
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t50 = me->output_modules( i_file = t2 ).
    t49 ?= t50.
    DATA t53 TYPE REF TO zcl_lnt_document_symbol.
    DATA t54 TYPE REF TO object.
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
      t58 ?= t14.
      t58->load( ).
      APPEND t53 TO t58->items.
      t58->save( ).
    ENDDO.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t62 ?= t14.
    t62->load( ).
    t48 = lines( t62->items ).
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t64 ?= t14.
    result = t64.

  ENDMETHOD.

  METHOD selection_range.
    DATA(t1) = i_identifier.
    DATA t2 TYPE REF TO zcl_lnt_position.
    t2 = t1->token->start.
    DATA(t12) = VALUE string( ).
    DATA t17 TYPE string.
    t17 = t1->token->str.
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
    ELSE.
      IF t28 > t29 - t27.
        t28 = t29 - t27.
      ENDIF.
      t25 = t26+t27(t28).
    ENDIF.
    IF xsdbool( t25 = |!| ) = abap_true.
      DATA t32 TYPE string.
      t32 = t17.
      DATA(t34) = VALUE string( ).
      DATA(t36) = 1.
      DATA t37 TYPE i.
      t37 = strlen( t32 ).
      DATA(t40) = strlen( t32 ).
      IF t36 < 0.
        t36 = t36 + t40.
        IF t36 < 0.
          t36 = 0.
        ENDIF.
      ENDIF.
      IF t36 > t40 OR t37 <= 0.
      ELSE.
        IF t37 > t40 - t36.
          t37 = t40 - t36.
        ENDIF.
        t34 = t32+t36(t37).
      ENDIF.
      t17 = t34.
    ENDIF.
    t12 = t17.
    DATA t44 TYPE f.
    DATA t45 TYPE f.
    t45 = t2->row.
    DATA(t50) = CONV f( 1 ).
    t44 = t45 - t50.
    DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t53 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t53 = t2->col.
    DATA(t59) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t59->has = abap_true.
    t59->value = CONV f( 1 ).
    t52 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t53 right = t59 op = `-` ).
    DATA t61 TYPE f.
    DATA t62 TYPE f.
    t62 = t2->row.
    DATA(t67) = CONV f( 1 ).
    t61 = t62 - t67.
    DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t70 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t71 = t2->col.
    DATA(t77) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t77->has = abap_true.
    t77->value = CONV f( 1 ).
    t70 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t71 right = t77 op = `-` ).
    DATA t78 TYPE f.
    t78 = strlen( t12 ).
    DATA(t82) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t82->has = abap_true.
    t82->value = t78.
    t69 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t70 right = t82 op = `+` ).
    DATA t83 TYPE REF TO zcl_lnt_range.
    DATA t84 TYPE REF TO zcl_lnt_no_position.
    DATA t85 TYPE REF TO zcl_lnt_no_position.
    t85 = NEW zcl_lnt_no_position( i_line = t44 i_character = t52 ).
    CREATE OBJECT t85->zlnt_view_ownkeys_b0e8086400eb.
    t85->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t88 ).
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t89 ).
    ENDIF.
    t84 = t85.
    DATA t91 TYPE REF TO zcl_lnt_no_position.
    t91 = NEW zcl_lnt_no_position( i_line = t61 i_character = t69 ).
    CREATE OBJECT t91->zlnt_view_ownkeys_b0e8086400eb.
    t91->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t94 ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t95 ).
    ENDIF.
    t83 = NEW zcl_lnt_range( i_start = t84 i_end = t91 ).
    CREATE OBJECT t83->zlnt_view_ownkeys_b0e8086400eb.
    t83->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t96 ).
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t97 ).
    ENDIF.
    CREATE OBJECT t83->zlnt_json_ownkeys_70e5fd461788.
    t83->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t99 ).
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t101 ).
    ENDIF.
    result = t83.

  ENDMETHOD.

  METHOD range.
    DATA(t1) = i_identifer.
    DATA t2 TYPE REF TO zcl_lnt_position.
    t2 = t1->token->start.
    DATA t12 TYPE REF TO zcl_lnt_position.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    t17 = t1->token.
    DATA t21 TYPE f.
    t21 = t17->start->row.
    DATA t28 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t28 = t17->start->col.
    DATA t34 TYPE f.
    t34 = strlen( t17->str ).
    DATA(t39) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t39->has = abap_true.
    t39->value = t34.
    t12 = NEW zcl_lnt_position( i_row = t21 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t28 right = t39 op = `+` ) ).
    DATA t42 TYPE f.
    DATA t43 TYPE f.
    t43 = t2->row.
    DATA(t48) = CONV f( 1 ).
    t42 = t43 - t48.
    DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t51 = t2->col.
    DATA(t57) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t57->has = abap_true.
    t57->value = CONV f( 1 ).
    t50 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t51 right = t57 op = `-` ).
    DATA t59 TYPE f.
    DATA t60 TYPE f.
    t60 = t12->row.
    DATA(t65) = CONV f( 1 ).
    t59 = t60 - t65.
    DATA t67 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t68 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t68 = t12->col.
    DATA(t74) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t74->has = abap_true.
    t74->value = CONV f( 1 ).
    t67 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t68 right = t74 op = `-` ).
    DATA t75 TYPE REF TO zcl_lnt_range.
    DATA t76 TYPE REF TO zcl_lnt_no_position.
    DATA t77 TYPE REF TO zcl_lnt_no_position.
    t77 = NEW zcl_lnt_no_position( i_line = t42 i_character = t50 ).
    CREATE OBJECT t77->zlnt_view_ownkeys_b0e8086400eb.
    t77->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t80 ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t81 ).
    ENDIF.
    t76 = t77.
    DATA t83 TYPE REF TO zcl_lnt_no_position.
    t83 = NEW zcl_lnt_no_position( i_line = t59 i_character = t67 ).
    CREATE OBJECT t83->zlnt_view_ownkeys_b0e8086400eb.
    t83->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t86 ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t87 ).
    ENDIF.
    t75 = NEW zcl_lnt_range( i_start = t76 i_end = t83 ).
    CREATE OBJECT t75->zlnt_view_ownkeys_b0e8086400eb.
    t75->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t88 ).
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t89 ).
    ENDIF.
    CREATE OBJECT t75->zlnt_json_ownkeys_70e5fd461788.
    t75->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t91 ).
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t93 ).
    ENDIF.
    result = t75.

  ENDMETHOD.

  METHOD new_symbol_ranged.
    DATA(t1) = i_identifier.
    DATA(t3) = i_children_9020.
    DATA t6 TYPE REF TO zcl_lnt_document_symbol.
    DATA(t7) = VALUE string( ).
    DATA t12 TYPE string.
    t12 = t1->token->str.
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
    ELSE.
      IF t23 > t24 - t22.
        t23 = t24 - t22.
      ENDIF.
      t20 = t21+t22(t23).
    ENDIF.
    IF xsdbool( t20 = |!| ) = abap_true.
      DATA t27 TYPE string.
      t27 = t12.
      DATA(t29) = VALUE string( ).
      DATA(t31) = 1.
      DATA t32 TYPE i.
      t32 = strlen( t27 ).
      DATA(t35) = strlen( t27 ).
      IF t31 < 0.
        t31 = t31 + t35.
        IF t31 < 0.
          t31 = 0.
        ENDIF.
      ENDIF.
      IF t31 > t35 OR t32 <= 0.
      ELSE.
        IF t32 > t35 - t31.
          t32 = t35 - t31.
        ENDIF.
        t29 = t27+t31(t32).
      ENDIF.
      t12 = t29.
    ENDIF.
    t7 = t12.
    DATA t37 TYPE f.
    DATA t38 TYPE f.
    t38 = i_kind.
    t37 = t38.
    DATA t40 TYPE REF TO zcl_lnt_range.
    t40 = i_range.
    DATA t42 TYPE REF TO zcl_lnt_range.
    DATA t44 TYPE REF TO zcl_lnt_fi_identifier.
    t44 = t1.
    DATA t47 TYPE REF TO zcl_lnt_position.
    t47 = t44->token->start.
    DATA(t57) = VALUE string( ).
    DATA t62 TYPE string.
    t62 = t44->token->str.
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
    ELSE.
      IF t73 > t74 - t72.
        t73 = t74 - t72.
      ENDIF.
      t70 = t71+t72(t73).
    ENDIF.
    IF xsdbool( t70 = |!| ) = abap_true.
      DATA t77 TYPE string.
      t77 = t62.
      DATA(t79) = VALUE string( ).
      DATA(t81) = 1.
      DATA t82 TYPE i.
      t82 = strlen( t77 ).
      DATA(t85) = strlen( t77 ).
      IF t81 < 0.
        t81 = t81 + t85.
        IF t81 < 0.
          t81 = 0.
        ENDIF.
      ENDIF.
      IF t81 > t85 OR t82 <= 0.
      ELSE.
        IF t82 > t85 - t81.
          t82 = t85 - t81.
        ENDIF.
        t79 = t77+t81(t82).
      ENDIF.
      t62 = t79.
    ENDIF.
    t57 = t62.
    DATA t89 TYPE f.
    DATA t90 TYPE f.
    t90 = t47->row.
    DATA(t95) = CONV f( 1 ).
    t89 = t90 - t95.
    DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t98 = t47->col.
    DATA(t104) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t104->has = abap_true.
    t104->value = CONV f( 1 ).
    t97 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t98 right = t104 op = `-` ).
    DATA t106 TYPE f.
    DATA t107 TYPE f.
    t107 = t47->row.
    DATA(t112) = CONV f( 1 ).
    t106 = t107 - t112.
    DATA t114 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t116 = t47->col.
    DATA(t122) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t122->has = abap_true.
    t122->value = CONV f( 1 ).
    t115 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t116 right = t122 op = `-` ).
    DATA t123 TYPE f.
    t123 = strlen( t57 ).
    DATA(t127) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t127->has = abap_true.
    t127->value = t123.
    t114 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t115 right = t127 op = `+` ).
    DATA t128 TYPE REF TO zcl_lnt_range.
    DATA t129 TYPE REF TO zcl_lnt_no_position.
    DATA t130 TYPE REF TO zcl_lnt_no_position.
    t130 = NEW zcl_lnt_no_position( i_line = t89 i_character = t97 ).
    CREATE OBJECT t130->zlnt_view_ownkeys_b0e8086400eb.
    t130->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t133 ).
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t134 ).
    ENDIF.
    t129 = t130.
    DATA t136 TYPE REF TO zcl_lnt_no_position.
    t136 = NEW zcl_lnt_no_position( i_line = t106 i_character = t114 ).
    CREATE OBJECT t136->zlnt_view_ownkeys_b0e8086400eb.
    t136->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t139 ).
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t140 ).
    ENDIF.
    t128 = NEW zcl_lnt_range( i_start = t129 i_end = t136 ).
    CREATE OBJECT t128->zlnt_view_ownkeys_b0e8086400eb.
    t128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t141 ).
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t142 ).
    ENDIF.
    CREATE OBJECT t128->zlnt_json_ownkeys_70e5fd461788.
    t128->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t144 ).
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t146 ).
    ENDIF.
    t42 = t128.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t150 ?= t3.
    DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t155 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t157 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t6 = NEW zcl_lnt_document_symbol( i_name = t7 i_detail_4ec1 = t153 i_kind = t37 i_tags = t155 i_deprecated = t157 i_range = t40 i_selection_range = t42 i_children_9020 = t150 ).
    CREATE OBJECT t6->zlnt_view_ownkeys_b0e8086400eb.
    t6->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t159 ).
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t160 ).
    ENDIF.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t161 ).
    ENDIF.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `selectionRange` p1 = t162 ).
    ENDIF.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `children` p1 = t163 ).
    ENDIF.
    CREATE OBJECT t6->zlnt_json_ownkeys_70e5fd461788.
    t6->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t165 ).
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = |kind| p1 = t167 ).
    ENDIF.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t169 ).
    ENDIF.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = |selectionRange| p1 = t171 ).
    ENDIF.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = |children| p1 = t173 ).
    ENDIF.
    DATA t174 TYPE REF TO zcl_lnt_document_symbol.
    t174 ?= t6.
    result = t174.

  ENDMETHOD.

  METHOD new_symbol.
    DATA(t1) = i_identifier.
    DATA(t3) = i_children_9020.
    DATA t5 TYPE REF TO zcl_lnt_document_symbol.
    DATA(t6) = VALUE string( ).
    DATA t11 TYPE string.
    t11 = t1->token->str.
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
    ELSE.
      IF t22 > t23 - t21.
        t22 = t23 - t21.
      ENDIF.
      t19 = t20+t21(t22).
    ENDIF.
    IF xsdbool( t19 = |!| ) = abap_true.
      DATA t26 TYPE string.
      t26 = t11.
      DATA(t28) = VALUE string( ).
      DATA(t30) = 1.
      DATA t31 TYPE i.
      t31 = strlen( t26 ).
      DATA(t34) = strlen( t26 ).
      IF t30 < 0.
        t30 = t30 + t34.
        IF t30 < 0.
          t30 = 0.
        ENDIF.
      ENDIF.
      IF t30 > t34 OR t31 <= 0.
      ELSE.
        IF t31 > t34 - t30.
          t31 = t34 - t30.
        ENDIF.
        t28 = t26+t30(t31).
      ENDIF.
      t11 = t28.
    ENDIF.
    t6 = t11.
    DATA t36 TYPE f.
    DATA t37 TYPE f.
    t37 = i_kind.
    t36 = t37.
    DATA t39 TYPE REF TO zcl_lnt_range.
    DATA t41 TYPE REF TO zcl_lnt_fi_identifier.
    t41 = t1.
    DATA t44 TYPE REF TO zcl_lnt_position.
    t44 = t41->token->start.
    DATA t54 TYPE REF TO zcl_lnt_position.
    DATA t59 TYPE REF TO zcl_lnt_abstract_token.
    t59 = t41->token.
    DATA t63 TYPE f.
    t63 = t59->start->row.
    DATA t70 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t70 = t59->start->col.
    DATA t76 TYPE f.
    t76 = strlen( t59->str ).
    DATA(t81) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t81->has = abap_true.
    t81->value = t76.
    t54 = NEW zcl_lnt_position( i_row = t63 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t70 right = t81 op = `+` ) ).
    DATA t84 TYPE f.
    DATA t85 TYPE f.
    t85 = t44->row.
    DATA(t90) = CONV f( 1 ).
    t84 = t85 - t90.
    DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t93 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t93 = t44->col.
    DATA(t99) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t99->has = abap_true.
    t99->value = CONV f( 1 ).
    t92 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t93 right = t99 op = `-` ).
    DATA t101 TYPE f.
    DATA t102 TYPE f.
    t102 = t54->row.
    DATA(t107) = CONV f( 1 ).
    t101 = t102 - t107.
    DATA t109 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t110 = t54->col.
    DATA(t116) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t116->has = abap_true.
    t116->value = CONV f( 1 ).
    t109 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t110 right = t116 op = `-` ).
    DATA t117 TYPE REF TO zcl_lnt_range.
    DATA t118 TYPE REF TO zcl_lnt_no_position.
    DATA t119 TYPE REF TO zcl_lnt_no_position.
    t119 = NEW zcl_lnt_no_position( i_line = t84 i_character = t92 ).
    CREATE OBJECT t119->zlnt_view_ownkeys_b0e8086400eb.
    t119->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t122 ).
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t123 ).
    ENDIF.
    t118 = t119.
    DATA t125 TYPE REF TO zcl_lnt_no_position.
    t125 = NEW zcl_lnt_no_position( i_line = t101 i_character = t109 ).
    CREATE OBJECT t125->zlnt_view_ownkeys_b0e8086400eb.
    t125->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t125->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t128 ).
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t125->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t125->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t129 ).
    ENDIF.
    t117 = NEW zcl_lnt_range( i_start = t118 i_end = t125 ).
    CREATE OBJECT t117->zlnt_view_ownkeys_b0e8086400eb.
    t117->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t130 ).
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t117->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t131 ).
    ENDIF.
    CREATE OBJECT t117->zlnt_json_ownkeys_70e5fd461788.
    t117->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t117->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t133 ).
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t117->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t135 ).
    ENDIF.
    t39 = t117.
    DATA t136 TYPE REF TO zcl_lnt_range.
    DATA t138 TYPE REF TO zcl_lnt_fi_identifier.
    t138 = t1.
    DATA t141 TYPE REF TO zcl_lnt_position.
    t141 = t138->token->start.
    DATA(t151) = VALUE string( ).
    DATA t156 TYPE string.
    t156 = t138->token->str.
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
    ELSE.
      IF t167 > t168 - t166.
        t167 = t168 - t166.
      ENDIF.
      t164 = t165+t166(t167).
    ENDIF.
    IF xsdbool( t164 = |!| ) = abap_true.
      DATA t171 TYPE string.
      t171 = t156.
      DATA(t173) = VALUE string( ).
      DATA(t175) = 1.
      DATA t176 TYPE i.
      t176 = strlen( t171 ).
      DATA(t179) = strlen( t171 ).
      IF t175 < 0.
        t175 = t175 + t179.
        IF t175 < 0.
          t175 = 0.
        ENDIF.
      ENDIF.
      IF t175 > t179 OR t176 <= 0.
      ELSE.
        IF t176 > t179 - t175.
          t176 = t179 - t175.
        ENDIF.
        t173 = t171+t175(t176).
      ENDIF.
      t156 = t173.
    ENDIF.
    t151 = t156.
    DATA t183 TYPE f.
    DATA t184 TYPE f.
    t184 = t141->row.
    DATA(t189) = CONV f( 1 ).
    t183 = t184 - t189.
    DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t192 = t141->col.
    DATA(t198) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t198->has = abap_true.
    t198->value = CONV f( 1 ).
    t191 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t192 right = t198 op = `-` ).
    DATA t200 TYPE f.
    DATA t201 TYPE f.
    t201 = t141->row.
    DATA(t206) = CONV f( 1 ).
    t200 = t201 - t206.
    DATA t208 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t209 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t210 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t210 = t141->col.
    DATA(t216) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t216->has = abap_true.
    t216->value = CONV f( 1 ).
    t209 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t210 right = t216 op = `-` ).
    DATA t217 TYPE f.
    t217 = strlen( t151 ).
    DATA(t221) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t221->has = abap_true.
    t221->value = t217.
    t208 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t209 right = t221 op = `+` ).
    DATA t222 TYPE REF TO zcl_lnt_range.
    DATA t223 TYPE REF TO zcl_lnt_no_position.
    DATA t224 TYPE REF TO zcl_lnt_no_position.
    t224 = NEW zcl_lnt_no_position( i_line = t183 i_character = t191 ).
    CREATE OBJECT t224->zlnt_view_ownkeys_b0e8086400eb.
    t224->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t224->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t227 ).
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t224->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t224->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t228 ).
    ENDIF.
    t223 = t224.
    DATA t230 TYPE REF TO zcl_lnt_no_position.
    t230 = NEW zcl_lnt_no_position( i_line = t200 i_character = t208 ).
    CREATE OBJECT t230->zlnt_view_ownkeys_b0e8086400eb.
    t230->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t230->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t233 ).
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t230->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t230->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t234 ).
    ENDIF.
    t222 = NEW zcl_lnt_range( i_start = t223 i_end = t230 ).
    CREATE OBJECT t222->zlnt_view_ownkeys_b0e8086400eb.
    t222->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t235 ).
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t236 ).
    ENDIF.
    CREATE OBJECT t222->zlnt_json_ownkeys_70e5fd461788.
    t222->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t238 ).
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t240 ).
    ENDIF.
    t136 = t222.
    DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t244 ?= t3.
    DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t249 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t251 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t5 = NEW zcl_lnt_document_symbol( i_name = t6 i_detail_4ec1 = t247 i_kind = t36 i_tags = t249 i_deprecated = t251 i_range = t39 i_selection_range = t136 i_children_9020 = t244 ).
    CREATE OBJECT t5->zlnt_view_ownkeys_b0e8086400eb.
    t5->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t253 ).
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t254 ).
    ENDIF.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t255 ).
    ENDIF.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `selectionRange` p1 = t256 ).
    ENDIF.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `children` p1 = t257 ).
    ENDIF.
    CREATE OBJECT t5->zlnt_json_ownkeys_70e5fd461788.
    t5->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t259 ).
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |kind| p1 = t261 ).
    ENDIF.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t263 ).
    ENDIF.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |selectionRange| p1 = t265 ).
    ENDIF.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |children| p1 = t267 ).
    ENDIF.
    DATA t268 TYPE REF TO zcl_lnt_document_symbol.
    t268 ?= t5.
    result = t268.

  ENDMETHOD.

  METHOD output_forms.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->info->list_form_definitions( ).
    DATA t10 TYPE REF TO zcl_lnt_info_form_definition.
    DATA t11 TYPE REF TO object.
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
      DATA t16 TYPE REF TO zcl_lnt_document_symbol.
      DATA t17 TYPE REF TO object.
      DATA t18 TYPE REF TO zcl_lnt_fi_identifier.
      t18 = t10->identifier.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t21.
      t17 = me->new_symbol( i_identifier = t18 i_kind = 12 i_children_9020 = t21 ).
      t16 ?= t17.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t22 ?= t2.
      t22->load( ).
      APPEND t16 TO t22->items.
      t22->save( ).
    ENDDO.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t25 ?= t2.
    result = t25.

  ENDMETHOD.

  METHOD output_modules.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA t10 TYPE REF TO object.
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
      DATA t15 TYPE REF TO zif_lnt_statement.
      t15 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_st_module ) = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t17.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
        t19 = t9->find_first_expression( i_type_9913 = t22 ).
        DATA t23 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t23.
        IF xsdbool( t19 IS INITIAL ) = abap_true.
          CLEAR t23.
        ELSE.
          t23 = t19->get_first_token( ).
        ENDIF.
        t17 = t23.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        IF xsdbool( t17 IS INITIAL ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t39 TYPE REF TO zcl_lnt_abstract_token.
        t39 = t17.
        DATA t42 TYPE REF TO zcl_lnt_abstract_file.
        t42 = t1.
        DATA t44 TYPE string.
        t44 = t42->filename.
        t38 = NEW zcl_lnt_fi_identifier( i_token = t39 i_filename = t44 ).
        DATA t47 TYPE REF TO zcl_lnt_document_symbol.
        DATA t48 TYPE REF TO object.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t51.
        t48 = me->new_symbol( i_identifier = t38 i_kind = 2 i_children_9020 = t51 ).
        t47 ?= t48.
        DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t52 ?= t2.
        t52->load( ).
        APPEND t47 TO t52->items.
        t52->save( ).
      ENDIF.
    ENDDO.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t55 ?= t2.
    result = t55.

  ENDMETHOD.

  METHOD output_classes.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->info->list_class_definitions( ).
    DATA t10 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t11 TYPE REF TO object.
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
      CREATE OBJECT t15.
      DATA(t17) = VALUE i( ).
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t20 = t10->attributes.
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
        t27 ?= t15.
        t27->load( ).
        APPEND t22 TO t27->items.
        t27->save( ).
      ENDDO.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t31 ?= t15.
      t31->load( ).
      t17 = lines( t31->items ).
      DATA t34 TYPE REF TO zcl_lnt_document_symbol.
      DATA t35 TYPE REF TO object.
      DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
      t36 = t10->identifier.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t39 ?= t15.
      t35 = me->new_symbol( i_identifier = t36 i_kind = 5 i_children_9020 = t39 ).
      t34 ?= t35.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t41 ?= t2.
      t41->load( ).
      APPEND t34 TO t41->items.
      t41->save( ).
    ENDDO.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t44 = t1->info->list_class_implementations( ).
    DATA t50 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    DATA t51 TYPE REF TO object.
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
      CREATE OBJECT t55.
      DATA(t57) = VALUE i( ).
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t60 = t50->methods.
      t59 = me->output_method_implementations( i_methods = t60 i_file = t1 ).
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
        t68 ?= t55.
        t68->load( ).
        APPEND t63 TO t68->items.
        t68->save( ).
      ENDDO.
      DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t72 ?= t55.
      t72->load( ).
      t57 = lines( t72->items ).
      DATA t75 TYPE REF TO zcl_lnt_document_symbol.
      DATA t76 TYPE REF TO object.
      DATA t77 TYPE REF TO zcl_lnt_fi_identifier.
      t77 = t50->identifier.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t80 ?= t55.
      t76 = me->new_symbol( i_identifier = t77 i_kind = 5 i_children_9020 = t80 ).
      t75 ?= t76.
      DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t82 ?= t2.
      t82->load( ).
      APPEND t75 TO t82->items.
      t82->save( ).
    ENDDO.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t85 ?= t2.
    result = t85.

  ENDMETHOD.

  METHOD output_method_implementations.
    DATA(t1) = i_methods.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t6 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t1->load( ).
      IF t8 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t1->items INDEX t8 + 1 INTO t7.
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
      t11 = t6->token->start.
      DATA t21 TYPE REF TO zcl_lnt_position.
      CLEAR t21.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t23 = t2->statements.
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
        DATA t34 TYPE REF TO zcl_lnt_position.
        t34 = t28->get_first_token( )->start.
        DATA t41 TYPE REF TO zcl_lnt_position.
        t41 = t11.
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE abap_bool.
        t44 = xsdbool( t34->row < t41->row ).
        t43 = t44.
        IF t44 = abap_false.
          DATA t49 TYPE abap_bool.
          DATA t50 TYPE abap_bool.
          t50 = xsdbool( t34->row = t41->row ).
          t49 = t50.
          IF t50 = abap_true.
            DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t56 = t34->col.
            DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t58 = t41->col.
            t49 = zlnt_runtime_numb_290eb04a9758=>compare( left = t56 right = t58 op = `<` ).
          ENDIF.
          t43 = t49.
        ENDIF.
        IF t43 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t61 TYPE REF TO zif_lnt_statement.
        t61 = t28->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_end_method ) = abap_true.
          DATA t66 TYPE REF TO zcl_lnt_abstract_token.
          t66 = t28->get_last_token( ).
          DATA t70 TYPE f.
          t70 = t66->start->row.
          DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t77 = t66->start->col.
          DATA t83 TYPE f.
          t83 = strlen( t66->str ).
          DATA(t88) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t88->has = abap_true.
          t88->value = t83.
          t21 = NEW zcl_lnt_position( i_row = t70 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t77 right = t88 op = `+` ) ).
          EXIT.
        ENDIF.
      ENDDO.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      IF xsdbool( t21 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t100 TYPE f.
      DATA t101 TYPE f.
      t101 = t11->row.
      DATA(t106) = CONV f( 1 ).
      t100 = t101 - t106.
      DATA t108 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t109 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t109 = t11->col.
      DATA(t115) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t115->has = abap_true.
      t115->value = CONV f( 1 ).
      t108 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t109 right = t115 op = `-` ).
      DATA t117 TYPE f.
      DATA t118 TYPE f.
      t118 = t21->row.
      DATA(t124) = CONV f( 1 ).
      t117 = t118 - t124.
      DATA t126 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t127 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t127 = t21->col.
      DATA(t134) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t134->has = abap_true.
      t134->value = CONV f( 1 ).
      t126 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t127 right = t134 op = `-` ).
      DATA t135 TYPE REF TO zcl_lnt_range.
      CLEAR t135.
      DATA t136 TYPE REF TO zcl_lnt_no_position.
      CLEAR t136.
      DATA t137 TYPE REF TO zcl_lnt_no_position.
      t137 = NEW zcl_lnt_no_position( i_line = t100 i_character = t108 ).
      CREATE OBJECT t137->zlnt_view_ownkeys_b0e8086400eb.
      t137->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      t137->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t140 ).
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t141.
      IF t137->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t137->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t141 ).
      ENDIF.
      t136 = t137.
      DATA t143 TYPE REF TO zcl_lnt_no_position.
      t143 = NEW zcl_lnt_no_position( i_line = t117 i_character = t126 ).
      CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
      t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t146.
      t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t146 ).
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t147 ).
      ENDIF.
      t135 = NEW zcl_lnt_range( i_start = t136 i_end = t143 ).
      CREATE OBJECT t135->zlnt_view_ownkeys_b0e8086400eb.
      t135->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t148 ).
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t149 ).
      ENDIF.
      CREATE OBJECT t135->zlnt_json_ownkeys_70e5fd461788.
      t135->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t151 ).
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t153 ).
      ENDIF.
      DATA t155 TYPE REF TO zcl_lnt_document_symbol.
      DATA t156 TYPE REF TO object.
      DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t159.
      t156 = me->new_symbol_ranged( i_identifier = t6 i_kind = 6 i_children_9020 = t159 i_range = t135 ).
      t155 ?= t156.
      DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t161 ?= t3.
      t161->load( ).
      APPEND t155 TO t161->items.
      t161->save( ).
    ENDDO.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t164 ?= t3.
    result = t164.

  ENDMETHOD.

  METHOD output_class_attributes.
    DATA(t1) = i_attr.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    DATA t13 TYPE REF TO zcl_lnt_info_attribute.
    DATA t14 TYPE REF TO object.
    DATA(t15) = VALUE i( ).
    DO.
      t1->load( ).
      IF t15 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t1->items INDEX t15 + 1 INTO t14.
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
      t18 ?= t10.
      DATA t20 TYPE REF TO zcl_lnt_document_symbol.
      DATA t21 TYPE REF TO object.
      DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
      t22 = t13->identifier.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t25.
      t21 = me->new_symbol( i_identifier = t22 i_kind = 7 i_children_9020 = t25 ).
      t20 ?= t21.
      t18->load( ).
      APPEND t20 TO t18->items.
      t18->save( ).
    ENDDO.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t26 ?= t10.
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
