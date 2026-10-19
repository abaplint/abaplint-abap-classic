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
    DATA(t4) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t1 IS INITIAL ).
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t12 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t15) = |renameReferences, no main identifier found|.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = t15.
      t13 = t16.
      t12 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t13 ).
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
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t21.
    t20 = t21.
    DATA t22 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t23 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t24 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t24 = me->reg->get_objects( ).
    t23 = t24->iterate( ).
    t22 = t23.
    DO.
      DATA t27 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t28.
      t28 = t22->next( ).
      t27 = t28.
      DATA(t30) = VALUE abap_bool( ).
      t30 = t27->done.
      IF t30 = abap_true.
        EXIT.
      ENDIF.
      DATA t32 TYPE REF TO zif_lnt_object.
      CLEAR t32.
      DATA t34 TYPE REF TO zif_lnt_object.
      CLEAR t34.
      t34 = t27->value.
      t32 = t34.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = VALUE abap_bool( ).
      t38 = abap_false.
      DATA t40 TYPE REF TO cx_root.
      CLEAR t40.
      TRY.
          DATA(t41) = VALUE abap_bool( ).
          t41 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_abap_object ).
          t37 = t41.
          t38 = abap_true.
        CATCH cx_root INTO t40.
          DATA(t44) = VALUE abap_bool( ).
          t44 = xsdbool( t38 = abap_false ).
          IF t44 = abap_true.
            t22->close( ).
          ENDIF.
          RAISE EXCEPTION t40.
      ENDTRY.
      DATA(t47) = VALUE abap_bool( ).
      t47 = xsdbool( t38 = abap_false ).
      IF t47 = abap_true.
        t22->close( ).
      ENDIF.
      t36 = t37.
      IF t36 = abap_true.
        DATA(t51) = VALUE abap_bool( ).
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = VALUE abap_bool( ).
        t53 = abap_false.
        DATA t55 TYPE REF TO cx_root.
        CLEAR t55.
        TRY.
            DATA(t56) = VALUE abap_bool( ).
            DATA t58 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t58.
            DATA t60 TYPE REF TO object.
            CLEAR t60.
            t60 = t32.
            t58 ?= t60.
            t56 = me->reg->is_dependency( i_obj_1ed0 = t58 ).
            t52 = t56.
            t53 = abap_true.
          CATCH cx_root INTO t55.
            DATA(t62) = VALUE abap_bool( ).
            t62 = xsdbool( t53 = abap_false ).
            IF t62 = abap_true.
              t22->close( ).
            ENDIF.
            RAISE EXCEPTION t55.
        ENDTRY.
        DATA(t65) = VALUE abap_bool( ).
        t65 = xsdbool( t53 = abap_false ).
        IF t65 = abap_true.
          t22->close( ).
        ENDIF.
        t51 = t52.
        IF t51 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t70.
        DATA(t71) = VALUE abap_bool( ).
        t71 = abap_false.
        DATA t73 TYPE REF TO cx_root.
        CLEAR t73.
        TRY.
            DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t74.
            DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t76.
            DATA t77 TYPE REF TO zif_lnt_spaghetti_scope_node.
            CLEAR t77.
            DATA t78 TYPE REF TO zif_lnt_spaghetti_scope.
            CLEAR t78.
            DATA t79 TYPE REF TO zcl_lnt_isyntax_result.
            CLEAR t79.
            DATA t80 TYPE REF TO zcl_lnt_syntax_logic.
            CLEAR t80.
            DATA(t81) = me->reg.
            DATA t82 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t82.
            DATA t84 TYPE REF TO object.
            CLEAR t84.
            t84 = t32.
            t82 ?= t84.
            t80 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t81 i_object_19cd = t82 ).
            t79 = t80->run( ).
            t78 = t79->zlnt_view_read_sr_b6b1d9e0c93e( ).
            t77 = t78->get_top( ).
            DATA t85 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t85.
            t85 = t1.
            t76 = me->find_references( i_node = t77 i_identifier = t85 ).
            t74 = t20->concat( p0 = t76 ).
            t70 = t74.
            t71 = abap_true.
          CATCH cx_root INTO t73.
            DATA(t88) = VALUE abap_bool( ).
            t88 = xsdbool( t71 = abap_false ).
            IF t88 = abap_true.
              t22->close( ).
            ENDIF.
            RAISE EXCEPTION t73.
        ENDTRY.
        DATA(t91) = VALUE abap_bool( ).
        t91 = xsdbool( t71 = abap_false ).
        IF t91 = abap_true.
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
      DATA(t100) = VALUE abap_bool( ).
      DATA(t102) = VALUE i( ).
      t96->load( ).
      t102 = lines( t96->items ).
      t100 = xsdbool( t98 < t102 ).
      IF t100 = abap_false.
        EXIT.
      ENDIF.
      DATA(t104) = VALUE i( ).
      t104 = t98.
      DO.
        DATA(t106) = VALUE abap_bool( ).
        DATA(t108) = 0.
        t106 = xsdbool( t104 > t108 ).
        IF t106 = abap_false.
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
          CLEAR t117.
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
          CLEAR t124.
          t124 = t123->as_ref( ).
          t119 ?= t124.
        ELSE.
          t119 ?= t122.
        ENDIF.
        DATA(t125) = VALUE abap_bool( ).
        DATA t126 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t126.
        DATA t127 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t127.
        t127 = t110.
        DATA t129 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t129.
        t129 = t119.
        DATA(t132) = VALUE f( ).
        DATA(t133) = VALUE f( ).
        DATA(t134) = VALUE f( ).
        DATA t141 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t141.
        t141 = t129->token.
        DATA t143 TYPE REF TO zcl_lnt_position.
        CLEAR t143.
        t143 = t141->start.
        DATA(t145) = VALUE f( ).
        t145 = t143->row.
        t134 = t145.
        DATA(t147) = VALUE f( ).
        DATA t154 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t154.
        t154 = t127->token.
        DATA t156 TYPE REF TO zcl_lnt_position.
        CLEAR t156.
        t156 = t154->start.
        DATA(t158) = VALUE f( ).
        t158 = t156->row.
        t147 = t158.
        t133 = t134 - t147.
        t132 = t133.
        DATA t160 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t160.
        DATA(t161) = VALUE abap_bool( ).
        DATA(t163) = CONV f( 0 ).
        t161 = xsdbool( t132 <> t163 ).
        IF t161 = abap_true.
          DATA(t165) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t165->has = abap_true.
          t165->value = t132.
          t160 = t165.
        ELSE.
          DATA t166 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t166.
          DATA t167 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t167.
          DATA t174 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t174.
          t174 = t129->token.
          DATA t176 TYPE REF TO zcl_lnt_position.
          CLEAR t176.
          t176 = t174->start.
          DATA t178 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t178.
          t178 = t176->col.
          t167 = t178.
          DATA t180 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t180.
          DATA t187 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t187.
          t187 = t127->token.
          DATA t189 TYPE REF TO zcl_lnt_position.
          CLEAR t189.
          t189 = t187->start.
          DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t191.
          t191 = t189->col.
          t180 = t191.
          t166 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t167 right = t180 op = `-` ).
          t160 = t166.
        ENDIF.
        t126 = t160.
        DATA(t193) = CONV f( 0 ).
        DATA(t194) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t194->has = abap_true.
        t194->value = t193.
        t125 = zlnt_runtime_numb_290eb04a9758=>compare( left = t126 right = t194 op = `>` ).
        IF t125 = abap_true.
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
            CLEAR t203.
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
            CLEAR t213.
            t213 = t212->as_ref( ).
            t208 ?= t213.
          ELSE.
            t208 ?= t211.
          ENDIF.
          t96->put( p0 = t205 p1 = t208 ).
          t96->put( p0 = t104 p1 = t196 ).
          DATA(t217) = VALUE i( ).
          DATA(t219) = 1.
          t217 = t104 - t219.
          t104 = t217.
        ELSE.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t220) = VALUE i( ).
      DATA(t222) = 1.
      t220 = t98 + t222.
      t98 = t220.
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
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zif_lnt_ddic_references.
    t8 = me->reg->get_ddic_references( ).
    t7 = t8->list_where_used( i_obj_1ed0 = t1 ).
    t6 = t7.
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
        DATA(t26) = VALUE abap_bool( ).
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t28 = t12->filename.
        t27 = t28.
        DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t30.
        DATA(t32) = VALUE abap_bool( ).
        IF t27 IS INITIAL.
          t32 = abap_true.
        ELSEIF t27->has = abap_false.
          t32 = abap_true.
        ENDIF.
        t26 = t32.
        t17 = t26.
      ENDIF.
      IF t17 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t37 TYPE f.
      DATA t38 TYPE f.
      DATA t43 TYPE REF TO zcl_lnt_abstract_token.
      t43 = t12->token.
      DATA t45 TYPE REF TO zcl_lnt_position.
      t45 = t43->start.
      DATA t47 TYPE f.
      t47 = t45->row.
      t38 = t47.
      DATA(t49) = CONV f( 1 ).
      t37 = t38 - t49.
      DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t57 TYPE REF TO zcl_lnt_abstract_token.
      t57 = t12->token.
      DATA t59 TYPE REF TO zcl_lnt_position.
      t59 = t57->start.
      DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t61 = t59->col.
      t52 = t61.
      DATA(t63) = CONV f( 1 ).
      DATA(t64) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t64->has = abap_true.
      t64->value = t63.
      t51 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t52 right = t64 op = `-` ).
      DATA t66 TYPE f.
      DATA t67 TYPE f.
      DATA t72 TYPE REF TO zcl_lnt_abstract_token.
      t72 = t12->token.
      DATA t74 TYPE REF TO zcl_lnt_position.
      t74 = t72->start.
      DATA t76 TYPE f.
      t76 = t74->row.
      t67 = t76.
      DATA(t78) = CONV f( 1 ).
      t66 = t67 - t78.
      DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t82 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t87 TYPE REF TO zcl_lnt_abstract_token.
      t87 = t12->token.
      DATA t89 TYPE REF TO zcl_lnt_position.
      t89 = t87->start.
      DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t91 = t89->col.
      t82 = t91.
      DATA(t93) = CONV f( 1 ).
      DATA(t94) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t94->has = abap_true.
      t94->value = t93.
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
      DATA t107 TYPE REF TO zcl_lnt_no_position.
      CLEAR t107.
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
      t107 = t108.
      t100 = NEW zcl_lnt_range( i_start = t101 i_end = t107 ).
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
      DATA(t115) = |start|.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
      DATA(t117) = |end|.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
      ENDIF.
      DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t119 ?= t4.
      DATA t121 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t121.
      DATA t123 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      DATA t124 TYPE string.
      DATA t125 TYPE string.
      DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t126 = t12->filename.
      t125 = t126->value.
      t124 = t125.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      DATA(t130) = 1.
      CLEAR t129.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t129->nval = t130.
      t128 = t129.
      t123 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t124 i_version = t128 ).
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
      DATA(t133) = |uri|.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
      DATA(t135) = |version|.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
      ENDIF.
      DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t140.
      t139 = t140.
      DATA t142 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t142.
      DATA t146 TYPE string.
      DATA(t148) = strlen( t3 ).
      t146 = t3.
      TRANSLATE t146 TO LOWER CASE.
      DATA t149 TYPE REF TO zcl_lnt_text_edit.
      DATA t150 TYPE REF TO zcl_lnt_range.
      t150 = t100.
      DATA t152 TYPE string.
      t152 = t146.
      t149 = NEW zcl_lnt_text_edit( i_range = t150 i_new_text = t152 ).
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
      DATA(t156) = |range|.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
      DATA(t158) = |newText|.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t159.
      IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
      ENDIF.
      t142 = t149.
      t139->load( ).
      APPEND t142 TO t139->items.
      t139->save( ).
      DATA t161 TYPE REF TO zcl_lnt_text_document_edit.
      DATA t162 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      t162 = t123.
      DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t164 = t139.
      t161 = NEW zcl_lnt_text_document_edit( i_text_document = t162 i_edits = t164 ).
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
      DATA(t168) = |textDocument|.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      t161->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
      DATA(t170) = |edits|.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t171.
      IF t161->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t161->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
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
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zif_lnt_ddic_references.
    t8 = me->reg->get_ddic_references( ).
    t7 = t8->list_where_used( i_obj_1ed0 = t1 ).
    t6 = t7.
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
        CLEAR t21.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t18.
      ENDIF.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE string( ).
      t24 = t17->type_cba0.
      DATA(t26) = |TABL|.
      t23 = xsdbool( t24 <> t26 ).
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
        CLEAR t34.
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
      CLEAR t44.
      DATA t45 TYPE REF TO zif_lnt_object.
      CLEAR t45.
      DATA(t46) = me->reg.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA(t49) = VALUE string( ).
      t49 = t17->type_cba0.
      DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t51->has = abap_true.
      t51->value = t49.
      t47 = t51.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      DATA(t55) = VALUE string( ).
      t55 = t17->name.
      DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t57->has = abap_true.
      t57->value = t55.
      t53 = t57.
      t45 = t46->get_object( i_type_9913 = t47 i_name = t53 ).
      t44 = t45.
      CLEAR t43.
      IF t44 IS BOUND.
        DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t59.
        DATA t60 TYPE REF TO object.
        CLEAR t60.
        CLEAR t59.
        t60 = t44.
        TRY.
            t43 ?= t60.
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
      DATA(t61) = VALUE abap_bool( ).
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      CLEAR t64.
      t61 = xsdbool( t41 IS INITIAL ).
      IF t61 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t68) = VALUE i( ).
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t69.
      DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t70.
      DATA t71 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t71.
      t71 = t41.
      DATA(t73) = |ROLLNAME|.
      DATA t76 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t76.
      t70 = me->build_xml_file_edits( i_object_19cd = t71 i_xml_tag = t73 i_old_name = t2 i_new_name = t3 i_use_lower_case = t76 ).
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
          CLEAR t81.
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
      DATA(t85) = VALUE i( ).
      DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t86.
      t86 ?= t4.
      t86->load( ).
      t85 = lines( t86->items ).
      t68 = t85.
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
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zif_lnt_ddic_references.
    t8 = me->reg->get_ddic_references( ).
    t7 = t8->list_where_used( i_obj_1ed0 = t1 ).
    t6 = t7.
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
        CLEAR t16.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE string( ).
      t18 = t12->type_cba0.
      DATA(t20) = |DTEL|.
      t17 = xsdbool( t18 <> t20 ).
      IF t17 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_object.
      CLEAR t24.
      DATA t25 TYPE REF TO zif_lnt_object.
      CLEAR t25.
      DATA(t26) = me->reg.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA(t29) = VALUE string( ).
      t29 = t12->type_cba0.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t29.
      t27 = t31.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA(t35) = VALUE string( ).
      t35 = t12->name.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = t35.
      t33 = t37.
      t25 = t26->get_object( i_type_9913 = t27 i_name = t33 ).
      t24 = t25.
      CLEAR t23.
      IF t24 IS BOUND.
        DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t39.
        DATA t40 TYPE REF TO object.
        CLEAR t40.
        CLEAR t39.
        t40 = t24.
        TRY.
            t23 ?= t40.
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
      DATA(t41) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      CLEAR t44.
      t41 = xsdbool( t21 IS INITIAL ).
      IF t41 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t48) = VALUE i( ).
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t50.
      DATA t51 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t51.
      t51 = t21.
      DATA(t53) = |DOMNAME|.
      DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t56.
      t50 = me->build_xml_file_edits( i_object_19cd = t51 i_xml_tag = t53 i_old_name = t2 i_new_name = t3 i_use_lower_case = t56 ).
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
          CLEAR t61.
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
      DATA(t65) = VALUE i( ).
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t66.
      t66 ?= t4.
      t66->load( ).
      t65 = lines( t66->items ).
      t48 = t65.
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
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zif_lnt_ddic_references.
    t8 = me->reg->get_ddic_references( ).
    t7 = t8->list_where_used( i_obj_1ed0 = t1 ).
    t6 = t7.
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
        CLEAR t16.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE string( ).
      t18 = t12->type_cba0.
      DATA(t20) = |TTYP|.
      t17 = xsdbool( t18 <> t20 ).
      IF t17 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_object.
      CLEAR t24.
      DATA t25 TYPE REF TO zif_lnt_object.
      CLEAR t25.
      DATA(t26) = me->reg.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA(t29) = VALUE string( ).
      t29 = t12->type_cba0.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t29.
      t27 = t31.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA(t35) = VALUE string( ).
      t35 = t12->name.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = t35.
      t33 = t37.
      t25 = t26->get_object( i_type_9913 = t27 i_name = t33 ).
      t24 = t25.
      CLEAR t23.
      IF t24 IS BOUND.
        DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t39.
        DATA t40 TYPE REF TO object.
        CLEAR t40.
        CLEAR t39.
        t40 = t24.
        TRY.
            t23 ?= t40.
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
      DATA(t41) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      CLEAR t44.
      t41 = xsdbool( t21 IS INITIAL ).
      IF t41 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t48) = VALUE i( ).
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t50.
      DATA t51 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t51.
      t51 = t21.
      DATA(t53) = |ROWTYPE|.
      DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t56.
      t50 = me->build_xml_file_edits( i_object_19cd = t51 i_xml_tag = t53 i_old_name = t2 i_new_name = t3 i_use_lower_case = t56 ).
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
          CLEAR t61.
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
      DATA(t65) = VALUE i( ).
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t66.
      t66 ?= t4.
      t66->load( ).
      t65 = lines( t66->items ).
      t48 = t65.
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
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zif_lnt_ddic_references.
    t8 = me->reg->get_ddic_references( ).
    t7 = t8->list_where_used( i_obj_1ed0 = t1 ).
    t6 = t7.
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
        CLEAR t16.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE string( ).
      t18 = t12->type_cba0.
      DATA(t20) = |AUTH|.
      t17 = xsdbool( t18 <> t20 ).
      IF t17 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_object.
      CLEAR t24.
      DATA t25 TYPE REF TO zif_lnt_object.
      CLEAR t25.
      DATA(t26) = me->reg.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA(t29) = VALUE string( ).
      t29 = t12->type_cba0.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t29.
      t27 = t31.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA(t35) = VALUE string( ).
      t35 = t12->name.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = t35.
      t33 = t37.
      t25 = t26->get_object( i_type_9913 = t27 i_name = t33 ).
      t24 = t25.
      CLEAR t23.
      IF t24 IS BOUND.
        DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t39.
        DATA t40 TYPE REF TO object.
        CLEAR t40.
        CLEAR t39.
        t40 = t24.
        TRY.
            t23 ?= t40.
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
      DATA(t41) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      CLEAR t44.
      t41 = xsdbool( t21 IS INITIAL ).
      IF t41 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t48) = VALUE i( ).
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t50.
      DATA t51 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t51.
      t51 = t21.
      DATA(t53) = |ROLLNAME|.
      DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t56.
      t50 = me->build_xml_file_edits( i_object_19cd = t51 i_xml_tag = t53 i_old_name = t2 i_new_name = t3 i_use_lower_case = t56 ).
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
          CLEAR t61.
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
      DATA(t65) = VALUE i( ).
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t66.
      t66 ?= t4.
      t66->load( ).
      t65 = lines( t66->items ).
      t48 = t65.
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
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    t13 = t14.
    DATA t15 TYPE REF TO zif_lnt_file.
    DATA t16 TYPE REF TO zif_lnt_file.
    t16 = t1->get_xml_file( ).
    t15 = t16.
    DATA(t18) = VALUE abap_bool( ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t18 = xsdbool( t15 IS INITIAL ).
    IF t18 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t25.
      result = t25.
      RETURN.
    ENDIF.
    DATA(t26) = VALUE string( ).
    DATA(t27) = VALUE string( ).
    DATA t28 TYPE abap_bool.
    t28 = t5->value.
    IF t28 = abap_true.
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
    DATA t38 TYPE abap_bool.
    t38 = t5->value.
    IF t38 = abap_true.
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
    DATA t51 TYPE string.
    DATA t52 TYPE string.
    DATA t53 TYPE string.
    DATA t54 TYPE string.
    DATA t55 TYPE string.
    DATA t56 TYPE string.
    DATA(t57) = |<|.
    DATA(t59) = strlen( t57 ).
    t56 = |{ t57 }{ t46 }|.
    DATA(t60) = |>|.
    DATA(t61) = strlen( t56 ).
    t55 = |{ t56 }{ t60 }|.
    DATA(t63) = strlen( t55 ).
    t54 = |{ t55 }{ t26 }|.
    DATA(t64) = |</|.
    DATA(t65) = strlen( t54 ).
    t53 = |{ t54 }{ t64 }|.
    DATA(t67) = strlen( t53 ).
    t52 = |{ t53 }{ t46 }|.
    DATA(t68) = |>|.
    DATA(t69) = strlen( t52 ).
    t51 = |{ t52 }{ t68 }|.
    t50 = t51.
    DATA t70 TYPE int8.
    DATA t71 TYPE int8.
    DATA t72 TYPE int8.
    t72 = strlen( t46 ).
    DATA(t76) = CONV int8( 2 ).
    t71 = t72 + t76.
    t70 = t71.
    DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t79 TYPE REF TO zif_lnt_file.
    t79 = t15.
    t78 = t79->get_raw_rows( ).
    t77 = t78.
    DATA t81 TYPE i.
    t81 = 0.
    DO.
      DATA t83 TYPE abap_bool.
      DATA t85 TYPE i.
      t77->load( ).
      t85 = lines( t77->items ).
      t83 = xsdbool( t81 < t85 ).
      IF t83 = abap_false.
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
      CLEAR t89.
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
      DATA t94 TYPE abap_bool.
      DATA(t96) = 0.
      t94 = xsdbool( t87 >= t96 ).
      IF t94 = abap_true.
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
        DATA t128 TYPE REF TO zcl_lnt_no_position.
        CLEAR t128.
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
        t128 = t129.
        t118 = NEW zcl_lnt_range( i_start = t119 i_end = t128 ).
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
        DATA(t139) = |start|.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
        DATA(t141) = |end|.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
        ENDIF.
        DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t143 ?= t13.
        DATA t145 TYPE REF TO zcl_lnt_text_document_edit.
        CLEAR t145.
        DATA t147 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        DATA t148 TYPE string.
        DATA t149 TYPE string.
        DATA t150 TYPE REF TO zif_lnt_file.
        t150 = t15.
        t149 = t150->get_filename( ).
        t148 = t149.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        DATA(t154) = 1.
        CLEAR t153.
        CREATE OBJECT t153.
        t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
        t153->nval = t154.
        t152 = t153.
        t147 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t148 i_version = t152 ).
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
        DATA(t157) = |uri|.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
        DATA(t159) = |version|.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
        ENDIF.
        DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t164.
        t163 = t164.
        DATA t166 TYPE REF TO zcl_lnt_text_edit.
        CLEAR t166.
        DATA t171 TYPE REF TO zcl_lnt_text_edit.
        DATA t172 TYPE REF TO zcl_lnt_range.
        t172 = t118.
        DATA t174 TYPE string.
        t174 = t36.
        t171 = NEW zcl_lnt_text_edit( i_range = t172 i_new_text = t174 ).
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
        DATA(t178) = |range|.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
        DATA(t180) = |newText|.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
        ENDIF.
        t166 = t171.
        t163->load( ).
        APPEND t166 TO t163->items.
        t163->save( ).
        DATA t183 TYPE REF TO zcl_lnt_text_document_edit.
        DATA t184 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        t184 = t147.
        DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t186 = t163.
        t183 = NEW zcl_lnt_text_document_edit( i_text_document = t184 i_edits = t186 ).
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
        DATA(t190) = |textDocument|.
        DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t191.
        t183->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
        DATA(t192) = |edits|.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        IF t183->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t183->zlnt_json_ownkeys_70e5fd461788->put( p0 = t192 p1 = t193 ).
        ENDIF.
        t145 = t183.
        t143->load( ).
        APPEND t145 TO t143->items.
        t143->save( ).
      ENDIF.
      DATA t194 TYPE i.
      DATA(t196) = 1.
      t194 = t81 + t196.
      t81 = t194.
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
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_file.
    DATA t7 TYPE REF TO zif_lnt_file.
    t7 = t1->get_xml_file( ).
    t6 = t7.
    DATA(t9) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9 = xsdbool( t6 IS INITIAL ).
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t16.
      result = t16.
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
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t27 TYPE REF TO zif_lnt_file.
    t27 = t6.
    t26 = t27->get_raw_rows( ).
    t25 = t26.
    DATA t29 TYPE i.
    t29 = 0.
    DO.
      DATA t31 TYPE abap_bool.
      DATA t33 TYPE i.
      t25->load( ).
      t33 = lines( t25->items ).
      t31 = xsdbool( t29 < t33 ).
      IF t31 = abap_false.
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
      CLEAR t36.
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
      DATA t44 TYPE abap_bool.
      DATA(t46) = -1.
      t44 = xsdbool( t39 = t46 ).
      IF t44 = abap_true.
        DATA t47 TYPE i.
        DATA(t49) = 1.
        t47 = t29 + t49.
        t29 = t47.
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
      DATA t55 TYPE abap_bool.
      DATA(t57) = -1.
      t55 = xsdbool( t50 = t57 ).
      IF t55 = abap_true.
        DATA t58 TYPE i.
        DATA(t60) = 1.
        t58 = t29 + t60.
        t29 = t58.
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
      DATA t78 TYPE abap_bool.
      t78 = xsdbool( t72 <> t61 ).
      IF t78 = abap_true.
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
        DATA t104 TYPE REF TO zcl_lnt_no_position.
        CLEAR t104.
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
        t104 = t105.
        t94 = NEW zcl_lnt_range( i_start = t95 i_end = t104 ).
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
        DATA(t115) = |start|.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
        DATA(t117) = |end|.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t119 ?= t4.
        DATA t121 TYPE REF TO zcl_lnt_text_document_edit.
        CLEAR t121.
        DATA t123 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        DATA t124 TYPE string.
        DATA t125 TYPE string.
        DATA t126 TYPE REF TO zif_lnt_file.
        t126 = t6.
        t125 = t126->get_filename( ).
        t124 = t125.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        DATA(t130) = 1.
        CLEAR t129.
        CREATE OBJECT t129.
        t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
        t129->nval = t130.
        t128 = t129.
        t123 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t124 i_version = t128 ).
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
        DATA(t133) = |uri|.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
        DATA(t135) = |version|.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
        ENDIF.
        DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t140.
        t139 = t140.
        DATA t142 TYPE REF TO zcl_lnt_text_edit.
        CLEAR t142.
        DATA t147 TYPE REF TO zcl_lnt_text_edit.
        DATA t148 TYPE REF TO zcl_lnt_range.
        t148 = t94.
        DATA t150 TYPE string.
        t150 = t72.
        t147 = NEW zcl_lnt_text_edit( i_range = t148 i_new_text = t150 ).
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
        DATA(t154) = |range|.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
        DATA(t156) = |newText|.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
        ENDIF.
        t142 = t147.
        t139->load( ).
        APPEND t142 TO t139->items.
        t139->save( ).
        DATA t159 TYPE REF TO zcl_lnt_text_document_edit.
        DATA t160 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        t160 = t123.
        DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t162 = t139.
        t159 = NEW zcl_lnt_text_document_edit( i_text_document = t160 i_edits = t162 ).
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
        DATA(t166) = |textDocument|.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
        DATA(t168) = |edits|.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
        ENDIF.
        t121 = t159.
        t119->load( ).
        APPEND t121 TO t119->items.
        t119->save( ).
      ENDIF.
      DATA t170 TYPE i.
      DATA(t172) = 1.
      t170 = t29 + t172.
      t29 = t170.
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
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = VALUE string( ).
    DATA(t7) = VALUE string( ).
    DATA(t8) = VALUE string( ).
    DATA(t10) = strlen( t3 ).
    t8 = t3.
    TRANSLATE t8 TO LOWER CASE.
    DATA t11 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t12) = `\/`.
    DATA(t13) = |g|.
    CREATE OBJECT t11 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t12 flags = t13 checked = abap_true.
    DATA(t14) = |#|.
    DATA(t15) = strlen( t8 ).
    t7 = t11->replace( p0 = t8 p1 = t14 ).
    t6 = t7.
    DATA(t16) = VALUE string( ).
    DATA(t17) = VALUE string( ).
    DATA(t18) = t2.
    DATA(t19) = strlen( t18 ).
    t17 = t18.
    TRANSLATE t17 TO LOWER CASE.
    DATA t20 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t21) = `\/`.
    DATA(t22) = |g|.
    CREATE OBJECT t20 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t21 flags = t22 checked = abap_true.
    DATA(t23) = |#|.
    DATA(t24) = strlen( t17 ).
    t16 = t20->replace( p0 = t17 p1 = t23 ).
    t2 = t16.
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
        CLEAR t31.
        t31 = t30->as_ref( ).
        t27 ?= t31.
      ELSE.
        t27 ?= t28.
      ENDIF.
      DATA(t32) = VALUE string( ).
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
      t32 = t33.
      DATA t40 TYPE REF TO zcl_lnt_rename_file.
      CLEAR t40.
      DATA(t41) = VALUE string( ).
      DATA(t42) = VALUE string( ).
      t42 = t27->get_filename( ).
      t41 = t42.
      DATA(t44) = VALUE string( ).
      t44 = t32.
      DATA t46 TYPE REF TO zcl_lnt_rename_file.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA(t48) = |rename|.
      DATA t51 TYPE REF TO zcl_lnt_rename_file_options.
      CLEAR t51.
      t46 = NEW zcl_lnt_rename_file( i_annotation_id = t47 i_kind = t48 i_old_uri = t41 i_new_uri = t44 i_options = t51 ).
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
            CLEAR t59.
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
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
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
      DATA(t15) = VALUE string( ).
      DATA(t16) = VALUE string( ).
      DATA(t17) = VALUE string( ).
      DATA t18 TYPE string.
      DATA t19 TYPE string.
      DATA t22 TYPE string.
      t22 = t9->filename.
      t19 = t22.
      DATA(t24) = |:|.
      DATA(t25) = strlen( t19 ).
      t18 = |{ t19 }{ t24 }|.
      DATA(t26) = VALUE string( ).
      DATA t27 TYPE f.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      t34 = t9->token.
      DATA t36 TYPE REF TO zcl_lnt_position.
      t36 = t34->start.
      DATA t38 TYPE f.
      t38 = t36->row.
      t27 = t38.
      IF t27 <> trunc( t27 ) OR t27 > range_safe_integer OR t27 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t40) = CONV int8( t27 ).
      t26 = |{ t40 }|.
      DATA(t41) = strlen( t18 ).
      t17 = |{ t18 }{ t26 }|.
      DATA(t42) = |:|.
      DATA(t43) = strlen( t17 ).
      t16 = |{ t17 }{ t42 }|.
      DATA t44 TYPE string.
      DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t52 TYPE REF TO zcl_lnt_abstract_token.
      t52 = t9->token.
      DATA t54 TYPE REF TO zcl_lnt_position.
      t54 = t52->start.
      DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t56 = t54->col.
      t45 = t56.
      t44 = zlnt_runtime_numb_290eb04a9758=>text( t45 ).
      DATA(t58) = strlen( t16 ).
      t15 = |{ t16 }{ t44 }|.
      t14 = t15.
      DATA t59 TYPE abap_bool.
      t59 = t6->has( p0 = t14 ).
      IF t59 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t62 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      t62 = t6->add( p0 = t14 ).
      DATA t68 TYPE f.
      DATA t69 TYPE f.
      DATA t76 TYPE REF TO zcl_lnt_abstract_token.
      t76 = t9->token.
      DATA t78 TYPE REF TO zcl_lnt_position.
      t78 = t76->start.
      DATA t80 TYPE f.
      t80 = t78->row.
      t69 = t80.
      DATA(t82) = CONV f( 1 ).
      t68 = t69 - t82.
      DATA t84 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t85 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t92 TYPE REF TO zcl_lnt_abstract_token.
      t92 = t9->token.
      DATA t94 TYPE REF TO zcl_lnt_position.
      t94 = t92->start.
      DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t96 = t94->col.
      t85 = t96.
      DATA(t98) = CONV f( 1 ).
      DATA(t99) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t99->has = abap_true.
      t99->value = t98.
      t84 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t85 right = t99 op = `-` ).
      DATA t101 TYPE f.
      DATA t102 TYPE f.
      DATA t109 TYPE REF TO zcl_lnt_abstract_token.
      t109 = t9->token.
      DATA t111 TYPE REF TO zcl_lnt_position.
      t111 = t109->start.
      DATA t113 TYPE f.
      t113 = t111->row.
      t102 = t113.
      DATA(t115) = CONV f( 1 ).
      t101 = t102 - t115.
      DATA t117 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t118 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t119 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t126 TYPE REF TO zcl_lnt_abstract_token.
      t126 = t9->token.
      DATA t128 TYPE REF TO zcl_lnt_position.
      t128 = t126->start.
      DATA t130 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t130 = t128->col.
      t119 = t130.
      DATA(t132) = CONV f( 1 ).
      DATA(t133) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t133->has = abap_true.
      t133->value = t132.
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
      DATA t146 TYPE REF TO zcl_lnt_no_position.
      CLEAR t146.
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
      t146 = t147.
      t139 = NEW zcl_lnt_range( i_start = t140 i_end = t146 ).
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
      DATA(t154) = |start|.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
      DATA(t156) = |end|.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      IF t139->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
      ENDIF.
      DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t158 ?= t4.
      DATA t160 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t160.
      DATA t162 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      DATA t163 TYPE string.
      DATA t167 TYPE string.
      t167 = t9->filename.
      t163 = t167.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t170.
      DATA(t171) = 1.
      CLEAR t170.
      CREATE OBJECT t170.
      t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t170->nval = t171.
      t169 = t170.
      t162 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( i_uri = t163 i_version = t169 ).
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
      DATA(t174) = |uri|.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
      DATA(t176) = |version|.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
      ENDIF.
      DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t181.
      t180 = t181.
      DATA t183 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t183.
      DATA t187 TYPE string.
      DATA(t189) = strlen( t3 ).
      t187 = t3.
      TRANSLATE t187 TO LOWER CASE.
      DATA t190 TYPE REF TO zcl_lnt_text_edit.
      DATA t191 TYPE REF TO zcl_lnt_range.
      t191 = t139.
      DATA t193 TYPE string.
      t193 = t187.
      t190 = NEW zcl_lnt_text_edit( i_range = t191 i_new_text = t193 ).
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
      DATA(t197) = |range|.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t198.
      t190->zlnt_json_ownkeys_70e5fd461788->put( p0 = t197 p1 = t198 ).
      DATA(t199) = |newText|.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t200.
      IF t190->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t190->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
      ENDIF.
      t183 = t190.
      t180->load( ).
      APPEND t183 TO t180->items.
      t180->save( ).
      DATA t202 TYPE REF TO zcl_lnt_text_document_edit.
      DATA t203 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      t203 = t162.
      DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t205 = t180.
      t202 = NEW zcl_lnt_text_document_edit( i_text_document = t203 i_edits = t205 ).
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
      DATA(t209) = |textDocument|.
      DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t210.
      t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
      DATA(t211) = |edits|.
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t212.
      IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t211 p1 = t212 ).
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
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_iscope_identifier.
    t7 = t1->get_identifier( ).
    t6 = t7->stype.
    DATA(t9) = |_builtin|.
    t5 = xsdbool( t6 <> t9 ).
    IF t5 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t11 TYPE REF TO zcl_lnt_iscope_data.
      t11 = t1->get_data( ).
      t10 = t11->references.
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
        DATA t18 TYPE abap_bool.
        DATA t19 TYPE string.
        t19 = t13->reference_type.
        DATA(t21) = |Constructor Reference|.
        t18 = xsdbool( t19 = t21 ).
        IF t18 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t22) = VALUE abap_bool( ).
        DATA(t23) = VALUE abap_bool( ).
        DATA(t24) = VALUE abap_bool( ).
        DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t25.
        DATA t26 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t27 TYPE REF TO zcl_lnt_fi_identifier.
        t27 = t13->resolved.
        t26 = t27.
        DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t29.
        DATA(t30) = xsdbool( t26 IS INITIAL ).
        IF t30 = abap_true.
          CLEAR t29.
        ELSE.
          DATA(t33) = VALUE abap_bool( ).
          DATA t34 TYPE REF TO zcl_lnt_fi_identifier.
          t34 = t26.
          DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
          t37 = t2.
          DATA t39 TYPE abap_bool.
          DATA t40 TYPE abap_bool.
          DATA t41 TYPE REF TO zcl_lnt_position.
          DATA t46 TYPE REF TO zcl_lnt_abstract_token.
          t46 = t37->token.
          DATA t48 TYPE REF TO zcl_lnt_position.
          t48 = t46->start.
          t41 = t48.
          DATA t50 TYPE REF TO zcl_lnt_position.
          DATA t52 TYPE REF TO zcl_lnt_abstract_token.
          t52 = t34->token.
          DATA t54 TYPE REF TO zcl_lnt_position.
          t54 = t52->start.
          t50 = t54.
          t40 = t41->equals( i_p = t50 ).
          t39 = t40.
          IF t40 = abap_true.
            DATA t56 TYPE abap_bool.
            DATA t57 TYPE string.
            DATA t60 TYPE string.
            t60 = t37->filename.
            t57 = t60.
            DATA t62 TYPE string.
            t62 = t34->filename.
            t56 = xsdbool( t57 = t62 ).
            t39 = t56.
          ENDIF.
          t33 = t39.
          DATA(t64) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t64->has = abap_true.
          t64->value = t33.
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
          DATA t65 TYPE abap_bool.
          DATA t66 TYPE string.
          t66 = t13->reference_type.
          DATA(t68) = |Inferred Type|.
          t65 = xsdbool( t66 <> t68 ).
          t23 = t65.
        ENDIF.
        t22 = t23.
        IF t23 = abap_true.
          DATA t69 TYPE abap_bool.
          DATA t70 TYPE abap_bool.
          DATA t71 TYPE REF TO zcl_lnt_position.
          DATA t73 TYPE REF TO zcl_lnt_fi_identifier.
          t73 = t13->position_7b94.
          DATA t77 TYPE REF TO zcl_lnt_abstract_token.
          t77 = t73->token.
          DATA t79 TYPE REF TO zcl_lnt_position.
          t79 = t77->start.
          t71 = t79.
          t70 = xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_virtual_position ).
          t69 = xsdbool( t70 = abap_false ).
          t22 = t69.
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
      DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t93 = me->find_references( i_node = t86 i_identifier = t2 ).
      t91 = t3->concat( p0 = t93 ).
      t3 = t91.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD rnm_icf_srvc_hndlr_rfrncs.
    DATA(t1) = i_old_name.
    DATA(t2) = i_new_name.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t6 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA(t8) = |SICF|.
    t6 = me->reg->get_objects_by_type( i_type_9913 = t8 ).
    DATA t9 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t10 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t10 = t6->iterate( ).
    t9 = t10.
    DO.
      DATA t13 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t14.
      t14 = t9->next( ).
      t13 = t14.
      DATA(t16) = VALUE abap_bool( ).
      t16 = t13->done.
      IF t16 = abap_true.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      DATA t20 TYPE REF TO zif_lnt_object.
      CLEAR t20.
      t20 = t13->value.
      t18 = t20.
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
          DATA(t31) = VALUE abap_bool( ).
          t31 = xsdbool( t25 = abap_false ).
          IF t31 = abap_true.
            t9->close( ).
          ENDIF.
          RAISE EXCEPTION t27.
      ENDTRY.
      DATA(t34) = VALUE abap_bool( ).
      t34 = xsdbool( t25 = abap_false ).
      IF t34 = abap_true.
        t9->close( ).
      ENDIF.
      DATA t40 TYPE REF TO zif_lnt_file.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      t41 = abap_false.
      DATA t43 TYPE REF TO cx_root.
      CLEAR t43.
      TRY.
          DATA t44 TYPE REF TO zif_lnt_file.
          CLEAR t44.
          t44 = t18->get_xml_file( ).
          t40 = t44.
          t41 = abap_true.
        CATCH cx_root INTO t43.
          DATA(t47) = VALUE abap_bool( ).
          t47 = xsdbool( t41 = abap_false ).
          IF t47 = abap_true.
            t9->close( ).
          ENDIF.
          RAISE EXCEPTION t43.
      ENDTRY.
      DATA(t50) = VALUE abap_bool( ).
      t50 = xsdbool( t41 = abap_false ).
      IF t50 = abap_true.
        t9->close( ).
      ENDIF.
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE abap_bool( ).
      t56 = abap_false.
      DATA t58 TYPE REF TO cx_root.
      CLEAR t58.
      TRY.
          DATA(t59) = VALUE abap_bool( ).
          DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t62.
          CLEAR t62.
          t59 = xsdbool( t40 IS INITIAL ).
          t55 = t59.
          t56 = abap_true.
        CATCH cx_root INTO t58.
          DATA(t67) = VALUE abap_bool( ).
          t67 = xsdbool( t56 = abap_false ).
          IF t67 = abap_true.
            t9->close( ).
          ENDIF.
          RAISE EXCEPTION t58.
      ENDTRY.
      DATA(t70) = VALUE abap_bool( ).
      t70 = xsdbool( t56 = abap_false ).
      IF t70 = abap_true.
        t9->close( ).
      ENDIF.
      t54 = t55.
      IF t54 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t74) = VALUE f( ).
      DATA(t75) = VALUE f( ).
      DATA(t76) = VALUE abap_bool( ).
      t76 = abap_false.
      DATA t78 TYPE REF TO cx_root.
      CLEAR t78.
      TRY.
          DATA(t79) = VALUE f( ).
          DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t80.
          DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t81.
          DATA(t83) = |ICFHANDLER|.
          DATA t86 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t86.
          t81 = me->build_xml_file_edits( i_object_19cd = t24 i_xml_tag = t83 i_old_name = t1 i_new_name = t2 i_use_lower_case = t86 ).
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
          DATA(t96) = VALUE i( ).
          DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t97.
          t97 ?= t3.
          t97->load( ).
          t96 = lines( t97->items ).
          t95 = t96.
          t79 = t95.
          t75 = t79.
          t76 = abap_true.
        CATCH cx_root INTO t78.
          DATA(t100) = VALUE abap_bool( ).
          t100 = xsdbool( t76 = abap_false ).
          IF t100 = abap_true.
            t9->close( ).
          ENDIF.
          RAISE EXCEPTION t78.
      ENDTRY.
      DATA(t103) = VALUE abap_bool( ).
      t103 = xsdbool( t76 = abap_false ).
      IF t103 = abap_true.
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
    DATA t4 TYPE f.
    DATA t5 TYPE f.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    t12 = t2->token.
    DATA t14 TYPE REF TO zcl_lnt_position.
    t14 = t12->start.
    DATA t16 TYPE f.
    t16 = t14->row.
    t5 = t16.
    DATA t18 TYPE f.
    DATA t25 TYPE REF TO zcl_lnt_abstract_token.
    t25 = t1->token.
    DATA t27 TYPE REF TO zcl_lnt_position.
    t27 = t25->start.
    DATA t29 TYPE f.
    t29 = t27->row.
    t18 = t29.
    t4 = t5 - t18.
    t3 = t4.
    DATA t31 TYPE abap_bool.
    DATA(t33) = CONV f( 0 ).
    t31 = xsdbool( t3 <> t33 ).
    IF t31 = abap_true.
      DATA(t35) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t35->has = abap_true.
      t35->value = t3.
      result = t35.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t37 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t44 TYPE REF TO zcl_lnt_abstract_token.
    t44 = t2->token.
    DATA t46 TYPE REF TO zcl_lnt_position.
    t46 = t44->start.
    DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t48 = t46->col.
    t37 = t48.
    DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t57 TYPE REF TO zcl_lnt_abstract_token.
    t57 = t1->token.
    DATA t59 TYPE REF TO zcl_lnt_position.
    t59 = t57->start.
    DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t61 = t59->col.
    t50 = t61.
    t36 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t37 right = t50 op = `-` ).
    result = t36.

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
