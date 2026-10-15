* TS: src/lsp/_edit.ts:4:1 LSPEdit
CLASS zcl_lnt_lsp_edit DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS map_edits IMPORTING i_edits TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO object.
    CLASS-METHODS map_edit IMPORTING i_edit TYPE REF TO zlnt_runtime_map__4fdf767b61ba RETURNING VALUE(result) TYPE REF TO object.
    CLASS-METHODS map_text IMPORTING i_edit TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lsp_edit IMPLEMENTATION.
  METHOD map_edits.
    DATA(t1) = i_edits.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_67db130d.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_iabaplint_app_settings.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_iabaplint_app_settings.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_iabaplint_app_settings.
      DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t9.
      t8 = t9.
      t7 = NEW zcl_lnt_iabaplint_app_settings( i_observations = t8 ).
      CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
      t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
      t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t5 = t7.
    ELSE.
      DATA t10 TYPE REF TO zcl_lnt_iabaplint_app_settings.
      CLEAR t10.
      t5 = t10.
    ENDIF.
    t4 = t5.
    t3 = NEW zcl_lnt_shape_67db130d( i_changes = t4 ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `changes` p1 = t11 ).
    ENDIF.
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t12) = |changes|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    t2 = t3.
    DATA(t14) = t1.
    DATA t15 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t15.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
    DATA(t17) = VALUE i( ).
    DO.
      t14->load( ).
      IF t17 >= lines( t14->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t14->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t21) = t15.
      t20 = t21->keys( ).
      DATA(t22) = VALUE string( ).
      t20->dense( ).
      DATA(t23) = VALUE i( ).
      DO.
        t20->load( ).
        IF t23 >= lines( t20->items ).
          EXIT.
        ENDIF.
        CLEAR t22.
        READ TABLE t20->items INDEX t23 + 1 INTO t22.
        IF t20->has( t23 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t23 = t23 + 1.
        DATA(t24) = VALUE abap_bool( ).
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t27 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
        DATA t28 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
        DATA t29 TYPE REF TO zcl_lnt_shape_36bc2e57.
        DATA t30 TYPE REF TO object.
        t30 = t2.
        t29 ?= t30.
        t28 = t29->changes.
        t27 = t28.
        DATA(t31) = t22.
        t26 = t27->get( p0 = t31 ).
        t25 = t26.
        DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        t32 = t33.
        DATA(t34) = VALUE abap_bool( ).
        DATA(t35) = t25.
        IF t35 IS INITIAL.
          t34 = abap_true.
        ENDIF.
        t24 = t34.
        IF t24 = abap_true.
          DATA t36 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
          DATA t37 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
          DATA t38 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
          DATA t39 TYPE REF TO zcl_lnt_shape_36bc2e57.
          DATA t40 TYPE REF TO object.
          t40 = t2.
          t39 ?= t40.
          t38 = t39->changes.
          t37 = t38.
          DATA(t41) = t22.
          DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t42.
          t36 = t37->set( p0 = t41 p1 = t42 ).
        ENDIF.
        DATA t43 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
        DATA t44 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
        DATA t45 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
        DATA t46 TYPE REF TO zcl_lnt_shape_36bc2e57.
        DATA t47 TYPE REF TO object.
        t47 = t2.
        t46 ?= t47.
        t45 = t46->changes.
        t44 = t45.
        DATA(t48) = t22.
        DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t52 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
        DATA t53 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
        DATA t54 TYPE REF TO zcl_lnt_shape_36bc2e57.
        DATA t55 TYPE REF TO object.
        t55 = t2.
        t54 ?= t55.
        t53 = t54->changes.
        t52 = t53.
        DATA(t56) = t22.
        t51 = t52->get( p0 = t56 ).
        t50 = t51.
        DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t60) = t15.
        DATA(t61) = t22.
        t59 = t60->get( p0 = t61 ).
        t58 = t59.
        t57 = zcl_lnt_lsp_edit=>map_text( i_edit = t58 ).
        t49 = t50->concat( p0 = t57 ).
        t43 = t44->set( p0 = t48 p1 = t49 ).
      ENDDO.
    ENDDO.
    DATA t62 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t63 TYPE REF TO object.
    t63 = t2.
    t62 ?= t63.
    result = t62.

  ENDMETHOD.

  METHOD map_edit.
    DATA(t1) = i_edit.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_67db130d.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_iabaplint_app_settings.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_iabaplint_app_settings.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_iabaplint_app_settings.
      DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t9.
      t8 = t9.
      t7 = NEW zcl_lnt_iabaplint_app_settings( i_observations = t8 ).
      CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
      t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
      t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t5 = t7.
    ELSE.
      DATA t10 TYPE REF TO zcl_lnt_iabaplint_app_settings.
      CLEAR t10.
      t5 = t10.
    ENDIF.
    t4 = t5.
    t3 = NEW zcl_lnt_shape_67db130d( i_changes = t4 ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `changes` p1 = t11 ).
    ENDIF.
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t12) = |changes|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    t2 = t3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t15) = t1.
    t14 = t15->keys( ).
    DATA(t16) = VALUE string( ).
    t14->dense( ).
    DATA(t17) = VALUE i( ).
    DO.
      t14->load( ).
      IF t17 >= lines( t14->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t14->items INDEX t17 + 1 INTO t16.
      IF t14->has( t17 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
      DATA t19 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
      DATA t20 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
      DATA t21 TYPE REF TO zcl_lnt_shape_36bc2e57.
      DATA t22 TYPE REF TO object.
      t22 = t2.
      t21 ?= t22.
      t20 = t21->changes.
      t19 = t20.
      DATA(t23) = t16.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t27) = t1.
      DATA(t28) = t16.
      t26 = t27->get( p0 = t28 ).
      t25 = t26.
      t24 = zcl_lnt_lsp_edit=>map_text( i_edit = t25 ).
      t18 = t19->set( p0 = t23 p1 = t24 ).
    ENDDO.
    DATA t29 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t30 TYPE REF TO object.
    t30 = t2.
    t29 ?= t30.
    result = t29.

  ENDMETHOD.

  METHOD map_text.
    DATA(t1) = i_edit.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zcl_lnt_itext_edit.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE REF TO zcl_lnt_range.
      CLEAR t10.
      DATA t11 TYPE REF TO zcl_lnt_range.
      CLEAR t11.
      DATA t12 TYPE f.
      DATA t13 TYPE f.
      DATA t14 TYPE f.
      DATA t15 TYPE REF TO zcl_lnt_position.
      DATA t16 TYPE REF TO zcl_lnt_position.
      DATA t17 TYPE REF TO zcl_lnt_irange.
      DATA(t18) = t5.
      t17 = t18->range.
      t16 = t17->start.
      t15 = t16.
      DATA t19 TYPE f.
      DATA(t20) = t15.
      t19 = t20->row.
      t14 = t19.
      DATA(t21) = CONV f( 1 ).
      t13 = t14 - t21.
      t12 = t13.
      DATA t22 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t23 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t24 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t25 TYPE REF TO zcl_lnt_position.
      DATA t26 TYPE REF TO zcl_lnt_position.
      DATA t27 TYPE REF TO zcl_lnt_irange.
      DATA(t28) = t5.
      t27 = t28->range.
      t26 = t27->start.
      t25 = t26.
      DATA t29 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t30) = t25.
      t29 = t30->col.
      t24 = t29.
      DATA(t31) = CONV f( 1 ).
      DATA(t32) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t32->has = abap_true.
      t32->value = t31.
      t23 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t24 right = t32 op = `-` ).
      t22 = t23.
      DATA t33 TYPE f.
      DATA t34 TYPE f.
      DATA t35 TYPE f.
      DATA t36 TYPE REF TO zcl_lnt_position.
      DATA t37 TYPE REF TO zcl_lnt_position.
      DATA t38 TYPE REF TO zcl_lnt_irange.
      DATA(t39) = t5.
      t38 = t39->range.
      t37 = t38->end.
      t36 = t37.
      DATA t40 TYPE f.
      DATA(t41) = t36.
      t40 = t41->row.
      t35 = t40.
      DATA(t42) = CONV f( 1 ).
      t34 = t35 - t42.
      t33 = t34.
      DATA t43 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t46 TYPE REF TO zcl_lnt_position.
      DATA t47 TYPE REF TO zcl_lnt_position.
      DATA t48 TYPE REF TO zcl_lnt_irange.
      DATA(t49) = t5.
      t48 = t49->range.
      t47 = t48->end.
      t46 = t47.
      DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t51) = t46.
      t50 = t51->col.
      t45 = t50.
      DATA(t52) = CONV f( 1 ).
      DATA(t53) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t53->has = abap_true.
      t53->value = t52.
      t44 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t45 right = t53 op = `-` ).
      t43 = t44.
      DATA t54 TYPE REF TO zcl_lnt_range.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_no_position.
      CLEAR t55.
      DATA t56 TYPE REF TO zcl_lnt_no_position.
      DATA(t57) = t12.
      DATA(t58) = t22.
      t56 = NEW zcl_lnt_no_position( i_line = t57 i_character = t58 ).
      CREATE OBJECT t56->zlnt_view_ownkeys_b0e8086400eb.
      t56->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t59 ).
      ENDIF.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t60.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t60 ).
      ENDIF.
      t55 = t56.
      DATA t61 TYPE REF TO zcl_lnt_no_position.
      CLEAR t61.
      DATA t62 TYPE REF TO zcl_lnt_no_position.
      DATA(t63) = t33.
      DATA(t64) = t43.
      t62 = NEW zcl_lnt_no_position( i_line = t63 i_character = t64 ).
      CREATE OBJECT t62->zlnt_view_ownkeys_b0e8086400eb.
      t62->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t65 ).
      ENDIF.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t66 ).
      ENDIF.
      t61 = t62.
      t54 = NEW zcl_lnt_range( i_start = t55 i_end = t61 ).
      CREATE OBJECT t54->zlnt_view_ownkeys_b0e8086400eb.
      t54->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t67 ).
      ENDIF.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t68 ).
      ENDIF.
      CREATE OBJECT t54->zlnt_json_ownkeys_70e5fd461788.
      t54->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t69) = |start|.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
      ENDIF.
      DATA(t71) = |end|.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
      ENDIF.
      t11 = t54.
      t10 = t11.
      DATA(t73) = t2.
      DATA t74 TYPE REF TO zcl_lnt_text_edit.
      DATA t75 TYPE REF TO zcl_lnt_range.
      DATA(t76) = t10.
      t75 = t76.
      DATA t77 TYPE string.
      DATA t78 TYPE string.
      DATA(t79) = t5.
      t78 = t79->new_text.
      t77 = t78.
      t74 = NEW zcl_lnt_text_edit( i_range = t75 i_new_text = t77 ).
      CREATE OBJECT t74->zlnt_view_ownkeys_b0e8086400eb.
      t74->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t80 ).
      ENDIF.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t81 ).
      ENDIF.
      CREATE OBJECT t74->zlnt_json_ownkeys_70e5fd461788.
      t74->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t82) = |range|.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
      ENDIF.
      DATA(t84) = |newText|.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
      ENDIF.
      t73->load( ).
      APPEND t74 TO t73->items.
      t73->save( ).
    ENDDO.
    DATA(t86) = t2.
    result = t86.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1153_2125120766bc.
  ENDMETHOD.
ENDCLASS.
