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
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD b_e_i_s_o_r_r_i_sr_ts_rn_ic_sr.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_icfservice ).
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
        DATA(t11) = |RenameICFService, not a ICF Service|.
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
    DATA(t16) = VALUE string( ).
    DATA(t17) = VALUE string( ).
    DATA(t18) = t3.
    DATA(t19) = t2.
    t17 = me->fn_immediate_166522( i_new_name = t18 i_old_name = t19 ).
    t16 = t17.
    DATA(t20) = VALUE string( ).
    DATA(t21) = VALUE string( ).
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t25.
    DATA(t26) = VALUE string( ).
    DATA(t27) = t2.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t28.
    DATA(t29) = t26.
    DATA t30 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t30.
    DATA(t31) = |^[^ ]+|.
    DATA(t32) = ||.
    CREATE OBJECT t30 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t31 flags = t32.
    t28 = t30->match( t29 ).
    t25 = t28.
    t24 = t25.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = t24.
    IF t35 IS INITIAL.
      t34 = abap_true.
    ENDIF.
    IF t34 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      t33 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t38.
      DATA(t39) = t24.
      t38 = t39.
      DATA(t40) = 0.
      t37 = t38->get( p0 = t40 ).
      t33 = t37.
    ENDIF.
    t23 = t33.
    t22 = t23.
    DATA(t41) = VALUE string( ).
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = t22.
    IF t43 IS INITIAL.
      t42 = abap_true.
    ELSEIF t43->has = abap_false.
      t42 = abap_true.
    ENDIF.
    IF t42 = abap_true.
      DATA(t44) = t2.
      t41 = t44.
    ELSE.
      DATA(t45) = VALUE string( ).
      DATA(t46) = t22.
      t45 = t46->value.
      t41 = t45.
    ENDIF.
    t21 = t41.
    t20 = t21.
    DATA(t47) = VALUE string( ).
    DATA(t48) = VALUE string( ).
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t52.
    DATA(t53) = VALUE string( ).
    DATA(t54) = t3.
    t53 = t54.
    DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t55.
    DATA(t56) = t53.
    DATA t57 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t57.
    DATA(t58) = |^[^ ]+|.
    DATA(t59) = ||.
    CREATE OBJECT t57 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t58 flags = t59.
    t55 = t57->match( t56 ).
    t52 = t55.
    t51 = t52.
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t60.
    DATA(t61) = VALUE abap_bool( ).
    DATA(t62) = t51.
    IF t62 IS INITIAL.
      t61 = abap_true.
    ENDIF.
    IF t61 = abap_true.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      t60 = t63.
    ELSE.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t65.
      DATA(t66) = t51.
      t65 = t66.
      DATA(t67) = 0.
      t64 = t65->get( p0 = t67 ).
      t60 = t64.
    ENDIF.
    t50 = t60.
    t49 = t50.
    DATA(t68) = VALUE string( ).
    DATA(t69) = VALUE abap_bool( ).
    DATA(t70) = t49.
    IF t70 IS INITIAL.
      t69 = abap_true.
    ELSEIF t70->has = abap_false.
      t69 = abap_true.
    ENDIF.
    IF t69 = abap_true.
      DATA(t71) = t3.
      t68 = t71.
    ELSE.
      DATA(t72) = VALUE string( ).
      DATA(t73) = t49.
      t72 = t73->value.
      t68 = t72.
    ENDIF.
    t48 = t68.
    t47 = t48.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    CREATE OBJECT t75.
    t74 = t75.
    DATA t76 TYPE REF TO zcl_lnt_renamer_helper.
    CLEAR t76.
    DATA t77 TYPE REF TO zcl_lnt_renamer_helper.
    CLEAR t77.
    DATA(t78) = me->reg.
    t77 = NEW zcl_lnt_renamer_helper( i_reg_f149 = t78 ).
    t76 = t77.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    DATA(t80) = t74.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t82.
    DATA(t83) = t76.
    DATA t84 TYPE REF TO zcl_lnt_icfservice.
    CLEAR t84.
    DATA(t85) = t1.
    DATA t86 TYPE REF TO object.
    CLEAR t86.
    t86 = t85.
    t84 ?= t86.
    DATA(t87) = t20.
    DATA(t88) = t47.
    t82 = t83->build_url_file_edits( i_object_19cd = t84 i_old_name = t87 i_new_name = t88 ).
    t81 ?= t82.
    t79 = t80->concat( p0 = t81 ).
    t74 = t79.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t89.
    DATA(t90) = t74.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t92.
    DATA(t93) = t76.
    DATA t94 TYPE REF TO zcl_lnt_icfservice.
    CLEAR t94.
    DATA(t95) = t1.
    DATA t96 TYPE REF TO object.
    CLEAR t96.
    t96 = t95.
    t94 ?= t96.
    DATA(t97) = |ICF_NAME|.
    DATA(t98) = t20.
    DATA(t99) = t47.
    DATA t100 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t100.
    t92 = t93->build_xml_file_edits( i_object_19cd = t94 i_xml_tag = t97 i_old_name = t98 i_new_name = t99 i_use_lower_case = t100 ).
    t91 ?= t92.
    t89 = t90->concat( p0 = t91 ).
    t74 = t89.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t101.
    DATA(t102) = t74.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t104.
    DATA(t105) = t76.
    DATA t106 TYPE REF TO zcl_lnt_icfservice.
    CLEAR t106.
    DATA(t107) = t1.
    DATA t108 TYPE REF TO object.
    CLEAR t108.
    t108 = t107.
    t106 ?= t108.
    DATA(t109) = |ORIG_NAME|.
    DATA(t110) = t20.
    DATA(t111) = t47.
    DATA t112 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t112.
    DATA(t113) = abap_true.
    IF t113 = abap_true.
      DATA(t114) = abap_true.
      DATA(t115) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t115->has = abap_true.
      t115->value = t114.
      t112 = t115.
    ELSE.
      DATA t116 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t116.
      t112 = t116.
    ENDIF.
    t104 = t105->build_xml_file_edits( i_object_19cd = t106 i_xml_tag = t109 i_old_name = t110 i_new_name = t111 i_use_lower_case = t112 ).
    t103 ?= t104.
    t101 = t102->concat( p0 = t103 ).
    t74 = t101.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t117.
    DATA(t118) = t74.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t119.
    DATA(t120) = t76.
    DATA t121 TYPE REF TO zcl_lnt_icfservice.
    CLEAR t121.
    DATA(t122) = t1.
    DATA t123 TYPE REF TO object.
    CLEAR t123.
    t123 = t122.
    t121 ?= t123.
    DATA(t124) = t2.
    DATA(t125) = t16.
    t119 = t120->rename_files( i_obj_1ed0 = t121 i_old_name = t124 i_name = t125 ).
    t117 = t118->concat( p0 = t119 ).
    t74 = t117.
    DATA t126 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t128.
    DATA(t129) = abap_true.
    IF t129 = abap_true.
      DATA(t130) = t74.
      t128 = t130.
    ELSE.
      DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t131.
      t128 = t131.
    ENDIF.
    t127 = t128.
    DATA t132 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t133.
    t132 = t133.
    DATA t134 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t135.
    t134 = t135.
    t126 = NEW zcl_lnt_shape_36bc2e57( i_changes = t132 i_document_changes = t127 i_change_annotations = t134 ).
    CREATE OBJECT t126->zlnt_view_ownkeys_b0e8086400eb.
    t126->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    IF t126->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t126->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t136 ).
    ENDIF.
    CREATE OBJECT t126->zlnt_json_ownkeys_70e5fd461788.
    t126->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t137) = |documentChanges|.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    IF t126->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t126->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
    ENDIF.
    result = t126.

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
    t5 = me->b_e_i_s_o_r_r_i_sr_ts_rn_ic_sr( i_obj_1ed0 = t6 i_old_name = t7 i_new_name = t8 ).
    t4 ?= t5.
    result = t4.

  ENDMETHOD.

  METHOD fn_immediate_166522.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_new_name.
    DATA(t2) = i_old_name.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t4 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t4.
    DATA(t5) = ` \{[0-9A-Fa-f]{16,32}\}`.
    DATA(t6) = ||.
    CREATE OBJECT t4 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t5 flags = t6.
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t9 TYPE string.
    DATA(t10) = t2.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t12) = t9.
    DATA(t13) = t3.
    t11 = t13->match( t12 ).
    t8 = t11.
    t7 = t8.
    DATA t14 TYPE abap_bool.
    DATA(t15) = t7.
    t14 = xsdbool( t15 IS BOUND ).
    IF t14 = abap_true.
      DATA(t16) = VALUE f( ).
      DATA(t17) = VALUE f( ).
      DATA(t18) = VALUE i( ).
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t20) = t7.
      t19 = t20.
      IF t19->match_has_index <> abap_true.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t18 = t19->match_index.
      t17 = t18.
      t16 = t17.
      DATA(t21) = VALUE string( ).
      DATA(t22) = VALUE string( ).
      DATA t23 TYPE string.
      DATA(t24) = t2.
      t23 = t24.
      DATA(t25) = VALUE string( ).
      DATA(t26) = t23.
      DATA(t27) = VALUE i( ).
      DATA(t28) = t16.
      IF t28 > range_i32_upper.
        t27 = range_i32_upper.
      ELSEIF t28 < range_i32_lower.
        t27 = range_i32_lower.
      ELSE.
        t27 = trunc( t28 ).
      ENDIF.
      DATA t29 TYPE i.
      DATA(t30) = t23.
      DATA(t31) = strlen( t30 ).
      t29 = t31.
      DATA(t32) = strlen( t26 ).
      t27 = COND i( WHEN t27 < 0 THEN 0 WHEN t27 > t32 THEN t32 ELSE t27 ).
      t29 = COND i( WHEN t29 < 0 THEN 0 WHEN t29 > t32 THEN t32 ELSE t29 ).
      IF t27 > t29.
        t32 = t27.
        t27 = t29.
        t29 = t32.
      ENDIF.
      t32 = t29 - t27.
      t25 = t26+t27(t32).
      t22 = t25.
      t21 = t22.
      DATA(t33) = VALUE string( ).
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE i( ).
      DATA(t36) = t1.
      DATA(t37) = t21.
      DATA(t38) = strlen( t36 ).
      IF t37 IS INITIAL.
        t35 = 0.
      ELSE.
        FIND t37 IN t36 MATCH OFFSET t35.
        IF sy-subrc <> 0.
          t35 = -1.
        ENDIF.
      ENDIF.
      DATA(t39) = 0.
      t34 = xsdbool( t35 >= t39 ).
      IF t34 = abap_true.
        DATA(t40) = t1.
        t33 = t40.
      ELSE.
        DATA t41 TYPE string.
        DATA(t42) = t1.
        DATA(t43) = t21.
        DATA(t44) = strlen( t42 ).
        t41 = |{ t42 }{ t43 }|.
        t33 = t41.
      ENDIF.
      result = t33.
      RETURN.
    ENDIF.
    DATA(t45) = VALUE i( ).
    DATA(t46) = VALUE i( ).
    DATA(t47) = t2.
    DATA(t48) = | |.
    DATA(t49) = strlen( t47 ).
    IF t48 IS INITIAL.
      t46 = 0.
    ELSE.
      FIND t48 IN t47 MATCH OFFSET t46.
      IF sy-subrc <> 0.
        t46 = -1.
      ENDIF.
    ENDIF.
    t45 = t46.
    DATA t50 TYPE abap_bool.
    DATA(t51) = t45.
    DATA(t52) = -1.
    t50 = xsdbool( t51 > t52 ).
    IF t50 = abap_true.
      DATA(t53) = VALUE string( ).
      DATA(t54) = VALUE string( ).
      DATA t55 TYPE string.
      DATA(t56) = t2.
      t55 = t56.
      DATA(t57) = VALUE string( ).
      DATA(t58) = t55.
      DATA(t59) = t45.
      DATA t60 TYPE i.
      DATA(t61) = t55.
      DATA(t62) = strlen( t61 ).
      t60 = t62.
      DATA(t63) = strlen( t58 ).
      t59 = COND i( WHEN t59 < 0 THEN 0 WHEN t59 > t63 THEN t63 ELSE t59 ).
      t60 = COND i( WHEN t60 < 0 THEN 0 WHEN t60 > t63 THEN t63 ELSE t60 ).
      IF t59 > t60.
        t63 = t59.
        t59 = t60.
        t60 = t63.
      ENDIF.
      t63 = t60 - t59.
      t57 = t58+t59(t63).
      t54 = t57.
      t53 = t54.
      DATA(t64) = VALUE string( ).
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE i( ).
      DATA(t67) = t1.
      DATA(t68) = t53.
      DATA(t69) = strlen( t67 ).
      IF t68 IS INITIAL.
        t66 = 0.
      ELSE.
        FIND t68 IN t67 MATCH OFFSET t66.
        IF sy-subrc <> 0.
          t66 = -1.
        ENDIF.
      ENDIF.
      DATA(t70) = 0.
      t65 = xsdbool( t66 >= t70 ).
      IF t65 = abap_true.
        DATA(t71) = t1.
        t64 = t71.
      ELSE.
        DATA t72 TYPE string.
        DATA(t73) = t1.
        DATA(t74) = t53.
        DATA(t75) = strlen( t73 ).
        t72 = |{ t73 }{ t74 }|.
        t64 = t72.
      ENDIF.
      result = t64.
      RETURN.
    ENDIF.
    DATA(t76) = t1.
    result = t76.

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
