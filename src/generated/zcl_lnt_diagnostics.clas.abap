* TS: src/lsp/diagnostics.ts:6:1 Diagnostics
CLASS zcl_lnt_diagnostics DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS find_issues IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS map_diagnostic IMPORTING i_issue TYPE REF TO zcl_lnt_issue RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_9c8b3027.
    METHODS find_8f95 IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS map_severity IMPORTING i_severity TYPE string RETURNING VALUE(result) TYPE i.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_diagnostics IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD find_issues.
    DATA t2 TYPE REF TO zif_lnt_file.
    t2 = me->reg->get_file_by_name( i_filename = i_text_document->zlnt_view_read_no_0041136eb871( ) ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zif_lnt_object.
    t15 = me->reg->find_object_for_file( i_file = t2 ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t15 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t28 TYPE REF TO zif_lnt_registry.
    t28 = me->reg->parse( ).
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t30 = me->reg->find_issues_object( i_iobj = t15 ).
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    DATA(t38) = t30.
    DATA t39 TYPE REF TO zcl_lnt_issue.
    DATA t40 TYPE REF TO object.
    DATA(t41) = VALUE i( ).
    DO.
      t38->load( ).
      IF t41 >= lines( t38->items ).
        EXIT.
      ENDIF.
      CLEAR t40.
      READ TABLE t38->items INDEX t41 + 1 INTO t40.
      t41 = t41 + 1.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      CLEAR t39.
      IF t40 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t42 ?= t40.
        DATA t43 TYPE REF TO object.
        t43 = t42->as_ref( ).
        t39 ?= t43.
      ELSE.
        t39 ?= t40.
      ENDIF.
      DATA t45 TYPE string.
      t45 = t39->data_56cc->filename.
      IF xsdbool( t45 = t2->get_filename( ) ) = abap_true.
        t36->load( ).
        APPEND t39 TO t36->items.
        t36->save( ).
      ENDIF.
    ENDDO.
    t30 = t36.
    result = t30.

  ENDMETHOD.

  METHOD map_diagnostic.
    DATA(t1) = i_issue.
    DATA t3 TYPE REF TO zcl_lnt_shape_9c8b3027.
    DATA t4 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t7 TYPE f.
    DATA t9 TYPE string.
    t9 = t1->data_56cc->severity.
    t7 = zcl_lnt_diagnostics=>map_severity( i_severity = t9 ).
    DATA(t15) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t15->has = abap_true.
    t15->value = t7.
    t4 = t15.
    DATA t17 TYPE REF TO zcl_lnt_range.
    DATA t20 TYPE REF TO zcl_lnt_range.
    DATA t21 TYPE REF TO zcl_lnt_no_position.
    DATA t22 TYPE REF TO zcl_lnt_no_position.
    DATA t23 TYPE f.
    DATA t25 TYPE f.
    t25 = t1->data_56cc->start->row.
    DATA(t35) = CONV f( 1 ).
    t23 = t25 - t35.
    DATA t38 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t38 = t1->data_56cc->start->col.
    DATA(t49) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t49->has = abap_true.
    t49->value = CONV f( 1 ).
    t22 = NEW zcl_lnt_no_position( i_line = t23 i_character = zlnt_runtime_numb_290eb04a9758=>calculate( left = t38 right = t49 op = `-` ) ).
    CREATE OBJECT t22->zlnt_view_ownkeys_b0e8086400eb.
    t22->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t22->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t50 ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t22->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t22->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t51 ).
    ENDIF.
    CREATE OBJECT t22->zlnt_json_ownkeys_70e5fd461788.
    t22->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t22->zlnt_json_ownkeys_70e5fd461788->put( p0 = |line| p1 = t53 ).
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t22->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t22->zlnt_json_ownkeys_70e5fd461788->put( p0 = |character| p1 = t55 ).
    ENDIF.
    t21 = t22.
    DATA t57 TYPE REF TO zcl_lnt_no_position.
    DATA t58 TYPE f.
    DATA t60 TYPE f.
    t60 = t1->data_56cc->end->row.
    DATA(t70) = CONV f( 1 ).
    t58 = t60 - t70.
    DATA t73 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t73 = t1->data_56cc->end->col.
    DATA(t84) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t84->has = abap_true.
    t84->value = CONV f( 1 ).
    t57 = NEW zcl_lnt_no_position( i_line = t58 i_character = zlnt_runtime_numb_290eb04a9758=>calculate( left = t73 right = t84 op = `-` ) ).
    CREATE OBJECT t57->zlnt_view_ownkeys_b0e8086400eb.
    t57->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t85 ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t86 ).
    ENDIF.
    CREATE OBJECT t57->zlnt_json_ownkeys_70e5fd461788.
    t57->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = |line| p1 = t88 ).
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = |character| p1 = t90 ).
    ENDIF.
    t20 = NEW zcl_lnt_range( i_start = t21 i_end = t57 ).
    CREATE OBJECT t20->zlnt_view_ownkeys_b0e8086400eb.
    t20->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t91 ).
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t92 ).
    ENDIF.
    CREATE OBJECT t20->zlnt_json_ownkeys_70e5fd461788.
    t20->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t94 ).
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t96 ).
    ENDIF.
    t17 = t20.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t105 TYPE string.
    t105 = t1->data_56cc->key.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = t105.
    t98 = t101.
    DATA t109 TYPE REF TO zcl_lnt_shape_88ee2c6c.
    DATA t112 TYPE REF TO zcl_lnt_shape_88ee2c6c.
    DATA t115 TYPE string.
    DATA(t116) = |https://rules.abaplint.org/|.
    DATA t117 TYPE string.
    t117 = t1->data_56cc->key.
    DATA(t123) = strlen( t116 ).
    t115 = |{ t116 }{ t117 }|.
    DATA(t125) = strlen( t115 ).
    t112 = NEW zcl_lnt_shape_88ee2c6c( i_href = |{ t115 }{ |/| }| ).
    CREATE OBJECT t112->zlnt_view_ownkeys_b0e8086400eb.
    t112->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `href` p1 = t126 ).
    CREATE OBJECT t112->zlnt_json_ownkeys_70e5fd461788.
    t112->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = |href| p1 = t128 ).
    t109 = t112.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t137 TYPE string.
    t137 = t1->data_56cc->message_25cb.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = t137.
    t130 = t133.
    DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t145->has = abap_true.
    t145->value = |abaplint|.
    DATA t147 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = NEW zcl_lnt_shape_9c8b3027( i_range = t17 i_severity = t4 i_code = t98 i_code_description = t109 i_source_75cf = t145 i_message_26cb = t130 i_tags = t147 i_related_information = t149 i_data_dc02 = t151 ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t153 ).
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t154 ).
    ENDIF.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `code` p1 = t155 ).
    ENDIF.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `codeDescription` p1 = t156 ).
    ENDIF.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t157 ).
    ENDIF.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `source` p1 = t158 ).
    ENDIF.
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |severity| p1 = t160 ).
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t162 ).
    ENDIF.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |code| p1 = t164 ).
    ENDIF.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |codeDescription| p1 = t166 ).
    ENDIF.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |message| p1 = t168 ).
    ENDIF.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |source| p1 = t170 ).
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD find_8f95.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = i_text_document.
    t2 = me->find_issues( i_text_document = t4 ).
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
      DATA t14 TYPE REF TO zcl_lnt_shape_9c8b3027.
      t14 = zcl_lnt_diagnostics=>map_diagnostic( i_issue = t8 ).
      t5->load( ).
      APPEND t14 TO t5->items.
      t5->save( ).
    ENDDO.
    result = t5.

  ENDMETHOD.

  METHOD map_severity.
    DATA(t1) = i_severity.
    IF xsdbool( t1 = |Error| ) = abap_true.
      result = 1.
      RETURN.
    ELSE.
      IF xsdbool( t1 = |Warning| ) = abap_true.
        result = 2.
        RETURN.
      ELSE.
        IF xsdbool( t1 = |Info| ) = abap_true.
          result = 3.
          RETURN.
        ELSE.
          result = 1.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1166_80474dc83ddd.
  ENDMETHOD.
ENDCLASS.
