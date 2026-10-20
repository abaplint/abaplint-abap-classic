* TS: src/objects/rename/rename_global_class.ts:11:1 RenameGlobalClass
CLASS zcl_lnt_rename_global_class DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_object_renamer.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS b_e_i_s_o_r_r_g_cl_ts_rn_gl_cl IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO object.
    METHODS build_edits IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_36bc2e57.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rename_global_class IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD b_e_i_s_o_r_r_g_cl_ts_rn_gl_cl.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_class ) = abap_false ) = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = |not a class|.
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
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    DATA t18 TYPE REF TO zcl_lnt_class.
    DATA t20 TYPE REF TO object.
    t20 = t1.
    t18 ?= t20.
    t16 = t18->get_main_abap_file( ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t16 IS INITIAL ) = abap_true.
      DATA t28 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t29 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t32) = VALUE string( ).
      DATA(t33) = VALUE string( ).
      DATA(t34) = VALUE string( ).
      DATA(t35) = VALUE string( ).
      DATA(t36) = |Main file not found, |.
      DATA t38 TYPE REF TO zcl_lnt_class.
      DATA t39 TYPE REF TO zcl_lnt_class.
      DATA t41 TYPE REF TO object.
      t41 = t1.
      t39 ?= t41.
      t38 = t39.
      DATA(t43) = strlen( t36 ).
      t35 = |{ t36 }{ |CLAS| }|.
      DATA(t45) = strlen( t35 ).
      t34 = |{ t35 }{ | | }|.
      DATA(t46) = VALUE string( ).
      DATA t47 TYPE REF TO zcl_lnt_abstract_object.
      DATA t48 TYPE REF TO zcl_lnt_class.
      DATA t50 TYPE REF TO object.
      t50 = t1.
      t48 ?= t50.
      t47 = t48.
      t46 = t47->name.
      DATA(t53) = strlen( t34 ).
      t33 = |{ t34 }{ t46 }|.
      DATA(t55) = strlen( t33 ).
      t32 = |{ t33 }{ || }|.
      DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t56->has = abap_true.
      t56->value = t32.
      t29 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t56 ).
      t28 = NEW #( ).
      t28->payload = t29.
      CLEAR t28->source_value.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t59 TYPE REF TO object.
      t59 = t29.
      TRY.
          t28->source_value ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t28->source_value IS NOT BOUND.
        TRY.
            t58 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t28->source_value = t58->source( ).
        ENDIF.
        IF t28->source_value IS NOT BOUND.
          CREATE OBJECT t28->source_value.
          t28->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t28->source_value->oval = t29.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t28.
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t60.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t64 = t16->statements.
    DATA t70 TYPE REF TO zcl_lnt_statement_node.
    DATA t71 TYPE REF TO object.
    DATA(t72) = VALUE i( ).
    DO.
      t64->load( ).
      IF t72 >= lines( t64->items ).
        EXIT.
      ENDIF.
      CLEAR t71.
      READ TABLE t64->items INDEX t72 + 1 INTO t71.
      t72 = t72 + 1.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      CLEAR t70.
      IF t71 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t73 ?= t71.
        DATA t74 TYPE REF TO object.
        t74 = t73->as_ref( ).
        t70 ?= t74.
      ELSE.
        t70 ?= t71.
      ENDIF.
      DATA t76 TYPE REF TO zif_lnt_statement.
      t76 = t70->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_st_class_definition ) = abap_true.
        DATA t78 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t78.
        DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
        t78 = t70->find_first_expression( i_type_9913 = t81 ).
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        CLEAR t85.
        IF xsdbool( t78 IS INITIAL ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t90 TYPE REF TO zcl_lnt_text_edit.
        CLEAR t90.
        DATA t92 TYPE REF TO zcl_lnt_range.
        CLEAR t92.
        t92 = zcl_lnt_lsp_utils=>token_to_range( i_token = t78->get_first_token( ) ).
        DATA(t97) = VALUE string( ).
        DATA(t99) = strlen( t3 ).
        t97 = t3.
        TRANSLATE t97 TO LOWER CASE.
        DATA t100 TYPE REF TO zcl_lnt_text_edit.
        t100 = NEW zcl_lnt_text_edit( i_range = t92 i_new_text = t97 ).
        CREATE OBJECT t100->zlnt_view_ownkeys_b0e8086400eb.
        t100->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t105 ).
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t106 ).
        ENDIF.
        CREATE OBJECT t100->zlnt_json_ownkeys_70e5fd461788.
        t100->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t108 ).
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t110 ).
        ENDIF.
        t90 = t100.
        t62->load( ).
        APPEND t90 TO t62->items.
        t62->save( ).
      ELSE.
        DATA t112 TYPE REF TO zif_lnt_statement.
        t112 = t70->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( t112 IS BOUND AND t112 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ) = abap_true.
          DATA t114 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t114.
          DATA(t117) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
          t114 = t70->find_first_expression( i_type_9913 = t117 ).
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          CLEAR t121.
          IF xsdbool( t114 IS INITIAL ) = abap_true.
            CONTINUE.
          ENDIF.
          DATA t126 TYPE REF TO zcl_lnt_text_edit.
          CLEAR t126.
          DATA t128 TYPE REF TO zcl_lnt_range.
          CLEAR t128.
          t128 = zcl_lnt_lsp_utils=>token_to_range( i_token = t114->get_first_token( ) ).
          DATA(t133) = VALUE string( ).
          DATA(t135) = strlen( t3 ).
          t133 = t3.
          TRANSLATE t133 TO LOWER CASE.
          DATA t136 TYPE REF TO zcl_lnt_text_edit.
          t136 = NEW zcl_lnt_text_edit( i_range = t128 i_new_text = t133 ).
          CREATE OBJECT t136->zlnt_view_ownkeys_b0e8086400eb.
          t136->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t141 ).
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t142 ).
          ENDIF.
          CREATE OBJECT t136->zlnt_json_ownkeys_70e5fd461788.
          t136->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t144 ).
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t146 ).
          ENDIF.
          t126 = t136.
          t62->load( ).
          APPEND t126 TO t62->items.
          t62->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t147) = t60.
    DATA t148 TYPE REF TO zcl_lnt_text_document_edit.
    DATA t150 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
    DATA(t151) = VALUE string( ).
    DATA t153 TYPE REF TO zcl_lnt_abstract_file.
    t153 = t16.
    t151 = t153->filename.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t159.
    t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t159->nval = 1.
    t150 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t151 i_version = t159 ).
    CREATE OBJECT t150->zlnt_view_ownkeys_b0e8086400eb.
    t150->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t161 ).
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t162 ).
    ENDIF.
    CREATE OBJECT t150->zlnt_json_ownkeys_70e5fd461788.
    t150->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t164 ).
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = |version| p1 = t166 ).
    ENDIF.
    DATA t169 TYPE REF TO zcl_lnt_text_document_edit.
    t169 = NEW zcl_lnt_text_document_edit( i_text_document = t150 i_edits = t62 ).
    CREATE OBJECT t169->zlnt_view_ownkeys_b0e8086400eb.
    t169->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t174 ).
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t169->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t175 ).
    ENDIF.
    CREATE OBJECT t169->zlnt_json_ownkeys_70e5fd461788.
    t169->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textDocument| p1 = t177 ).
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t169->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edits| p1 = t179 ).
    ENDIF.
    t148 = t169.
    t147->load( ).
    APPEND t148 TO t147->items.
    t147->save( ).
    DATA t180 TYPE REF TO zcl_lnt_renamer_helper.
    DATA(t182) = me->reg.
    t180 = NEW zcl_lnt_renamer_helper( i_reg_f149 = t182 ).
    DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t188 TYPE REF TO zcl_lnt_class.
    DATA t190 TYPE REF TO object.
    t190 = t1.
    t188 ?= t190.
    DATA t194 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t186 = t180->build_xml_file_edits( i_object_19cd = t188 i_xml_tag = |CLSNAME| i_old_name = t2 i_new_name = t3 i_use_lower_case = t194 ).
    t185 ?= t186.
    t60 = t60->concat( p0 = t185 ).
    DATA t199 TYPE REF TO zcl_lnt_class.
    DATA t201 TYPE REF TO object.
    t201 = t1.
    t199 ?= t201.
    t60 = t60->concat( p0 = t180->rename_files( i_obj_1ed0 = t199 i_old_name = t2 i_name = t3 ) ).
    DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t210 TYPE REF TO zcl_lnt_class.
    DATA t211 TYPE REF TO zcl_lnt_class.
    DATA t213 TYPE REF TO object.
    t213 = t1.
    t211 ?= t213.
    t210 = t211.
    DATA t215 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t217 TYPE REF TO zif_lnt_abap_file_information.
    DATA t219 TYPE REF TO zcl_lnt_abap_file.
    t219 = t210->get_main_abap_file( ).
    DATA t222 TYPE REF TO zif_lnt_abap_file_information.
    IF xsdbool( t219 IS INITIAL ) = abap_true.
    ELSE.
      t222 = t219->info.
    ENDIF.
    t217 = t222.
    DATA t232 TYPE REF TO zcl_lnt_info_class_definition.
    IF xsdbool( t217 IS INITIAL ) = abap_true.
    ELSE.
      DATA t237 TYPE REF TO zif_lnt_abap_file_information.
      t237 = t217.
      DATA(t239) = VALUE string( ).
      DATA t240 TYPE REF TO zcl_lnt_abstract_object.
      t240 = t210.
      t239 = t240->name.
      t232 = t237->get_class_definition_by_name( i_name = t239 ).
    ENDIF.
    t215 = t232.
    DATA t244 TYPE REF TO zcl_lnt_fi_identifier.
    IF xsdbool( t215 IS INITIAL ) = abap_true.
    ELSE.
      t244 = t215->identifier.
    ENDIF.
    t207 = t180->rename_references( i_id = t244 i_old_name = t2 i_new_name = t3 ).
    t206 ?= t207.
    t60 = t60->concat( p0 = t206 ).
    DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t258 TYPE REF TO zcl_lnt_class.
    DATA t260 TYPE REF TO object.
    t260 = t1.
    t258 ?= t260.
    t256 = t180->rename_ddictabl_references( i_obj_1ed0 = t258 i_old_name = t2 i_new_name = t3 ).
    t255 ?= t256.
    t60 = t60->concat( p0 = t255 ).
    DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t266 = t180->rnm_icf_srvc_hndlr_rfrncs( i_old_name = t2 i_new_name = t3 ).
    t265 ?= t266.
    t60 = t60->concat( p0 = t265 ).
    DATA t270 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t276 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    DATA t278 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    t270 = NEW zcl_lnt_shape_36bc2e57( i_changes = t276 i_document_changes = t60 i_change_annotations = t278 ).
    CREATE OBJECT t270->zlnt_view_ownkeys_b0e8086400eb.
    t270->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t270->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t280 ).
    CREATE OBJECT t270->zlnt_json_ownkeys_70e5fd461788.
    t270->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t270->zlnt_json_ownkeys_70e5fd461788->put( p0 = |documentChanges| p1 = t282 ).
    result = t270.

  ENDMETHOD.

  METHOD build_edits.
    DATA t4 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t5 TYPE REF TO object.
    DATA(t6) = i_obj_1ed0.
    DATA(t7) = i_old_name.
    DATA(t8) = i_new_name.
    t5 = me->b_e_i_s_o_r_r_g_cl_ts_rn_gl_cl( i_obj_1ed0 = t6 i_old_name = t7 i_new_name = t8 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1330_07ce41b049c9.
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~build_edits.
    result = me->build_edits( i_obj_1ed0 = i_obj_1ed0 i_old_name = i_old_name i_new_name = i_new_name ).
  ENDMETHOD.
ENDCLASS.
