* TS: src/objects/rename/rename_message_class.ts:8:1 RenameMessageClass
CLASS zcl_lnt_rename_message_class DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_object_renamer.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS b_e_i_s_o_r_r_m_cl_ts_rn_ms_cl IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO object.
    METHODS build_edits IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_36bc2e57.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rename_message_class IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD b_e_i_s_o_r_r_m_cl_ts_rn_ms_cl.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_message_class ) = abap_false ) = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = |RenameMessageClass, not a message class|.
      t8 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t12 ).
      t7 = NEW #( ).
      t7->payload = t8.
      CLEAR t7->source_value.
      DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t15 TYPE REF TO object.
      t15 = t8.
      TRY.
          t7->source_value ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7->source_value IS NOT BOUND.
        TRY.
            t14 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t14 IS BOUND.
          t7->source_value = t14->source( ).
        ENDIF.
        IF t7->source_value IS NOT BOUND.
          CREATE OBJECT t7->source_value.
          t7->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->source_value->oval = t8.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    DATA t18 TYPE REF TO zcl_lnt_renamer_helper.
    DATA(t20) = me->reg.
    t18 = NEW zcl_lnt_renamer_helper( i_reg_f149 = t20 ).
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zcl_lnt_ob_message_class.
    DATA t28 TYPE REF TO object.
    t28 = t1.
    t26 ?= t28.
    DATA t32 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t24 = t18->build_xml_file_edits( i_object_19cd = t26 i_xml_tag = |ARBGB| i_old_name = t2 i_new_name = t3 i_use_lower_case = t32 ).
    t23 ?= t24.
    t16 = t16->concat( p0 = t23 ).
    DATA t37 TYPE REF TO zcl_lnt_ob_message_class.
    DATA t39 TYPE REF TO object.
    t39 = t1.
    t37 ?= t39.
    t16 = t16->concat( p0 = t18->rename_files( i_obj_1ed0 = t37 i_old_name = t2 i_name = t3 ) ).
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zcl_lnt_ob_message_class.
    DATA t44 TYPE REF TO zcl_lnt_ob_message_class.
    DATA t46 TYPE REF TO object.
    t46 = t1.
    t44 ?= t46.
    t43 = t44.
    t43->parse_xml( ).
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zcl_lnt_parsed_message_class.
    t51 = t43->xml.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t51 IS INITIAL ) = abap_true.
    ELSE.
      t54 = t51->parsed_messages.
    ENDIF.
    t49 = t54.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t49 IS BOUND ) = abap_true.
      t61 = t49.
    ELSE.
      CREATE OBJECT t61.
    ENDIF.
    t42 = t61.
    DATA t67 TYPE REF TO zcl_lnt_ty_message.
    DATA t68 TYPE REF TO object.
    DATA(t69) = VALUE i( ).
    DO.
      t42->load( ).
      IF t69 >= lines( t42->items ).
        EXIT.
      ENDIF.
      CLEAR t68.
      READ TABLE t42->items INDEX t69 + 1 INTO t68.
      t69 = t69 + 1.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      CLEAR t67.
      IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t70 ?= t68.
        DATA t71 TYPE REF TO object.
        t71 = t70->as_ref( ).
        t67 ?= t71.
      ELSE.
        t67 ?= t68.
      ENDIF.
      DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t72.
      DATA t73 TYPE REF TO zif_lnt_msag_references.
      t73 = me->reg->get_msag_references( ).
      DATA(t75) = VALUE string( ).
      DATA t76 TYPE REF TO zcl_lnt_abstract_object.
      DATA t77 TYPE REF TO zcl_lnt_ob_message_class.
      CLEAR t77.
      DATA t79 TYPE REF TO object.
      t79 = t1.
      t77 ?= t79.
      t76 = t77.
      t75 = t76->name.
      DATA(t85) = VALUE string( ).
      t85 = t67->number->value.
      t72 = t73->list_by_message( i_message_class = t75 i_number = t85 ).
      DATA t88 TYPE REF TO zcl_lnt_ifilename_and_token.
      CLEAR t88.
      DATA t89 TYPE REF TO object.
      CLEAR t89.
      DATA(t90) = VALUE i( ).
      DO.
        t72->load( ).
        IF t90 >= lines( t72->items ).
          EXIT.
        ENDIF.
        CLEAR t89.
        READ TABLE t72->items INDEX t90 + 1 INTO t89.
        t90 = t90 + 1.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        CLEAR t88.
        IF t89 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t91 ?= t89.
          DATA t92 TYPE REF TO object.
          t92 = t91->as_ref( ).
          t88 ?= t92.
        ELSE.
          t88 ?= t89.
        ENDIF.
        DATA t93 TYPE REF TO zif_lnt_file.
        DATA(t96) = VALUE string( ).
        t96 = t88->filename.
        t93 = me->reg->get_file_by_name( i_filename = t96 ).
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        CLEAR t101.
        IF xsdbool( t93 IS INITIAL ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t105 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t105 = t93->get_raw_rows( ).
        DATA(t109) = VALUE f( ).
        DATA(t111) = VALUE f( ).
        t111 = t88->token->start->row.
        DATA(t121) = CONV f( 1 ).
        t109 = t111 - t121.
        DATA(t122) = VALUE i( ).
        DATA(t123) = VALUE i( ).
        DATA(t124) = VALUE string( ).
        DATA(t126) = VALUE i( ).
        IF t109 > range_i32_upper.
          t126 = range_i32_upper.
        ELSEIF t109 < range_i32_lower.
          t126 = range_i32_lower.
        ELSE.
          t126 = trunc( t109 ).
        ENDIF.
        t126 = t126 + 1.
        IF t105->has( t126 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t105->load( ).
        READ TABLE t105->items INDEX t126 INTO t124.
        DATA(t128) = VALUE string( ).
        DATA(t130) = strlen( t2 ).
        t128 = t2.
        TRANSLATE t128 TO LOWER CASE.
        DATA(t131) = strlen( t124 ).
        IF t128 IS INITIAL.
          t123 = 0.
        ELSE.
          FIND t128 IN t124 MATCH OFFSET t123.
          IF sy-subrc <> 0.
            t123 = -1.
          ENDIF.
        ENDIF.
        t122 = t123.
        IF xsdbool( t122 >= 0 ) = abap_true.
          DATA(t137) = VALUE f( ).
          t137 = t109.
          DATA(t141) = VALUE f( ).
          t141 = t109.
          DATA(t144) = VALUE int8( ).
          DATA(t145) = VALUE int8( ).
          t145 = t122.
          DATA(t147) = VALUE int8( ).
          t147 = strlen( t2 ).
          t144 = t145 + t147.
          DATA t151 TYPE REF TO zcl_lnt_range.
          CLEAR t151.
          DATA t152 TYPE REF TO zcl_lnt_no_position.
          CLEAR t152.
          DATA t153 TYPE REF TO zcl_lnt_no_position.
          DATA(t155) = VALUE f( ).
          t155 = t122.
          DATA(t157) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t157->has = abap_true.
          t157->value = t155.
          t153 = NEW zcl_lnt_no_position( i_line = t137 i_character = t157 ).
          CREATE OBJECT t153->zlnt_view_ownkeys_b0e8086400eb.
          t153->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t158 ).
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t159 ).
          ENDIF.
          t152 = t153.
          DATA t161 TYPE REF TO zcl_lnt_no_position.
          CLEAR t161.
          DATA(t163) = VALUE f( ).
          t163 = t144.
          DATA(t165) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t165->has = abap_true.
          t165->value = t163.
          t161 = NEW zcl_lnt_no_position( i_line = t141 i_character = t165 ).
          CREATE OBJECT t161->zlnt_view_ownkeys_b0e8086400eb.
          t161->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t166.
          t161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t166 ).
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          IF t161->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t167 ).
          ENDIF.
          t151 = NEW zcl_lnt_range( i_start = t152 i_end = t161 ).
          CREATE OBJECT t151->zlnt_view_ownkeys_b0e8086400eb.
          t151->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t168.
          t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t168 ).
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t169 ).
          ENDIF.
          CREATE OBJECT t151->zlnt_json_ownkeys_70e5fd461788.
          t151->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t171.
          t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t171 ).
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t173 ).
          ENDIF.
          DATA t175 TYPE REF TO zcl_lnt_text_document_edit.
          CLEAR t175.
          DATA t177 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
          CLEAR t177.
          DATA(t178) = VALUE string( ).
          t178 = t93->get_filename( ).
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          CLEAR t183.
          CREATE OBJECT t183.
          t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
          t183->nval = 1.
          t177 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t178 i_version = t183 ).
          CREATE OBJECT t177->zlnt_view_ownkeys_b0e8086400eb.
          t177->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t185.
          t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t185 ).
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t186.
          IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t186 ).
          ENDIF.
          CREATE OBJECT t177->zlnt_json_ownkeys_70e5fd461788.
          t177->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t188.
          t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t188 ).
          DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t190.
          IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = |version| p1 = t190 ).
          ENDIF.
          DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t193.
          CREATE OBJECT t193.
          DATA t196 TYPE REF TO zcl_lnt_text_edit.
          CLEAR t196.
          DATA(t200) = VALUE string( ).
          DATA(t202) = strlen( t3 ).
          t200 = t3.
          TRANSLATE t200 TO LOWER CASE.
          DATA t203 TYPE REF TO zcl_lnt_text_edit.
          t203 = NEW zcl_lnt_text_edit( i_range = t151 i_new_text = t200 ).
          CREATE OBJECT t203->zlnt_view_ownkeys_b0e8086400eb.
          t203->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t208.
          t203->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t208 ).
          DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t209.
          IF t203->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t203->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t209 ).
          ENDIF.
          CREATE OBJECT t203->zlnt_json_ownkeys_70e5fd461788.
          t203->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t211.
          t203->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t211 ).
          DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t213.
          IF t203->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t203->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t213 ).
          ENDIF.
          t196 = t203.
          t193->load( ).
          APPEND t196 TO t193->items.
          t193->save( ).
          DATA t215 TYPE REF TO zcl_lnt_text_document_edit.
          t215 = NEW zcl_lnt_text_document_edit( i_text_document = t177 i_edits = t193 ).
          CREATE OBJECT t215->zlnt_view_ownkeys_b0e8086400eb.
          t215->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t220.
          t215->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t220 ).
          DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t221.
          IF t215->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t215->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t221 ).
          ENDIF.
          CREATE OBJECT t215->zlnt_json_ownkeys_70e5fd461788.
          t215->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textDocument| p1 = t223 ).
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edits| p1 = t225 ).
          ENDIF.
          t175 = t215.
          t16->load( ).
          APPEND t175 TO t16->items.
          t16->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t226 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t232 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    DATA t234 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    t226 = NEW zcl_lnt_shape_36bc2e57( i_changes = t232 i_document_changes = t16 i_change_annotations = t234 ).
    CREATE OBJECT t226->zlnt_view_ownkeys_b0e8086400eb.
    t226->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t236 ).
    CREATE OBJECT t226->zlnt_json_ownkeys_70e5fd461788.
    t226->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |documentChanges| p1 = t238 ).
    result = t226.

  ENDMETHOD.

  METHOD build_edits.
    DATA t4 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t5 TYPE REF TO object.
    DATA(t6) = i_obj_1ed0.
    DATA(t7) = i_old_name.
    DATA(t8) = i_new_name.
    t5 = me->b_e_i_s_o_r_r_m_cl_ts_rn_ms_cl( i_obj_1ed0 = t6 i_old_name = t7 i_new_name = t8 ).
    t4 ?= t5.
    result = t4.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1333_6aae5652fb85.
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~build_edits.
    result = me->build_edits( i_obj_1ed0 = i_obj_1ed0 i_old_name = i_old_name i_new_name = i_new_name ).
  ENDMETHOD.
ENDCLASS.
