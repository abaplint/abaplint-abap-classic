* TS: src/objects/rename/rename_table.ts:8:1 RenameTable
CLASS zcl_lnt_rename_table DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_object_renamer.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS b_e_in_sr_ob_rn_rn_tb_ts_rn_tb IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO object.
    METHODS build_edits IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_36bc2e57.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rename_table IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD b_e_in_sr_ob_rn_rn_tb_ts_rn_tb.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_table ).
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
        DATA(t11) = |RenameTable, not a table|.
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
    DATA t26 TYPE REF TO zcl_lnt_table.
    CLEAR t26.
    DATA(t27) = t1.
    DATA t28 TYPE REF TO object.
    CLEAR t28.
    t28 = t27.
    t26 ?= t28.
    DATA(t29) = |TABNAME|.
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
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t36.
    DATA(t37) = t18.
    DATA t38 TYPE REF TO zcl_lnt_table.
    CLEAR t38.
    DATA(t39) = t1.
    DATA t40 TYPE REF TO object.
    CLEAR t40.
    t40 = t39.
    t38 ?= t40.
    DATA(t41) = |FORTABLE|.
    DATA(t42) = t2.
    DATA(t43) = t3.
    DATA t44 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t44.
    t36 = t37->build_xml_file_edits( i_object_19cd = t38 i_xml_tag = t41 i_old_name = t42 i_new_name = t43 i_use_lower_case = t44 ).
    t35 ?= t36.
    t33 = t34->concat( p0 = t35 ).
    t16 = t33.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t45.
    DATA(t46) = t16.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t47.
    DATA(t48) = t18.
    DATA t49 TYPE REF TO zcl_lnt_table.
    CLEAR t49.
    DATA(t50) = t1.
    DATA t51 TYPE REF TO object.
    CLEAR t51.
    t51 = t50.
    t49 ?= t51.
    DATA(t52) = t2.
    DATA(t53) = t3.
    t47 = t48->rename_files( i_obj_1ed0 = t49 i_old_name = t52 i_name = t53 ).
    t45 = t46->concat( p0 = t47 ).
    t16 = t45.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t54.
    DATA(t55) = t16.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t57.
    DATA(t58) = t18.
    DATA t59 TYPE REF TO zcl_lnt_table.
    CLEAR t59.
    DATA(t60) = t1.
    DATA t61 TYPE REF TO object.
    CLEAR t61.
    t61 = t60.
    t59 ?= t61.
    DATA(t62) = t2.
    DATA(t63) = t3.
    t57 = t58->rename_ddic_code_references( i_obj_1ed0 = t59 i_old_name = t62 i_new_name = t63 ).
    t56 ?= t57.
    t54 = t55->concat( p0 = t56 ).
    t16 = t54.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t64.
    DATA(t65) = t16.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t67.
    DATA(t68) = t18.
    DATA t69 TYPE REF TO zcl_lnt_table.
    CLEAR t69.
    DATA(t70) = t1.
    DATA t71 TYPE REF TO object.
    CLEAR t71.
    t71 = t70.
    t69 ?= t71.
    DATA(t72) = t2.
    DATA(t73) = t3.
    t67 = t68->rename_ddictabl_references( i_obj_1ed0 = t69 i_old_name = t72 i_new_name = t73 ).
    t66 ?= t67.
    t64 = t65->concat( p0 = t66 ).
    t16 = t64.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    DATA(t75) = t16.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    DATA(t78) = t18.
    DATA t79 TYPE REF TO zcl_lnt_table.
    CLEAR t79.
    DATA(t80) = t1.
    DATA t81 TYPE REF TO object.
    CLEAR t81.
    t81 = t80.
    t79 ?= t81.
    DATA(t82) = t2.
    DATA(t83) = t3.
    t77 = t78->rename_ddicttyp_references( i_obj_1ed0 = t79 i_old_name = t82 i_new_name = t83 ).
    t76 ?= t77.
    t74 = t75->concat( p0 = t76 ).
    t16 = t74.
    DATA t84 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t86.
    DATA(t87) = abap_true.
    IF t87 = abap_true.
      DATA(t88) = t16.
      t86 = t88.
    ELSE.
      DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t89.
      t86 = t89.
    ENDIF.
    t85 = t86.
    DATA t90 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t91.
    t90 = t91.
    DATA t92 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t93.
    t92 = t93.
    t84 = NEW zcl_lnt_shape_36bc2e57( i_changes = t90 i_document_changes = t85 i_change_annotations = t92 ).
    CREATE OBJECT t84->zlnt_view_ownkeys_b0e8086400eb.
    t84->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t94 ).
    ENDIF.
    CREATE OBJECT t84->zlnt_json_ownkeys_70e5fd461788.
    t84->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t95) = |documentChanges|.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
    ENDIF.
    result = t84.

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
    t5 = me->b_e_in_sr_ob_rn_rn_tb_ts_rn_tb( i_obj_1ed0 = t6 i_old_name = t7 i_new_name = t8 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1335_b1dea1306470.
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~build_edits.
    result = me->build_edits( i_obj_1ed0 = i_obj_1ed0 i_old_name = i_old_name i_new_name = i_new_name ).
  ENDMETHOD.
ENDCLASS.
