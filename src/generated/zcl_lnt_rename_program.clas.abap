* TS: src/objects/rename/rename_program.ts:12:1 RenameProgram
CLASS zcl_lnt_rename_program DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_object_renamer.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS b_e_in_sr_ob_rn_rn_pr_ts_rn_pr IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO object.
    METHODS build_edits IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_36bc2e57.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rename_program IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD b_e_in_sr_ob_rn_rn_pr_ts_rn_pr.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_ob_program ).
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
        DATA(t11) = |RenameProgram, not a program|.
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
    DATA t18 TYPE REF TO zcl_lnt_ob_program.
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
        DATA t38 TYPE REF TO zcl_lnt_ob_program.
        CLEAR t38.
        DATA t39 TYPE REF TO zcl_lnt_ob_program.
        CLEAR t39.
        DATA(t40) = t1.
        DATA t41 TYPE REF TO object.
        CLEAR t41.
        t41 = t40.
        t39 ?= t41.
        t38 = t39.
        DATA(t42) = |PROG|.
        t37 = t42.
        DATA(t43) = strlen( t36 ).
        t35 = |{ t36 }{ t37 }|.
        DATA(t44) = | |.
        DATA(t45) = strlen( t35 ).
        t34 = |{ t35 }{ t44 }|.
        DATA(t46) = VALUE string( ).
        DATA t47 TYPE REF TO zcl_lnt_abstract_object.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_ob_program.
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
    DATA t62 TYPE REF TO zcl_lnt_renamer_helper.
    CLEAR t62.
    DATA t63 TYPE REF TO zcl_lnt_renamer_helper.
    CLEAR t63.
    DATA(t64) = me->reg.
    t63 = NEW zcl_lnt_renamer_helper( i_reg_f149 = t64 ).
    t62 = t63.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t65.
    DATA(t66) = t60.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t68.
    DATA(t69) = t62.
    DATA t70 TYPE REF TO zcl_lnt_ob_program.
    CLEAR t70.
    DATA(t71) = t1.
    DATA t72 TYPE REF TO object.
    CLEAR t72.
    t72 = t71.
    t70 ?= t72.
    DATA(t73) = |NAME|.
    DATA(t74) = t2.
    DATA(t75) = t3.
    DATA t76 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t76.
    t68 = t69->build_xml_file_edits( i_object_19cd = t70 i_xml_tag = t73 i_old_name = t74 i_new_name = t75 i_use_lower_case = t76 ).
    t67 ?= t68.
    t65 = t66->concat( p0 = t67 ).
    t60 = t65.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    DATA(t78) = t60.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    DATA(t80) = t62.
    DATA t81 TYPE REF TO zcl_lnt_ob_program.
    CLEAR t81.
    DATA(t82) = t1.
    DATA t83 TYPE REF TO object.
    CLEAR t83.
    t83 = t82.
    t81 ?= t83.
    DATA(t84) = t2.
    DATA(t85) = t3.
    t79 = t80->rename_files( i_obj_1ed0 = t81 i_old_name = t84 i_name = t85 ).
    t77 = t78->concat( p0 = t79 ).
    t60 = t77.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t87.
    CREATE OBJECT t87.
    t86 = t87.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t88.
    DATA t89 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t89.
    DATA t90 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t90.
    DATA(t91) = t16.
    t90 = t91.
    t89 = t90.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t92.
    DATA(t93) = t89.
    t92 = t93->statements.
    t88 = t92.
    DATA t94 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t94.
    DATA t95 TYPE REF TO object.
    CLEAR t95.
    DATA(t96) = VALUE i( ).
    DO.
      t88->load( ).
      IF t96 >= lines( t88->items ).
        EXIT.
      ENDIF.
      CLEAR t95.
      READ TABLE t88->items INDEX t96 + 1 INTO t95.
      t96 = t96 + 1.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      CLEAR t94.
      IF t95 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t97 ?= t95.
        DATA t98 TYPE REF TO object.
        CLEAR t98.
        t98 = t97->as_ref( ).
        t94 ?= t98.
      ELSE.
        t94 ?= t95.
      ENDIF.
      DATA(t99) = VALUE abap_bool( ).
      DATA(t100) = VALUE abap_bool( ).
      DATA t101 TYPE REF TO zif_lnt_statement.
      CLEAR t101.
      DATA(t102) = t94.
      t101 = t102->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t100 = xsdbool( t101 IS BOUND AND t101 IS INSTANCE OF zcl_lnt_report ).
      t99 = t100.
      IF t100 = abap_false.
        DATA(t103) = VALUE abap_bool( ).
        DATA t104 TYPE REF TO zif_lnt_statement.
        CLEAR t104.
        DATA(t105) = t94.
        t104 = t105->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t103 = xsdbool( t104 IS BOUND AND t104 IS INSTANCE OF zcl_lnt_st_program ).
        t99 = t103.
      ENDIF.
      IF t99 = abap_true.
        DATA t106 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t106.
        DATA t107 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t107.
        DATA(t108) = t94.
        DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39.
        t107 = t108->find_first_expression( i_type_9913 = t109 ).
        t106 = t107.
        DATA(t110) = VALUE abap_bool( ).
        DATA(t111) = t106.
        t110 = xsdbool( t111 IS BOUND ).
        IF t110 = abap_true.
          DATA(t112) = t86.
          DATA t113 TYPE REF TO zcl_lnt_text_edit.
          CLEAR t113.
          DATA t114 TYPE REF TO zcl_lnt_range.
          CLEAR t114.
          DATA t115 TYPE REF TO zcl_lnt_range.
          CLEAR t115.
          DATA t116 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t116.
          DATA t117 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t117.
          DATA(t118) = t106.
          t117 = t118.
          t116 = t117->get_first_token( ).
          t115 = zcl_lnt_lsp_utils=>token_to_range( i_token = t116 ).
          t114 = t115.
          DATA(t119) = VALUE string( ).
          DATA(t120) = VALUE string( ).
          DATA(t121) = t3.
          DATA(t122) = strlen( t121 ).
          t120 = t121.
          TRANSLATE t120 TO LOWER CASE.
          t119 = t120.
          DATA t123 TYPE REF TO zcl_lnt_text_edit.
          CLEAR t123.
          DATA t124 TYPE REF TO zcl_lnt_range.
          CLEAR t124.
          DATA(t125) = t114.
          t124 = t125.
          DATA(t126) = VALUE string( ).
          DATA(t127) = t119.
          t126 = t127.
          t123 = NEW zcl_lnt_text_edit( i_range = t124 i_new_text = t126 ).
          CREATE OBJECT t123->zlnt_view_ownkeys_b0e8086400eb.
          t123->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t128 ).
          ENDIF.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t129 ).
          ENDIF.
          CREATE OBJECT t123->zlnt_json_ownkeys_70e5fd461788.
          t123->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t130) = |range|.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t131.
          IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
          ENDIF.
          DATA(t132) = |newText|.
          DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t133.
          IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
          ENDIF.
          t113 = t123.
          t112->load( ).
          APPEND t113 TO t112->items.
          t112->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t134) = VALUE abap_bool( ).
    DATA(t135) = VALUE i( ).
    DATA(t136) = t86.
    t136->load( ).
    t135 = lines( t136->items ).
    DATA(t137) = 0.
    t134 = xsdbool( t135 > t137 ).
    IF t134 = abap_true.
      DATA(t138) = t60.
      DATA t139 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t139.
      DATA t140 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t140.
      DATA t141 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t141.
      DATA(t142) = VALUE string( ).
      DATA(t143) = VALUE string( ).
      DATA t144 TYPE REF TO zcl_lnt_abstract_file.
      CLEAR t144.
      DATA t145 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t145.
      DATA(t146) = t16.
      t145 = t146.
      t144 = t145.
      DATA(t147) = VALUE string( ).
      DATA(t148) = t144.
      t147 = t148->filename.
      t143 = t147.
      t142 = t143.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      DATA(t151) = 1.
      CLEAR t150.
      CREATE OBJECT t150.
      t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t150->nval = t151.
      t149 = t150.
      t141 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t142 i_version = t149 ).
      CREATE OBJECT t141->zlnt_view_ownkeys_b0e8086400eb.
      t141->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t152.
      IF t141->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t152 ).
      ENDIF.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      IF t141->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t153 ).
      ENDIF.
      CREATE OBJECT t141->zlnt_json_ownkeys_70e5fd461788.
      t141->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t154) = |uri|.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      IF t141->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t141->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
      ENDIF.
      DATA(t156) = |version|.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      IF t141->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t141->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
      ENDIF.
      t140 = t141.
      DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t158.
      DATA(t159) = t86.
      t158 = t159.
      DATA t160 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t160.
      DATA t161 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t161.
      DATA(t162) = t140.
      t161 = t162.
      DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t163.
      DATA(t164) = t158.
      t163 = t164.
      t160 = NEW zcl_lnt_text_document_edit( i_text_document = t161 i_edits = t163 ).
      CREATE OBJECT t160->zlnt_view_ownkeys_b0e8086400eb.
      t160->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      IF t160->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t160->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t165 ).
      ENDIF.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      IF t160->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t160->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t166 ).
      ENDIF.
      CREATE OBJECT t160->zlnt_json_ownkeys_70e5fd461788.
      t160->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t167) = |textDocument|.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      IF t160->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t160->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
      ENDIF.
      DATA(t169) = |edits|.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t170.
      IF t160->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t160->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
      ENDIF.
      t139 = t160.
      t138->load( ).
      APPEND t139 TO t138->items.
      t138->save( ).
    ENDIF.
    DATA t171 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t171.
    DATA t172 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t172.
    DATA t173 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t173.
    DATA(t174) = me->reg.
    t173 = t174->get_objects( ).
    t172 = t173->iterate( ).
    t171 = t172.
    DO.
      DATA(t175) = abap_true.
      IF t175 = abap_false.
        EXIT.
      ENDIF.
      DATA t176 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t176.
      DATA t177 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t177.
      DATA(t178) = t171.
      t177 = t178->next( ).
      t176 = t177.
      DATA(t179) = VALUE abap_bool( ).
      DATA(t180) = t176.
      t179 = t180->done.
      IF t179 = abap_true.
        EXIT.
      ENDIF.
      DATA t181 TYPE REF TO zif_lnt_object.
      CLEAR t181.
      DATA t182 TYPE REF TO zif_lnt_object.
      CLEAR t182.
      DATA t183 TYPE REF TO zif_lnt_object.
      CLEAR t183.
      DATA(t184) = t176.
      t183 = t184->value.
      t182 = t183.
      t181 = t182.
      DATA(t185) = VALUE abap_bool( ).
      DATA(t186) = VALUE abap_bool( ).
      DATA(t187) = VALUE abap_bool( ).
      DATA(t188) = abap_false.
      t187 = t188.
      DATA t189 TYPE REF TO cx_root.
      CLEAR t189.
      TRY.
          DATA(t190) = VALUE abap_bool( ).
          DATA(t191) = VALUE abap_bool( ).
          DATA(t192) = t181.
          t191 = xsdbool( t192 IS BOUND AND t192 IS INSTANCE OF zcl_lnt_abap_object ).
          t190 = t191.
          IF t191 = abap_true.
            DATA(t193) = VALUE abap_bool( ).
            DATA t194 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t194.
            DATA(t195) = t181.
            DATA t196 TYPE REF TO object.
            CLEAR t196.
            t196 = t195.
            t194 ?= t196.
            DATA t197 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t197.
            DATA t198 TYPE REF TO zcl_lnt_ob_program.
            CLEAR t198.
            DATA(t199) = t1.
            DATA t200 TYPE REF TO object.
            CLEAR t200.
            t200 = t199.
            t198 ?= t200.
            t197 ?= t198.
            DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t201.
            DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t202.
            CLEAR t201.
            IF t194 IS BOUND.
              DATA t203 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t203.
              DATA t204 TYPE REF TO object.
              CLEAR t204.
              CLEAR t203.
              t204 = t194.
              TRY.
                  t201 ?= t204.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t201 IS NOT BOUND.
                TRY.
                    t203 ?= t194.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t203 IS BOUND.
                  t201 = t203->source( ).
                ENDIF.
                IF t201 IS NOT BOUND.
                  CREATE OBJECT t201.
                  t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t201->oval = t194.
                ENDIF.
              ENDIF.
            ENDIF.
            CLEAR t202.
            IF t197 IS BOUND.
              DATA t205 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t205.
              DATA t206 TYPE REF TO object.
              CLEAR t206.
              CLEAR t205.
              t206 = t197.
              TRY.
                  t202 ?= t206.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t202 IS NOT BOUND.
                TRY.
                    t205 ?= t197.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t205 IS BOUND.
                  t202 = t205->source( ).
                ENDIF.
                IF t202 IS NOT BOUND.
                  CREATE OBJECT t202.
                  t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t202->oval = t197.
                ENDIF.
              ENDIF.
            ENDIF.
            IF t201 IS BOUND.
              t193 = t201->strict_equals( t202 ).
            ELSE.
              t193 = xsdbool( t202 IS NOT BOUND ).
            ENDIF.
            t193 = xsdbool( t193 = abap_false ).
            t190 = t193.
          ENDIF.
          t186 = t190.
          DATA(t207) = abap_true.
          t187 = t207.
        CATCH cx_root INTO t189.
          DATA(t208) = VALUE abap_bool( ).
          DATA(t209) = t187.
          t208 = xsdbool( t209 = abap_false ).
          IF t208 = abap_true.
            DATA(t210) = t171.
            t210->close( ).
          ENDIF.
          RAISE EXCEPTION t189.
      ENDTRY.
      DATA(t211) = VALUE abap_bool( ).
      DATA(t212) = t187.
      t211 = xsdbool( t212 = abap_false ).
      IF t211 = abap_true.
        DATA(t213) = t171.
        t213->close( ).
      ENDIF.
      DATA(t214) = t186.
      t185 = t214.
      IF t185 = abap_true.
        DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t215.
        DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t216.
        DATA(t217) = VALUE abap_bool( ).
        DATA(t218) = abap_false.
        t217 = t218.
        DATA t219 TYPE REF TO cx_root.
        CLEAR t219.
        TRY.
            DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t220.
            DATA t221 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t221.
            DATA t222 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t222.
            DATA(t223) = t181.
            DATA t224 TYPE REF TO object.
            CLEAR t224.
            t224 = t223.
            t222 ?= t224.
            t221 = t222.
            DATA t225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t225.
            DATA(t226) = t221.
            t225 = t226->parsed.
            t220 = t225.
            t216 = t220.
            DATA(t227) = abap_true.
            t217 = t227.
          CATCH cx_root INTO t219.
            DATA(t228) = VALUE abap_bool( ).
            DATA(t229) = t217.
            t228 = xsdbool( t229 = abap_false ).
            IF t228 = abap_true.
              DATA(t230) = t171.
              t230->close( ).
            ENDIF.
            RAISE EXCEPTION t219.
        ENDTRY.
        DATA(t231) = VALUE abap_bool( ).
        DATA(t232) = t217.
        t231 = xsdbool( t232 = abap_false ).
        IF t231 = abap_true.
          DATA(t233) = t171.
          t233->close( ).
        ENDIF.
        DATA(t234) = t216.
        t215 = t234.
        DATA t235 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t235.
        DATA t236 TYPE REF TO object.
        CLEAR t236.
        DATA(t237) = VALUE i( ).
        DO.
          t215->load( ).
          IF t237 >= lines( t215->items ).
            EXIT.
          ENDIF.
          CLEAR t236.
          READ TABLE t215->items INDEX t237 + 1 INTO t236.
          t237 = t237 + 1.
          DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t238.
          CLEAR t235.
          IF t236 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t238 ?= t236.
            DATA t239 TYPE REF TO object.
            CLEAR t239.
            t239 = t238->as_ref( ).
            t235 ?= t239.
          ELSE.
            t235 ?= t236.
          ENDIF.
          DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t240.
          DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t241.
          DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t242.
          DATA(t243) = VALUE abap_bool( ).
          DATA(t244) = abap_false.
          t243 = t244.
          DATA t245 TYPE REF TO cx_root.
          CLEAR t245.
          TRY.
              DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t246.
              CREATE OBJECT t246.
              t242 = t246.
              DATA(t247) = abap_true.
              t243 = t247.
            CATCH cx_root INTO t245.
              DATA(t248) = VALUE abap_bool( ).
              DATA(t249) = t243.
              t248 = xsdbool( t249 = abap_false ).
              IF t248 = abap_true.
                DATA(t250) = t171.
                t250->close( ).
              ENDIF.
              RAISE EXCEPTION t245.
          ENDTRY.
          DATA(t251) = VALUE abap_bool( ).
          DATA(t252) = t243.
          t251 = xsdbool( t252 = abap_false ).
          IF t251 = abap_true.
            DATA(t253) = t171.
            t253->close( ).
          ENDIF.
          DATA(t254) = t242.
          t241 = t254.
          t240 = t241.
          DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t255.
          DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t256.
          DATA(t257) = VALUE abap_bool( ).
          DATA(t258) = abap_false.
          t257 = t258.
          DATA t259 TYPE REF TO cx_root.
          CLEAR t259.
          TRY.
              DATA t260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t260.
              DATA t261 TYPE REF TO zcl_lnt_abap_file.
              CLEAR t261.
              DATA(t262) = t235.
              t261 = t262.
              DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t263.
              DATA(t264) = t261.
              t263 = t264->statements.
              t260 = t263.
              t256 = t260.
              DATA(t265) = abap_true.
              t257 = t265.
            CATCH cx_root INTO t259.
              DATA(t266) = VALUE abap_bool( ).
              DATA(t267) = t257.
              t266 = xsdbool( t267 = abap_false ).
              IF t266 = abap_true.
                DATA(t268) = t171.
                t268->close( ).
              ENDIF.
              RAISE EXCEPTION t259.
          ENDTRY.
          DATA(t269) = VALUE abap_bool( ).
          DATA(t270) = t257.
          t269 = xsdbool( t270 = abap_false ).
          IF t269 = abap_true.
            DATA(t271) = t171.
            t271->close( ).
          ENDIF.
          DATA(t272) = t256.
          t255 = t272.
          DATA t273 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t273.
          DATA t274 TYPE REF TO object.
          CLEAR t274.
          DATA(t275) = VALUE i( ).
          DO.
            t255->load( ).
            IF t275 >= lines( t255->items ).
              EXIT.
            ENDIF.
            CLEAR t274.
            READ TABLE t255->items INDEX t275 + 1 INTO t274.
            t275 = t275 + 1.
            DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t276.
            CLEAR t273.
            IF t274 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t276 ?= t274.
              DATA t277 TYPE REF TO object.
              CLEAR t277.
              t277 = t276->as_ref( ).
              t273 ?= t277.
            ELSE.
              t273 ?= t274.
            ENDIF.
            DATA(t278) = VALUE abap_bool( ).
            DATA(t279) = VALUE abap_bool( ).
            DATA(t280) = VALUE abap_bool( ).
            DATA(t281) = abap_false.
            t280 = t281.
            DATA t282 TYPE REF TO cx_root.
            CLEAR t282.
            TRY.
                DATA(t283) = VALUE abap_bool( ).
                DATA(t284) = VALUE abap_bool( ).
                DATA(t285) = VALUE abap_bool( ).
                DATA t286 TYPE REF TO zif_lnt_statement.
                CLEAR t286.
                DATA(t287) = t273.
                t286 = t287->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                t285 = xsdbool( t286 IS BOUND AND t286 IS INSTANCE OF zcl_lnt_include ).
                t284 = t285.
                IF t285 = abap_false.
                  DATA(t288) = VALUE abap_bool( ).
                  DATA t289 TYPE REF TO zif_lnt_statement.
                  CLEAR t289.
                  DATA(t290) = t273.
                  t289 = t290->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                  t288 = xsdbool( t289 IS BOUND AND t289 IS INSTANCE OF zcl_lnt_st_submit ).
                  t284 = t288.
                ENDIF.
                t283 = t284.
                IF t284 = abap_false.
                  DATA(t291) = VALUE abap_bool( ).
                  DATA t292 TYPE REF TO zif_lnt_statement.
                  CLEAR t292.
                  DATA(t293) = t273.
                  t292 = t293->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                  t291 = xsdbool( t292 IS BOUND AND t292 IS INSTANCE OF zcl_lnt_st_perform ).
                  t283 = t291.
                ENDIF.
                t279 = t283.
                DATA(t294) = abap_true.
                t280 = t294.
              CATCH cx_root INTO t282.
                DATA(t295) = VALUE abap_bool( ).
                DATA(t296) = t280.
                t295 = xsdbool( t296 = abap_false ).
                IF t295 = abap_true.
                  DATA(t297) = t171.
                  t297->close( ).
                ENDIF.
                RAISE EXCEPTION t282.
            ENDTRY.
            DATA(t298) = VALUE abap_bool( ).
            DATA(t299) = t280.
            t298 = xsdbool( t299 = abap_false ).
            IF t298 = abap_true.
              DATA(t300) = t171.
              t300->close( ).
            ENDIF.
            DATA(t301) = t279.
            t278 = t301.
            IF t278 = abap_true.
              DATA t302 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t302.
              DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t303.
              DATA(t304) = VALUE abap_bool( ).
              DATA(t305) = abap_false.
              t304 = t305.
              DATA t306 TYPE REF TO cx_root.
              CLEAR t306.
              TRY.
                  DATA t307 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t307.
                  DATA(t308) = t273.
                  DATA(t309) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
                  t307 = t308->find_all_expressions( i_type_9913 = t309 ).
                  t303 = t307.
                  DATA(t310) = abap_true.
                  t304 = t310.
                CATCH cx_root INTO t306.
                  DATA(t311) = VALUE abap_bool( ).
                  DATA(t312) = t304.
                  t311 = xsdbool( t312 = abap_false ).
                  IF t311 = abap_true.
                    DATA(t313) = t171.
                    t313->close( ).
                  ENDIF.
                  RAISE EXCEPTION t306.
              ENDTRY.
              DATA(t314) = VALUE abap_bool( ).
              DATA(t315) = t304.
              t314 = xsdbool( t315 = abap_false ).
              IF t314 = abap_true.
                DATA(t316) = t171.
                t316->close( ).
              ENDIF.
              DATA(t317) = t303.
              t302 = t317.
              DATA t318 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t318.
              DATA t319 TYPE REF TO object.
              CLEAR t319.
              DATA(t320) = VALUE i( ).
              DO.
                t302->load( ).
                IF t320 >= lines( t302->items ).
                  EXIT.
                ENDIF.
                CLEAR t319.
                READ TABLE t302->items INDEX t320 + 1 INTO t319.
                t320 = t320 + 1.
                DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t321.
                CLEAR t318.
                IF t319 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t321 ?= t319.
                  DATA t322 TYPE REF TO object.
                  CLEAR t322.
                  t322 = t321->as_ref( ).
                  t318 ?= t322.
                ELSE.
                  t318 ?= t319.
                ENDIF.
                DATA(t323) = VALUE abap_bool( ).
                DATA(t324) = VALUE abap_bool( ).
                DATA(t325) = VALUE abap_bool( ).
                DATA(t326) = abap_false.
                t325 = t326.
                DATA t327 TYPE REF TO cx_root.
                CLEAR t327.
                TRY.
                    DATA(t328) = VALUE abap_bool( ).
                    DATA(t329) = VALUE abap_bool( ).
                    DATA(t330) = t318.
                    t329 = xsdbool( t330 IS BOUND ).
                    t328 = t329.
                    IF t329 = abap_true.
                      DATA(t331) = VALUE abap_bool( ).
                      DATA(t332) = VALUE string( ).
                      DATA(t333) = VALUE string( ).
                      DATA t334 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t334.
                      DATA t335 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t335.
                      DATA(t336) = t318.
                      t335 = t336->get_first_token( ).
                      t334 = t335.
                      DATA(t337) = VALUE string( ).
                      DATA(t338) = t334.
                      t337 = t338->str.
                      t333 = t337.
                      DATA(t339) = strlen( t333 ).
                      t332 = t333.
                      IF t332 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                        TRANSLATE t332 TO UPPER CASE.
                      ELSE.
                        t332 = zlnt_runtime_uppe_91169605024d=>full( t332 ).
                      ENDIF.
                      DATA(t340) = VALUE string( ).
                      DATA(t341) = t2.
                      DATA(t342) = strlen( t341 ).
                      t340 = t341.
                      IF t340 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                        TRANSLATE t340 TO UPPER CASE.
                      ELSE.
                        t340 = zlnt_runtime_uppe_91169605024d=>full( t340 ).
                      ENDIF.
                      t331 = xsdbool( t332 = t340 ).
                      t328 = t331.
                    ENDIF.
                    t324 = t328.
                    DATA(t343) = abap_true.
                    t325 = t343.
                  CATCH cx_root INTO t327.
                    DATA(t344) = VALUE abap_bool( ).
                    DATA(t345) = t325.
                    t344 = xsdbool( t345 = abap_false ).
                    IF t344 = abap_true.
                      DATA(t346) = t171.
                      t346->close( ).
                    ENDIF.
                    RAISE EXCEPTION t327.
                ENDTRY.
                DATA(t347) = VALUE abap_bool( ).
                DATA(t348) = t325.
                t347 = xsdbool( t348 = abap_false ).
                IF t347 = abap_true.
                  DATA(t349) = t171.
                  t349->close( ).
                ENDIF.
                DATA(t350) = t324.
                t323 = t350.
                IF t323 = abap_true.
                  DATA(t351) = VALUE f( ).
                  DATA(t352) = VALUE f( ).
                  DATA(t353) = VALUE abap_bool( ).
                  DATA(t354) = abap_false.
                  t353 = t354.
                  DATA t355 TYPE REF TO cx_root.
                  CLEAR t355.
                  TRY.
                      DATA(t356) = VALUE f( ).
                      DATA(t357) = VALUE i( ).
                      DATA(t358) = t240.
                      DATA t359 TYPE REF TO zcl_lnt_text_edit.
                      CLEAR t359.
                      DATA t360 TYPE REF TO zcl_lnt_range.
                      CLEAR t360.
                      DATA t361 TYPE REF TO zcl_lnt_range.
                      CLEAR t361.
                      DATA t362 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t362.
                      DATA(t363) = t318.
                      t362 = t363->get_first_token( ).
                      t361 = zcl_lnt_lsp_utils=>token_to_range( i_token = t362 ).
                      t360 = t361.
                      DATA(t364) = VALUE string( ).
                      DATA(t365) = VALUE string( ).
                      DATA(t366) = t3.
                      DATA(t367) = strlen( t366 ).
                      t365 = t366.
                      TRANSLATE t365 TO LOWER CASE.
                      t364 = t365.
                      DATA t368 TYPE REF TO zcl_lnt_text_edit.
                      CLEAR t368.
                      DATA t369 TYPE REF TO zcl_lnt_range.
                      CLEAR t369.
                      DATA(t370) = t360.
                      t369 = t370.
                      DATA(t371) = VALUE string( ).
                      DATA(t372) = t364.
                      t371 = t372.
                      t368 = NEW zcl_lnt_text_edit( i_range = t369 i_new_text = t371 ).
                      CREATE OBJECT t368->zlnt_view_ownkeys_b0e8086400eb.
                      t368->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t373.
                      IF t368->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t368->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t373 ).
                      ENDIF.
                      DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t374.
                      IF t368->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t368->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t374 ).
                      ENDIF.
                      CREATE OBJECT t368->zlnt_json_ownkeys_70e5fd461788.
                      t368->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t375) = |range|.
                      DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t376.
                      IF t368->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t368->zlnt_json_ownkeys_70e5fd461788->put( p0 = t375 p1 = t376 ).
                      ENDIF.
                      DATA(t377) = |newText|.
                      DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t378.
                      IF t368->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t368->zlnt_json_ownkeys_70e5fd461788->put( p0 = t377 p1 = t378 ).
                      ENDIF.
                      t359 = t368.
                      t358->load( ).
                      APPEND t359 TO t358->items.
                      t357 = lines( t358->items ).
                      t358->save( ).
                      t356 = t357.
                      t352 = t356.
                      DATA(t379) = abap_true.
                      t353 = t379.
                    CATCH cx_root INTO t355.
                      DATA(t380) = VALUE abap_bool( ).
                      DATA(t381) = t353.
                      t380 = xsdbool( t381 = abap_false ).
                      IF t380 = abap_true.
                        DATA(t382) = t171.
                        t382->close( ).
                      ENDIF.
                      RAISE EXCEPTION t355.
                  ENDTRY.
                  DATA(t383) = VALUE abap_bool( ).
                  DATA(t384) = t353.
                  t383 = xsdbool( t384 = abap_false ).
                  IF t383 = abap_true.
                    DATA(t385) = t171.
                    t385->close( ).
                  ENDIF.
                  DATA(t386) = t352.
                  t351 = t386.
                ENDIF.
              ENDDO.
            ENDIF.
          ENDDO.
          DATA(t387) = VALUE abap_bool( ).
          DATA(t388) = VALUE abap_bool( ).
          DATA(t389) = VALUE abap_bool( ).
          DATA(t390) = abap_false.
          t389 = t390.
          DATA t391 TYPE REF TO cx_root.
          CLEAR t391.
          TRY.
              DATA(t392) = VALUE abap_bool( ).
              DATA(t393) = VALUE f( ).
              DATA(t394) = VALUE i( ).
              DATA(t395) = t240.
              t395->load( ).
              t394 = lines( t395->items ).
              t393 = t394.
              DATA(t396) = CONV f( 0 ).
              t392 = xsdbool( t393 > t396 ).
              t388 = t392.
              DATA(t397) = abap_true.
              t389 = t397.
            CATCH cx_root INTO t391.
              DATA(t398) = VALUE abap_bool( ).
              DATA(t399) = t389.
              t398 = xsdbool( t399 = abap_false ).
              IF t398 = abap_true.
                DATA(t400) = t171.
                t400->close( ).
              ENDIF.
              RAISE EXCEPTION t391.
          ENDTRY.
          DATA(t401) = VALUE abap_bool( ).
          DATA(t402) = t389.
          t401 = xsdbool( t402 = abap_false ).
          IF t401 = abap_true.
            DATA(t403) = t171.
            t403->close( ).
          ENDIF.
          DATA(t404) = t388.
          t387 = t404.
          IF t387 = abap_true.
            DATA(t405) = VALUE f( ).
            DATA(t406) = VALUE f( ).
            DATA(t407) = VALUE abap_bool( ).
            DATA(t408) = abap_false.
            t407 = t408.
            DATA t409 TYPE REF TO cx_root.
            CLEAR t409.
            TRY.
                DATA(t410) = VALUE f( ).
                DATA(t411) = VALUE i( ).
                DATA(t412) = t60.
                DATA t413 TYPE REF TO zcl_lnt_text_document_edit.
                CLEAR t413.
                DATA t414 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
                CLEAR t414.
                DATA t415 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
                CLEAR t415.
                DATA(t416) = VALUE string( ).
                DATA(t417) = VALUE string( ).
                DATA t418 TYPE REF TO zcl_lnt_abstract_file.
                CLEAR t418.
                DATA(t419) = t235.
                t418 = t419.
                DATA(t420) = VALUE string( ).
                DATA(t421) = t418.
                t420 = t421->filename.
                t417 = t420.
                t416 = t417.
                DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t422.
                DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t423.
                DATA(t424) = CONV f( 1 ).
                CLEAR t423.
                CREATE OBJECT t423.
                t423->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
                t423->nval = t424.
                t422 = t423.
                t415 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t416 i_version = t422 ).
                CREATE OBJECT t415->zlnt_view_ownkeys_b0e8086400eb.
                t415->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t425.
                IF t415->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t415->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t425 ).
                ENDIF.
                DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t426.
                IF t415->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t415->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t426 ).
                ENDIF.
                CREATE OBJECT t415->zlnt_json_ownkeys_70e5fd461788.
                t415->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t427) = |uri|.
                DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t428.
                IF t415->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t415->zlnt_json_ownkeys_70e5fd461788->put( p0 = t427 p1 = t428 ).
                ENDIF.
                DATA(t429) = |version|.
                DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t430.
                IF t415->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t415->zlnt_json_ownkeys_70e5fd461788->put( p0 = t429 p1 = t430 ).
                ENDIF.
                t414 = t415.
                DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t431.
                DATA(t432) = t240.
                t431 = t432.
                DATA t433 TYPE REF TO zcl_lnt_text_document_edit.
                CLEAR t433.
                DATA t434 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
                CLEAR t434.
                DATA(t435) = t414.
                t434 = t435.
                DATA t436 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t436.
                DATA(t437) = t431.
                t436 = t437.
                t433 = NEW zcl_lnt_text_document_edit( i_text_document = t434 i_edits = t436 ).
                CREATE OBJECT t433->zlnt_view_ownkeys_b0e8086400eb.
                t433->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t438.
                IF t433->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t433->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t438 ).
                ENDIF.
                DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t439.
                IF t433->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t433->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t439 ).
                ENDIF.
                CREATE OBJECT t433->zlnt_json_ownkeys_70e5fd461788.
                t433->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t440) = |textDocument|.
                DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t441.
                IF t433->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t433->zlnt_json_ownkeys_70e5fd461788->put( p0 = t440 p1 = t441 ).
                ENDIF.
                DATA(t442) = |edits|.
                DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t443.
                IF t433->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t433->zlnt_json_ownkeys_70e5fd461788->put( p0 = t442 p1 = t443 ).
                ENDIF.
                t413 = t433.
                t412->load( ).
                APPEND t413 TO t412->items.
                t411 = lines( t412->items ).
                t412->save( ).
                t410 = t411.
                t406 = t410.
                DATA(t444) = abap_true.
                t407 = t444.
              CATCH cx_root INTO t409.
                DATA(t445) = VALUE abap_bool( ).
                DATA(t446) = t407.
                t445 = xsdbool( t446 = abap_false ).
                IF t445 = abap_true.
                  DATA(t447) = t171.
                  t447->close( ).
                ENDIF.
                RAISE EXCEPTION t409.
            ENDTRY.
            DATA(t448) = VALUE abap_bool( ).
            DATA(t449) = t407.
            t448 = xsdbool( t449 = abap_false ).
            IF t448 = abap_true.
              DATA(t450) = t171.
              t450->close( ).
            ENDIF.
            DATA(t451) = t406.
            t405 = t451.
          ENDIF.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA t452 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t452.
    DATA t453 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t453.
    DATA t454 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t454.
    DATA(t455) = abap_true.
    IF t455 = abap_true.
      DATA(t456) = t60.
      t454 = t456.
    ELSE.
      DATA t457 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t457.
      t454 = t457.
    ENDIF.
    t453 = t454.
    DATA t458 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t458.
    DATA t459 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t459.
    t458 = t459.
    DATA t460 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t460.
    DATA t461 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t461.
    t460 = t461.
    t452 = NEW zcl_lnt_shape_36bc2e57( i_changes = t458 i_document_changes = t453 i_change_annotations = t460 ).
    CREATE OBJECT t452->zlnt_view_ownkeys_b0e8086400eb.
    t452->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t462.
    IF t452->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t452->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t462 ).
    ENDIF.
    CREATE OBJECT t452->zlnt_json_ownkeys_70e5fd461788.
    t452->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t463) = |documentChanges|.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t464.
    IF t452->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t452->zlnt_json_ownkeys_70e5fd461788->put( p0 = t463 p1 = t464 ).
    ENDIF.
    result = t452.

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
    t5 = me->b_e_in_sr_ob_rn_rn_pr_ts_rn_pr( i_obj_1ed0 = t6 i_old_name = t7 i_new_name = t8 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1334_41fcfa59a96e.
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_object_renamer~build_edits.
    result = me->build_edits( i_obj_1ed0 = i_obj_1ed0 i_old_name = i_old_name i_new_name = i_new_name ).
  ENDMETHOD.
ENDCLASS.
