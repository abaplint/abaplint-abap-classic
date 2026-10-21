* TS: src/lsp/code_actions.ts:10:1 CodeActions
CLASS zcl_lnt_code_actions DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS find_8f95 IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_icode_action_params RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS fix_alls IMPORTING i_key TYPE string i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO object.
    METHODS in_range IMPORTING i_i TYPE REF TO zcl_lnt_issue i_range TYPE REF TO zcl_lnt_range RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_code_actions IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD find_8f95.
    DATA(t1) = i_params_4c59.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |lowering trap: src/lsp/code_actions.ts:17:3: HIR verificatio|.
    t3 = t3 && |n: node 7198 (src/lsp/code_actions.ts:17:3): missing express|.
    t3 = t3 && |ion|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD fix_alls.
    DATA(t1) = i_key.
    DATA(t2) = i_issues.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    DATA t8 TYPE REF TO zcl_lnt_issue.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t2->load( ).
      IF t10 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t2->items INDEX t10 + 1 INTO t9.
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
      IF xsdbool( t8->data_56cc->key <> t1 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t21 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t21 = t8->data_56cc->default_fix.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      IF xsdbool( t21 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t36 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t36 = t21.
      t5->load( ).
      APPEND t36 TO t5->items.
      t5->save( ).
      DATA t39 TYPE REF TO zcl_lnt_shape_9c8b3027.
      t39 = zcl_lnt_diagnostics=>map_diagnostic( i_issue = t8 ).
      t3->load( ).
      APPEND t39 TO t3->items.
      t3->save( ).
    ENDDO.
    DATA t41 TYPE REF TO zcl_lnt_shape_73439a98.
    DATA t42 TYPE string.
    DATA(t44) = |Fix all, |.
    DATA(t46) = strlen( t44 ).
    t42 = |{ t44 }{ t1 }|.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t51->has = abap_true.
    t51->value = |quickfix|.
    t47 = t51.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t53 = t3.
    DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t62) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t62->has = abap_true.
    t62->value = abap_true.
    t58 = t62.
    DATA t67 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t68 TYPE REF TO object.
    t68 = zcl_lnt_lsp_edit=>map_edits( i_edits = t5 ).
    t67 ?= t68.
    DATA t71 TYPE REF TO zcl_lnt_code_action_disabled.
    DATA t73 TYPE REF TO zcl_lnt_command.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t77 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    t41 = NEW zcl_lnt_shape_73439a98( i_title = t42 i_kind = t47 i_diagnostics = t53 i_is_preferred = t58 i_disabled = t71 i_edit = t67 i_command = t73 i_data_dc02 = t75 i_tags = t77 ).
    CREATE OBJECT t41->zlnt_view_ownkeys_b0e8086400eb.
    t41->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t79 ).
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t80 ).
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `diagnostics` p1 = t81 ).
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isPreferred` p1 = t82 ).
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t83 ).
    ENDIF.
    CREATE OBJECT t41->zlnt_json_ownkeys_70e5fd461788.
    t41->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t85 ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = |kind| p1 = t87 ).
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = |diagnostics| p1 = t89 ).
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isPreferred| p1 = t91 ).
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edit| p1 = t93 ).
    ENDIF.
    result = t41.

  ENDMETHOD.

  METHOD in_range.
    DATA(t1) = i_i.
    DATA(t2) = i_range.
    DATA t3 TYPE REF TO zcl_lnt_position.
    DATA t5 TYPE f.
    DATA t6 TYPE f.
    t6 = t2->zlnt_view_read_no_afe0c94a5142( )->zlnt_view_read_no_30cccf3c929a( ).
    DATA(t9) = CONV f( 1 ).
    t5 = t6 + t9.
    DATA t11 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t11 = t2->zlnt_view_read_no_afe0c94a5142( )->zlnt_view_read_no_a9574d1ec283( ).
    DATA(t15) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t15->has = abap_true.
    t15->value = CONV f( 1 ).
    t3 = NEW zcl_lnt_position( i_row = t5 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t11 right = t15 op = `+` ) ).
    DATA t16 TYPE REF TO zcl_lnt_position.
    DATA t18 TYPE f.
    DATA t19 TYPE f.
    t19 = t2->zlnt_view_read_no_04608ad22a15( )->zlnt_view_read_no_30cccf3c929a( ).
    DATA(t22) = CONV f( 1 ).
    t18 = t19 + t22.
    DATA t24 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t24 = t2->zlnt_view_read_no_04608ad22a15( )->zlnt_view_read_no_a9574d1ec283( ).
    DATA(t28) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t28->has = abap_true.
    t28->value = CONV f( 1 ).
    t16 = NEW zcl_lnt_position( i_row = t18 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t24 right = t28 op = `+` ) ).
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE REF TO zcl_lnt_position.
    t34 = t1->data_56cc->start.
    DATA t45 TYPE abap_bool.
    DATA t46 TYPE abap_bool.
    t46 = t34->is_after( i_p = t3 ).
    t45 = t46.
    IF t46 = abap_true.
      DATA t50 TYPE REF TO zcl_lnt_position.
      t50 = t16.
      DATA t52 TYPE abap_bool.
      DATA t53 TYPE abap_bool.
      t53 = xsdbool( t34->row < t50->row ).
      t52 = t53.
      IF t53 = abap_false.
        DATA t58 TYPE abap_bool.
        DATA t59 TYPE abap_bool.
        t59 = xsdbool( t34->row = t50->row ).
        t58 = t59.
        IF t59 = abap_true.
          DATA t65 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t65 = t34->col.
          DATA t67 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t67 = t50->col.
          t58 = zlnt_runtime_numb_290eb04a9758=>compare( left = t65 right = t67 op = `<` ).
        ENDIF.
        t52 = t58.
      ENDIF.
      t45 = t52.
    ENDIF.
    t33 = t45.
    t32 = t33.
    IF t33 = abap_false.
      DATA t70 TYPE REF TO zcl_lnt_position.
      t70 = t1->data_56cc->end.
      DATA t81 TYPE abap_bool.
      DATA t82 TYPE abap_bool.
      t82 = t70->is_after( i_p = t3 ).
      t81 = t82.
      IF t82 = abap_true.
        DATA t86 TYPE REF TO zcl_lnt_position.
        t86 = t16.
        DATA t88 TYPE abap_bool.
        DATA t89 TYPE abap_bool.
        t89 = xsdbool( t70->row < t86->row ).
        t88 = t89.
        IF t89 = abap_false.
          DATA t94 TYPE abap_bool.
          DATA t95 TYPE abap_bool.
          t95 = xsdbool( t70->row = t86->row ).
          t94 = t95.
          IF t95 = abap_true.
            DATA t101 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t101 = t70->col.
            DATA t103 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t103 = t86->col.
            t94 = zlnt_runtime_numb_290eb04a9758=>compare( left = t101 right = t103 op = `<` ).
          ENDIF.
          t88 = t94.
        ENDIF.
        t81 = t88.
      ENDIF.
      t32 = t81.
    ENDIF.
    t31 = t32.
    IF t32 = abap_false.
      DATA t106 TYPE REF TO zcl_lnt_position.
      t106 = t3.
      DATA t112 TYPE REF TO zcl_lnt_position.
      t112 = t1->data_56cc->start.
      DATA t119 TYPE REF TO zcl_lnt_position.
      t119 = t1->data_56cc->end.
      DATA t122 TYPE abap_bool.
      DATA t123 TYPE abap_bool.
      t123 = t106->is_after( i_p = t112 ).
      t122 = t123.
      IF t123 = abap_true.
        DATA t127 TYPE REF TO zcl_lnt_position.
        t127 = t119.
        DATA t129 TYPE abap_bool.
        DATA t130 TYPE abap_bool.
        t130 = xsdbool( t106->row < t127->row ).
        t129 = t130.
        IF t130 = abap_false.
          DATA t135 TYPE abap_bool.
          DATA t136 TYPE abap_bool.
          t136 = xsdbool( t106->row = t127->row ).
          t135 = t136.
          IF t136 = abap_true.
            DATA t142 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t142 = t106->col.
            DATA t144 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t144 = t127->col.
            t135 = zlnt_runtime_numb_290eb04a9758=>compare( left = t142 right = t144 op = `<` ).
          ENDIF.
          t129 = t135.
        ENDIF.
        t122 = t129.
      ENDIF.
      t31 = t122.
    ENDIF.
    t30 = t31.
    IF t31 = abap_false.
      DATA t147 TYPE REF TO zcl_lnt_position.
      t147 = t16.
      DATA t153 TYPE REF TO zcl_lnt_position.
      t153 = t1->data_56cc->start.
      DATA t160 TYPE REF TO zcl_lnt_position.
      t160 = t1->data_56cc->end.
      DATA t163 TYPE abap_bool.
      DATA t164 TYPE abap_bool.
      t164 = t147->is_after( i_p = t153 ).
      t163 = t164.
      IF t164 = abap_true.
        DATA t168 TYPE REF TO zcl_lnt_position.
        t168 = t160.
        DATA t170 TYPE abap_bool.
        DATA t171 TYPE abap_bool.
        t171 = xsdbool( t147->row < t168->row ).
        t170 = t171.
        IF t171 = abap_false.
          DATA t176 TYPE abap_bool.
          DATA t177 TYPE abap_bool.
          t177 = xsdbool( t147->row = t168->row ).
          t176 = t177.
          IF t177 = abap_true.
            DATA t183 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t183 = t147->col.
            DATA t185 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t185 = t168->col.
            t176 = zlnt_runtime_numb_290eb04a9758=>compare( left = t183 right = t185 op = `<` ).
          ENDIF.
          t170 = t176.
        ENDIF.
        t163 = t170.
      ENDIF.
      t30 = t163.
    ENDIF.
    t29 = t30.
    IF t30 = abap_false.
      DATA t189 TYPE REF TO zcl_lnt_position.
      t189 = t1->data_56cc->end.
      t29 = t16->equals( i_p = t189 ).
    ENDIF.
    result = t29.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1163_6743b6c727d2.
  ENDMETHOD.
ENDCLASS.
