* TS: src/objects/rename/rename_global_interface.ts:11:1 RenameGlobalInterface
CLASS zcl_lnt_rnm_glbl_intrfc DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_object_renamer.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS b_e_i_s_o_r_r_g_in_ts_rn_gl_in IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO object.
    METHODS build_edits IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_36bc2e57.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rnm_glbl_intrfc IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD b_e_i_s_o_r_r_g_in_ts_rn_gl_in.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_interface ) = abap_false ) = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = |not an interface|.
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
    DATA t18 TYPE REF TO zcl_lnt_ob_interface.
    t18 ?= t1.
    t16 = t18->get_main_abap_file( ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t16 IS INITIAL ) = abap_true.
      DATA t28 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t29 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t33->has = abap_true.
      t33->value = |Main file not found|.
      t29 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t33 ).
      t28 = NEW #( ).
      t28->payload = t29.
      CLEAR t28->source_value.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t36 TYPE REF TO object.
      t36 = t29.
      TRY.
          t28->source_value ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t28->source_value IS NOT BOUND.
        TRY.
            t35 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t28->source_value = t35->source( ).
        ENDIF.
        IF t28->source_value IS NOT BOUND.
          CREATE OBJECT t28->source_value.
          t28->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t28->source_value->oval = t29.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t28.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t39.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t41 = t16->statements.
    DATA t47 TYPE REF TO zcl_lnt_statement_node.
    DATA t48 TYPE REF TO object.
    DATA(t49) = VALUE i( ).
    DO.
      t41->load( ).
      IF t49 >= lines( t41->items ).
        EXIT.
      ENDIF.
      CLEAR t48.
      READ TABLE t41->items INDEX t49 + 1 INTO t48.
      t49 = t49 + 1.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      CLEAR t47.
      IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t50 ?= t48.
        DATA t51 TYPE REF TO object.
        t51 = t50->as_ref( ).
        t47 ?= t51.
      ELSE.
        t47 ?= t48.
      ENDIF.
      DATA t53 TYPE REF TO zif_lnt_statement.
      t53 = t47->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_st_interface ) = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t55.
        DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
        t55 = t47->find_first_expression( i_type_9913 = t58 ).
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        CLEAR t62.
        IF xsdbool( t55 IS INITIAL ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t67 TYPE REF TO zcl_lnt_text_edit.
        CLEAR t67.
        DATA t69 TYPE REF TO zcl_lnt_range.
        CLEAR t69.
        t69 = zcl_lnt_lsp_utils=>token_to_range( i_token = t55->get_first_token( ) ).
        DATA(t74) = VALUE string( ).
        DATA(t76) = strlen( t3 ).
        t74 = t3.
        TRANSLATE t74 TO LOWER CASE.
        DATA t77 TYPE REF TO zcl_lnt_text_edit.
        t77 = NEW zcl_lnt_text_edit( i_range = t69 i_new_text = t74 ).
        CREATE OBJECT t77->zlnt_view_ownkeys_b0e8086400eb.
        t77->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t82 ).
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t83 ).
        ENDIF.
        CREATE OBJECT t77->zlnt_json_ownkeys_70e5fd461788.
        t77->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t85 ).
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t87 ).
        ENDIF.
        t67 = t77.
        t39->load( ).
        APPEND t67 TO t39->items.
        t39->save( ).
      ENDIF.
    ENDDO.
    DATA(t88) = t37.
    DATA t89 TYPE REF TO zcl_lnt_text_document_edit.
    DATA t91 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
    DATA(t92) = VALUE string( ).
    DATA t94 TYPE REF TO zcl_lnt_abstract_file.
    t94 = t16.
    t92 = t94->filename.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t100.
    t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t100->nval = 1.
    t91 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t92 i_version = t100 ).
    CREATE OBJECT t91->zlnt_view_ownkeys_b0e8086400eb.
    t91->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t102 ).
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t103 ).
    ENDIF.
    CREATE OBJECT t91->zlnt_json_ownkeys_70e5fd461788.
    t91->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t105 ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = |version| p1 = t107 ).
    ENDIF.
    DATA t110 TYPE REF TO zcl_lnt_text_document_edit.
    t110 = NEW zcl_lnt_text_document_edit( i_text_document = t91 i_edits = t39 ).
    CREATE OBJECT t110->zlnt_view_ownkeys_b0e8086400eb.
    t110->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t115 ).
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t116 ).
    ENDIF.
    CREATE OBJECT t110->zlnt_json_ownkeys_70e5fd461788.
    t110->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textDocument| p1 = t118 ).
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edits| p1 = t120 ).
    ENDIF.
    t89 = t110.
    t88->load( ).
    APPEND t89 TO t88->items.
    t88->save( ).
    DATA t121 TYPE REF TO zcl_lnt_renamer_helper.
    DATA(t123) = me->reg.
    t121 = NEW zcl_lnt_renamer_helper( i_reg_f149 = t123 ).
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t129 TYPE REF TO zcl_lnt_ob_interface.
    t129 ?= t1.
    DATA t135 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t127 = t121->build_xml_file_edits( i_object_19cd = t129 i_xml_tag = |CLSNAME| i_old_name = t2 i_new_name = t3 i_use_lower_case = t135 ).
    t126 ?= t127.
    t37 = t37->concat( p0 = t126 ).
    DATA t140 TYPE REF TO zcl_lnt_ob_interface.
    t140 ?= t1.
    t37 = t37->concat( p0 = t121->rename_files( i_obj_1ed0 = t140 i_old_name = t2 i_name = t3 ) ).
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t151 TYPE REF TO zcl_lnt_ob_interface.
    DATA t152 TYPE REF TO zcl_lnt_ob_interface.
    t152 ?= t1.
    t151 = t152.
    DATA t156 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA t158 TYPE REF TO zif_lnt_abap_file_information.
    DATA t160 TYPE REF TO zcl_lnt_abap_file.
    t160 = t151->get_main_abap_file( ).
    DATA t163 TYPE REF TO zif_lnt_abap_file_information.
    IF xsdbool( t160 IS INITIAL ) = abap_true.
    ELSE.
      t163 = t160->info.
    ENDIF.
    t158 = t163.
    DATA t173 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    IF xsdbool( t158 IS INITIAL ) = abap_true.
    ELSE.
      DATA t178 TYPE REF TO zif_lnt_abap_file_information.
      t178 = t158.
      DATA(t180) = VALUE string( ).
      DATA t181 TYPE REF TO zcl_lnt_abstract_object.
      t181 = t151.
      t180 = t181->name.
      t173 = t178->gt_intrfc_dfntn_by_nm( i_name = t180 ).
    ENDIF.
    t156 = t173.
    DATA t185 TYPE REF TO zcl_lnt_fi_identifier.
    IF xsdbool( t156 IS INITIAL ) = abap_true.
    ELSE.
      t185 = t156->identifier.
    ENDIF.
    t148 = t121->rename_references( i_id = t185 i_old_name = t2 i_new_name = t3 ).
    t147 ?= t148.
    t37 = t37->concat( p0 = t147 ).
    DATA t194 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t200 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    DATA t202 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    t194 = NEW zcl_lnt_shape_36bc2e57( i_changes = t200 i_document_changes = t37 i_change_annotations = t202 ).
    CREATE OBJECT t194->zlnt_view_ownkeys_b0e8086400eb.
    t194->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t204 ).
    CREATE OBJECT t194->zlnt_json_ownkeys_70e5fd461788.
    t194->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = |documentChanges| p1 = t206 ).
    result = t194.

  ENDMETHOD.

  METHOD build_edits.
    DATA t4 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t5 TYPE REF TO object.
    DATA(t6) = i_obj_1ed0.
    DATA(t7) = i_old_name.
    DATA(t8) = i_new_name.
    t5 = me->b_e_i_s_o_r_r_g_in_ts_rn_gl_in( i_obj_1ed0 = t6 i_old_name = t7 i_new_name = t8 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1331_9a390291c259.
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~build_edits.
    result = me->build_edits( i_obj_1ed0 = i_obj_1ed0 i_old_name = i_old_name i_new_name = i_new_name ).
  ENDMETHOD.
ENDCLASS.
