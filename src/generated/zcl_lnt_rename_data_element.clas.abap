* TS: src/objects/rename/rename_data_element.ts:8:1 RenameDataElement
CLASS zcl_lnt_rename_data_element DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_object_renamer.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS b_e_i_s_o_r_r_d_el_ts_rn_dt_el IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO object.
    METHODS build_edits IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_36bc2e57.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rename_data_element IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD b_e_i_s_o_r_r_d_el_ts_rn_dt_el.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_data_element ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t7.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = |RenameDataElement, not a data element|.
        DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t12->has = abap_true.
        t12->value = t11.
        t9 = t12.
      ELSE.
        DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t13.
        t9 = t13.
      ENDIF.
      t8 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t9 ).
      t7 = NEW #( ).
      t7->payload = t8.
      CLEAR t7->source_value.
      IF t8 IS BOUND.
        DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t14.
        DATA t15 TYPE REF TO object.
        CLEAR t15.
        CLEAR t14.
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
      ENDIF.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    CREATE OBJECT t17.
    t16 = t17.
    DATA t18 TYPE REF TO zcl_lnt_renamer_helper.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_renamer_helper.
    CLEAR t19.
    DATA(t20) = me->reg.
    t19 = NEW zcl_lnt_renamer_helper( i_reg_f149 = t20 ).
    t18 = t19.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA(t22) = t16.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    DATA(t25) = t18.
    DATA t26 TYPE REF TO zcl_lnt_data_element.
    CLEAR t26.
    DATA(t27) = t1.
    DATA t28 TYPE REF TO object.
    CLEAR t28.
    t28 = t27.
    t26 ?= t28.
    DATA(t29) = |ROLLNAME|.
    DATA(t30) = t2.
    DATA(t31) = t3.
    DATA t32 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t32.
    t24 = t25->build_xml_file_edits( i_object_19cd = t26 i_xml_tag = t29 i_old_name = t30 i_new_name = t31 i_use_lower_case = t32 ).
    t23 ?= t24.
    t21 = t22->concat( p0 = t23 ).
    t16 = t21.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    DATA(t34) = t16.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t35.
    DATA(t36) = t18.
    DATA t37 TYPE REF TO zcl_lnt_data_element.
    CLEAR t37.
    DATA(t38) = t1.
    DATA t39 TYPE REF TO object.
    CLEAR t39.
    t39 = t38.
    t37 ?= t39.
    DATA(t40) = t2.
    DATA(t41) = t3.
    t35 = t36->rename_files( i_obj_1ed0 = t37 i_old_name = t40 i_name = t41 ).
    t33 = t34->concat( p0 = t35 ).
    t16 = t33.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t42.
    DATA(t43) = t16.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t45.
    DATA(t46) = t18.
    DATA t47 TYPE REF TO zcl_lnt_data_element.
    CLEAR t47.
    DATA(t48) = t1.
    DATA t49 TYPE REF TO object.
    CLEAR t49.
    t49 = t48.
    t47 ?= t49.
    DATA(t50) = t2.
    DATA(t51) = t3.
    t45 = t46->rename_ddic_code_references( i_obj_1ed0 = t47 i_old_name = t50 i_new_name = t51 ).
    t44 ?= t45.
    t42 = t43->concat( p0 = t44 ).
    t16 = t42.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    DATA(t53) = t16.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t55.
    DATA(t56) = t18.
    DATA t57 TYPE REF TO zcl_lnt_data_element.
    CLEAR t57.
    DATA(t58) = t1.
    DATA t59 TYPE REF TO object.
    CLEAR t59.
    t59 = t58.
    t57 ?= t59.
    DATA(t60) = t2.
    DATA(t61) = t3.
    t55 = t56->rename_ddictabl_references( i_obj_1ed0 = t57 i_old_name = t60 i_new_name = t61 ).
    t54 ?= t55.
    t52 = t53->concat( p0 = t54 ).
    t16 = t52.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t62.
    DATA(t63) = t16.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t65.
    DATA(t66) = t18.
    DATA t67 TYPE REF TO zcl_lnt_data_element.
    CLEAR t67.
    DATA(t68) = t1.
    DATA t69 TYPE REF TO object.
    CLEAR t69.
    t69 = t68.
    t67 ?= t69.
    DATA(t70) = t2.
    DATA(t71) = t3.
    t65 = t66->rename_ddicttyp_references( i_obj_1ed0 = t67 i_old_name = t70 i_new_name = t71 ).
    t64 ?= t65.
    t62 = t63->concat( p0 = t64 ).
    t16 = t62.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t72.
    DATA(t73) = t16.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    DATA(t76) = t18.
    DATA t77 TYPE REF TO zcl_lnt_data_element.
    CLEAR t77.
    DATA(t78) = t1.
    DATA t79 TYPE REF TO object.
    CLEAR t79.
    t79 = t78.
    t77 ?= t79.
    DATA(t80) = t2.
    DATA(t81) = t3.
    t75 = t76->rename_ddicauth_references( i_obj_1ed0 = t77 i_old_name = t80 i_new_name = t81 ).
    t74 ?= t75.
    t72 = t73->concat( p0 = t74 ).
    t16 = t72.
    DATA t82 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t84.
    DATA(t85) = abap_true.
    IF t85 = abap_true.
      DATA(t86) = t16.
      t84 = t86.
    ELSE.
      DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t87.
      t84 = t87.
    ENDIF.
    t83 = t84.
    DATA t88 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t89.
    t88 = t89.
    DATA t90 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t91.
    t90 = t91.
    t82 = NEW zcl_lnt_shape_36bc2e57( i_changes = t88 i_document_changes = t83 i_change_annotations = t90 ).
    CREATE OBJECT t82->zlnt_view_ownkeys_b0e8086400eb.
    t82->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t92 ).
    ENDIF.
    CREATE OBJECT t82->zlnt_json_ownkeys_70e5fd461788.
    t82->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t93) = |documentChanges|.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
    ENDIF.
    result = t82.

  ENDMETHOD.

  METHOD build_edits.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t5 TYPE REF TO object.
    DATA(t6) = t1.
    DATA(t7) = t2.
    DATA(t8) = t3.
    t5 = me->b_e_i_s_o_r_r_d_el_ts_rn_dt_el( i_obj_1ed0 = t6 i_old_name = t7 i_new_name = t8 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1328_1821c694b741.
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~build_edits.
    result = me->build_edits( i_obj_1ed0 = i_obj_1ed0 i_old_name = i_old_name i_new_name = i_new_name ).
  ENDMETHOD.
ENDCLASS.
