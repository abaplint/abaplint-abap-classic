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
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD b_e_i_s_o_r_r_g_cl_ts_rn_gl_cl.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_class ).
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
        DATA(t11) = |not a class|.
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
    DATA t18 TYPE REF TO zcl_lnt_class.
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
        DATA(t32) = VALUE string( ).
        DATA(t33) = VALUE string( ).
        DATA(t34) = VALUE string( ).
        DATA(t35) = VALUE string( ).
        DATA(t36) = |Main file not found, |.
        DATA(t37) = VALUE string( ).
        DATA t38 TYPE REF TO zcl_lnt_class.
        CLEAR t38.
        DATA t39 TYPE REF TO zcl_lnt_class.
        CLEAR t39.
        DATA(t40) = t1.
        DATA t41 TYPE REF TO object.
        CLEAR t41.
        t41 = t40.
        t39 ?= t41.
        t38 = t39.
        DATA(t42) = |CLAS|.
        t37 = t42.
        DATA(t43) = strlen( t36 ).
        t35 = |{ t36 }{ t37 }|.
        DATA(t44) = | |.
        DATA(t45) = strlen( t35 ).
        t34 = |{ t35 }{ t44 }|.
        DATA(t46) = VALUE string( ).
        DATA t47 TYPE REF TO zcl_lnt_abstract_object.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_class.
        CLEAR t48.
        DATA(t49) = t1.
        DATA t50 TYPE REF TO object.
        CLEAR t50.
        t50 = t49.
        t48 ?= t50.
        t47 = t48.
        DATA(t51) = VALUE string( ).
        DATA(t52) = t47.
        t51 = t52->name.
        t46 = t51.
        DATA(t53) = strlen( t34 ).
        t33 = |{ t34 }{ t46 }|.
        DATA(t54) = ||.
        DATA(t55) = strlen( t33 ).
        t32 = |{ t33 }{ t54 }|.
        DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t56->has = abap_true.
        t56->value = t32.
        t30 = t56.
      ELSE.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        t30 = t57.
      ENDIF.
      t29 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t30 ).
      t28 = NEW #( ).
      t28->payload = t29.
      CLEAR t28->source_value.
      IF t29 IS BOUND.
        DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t58.
        DATA t59 TYPE REF TO object.
        CLEAR t59.
        CLEAR t58.
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
      ENDIF.
      RAISE EXCEPTION t28.
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t61.
    CREATE OBJECT t61.
    t60 = t61.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t63.
    CREATE OBJECT t63.
    t62 = t63.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t64.
    DATA t65 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t65.
    DATA t66 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t66.
    DATA(t67) = t16.
    t66 = t67.
    t65 = t66.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t68.
    DATA(t69) = t65.
    t68 = t69->statements.
    t64 = t68.
    DATA t70 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t70.
    DATA t71 TYPE REF TO object.
    CLEAR t71.
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
        CLEAR t74.
        t74 = t73->as_ref( ).
        t70 ?= t74.
      ELSE.
        t70 ?= t71.
      ENDIF.
      DATA(t75) = VALUE abap_bool( ).
      DATA t76 TYPE REF TO zif_lnt_statement.
      CLEAR t76.
      DATA(t77) = t70.
      t76 = t77->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t75 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_st_class_definition ).
      IF t75 = abap_true.
        DATA t78 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t78.
        DATA t79 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t79.
        DATA(t80) = t70.
        DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
        t79 = t80->find_first_expression( i_type_9913 = t81 ).
        t78 = t79.
        DATA(t82) = VALUE abap_bool( ).
        DATA t83 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t83.
        DATA(t84) = t78.
        t83 = t84.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        t85 = t86.
        DATA(t87) = VALUE abap_bool( ).
        DATA(t88) = t83.
        IF t88 IS INITIAL.
          t87 = abap_true.
        ENDIF.
        t82 = t87.
        IF t82 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t89) = t62.
        DATA t90 TYPE REF TO zcl_lnt_text_edit.
        CLEAR t90.
        DATA t91 TYPE REF TO zcl_lnt_range.
        CLEAR t91.
        DATA t92 TYPE REF TO zcl_lnt_range.
        CLEAR t92.
        DATA t93 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t93.
        DATA t94 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t94.
        DATA(t95) = t78.
        t94 = t95.
        t93 = t94->get_first_token( ).
        t92 = zcl_lnt_lsp_utils=>token_to_range( i_token = t93 ).
        t91 = t92.
        DATA(t96) = VALUE string( ).
        DATA(t97) = VALUE string( ).
        DATA(t98) = t3.
        DATA(t99) = strlen( t98 ).
        t97 = t98.
        TRANSLATE t97 TO LOWER CASE.
        t96 = t97.
        DATA t100 TYPE REF TO zcl_lnt_text_edit.
        CLEAR t100.
        DATA t101 TYPE REF TO zcl_lnt_range.
        CLEAR t101.
        DATA(t102) = t91.
        t101 = t102.
        DATA(t103) = VALUE string( ).
        DATA(t104) = t96.
        t103 = t104.
        t100 = NEW zcl_lnt_text_edit( i_range = t101 i_new_text = t103 ).
        CREATE OBJECT t100->zlnt_view_ownkeys_b0e8086400eb.
        t100->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t105 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t106 ).
        ENDIF.
        CREATE OBJECT t100->zlnt_json_ownkeys_70e5fd461788.
        t100->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t107) = |range|.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
        ENDIF.
        DATA(t109) = |newText|.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t109 p1 = t110 ).
        ENDIF.
        t90 = t100.
        t89->load( ).
        APPEND t90 TO t89->items.
        t89->save( ).
      ELSE.
        DATA(t111) = VALUE abap_bool( ).
        DATA t112 TYPE REF TO zif_lnt_statement.
        CLEAR t112.
        DATA(t113) = t70.
        t112 = t113->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t111 = xsdbool( t112 IS BOUND AND t112 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
        IF t111 = abap_true.
          DATA t114 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t114.
          DATA t115 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t115.
          DATA(t116) = t70.
          DATA(t117) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
          t115 = t116->find_first_expression( i_type_9913 = t117 ).
          t114 = t115.
          DATA(t118) = VALUE abap_bool( ).
          DATA t119 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t119.
          DATA(t120) = t114.
          t119 = t120.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t122.
          t121 = t122.
          DATA(t123) = VALUE abap_bool( ).
          DATA(t124) = t119.
          IF t124 IS INITIAL.
            t123 = abap_true.
          ENDIF.
          t118 = t123.
          IF t118 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t125) = t62.
          DATA t126 TYPE REF TO zcl_lnt_text_edit.
          CLEAR t126.
          DATA t127 TYPE REF TO zcl_lnt_range.
          CLEAR t127.
          DATA t128 TYPE REF TO zcl_lnt_range.
          CLEAR t128.
          DATA t129 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t129.
          DATA t130 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t130.
          DATA(t131) = t114.
          t130 = t131.
          t129 = t130->get_first_token( ).
          t128 = zcl_lnt_lsp_utils=>token_to_range( i_token = t129 ).
          t127 = t128.
          DATA(t132) = VALUE string( ).
          DATA(t133) = VALUE string( ).
          DATA(t134) = t3.
          DATA(t135) = strlen( t134 ).
          t133 = t134.
          TRANSLATE t133 TO LOWER CASE.
          t132 = t133.
          DATA t136 TYPE REF TO zcl_lnt_text_edit.
          CLEAR t136.
          DATA t137 TYPE REF TO zcl_lnt_range.
          CLEAR t137.
          DATA(t138) = t127.
          t137 = t138.
          DATA(t139) = VALUE string( ).
          DATA(t140) = t132.
          t139 = t140.
          t136 = NEW zcl_lnt_text_edit( i_range = t137 i_new_text = t139 ).
          CREATE OBJECT t136->zlnt_view_ownkeys_b0e8086400eb.
          t136->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t141 ).
          ENDIF.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t142 ).
          ENDIF.
          CREATE OBJECT t136->zlnt_json_ownkeys_70e5fd461788.
          t136->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t143) = |range|.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
          ENDIF.
          DATA(t145) = |newText|.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t145 p1 = t146 ).
          ENDIF.
          t126 = t136.
          t125->load( ).
          APPEND t126 TO t125->items.
          t125->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t147) = t60.
    DATA t148 TYPE REF TO zcl_lnt_text_document_edit.
    CLEAR t148.
    DATA t149 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
    CLEAR t149.
    DATA t150 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
    CLEAR t150.
    DATA(t151) = VALUE string( ).
    DATA(t152) = VALUE string( ).
    DATA t153 TYPE REF TO zcl_lnt_abstract_file.
    CLEAR t153.
    DATA t154 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t154.
    DATA(t155) = t16.
    t154 = t155.
    t153 = t154.
    DATA(t156) = VALUE string( ).
    DATA(t157) = t153.
    t156 = t157->filename.
    t152 = t156.
    t151 = t152.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA(t160) = 1.
    CLEAR t159.
    CREATE OBJECT t159.
    t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t159->nval = t160.
    t158 = t159.
    t150 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t151 i_version = t158 ).
    CREATE OBJECT t150->zlnt_view_ownkeys_b0e8086400eb.
    t150->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t161 ).
    ENDIF.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t162 ).
    ENDIF.
    CREATE OBJECT t150->zlnt_json_ownkeys_70e5fd461788.
    t150->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t163) = |uri|.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t163 p1 = t164 ).
    ENDIF.
    DATA(t165) = |version|.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t165 p1 = t166 ).
    ENDIF.
    t149 = t150.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t167.
    DATA(t168) = t62.
    t167 = t168.
    DATA t169 TYPE REF TO zcl_lnt_text_document_edit.
    CLEAR t169.
    DATA t170 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
    CLEAR t170.
    DATA(t171) = t149.
    t170 = t171.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t172.
    DATA(t173) = t167.
    t172 = t173.
    t169 = NEW zcl_lnt_text_document_edit( i_text_document = t170 i_edits = t172 ).
    CREATE OBJECT t169->zlnt_view_ownkeys_b0e8086400eb.
    t169->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    IF t169->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t174 ).
    ENDIF.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    IF t169->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t175 ).
    ENDIF.
    CREATE OBJECT t169->zlnt_json_ownkeys_70e5fd461788.
    t169->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t176) = |textDocument|.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    IF t169->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
    ENDIF.
    DATA(t178) = |edits|.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    IF t169->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
    ENDIF.
    t148 = t169.
    t147->load( ).
    APPEND t148 TO t147->items.
    t147->save( ).
    DATA t180 TYPE REF TO zcl_lnt_renamer_helper.
    CLEAR t180.
    DATA t181 TYPE REF TO zcl_lnt_renamer_helper.
    CLEAR t181.
    DATA(t182) = me->reg.
    t181 = NEW zcl_lnt_renamer_helper( i_reg_f149 = t182 ).
    t180 = t181.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t183.
    DATA(t184) = t60.
    DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t186.
    DATA(t187) = t180.
    DATA t188 TYPE REF TO zcl_lnt_class.
    CLEAR t188.
    DATA(t189) = t1.
    DATA t190 TYPE REF TO object.
    CLEAR t190.
    t190 = t189.
    t188 ?= t190.
    DATA(t191) = |CLSNAME|.
    DATA(t192) = t2.
    DATA(t193) = t3.
    DATA t194 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t194.
    t186 = t187->build_xml_file_edits( i_object_19cd = t188 i_xml_tag = t191 i_old_name = t192 i_new_name = t193 i_use_lower_case = t194 ).
    t185 ?= t186.
    t183 = t184->concat( p0 = t185 ).
    t60 = t183.
    DATA t195 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t195.
    DATA(t196) = t60.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t197.
    DATA(t198) = t180.
    DATA t199 TYPE REF TO zcl_lnt_class.
    CLEAR t199.
    DATA(t200) = t1.
    DATA t201 TYPE REF TO object.
    CLEAR t201.
    t201 = t200.
    t199 ?= t201.
    DATA(t202) = t2.
    DATA(t203) = t3.
    t197 = t198->rename_files( i_obj_1ed0 = t199 i_old_name = t202 i_name = t203 ).
    t195 = t196->concat( p0 = t197 ).
    t60 = t195.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t204.
    DATA(t205) = t60.
    DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t206.
    DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t207.
    DATA(t208) = t180.
    DATA t209 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t209.
    DATA t210 TYPE REF TO zcl_lnt_class.
    CLEAR t210.
    DATA t211 TYPE REF TO zcl_lnt_class.
    CLEAR t211.
    DATA(t212) = t1.
    DATA t213 TYPE REF TO object.
    CLEAR t213.
    t213 = t212.
    t211 ?= t213.
    t210 = t211.
    DATA t214 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t214.
    DATA t215 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t215.
    DATA t216 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t216.
    DATA t217 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t217.
    DATA t218 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t218.
    DATA t219 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t219.
    DATA t220 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t220.
    DATA(t221) = t210.
    t220 = t221->get_main_abap_file( ).
    t219 = t220.
    DATA t222 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t222.
    DATA(t223) = VALUE abap_bool( ).
    DATA(t224) = t219.
    IF t224 IS INITIAL.
      t223 = abap_true.
    ENDIF.
    IF t223 = abap_true.
      DATA t225 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t225.
      t222 = t225.
    ELSE.
      DATA t226 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t226.
      DATA t227 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t227.
      DATA t228 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t228.
      DATA(t229) = t219.
      t228 = t229.
      t227 = t228.
      DATA t230 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t230.
      DATA(t231) = t227.
      t230 = t231->info.
      t226 = t230.
      t222 = t226.
    ENDIF.
    t218 = t222.
    t217 = t218.
    DATA t232 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t232.
    DATA(t233) = VALUE abap_bool( ).
    DATA(t234) = t217.
    IF t234 IS INITIAL.
      t233 = abap_true.
    ENDIF.
    IF t233 = abap_true.
      DATA t235 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t235.
      t232 = t235.
    ELSE.
      DATA t236 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t236.
      DATA t237 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t237.
      DATA(t238) = t217.
      t237 = t238.
      DATA(t239) = VALUE string( ).
      DATA t240 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t240.
      DATA(t241) = t210.
      t240 = t241.
      DATA(t242) = VALUE string( ).
      DATA(t243) = t240.
      t242 = t243->name.
      t239 = t242.
      t236 = t237->get_class_definition_by_name( i_name = t239 ).
      t232 = t236.
    ENDIF.
    t216 = t232.
    t215 = t216.
    DATA t244 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t244.
    DATA(t245) = VALUE abap_bool( ).
    DATA(t246) = t215.
    IF t246 IS INITIAL.
      t245 = abap_true.
    ENDIF.
    IF t245 = abap_true.
      DATA t247 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t247.
      t244 = t247.
    ELSE.
      DATA t248 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t248.
      DATA t249 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t249.
      DATA(t250) = t215.
      t249 = t250.
      t248 = t249->identifier.
      t244 = t248.
    ENDIF.
    t214 = t244.
    t209 = t214.
    DATA(t251) = t2.
    DATA(t252) = t3.
    t207 = t208->rename_references( i_id = t209 i_old_name = t251 i_new_name = t252 ).
    t206 ?= t207.
    t204 = t205->concat( p0 = t206 ).
    t60 = t204.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t253.
    DATA(t254) = t60.
    DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t256.
    DATA(t257) = t180.
    DATA t258 TYPE REF TO zcl_lnt_class.
    CLEAR t258.
    DATA(t259) = t1.
    DATA t260 TYPE REF TO object.
    CLEAR t260.
    t260 = t259.
    t258 ?= t260.
    DATA(t261) = t2.
    DATA(t262) = t3.
    t256 = t257->rename_ddictabl_references( i_obj_1ed0 = t258 i_old_name = t261 i_new_name = t262 ).
    t255 ?= t256.
    t253 = t254->concat( p0 = t255 ).
    t60 = t253.
    DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t263.
    DATA(t264) = t60.
    DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t265.
    DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t266.
    DATA(t267) = t180.
    DATA(t268) = t2.
    DATA(t269) = t3.
    t266 = t267->rnm_icf_srvc_hndlr_rfrncs( i_old_name = t268 i_new_name = t269 ).
    t265 ?= t266.
    t263 = t264->concat( p0 = t265 ).
    t60 = t263.
    DATA t270 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t270.
    DATA t271 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t272.
    DATA(t273) = abap_true.
    IF t273 = abap_true.
      DATA(t274) = t60.
      t272 = t274.
    ELSE.
      DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t275.
      t272 = t275.
    ENDIF.
    t271 = t272.
    DATA t276 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t276.
    DATA t277 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t277.
    t276 = t277.
    DATA t278 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t278.
    DATA t279 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t279.
    t278 = t279.
    t270 = NEW zcl_lnt_shape_36bc2e57( i_changes = t276 i_document_changes = t271 i_change_annotations = t278 ).
    CREATE OBJECT t270->zlnt_view_ownkeys_b0e8086400eb.
    t270->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    IF t270->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t270->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t280 ).
    ENDIF.
    CREATE OBJECT t270->zlnt_json_ownkeys_70e5fd461788.
    t270->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t281) = |documentChanges|.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    IF t270->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t270->zlnt_json_ownkeys_70e5fd461788->put( p0 = t281 p1 = t282 ).
    ENDIF.
    result = t270.

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
