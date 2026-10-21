* TS: src/objects/rename/rename_icf_service.ts:8:1 RenameICFService
CLASS zcl_lnt_rename_icf_service DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_object_renamer.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS b_e_i_s_o_r_r_i_sr_ts_rn_ic_sr IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO object.
    METHODS build_edits IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_36bc2e57.
    METHODS fn_immediate_166522 IMPORTING i_new_name TYPE string i_old_name TYPE string RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rename_icf_service IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD b_e_i_s_o_r_r_i_sr_ts_rn_ic_sr.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_icfservice ) = abap_false ) = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = |RenameICFService, not a ICF Service|.
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
    DATA(t16) = VALUE string( ).
    t16 = me->fn_immediate_166522( i_new_name = t3 i_old_name = t2 ).
    DATA(t20) = VALUE string( ).
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t26) = VALUE string( ).
    t26 = t2.
    DATA t30 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t30 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[^ ]+| flags = ||.
    t24 = t30->match( t26 ).
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t24 IS INITIAL ) = abap_true.
    ELSE.
      t33 = t24->get( p0 = 0 ).
    ENDIF.
    t22 = t33.
    DATA(t41) = VALUE string( ).
    DATA(t42) = VALUE abap_bool( ).
    IF t22 IS INITIAL.
      t42 = abap_true.
    ELSEIF t22->has = abap_false.
      t42 = abap_true.
    ENDIF.
    IF t42 = abap_true.
      t41 = t2.
    ELSE.
      t41 = t22->value.
    ENDIF.
    t20 = t41.
    DATA(t47) = VALUE string( ).
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t53) = VALUE string( ).
    t53 = t3.
    DATA t57 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t57 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[^ ]+| flags = ||.
    t51 = t57->match( t53 ).
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t51 IS INITIAL ) = abap_true.
    ELSE.
      t60 = t51->get( p0 = 0 ).
    ENDIF.
    t49 = t60.
    DATA(t68) = VALUE string( ).
    DATA(t69) = VALUE abap_bool( ).
    IF t49 IS INITIAL.
      t69 = abap_true.
    ELSEIF t49->has = abap_false.
      t69 = abap_true.
    ENDIF.
    IF t69 = abap_true.
      t68 = t3.
    ELSE.
      t68 = t49->value.
    ENDIF.
    t47 = t68.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    DATA t76 TYPE REF TO zcl_lnt_renamer_helper.
    DATA(t78) = me->reg.
    t76 = NEW zcl_lnt_renamer_helper( i_reg_f149 = t78 ).
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t84 TYPE REF TO zcl_lnt_icfservice.
    t84 ?= t1.
    t82 = t76->build_url_file_edits( i_object_19cd = t84 i_old_name = t20 i_new_name = t47 ).
    t81 ?= t82.
    t74 = t74->concat( p0 = t81 ).
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t94 TYPE REF TO zcl_lnt_icfservice.
    t94 ?= t1.
    DATA t100 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t92 = t76->build_xml_file_edits( i_object_19cd = t94 i_xml_tag = |ICF_NAME| i_old_name = t20 i_new_name = t47 i_use_lower_case = t100 ).
    t91 ?= t92.
    t74 = t74->concat( p0 = t91 ).
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t106 TYPE REF TO zcl_lnt_icfservice.
    t106 ?= t1.
    DATA(t115) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t115->has = abap_true.
    t115->value = abap_true.
    t104 = t76->build_xml_file_edits( i_object_19cd = t106 i_xml_tag = |ORIG_NAME| i_old_name = t20 i_new_name = t47 i_use_lower_case = t115 ).
    t103 ?= t104.
    t74 = t74->concat( p0 = t103 ).
    DATA t121 TYPE REF TO zcl_lnt_icfservice.
    t121 ?= t1.
    t74 = t74->concat( p0 = t76->rename_files( i_obj_1ed0 = t121 i_old_name = t2 i_name = t16 ) ).
    DATA t126 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t132 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    DATA t134 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    t126 = NEW zcl_lnt_shape_36bc2e57( i_changes = t132 i_document_changes = t74 i_change_annotations = t134 ).
    CREATE OBJECT t126->zlnt_view_ownkeys_b0e8086400eb.
    t126->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t126->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t136 ).
    CREATE OBJECT t126->zlnt_json_ownkeys_70e5fd461788.
    t126->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t126->zlnt_json_ownkeys_70e5fd461788->put( p0 = |documentChanges| p1 = t138 ).
    result = t126.

  ENDMETHOD.

  METHOD build_edits.
    DATA t4 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t5 TYPE REF TO object.
    DATA(t6) = i_obj_1ed0.
    DATA(t7) = i_old_name.
    DATA(t8) = i_new_name.
    t5 = me->b_e_i_s_o_r_r_i_sr_ts_rn_ic_sr( i_obj_1ed0 = t6 i_old_name = t7 i_new_name = t8 ).
    t4 ?= t5.
    result = t4.

  ENDMETHOD.

  METHOD fn_immediate_166522.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_new_name.
    DATA(t2) = i_old_name.
    DATA t4 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t4 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = ` \{[0-9A-Fa-f]{16,32}\}` flags = ||.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t7 = t4->match( t2 ).
    IF xsdbool( t7 IS BOUND ) = abap_true.
      DATA(t16) = VALUE f( ).
      DATA(t17) = VALUE f( ).
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t19 = t7.
      IF t19->match_has_index <> abap_true.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t17 = t19->match_index.
      t16 = t17.
      DATA(t21) = VALUE string( ).
      DATA t23 TYPE string.
      t23 = t2.
      DATA(t25) = VALUE string( ).
      DATA(t27) = VALUE i( ).
      IF t16 > range_i32_upper.
        t27 = range_i32_upper.
      ELSEIF t16 < range_i32_lower.
        t27 = range_i32_lower.
      ELSE.
        t27 = trunc( t16 ).
      ENDIF.
      DATA t29 TYPE i.
      t29 = strlen( t23 ).
      DATA(t32) = strlen( t23 ).
      t27 = COND i( WHEN t27 < 0 THEN 0 WHEN t27 > t32 THEN t32 ELSE t27 ).
      t29 = COND i( WHEN t29 < 0 THEN 0 WHEN t29 > t32 THEN t32 ELSE t29 ).
      IF t27 > t29.
        t32 = t27.
        t27 = t29.
        t29 = t32.
      ENDIF.
      t32 = t29 - t27.
      t25 = t23+t27(t32).
      t21 = t25.
      DATA(t33) = VALUE string( ).
      DATA(t35) = VALUE i( ).
      DATA(t38) = strlen( t1 ).
      IF t21 IS INITIAL.
        t35 = 0.
      ELSE.
        FIND t21 IN t1 MATCH OFFSET t35.
        IF sy-subrc <> 0.
          t35 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t35 >= 0 ) = abap_true.
        t33 = t1.
      ELSE.
        DATA(t44) = strlen( t1 ).
        t33 = |{ t1 }{ t21 }|.
      ENDIF.
      result = t33.
      RETURN.
    ENDIF.
    DATA(t45) = VALUE i( ).
    DATA(t46) = VALUE i( ).
    DATA(t48) = | |.
    DATA(t49) = strlen( t2 ).
    IF t48 IS INITIAL.
      t46 = 0.
    ELSE.
      FIND t48 IN t2 MATCH OFFSET t46.
      IF sy-subrc <> 0.
        t46 = -1.
      ENDIF.
    ENDIF.
    t45 = t46.
    IF xsdbool( t45 > -1 ) = abap_true.
      DATA(t53) = VALUE string( ).
      DATA t55 TYPE string.
      t55 = t2.
      DATA(t57) = VALUE string( ).
      DATA(t59) = t45.
      DATA t60 TYPE i.
      t60 = strlen( t55 ).
      DATA(t63) = strlen( t55 ).
      t59 = COND i( WHEN t59 < 0 THEN 0 WHEN t59 > t63 THEN t63 ELSE t59 ).
      t60 = COND i( WHEN t60 < 0 THEN 0 WHEN t60 > t63 THEN t63 ELSE t60 ).
      IF t59 > t60.
        t63 = t59.
        t59 = t60.
        t60 = t63.
      ENDIF.
      t63 = t60 - t59.
      t57 = t55+t59(t63).
      t53 = t57.
      DATA(t64) = VALUE string( ).
      DATA(t66) = VALUE i( ).
      DATA(t69) = strlen( t1 ).
      IF t53 IS INITIAL.
        t66 = 0.
      ELSE.
        FIND t53 IN t1 MATCH OFFSET t66.
        IF sy-subrc <> 0.
          t66 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t66 >= 0 ) = abap_true.
        t64 = t1.
      ELSE.
        DATA(t75) = strlen( t1 ).
        t64 = |{ t1 }{ t53 }|.
      ENDIF.
      result = t64.
      RETURN.
    ENDIF.
    result = t1.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1332_f169490451da.
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~build_edits.
    result = me->build_edits( i_obj_1ed0 = i_obj_1ed0 i_old_name = i_old_name i_new_name = i_new_name ).
  ENDMETHOD.
ENDCLASS.
