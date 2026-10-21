* TS: src/objects/rename/renamer_helper.ts:16:1 RenamerHelper
CLASS zcl_lnt_renamer_helper DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS rename_references IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS rename_ddic_code_references IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS rename_ddictabl_references IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS rename_ddicdtel_references IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS rename_ddicttyp_references IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS rename_ddicauth_references IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_xml_file_edits IMPORTING i_object_19cd TYPE REF TO zcl_lnt_abstract_object i_xml_tag TYPE string i_old_name TYPE string i_new_name TYPE string i_use_lower_case TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING
    VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_url_file_edits IMPORTING i_object_19cd TYPE REF TO zcl_lnt_abstract_object i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS rename_files IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_old_name TYPE string i_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS replace_refs IMPORTING i_refs TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_references IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_identifier TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS rnm_icf_srvc_hndlr_rfrncs IMPORTING i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS fn_callback_168518 IMPORTING i_a TYPE REF TO zcl_lnt_fi_identifier i_b TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_renamer_helper IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD rename_references.
    DATA(t1) = i_id.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      DATA t11 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t12 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = |renameReferences, no main identifier found|.
      t12 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t16 ).
      t11 = NEW #( ).
      t11->payload = t12.
      CLEAR t11->source_value.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t19 TYPE REF TO object.
      t19 = t12.
      TRY.
          t11->source_value ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11->source_value IS NOT BOUND.
        TRY.
            t18 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t11->source_value = t18->source( ).
        ENDIF.
        IF t11->source_value IS NOT BOUND.
          CREATE OBJECT t11->source_value.
          t11->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->source_value->oval = t12.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t11.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    DATA t22 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t22 = me->reg->get_objects( )->iterate( ).
    DO.
      DATA t27 TYPE REF TO zcl_lnt_generator_17955b8b.
      t27 = t22->next( ).
      IF t27->done = abap_true.
        EXIT.
      ENDIF.
      DATA t32 TYPE REF TO zif_lnt_object.
      t32 = t27->value.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = VALUE abap_bool( ).
      t38 = abap_false.
      DATA t40 TYPE REF TO cx_root.
      CLEAR t40.
      TRY.
          t37 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_abap_object ).
          t38 = abap_true.
        CATCH cx_root INTO t40.
          IF xsdbool( t38 = abap_false ) = abap_true.
            t22->close( ).
          ENDIF.
          RAISE EXCEPTION t40.
      ENDTRY.
      IF xsdbool( t38 = abap_false ) = abap_true.
        t22->close( ).
      ENDIF.
      IF t37 = abap_true.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = VALUE abap_bool( ).
        t53 = abap_false.
        DATA t55 TYPE REF TO cx_root.
        CLEAR t55.
        TRY.
            DATA t58 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t58.
            DATA t60 TYPE REF TO object.
            CLEAR t60.
            t60 = t32.
            t58 ?= t60.
            t52 = me->reg->is_dependency( i_obj_1ed0 = t58 ).
            t53 = abap_true.
          CATCH cx_root INTO t55.
            IF xsdbool( t53 = abap_false ) = abap_true.
              t22->close( ).
            ENDIF.
            RAISE EXCEPTION t55.
        ENDTRY.
        IF xsdbool( t53 = abap_false ) = abap_true.
          t22->close( ).
        ENDIF.
        IF t52 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t70.
        DATA(t71) = VALUE abap_bool( ).
        t71 = abap_false.
        DATA t73 TYPE REF TO cx_root.
        CLEAR t73.
        TRY.
            DATA(t81) = me->reg.
            DATA t82 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t82.
            DATA t84 TYPE REF TO object.
            CLEAR t84.
            t84 = t32.
            t82 ?= t84.
            t70 = t20->concat( p0 = me->find_references( i_node = NEW zcl_lnt_syntax_logic( i_reg_f149 = t81 i_object_19cd = t82 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ) i_identifier = t1 ) ).
            t71 = abap_true.
          CATCH cx_root INTO t73.
            IF xsdbool( t71 = abap_false ) = abap_true.
              t22->close( ).
            ENDIF.
            RAISE EXCEPTION t73.
        ENDTRY.
        IF xsdbool( t71 = abap_false ) = abap_true.
          t22->close( ).
        ENDIF.
        t20 = t70.
      ENDIF.
    ENDDO.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t96 = t20.
    DATA(t98) = VALUE i( ).
    t98 = 1.
    DO.
      t96->load( ).
      IF xsdbool( t98 < lines( t96->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t104) = VALUE i( ).
      t104 = t98.
      DO.
        IF xsdbool( t104 > 0 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t110 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t110.
        DATA(t112) = VALUE i( ).
        DATA(t114) = 1.
        t112 = t104 - t114.
        t112 = t112 + 1.
        DATA t115 TYPE REF TO object.
        CLEAR t115.
        t96->load( ).
        CLEAR t115.
        READ TABLE t96->items INDEX t112 INTO t115.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        CLEAR t110.
        IF t115 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t116 ?= t115.
          DATA t117 TYPE REF TO object.
          t117 = t116->as_ref( ).
          t110 ?= t117.
        ELSE.
          t110 ?= t115.
        ENDIF.
        DATA t119 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t119.
        DATA(t121) = t104.
        t121 = t121 + 1.
        DATA t122 TYPE REF TO object.
        CLEAR t122.
        t96->load( ).
        CLEAR t122.
        READ TABLE t96->items INDEX t121 INTO t122.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        CLEAR t119.
        IF t122 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t123 ?= t122.
          DATA t124 TYPE REF TO object.
          t124 = t123->as_ref( ).
          t119 ?= t124.
        ELSE.
          t119 ?= t122.
        ENDIF.
        DATA t126 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t126.
        DATA t127 TYPE REF TO zcl_lnt_fi_identifier.
        t127 = t110.
        DATA t129 TYPE REF TO zcl_lnt_fi_identifier.
        t129 = t119.
        DATA(t132) = VALUE f( ).
        DATA(t134) = VALUE f( ).
        t134 = t129->token->start->row.
        DATA(t147) = VALUE f( ).
        t147 = t127->token->start->row.
        t132 = t134 - t147.
        DATA t160 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t160.
        IF xsdbool( t132 <> CONV f( 0 ) ) = abap_true.
          DATA(t165) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t165->has = abap_true.
          t165->value = t132.
          t160 = t165.
        ELSE.
          DATA t167 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t167.
          t167 = t129->token->start->col.
          DATA t180 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t180.
          t180 = t127->token->start->col.
          t160 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t167 right = t180 op = `-` ).
        ENDIF.
        t126 = t160.
        DATA(t194) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t194->has = abap_true.
        t194->value = CONV f( 0 ).
        IF zlnt_runtime_numb_290eb04a9758=>compare( left = t126 right = t194 op = `>` ) = abap_true.
          DATA t196 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t196.
          DATA(t198) = VALUE i( ).
          DATA(t200) = 1.
          t198 = t104 - t200.
          t198 = t198 + 1.
          DATA t201 TYPE REF TO object.
          CLEAR t201.
          t96->load( ).
          CLEAR t201.
          READ TABLE t96->items INDEX t198 INTO t201.
          DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t202.
          CLEAR t196.
          IF t201 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t202 ?= t201.
            DATA t203 TYPE REF TO object.
            t203 = t202->as_ref( ).
            t196 ?= t203.
          ELSE.
            t196 ?= t201.
          ENDIF.
          DATA(t205) = VALUE i( ).
          DATA(t207) = 1.
          t205 = t104 - t207.
          DATA t208 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t208.
          DATA(t210) = t104.
          t210 = t210 + 1.
          DATA t211 TYPE REF TO object.
          CLEAR t211.
          t96->load( ).
          CLEAR t211.
          READ TABLE t96->items INDEX t210 INTO t211.
          DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t212.
          CLEAR t208.
          IF t211 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t212 ?= t211.
            DATA t213 TYPE REF TO object.
            t213 = t212->as_ref( ).
            t208 ?= t213.
          ELSE.
            t208 ?= t211.
          ENDIF.
          t96->put( p0 = t205 p1 = t208 ).
          t96->put( p0 = t104 p1 = t196 ).
          DATA(t219) = 1.
          t104 = t104 - t219.
        ELSE.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t222) = 1.
      t98 = t98 + t222.
    ENDDO.
    t95 = t96.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t225 = me->replace_refs( i_refs = t20 i_old_name = t2 i_new_name = t3 ).
    t224 ?= t225.
    result = t224.

  ENDMETHOD.

  METHOD rename_ddic_code_references.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = me->reg->get_ddic_references( )->list_where_used( i_obj_1ed0 = t1 ).
    DATA t12 TYPE REF TO zcl_lnt_shape_7c1b39e6.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t6->load( ).
      IF t14 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t6->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      t20 = t12->token.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      t18 = xsdbool( t20 IS INITIAL ).
      t17 = t18.
      IF t18 = abap_false.
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t27 = t12->filename.
        DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t30.
        DATA(t32) = VALUE abap_bool( ).
        IF t27 IS INITIAL.
          t32 = abap_true.
        ELSEIF t27->has = abap_false.
          t32 = abap_true.
        ENDIF.
        t17 = t32.
      ENDIF.
      IF t17 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t37 TYPE f.
      DATA t38 TYPE f.
      t38 = t12->token->start->row.
      DATA(t49) = CONV f( 1 ).
      t37 = t38 - t49.
      DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t52 = t12->token->start->col.
      DATA(t64) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t64->has = abap_true.
      t64->value = CONV f( 1 ).
      t51 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t52 right = t64 op = `-` ).
      DATA t66 TYPE f.
      DATA t67 TYPE f.
      t67 = t12->token->start->row.
      DATA(t78) = CONV f( 1 ).
      t66 = t67 - t78.
      DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t82 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t82 = t12->token->start->col.
      DATA(t94) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t94->has = abap_true.
      t94->value = CONV f( 1 ).
      t81 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t82 right = t94 op = `-` ).
      DATA t95 TYPE f.
      t95 = strlen( t2 ).
      DATA(t99) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t99->has = abap_true.
      t99->value = t95.
      t80 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t81 right = t99 op = `+` ).
      DATA t100 TYPE REF TO zcl_lnt_range.
      CLEAR t100.
      DATA t101 TYPE REF TO zcl_lnt_no_position.
      CLEAR t101.
      DATA t102 TYPE REF TO zcl_lnt_no_position.
      t102 = NEW zcl_lnt_no_position( i_line = t37 i_character = t51 ).
      CREATE OBJECT t102->zlnt_view_ownkeys_b0e8086400eb.
      t102->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t105 ).
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t106 ).
      ENDIF.
      t101 = t102.
      DATA t108 TYPE REF TO zcl_lnt_no_position.
      t108 = NEW zcl_lnt_no_position( i_line = t66 i_character = t80 ).
      CREATE OBJECT t108->zlnt_view_ownkeys_b0e8086400eb.
      t108->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t111 ).
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t112 ).
      ENDIF.
      t100 = NEW zcl_lnt_range( i_start = t101 i_end = t108 ).
      CREATE OBJECT t100->zlnt_view_ownkeys_b0e8086400eb.
      t100->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t113 ).
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t114.
      IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t114 ).
      ENDIF.
      CREATE OBJECT t100->zlnt_json_ownkeys_70e5fd461788.
      t100->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t116 ).
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t118 ).
      ENDIF.
      DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t119 ?= t4.
      DATA t121 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t121.
      DATA t123 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      DATA t124 TYPE string.
      t124 = t12->filename->value.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      CLEAR t129.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t129->nval = 1.
      t123 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t124 i_version = t129 ).
      CREATE OBJECT t123->zlnt_view_ownkeys_b0e8086400eb.
      t123->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t131.
      t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t131 ).
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t132 ).
      ENDIF.
      CREATE OBJECT t123->zlnt_json_ownkeys_70e5fd461788.
      t123->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t134 ).
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |version| p1 = t136 ).
      ENDIF.
      DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t139.
      DATA t142 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t142.
      DATA t146 TYPE string.
      DATA(t148) = strlen( t3 ).
      t146 = t3.
      TRANSLATE t146 TO LOWER CASE.
      DATA t149 TYPE REF TO zcl_lnt_text_edit.
      t149 = NEW zcl_lnt_text_edit( i_range = t100 i_new_text = t146 ).
      CREATE OBJECT t149->zlnt_view_ownkeys_b0e8086400eb.
      t149->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t154.
      t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t154 ).
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      IF t149->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t155 ).
      ENDIF.
      CREATE OBJECT t149->zlnt_json_ownkeys_70e5fd461788.
      t149->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t157 ).
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t159.
      IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t159 ).
      ENDIF.
      t142 = t149.
      t139->load( ).
      APPEND t142 TO t139->items.
      t139->save( ).
      DATA t161 TYPE REF TO zcl_lnt_text_document_edit.
      t161 = NEW zcl_lnt_text_document_edit( i_text_document = t123 i_edits = t139 ).
      CREATE OBJECT t161->zlnt_view_ownkeys_b0e8086400eb.
      t161->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      t161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t166 ).
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      IF t161->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t167 ).
      ENDIF.
      CREATE OBJECT t161->zlnt_json_ownkeys_70e5fd461788.
      t161->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      t161->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textDocument| p1 = t169 ).
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t171.
      IF t161->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t161->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edits| p1 = t171 ).
      ENDIF.
      t121 = t161.
      t119->load( ).
      APPEND t121 TO t119->items.
      t119->save( ).
    ENDDO.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t172 ?= t4.
    result = t172.

  ENDMETHOD.

  METHOD rename_ddictabl_references.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = me->reg->get_ddic_references( )->list_where_used( i_obj_1ed0 = t1 ).
    DATA t11 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    t11 = NEW zlnt_runtime_map__45a2315f90b8( ).
    DATA t17 TYPE REF TO zcl_lnt_shape_7c1b39e6.
    DATA t18 TYPE REF TO object.
    DATA(t19) = VALUE i( ).
    DO.
      t6->load( ).
      IF t19 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t6->items INDEX t19 + 1 INTO t18.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t17.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t18.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t18.
      ENDIF.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      t23 = xsdbool( t17->type_cba0 <> |TABL| ).
      t22 = t23.
      IF t23 = abap_false.
        DATA(t27) = VALUE abap_bool( ).
        DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t28.
        DATA(t30) = VALUE string( ).
        DATA(t31) = VALUE string( ).
        t31 = t17->name.
        DATA(t33) = strlen( t31 ).
        t30 = t31.
        IF t30 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t30 TO UPPER CASE.
        ELSE.
          t30 = zlnt_runtime_uppe_91169605024d=>full( t30 ).
        ENDIF.
        t28 = t11->get( p0 = t30 ).
        DATA t34 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t37) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t37->has = abap_true.
        t37->value = abap_true.
        t34 = t37.
        DATA(t39) = VALUE abap_bool( ).
        DATA(t40) = VALUE abap_bool( ).
        IF t28 IS BOUND.
          t39 = t28->has.
        ENDIF.
        IF t34 IS BOUND.
          t40 = t34->has.
        ENDIF.
        IF t39 = t40.
          IF t39 = abap_false.
            t27 = abap_true.
          ELSEIF t28->value = t34->value.
            t27 = abap_true.
          ENDIF.
        ENDIF.
        t22 = t27.
      ENDIF.
      IF t22 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t41 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t42.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      DATA t44 TYPE REF TO zif_lnt_object.
      DATA(t46) = me->reg.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA(t49) = VALUE string( ).
      t49 = t17->type_cba0.
      DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t51->has = abap_true.
      t51->value = t49.
      t47 = t51.
      DATA(t55) = VALUE string( ).
      t55 = t17->name.
      DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t57->has = abap_true.
      t57->value = t55.
      t44 = t46->get_object( i_type_9913 = t47 i_name = t57 ).
      CLEAR t43.
      IF t44 IS BOUND.
        DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t59.
        CLEAR t59.
        TRY.
            t43 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS NOT BOUND.
          TRY.
              t59 ?= t44.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t59 IS BOUND.
            t43 = t59->source( ).
          ENDIF.
          IF t43 IS NOT BOUND.
            CREATE OBJECT t43.
            t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t43->oval = t44.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t42.
      IF t43 IS BOUND.
        IF t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t42 ?= t43->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t42 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
        ENDIF.
      ENDIF.
      t41 = t42.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      CLEAR t64.
      IF xsdbool( t41 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t68) = VALUE i( ).
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t69.
      DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t71 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t71.
      t71 = t41.
      DATA t76 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t76.
      t70 = me->build_xml_file_edits( i_object_19cd = t71 i_xml_tag = |ROLLNAME| i_old_name = t2 i_new_name = t3 i_use_lower_case = t76 ).
      t69 ?= t70.
      DATA t77 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t77.
      DATA t78 TYPE REF TO object.
      CLEAR t78.
      DATA(t79) = VALUE i( ).
      DO.
        t69->load( ).
        IF t79 >= lines( t69->items ).
          EXIT.
        ENDIF.
        CLEAR t78.
        READ TABLE t69->items INDEX t79 + 1 INTO t78.
        t79 = t79 + 1.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        CLEAR t77.
        IF t78 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t80 ?= t78.
          DATA t81 TYPE REF TO object.
          t81 = t80->as_ref( ).
          t77 ?= t81.
        ELSE.
          t77 ?= t78.
        ENDIF.
        DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t82.
        t82 ?= t4.
        t82->load( ).
        APPEND t77 TO t82->items.
        t82->save( ).
      ENDDO.
      DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t86.
      t86 ?= t4.
      t86->load( ).
      t68 = lines( t86->items ).
      DATA t88 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      CLEAR t88.
      DATA(t90) = VALUE string( ).
      DATA(t91) = VALUE string( ).
      t91 = t17->name.
      DATA(t93) = strlen( t91 ).
      t90 = t91.
      IF t90 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t90 TO UPPER CASE.
      ELSE.
        t90 = zlnt_runtime_uppe_91169605024d=>full( t90 ).
      ENDIF.
      t88 = t11->set( p0 = t90 p1 = abap_true ).
    ENDDO.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t95 ?= t4.
    result = t95.

  ENDMETHOD.

  METHOD rename_ddicdtel_references.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = me->reg->get_ddic_references( )->list_where_used( i_obj_1ed0 = t1 ).
    DATA t12 TYPE REF TO zcl_lnt_shape_7c1b39e6.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t6->load( ).
      IF t14 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t6->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      IF xsdbool( t12->type_cba0 <> |DTEL| ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_object.
      DATA(t26) = me->reg.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA(t29) = VALUE string( ).
      t29 = t12->type_cba0.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t29.
      t27 = t31.
      DATA(t35) = VALUE string( ).
      t35 = t12->name.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = t35.
      t24 = t26->get_object( i_type_9913 = t27 i_name = t37 ).
      CLEAR t23.
      IF t24 IS BOUND.
        DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t39.
        CLEAR t39.
        TRY.
            t23 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS NOT BOUND.
          TRY.
              t39 ?= t24.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t39 IS BOUND.
            t23 = t39->source( ).
          ENDIF.
          IF t23 IS NOT BOUND.
            CREATE OBJECT t23.
            t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t23->oval = t24.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t22.
      IF t23 IS BOUND.
        IF t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t22 ?= t23->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t22 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
        ENDIF.
      ENDIF.
      t21 = t22.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      CLEAR t44.
      IF xsdbool( t21 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t48) = VALUE i( ).
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t51 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t51.
      t51 = t21.
      DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t56.
      t50 = me->build_xml_file_edits( i_object_19cd = t51 i_xml_tag = |DOMNAME| i_old_name = t2 i_new_name = t3 i_use_lower_case = t56 ).
      t49 ?= t50.
      DATA t57 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t57.
      DATA t58 TYPE REF TO object.
      CLEAR t58.
      DATA(t59) = VALUE i( ).
      DO.
        t49->load( ).
        IF t59 >= lines( t49->items ).
          EXIT.
        ENDIF.
        CLEAR t58.
        READ TABLE t49->items INDEX t59 + 1 INTO t58.
        t59 = t59 + 1.
        DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t60.
        CLEAR t57.
        IF t58 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t60 ?= t58.
          DATA t61 TYPE REF TO object.
          t61 = t60->as_ref( ).
          t57 ?= t61.
        ELSE.
          t57 ?= t58.
        ENDIF.
        DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t62.
        t62 ?= t4.
        t62->load( ).
        APPEND t57 TO t62->items.
        t62->save( ).
      ENDDO.
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t66.
      t66 ?= t4.
      t66->load( ).
      t48 = lines( t66->items ).
    ENDDO.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t68 ?= t4.
    result = t68.

  ENDMETHOD.

  METHOD rename_ddicttyp_references.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = me->reg->get_ddic_references( )->list_where_used( i_obj_1ed0 = t1 ).
    DATA t12 TYPE REF TO zcl_lnt_shape_7c1b39e6.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t6->load( ).
      IF t14 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t6->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      IF xsdbool( t12->type_cba0 <> |TTYP| ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_object.
      DATA(t26) = me->reg.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA(t29) = VALUE string( ).
      t29 = t12->type_cba0.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t29.
      t27 = t31.
      DATA(t35) = VALUE string( ).
      t35 = t12->name.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = t35.
      t24 = t26->get_object( i_type_9913 = t27 i_name = t37 ).
      CLEAR t23.
      IF t24 IS BOUND.
        DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t39.
        CLEAR t39.
        TRY.
            t23 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS NOT BOUND.
          TRY.
              t39 ?= t24.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t39 IS BOUND.
            t23 = t39->source( ).
          ENDIF.
          IF t23 IS NOT BOUND.
            CREATE OBJECT t23.
            t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t23->oval = t24.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t22.
      IF t23 IS BOUND.
        IF t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t22 ?= t23->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t22 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
        ENDIF.
      ENDIF.
      t21 = t22.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      CLEAR t44.
      IF xsdbool( t21 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t48) = VALUE i( ).
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t51 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t51.
      t51 = t21.
      DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t56.
      t50 = me->build_xml_file_edits( i_object_19cd = t51 i_xml_tag = |ROWTYPE| i_old_name = t2 i_new_name = t3 i_use_lower_case = t56 ).
      t49 ?= t50.
      DATA t57 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t57.
      DATA t58 TYPE REF TO object.
      CLEAR t58.
      DATA(t59) = VALUE i( ).
      DO.
        t49->load( ).
        IF t59 >= lines( t49->items ).
          EXIT.
        ENDIF.
        CLEAR t58.
        READ TABLE t49->items INDEX t59 + 1 INTO t58.
        t59 = t59 + 1.
        DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t60.
        CLEAR t57.
        IF t58 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t60 ?= t58.
          DATA t61 TYPE REF TO object.
          t61 = t60->as_ref( ).
          t57 ?= t61.
        ELSE.
          t57 ?= t58.
        ENDIF.
        DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t62.
        t62 ?= t4.
        t62->load( ).
        APPEND t57 TO t62->items.
        t62->save( ).
      ENDDO.
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t66.
      t66 ?= t4.
      t66->load( ).
      t48 = lines( t66->items ).
    ENDDO.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t68 ?= t4.
    result = t68.

  ENDMETHOD.

  METHOD rename_ddicauth_references.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = me->reg->get_ddic_references( )->list_where_used( i_obj_1ed0 = t1 ).
    DATA t12 TYPE REF TO zcl_lnt_shape_7c1b39e6.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t6->load( ).
      IF t14 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t6->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      IF xsdbool( t12->type_cba0 <> |AUTH| ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_object.
      DATA(t26) = me->reg.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA(t29) = VALUE string( ).
      t29 = t12->type_cba0.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t29.
      t27 = t31.
      DATA(t35) = VALUE string( ).
      t35 = t12->name.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = t35.
      t24 = t26->get_object( i_type_9913 = t27 i_name = t37 ).
      CLEAR t23.
      IF t24 IS BOUND.
        DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t39.
        CLEAR t39.
        TRY.
            t23 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS NOT BOUND.
          TRY.
              t39 ?= t24.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t39 IS BOUND.
            t23 = t39->source( ).
          ENDIF.
          IF t23 IS NOT BOUND.
            CREATE OBJECT t23.
            t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t23->oval = t24.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t22.
      IF t23 IS BOUND.
        IF t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t22 ?= t23->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t22 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
        ENDIF.
      ENDIF.
      t21 = t22.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      CLEAR t44.
      IF xsdbool( t21 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t48) = VALUE i( ).
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t51 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t51.
      t51 = t21.
      DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t56.
      t50 = me->build_xml_file_edits( i_object_19cd = t51 i_xml_tag = |ROLLNAME| i_old_name = t2 i_new_name = t3 i_use_lower_case = t56 ).
      t49 ?= t50.
      DATA t57 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t57.
      DATA t58 TYPE REF TO object.
      CLEAR t58.
      DATA(t59) = VALUE i( ).
      DO.
        t49->load( ).
        IF t59 >= lines( t49->items ).
          EXIT.
        ENDIF.
        CLEAR t58.
        READ TABLE t49->items INDEX t59 + 1 INTO t58.
        t59 = t59 + 1.
        DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t60.
        CLEAR t57.
        IF t58 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t60 ?= t58.
          DATA t61 TYPE REF TO object.
          t61 = t60->as_ref( ).
          t57 ?= t61.
        ELSE.
          t57 ?= t58.
        ENDIF.
        DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t62.
        t62 ?= t4.
        t62->load( ).
        APPEND t57 TO t62->items.
        t62->save( ).
      ENDDO.
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t66.
      t66 ?= t4.
      t66->load( ).
      t48 = lines( t66->items ).
    ENDDO.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t68 ?= t4.
    result = t68.

  ENDMETHOD.

  METHOD build_xml_file_edits.
    DATA(t1) = i_object_19cd.
    DATA(t2) = i_xml_tag.
    DATA(t3) = i_old_name.
    DATA(t4) = i_new_name.
    DATA(t5) = i_use_lower_case.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t5.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ELSEIF t7->has = abap_false.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA(t11) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t11->has = abap_true.
      t11->value = abap_false.
      t5 = t11.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    DATA t15 TYPE REF TO zif_lnt_file.
    t15 = t1->get_xml_file( ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t15 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA(t26) = VALUE string( ).
    DATA(t27) = VALUE string( ).
    IF t5->value = abap_true.
      DATA t30 TYPE string.
      DATA(t32) = strlen( t3 ).
      t30 = t3.
      TRANSLATE t30 TO LOWER CASE.
      t27 = t30.
    ELSE.
      DATA t33 TYPE string.
      DATA(t35) = strlen( t3 ).
      t33 = t3.
      IF t33 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t33 TO UPPER CASE.
      ELSE.
        t33 = zlnt_runtime_uppe_91169605024d=>full( t33 ).
      ENDIF.
      t27 = t33.
    ENDIF.
    t26 = t27.
    DATA(t36) = VALUE string( ).
    DATA(t37) = VALUE string( ).
    IF t5->value = abap_true.
      DATA t40 TYPE string.
      DATA(t42) = strlen( t4 ).
      t40 = t4.
      TRANSLATE t40 TO LOWER CASE.
      t37 = t40.
    ELSE.
      DATA t43 TYPE string.
      DATA(t45) = strlen( t4 ).
      t43 = t4.
      IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t43 TO UPPER CASE.
      ELSE.
        t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
      ENDIF.
      t37 = t43.
    ENDIF.
    t36 = t37.
    DATA(t46) = VALUE string( ).
    DATA t47 TYPE string.
    DATA(t49) = strlen( t2 ).
    t47 = t2.
    IF t47 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t47 TO UPPER CASE.
    ELSE.
      t47 = zlnt_runtime_uppe_91169605024d=>full( t47 ).
    ENDIF.
    t46 = t47.
    DATA t50 TYPE string.
    DATA t52 TYPE string.
    DATA t53 TYPE string.
    DATA t54 TYPE string.
    DATA t55 TYPE string.
    DATA t56 TYPE string.
    DATA(t57) = |<|.
    DATA(t59) = strlen( t57 ).
    t56 = |{ t57 }{ t46 }|.
    DATA(t61) = strlen( t56 ).
    t55 = |{ t56 }{ |>| }|.
    DATA(t63) = strlen( t55 ).
    t54 = |{ t55 }{ t26 }|.
    DATA(t65) = strlen( t54 ).
    t53 = |{ t54 }{ |</| }|.
    DATA(t67) = strlen( t53 ).
    t52 = |{ t53 }{ t46 }|.
    DATA(t69) = strlen( t52 ).
    t50 = |{ t52 }{ |>| }|.
    DATA t70 TYPE int8.
    DATA t72 TYPE int8.
    t72 = strlen( t46 ).
    DATA(t76) = CONV int8( 2 ).
    t70 = t72 + t76.
    DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t77 = t15->get_raw_rows( ).
    DATA t81 TYPE i.
    t81 = 0.
    DO.
      t77->load( ).
      IF xsdbool( t81 < lines( t77->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t87) = VALUE i( ).
      DATA(t88) = VALUE i( ).
      DATA(t89) = VALUE string( ).
      DATA(t91) = t81.
      t91 = t91 + 1.
      IF t77->has( t91 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t77->load( ).
      READ TABLE t77->items INDEX t91 INTO t89.
      DATA(t93) = strlen( t89 ).
      IF t50 IS INITIAL.
        t88 = 0.
      ELSE.
        FIND t50 IN t89 MATCH OFFSET t88.
        IF sy-subrc <> 0.
          t88 = -1.
        ENDIF.
      ENDIF.
      t87 = t88.
      IF xsdbool( t87 >= 0 ) = abap_true.
        DATA t102 TYPE int8.
        DATA t103 TYPE int8.
        t103 = t87.
        t102 = t103 + t70.
        DATA t109 TYPE int8.
        DATA t110 TYPE int8.
        DATA t111 TYPE int8.
        t111 = t87.
        DATA t113 TYPE int8.
        t113 = strlen( t26 ).
        t110 = t111 + t113.
        t109 = t110 + t70.
        DATA t118 TYPE REF TO zcl_lnt_range.
        CLEAR t118.
        DATA t119 TYPE REF TO zcl_lnt_no_position.
        CLEAR t119.
        DATA t120 TYPE REF TO zcl_lnt_no_position.
        DATA t121 TYPE f.
        t121 = t81.
        DATA t123 TYPE f.
        t123 = t102.
        DATA(t125) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t125->has = abap_true.
        t125->value = t123.
        t120 = NEW zcl_lnt_no_position( i_line = t121 i_character = t125 ).
        CREATE OBJECT t120->zlnt_view_ownkeys_b0e8086400eb.
        t120->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t126 ).
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t127 ).
        ENDIF.
        t119 = t120.
        DATA t129 TYPE REF TO zcl_lnt_no_position.
        DATA t130 TYPE f.
        t130 = t81.
        DATA t132 TYPE f.
        t132 = t109.
        DATA(t134) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t134->has = abap_true.
        t134->value = t132.
        t129 = NEW zcl_lnt_no_position( i_line = t130 i_character = t134 ).
        CREATE OBJECT t129->zlnt_view_ownkeys_b0e8086400eb.
        t129->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t135 ).
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t129->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t136 ).
        ENDIF.
        t118 = NEW zcl_lnt_range( i_start = t119 i_end = t129 ).
        CREATE OBJECT t118->zlnt_view_ownkeys_b0e8086400eb.
        t118->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t137.
        t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t137 ).
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t138 ).
        ENDIF.
        CREATE OBJECT t118->zlnt_json_ownkeys_70e5fd461788.
        t118->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t140 ).
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t142 ).
        ENDIF.
        DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t143 ?= t13.
        DATA t145 TYPE REF TO zcl_lnt_text_document_edit.
        CLEAR t145.
        DATA t147 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        DATA t148 TYPE string.
        t148 = t15->get_filename( ).
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        CLEAR t153.
        CREATE OBJECT t153.
        t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
        t153->nval = 1.
        t147 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t148 i_version = t153 ).
        CREATE OBJECT t147->zlnt_view_ownkeys_b0e8086400eb.
        t147->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        t147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t155 ).
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        IF t147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t156 ).
        ENDIF.
        CREATE OBJECT t147->zlnt_json_ownkeys_70e5fd461788.
        t147->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t158 ).
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = |version| p1 = t160 ).
        ENDIF.
        DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t163.
        DATA t166 TYPE REF TO zcl_lnt_text_edit.
        CLEAR t166.
        DATA t171 TYPE REF TO zcl_lnt_text_edit.
        t171 = NEW zcl_lnt_text_edit( i_range = t118 i_new_text = t36 ).
        CREATE OBJECT t171->zlnt_view_ownkeys_b0e8086400eb.
        t171->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t176 ).
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t177 ).
        ENDIF.
        CREATE OBJECT t171->zlnt_json_ownkeys_70e5fd461788.
        t171->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t179 ).
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t181 ).
        ENDIF.
        t166 = t171.
        t163->load( ).
        APPEND t166 TO t163->items.
        t163->save( ).
        DATA t183 TYPE REF TO zcl_lnt_text_document_edit.
        t183 = NEW zcl_lnt_text_document_edit( i_text_document = t147 i_edits = t163 ).
        CREATE OBJECT t183->zlnt_view_ownkeys_b0e8086400eb.
        t183->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t188.
        t183->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t188 ).
        DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t189.
        IF t183->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t183->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t189 ).
        ENDIF.
        CREATE OBJECT t183->zlnt_json_ownkeys_70e5fd461788.
        t183->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t191.
        t183->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textDocument| p1 = t191 ).
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        IF t183->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t183->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edits| p1 = t193 ).
        ENDIF.
        t145 = t183.
        t143->load( ).
        APPEND t145 TO t143->items.
        t143->save( ).
      ENDIF.
      DATA(t196) = 1.
      t81 = t81 + t196.
    ENDDO.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t197 ?= t13.
    result = t197.

  ENDMETHOD.

  METHOD build_url_file_edits.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_object_19cd.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zif_lnt_file.
    t6 = t1->get_xml_file( ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t17 TYPE string.
    DATA t18 TYPE string.
    DATA(t20) = strlen( t2 ).
    t18 = t2.
    TRANSLATE t18 TO LOWER CASE.
    t17 = t18.
    DATA t21 TYPE string.
    DATA t22 TYPE string.
    DATA(t24) = strlen( t3 ).
    t22 = t3.
    TRANSLATE t22 TO LOWER CASE.
    t21 = t22.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t25 = t6->get_raw_rows( ).
    DATA t29 TYPE i.
    t29 = 0.
    DO.
      t25->load( ).
      IF xsdbool( t29 < lines( t25->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t35) = VALUE string( ).
      DATA(t36) = VALUE string( ).
      DATA(t38) = t29.
      t38 = t38 + 1.
      IF t25->has( t38 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t25->load( ).
      READ TABLE t25->items INDEX t38 INTO t36.
      t35 = t36.
      DATA(t39) = VALUE i( ).
      DATA(t40) = VALUE i( ).
      DATA(t42) = |<URL>|.
      DATA(t43) = strlen( t35 ).
      IF t42 IS INITIAL.
        t40 = 0.
      ELSE.
        FIND t42 IN t35 MATCH OFFSET t40.
        IF sy-subrc <> 0.
          t40 = -1.
        ENDIF.
      ENDIF.
      t39 = t40.
      IF xsdbool( t39 = -1 ) = abap_true.
        DATA(t49) = 1.
        t29 = t29 + t49.
        CONTINUE.
      ENDIF.
      DATA(t50) = VALUE i( ).
      DATA(t51) = VALUE i( ).
      DATA(t53) = |</URL>|.
      DATA(t54) = strlen( t35 ).
      IF t53 IS INITIAL.
        t51 = 0.
      ELSE.
        FIND t53 IN t35 MATCH OFFSET t51.
        IF sy-subrc <> 0.
          t51 = -1.
        ENDIF.
      ENDIF.
      t50 = t51.
      IF xsdbool( t50 = -1 ) = abap_true.
        DATA(t60) = 1.
        t29 = t29 + t60.
        CONTINUE.
      ENDIF.
      DATA(t61) = VALUE string( ).
      DATA(t62) = VALUE string( ).
      DATA(t64) = VALUE i( ).
      DATA t65 TYPE f.
      DATA t66 TYPE int8.
      DATA t67 TYPE int8.
      t67 = t39.
      DATA(t69) = CONV int8( 5 ).
      t66 = t67 + t69.
      t65 = t66.
      IF t65 > range_i32_upper.
        t64 = range_i32_upper.
      ELSEIF t65 < range_i32_lower.
        t64 = range_i32_lower.
      ELSE.
        t64 = trunc( t65 ).
      ENDIF.
      DATA(t70) = t50.
      DATA(t71) = strlen( t35 ).
      t64 = COND i( WHEN t64 < 0 THEN 0 WHEN t64 > t71 THEN t71 ELSE t64 ).
      t70 = COND i( WHEN t70 < 0 THEN 0 WHEN t70 > t71 THEN t71 ELSE t70 ).
      IF t64 > t70.
        t71 = t64.
        t64 = t70.
        t70 = t71.
      ENDIF.
      t71 = t70 - t64.
      t62 = t35+t64(t71).
      t61 = t62.
      DATA(t72) = VALUE string( ).
      DATA(t73) = VALUE string( ).
      DATA(t77) = strlen( t61 ).
      IF t21 CS '$'.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t73 = t61.
      IF t17 = ``.
        t73 = |{ t21 }{ t61 }|.
      ELSE.
        REPLACE FIRST OCCURRENCE OF t17 IN t73 WITH t21.
      ENDIF.
      t72 = t73.
      IF xsdbool( t72 <> t61 ) = abap_true.
        DATA t86 TYPE int8.
        DATA t87 TYPE int8.
        t87 = t39.
        DATA(t89) = CONV int8( 5 ).
        t86 = t87 + t89.
        DATA t94 TYPE REF TO zcl_lnt_range.
        CLEAR t94.
        DATA t95 TYPE REF TO zcl_lnt_no_position.
        CLEAR t95.
        DATA t96 TYPE REF TO zcl_lnt_no_position.
        DATA t97 TYPE f.
        t97 = t29.
        DATA t99 TYPE f.
        t99 = t86.
        DATA(t101) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t101->has = abap_true.
        t101->value = t99.
        t96 = NEW zcl_lnt_no_position( i_line = t97 i_character = t101 ).
        CREATE OBJECT t96->zlnt_view_ownkeys_b0e8086400eb.
        t96->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t102 ).
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t103 ).
        ENDIF.
        t95 = t96.
        DATA t105 TYPE REF TO zcl_lnt_no_position.
        DATA t106 TYPE f.
        t106 = t29.
        DATA t108 TYPE f.
        t108 = t50.
        DATA(t110) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t110->has = abap_true.
        t110->value = t108.
        t105 = NEW zcl_lnt_no_position( i_line = t106 i_character = t110 ).
        CREATE OBJECT t105->zlnt_view_ownkeys_b0e8086400eb.
        t105->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        t105->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t111 ).
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        IF t105->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t105->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t112 ).
        ENDIF.
        t94 = NEW zcl_lnt_range( i_start = t95 i_end = t105 ).
        CREATE OBJECT t94->zlnt_view_ownkeys_b0e8086400eb.
        t94->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t113 ).
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        IF t94->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t114 ).
        ENDIF.
        CREATE OBJECT t94->zlnt_json_ownkeys_70e5fd461788.
        t94->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t116 ).
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t118 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t119 ?= t4.
        DATA t121 TYPE REF TO zcl_lnt_text_document_edit.
        CLEAR t121.
        DATA t123 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        DATA t124 TYPE string.
        t124 = t6->get_filename( ).
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        CLEAR t129.
        CREATE OBJECT t129.
        t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
        t129->nval = 1.
        t123 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t124 i_version = t129 ).
        CREATE OBJECT t123->zlnt_view_ownkeys_b0e8086400eb.
        t123->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t131 ).
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t132 ).
        ENDIF.
        CREATE OBJECT t123->zlnt_json_ownkeys_70e5fd461788.
        t123->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t134 ).
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |version| p1 = t136 ).
        ENDIF.
        DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t139.
        DATA t142 TYPE REF TO zcl_lnt_text_edit.
        CLEAR t142.
        DATA t147 TYPE REF TO zcl_lnt_text_edit.
        t147 = NEW zcl_lnt_text_edit( i_range = t94 i_new_text = t72 ).
        CREATE OBJECT t147->zlnt_view_ownkeys_b0e8086400eb.
        t147->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        t147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t152 ).
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t153 ).
        ENDIF.
        CREATE OBJECT t147->zlnt_json_ownkeys_70e5fd461788.
        t147->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t155 ).
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t157 ).
        ENDIF.
        t142 = t147.
        t139->load( ).
        APPEND t142 TO t139->items.
        t139->save( ).
        DATA t159 TYPE REF TO zcl_lnt_text_document_edit.
        t159 = NEW zcl_lnt_text_document_edit( i_text_document = t123 i_edits = t139 ).
        CREATE OBJECT t159->zlnt_view_ownkeys_b0e8086400eb.
        t159->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t164 ).
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t165 ).
        ENDIF.
        CREATE OBJECT t159->zlnt_json_ownkeys_70e5fd461788.
        t159->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textDocument| p1 = t167 ).
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edits| p1 = t169 ).
        ENDIF.
        t121 = t159.
        t119->load( ).
        APPEND t121 TO t119->items.
        t119->save( ).
      ENDIF.
      DATA(t172) = 1.
      t29 = t29 + t172.
    ENDDO.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t173 ?= t4.
    result = t173.

  ENDMETHOD.

  METHOD rename_files.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_name.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA(t6) = VALUE string( ).
    DATA(t8) = VALUE string( ).
    DATA(t10) = strlen( t3 ).
    t8 = t3.
    TRANSLATE t8 TO LOWER CASE.
    DATA t11 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t11 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = `\/` flags = |g| checked = abap_true.
    DATA(t15) = strlen( t8 ).
    t6 = t11->replace( p0 = t8 p1 = |#| ).
    DATA(t17) = VALUE string( ).
    DATA(t18) = t2.
    DATA(t19) = strlen( t18 ).
    t17 = t18.
    TRANSLATE t17 TO LOWER CASE.
    DATA t20 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t20 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = `\/` flags = |g| checked = abap_true.
    DATA(t24) = strlen( t17 ).
    t2 = t20->replace( p0 = t17 p1 = |#| ).
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t25 = t1->get_files( ).
    DATA t27 TYPE REF TO zif_lnt_file.
    DATA t28 TYPE REF TO object.
    DATA(t29) = VALUE i( ).
    DO.
      t25->load( ).
      IF t29 >= lines( t25->items ).
        EXIT.
      ENDIF.
      CLEAR t28.
      READ TABLE t25->items INDEX t29 + 1 INTO t28.
      t29 = t29 + 1.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      CLEAR t27.
      IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t30 ?= t28.
        DATA t31 TYPE REF TO object.
        t31 = t30->as_ref( ).
        t27 ?= t31.
      ELSE.
        t27 ?= t28.
      ENDIF.
      DATA(t33) = VALUE string( ).
      DATA(t34) = VALUE string( ).
      t34 = t27->get_filename( ).
      DATA(t38) = strlen( t34 ).
      IF t6 CS '$'.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t33 = t34.
      IF t2 = ``.
        t33 = |{ t6 }{ t34 }|.
      ELSE.
        REPLACE FIRST OCCURRENCE OF t2 IN t33 WITH t6.
      ENDIF.
      DATA t40 TYPE REF TO zcl_lnt_rename_file.
      CLEAR t40.
      DATA(t41) = VALUE string( ).
      t41 = t27->get_filename( ).
      DATA(t44) = VALUE string( ).
      t44 = t33.
      DATA t46 TYPE REF TO zcl_lnt_rename_file.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA t51 TYPE REF TO zcl_lnt_rename_file_options.
      CLEAR t51.
      t46 = NEW zcl_lnt_rename_file( i_annotation_id = t47 i_kind = |rename| i_old_uri = t41 i_new_uri = t44 i_options = t51 ).
      CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
      t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t52 ).
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `oldUri` p1 = t53 ).
      ENDIF.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newUri` p1 = t54 ).
      ENDIF.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      IF t46->options IS BOUND.
        CLEAR t55.
        IF t46->options IS BOUND.
          CLEAR t55.
          IF t46->options IS BOUND.
            DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t58.
            DATA t59 TYPE REF TO object.
            CLEAR t58.
            t59 = t46->options.
            TRY.
                t55 ?= t59.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t55 IS NOT BOUND.
              TRY.
                  t58 ?= t46->options.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t58 IS BOUND.
                t55 = t58->source( ).
              ENDIF.
              IF t55 IS NOT BOUND.
                CREATE OBJECT t55.
                t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t55->oval = t46->options.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t57.
        t56 = t55->get( `overwrite` ).
        IF t56 IS NOT BOUND.
          t57 = t55->get( `ignoreIfExists` ).
        ENDIF.
        IF t56 IS BOUND OR t57 IS BOUND.
          DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t60.
          IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `options` p1 = t60 ).
          ENDIF.
        ELSE.
          CLEAR t46->options.
        ENDIF.
      ENDIF.
      IF t46->annotation_id IS BOUND AND t46->annotation_id->has = abap_true.
        DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t61.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `annotationId` p1 = t61 ).
        ENDIF.
      ENDIF.
      t40 = t46.
      t4->load( ).
      APPEND t40 TO t4->items.
      t4->save( ).
    ENDDO.
    result = t4.

  ENDMETHOD.

  METHOD replace_refs.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_refs.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t6 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t9 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t1->load( ).
      IF t11 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t1->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA(t14) = VALUE string( ).
      DATA(t16) = VALUE string( ).
      DATA(t17) = VALUE string( ).
      DATA t18 TYPE string.
      DATA t19 TYPE string.
      t19 = t9->filename.
      DATA(t25) = strlen( t19 ).
      t18 = |{ t19 }{ |:| }|.
      DATA(t26) = VALUE string( ).
      DATA t27 TYPE f.
      t27 = t9->token->start->row.
      IF t27 <> trunc( t27 ) OR t27 > range_safe_integer OR t27 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t40) = CONV int8( t27 ).
      t26 = |{ t40 }|.
      DATA(t41) = strlen( t18 ).
      t17 = |{ t18 }{ t26 }|.
      DATA(t43) = strlen( t17 ).
      t16 = |{ t17 }{ |:| }|.
      DATA t44 TYPE string.
      DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t56 = t9->token->start->col.
      t44 = zlnt_runtime_numb_290eb04a9758=>text( t56 ).
      DATA(t58) = strlen( t16 ).
      t14 = |{ t16 }{ t44 }|.
      IF t6->has( p0 = t14 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t62 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      t62 = t6->add( p0 = t14 ).
      DATA t68 TYPE f.
      DATA t69 TYPE f.
      t69 = t9->token->start->row.
      DATA(t82) = CONV f( 1 ).
      t68 = t69 - t82.
      DATA t84 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t85 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t85 = t9->token->start->col.
      DATA(t99) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t99->has = abap_true.
      t99->value = CONV f( 1 ).
      t84 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t85 right = t99 op = `-` ).
      DATA t101 TYPE f.
      DATA t102 TYPE f.
      t102 = t9->token->start->row.
      DATA(t115) = CONV f( 1 ).
      t101 = t102 - t115.
      DATA t117 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t118 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t119 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t119 = t9->token->start->col.
      DATA(t133) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t133->has = abap_true.
      t133->value = CONV f( 1 ).
      t118 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t119 right = t133 op = `-` ).
      DATA t134 TYPE f.
      t134 = strlen( t2 ).
      DATA(t138) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t138->has = abap_true.
      t138->value = t134.
      t117 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t118 right = t138 op = `+` ).
      DATA t139 TYPE REF TO zcl_lnt_range.
      CLEAR t139.
      DATA t140 TYPE REF TO zcl_lnt_no_position.
      CLEAR t140.
      DATA t141 TYPE REF TO zcl_lnt_no_position.
      t141 = NEW zcl_lnt_no_position( i_line = t68 i_character = t84 ).
      CREATE OBJECT t141->zlnt_view_ownkeys_b0e8086400eb.
      t141->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t144.
      t141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t144 ).
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t145.
      IF t141->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t145 ).
      ENDIF.
      t140 = t141.
      DATA t147 TYPE REF TO zcl_lnt_no_position.
      t147 = NEW zcl_lnt_no_position( i_line = t101 i_character = t117 ).
      CREATE OBJECT t147->zlnt_view_ownkeys_b0e8086400eb.
      t147->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      t147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t150 ).
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      IF t147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t151 ).
      ENDIF.
      t139 = NEW zcl_lnt_range( i_start = t140 i_end = t147 ).
      CREATE OBJECT t139->zlnt_view_ownkeys_b0e8086400eb.
      t139->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t152.
      t139->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t152 ).
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      IF t139->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t139->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t153 ).
      ENDIF.
      CREATE OBJECT t139->zlnt_json_ownkeys_70e5fd461788.
      t139->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t155 ).
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      IF t139->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t157 ).
      ENDIF.
      DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t158 ?= t4.
      DATA t160 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t160.
      DATA t162 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      DATA t163 TYPE string.
      t163 = t9->filename.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t170.
      CLEAR t170.
      CREATE OBJECT t170.
      t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t170->nval = 1.
      t162 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t163 i_version = t170 ).
      CREATE OBJECT t162->zlnt_view_ownkeys_b0e8086400eb.
      t162->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t172.
      t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t172 ).
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t173.
      IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t173 ).
      ENDIF.
      CREATE OBJECT t162->zlnt_json_ownkeys_70e5fd461788.
      t162->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t175 ).
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = |version| p1 = t177 ).
      ENDIF.
      DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t180.
      DATA t183 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t183.
      DATA t187 TYPE string.
      DATA(t189) = strlen( t3 ).
      t187 = t3.
      TRANSLATE t187 TO LOWER CASE.
      DATA t190 TYPE REF TO zcl_lnt_text_edit.
      t190 = NEW zcl_lnt_text_edit( i_range = t139 i_new_text = t187 ).
      CREATE OBJECT t190->zlnt_view_ownkeys_b0e8086400eb.
      t190->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t195.
      t190->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t195 ).
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t196.
      IF t190->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t190->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t196 ).
      ENDIF.
      CREATE OBJECT t190->zlnt_json_ownkeys_70e5fd461788.
      t190->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t198.
      t190->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t198 ).
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t200.
      IF t190->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t190->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t200 ).
      ENDIF.
      t183 = t190.
      t180->load( ).
      APPEND t183 TO t180->items.
      t180->save( ).
      DATA t202 TYPE REF TO zcl_lnt_text_document_edit.
      t202 = NEW zcl_lnt_text_document_edit( i_text_document = t162 i_edits = t180 ).
      CREATE OBJECT t202->zlnt_view_ownkeys_b0e8086400eb.
      t202->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t207.
      t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t207 ).
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t208.
      IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t208 ).
      ENDIF.
      CREATE OBJECT t202->zlnt_json_ownkeys_70e5fd461788.
      t202->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t210.
      t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textDocument| p1 = t210 ).
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t212.
      IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edits| p1 = t212 ).
      ENDIF.
      t160 = t202.
      t158->load( ).
      APPEND t160 TO t158->items.
      t158->save( ).
    ENDDO.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t213 ?= t4.
    result = t213.

  ENDMETHOD.

  METHOD find_references.
    DATA(t1) = i_node.
    DATA(t2) = i_identifier.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t6 TYPE string.
    t6 = t1->get_identifier( )->stype.
    IF xsdbool( t6 <> |_builtin| ) = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t10 = t1->get_data( )->references.
      DATA t13 TYPE REF TO zcl_lnt_ireference.
      DATA t14 TYPE REF TO object.
      DATA(t15) = VALUE i( ).
      DO.
        t10->load( ).
        IF t15 >= lines( t10->items ).
          EXIT.
        ENDIF.
        CLEAR t14.
        READ TABLE t10->items INDEX t15 + 1 INTO t14.
        t15 = t15 + 1.
        DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t16.
        CLEAR t13.
        IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t16 ?= t14.
          DATA t17 TYPE REF TO object.
          t17 = t16->as_ref( ).
          t13 ?= t17.
        ELSE.
          t13 ?= t14.
        ENDIF.
        IF xsdbool( t13->reference_type = |Constructor Reference| ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t22) = VALUE abap_bool( ).
        DATA(t23) = VALUE abap_bool( ).
        DATA(t24) = VALUE abap_bool( ).
        DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t25.
        DATA t26 TYPE REF TO zcl_lnt_fi_identifier.
        t26 = t13->resolved.
        DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t29.
        IF xsdbool( t26 IS INITIAL ) = abap_true.
          CLEAR t29.
        ELSE.
          DATA t34 TYPE REF TO zcl_lnt_fi_identifier.
          t34 = t26.
          DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
          t37 = t2.
          DATA t39 TYPE abap_bool.
          DATA t40 TYPE abap_bool.
          DATA t41 TYPE REF TO zcl_lnt_position.
          t41 = t37->token->start.
          DATA t54 TYPE REF TO zcl_lnt_position.
          t54 = t34->token->start.
          t40 = t41->equals( i_p = t54 ).
          t39 = t40.
          IF t40 = abap_true.
            t39 = xsdbool( t37->filename = t34->filename ).
          ENDIF.
          DATA(t64) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t64->has = abap_true.
          t64->value = t39.
          t29 = t64.
        ENDIF.
        t25 = t29.
        IF t25 IS BOUND.
          IF t25->has = abap_true.
            t24 = xsdbool( t25->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t23 = t24.
        IF t24 = abap_true.
          t23 = xsdbool( t13->reference_type <> |Inferred Type| ).
        ENDIF.
        t22 = t23.
        IF t23 = abap_true.
          DATA t71 TYPE REF TO zcl_lnt_position.
          t71 = t13->position_7b94->token->start.
          t22 = xsdbool( xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_virtual_position ) = abap_false ).
        ENDIF.
        IF t22 = abap_true.
          DATA(t81) = t3.
          DATA t82 TYPE REF TO zcl_lnt_fi_identifier.
          t82 = t13->position_7b94.
          t81->load( ).
          APPEND t82 TO t81->items.
          t81->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t84 = t1->get_children( ).
    DATA t86 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t87 TYPE REF TO object.
    DATA(t88) = VALUE i( ).
    DO.
      t84->load( ).
      IF t88 >= lines( t84->items ).
        EXIT.
      ENDIF.
      CLEAR t87.
      READ TABLE t84->items INDEX t88 + 1 INTO t87.
      t88 = t88 + 1.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t89.
      CLEAR t86.
      IF t87 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t89 ?= t87.
        DATA t90 TYPE REF TO object.
        t90 = t89->as_ref( ).
        t86 ?= t90.
      ELSE.
        t86 ?= t87.
      ENDIF.
      t3 = t3->concat( p0 = me->find_references( i_node = t86 i_identifier = t2 ) ).
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD rnm_icf_srvc_hndlr_rfrncs.
    DATA(t1) = i_old_name.
    DATA(t2) = i_new_name.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t9 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t9 = me->reg->get_objects_by_type( i_type_9913 = |SICF| )->iterate( ).
    DO.
      DATA t13 TYPE REF TO zcl_lnt_generator_17955b8b.
      t13 = t9->next( ).
      IF t13->done = abap_true.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_object.
      t18 = t13->value.
      DATA t24 TYPE REF TO zcl_lnt_icfservice.
      CLEAR t24.
      DATA(t25) = VALUE abap_bool( ).
      t25 = abap_false.
      DATA t27 TYPE REF TO cx_root.
      CLEAR t27.
      TRY.
          DATA t28 TYPE REF TO zcl_lnt_icfservice.
          CLEAR t28.
          t28 ?= t18.
          t24 = t28.
          t25 = abap_true.
        CATCH cx_root INTO t27.
          IF xsdbool( t25 = abap_false ) = abap_true.
            t9->close( ).
          ENDIF.
          RAISE EXCEPTION t27.
      ENDTRY.
      IF xsdbool( t25 = abap_false ) = abap_true.
        t9->close( ).
      ENDIF.
      DATA t40 TYPE REF TO zif_lnt_file.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      t41 = abap_false.
      DATA t43 TYPE REF TO cx_root.
      CLEAR t43.
      TRY.
          t40 = t18->get_xml_file( ).
          t41 = abap_true.
        CATCH cx_root INTO t43.
          IF xsdbool( t41 = abap_false ) = abap_true.
            t9->close( ).
          ENDIF.
          RAISE EXCEPTION t43.
      ENDTRY.
      IF xsdbool( t41 = abap_false ) = abap_true.
        t9->close( ).
      ENDIF.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE abap_bool( ).
      t56 = abap_false.
      DATA t58 TYPE REF TO cx_root.
      CLEAR t58.
      TRY.
          DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t62.
          CLEAR t62.
          t55 = xsdbool( t40 IS INITIAL ).
          t56 = abap_true.
        CATCH cx_root INTO t58.
          IF xsdbool( t56 = abap_false ) = abap_true.
            t9->close( ).
          ENDIF.
          RAISE EXCEPTION t58.
      ENDTRY.
      IF xsdbool( t56 = abap_false ) = abap_true.
        t9->close( ).
      ENDIF.
      IF t55 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t74) = VALUE f( ).
      DATA(t75) = VALUE f( ).
      DATA(t76) = VALUE abap_bool( ).
      t76 = abap_false.
      DATA t78 TYPE REF TO cx_root.
      CLEAR t78.
      TRY.
          DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t80.
          DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t81.
          DATA t86 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t86.
          t81 = me->build_xml_file_edits( i_object_19cd = t24 i_xml_tag = |ICFHANDLER| i_old_name = t1 i_new_name = t2 i_use_lower_case = t86 ).
          t80 ?= t81.
          DATA t87 TYPE REF TO zcl_lnt_text_document_edit.
          CLEAR t87.
          DATA t88 TYPE REF TO object.
          CLEAR t88.
          DATA(t89) = VALUE i( ).
          DO.
            t80->load( ).
            IF t89 >= lines( t80->items ).
              EXIT.
            ENDIF.
            CLEAR t88.
            READ TABLE t80->items INDEX t89 + 1 INTO t88.
            t89 = t89 + 1.
            DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t90.
            CLEAR t87.
            IF t88 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t90 ?= t88.
              DATA t91 TYPE REF TO object.
              CLEAR t91.
              t91 = t90->as_ref( ).
              t87 ?= t91.
            ELSE.
              t87 ?= t88.
            ENDIF.
            DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t92.
            t92 ?= t3.
            t92->load( ).
            APPEND t87 TO t92->items.
            t92->save( ).
          ENDDO.
          DATA(t95) = VALUE f( ).
          DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t97.
          t97 ?= t3.
          t97->load( ).
          t95 = lines( t97->items ).
          t75 = t95.
          t76 = abap_true.
        CATCH cx_root INTO t78.
          IF xsdbool( t76 = abap_false ) = abap_true.
            t9->close( ).
          ENDIF.
          RAISE EXCEPTION t78.
      ENDTRY.
      IF xsdbool( t76 = abap_false ) = abap_true.
        t9->close( ).
      ENDIF.
      t74 = t75.
    ENDDO.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t107 ?= t3.
    result = t107.

  ENDMETHOD.

  METHOD fn_callback_168518.
    DATA(t1) = i_a.
    DATA(t2) = i_b.
    DATA t3 TYPE f.
    DATA t5 TYPE f.
    t5 = t2->token->start->row.
    DATA t18 TYPE f.
    t18 = t1->token->start->row.
    t3 = t5 - t18.
    IF xsdbool( t3 <> CONV f( 0 ) ) = abap_true.
      DATA(t35) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t35->has = abap_true.
      t35->value = t3.
      result = t35.
      RETURN.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t37 = t2->token->start->col.
    DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t50 = t1->token->start->col.
    result = zlnt_runtime_numb_290eb04a9758=>calculate( left = t37 right = t50 op = `-` ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1339_ccd9f0b4d3a2.
  ENDMETHOD.
ENDCLASS.
