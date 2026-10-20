* TS: src/lsp/code_lens.ts:17:1 CodeLens
CLASS zcl_lnt_code_lens DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS list IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr i_settings TYPE REF TO zcl_lnt_code_lens_settings RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_dynamic_exception IMPORTING i_name TYPE string i_top TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_method_references IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_code_lens IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD list.
    DATA(t1) = i_text_document.
    DATA(t2) = i_settings.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_code_lens_settings.
      t7 = NEW zcl_lnt_code_lens_settings( i_message_text = abap_true i_dynamic_exceptions = abap_true ).
      CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
      t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `messageText` p1 = t12 ).
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dynamicExceptions` p1 = t13 ).
      ENDIF.
      CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
      t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |messageText| p1 = t15 ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |dynamicExceptions| p1 = t17 ).
      ENDIF.
      t2 = t7.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_abap_file.
    DATA(t21) = me->reg.
    t19 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t21 i_filename = t1->zlnt_view_read_no_0041136eb871( ) ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t19 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t32 TYPE REF TO zif_lnt_object.
    t32 = me->reg->find_object_for_file( i_file = t19 ).
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE abap_bool( ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t38 = xsdbool( t32 IS INITIAL ).
    t37 = t38.
    IF t38 = abap_false.
      t37 = xsdbool( xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ).
    ENDIF.
    IF t37 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t54) = me->reg.
    DATA t55 TYPE REF TO zcl_lnt_abap_object.
    DATA t57 TYPE REF TO object.
    t57 = t32.
    t55 ?= t57.
    t49 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t54 i_object_19cd = t55 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ).
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t58.
    IF xsdbool( t2->message_text = abap_true ) = abap_true.
      DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t67 TYPE REF TO zif_lnt_msag_references.
      t67 = me->reg->get_msag_references( ).
      DATA t69 TYPE string.
      DATA t70 TYPE REF TO zcl_lnt_abstract_file.
      t70 = t19.
      t69 = t70->filename.
      t65 = t67->list_by_filename( i_filename = t69 ).
      DATA t76 TYPE REF TO zcl_lnt_shape_08db6d95.
      DATA t77 TYPE REF TO object.
      DATA(t78) = VALUE i( ).
      DO.
        t65->load( ).
        IF t78 >= lines( t65->items ).
          EXIT.
        ENDIF.
        CLEAR t77.
        READ TABLE t65->items INDEX t78 + 1 INTO t77.
        t78 = t78 + 1.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        CLEAR t76.
        IF t77 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t79 ?= t77.
          DATA t80 TYPE REF TO object.
          t80 = t79->as_ref( ).
          t76 ?= t80.
        ELSE.
          t76 ?= t77.
        ENDIF.
        DATA t81 TYPE REF TO zcl_lnt_ob_message_class.
        DATA t82 TYPE REF TO zcl_lnt_ob_message_class.
        CLEAR t82.
        DATA(t84) = me->reg.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA(t88) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t88->has = abap_true.
        t88->value = |MSAG|.
        t85 = t88.
        DATA t92 TYPE string.
        t92 = t76->message_class.
        DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t94->has = abap_true.
        t94->value = t92.
        DATA t96 TYPE REF TO object.
        t96 = t84->get_object( i_type_9913 = t85 i_name = t94 ).
        t82 ?= t96.
        t81 = t82.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF xsdbool( t81 IS INITIAL ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        DATA t106 TYPE REF TO zcl_lnt_ty_message.
        DATA t108 TYPE REF TO zcl_lnt_ob_message_class.
        t108 = t81.
        DATA t110 TYPE string.
        t110 = t76->number.
        t106 = t108->get_by_number( i_num = t110 ).
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        IF xsdbool( t106 IS INITIAL ) = abap_true.
          CLEAR t112.
        ELSE.
          DATA t120 TYPE string.
          t120 = t106->message_25cb->value.
          DATA(t123) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t123->has = abap_true.
          t123->value = t120.
          t112 = t123.
        ENDIF.
        t104 = t112.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t125 = t104.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        DATA(t129) = VALUE abap_bool( ).
        IF t125 IS INITIAL.
          t129 = abap_true.
        ELSEIF t125->has = abap_false.
          t129 = abap_true.
        ENDIF.
        IF t129 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t132 TYPE REF TO zcl_lnt_shape_048f4e75.
        CLEAR t132.
        DATA t133 TYPE REF TO zcl_lnt_range.
        CLEAR t133.
        DATA t137 TYPE REF TO zcl_lnt_abstract_token.
        t137 = t76->token.
        t133 = zcl_lnt_lsp_utils=>token_to_range( i_token = t137 ).
        DATA t140 TYPE REF TO zcl_lnt_command.
        CLEAR t140.
        DATA t149 TYPE REF TO zcl_lnt_command.
        DATA t150 TYPE string.
        t150 = t104->value.
        DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t154.
        DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t156.
        t149 = NEW zcl_lnt_command( i_title = t150 i_tooltip = t154 i_command = || i_arguments = t156 ).
        CREATE OBJECT t149->zlnt_view_ownkeys_b0e8086400eb.
        t149->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t158 ).
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t149->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `command` p1 = t159 ).
        ENDIF.
        CREATE OBJECT t149->zlnt_json_ownkeys_70e5fd461788.
        t149->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t161 ).
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = |command| p1 = t163 ).
        ENDIF.
        t140 = t149.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        t132 = NEW zcl_lnt_shape_048f4e75( i_range = t133 i_command = t140 i_data_dc02 = t165 ).
        CREATE OBJECT t132->zlnt_view_ownkeys_b0e8086400eb.
        t132->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t167 ).
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        IF t132->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `command` p1 = t168 ).
        ENDIF.
        CREATE OBJECT t132->zlnt_json_ownkeys_70e5fd461788.
        t132->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t170 ).
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t172.
        IF t132->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = |command| p1 = t172 ).
        ENDIF.
        t58->load( ).
        APPEND t132 TO t58->items.
        t58->save( ).
      ENDDO.
    ENDIF.
    IF xsdbool( t2->dynamic_exceptions = abap_true ) = abap_true.
      DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t178 = me->find_method_references( i_node = t49 i_file = t19 ).
      DATA t182 TYPE REF TO zcl_lnt_ireference.
      DATA t183 TYPE REF TO object.
      DATA(t184) = VALUE i( ).
      DO.
        t178->load( ).
        IF t184 >= lines( t178->items ).
          EXIT.
        ENDIF.
        CLEAR t183.
        READ TABLE t178->items INDEX t184 + 1 INTO t183.
        t184 = t184 + 1.
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t185.
        CLEAR t182.
        IF t183 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t185 ?= t183.
          DATA t186 TYPE REF TO object.
          t186 = t185->as_ref( ).
          t182 ?= t186.
        ELSE.
          t182 ?= t183.
        ENDIF.
        DATA t189 TYPE REF TO zcl_lnt_fi_identifier.
        t189 = t182->resolved.
        IF xsdbool( xsdbool( t189 IS BOUND AND t189 IS INSTANCE OF zcl_lnt_method_definition ) = abap_false ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t191 TYPE string.
        t191 = ||.
        DATA t193 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t195 TYPE REF TO zcl_lnt_method_definition.
        DATA t196 TYPE REF TO zcl_lnt_fi_identifier.
        t196 = t182->resolved.
        t195 ?= t196.
        t193 = t195->raising.
        DATA(t200) = VALUE string( ).
        t193->dense( ).
        DATA(t201) = VALUE i( ).
        DO.
          t193->load( ).
          IF t201 >= lines( t193->items ).
            EXIT.
          ENDIF.
          CLEAR t200.
          READ TABLE t193->items INDEX t201 + 1 INTO t200.
          IF t193->has( t201 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t201 = t201 + 1.
          IF me->is_dynamic_exception( i_name = t200 i_top = t49 ) = abap_true.
            IF xsdbool( t191 = || ) = abap_true.
              t191 = |Dynamic Exceptions: |.
            ELSE.
              DATA(t210) = t191.
              DATA(t212) = strlen( t210 ).
              t191 = |{ t210 }{ | & | }|.
            ENDIF.
            DATA(t214) = t191.
            DATA t215 TYPE string.
            DATA(t217) = strlen( t200 ).
            t215 = t200.
            IF t215 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t215 TO UPPER CASE.
            ELSE.
              t215 = zlnt_runtime_uppe_91169605024d=>full( t215 ).
            ENDIF.
            DATA(t218) = strlen( t214 ).
            t191 = |{ t214 }{ t215 }|.
          ENDIF.
        ENDDO.
        IF xsdbool( t191 <> || ) = abap_true.
          DATA t223 TYPE REF TO zcl_lnt_shape_048f4e75.
          CLEAR t223.
          DATA t224 TYPE REF TO zcl_lnt_range.
          CLEAR t224.
          DATA t232 TYPE REF TO zcl_lnt_abstract_token.
          t232 = t182->position_7b94->token.
          t224 = zcl_lnt_lsp_utils=>token_to_range( i_token = t232 ).
          DATA t235 TYPE REF TO zcl_lnt_command.
          CLEAR t235.
          DATA t243 TYPE REF TO zcl_lnt_command.
          DATA t244 TYPE string.
          t244 = t191.
          DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t248.
          DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t250.
          t243 = NEW zcl_lnt_command( i_title = t244 i_tooltip = t248 i_command = || i_arguments = t250 ).
          CREATE OBJECT t243->zlnt_view_ownkeys_b0e8086400eb.
          t243->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t252.
          t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t252 ).
          DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t253.
          IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `command` p1 = t253 ).
          ENDIF.
          CREATE OBJECT t243->zlnt_json_ownkeys_70e5fd461788.
          t243->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t255.
          t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t255 ).
          DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t257.
          IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = |command| p1 = t257 ).
          ENDIF.
          t235 = t243.
          DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t259.
          t223 = NEW zcl_lnt_shape_048f4e75( i_range = t224 i_command = t235 i_data_dc02 = t259 ).
          CREATE OBJECT t223->zlnt_view_ownkeys_b0e8086400eb.
          t223->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t261.
          t223->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t261 ).
          DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t262.
          IF t223->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t223->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `command` p1 = t262 ).
          ENDIF.
          CREATE OBJECT t223->zlnt_json_ownkeys_70e5fd461788.
          t223->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t264.
          t223->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t264 ).
          DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t266.
          IF t223->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t223->zlnt_json_ownkeys_70e5fd461788->put( p0 = |command| p1 = t266 ).
          ENDIF.
          t58->load( ).
          APPEND t223 TO t58->items.
          t58->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    result = t58.

  ENDMETHOD.

  METHOD is_dynamic_exception.
    DATA(t2) = i_top.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = i_name.
    DATA(t7) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t7->has = abap_true.
    t7->value = t6.
    t3 = t7.
    DO.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t10 = t3.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      DATA(t15) = VALUE abap_bool( ).
      IF t10 IS INITIAL.
        t15 = abap_true.
      ELSEIF t10->has = abap_false.
        t15 = abap_true.
      ENDIF.
      IF xsdbool( t15 = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t18 TYPE string.
      DATA t19 TYPE string.
      t19 = t3->value.
      DATA(t21) = strlen( t19 ).
      t18 = t19.
      IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t18 TO UPPER CASE.
      ELSE.
        t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
      ENDIF.
      IF xsdbool( t18 = |CX_DYNAMIC_CHECK| ) = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      DATA t25 TYPE REF TO zif_lnt_class_definition.
      DATA t28 TYPE string.
      t28 = t3->value.
      t25 = t2->find_class_definition( i_name = t28 ).
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      IF xsdbool( t25 IS INITIAL ) = abap_true.
        CLEAR t30.
      ELSE.
        t30 = t25->get_super_class( ).
      ENDIF.
      t3 = t30.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD find_method_references.
    DATA(t1) = i_node.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t6 TYPE string.
    t6 = t1->get_identifier( )->filename.
    DATA t10 TYPE REF TO zcl_lnt_abstract_file.
    t10 = t2.
    IF xsdbool( t6 = t10->filename ) = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t14 = t1->get_data( )->references.
      DATA t17 TYPE REF TO zcl_lnt_ireference.
      DATA t18 TYPE REF TO object.
      DATA(t19) = VALUE i( ).
      DO.
        t14->load( ).
        IF t19 >= lines( t14->items ).
          EXIT.
        ENDIF.
        CLEAR t18.
        READ TABLE t14->items INDEX t19 + 1 INTO t18.
        t19 = t19 + 1.
        DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t20.
        CLEAR t17.
        IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t20 ?= t18.
          DATA t21 TYPE REF TO object.
          t21 = t20->as_ref( ).
          t17 ?= t21.
        ELSE.
          t17 ?= t18.
        ENDIF.
        IF xsdbool( t17->reference_type = |Method| ) = abap_true.
          t3->load( ).
          APPEND t17 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t28 = t1->get_children( ).
    DATA t30 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t31 TYPE REF TO object.
    DATA(t32) = VALUE i( ).
    DO.
      t28->load( ).
      IF t32 >= lines( t28->items ).
        EXIT.
      ENDIF.
      CLEAR t31.
      READ TABLE t28->items INDEX t32 + 1 INTO t31.
      t32 = t32 + 1.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t30.
      IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t31.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t30 ?= t34.
      ELSE.
        t30 ?= t31.
      ENDIF.
      DATA(t35) = VALUE i( ).
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t36 = me->find_method_references( i_node = t30 i_file = t2 ).
      DATA t39 TYPE REF TO zcl_lnt_ireference.
      CLEAR t39.
      DATA t40 TYPE REF TO object.
      CLEAR t40.
      DATA(t41) = VALUE i( ).
      DO.
        t36->load( ).
        IF t41 >= lines( t36->items ).
          EXIT.
        ENDIF.
        CLEAR t40.
        READ TABLE t36->items INDEX t41 + 1 INTO t40.
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
        t3->load( ).
        APPEND t39 TO t3->items.
        t3->save( ).
      ENDDO.
      t3->load( ).
      t35 = lines( t3->items ).
    ENDDO.
    result = t3.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1164_bb4f7a7c73db.
  ENDMETHOD.
ENDCLASS.
