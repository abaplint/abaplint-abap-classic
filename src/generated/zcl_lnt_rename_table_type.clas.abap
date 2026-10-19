* TS: src/objects/rename/rename_table_type.ts:8:1 RenameTableType
CLASS zcl_lnt_rename_table_type DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_object_renamer.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS b_e_i_s_o_r_r_t_ty_ts_rn_tb_ty IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO object.
    METHODS build_edits IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_36bc2e57.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rename_table_type IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD b_e_i_s_o_r_r_t_ty_ts_rn_tb_ty.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_table_type ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t11) = |RenameTableType, not a table type|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
      t8 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t9 ).
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
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    t16 = t17.
    DATA t18 TYPE REF TO zcl_lnt_renamer_helper.
    DATA t19 TYPE REF TO zcl_lnt_renamer_helper.
    DATA(t20) = me->reg.
    t19 = NEW zcl_lnt_renamer_helper( i_reg_f149 = t20 ).
    t18 = t19.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zcl_lnt_ob_table_type.
    DATA t28 TYPE REF TO object.
    t28 = t1.
    t26 ?= t28.
    DATA(t29) = |TYPENAME|.
    DATA t32 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t24 = t18->build_xml_file_edits( i_object_19cd = t26 i_xml_tag = t29 i_old_name = t2 i_new_name = t3 i_use_lower_case = t32 ).
    t23 ?= t24.
    t21 = t16->concat( p0 = t23 ).
    t16 = t21.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zcl_lnt_ob_table_type.
    DATA t39 TYPE REF TO object.
    t39 = t1.
    t37 ?= t39.
    t35 = t18->rename_files( i_obj_1ed0 = t37 i_old_name = t2 i_name = t3 ).
    t33 = t16->concat( p0 = t35 ).
    t16 = t33.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zcl_lnt_ob_table_type.
    DATA t49 TYPE REF TO object.
    t49 = t1.
    t47 ?= t49.
    t45 = t18->rename_ddic_code_references( i_obj_1ed0 = t47 i_old_name = t2 i_new_name = t3 ).
    t44 ?= t45.
    t42 = t16->concat( p0 = t44 ).
    t16 = t42.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t57 TYPE REF TO zcl_lnt_ob_table_type.
    DATA t59 TYPE REF TO object.
    t59 = t1.
    t57 ?= t59.
    t55 = t18->rename_ddictabl_references( i_obj_1ed0 = t57 i_old_name = t2 i_new_name = t3 ).
    t54 ?= t55.
    t52 = t16->concat( p0 = t54 ).
    t16 = t52.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t67 TYPE REF TO zcl_lnt_ob_table_type.
    DATA t69 TYPE REF TO object.
    t69 = t1.
    t67 ?= t69.
    t65 = t18->rename_ddicttyp_references( i_obj_1ed0 = t67 i_old_name = t2 i_new_name = t3 ).
    t64 ?= t65.
    t62 = t16->concat( p0 = t64 ).
    t16 = t62.
    DATA t72 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t73 = t16.
    DATA t78 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    DATA t80 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    t72 = NEW zcl_lnt_shape_36bc2e57( i_changes = t78 i_document_changes = t73 i_change_annotations = t80 ).
    CREATE OBJECT t72->zlnt_view_ownkeys_b0e8086400eb.
    t72->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t82 ).
    CREATE OBJECT t72->zlnt_json_ownkeys_70e5fd461788.
    t72->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t83) = |documentChanges|.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
    result = t72.

  ENDMETHOD.

  METHOD build_edits.
    DATA t4 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t5 TYPE REF TO object.
    DATA(t6) = i_obj_1ed0.
    DATA(t7) = i_old_name.
    DATA(t8) = i_new_name.
    t5 = me->b_e_i_s_o_r_r_t_ty_ts_rn_tb_ty( i_obj_1ed0 = t6 i_old_name = t7 i_new_name = t8 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1336_fc61c0e5e159.
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~build_edits.
    result = me->build_edits( i_obj_1ed0 = i_obj_1ed0 i_old_name = i_old_name i_new_name = i_new_name ).
  ENDMETHOD.
ENDCLASS.
