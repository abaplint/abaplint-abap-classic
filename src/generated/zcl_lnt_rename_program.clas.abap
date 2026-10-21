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
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD b_e_in_sr_ob_rn_rn_pr_ts_rn_pr.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_program ) = abap_false ) = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = |RenameProgram, not a program|.
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
    DATA t18 TYPE REF TO zcl_lnt_ob_program.
    t18 ?= t1.
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
      DATA t38 TYPE REF TO zcl_lnt_ob_program.
      DATA t39 TYPE REF TO zcl_lnt_ob_program.
      t39 ?= t1.
      t38 = t39.
      DATA(t43) = strlen( t36 ).
      t35 = |{ t36 }{ |PROG| }|.
      DATA(t45) = strlen( t35 ).
      t34 = |{ t35 }{ | | }|.
      DATA(t46) = VALUE string( ).
      DATA t47 TYPE REF TO zcl_lnt_abstract_object.
      DATA t48 TYPE REF TO zcl_lnt_ob_program.
      t48 ?= t1.
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
    DATA t62 TYPE REF TO zcl_lnt_renamer_helper.
    DATA(t64) = me->reg.
    t62 = NEW zcl_lnt_renamer_helper( i_reg_f149 = t64 ).
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t70 TYPE REF TO zcl_lnt_ob_program.
    t70 ?= t1.
    DATA t76 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t68 = t62->build_xml_file_edits( i_object_19cd = t70 i_xml_tag = |NAME| i_old_name = t2 i_new_name = t3 i_use_lower_case = t76 ).
    t67 ?= t68.
    t60 = t60->concat( p0 = t67 ).
    DATA t81 TYPE REF TO zcl_lnt_ob_program.
    t81 ?= t1.
    t60 = t60->concat( p0 = t62->rename_files( i_obj_1ed0 = t81 i_old_name = t2 i_name = t3 ) ).
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t86.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t88 = t16->statements.
    DATA t94 TYPE REF TO zcl_lnt_statement_node.
    DATA t95 TYPE REF TO object.
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
        t98 = t97->as_ref( ).
        t94 ?= t98.
      ELSE.
        t94 ?= t95.
      ENDIF.
      DATA(t99) = VALUE abap_bool( ).
      DATA(t100) = VALUE abap_bool( ).
      DATA t101 TYPE REF TO zif_lnt_statement.
      t101 = t94->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t100 = xsdbool( t101 IS BOUND AND t101 IS INSTANCE OF zcl_lnt_report ).
      t99 = t100.
      IF t100 = abap_false.
        DATA t104 TYPE REF TO zif_lnt_statement.
        t104 = t94->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t99 = xsdbool( t104 IS BOUND AND t104 IS INSTANCE OF zcl_lnt_st_program ).
      ENDIF.
      IF t99 = abap_true.
        DATA t106 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t106.
        DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39.
        t106 = t94->find_first_expression( i_type_9913 = t109 ).
        IF xsdbool( t106 IS BOUND ) = abap_true.
          DATA t113 TYPE REF TO zcl_lnt_text_edit.
          CLEAR t113.
          DATA t115 TYPE REF TO zcl_lnt_range.
          CLEAR t115.
          t115 = zcl_lnt_lsp_utils=>token_to_range( i_token = t106->get_first_token( ) ).
          DATA(t120) = VALUE string( ).
          DATA(t122) = strlen( t3 ).
          t120 = t3.
          TRANSLATE t120 TO LOWER CASE.
          DATA t123 TYPE REF TO zcl_lnt_text_edit.
          t123 = NEW zcl_lnt_text_edit( i_range = t115 i_new_text = t120 ).
          CREATE OBJECT t123->zlnt_view_ownkeys_b0e8086400eb.
          t123->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t128 ).
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t129 ).
          ENDIF.
          CREATE OBJECT t123->zlnt_json_ownkeys_70e5fd461788.
          t123->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t131.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t131 ).
          DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t133.
          IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t133 ).
          ENDIF.
          t113 = t123.
          t86->load( ).
          APPEND t113 TO t86->items.
          t86->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    t86->load( ).
    IF xsdbool( lines( t86->items ) > 0 ) = abap_true.
      DATA t139 TYPE REF TO zcl_lnt_text_document_edit.
      DATA t141 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      DATA(t142) = VALUE string( ).
      DATA t144 TYPE REF TO zcl_lnt_abstract_file.
      t144 = t16.
      t142 = t144->filename.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t150.
      t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t150->nval = 1.
      t141 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t142 i_version = t150 ).
      CREATE OBJECT t141->zlnt_view_ownkeys_b0e8086400eb.
      t141->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t152 ).
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t141->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t153 ).
      ENDIF.
      CREATE OBJECT t141->zlnt_json_ownkeys_70e5fd461788.
      t141->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t141->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t155 ).
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t141->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t141->zlnt_json_ownkeys_70e5fd461788->put( p0 = |version| p1 = t157 ).
      ENDIF.
      DATA t160 TYPE REF TO zcl_lnt_text_document_edit.
      t160 = NEW zcl_lnt_text_document_edit( i_text_document = t141 i_edits = t86 ).
      CREATE OBJECT t160->zlnt_view_ownkeys_b0e8086400eb.
      t160->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t160->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t165 ).
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t160->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t160->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t166 ).
      ENDIF.
      CREATE OBJECT t160->zlnt_json_ownkeys_70e5fd461788.
      t160->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t160->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textDocument| p1 = t168 ).
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t160->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t160->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edits| p1 = t170 ).
      ENDIF.
      t139 = t160.
      t60->load( ).
      APPEND t139 TO t60->items.
      t60->save( ).
    ENDIF.
    DATA t171 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t171 = me->reg->get_objects( )->iterate( ).
    DO.
      DATA t176 TYPE REF TO zcl_lnt_generator_17955b8b.
      t176 = t171->next( ).
      IF t176->done = abap_true.
        EXIT.
      ENDIF.
      DATA t181 TYPE REF TO zif_lnt_object.
      t181 = t176->value.
      DATA(t186) = VALUE abap_bool( ).
      DATA(t187) = VALUE abap_bool( ).
      t187 = abap_false.
      DATA t189 TYPE REF TO cx_root.
      CLEAR t189.
      TRY.
          DATA(t190) = VALUE abap_bool( ).
          DATA(t191) = VALUE abap_bool( ).
          t191 = xsdbool( t181 IS BOUND AND t181 IS INSTANCE OF zcl_lnt_abap_object ).
          t190 = t191.
          IF t191 = abap_true.
            DATA(t193) = VALUE abap_bool( ).
            DATA t194 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t194.
            DATA t196 TYPE REF TO object.
            CLEAR t196.
            t196 = t181.
            t194 ?= t196.
            DATA t197 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t197.
            DATA t198 TYPE REF TO zcl_lnt_ob_program.
            CLEAR t198.
            DATA t200 TYPE REF TO object.
            CLEAR t200.
            t200 = t1.
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
          t187 = abap_true.
        CATCH cx_root INTO t189.
          IF xsdbool( t187 = abap_false ) = abap_true.
            t171->close( ).
          ENDIF.
          RAISE EXCEPTION t189.
      ENDTRY.
      IF xsdbool( t187 = abap_false ) = abap_true.
        t171->close( ).
      ENDIF.
      IF t186 = abap_true.
        DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t215.
        DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t216.
        DATA(t217) = VALUE abap_bool( ).
        t217 = abap_false.
        DATA t219 TYPE REF TO cx_root.
        CLEAR t219.
        TRY.
            DATA t222 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t222.
            DATA t224 TYPE REF TO object.
            CLEAR t224.
            t224 = t181.
            t222 ?= t224.
            t216 = t222->parsed.
            t217 = abap_true.
          CATCH cx_root INTO t219.
            IF xsdbool( t217 = abap_false ) = abap_true.
              t171->close( ).
            ENDIF.
            RAISE EXCEPTION t219.
        ENDTRY.
        IF xsdbool( t217 = abap_false ) = abap_true.
          t171->close( ).
        ENDIF.
        t215 = t216.
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
            t239 = t238->as_ref( ).
            t235 ?= t239.
          ELSE.
            t235 ?= t236.
          ENDIF.
          DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t240.
          DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t242.
          DATA(t243) = VALUE abap_bool( ).
          t243 = abap_false.
          DATA t245 TYPE REF TO cx_root.
          CLEAR t245.
          TRY.
              DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t246.
              CREATE OBJECT t246.
              t242 = t246.
              t243 = abap_true.
            CATCH cx_root INTO t245.
              IF xsdbool( t243 = abap_false ) = abap_true.
                t171->close( ).
              ENDIF.
              RAISE EXCEPTION t245.
          ENDTRY.
          IF xsdbool( t243 = abap_false ) = abap_true.
            t171->close( ).
          ENDIF.
          t240 = t242.
          DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t255.
          DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t256.
          DATA(t257) = VALUE abap_bool( ).
          t257 = abap_false.
          DATA t259 TYPE REF TO cx_root.
          CLEAR t259.
          TRY.
              t256 = t235->statements.
              t257 = abap_true.
            CATCH cx_root INTO t259.
              IF xsdbool( t257 = abap_false ) = abap_true.
                t171->close( ).
              ENDIF.
              RAISE EXCEPTION t259.
          ENDTRY.
          IF xsdbool( t257 = abap_false ) = abap_true.
            t171->close( ).
          ENDIF.
          t255 = t256.
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
              t277 = t276->as_ref( ).
              t273 ?= t277.
            ELSE.
              t273 ?= t274.
            ENDIF.
            DATA(t279) = VALUE abap_bool( ).
            DATA(t280) = VALUE abap_bool( ).
            t280 = abap_false.
            DATA t282 TYPE REF TO cx_root.
            CLEAR t282.
            TRY.
                DATA(t283) = VALUE abap_bool( ).
                DATA(t284) = VALUE abap_bool( ).
                DATA(t285) = VALUE abap_bool( ).
                DATA t286 TYPE REF TO zif_lnt_statement.
                CLEAR t286.
                t286 = t273->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                t285 = xsdbool( t286 IS BOUND AND t286 IS INSTANCE OF zcl_lnt_include ).
                t284 = t285.
                IF t285 = abap_false.
                  DATA t289 TYPE REF TO zif_lnt_statement.
                  CLEAR t289.
                  t289 = t273->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                  t284 = xsdbool( t289 IS BOUND AND t289 IS INSTANCE OF zcl_lnt_st_submit ).
                ENDIF.
                t283 = t284.
                IF t284 = abap_false.
                  DATA t292 TYPE REF TO zif_lnt_statement.
                  CLEAR t292.
                  t292 = t273->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                  t283 = xsdbool( t292 IS BOUND AND t292 IS INSTANCE OF zcl_lnt_st_perform ).
                ENDIF.
                t279 = t283.
                t280 = abap_true.
              CATCH cx_root INTO t282.
                IF xsdbool( t280 = abap_false ) = abap_true.
                  t171->close( ).
                ENDIF.
                RAISE EXCEPTION t282.
            ENDTRY.
            IF xsdbool( t280 = abap_false ) = abap_true.
              t171->close( ).
            ENDIF.
            IF t279 = abap_true.
              DATA t302 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t302.
              DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t303.
              DATA(t304) = VALUE abap_bool( ).
              t304 = abap_false.
              DATA t306 TYPE REF TO cx_root.
              CLEAR t306.
              TRY.
                  DATA(t309) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
                  t303 = t273->find_all_expressions( i_type_9913 = t309 ).
                  t304 = abap_true.
                CATCH cx_root INTO t306.
                  IF xsdbool( t304 = abap_false ) = abap_true.
                    t171->close( ).
                  ENDIF.
                  RAISE EXCEPTION t306.
              ENDTRY.
              IF xsdbool( t304 = abap_false ) = abap_true.
                t171->close( ).
              ENDIF.
              t302 = t303.
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
                  t322 = t321->as_ref( ).
                  t318 ?= t322.
                ELSE.
                  t318 ?= t319.
                ENDIF.
                DATA(t324) = VALUE abap_bool( ).
                DATA(t325) = VALUE abap_bool( ).
                t325 = abap_false.
                DATA t327 TYPE REF TO cx_root.
                CLEAR t327.
                TRY.
                    DATA(t328) = VALUE abap_bool( ).
                    DATA(t329) = VALUE abap_bool( ).
                    t329 = xsdbool( t318 IS BOUND ).
                    t328 = t329.
                    IF t329 = abap_true.
                      DATA(t332) = VALUE string( ).
                      DATA(t333) = VALUE string( ).
                      t333 = t318->get_first_token( )->str.
                      DATA(t339) = strlen( t333 ).
                      t332 = t333.
                      IF t332 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                        TRANSLATE t332 TO UPPER CASE.
                      ELSE.
                        t332 = zlnt_runtime_uppe_91169605024d=>full( t332 ).
                      ENDIF.
                      DATA(t340) = VALUE string( ).
                      DATA(t342) = strlen( t2 ).
                      t340 = t2.
                      IF t340 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                        TRANSLATE t340 TO UPPER CASE.
                      ELSE.
                        t340 = zlnt_runtime_uppe_91169605024d=>full( t340 ).
                      ENDIF.
                      t328 = xsdbool( t332 = t340 ).
                    ENDIF.
                    t324 = t328.
                    t325 = abap_true.
                  CATCH cx_root INTO t327.
                    IF xsdbool( t325 = abap_false ) = abap_true.
                      t171->close( ).
                    ENDIF.
                    RAISE EXCEPTION t327.
                ENDTRY.
                IF xsdbool( t325 = abap_false ) = abap_true.
                  t171->close( ).
                ENDIF.
                IF t324 = abap_true.
                  DATA(t351) = VALUE f( ).
                  DATA(t352) = VALUE f( ).
                  DATA(t353) = VALUE abap_bool( ).
                  t353 = abap_false.
                  DATA t355 TYPE REF TO cx_root.
                  CLEAR t355.
                  TRY.
                      DATA(t356) = VALUE f( ).
                      DATA(t357) = VALUE i( ).
                      DATA t359 TYPE REF TO zcl_lnt_text_edit.
                      CLEAR t359.
                      DATA t361 TYPE REF TO zcl_lnt_range.
                      CLEAR t361.
                      t361 = zcl_lnt_lsp_utils=>token_to_range( i_token = t318->get_first_token( ) ).
                      DATA(t365) = VALUE string( ).
                      DATA(t367) = strlen( t3 ).
                      t365 = t3.
                      TRANSLATE t365 TO LOWER CASE.
                      DATA t368 TYPE REF TO zcl_lnt_text_edit.
                      CLEAR t368.
                      t368 = NEW zcl_lnt_text_edit( i_range = t361 i_new_text = t365 ).
                      CREATE OBJECT t368->zlnt_view_ownkeys_b0e8086400eb.
                      t368->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t373.
                      t368->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t373 ).
                      DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t374.
                      IF t368->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t368->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t374 ).
                      ENDIF.
                      CREATE OBJECT t368->zlnt_json_ownkeys_70e5fd461788.
                      t368->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t376.
                      t368->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t376 ).
                      DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t378.
                      IF t368->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t368->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t378 ).
                      ENDIF.
                      t359 = t368.
                      t240->load( ).
                      APPEND t359 TO t240->items.
                      t357 = lines( t240->items ).
                      t240->save( ).
                      t356 = t357.
                      t352 = t356.
                      t353 = abap_true.
                    CATCH cx_root INTO t355.
                      IF xsdbool( t353 = abap_false ) = abap_true.
                        t171->close( ).
                      ENDIF.
                      RAISE EXCEPTION t355.
                  ENDTRY.
                  IF xsdbool( t353 = abap_false ) = abap_true.
                    t171->close( ).
                  ENDIF.
                  t351 = t352.
                ENDIF.
              ENDDO.
            ENDIF.
          ENDDO.
          DATA(t388) = VALUE abap_bool( ).
          DATA(t389) = VALUE abap_bool( ).
          t389 = abap_false.
          DATA t391 TYPE REF TO cx_root.
          CLEAR t391.
          TRY.
              DATA(t393) = VALUE f( ).
              t240->load( ).
              t393 = lines( t240->items ).
              t388 = xsdbool( t393 > CONV f( 0 ) ).
              t389 = abap_true.
            CATCH cx_root INTO t391.
              IF xsdbool( t389 = abap_false ) = abap_true.
                t171->close( ).
              ENDIF.
              RAISE EXCEPTION t391.
          ENDTRY.
          IF xsdbool( t389 = abap_false ) = abap_true.
            t171->close( ).
          ENDIF.
          IF t388 = abap_true.
            DATA(t405) = VALUE f( ).
            DATA(t406) = VALUE f( ).
            DATA(t407) = VALUE abap_bool( ).
            t407 = abap_false.
            DATA t409 TYPE REF TO cx_root.
            CLEAR t409.
            TRY.
                DATA(t410) = VALUE f( ).
                DATA(t411) = VALUE i( ).
                DATA t413 TYPE REF TO zcl_lnt_text_document_edit.
                CLEAR t413.
                DATA t415 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
                CLEAR t415.
                DATA(t416) = VALUE string( ).
                DATA t418 TYPE REF TO zcl_lnt_abstract_file.
                t418 = t235.
                t416 = t418->filename.
                DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t423.
                CLEAR t423.
                CREATE OBJECT t423.
                t423->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
                t423->nval = CONV f( 1 ).
                t415 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t416 i_version = t423 ).
                CREATE OBJECT t415->zlnt_view_ownkeys_b0e8086400eb.
                t415->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t425.
                t415->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t425 ).
                DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t426.
                IF t415->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t415->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t426 ).
                ENDIF.
                CREATE OBJECT t415->zlnt_json_ownkeys_70e5fd461788.
                t415->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t428.
                t415->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t428 ).
                DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t430.
                IF t415->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t415->zlnt_json_ownkeys_70e5fd461788->put( p0 = |version| p1 = t430 ).
                ENDIF.
                DATA t433 TYPE REF TO zcl_lnt_text_document_edit.
                CLEAR t433.
                t433 = NEW zcl_lnt_text_document_edit( i_text_document = t415 i_edits = t240 ).
                CREATE OBJECT t433->zlnt_view_ownkeys_b0e8086400eb.
                t433->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t438.
                t433->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t438 ).
                DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t439.
                IF t433->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t433->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t439 ).
                ENDIF.
                CREATE OBJECT t433->zlnt_json_ownkeys_70e5fd461788.
                t433->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t441.
                t433->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textDocument| p1 = t441 ).
                DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t443.
                IF t433->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t433->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edits| p1 = t443 ).
                ENDIF.
                t413 = t433.
                t60->load( ).
                APPEND t413 TO t60->items.
                t411 = lines( t60->items ).
                t60->save( ).
                t410 = t411.
                t406 = t410.
                t407 = abap_true.
              CATCH cx_root INTO t409.
                IF xsdbool( t407 = abap_false ) = abap_true.
                  t171->close( ).
                ENDIF.
                RAISE EXCEPTION t409.
            ENDTRY.
            IF xsdbool( t407 = abap_false ) = abap_true.
              t171->close( ).
            ENDIF.
            t405 = t406.
          ENDIF.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA t452 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t458 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    DATA t460 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    t452 = NEW zcl_lnt_shape_36bc2e57( i_changes = t458 i_document_changes = t60 i_change_annotations = t460 ).
    CREATE OBJECT t452->zlnt_view_ownkeys_b0e8086400eb.
    t452->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t452->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t462 ).
    CREATE OBJECT t452->zlnt_json_ownkeys_70e5fd461788.
    t452->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t452->zlnt_json_ownkeys_70e5fd461788->put( p0 = |documentChanges| p1 = t464 ).
    result = t452.

  ENDMETHOD.

  METHOD build_edits.
    DATA t4 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t5 TYPE REF TO object.
    DATA(t6) = i_obj_1ed0.
    DATA(t7) = i_old_name.
    DATA(t8) = i_new_name.
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
