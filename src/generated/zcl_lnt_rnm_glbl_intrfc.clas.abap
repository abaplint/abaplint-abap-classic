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
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD b_e_i_s_o_r_r_g_in_ts_rn_gl_in.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_ob_interface ).
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
        DATA(t11) = |not an interface|.
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
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_ob_interface.
    CLEAR t18.
    DATA(t19) = t1.
    DATA t20 TYPE REF TO object.
    CLEAR t20.
    t20 = t19.
    t18 ?= t20.
    t17 = t18->get_main_abap_file( ).
    t16 = t17.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t22.
    DATA(t23) = t16.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    t24 = t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t22.
    IF t27 IS INITIAL.
      t26 = abap_true.
    ENDIF.
    t21 = t26.
    IF t21 = abap_true.
      DATA t28 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA(t32) = |Main file not found|.
        DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t33->has = abap_true.
        t33->value = t32.
        t30 = t33.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t34.
        t30 = t34.
      ENDIF.
      t29 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t30 ).
      t28 = NEW #( ).
      t28->payload = t29.
      CLEAR t28->source_value.
      IF t29 IS BOUND.
        DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t35.
        DATA t36 TYPE REF TO object.
        CLEAR t36.
        CLEAR t35.
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
      ENDIF.
      RAISE EXCEPTION t28.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    CREATE OBJECT t38.
    t37 = t38.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t40.
    CREATE OBJECT t40.
    t39 = t40.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t41.
    DATA t42 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t42.
    DATA t43 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t43.
    DATA(t44) = t16.
    t43 = t44.
    t42 = t43.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t45.
    DATA(t46) = t42.
    t45 = t46->statements.
    t41 = t45.
    DATA t47 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t47.
    DATA t48 TYPE REF TO object.
    CLEAR t48.
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
        CLEAR t51.
        t51 = t50->as_ref( ).
        t47 ?= t51.
      ELSE.
        t47 ?= t48.
      ENDIF.
      DATA(t52) = VALUE abap_bool( ).
      DATA t53 TYPE REF TO zif_lnt_statement.
      CLEAR t53.
      DATA(t54) = t47.
      t53 = t54->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t52 = xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_st_interface ).
      IF t52 = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t55.
        DATA t56 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t56.
        DATA(t57) = t47.
        DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
        t56 = t57->find_first_expression( i_type_9913 = t58 ).
        t55 = t56.
        DATA(t59) = VALUE abap_bool( ).
        DATA t60 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t60.
        DATA(t61) = t55.
        t60 = t61.
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t63.
        t62 = t63.
        DATA(t64) = VALUE abap_bool( ).
        DATA(t65) = t60.
        IF t65 IS INITIAL.
          t64 = abap_true.
        ENDIF.
        t59 = t64.
        IF t59 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t66) = t39.
        DATA t67 TYPE REF TO zcl_lnt_text_edit.
        CLEAR t67.
        DATA t68 TYPE REF TO zcl_lnt_range.
        CLEAR t68.
        DATA t69 TYPE REF TO zcl_lnt_range.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t70.
        DATA t71 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t71.
        DATA(t72) = t55.
        t71 = t72.
        t70 = t71->get_first_token( ).
        t69 = zcl_lnt_lsp_utils=>token_to_range( i_token = t70 ).
        t68 = t69.
        DATA(t73) = VALUE string( ).
        DATA(t74) = VALUE string( ).
        DATA(t75) = t3.
        DATA(t76) = strlen( t75 ).
        t74 = t75.
        TRANSLATE t74 TO LOWER CASE.
        t73 = t74.
        DATA t77 TYPE REF TO zcl_lnt_text_edit.
        CLEAR t77.
        DATA t78 TYPE REF TO zcl_lnt_range.
        CLEAR t78.
        DATA(t79) = t68.
        t78 = t79.
        DATA(t80) = VALUE string( ).
        DATA(t81) = t73.
        t80 = t81.
        t77 = NEW zcl_lnt_text_edit( i_range = t78 i_new_text = t80 ).
        CREATE OBJECT t77->zlnt_view_ownkeys_b0e8086400eb.
        t77->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t82 ).
        ENDIF.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t83 ).
        ENDIF.
        CREATE OBJECT t77->zlnt_json_ownkeys_70e5fd461788.
        t77->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t84) = |range|.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
        ENDIF.
        DATA(t86) = |newText|.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
        ENDIF.
        t67 = t77.
        t66->load( ).
        APPEND t67 TO t66->items.
        t66->save( ).
      ENDIF.
    ENDDO.
    DATA(t88) = t37.
    DATA t89 TYPE REF TO zcl_lnt_text_document_edit.
    CLEAR t89.
    DATA t90 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
    CLEAR t90.
    DATA t91 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
    CLEAR t91.
    DATA(t92) = VALUE string( ).
    DATA(t93) = VALUE string( ).
    DATA t94 TYPE REF TO zcl_lnt_abstract_file.
    CLEAR t94.
    DATA t95 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t95.
    DATA(t96) = t16.
    t95 = t96.
    t94 = t95.
    DATA(t97) = VALUE string( ).
    DATA(t98) = t94.
    t97 = t98->filename.
    t93 = t97.
    t92 = t93.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = 1.
    CLEAR t100.
    CREATE OBJECT t100.
    t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t100->nval = t101.
    t99 = t100.
    t91 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t92 i_version = t99 ).
    CREATE OBJECT t91->zlnt_view_ownkeys_b0e8086400eb.
    t91->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t102 ).
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t103 ).
    ENDIF.
    CREATE OBJECT t91->zlnt_json_ownkeys_70e5fd461788.
    t91->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t104) = |uri|.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
    ENDIF.
    DATA(t106) = |version|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
    ENDIF.
    t90 = t91.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t108.
    DATA(t109) = t39.
    t108 = t109.
    DATA t110 TYPE REF TO zcl_lnt_text_document_edit.
    CLEAR t110.
    DATA t111 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
    CLEAR t111.
    DATA(t112) = t90.
    t111 = t112.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t113.
    DATA(t114) = t108.
    t113 = t114.
    t110 = NEW zcl_lnt_text_document_edit( i_text_document = t111 i_edits = t113 ).
    CREATE OBJECT t110->zlnt_view_ownkeys_b0e8086400eb.
    t110->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t115 ).
    ENDIF.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t116 ).
    ENDIF.
    CREATE OBJECT t110->zlnt_json_ownkeys_70e5fd461788.
    t110->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t117) = |textDocument|.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
    ENDIF.
    DATA(t119) = |edits|.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
    ENDIF.
    t89 = t110.
    t88->load( ).
    APPEND t89 TO t88->items.
    t88->save( ).
    DATA t121 TYPE REF TO zcl_lnt_renamer_helper.
    CLEAR t121.
    DATA t122 TYPE REF TO zcl_lnt_renamer_helper.
    CLEAR t122.
    DATA(t123) = me->reg.
    t122 = NEW zcl_lnt_renamer_helper( i_reg_f149 = t123 ).
    t121 = t122.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t124.
    DATA(t125) = t37.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t127.
    DATA(t128) = t121.
    DATA t129 TYPE REF TO zcl_lnt_ob_interface.
    CLEAR t129.
    DATA(t130) = t1.
    DATA t131 TYPE REF TO object.
    CLEAR t131.
    t131 = t130.
    t129 ?= t131.
    DATA(t132) = |CLSNAME|.
    DATA(t133) = t2.
    DATA(t134) = t3.
    DATA t135 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t135.
    t127 = t128->build_xml_file_edits( i_object_19cd = t129 i_xml_tag = t132 i_old_name = t133 i_new_name = t134 i_use_lower_case = t135 ).
    t126 ?= t127.
    t124 = t125->concat( p0 = t126 ).
    t37 = t124.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t136.
    DATA(t137) = t37.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t138.
    DATA(t139) = t121.
    DATA t140 TYPE REF TO zcl_lnt_ob_interface.
    CLEAR t140.
    DATA(t141) = t1.
    DATA t142 TYPE REF TO object.
    CLEAR t142.
    t142 = t141.
    t140 ?= t142.
    DATA(t143) = t2.
    DATA(t144) = t3.
    t138 = t139->rename_files( i_obj_1ed0 = t140 i_old_name = t143 i_name = t144 ).
    t136 = t137->concat( p0 = t138 ).
    t37 = t136.
    DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t145.
    DATA(t146) = t37.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t148.
    DATA(t149) = t121.
    DATA t150 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t150.
    DATA t151 TYPE REF TO zcl_lnt_ob_interface.
    CLEAR t151.
    DATA t152 TYPE REF TO zcl_lnt_ob_interface.
    CLEAR t152.
    DATA(t153) = t1.
    DATA t154 TYPE REF TO object.
    CLEAR t154.
    t154 = t153.
    t152 ?= t154.
    t151 = t152.
    DATA t155 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t155.
    DATA t156 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t156.
    DATA t157 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t157.
    DATA t158 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t158.
    DATA t159 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t159.
    DATA t160 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t160.
    DATA t161 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t161.
    DATA(t162) = t151.
    t161 = t162->get_main_abap_file( ).
    t160 = t161.
    DATA t163 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t163.
    DATA(t164) = VALUE abap_bool( ).
    DATA(t165) = t160.
    IF t165 IS INITIAL.
      t164 = abap_true.
    ENDIF.
    IF t164 = abap_true.
      DATA t166 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t166.
      t163 = t166.
    ELSE.
      DATA t167 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t167.
      DATA t168 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t168.
      DATA t169 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t169.
      DATA(t170) = t160.
      t169 = t170.
      t168 = t169.
      DATA t171 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t171.
      DATA(t172) = t168.
      t171 = t172->info.
      t167 = t171.
      t163 = t167.
    ENDIF.
    t159 = t163.
    t158 = t159.
    DATA t173 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t173.
    DATA(t174) = VALUE abap_bool( ).
    DATA(t175) = t158.
    IF t175 IS INITIAL.
      t174 = abap_true.
    ENDIF.
    IF t174 = abap_true.
      DATA t176 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t176.
      t173 = t176.
    ELSE.
      DATA t177 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t177.
      DATA t178 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t178.
      DATA(t179) = t158.
      t178 = t179.
      DATA(t180) = VALUE string( ).
      DATA t181 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t181.
      DATA(t182) = t151.
      t181 = t182.
      DATA(t183) = VALUE string( ).
      DATA(t184) = t181.
      t183 = t184->name.
      t180 = t183.
      t177 = t178->gt_intrfc_dfntn_by_nm( i_name = t180 ).
      t173 = t177.
    ENDIF.
    t157 = t173.
    t156 = t157.
    DATA t185 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t185.
    DATA(t186) = VALUE abap_bool( ).
    DATA(t187) = t156.
    IF t187 IS INITIAL.
      t186 = abap_true.
    ENDIF.
    IF t186 = abap_true.
      DATA t188 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t188.
      t185 = t188.
    ELSE.
      DATA t189 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t189.
      DATA t190 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t190.
      DATA(t191) = t156.
      t190 = t191.
      t189 = t190->identifier.
      t185 = t189.
    ENDIF.
    t155 = t185.
    t150 = t155.
    DATA(t192) = t2.
    DATA(t193) = t3.
    t148 = t149->rename_references( i_id = t150 i_old_name = t192 i_new_name = t193 ).
    t147 ?= t148.
    t145 = t146->concat( p0 = t147 ).
    t37 = t145.
    DATA t194 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t196.
    DATA(t197) = abap_true.
    IF t197 = abap_true.
      DATA(t198) = t37.
      t196 = t198.
    ELSE.
      DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t199.
      t196 = t199.
    ENDIF.
    t195 = t196.
    DATA t200 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t201.
    t200 = t201.
    DATA t202 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t203.
    t202 = t203.
    t194 = NEW zcl_lnt_shape_36bc2e57( i_changes = t200 i_document_changes = t195 i_change_annotations = t202 ).
    CREATE OBJECT t194->zlnt_view_ownkeys_b0e8086400eb.
    t194->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t204 ).
    ENDIF.
    CREATE OBJECT t194->zlnt_json_ownkeys_70e5fd461788.
    t194->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t205) = |documentChanges|.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
    ENDIF.
    result = t194.

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
