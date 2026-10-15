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
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD rename_references.
    DATA(t1) = i_id.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t5.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA(t15) = |renameReferences, no main identifier found|.
        DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t16->has = abap_true.
        t16->value = t15.
        t13 = t16.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t17.
        t13 = t17.
      ENDIF.
      t12 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t13 ).
      t11 = NEW #( ).
      t11->payload = t12.
      CLEAR t11->source_value.
      IF t12 IS BOUND.
        DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t18.
        DATA t19 TYPE REF TO object.
        CLEAR t19.
        CLEAR t18.
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
      ENDIF.
      RAISE EXCEPTION t11.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    CREATE OBJECT t21.
    t20 = t21.
    DATA t22 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t23.
    DATA t24 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t24.
    DATA(t25) = me->reg.
    t24 = t25->get_objects( ).
    t23 = t24->iterate( ).
    t22 = t23.
    DO.
      DATA(t26) = abap_true.
      IF t26 = abap_false.
        EXIT.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t28.
      DATA(t29) = t22.
      t28 = t29->next( ).
      t27 = t28.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = t27.
      t30 = t31->done.
      IF t30 = abap_true.
        EXIT.
      ENDIF.
      DATA t32 TYPE REF TO zif_lnt_object.
      CLEAR t32.
      DATA t33 TYPE REF TO zif_lnt_object.
      CLEAR t33.
      DATA t34 TYPE REF TO zif_lnt_object.
      CLEAR t34.
      DATA(t35) = t27.
      t34 = t35->value.
      t33 = t34.
      t32 = t33.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = abap_false.
      t38 = t39.
      DATA t40 TYPE REF TO cx_root.
      CLEAR t40.
      TRY.
          DATA(t41) = VALUE abap_bool( ).
          DATA(t42) = t32.
          t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_abap_object ).
          t37 = t41.
          DATA(t43) = abap_true.
          t38 = t43.
        CATCH cx_root INTO t40.
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = t38.
          t44 = xsdbool( t45 = abap_false ).
          IF t44 = abap_true.
            DATA(t46) = t22.
            t46->close( ).
          ENDIF.
          RAISE EXCEPTION t40.
      ENDTRY.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = t38.
      t47 = xsdbool( t48 = abap_false ).
      IF t47 = abap_true.
        DATA(t49) = t22.
        t49->close( ).
      ENDIF.
      DATA(t50) = t37.
      t36 = t50.
      IF t36 = abap_true.
        DATA(t51) = VALUE abap_bool( ).
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = abap_false.
        t53 = t54.
        DATA t55 TYPE REF TO cx_root.
        CLEAR t55.
        TRY.
            DATA(t56) = VALUE abap_bool( ).
            DATA(t57) = me->reg.
            DATA t58 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t58.
            DATA(t59) = t32.
            DATA t60 TYPE REF TO object.
            CLEAR t60.
            t60 = t59.
            t58 ?= t60.
            t56 = t57->is_dependency( i_obj_1ed0 = t58 ).
            t52 = t56.
            DATA(t61) = abap_true.
            t53 = t61.
          CATCH cx_root INTO t55.
            DATA(t62) = VALUE abap_bool( ).
            DATA(t63) = t53.
            t62 = xsdbool( t63 = abap_false ).
            IF t62 = abap_true.
              DATA(t64) = t22.
              t64->close( ).
            ENDIF.
            RAISE EXCEPTION t55.
        ENDTRY.
        DATA(t65) = VALUE abap_bool( ).
        DATA(t66) = t53.
        t65 = xsdbool( t66 = abap_false ).
        IF t65 = abap_true.
          DATA(t67) = t22.
          t67->close( ).
        ENDIF.
        DATA(t68) = t52.
        t51 = t68.
        IF t51 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t69.
        DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t70.
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = abap_false.
        t71 = t72.
        DATA t73 TYPE REF TO cx_root.
        CLEAR t73.
        TRY.
            DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t74.
            DATA(t75) = t20.
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
            DATA(t83) = t32.
            DATA t84 TYPE REF TO object.
            CLEAR t84.
            t84 = t83.
            t82 ?= t84.
            t80 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t81 i_object_19cd = t82 ).
            t79 = t80->run( ).
            t78 = t79->zlnt_view_read_sr_b6b1d9e0c93e( ).
            t77 = t78->get_top( ).
            DATA t85 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t85.
            DATA(t86) = t1.
            t85 = t86.
            t76 = me->find_references( i_node = t77 i_identifier = t85 ).
            t74 = t75->concat( p0 = t76 ).
            t70 = t74.
            DATA(t87) = abap_true.
            t71 = t87.
          CATCH cx_root INTO t73.
            DATA(t88) = VALUE abap_bool( ).
            DATA(t89) = t71.
            t88 = xsdbool( t89 = abap_false ).
            IF t88 = abap_true.
              DATA(t90) = t22.
              t90->close( ).
            ENDIF.
            RAISE EXCEPTION t73.
        ENDTRY.
        DATA(t91) = VALUE abap_bool( ).
        DATA(t92) = t71.
        t91 = xsdbool( t92 = abap_false ).
        IF t91 = abap_true.
          DATA(t93) = t22.
          t93->close( ).
        ENDIF.
        DATA(t94) = t70.
        t69 = t94.
        t20 = t69.
      ENDIF.
    ENDDO.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t96.
    DATA(t97) = t20.
    t96 = t97.
    DATA(t98) = VALUE i( ).
    DATA(t99) = 1.
    t98 = t99.
    DO.
      DATA(t100) = VALUE abap_bool( ).
      DATA(t101) = t98.
      DATA(t102) = VALUE i( ).
      DATA(t103) = t96.
      t103->load( ).
      t102 = lines( t103->items ).
      t100 = xsdbool( t101 < t102 ).
      IF t100 = abap_false.
        EXIT.
      ENDIF.
      DATA(t104) = VALUE i( ).
      DATA(t105) = t98.
      t104 = t105.
      DO.
        DATA(t106) = VALUE abap_bool( ).
        DATA(t107) = t104.
        DATA(t108) = 0.
        t106 = xsdbool( t107 > t108 ).
        IF t106 = abap_false.
          EXIT.
        ENDIF.
        DATA t109 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t109.
        DATA t110 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t110.
        DATA(t111) = t96.
        DATA(t112) = VALUE i( ).
        DATA(t113) = t104.
        DATA(t114) = 1.
        t112 = t113 - t114.
        t112 = t112 + 1.
        DATA t115 TYPE REF TO object.
        CLEAR t115.
        t111->load( ).
        CLEAR t115.
        READ TABLE t111->items INDEX t112 INTO t115.
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
        t109 = t110.
        DATA t118 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t118.
        DATA t119 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t119.
        DATA(t120) = t96.
        DATA(t121) = t104.
        t121 = t121 + 1.
        DATA t122 TYPE REF TO object.
        CLEAR t122.
        t120->load( ).
        CLEAR t122.
        READ TABLE t120->items INDEX t121 INTO t122.
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
        t118 = t119.
        DATA(t125) = VALUE abap_bool( ).
        DATA t126 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t126.
        DATA t127 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t127.
        DATA(t128) = t109.
        t127 = t128.
        DATA t129 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t129.
        DATA(t130) = t118.
        t129 = t130.
        DATA t131 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t131.
        DATA(t132) = VALUE f( ).
        DATA(t133) = VALUE f( ).
        DATA(t134) = VALUE f( ).
        DATA t135 TYPE REF TO zcl_lnt_position.
        CLEAR t135.
        DATA t136 TYPE REF TO zcl_lnt_position.
        CLEAR t136.
        DATA t137 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t137.
        DATA(t138) = t129.
        t137 = t138.
        DATA t139 TYPE REF TO zcl_lnt_position.
        CLEAR t139.
        DATA t140 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t140.
        DATA t141 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t141.
        DATA(t142) = t137.
        t141 = t142->token.
        t140 = t141.
        DATA t143 TYPE REF TO zcl_lnt_position.
        CLEAR t143.
        DATA(t144) = t140.
        t143 = t144->start.
        t139 = t143.
        t136 = t139.
        t135 = t136.
        DATA(t145) = VALUE f( ).
        DATA(t146) = t135.
        t145 = t146->row.
        t134 = t145.
        DATA(t147) = VALUE f( ).
        DATA t148 TYPE REF TO zcl_lnt_position.
        CLEAR t148.
        DATA t149 TYPE REF TO zcl_lnt_position.
        CLEAR t149.
        DATA t150 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t150.
        DATA(t151) = t127.
        t150 = t151.
        DATA t152 TYPE REF TO zcl_lnt_position.
        CLEAR t152.
        DATA t153 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t153.
        DATA t154 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t154.
        DATA(t155) = t150.
        t154 = t155->token.
        t153 = t154.
        DATA t156 TYPE REF TO zcl_lnt_position.
        CLEAR t156.
        DATA(t157) = t153.
        t156 = t157->start.
        t152 = t156.
        t149 = t152.
        t148 = t149.
        DATA(t158) = VALUE f( ).
        DATA(t159) = t148.
        t158 = t159->row.
        t147 = t158.
        t133 = t134 - t147.
        t132 = t133.
        DATA t160 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t160.
        DATA(t161) = VALUE abap_bool( ).
        DATA(t162) = t132.
        DATA(t163) = CONV f( 0 ).
        t161 = xsdbool( t162 <> t163 ).
        IF t161 = abap_true.
          DATA(t164) = t132.
          DATA(t165) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t165->has = abap_true.
          t165->value = t164.
          t160 = t165.
        ELSE.
          DATA t166 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t166.
          DATA t167 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t167.
          DATA t168 TYPE REF TO zcl_lnt_position.
          CLEAR t168.
          DATA t169 TYPE REF TO zcl_lnt_position.
          CLEAR t169.
          DATA t170 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t170.
          DATA(t171) = t129.
          t170 = t171.
          DATA t172 TYPE REF TO zcl_lnt_position.
          CLEAR t172.
          DATA t173 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t173.
          DATA t174 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t174.
          DATA(t175) = t170.
          t174 = t175->token.
          t173 = t174.
          DATA t176 TYPE REF TO zcl_lnt_position.
          CLEAR t176.
          DATA(t177) = t173.
          t176 = t177->start.
          t172 = t176.
          t169 = t172.
          t168 = t169.
          DATA t178 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t178.
          DATA(t179) = t168.
          t178 = t179->col.
          t167 = t178.
          DATA t180 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t180.
          DATA t181 TYPE REF TO zcl_lnt_position.
          CLEAR t181.
          DATA t182 TYPE REF TO zcl_lnt_position.
          CLEAR t182.
          DATA t183 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t183.
          DATA(t184) = t127.
          t183 = t184.
          DATA t185 TYPE REF TO zcl_lnt_position.
          CLEAR t185.
          DATA t186 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t186.
          DATA t187 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t187.
          DATA(t188) = t183.
          t187 = t188->token.
          t186 = t187.
          DATA t189 TYPE REF TO zcl_lnt_position.
          CLEAR t189.
          DATA(t190) = t186.
          t189 = t190->start.
          t185 = t189.
          t182 = t185.
          t181 = t182.
          DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t191.
          DATA(t192) = t181.
          t191 = t192->col.
          t180 = t191.
          t166 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t167 right = t180 op = `-` ).
          t160 = t166.
        ENDIF.
        t131 = t160.
        t126 = t131.
        DATA(t193) = CONV f( 0 ).
        DATA(t194) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t194->has = abap_true.
        t194->value = t193.
        t125 = zlnt_runtime_numb_290eb04a9758=>compare( left = t126 right = t194 op = `>` ).
        IF t125 = abap_true.
          DATA t195 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t195.
          DATA t196 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t196.
          DATA(t197) = t96.
          DATA(t198) = VALUE i( ).
          DATA(t199) = t104.
          DATA(t200) = 1.
          t198 = t199 - t200.
          t198 = t198 + 1.
          DATA t201 TYPE REF TO object.
          CLEAR t201.
          t197->load( ).
          CLEAR t201.
          READ TABLE t197->items INDEX t198 INTO t201.
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
          t195 = t196.
          DATA(t204) = t96.
          DATA(t205) = VALUE i( ).
          DATA(t206) = t104.
          DATA(t207) = 1.
          t205 = t206 - t207.
          DATA t208 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t208.
          DATA(t209) = t96.
          DATA(t210) = t104.
          t210 = t210 + 1.
          DATA t211 TYPE REF TO object.
          CLEAR t211.
          t209->load( ).
          CLEAR t211.
          READ TABLE t209->items INDEX t210 INTO t211.
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
          t204->put( p0 = t205 p1 = t208 ).
          DATA(t214) = t96.
          DATA(t215) = t104.
          DATA(t216) = t195.
          t214->put( p0 = t215 p1 = t216 ).
          DATA(t217) = VALUE i( ).
          DATA(t218) = t104.
          DATA(t219) = 1.
          t217 = t218 - t219.
          t104 = t217.
        ELSE.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t220) = VALUE i( ).
      DATA(t221) = t98.
      DATA(t222) = 1.
      t220 = t221 + t222.
      t98 = t220.
    ENDDO.
    DATA(t223) = t96.
    t95 = t223.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t224.
    DATA t225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t225.
    DATA(t226) = t20.
    DATA(t227) = t2.
    DATA(t228) = t3.
    t225 = me->replace_refs( i_refs = t226 i_old_name = t227 i_new_name = t228 ).
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
    DATA(t9) = me->reg.
    t8 = t9->get_ddic_references( ).
    DATA(t10) = t1.
    t7 = t8->list_where_used( i_obj_1ed0 = t10 ).
    t6 = t7.
    DATA(t11) = t6.
    DATA t12 TYPE REF TO zcl_lnt_shape_7c1b39e6.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    DATA(t14) = VALUE i( ).
    DO.
      t11->load( ).
      IF t14 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t11->items INDEX t14 + 1 INTO t13.
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
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t21) = t12.
      t20 = t21->token.
      t19 = t20.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      t22 = t23.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t19.
      IF t25 IS INITIAL.
        t24 = abap_true.
      ENDIF.
      t18 = t24.
      t17 = t18.
      IF t18 = abap_false.
        DATA(t26) = VALUE abap_bool( ).
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t29) = t12.
        t28 = t29->filename.
        t27 = t28.
        DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        t30 = t31.
        DATA(t32) = VALUE abap_bool( ).
        DATA(t33) = t27.
        IF t33 IS INITIAL.
          t32 = abap_true.
        ELSEIF t33->has = abap_false.
          t32 = abap_true.
        ENDIF.
        t26 = t32.
        t17 = t26.
      ENDIF.
      IF t17 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t34 TYPE REF TO zcl_lnt_range.
      CLEAR t34.
      DATA t35 TYPE REF TO zcl_lnt_range.
      CLEAR t35.
      DATA t36 TYPE f.
      DATA t37 TYPE f.
      DATA t38 TYPE f.
      DATA t39 TYPE REF TO zcl_lnt_position.
      DATA t40 TYPE REF TO zcl_lnt_position.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      DATA t43 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t44) = t12.
      t43 = t44->token.
      t42 = t43.
      t41 = t42.
      DATA t45 TYPE REF TO zcl_lnt_position.
      DATA(t46) = t41.
      t45 = t46->start.
      t40 = t45.
      t39 = t40.
      DATA t47 TYPE f.
      DATA(t48) = t39.
      t47 = t48->row.
      t38 = t47.
      DATA(t49) = CONV f( 1 ).
      t37 = t38 - t49.
      t36 = t37.
      DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t53 TYPE REF TO zcl_lnt_position.
      DATA t54 TYPE REF TO zcl_lnt_position.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA t56 TYPE REF TO zcl_lnt_abstract_token.
      DATA t57 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t58) = t12.
      t57 = t58->token.
      t56 = t57.
      t55 = t56.
      DATA t59 TYPE REF TO zcl_lnt_position.
      DATA(t60) = t55.
      t59 = t60->start.
      t54 = t59.
      t53 = t54.
      DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t62) = t53.
      t61 = t62->col.
      t52 = t61.
      DATA(t63) = CONV f( 1 ).
      DATA(t64) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t64->has = abap_true.
      t64->value = t63.
      t51 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t52 right = t64 op = `-` ).
      t50 = t51.
      DATA t65 TYPE f.
      DATA t66 TYPE f.
      DATA t67 TYPE f.
      DATA t68 TYPE REF TO zcl_lnt_position.
      DATA t69 TYPE REF TO zcl_lnt_position.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      DATA t71 TYPE REF TO zcl_lnt_abstract_token.
      DATA t72 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t73) = t12.
      t72 = t73->token.
      t71 = t72.
      t70 = t71.
      DATA t74 TYPE REF TO zcl_lnt_position.
      DATA(t75) = t70.
      t74 = t75->start.
      t69 = t74.
      t68 = t69.
      DATA t76 TYPE f.
      DATA(t77) = t68.
      t76 = t77->row.
      t67 = t76.
      DATA(t78) = CONV f( 1 ).
      t66 = t67 - t78.
      t65 = t66.
      DATA t79 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t82 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t83 TYPE REF TO zcl_lnt_position.
      DATA t84 TYPE REF TO zcl_lnt_position.
      DATA t85 TYPE REF TO zcl_lnt_abstract_token.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      DATA t87 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t88) = t12.
      t87 = t88->token.
      t86 = t87.
      t85 = t86.
      DATA t89 TYPE REF TO zcl_lnt_position.
      DATA(t90) = t85.
      t89 = t90->start.
      t84 = t89.
      t83 = t84.
      DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t92) = t83.
      t91 = t92->col.
      t82 = t91.
      DATA(t93) = CONV f( 1 ).
      DATA(t94) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t94->has = abap_true.
      t94->value = t93.
      t81 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t82 right = t94 op = `-` ).
      DATA t95 TYPE f.
      DATA t96 TYPE i.
      DATA(t97) = t2.
      DATA(t98) = strlen( t97 ).
      t96 = t98.
      t95 = t96.
      DATA(t99) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t99->has = abap_true.
      t99->value = t95.
      t80 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t81 right = t99 op = `+` ).
      t79 = t80.
      DATA t100 TYPE REF TO zcl_lnt_range.
      CLEAR t100.
      DATA t101 TYPE REF TO zcl_lnt_no_position.
      CLEAR t101.
      DATA t102 TYPE REF TO zcl_lnt_no_position.
      DATA(t103) = t36.
      DATA(t104) = t50.
      t102 = NEW zcl_lnt_no_position( i_line = t103 i_character = t104 ).
      CREATE OBJECT t102->zlnt_view_ownkeys_b0e8086400eb.
      t102->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t105 ).
      ENDIF.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t106 ).
      ENDIF.
      t101 = t102.
      DATA t107 TYPE REF TO zcl_lnt_no_position.
      CLEAR t107.
      DATA t108 TYPE REF TO zcl_lnt_no_position.
      DATA(t109) = t65.
      DATA(t110) = t79.
      t108 = NEW zcl_lnt_no_position( i_line = t109 i_character = t110 ).
      CREATE OBJECT t108->zlnt_view_ownkeys_b0e8086400eb.
      t108->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t111 ).
      ENDIF.
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
      IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t113 ).
      ENDIF.
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
      IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
      ENDIF.
      DATA(t117) = |end|.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
      ENDIF.
      t35 = t100.
      t34 = t35.
      DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t120) = t4.
      t119 ?= t120.
      DATA t121 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t121.
      DATA t122 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t122.
      DATA t123 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      DATA t124 TYPE string.
      DATA t125 TYPE string.
      DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t127) = t12.
      t126 = t127->filename.
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
      IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t131 ).
      ENDIF.
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
      IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
      ENDIF.
      DATA(t135) = |version|.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
      ENDIF.
      t122 = t123.
      DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t137.
      DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t138.
      DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t140.
      t139 = t140.
      DATA(t141) = t139.
      DATA t142 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t142.
      DATA t143 TYPE REF TO zcl_lnt_range.
      DATA(t144) = t34.
      t143 = t144.
      DATA t145 TYPE string.
      DATA t146 TYPE string.
      DATA(t147) = t3.
      DATA(t148) = strlen( t147 ).
      t146 = t147.
      TRANSLATE t146 TO LOWER CASE.
      t145 = t146.
      DATA t149 TYPE REF TO zcl_lnt_text_edit.
      DATA t150 TYPE REF TO zcl_lnt_range.
      DATA(t151) = t143.
      t150 = t151.
      DATA t152 TYPE string.
      DATA(t153) = t145.
      t152 = t153.
      t149 = NEW zcl_lnt_text_edit( i_range = t150 i_new_text = t152 ).
      CREATE OBJECT t149->zlnt_view_ownkeys_b0e8086400eb.
      t149->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t154.
      IF t149->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t154 ).
      ENDIF.
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
      IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
      ENDIF.
      DATA(t158) = |newText|.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t159.
      IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
      ENDIF.
      t142 = t149.
      t141->load( ).
      APPEND t142 TO t141->items.
      t141->save( ).
      DATA(t160) = t139.
      t138 = t160.
      t137 = t138.
      DATA t161 TYPE REF TO zcl_lnt_text_document_edit.
      DATA t162 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      DATA(t163) = t122.
      t162 = t163.
      DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t165) = t137.
      t164 = t165.
      t161 = NEW zcl_lnt_text_document_edit( i_text_document = t162 i_edits = t164 ).
      CREATE OBJECT t161->zlnt_view_ownkeys_b0e8086400eb.
      t161->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      IF t161->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t166 ).
      ENDIF.
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
      IF t161->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t161->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
      ENDIF.
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
    DATA(t173) = t4.
    t172 ?= t173.
    result = t172.

  ENDMETHOD.

  METHOD rename_ddictabl_references.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_ddic_references.
    CLEAR t8.
    DATA(t9) = me->reg.
    t8 = t9->get_ddic_references( ).
    DATA(t10) = t1.
    t7 = t8->list_where_used( i_obj_1ed0 = t10 ).
    t6 = t7.
    DATA t11 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    CLEAR t13.
    DATA(t14) = NEW zlnt_runtime_map__45a2315f90b8( ).
    t13 = t14.
    DATA(t15) = t13.
    t12 = t15.
    t11 = t12.
    DATA(t16) = t6.
    DATA t17 TYPE REF TO zcl_lnt_shape_7c1b39e6.
    CLEAR t17.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    DATA(t19) = VALUE i( ).
    DO.
      t16->load( ).
      IF t19 >= lines( t16->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t16->items INDEX t19 + 1 INTO t18.
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
      DATA(t25) = t17.
      t24 = t25->type_cba0.
      DATA(t26) = |TABL|.
      t23 = xsdbool( t24 <> t26 ).
      t22 = t23.
      IF t23 = abap_false.
        DATA(t27) = VALUE abap_bool( ).
        DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t28.
        DATA(t29) = t11.
        DATA(t30) = VALUE string( ).
        DATA(t31) = VALUE string( ).
        DATA(t32) = t17.
        t31 = t32->name.
        DATA(t33) = strlen( t31 ).
        t30 = t31.
        IF t30 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t30 TO UPPER CASE.
        ELSE.
          t30 = zlnt_runtime_uppe_91169605024d=>full( t30 ).
        ENDIF.
        t28 = t29->get( p0 = t30 ).
        DATA t34 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t34.
        DATA(t35) = abap_true.
        IF t35 = abap_true.
          DATA(t36) = abap_true.
          DATA(t37) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t37->has = abap_true.
          t37->value = t36.
          t34 = t37.
        ELSE.
          DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t38.
          t34 = t38.
        ENDIF.
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
      DATA(t48) = abap_true.
      IF t48 = abap_true.
        DATA(t49) = VALUE string( ).
        DATA(t50) = t17.
        t49 = t50->type_cba0.
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = t49.
        t47 = t51.
      ELSE.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        t47 = t52.
      ENDIF.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      DATA(t54) = abap_true.
      IF t54 = abap_true.
        DATA(t55) = VALUE string( ).
        DATA(t56) = t17.
        t55 = t56->name.
        DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t57->has = abap_true.
        t57->value = t55.
        t53 = t57.
      ELSE.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        t53 = t58.
      ENDIF.
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
      DATA t62 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t62.
      DATA(t63) = t41.
      t62 = t63.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      t64 = t65.
      DATA(t66) = VALUE abap_bool( ).
      DATA(t67) = t62.
      IF t67 IS INITIAL.
        t66 = abap_true.
      ENDIF.
      t61 = t66.
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
      DATA(t72) = t41.
      t71 = t72.
      DATA(t73) = |ROLLNAME|.
      DATA(t74) = t2.
      DATA(t75) = t3.
      DATA t76 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t76.
      t70 = me->build_xml_file_edits( i_object_19cd = t71 i_xml_tag = t73 i_old_name = t74 i_new_name = t75 i_use_lower_case = t76 ).
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
        DATA(t83) = t4.
        t82 ?= t83.
        DATA(t84) = t77.
        t82->load( ).
        APPEND t84 TO t82->items.
        t82->save( ).
      ENDDO.
      DATA(t85) = VALUE i( ).
      DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t86.
      DATA(t87) = t4.
      t86 ?= t87.
      t86->load( ).
      t85 = lines( t86->items ).
      t68 = t85.
      DATA t88 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      CLEAR t88.
      DATA(t89) = t11.
      DATA(t90) = VALUE string( ).
      DATA(t91) = VALUE string( ).
      DATA(t92) = t17.
      t91 = t92->name.
      DATA(t93) = strlen( t91 ).
      t90 = t91.
      IF t90 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t90 TO UPPER CASE.
      ELSE.
        t90 = zlnt_runtime_uppe_91169605024d=>full( t90 ).
      ENDIF.
      DATA(t94) = abap_true.
      t88 = t89->set( p0 = t90 p1 = t94 ).
    ENDDO.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t95.
    DATA(t96) = t4.
    t95 ?= t96.
    result = t95.

  ENDMETHOD.

  METHOD rename_ddicdtel_references.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_ddic_references.
    CLEAR t8.
    DATA(t9) = me->reg.
    t8 = t9->get_ddic_references( ).
    DATA(t10) = t1.
    t7 = t8->list_where_used( i_obj_1ed0 = t10 ).
    t6 = t7.
    DATA(t11) = t6.
    DATA t12 TYPE REF TO zcl_lnt_shape_7c1b39e6.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    DATA(t14) = VALUE i( ).
    DO.
      t11->load( ).
      IF t14 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t11->items INDEX t14 + 1 INTO t13.
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
      DATA(t19) = t12.
      t18 = t19->type_cba0.
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
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA(t29) = VALUE string( ).
        DATA(t30) = t12.
        t29 = t30->type_cba0.
        DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t31->has = abap_true.
        t31->value = t29.
        t27 = t31.
      ELSE.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        t27 = t32.
      ENDIF.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA(t35) = VALUE string( ).
        DATA(t36) = t12.
        t35 = t36->name.
        DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t37->has = abap_true.
        t37->value = t35.
        t33 = t37.
      ELSE.
        DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t38.
        t33 = t38.
      ENDIF.
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
      DATA t42 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t42.
      DATA(t43) = t21.
      t42 = t43.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      t44 = t45.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = t42.
      IF t47 IS INITIAL.
        t46 = abap_true.
      ENDIF.
      t41 = t46.
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
      DATA(t52) = t21.
      t51 = t52.
      DATA(t53) = |DOMNAME|.
      DATA(t54) = t2.
      DATA(t55) = t3.
      DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t56.
      t50 = me->build_xml_file_edits( i_object_19cd = t51 i_xml_tag = t53 i_old_name = t54 i_new_name = t55 i_use_lower_case = t56 ).
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
        DATA(t63) = t4.
        t62 ?= t63.
        DATA(t64) = t57.
        t62->load( ).
        APPEND t64 TO t62->items.
        t62->save( ).
      ENDDO.
      DATA(t65) = VALUE i( ).
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t66.
      DATA(t67) = t4.
      t66 ?= t67.
      t66->load( ).
      t65 = lines( t66->items ).
      t48 = t65.
    ENDDO.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t68.
    DATA(t69) = t4.
    t68 ?= t69.
    result = t68.

  ENDMETHOD.

  METHOD rename_ddicttyp_references.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_ddic_references.
    CLEAR t8.
    DATA(t9) = me->reg.
    t8 = t9->get_ddic_references( ).
    DATA(t10) = t1.
    t7 = t8->list_where_used( i_obj_1ed0 = t10 ).
    t6 = t7.
    DATA(t11) = t6.
    DATA t12 TYPE REF TO zcl_lnt_shape_7c1b39e6.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    DATA(t14) = VALUE i( ).
    DO.
      t11->load( ).
      IF t14 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t11->items INDEX t14 + 1 INTO t13.
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
      DATA(t19) = t12.
      t18 = t19->type_cba0.
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
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA(t29) = VALUE string( ).
        DATA(t30) = t12.
        t29 = t30->type_cba0.
        DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t31->has = abap_true.
        t31->value = t29.
        t27 = t31.
      ELSE.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        t27 = t32.
      ENDIF.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA(t35) = VALUE string( ).
        DATA(t36) = t12.
        t35 = t36->name.
        DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t37->has = abap_true.
        t37->value = t35.
        t33 = t37.
      ELSE.
        DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t38.
        t33 = t38.
      ENDIF.
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
      DATA t42 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t42.
      DATA(t43) = t21.
      t42 = t43.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      t44 = t45.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = t42.
      IF t47 IS INITIAL.
        t46 = abap_true.
      ENDIF.
      t41 = t46.
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
      DATA(t52) = t21.
      t51 = t52.
      DATA(t53) = |ROWTYPE|.
      DATA(t54) = t2.
      DATA(t55) = t3.
      DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t56.
      t50 = me->build_xml_file_edits( i_object_19cd = t51 i_xml_tag = t53 i_old_name = t54 i_new_name = t55 i_use_lower_case = t56 ).
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
        DATA(t63) = t4.
        t62 ?= t63.
        DATA(t64) = t57.
        t62->load( ).
        APPEND t64 TO t62->items.
        t62->save( ).
      ENDDO.
      DATA(t65) = VALUE i( ).
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t66.
      DATA(t67) = t4.
      t66 ?= t67.
      t66->load( ).
      t65 = lines( t66->items ).
      t48 = t65.
    ENDDO.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t68.
    DATA(t69) = t4.
    t68 ?= t69.
    result = t68.

  ENDMETHOD.

  METHOD rename_ddicauth_references.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_ddic_references.
    CLEAR t8.
    DATA(t9) = me->reg.
    t8 = t9->get_ddic_references( ).
    DATA(t10) = t1.
    t7 = t8->list_where_used( i_obj_1ed0 = t10 ).
    t6 = t7.
    DATA(t11) = t6.
    DATA t12 TYPE REF TO zcl_lnt_shape_7c1b39e6.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    DATA(t14) = VALUE i( ).
    DO.
      t11->load( ).
      IF t14 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t11->items INDEX t14 + 1 INTO t13.
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
      DATA(t19) = t12.
      t18 = t19->type_cba0.
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
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA(t29) = VALUE string( ).
        DATA(t30) = t12.
        t29 = t30->type_cba0.
        DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t31->has = abap_true.
        t31->value = t29.
        t27 = t31.
      ELSE.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        t27 = t32.
      ENDIF.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA(t35) = VALUE string( ).
        DATA(t36) = t12.
        t35 = t36->name.
        DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t37->has = abap_true.
        t37->value = t35.
        t33 = t37.
      ELSE.
        DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t38.
        t33 = t38.
      ENDIF.
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
      DATA t42 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t42.
      DATA(t43) = t21.
      t42 = t43.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      t44 = t45.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = t42.
      IF t47 IS INITIAL.
        t46 = abap_true.
      ENDIF.
      t41 = t46.
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
      DATA(t52) = t21.
      t51 = t52.
      DATA(t53) = |ROLLNAME|.
      DATA(t54) = t2.
      DATA(t55) = t3.
      DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t56.
      t50 = me->build_xml_file_edits( i_object_19cd = t51 i_xml_tag = t53 i_old_name = t54 i_new_name = t55 i_use_lower_case = t56 ).
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
        DATA(t63) = t4.
        t62 ?= t63.
        DATA(t64) = t57.
        t62->load( ).
        APPEND t64 TO t62->items.
        t62->save( ).
      ENDDO.
      DATA(t65) = VALUE i( ).
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t66.
      DATA(t67) = t4.
      t66 ?= t67.
      t66->load( ).
      t65 = lines( t66->items ).
      t48 = t65.
    ENDDO.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t68.
    DATA(t69) = t4.
    t68 ?= t69.
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
      DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t8.
      DATA(t9) = abap_true.
      IF t9 = abap_true.
        DATA(t10) = abap_false.
        DATA(t11) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t11->has = abap_true.
        t11->value = t10.
        t8 = t11.
      ELSE.
        DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t12.
        t8 = t12.
      ENDIF.
      t5 = t8.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    t13 = t14.
    DATA t15 TYPE REF TO zif_lnt_file.
    DATA t16 TYPE REF TO zif_lnt_file.
    DATA(t17) = t1.
    t16 = t17->get_xml_file( ).
    t15 = t16.
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zif_lnt_file.
    DATA(t20) = t15.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    t21 = t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t19.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t18 = t23.
    IF t18 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t25.
      result = t25.
      RETURN.
    ENDIF.
    DATA(t26) = VALUE string( ).
    DATA(t27) = VALUE string( ).
    DATA t28 TYPE abap_bool.
    DATA(t29) = t5.
    t28 = t29->value.
    IF t28 = abap_true.
      DATA t30 TYPE string.
      DATA(t31) = t3.
      DATA(t32) = strlen( t31 ).
      t30 = t31.
      TRANSLATE t30 TO LOWER CASE.
      t27 = t30.
    ELSE.
      DATA t33 TYPE string.
      DATA(t34) = t3.
      DATA(t35) = strlen( t34 ).
      t33 = t34.
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
    DATA(t39) = t5.
    t38 = t39->value.
    IF t38 = abap_true.
      DATA t40 TYPE string.
      DATA(t41) = t4.
      DATA(t42) = strlen( t41 ).
      t40 = t41.
      TRANSLATE t40 TO LOWER CASE.
      t37 = t40.
    ELSE.
      DATA t43 TYPE string.
      DATA(t44) = t4.
      DATA(t45) = strlen( t44 ).
      t43 = t44.
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
    DATA(t48) = t2.
    DATA(t49) = strlen( t48 ).
    t47 = t48.
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
    DATA(t58) = t46.
    DATA(t59) = strlen( t57 ).
    t56 = |{ t57 }{ t58 }|.
    DATA(t60) = |>|.
    DATA(t61) = strlen( t56 ).
    t55 = |{ t56 }{ t60 }|.
    DATA(t62) = t26.
    DATA(t63) = strlen( t55 ).
    t54 = |{ t55 }{ t62 }|.
    DATA(t64) = |</|.
    DATA(t65) = strlen( t54 ).
    t53 = |{ t54 }{ t64 }|.
    DATA(t66) = t46.
    DATA(t67) = strlen( t53 ).
    t52 = |{ t53 }{ t66 }|.
    DATA(t68) = |>|.
    DATA(t69) = strlen( t52 ).
    t51 = |{ t52 }{ t68 }|.
    t50 = t51.
    DATA t70 TYPE int8.
    DATA t71 TYPE int8.
    DATA t72 TYPE int8.
    DATA t73 TYPE i.
    DATA(t74) = t46.
    DATA(t75) = strlen( t74 ).
    t73 = t75.
    t72 = t73.
    DATA(t76) = CONV int8( 2 ).
    t71 = t72 + t76.
    t70 = t71.
    DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t79 TYPE REF TO zif_lnt_file.
    DATA(t80) = t15.
    t79 = t80.
    t78 = t79->get_raw_rows( ).
    t77 = t78.
    DATA t81 TYPE i.
    DATA(t82) = 0.
    t81 = t82.
    DO.
      DATA t83 TYPE abap_bool.
      DATA(t84) = t81.
      DATA t85 TYPE i.
      DATA(t86) = t77.
      t86->load( ).
      t85 = lines( t86->items ).
      t83 = xsdbool( t84 < t85 ).
      IF t83 = abap_false.
        EXIT.
      ENDIF.
      DATA(t87) = VALUE i( ).
      DATA(t88) = VALUE i( ).
      DATA(t89) = VALUE string( ).
      DATA(t90) = t77.
      DATA(t91) = t81.
      t91 = t91 + 1.
      IF t90->has( t91 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t90->load( ).
      CLEAR t89.
      READ TABLE t90->items INDEX t91 INTO t89.
      DATA(t92) = t50.
      DATA(t93) = strlen( t89 ).
      IF t92 IS INITIAL.
        t88 = 0.
      ELSE.
        FIND t92 IN t89 MATCH OFFSET t88.
        IF sy-subrc <> 0.
          t88 = -1.
        ENDIF.
      ENDIF.
      t87 = t88.
      DATA t94 TYPE abap_bool.
      DATA(t95) = t87.
      DATA(t96) = 0.
      t94 = xsdbool( t95 >= t96 ).
      IF t94 = abap_true.
        DATA t97 TYPE REF TO zcl_lnt_range.
        CLEAR t97.
        DATA t98 TYPE REF TO zcl_lnt_range.
        CLEAR t98.
        DATA t99 TYPE i.
        DATA(t100) = t81.
        t99 = t100.
        DATA t101 TYPE int8.
        DATA t102 TYPE int8.
        DATA t103 TYPE int8.
        DATA(t104) = t87.
        t103 = t104.
        DATA(t105) = t70.
        t102 = t103 + t105.
        t101 = t102.
        DATA t106 TYPE i.
        DATA(t107) = t81.
        t106 = t107.
        DATA t108 TYPE int8.
        DATA t109 TYPE int8.
        DATA t110 TYPE int8.
        DATA t111 TYPE int8.
        DATA(t112) = t87.
        t111 = t112.
        DATA t113 TYPE int8.
        DATA t114 TYPE i.
        DATA(t115) = t26.
        DATA(t116) = strlen( t115 ).
        t114 = t116.
        t113 = t114.
        t110 = t111 + t113.
        DATA(t117) = t70.
        t109 = t110 + t117.
        t108 = t109.
        DATA t118 TYPE REF TO zcl_lnt_range.
        CLEAR t118.
        DATA t119 TYPE REF TO zcl_lnt_no_position.
        CLEAR t119.
        DATA t120 TYPE REF TO zcl_lnt_no_position.
        DATA t121 TYPE f.
        DATA(t122) = t99.
        t121 = t122.
        DATA t123 TYPE f.
        DATA(t124) = t101.
        t123 = t124.
        DATA(t125) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t125->has = abap_true.
        t125->value = t123.
        t120 = NEW zcl_lnt_no_position( i_line = t121 i_character = t125 ).
        CREATE OBJECT t120->zlnt_view_ownkeys_b0e8086400eb.
        t120->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t126 ).
        ENDIF.
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
        DATA(t131) = t106.
        t130 = t131.
        DATA t132 TYPE f.
        DATA(t133) = t108.
        t132 = t133.
        DATA(t134) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t134->has = abap_true.
        t134->value = t132.
        t129 = NEW zcl_lnt_no_position( i_line = t130 i_character = t134 ).
        CREATE OBJECT t129->zlnt_view_ownkeys_b0e8086400eb.
        t129->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        IF t129->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t135 ).
        ENDIF.
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
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t137 ).
        ENDIF.
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
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
        ENDIF.
        DATA(t141) = |end|.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
        ENDIF.
        t98 = t118.
        t97 = t98.
        DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t144) = t13.
        t143 ?= t144.
        DATA t145 TYPE REF TO zcl_lnt_text_document_edit.
        CLEAR t145.
        DATA t146 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        CLEAR t146.
        DATA t147 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        DATA t148 TYPE string.
        DATA t149 TYPE string.
        DATA t150 TYPE REF TO zif_lnt_file.
        DATA(t151) = t15.
        t150 = t151.
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
        IF t147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t155 ).
        ENDIF.
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
        IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
        ENDIF.
        DATA(t159) = |version|.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
        ENDIF.
        t146 = t147.
        DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t161.
        DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t162.
        DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t164.
        t163 = t164.
        DATA(t165) = t163.
        DATA t166 TYPE REF TO zcl_lnt_text_edit.
        CLEAR t166.
        DATA t167 TYPE REF TO zcl_lnt_range.
        DATA(t168) = t97.
        t167 = t168.
        DATA t169 TYPE string.
        DATA(t170) = t36.
        t169 = t170.
        DATA t171 TYPE REF TO zcl_lnt_text_edit.
        DATA t172 TYPE REF TO zcl_lnt_range.
        DATA(t173) = t167.
        t172 = t173.
        DATA t174 TYPE string.
        DATA(t175) = t169.
        t174 = t175.
        t171 = NEW zcl_lnt_text_edit( i_range = t172 i_new_text = t174 ).
        CREATE OBJECT t171->zlnt_view_ownkeys_b0e8086400eb.
        t171->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        IF t171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t176 ).
        ENDIF.
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
        IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
        ENDIF.
        DATA(t180) = |newText|.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        IF t171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
        ENDIF.
        t166 = t171.
        t165->load( ).
        APPEND t166 TO t165->items.
        t165->save( ).
        DATA(t182) = t163.
        t162 = t182.
        t161 = t162.
        DATA t183 TYPE REF TO zcl_lnt_text_document_edit.
        DATA t184 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        DATA(t185) = t146.
        t184 = t185.
        DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t187) = t161.
        t186 = t187.
        t183 = NEW zcl_lnt_text_document_edit( i_text_document = t184 i_edits = t186 ).
        CREATE OBJECT t183->zlnt_view_ownkeys_b0e8086400eb.
        t183->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t188.
        IF t183->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t183->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t188 ).
        ENDIF.
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
        IF t183->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t183->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
        ENDIF.
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
      DATA(t195) = t81.
      DATA(t196) = 1.
      t194 = t195 + t196.
      t81 = t194.
    ENDDO.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t198) = t13.
    t197 ?= t198.
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
    DATA(t8) = t1.
    t7 = t8->get_xml_file( ).
    t6 = t7.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zif_lnt_file.
    DATA(t11) = t6.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t10.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    t9 = t14.
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t16.
      result = t16.
      RETURN.
    ENDIF.
    DATA t17 TYPE string.
    DATA t18 TYPE string.
    DATA(t19) = t2.
    DATA(t20) = strlen( t19 ).
    t18 = t19.
    TRANSLATE t18 TO LOWER CASE.
    t17 = t18.
    DATA t21 TYPE string.
    DATA t22 TYPE string.
    DATA(t23) = t3.
    DATA(t24) = strlen( t23 ).
    t22 = t23.
    TRANSLATE t22 TO LOWER CASE.
    t21 = t22.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t27 TYPE REF TO zif_lnt_file.
    DATA(t28) = t6.
    t27 = t28.
    t26 = t27->get_raw_rows( ).
    t25 = t26.
    DATA t29 TYPE i.
    DATA(t30) = 0.
    t29 = t30.
    DO.
      DATA t31 TYPE abap_bool.
      DATA(t32) = t29.
      DATA t33 TYPE i.
      DATA(t34) = t25.
      t34->load( ).
      t33 = lines( t34->items ).
      t31 = xsdbool( t32 < t33 ).
      IF t31 = abap_false.
        EXIT.
      ENDIF.
      DATA(t35) = VALUE string( ).
      DATA(t36) = VALUE string( ).
      DATA(t37) = t25.
      DATA(t38) = t29.
      t38 = t38 + 1.
      IF t37->has( t38 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t37->load( ).
      CLEAR t36.
      READ TABLE t37->items INDEX t38 INTO t36.
      t35 = t36.
      DATA(t39) = VALUE i( ).
      DATA(t40) = VALUE i( ).
      DATA(t41) = t35.
      DATA(t42) = |<URL>|.
      DATA(t43) = strlen( t41 ).
      IF t42 IS INITIAL.
        t40 = 0.
      ELSE.
        FIND t42 IN t41 MATCH OFFSET t40.
        IF sy-subrc <> 0.
          t40 = -1.
        ENDIF.
      ENDIF.
      t39 = t40.
      DATA t44 TYPE abap_bool.
      DATA(t45) = t39.
      DATA(t46) = -1.
      t44 = xsdbool( t45 = t46 ).
      IF t44 = abap_true.
        DATA t47 TYPE i.
        DATA(t48) = t29.
        DATA(t49) = 1.
        t47 = t48 + t49.
        t29 = t47.
        CONTINUE.
      ENDIF.
      DATA(t50) = VALUE i( ).
      DATA(t51) = VALUE i( ).
      DATA(t52) = t35.
      DATA(t53) = |</URL>|.
      DATA(t54) = strlen( t52 ).
      IF t53 IS INITIAL.
        t51 = 0.
      ELSE.
        FIND t53 IN t52 MATCH OFFSET t51.
        IF sy-subrc <> 0.
          t51 = -1.
        ENDIF.
      ENDIF.
      t50 = t51.
      DATA t55 TYPE abap_bool.
      DATA(t56) = t50.
      DATA(t57) = -1.
      t55 = xsdbool( t56 = t57 ).
      IF t55 = abap_true.
        DATA t58 TYPE i.
        DATA(t59) = t29.
        DATA(t60) = 1.
        t58 = t59 + t60.
        t29 = t58.
        CONTINUE.
      ENDIF.
      DATA(t61) = VALUE string( ).
      DATA(t62) = VALUE string( ).
      DATA(t63) = t35.
      DATA(t64) = VALUE i( ).
      DATA t65 TYPE f.
      DATA t66 TYPE int8.
      DATA t67 TYPE int8.
      DATA(t68) = t39.
      t67 = t68.
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
      DATA(t71) = strlen( t63 ).
      t64 = COND i( WHEN t64 < 0 THEN 0 WHEN t64 > t71 THEN t71 ELSE t64 ).
      t70 = COND i( WHEN t70 < 0 THEN 0 WHEN t70 > t71 THEN t71 ELSE t70 ).
      IF t64 > t70.
        t71 = t64.
        t64 = t70.
        t70 = t71.
      ENDIF.
      t71 = t70 - t64.
      t62 = t63+t64(t71).
      t61 = t62.
      DATA(t72) = VALUE string( ).
      DATA(t73) = VALUE string( ).
      DATA(t74) = t61.
      DATA(t75) = t17.
      DATA(t76) = t21.
      DATA(t77) = strlen( t74 ).
      IF t76 CS '$'.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t73 = t74.
      IF t75 = ``.
        t73 = |{ t76 }{ t74 }|.
      ELSE.
        REPLACE FIRST OCCURRENCE OF t75 IN t73 WITH t76.
      ENDIF.
      t72 = t73.
      DATA t78 TYPE abap_bool.
      DATA(t79) = t72.
      DATA(t80) = t61.
      t78 = xsdbool( t79 <> t80 ).
      IF t78 = abap_true.
        DATA t81 TYPE REF TO zcl_lnt_range.
        CLEAR t81.
        DATA t82 TYPE REF TO zcl_lnt_range.
        CLEAR t82.
        DATA t83 TYPE i.
        DATA(t84) = t29.
        t83 = t84.
        DATA t85 TYPE int8.
        DATA t86 TYPE int8.
        DATA t87 TYPE int8.
        DATA(t88) = t39.
        t87 = t88.
        DATA(t89) = CONV int8( 5 ).
        t86 = t87 + t89.
        t85 = t86.
        DATA t90 TYPE i.
        DATA(t91) = t29.
        t90 = t91.
        DATA t92 TYPE i.
        DATA(t93) = t50.
        t92 = t93.
        DATA t94 TYPE REF TO zcl_lnt_range.
        CLEAR t94.
        DATA t95 TYPE REF TO zcl_lnt_no_position.
        CLEAR t95.
        DATA t96 TYPE REF TO zcl_lnt_no_position.
        DATA t97 TYPE f.
        DATA(t98) = t83.
        t97 = t98.
        DATA t99 TYPE f.
        DATA(t100) = t85.
        t99 = t100.
        DATA(t101) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t101->has = abap_true.
        t101->value = t99.
        t96 = NEW zcl_lnt_no_position( i_line = t97 i_character = t101 ).
        CREATE OBJECT t96->zlnt_view_ownkeys_b0e8086400eb.
        t96->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t102 ).
        ENDIF.
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
        DATA(t107) = t90.
        t106 = t107.
        DATA t108 TYPE f.
        DATA(t109) = t92.
        t108 = t109.
        DATA(t110) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t110->has = abap_true.
        t110->value = t108.
        t105 = NEW zcl_lnt_no_position( i_line = t106 i_character = t110 ).
        CREATE OBJECT t105->zlnt_view_ownkeys_b0e8086400eb.
        t105->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t105->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t105->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t111 ).
        ENDIF.
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
        IF t94->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t113 ).
        ENDIF.
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
        IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
        ENDIF.
        DATA(t117) = |end|.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
        ENDIF.
        t82 = t94.
        t81 = t82.
        DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t120) = t4.
        t119 ?= t120.
        DATA t121 TYPE REF TO zcl_lnt_text_document_edit.
        CLEAR t121.
        DATA t122 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        CLEAR t122.
        DATA t123 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        DATA t124 TYPE string.
        DATA t125 TYPE string.
        DATA t126 TYPE REF TO zif_lnt_file.
        DATA(t127) = t6.
        t126 = t127.
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
        IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t131 ).
        ENDIF.
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
        IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
        ENDIF.
        DATA(t135) = |version|.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
        ENDIF.
        t122 = t123.
        DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t137.
        DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t138.
        DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t140.
        t139 = t140.
        DATA(t141) = t139.
        DATA t142 TYPE REF TO zcl_lnt_text_edit.
        CLEAR t142.
        DATA t143 TYPE REF TO zcl_lnt_range.
        DATA(t144) = t81.
        t143 = t144.
        DATA t145 TYPE string.
        DATA(t146) = t72.
        t145 = t146.
        DATA t147 TYPE REF TO zcl_lnt_text_edit.
        DATA t148 TYPE REF TO zcl_lnt_range.
        DATA(t149) = t143.
        t148 = t149.
        DATA t150 TYPE string.
        DATA(t151) = t145.
        t150 = t151.
        t147 = NEW zcl_lnt_text_edit( i_range = t148 i_new_text = t150 ).
        CREATE OBJECT t147->zlnt_view_ownkeys_b0e8086400eb.
        t147->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t152 ).
        ENDIF.
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
        IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
        ENDIF.
        DATA(t156) = |newText|.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
        ENDIF.
        t142 = t147.
        t141->load( ).
        APPEND t142 TO t141->items.
        t141->save( ).
        DATA(t158) = t139.
        t138 = t158.
        t137 = t138.
        DATA t159 TYPE REF TO zcl_lnt_text_document_edit.
        DATA t160 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        DATA(t161) = t122.
        t160 = t161.
        DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t163) = t137.
        t162 = t163.
        t159 = NEW zcl_lnt_text_document_edit( i_text_document = t160 i_edits = t162 ).
        CREATE OBJECT t159->zlnt_view_ownkeys_b0e8086400eb.
        t159->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t164 ).
        ENDIF.
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
        IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
        ENDIF.
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
      DATA(t171) = t29.
      DATA(t172) = 1.
      t170 = t171 + t172.
      t29 = t170.
    ENDDO.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t174) = t4.
    t173 ?= t174.
    result = t173.

  ENDMETHOD.

  METHOD rename_files.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_old_name.
    DATA(t3) = i_name.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = VALUE string( ).
    DATA(t7) = VALUE string( ).
    DATA(t8) = VALUE string( ).
    DATA(t9) = t3.
    DATA(t10) = strlen( t9 ).
    t8 = t9.
    TRANSLATE t8 TO LOWER CASE.
    DATA t11 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t11.
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
    CLEAR t20.
    DATA(t21) = `\/`.
    DATA(t22) = |g|.
    CREATE OBJECT t20 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t21 flags = t22 checked = abap_true.
    DATA(t23) = |#|.
    DATA(t24) = strlen( t17 ).
    t16 = t20->replace( p0 = t17 p1 = t23 ).
    t2 = t16.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t25.
    DATA(t26) = t1.
    t25 = t26->get_files( ).
    DATA t27 TYPE REF TO zif_lnt_file.
    CLEAR t27.
    DATA t28 TYPE REF TO object.
    CLEAR t28.
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
      DATA(t35) = t27.
      t34 = t35->get_filename( ).
      DATA(t36) = t2.
      DATA(t37) = t6.
      DATA(t38) = strlen( t34 ).
      IF t37 CS '$'.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t33 = t34.
      IF t36 = ``.
        t33 = |{ t37 }{ t34 }|.
      ELSE.
        REPLACE FIRST OCCURRENCE OF t36 IN t33 WITH t37.
      ENDIF.
      t32 = t33.
      DATA(t39) = t4.
      DATA t40 TYPE REF TO zcl_lnt_rename_file.
      CLEAR t40.
      DATA(t41) = VALUE string( ).
      DATA(t42) = VALUE string( ).
      DATA(t43) = t27.
      t42 = t43->get_filename( ).
      t41 = t42.
      DATA(t44) = VALUE string( ).
      DATA(t45) = t32.
      t44 = t45.
      DATA t46 TYPE REF TO zcl_lnt_rename_file.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA(t48) = |rename|.
      DATA(t49) = t41.
      DATA(t50) = t44.
      DATA t51 TYPE REF TO zcl_lnt_rename_file_options.
      CLEAR t51.
      t46 = NEW zcl_lnt_rename_file( i_annotation_id = t47 i_kind = t48 i_old_uri = t49 i_new_uri = t50 i_options = t51 ).
      CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
      t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t52 ).
      ENDIF.
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
      t39->load( ).
      APPEND t40 TO t39->items.
      t39->save( ).
    ENDDO.
    DATA(t62) = t4.
    result = t62.

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
    DATA(t7) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t6 = t7.
    DATA(t8) = t1.
    DATA t9 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t8->load( ).
      IF t11 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t8->items INDEX t11 + 1 INTO t10.
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
      DATA t20 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t21) = t9.
      t20 = t21.
      DATA t22 TYPE string.
      DATA(t23) = t20.
      t22 = t23->filename.
      t19 = t22.
      DATA(t24) = |:|.
      DATA(t25) = strlen( t19 ).
      t18 = |{ t19 }{ t24 }|.
      DATA(t26) = VALUE string( ).
      DATA t27 TYPE f.
      DATA t28 TYPE REF TO zcl_lnt_position.
      DATA t29 TYPE REF TO zcl_lnt_position.
      DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t31) = t9.
      t30 = t31.
      DATA t32 TYPE REF TO zcl_lnt_position.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t35) = t30.
      t34 = t35->token.
      t33 = t34.
      DATA t36 TYPE REF TO zcl_lnt_position.
      DATA(t37) = t33.
      t36 = t37->start.
      t32 = t36.
      t29 = t32.
      t28 = t29.
      DATA t38 TYPE f.
      DATA(t39) = t28.
      t38 = t39->row.
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
      DATA t46 TYPE REF TO zcl_lnt_position.
      DATA t47 TYPE REF TO zcl_lnt_position.
      DATA t48 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t49) = t9.
      t48 = t49.
      DATA t50 TYPE REF TO zcl_lnt_position.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      DATA t52 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t53) = t48.
      t52 = t53->token.
      t51 = t52.
      DATA t54 TYPE REF TO zcl_lnt_position.
      DATA(t55) = t51.
      t54 = t55->start.
      t50 = t54.
      t47 = t50.
      t46 = t47.
      DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t57) = t46.
      t56 = t57->col.
      t45 = t56.
      t44 = zlnt_runtime_numb_290eb04a9758=>text( t45 ).
      DATA(t58) = strlen( t16 ).
      t15 = |{ t16 }{ t44 }|.
      t14 = t15.
      DATA t59 TYPE abap_bool.
      DATA(t60) = t6.
      DATA(t61) = t14.
      t59 = t60->has( p0 = t61 ).
      IF t59 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t62 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t63) = t6.
      DATA(t64) = t14.
      t62 = t63->add( p0 = t64 ).
      DATA t65 TYPE REF TO zcl_lnt_range.
      CLEAR t65.
      DATA t66 TYPE REF TO zcl_lnt_range.
      CLEAR t66.
      DATA t67 TYPE f.
      DATA t68 TYPE f.
      DATA t69 TYPE f.
      DATA t70 TYPE REF TO zcl_lnt_position.
      DATA t71 TYPE REF TO zcl_lnt_position.
      DATA t72 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t73) = t9.
      t72 = t73.
      DATA t74 TYPE REF TO zcl_lnt_position.
      DATA t75 TYPE REF TO zcl_lnt_abstract_token.
      DATA t76 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t77) = t72.
      t76 = t77->token.
      t75 = t76.
      DATA t78 TYPE REF TO zcl_lnt_position.
      DATA(t79) = t75.
      t78 = t79->start.
      t74 = t78.
      t71 = t74.
      t70 = t71.
      DATA t80 TYPE f.
      DATA(t81) = t70.
      t80 = t81->row.
      t69 = t80.
      DATA(t82) = CONV f( 1 ).
      t68 = t69 - t82.
      t67 = t68.
      DATA t83 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t84 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t85 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t86 TYPE REF TO zcl_lnt_position.
      DATA t87 TYPE REF TO zcl_lnt_position.
      DATA t88 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t89) = t9.
      t88 = t89.
      DATA t90 TYPE REF TO zcl_lnt_position.
      DATA t91 TYPE REF TO zcl_lnt_abstract_token.
      DATA t92 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t93) = t88.
      t92 = t93->token.
      t91 = t92.
      DATA t94 TYPE REF TO zcl_lnt_position.
      DATA(t95) = t91.
      t94 = t95->start.
      t90 = t94.
      t87 = t90.
      t86 = t87.
      DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t97) = t86.
      t96 = t97->col.
      t85 = t96.
      DATA(t98) = CONV f( 1 ).
      DATA(t99) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t99->has = abap_true.
      t99->value = t98.
      t84 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t85 right = t99 op = `-` ).
      t83 = t84.
      DATA t100 TYPE f.
      DATA t101 TYPE f.
      DATA t102 TYPE f.
      DATA t103 TYPE REF TO zcl_lnt_position.
      DATA t104 TYPE REF TO zcl_lnt_position.
      DATA t105 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t106) = t9.
      t105 = t106.
      DATA t107 TYPE REF TO zcl_lnt_position.
      DATA t108 TYPE REF TO zcl_lnt_abstract_token.
      DATA t109 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t110) = t105.
      t109 = t110->token.
      t108 = t109.
      DATA t111 TYPE REF TO zcl_lnt_position.
      DATA(t112) = t108.
      t111 = t112->start.
      t107 = t111.
      t104 = t107.
      t103 = t104.
      DATA t113 TYPE f.
      DATA(t114) = t103.
      t113 = t114->row.
      t102 = t113.
      DATA(t115) = CONV f( 1 ).
      t101 = t102 - t115.
      t100 = t101.
      DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t117 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t118 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t119 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t120 TYPE REF TO zcl_lnt_position.
      DATA t121 TYPE REF TO zcl_lnt_position.
      DATA t122 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t123) = t9.
      t122 = t123.
      DATA t124 TYPE REF TO zcl_lnt_position.
      DATA t125 TYPE REF TO zcl_lnt_abstract_token.
      DATA t126 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t127) = t122.
      t126 = t127->token.
      t125 = t126.
      DATA t128 TYPE REF TO zcl_lnt_position.
      DATA(t129) = t125.
      t128 = t129->start.
      t124 = t128.
      t121 = t124.
      t120 = t121.
      DATA t130 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t131) = t120.
      t130 = t131->col.
      t119 = t130.
      DATA(t132) = CONV f( 1 ).
      DATA(t133) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t133->has = abap_true.
      t133->value = t132.
      t118 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t119 right = t133 op = `-` ).
      DATA t134 TYPE f.
      DATA t135 TYPE i.
      DATA(t136) = t2.
      DATA(t137) = strlen( t136 ).
      t135 = t137.
      t134 = t135.
      DATA(t138) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t138->has = abap_true.
      t138->value = t134.
      t117 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t118 right = t138 op = `+` ).
      t116 = t117.
      DATA t139 TYPE REF TO zcl_lnt_range.
      CLEAR t139.
      DATA t140 TYPE REF TO zcl_lnt_no_position.
      CLEAR t140.
      DATA t141 TYPE REF TO zcl_lnt_no_position.
      DATA(t142) = t67.
      DATA(t143) = t83.
      t141 = NEW zcl_lnt_no_position( i_line = t142 i_character = t143 ).
      CREATE OBJECT t141->zlnt_view_ownkeys_b0e8086400eb.
      t141->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t144.
      IF t141->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t144 ).
      ENDIF.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t145.
      IF t141->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t145 ).
      ENDIF.
      t140 = t141.
      DATA t146 TYPE REF TO zcl_lnt_no_position.
      CLEAR t146.
      DATA t147 TYPE REF TO zcl_lnt_no_position.
      DATA(t148) = t100.
      DATA(t149) = t116.
      t147 = NEW zcl_lnt_no_position( i_line = t148 i_character = t149 ).
      CREATE OBJECT t147->zlnt_view_ownkeys_b0e8086400eb.
      t147->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      IF t147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t150 ).
      ENDIF.
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
      IF t139->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t139->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t152 ).
      ENDIF.
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
      IF t139->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
      ENDIF.
      DATA(t156) = |end|.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      IF t139->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t139->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
      ENDIF.
      t66 = t139.
      t65 = t66.
      DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t159) = t4.
      t158 ?= t159.
      DATA t160 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t160.
      DATA t161 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t161.
      DATA t162 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      DATA t163 TYPE string.
      DATA t164 TYPE string.
      DATA t165 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t166) = t9.
      t165 = t166.
      DATA t167 TYPE string.
      DATA(t168) = t165.
      t167 = t168->filename.
      t164 = t167.
      t163 = t164.
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
      IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t172 ).
      ENDIF.
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
      IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
      ENDIF.
      DATA(t176) = |version|.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
      ENDIF.
      t161 = t162.
      DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t178.
      DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t179.
      DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t181.
      t180 = t181.
      DATA(t182) = t180.
      DATA t183 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t183.
      DATA t184 TYPE REF TO zcl_lnt_range.
      DATA(t185) = t65.
      t184 = t185.
      DATA t186 TYPE string.
      DATA t187 TYPE string.
      DATA(t188) = t3.
      DATA(t189) = strlen( t188 ).
      t187 = t188.
      TRANSLATE t187 TO LOWER CASE.
      t186 = t187.
      DATA t190 TYPE REF TO zcl_lnt_text_edit.
      DATA t191 TYPE REF TO zcl_lnt_range.
      DATA(t192) = t184.
      t191 = t192.
      DATA t193 TYPE string.
      DATA(t194) = t186.
      t193 = t194.
      t190 = NEW zcl_lnt_text_edit( i_range = t191 i_new_text = t193 ).
      CREATE OBJECT t190->zlnt_view_ownkeys_b0e8086400eb.
      t190->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t195.
      IF t190->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t190->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t195 ).
      ENDIF.
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
      IF t190->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t190->zlnt_json_ownkeys_70e5fd461788->put( p0 = t197 p1 = t198 ).
      ENDIF.
      DATA(t199) = |newText|.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t200.
      IF t190->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t190->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
      ENDIF.
      t183 = t190.
      t182->load( ).
      APPEND t183 TO t182->items.
      t182->save( ).
      DATA(t201) = t180.
      t179 = t201.
      t178 = t179.
      DATA t202 TYPE REF TO zcl_lnt_text_document_edit.
      DATA t203 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      DATA(t204) = t161.
      t203 = t204.
      DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t206) = t178.
      t205 = t206.
      t202 = NEW zcl_lnt_text_document_edit( i_text_document = t203 i_edits = t205 ).
      CREATE OBJECT t202->zlnt_view_ownkeys_b0e8086400eb.
      t202->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t207.
      IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t207 ).
      ENDIF.
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
      IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
      ENDIF.
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
    DATA(t214) = t4.
    t213 ?= t214.
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
    DATA(t8) = t1.
    t7 = t8->get_identifier( ).
    t6 = t7->stype.
    DATA(t9) = |_builtin|.
    t5 = xsdbool( t6 <> t9 ).
    IF t5 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t11 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t12) = t1.
      t11 = t12->get_data( ).
      t10 = t11->references.
      DATA t13 TYPE REF TO zcl_lnt_ireference.
      CLEAR t13.
      DATA t14 TYPE REF TO object.
      CLEAR t14.
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
        DATA(t20) = t13.
        t19 = t20->reference_type.
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
        DATA(t28) = t13.
        t27 = t28->resolved.
        t26 = t27.
        DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t29.
        DATA(t30) = VALUE abap_bool( ).
        DATA(t31) = t26.
        IF t31 IS INITIAL.
          t30 = abap_true.
        ENDIF.
        IF t30 = abap_true.
          DATA t32 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t32.
          t29 = t32.
        ELSE.
          DATA(t33) = VALUE abap_bool( ).
          DATA t34 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t35 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t36) = t26.
          t35 = t36.
          t34 = t35.
          DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t38) = t2.
          t37 = t38.
          DATA t39 TYPE abap_bool.
          DATA t40 TYPE abap_bool.
          DATA t41 TYPE REF TO zcl_lnt_position.
          DATA t42 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t43) = t37.
          t42 = t43.
          DATA t44 TYPE REF TO zcl_lnt_position.
          DATA t45 TYPE REF TO zcl_lnt_abstract_token.
          DATA t46 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t47) = t42.
          t46 = t47->token.
          t45 = t46.
          DATA t48 TYPE REF TO zcl_lnt_position.
          DATA(t49) = t45.
          t48 = t49->start.
          t44 = t48.
          t41 = t44.
          DATA t50 TYPE REF TO zcl_lnt_position.
          DATA t51 TYPE REF TO zcl_lnt_abstract_token.
          DATA t52 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t53) = t34.
          t52 = t53->token.
          t51 = t52.
          DATA t54 TYPE REF TO zcl_lnt_position.
          DATA(t55) = t51.
          t54 = t55->start.
          t50 = t54.
          t40 = t41->equals( i_p = t50 ).
          t39 = t40.
          IF t40 = abap_true.
            DATA t56 TYPE abap_bool.
            DATA t57 TYPE string.
            DATA t58 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t59) = t37.
            t58 = t59.
            DATA t60 TYPE string.
            DATA(t61) = t58.
            t60 = t61->filename.
            t57 = t60.
            DATA t62 TYPE string.
            DATA(t63) = t34.
            t62 = t63->filename.
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
          DATA(t67) = t13.
          t66 = t67->reference_type.
          DATA(t68) = |Inferred Type|.
          t65 = xsdbool( t66 <> t68 ).
          t23 = t65.
        ENDIF.
        t22 = t23.
        IF t23 = abap_true.
          DATA t69 TYPE abap_bool.
          DATA t70 TYPE abap_bool.
          DATA t71 TYPE REF TO zcl_lnt_position.
          DATA t72 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t73 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t74) = t13.
          t73 = t74->position_7b94.
          t72 = t73.
          DATA t75 TYPE REF TO zcl_lnt_position.
          DATA t76 TYPE REF TO zcl_lnt_abstract_token.
          DATA t77 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t78) = t72.
          t77 = t78->token.
          t76 = t77.
          DATA t79 TYPE REF TO zcl_lnt_position.
          DATA(t80) = t76.
          t79 = t80->start.
          t75 = t79.
          t71 = t75.
          t70 = xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_virtual_position ).
          t69 = xsdbool( t70 = abap_false ).
          t22 = t69.
        ENDIF.
        IF t22 = abap_true.
          DATA(t81) = t3.
          DATA t82 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t83) = t13.
          t82 = t83->position_7b94.
          t81->load( ).
          APPEND t82 TO t81->items.
          t81->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t85) = t1.
    t84 = t85->get_children( ).
    DATA t86 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t86.
    DATA t87 TYPE REF TO object.
    CLEAR t87.
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
      DATA(t92) = t3.
      DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t94) = t86.
      DATA(t95) = t2.
      t93 = me->find_references( i_node = t94 i_identifier = t95 ).
      t91 = t92->concat( p0 = t93 ).
      t3 = t91.
    ENDDO.
    DATA(t96) = t3.
    result = t96.

  ENDMETHOD.

  METHOD rnm_icf_srvc_hndlr_rfrncs.
    DATA(t1) = i_old_name.
    DATA(t2) = i_new_name.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t6.
    DATA(t7) = me->reg.
    DATA(t8) = |SICF|.
    t6 = t7->get_objects_by_type( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t10.
    DATA(t11) = t5.
    t10 = t11->iterate( ).
    t9 = t10.
    DO.
      DATA(t12) = abap_true.
      IF t12 = abap_false.
        EXIT.
      ENDIF.
      DATA t13 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t14.
      DATA(t15) = t9.
      t14 = t15->next( ).
      t13 = t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t13.
      t16 = t17->done.
      IF t16 = abap_true.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      DATA t19 TYPE REF TO zif_lnt_object.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_object.
      CLEAR t20.
      DATA(t21) = t13.
      t20 = t21->value.
      t19 = t20.
      t18 = t19.
      DATA t22 TYPE REF TO zcl_lnt_icfservice.
      CLEAR t22.
      DATA t23 TYPE REF TO zcl_lnt_icfservice.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_icfservice.
      CLEAR t24.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = abap_false.
      t25 = t26.
      DATA t27 TYPE REF TO cx_root.
      CLEAR t27.
      TRY.
          DATA t28 TYPE REF TO zcl_lnt_icfservice.
          CLEAR t28.
          DATA(t29) = t18.
          t28 ?= t29.
          t24 = t28.
          DATA(t30) = abap_true.
          t25 = t30.
        CATCH cx_root INTO t27.
          DATA(t31) = VALUE abap_bool( ).
          DATA(t32) = t25.
          t31 = xsdbool( t32 = abap_false ).
          IF t31 = abap_true.
            DATA(t33) = t9.
            t33->close( ).
          ENDIF.
          RAISE EXCEPTION t27.
      ENDTRY.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = t25.
      t34 = xsdbool( t35 = abap_false ).
      IF t34 = abap_true.
        DATA(t36) = t9.
        t36->close( ).
      ENDIF.
      DATA(t37) = t24.
      t23 = t37.
      t22 = t23.
      DATA t38 TYPE REF TO zif_lnt_file.
      CLEAR t38.
      DATA t39 TYPE REF TO zif_lnt_file.
      CLEAR t39.
      DATA t40 TYPE REF TO zif_lnt_file.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = abap_false.
      t41 = t42.
      DATA t43 TYPE REF TO cx_root.
      CLEAR t43.
      TRY.
          DATA t44 TYPE REF TO zif_lnt_file.
          CLEAR t44.
          DATA(t45) = t18.
          t44 = t45->get_xml_file( ).
          t40 = t44.
          DATA(t46) = abap_true.
          t41 = t46.
        CATCH cx_root INTO t43.
          DATA(t47) = VALUE abap_bool( ).
          DATA(t48) = t41.
          t47 = xsdbool( t48 = abap_false ).
          IF t47 = abap_true.
            DATA(t49) = t9.
            t49->close( ).
          ENDIF.
          RAISE EXCEPTION t43.
      ENDTRY.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = t41.
      t50 = xsdbool( t51 = abap_false ).
      IF t50 = abap_true.
        DATA(t52) = t9.
        t52->close( ).
      ENDIF.
      DATA(t53) = t40.
      t39 = t53.
      t38 = t39.
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = abap_false.
      t56 = t57.
      DATA t58 TYPE REF TO cx_root.
      CLEAR t58.
      TRY.
          DATA(t59) = VALUE abap_bool( ).
          DATA t60 TYPE REF TO zif_lnt_file.
          CLEAR t60.
          DATA(t61) = t38.
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
          t55 = t59.
          DATA(t66) = abap_true.
          t56 = t66.
        CATCH cx_root INTO t58.
          DATA(t67) = VALUE abap_bool( ).
          DATA(t68) = t56.
          t67 = xsdbool( t68 = abap_false ).
          IF t67 = abap_true.
            DATA(t69) = t9.
            t69->close( ).
          ENDIF.
          RAISE EXCEPTION t58.
      ENDTRY.
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = t56.
      t70 = xsdbool( t71 = abap_false ).
      IF t70 = abap_true.
        DATA(t72) = t9.
        t72->close( ).
      ENDIF.
      DATA(t73) = t55.
      t54 = t73.
      IF t54 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t74) = VALUE f( ).
      DATA(t75) = VALUE f( ).
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = abap_false.
      t76 = t77.
      DATA t78 TYPE REF TO cx_root.
      CLEAR t78.
      TRY.
          DATA(t79) = VALUE f( ).
          DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t80.
          DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t81.
          DATA(t82) = t22.
          DATA(t83) = |ICFHANDLER|.
          DATA(t84) = t1.
          DATA(t85) = t2.
          DATA t86 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t86.
          t81 = me->build_xml_file_edits( i_object_19cd = t82 i_xml_tag = t83 i_old_name = t84 i_new_name = t85 i_use_lower_case = t86 ).
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
            DATA(t93) = t3.
            t92 ?= t93.
            DATA(t94) = t87.
            t92->load( ).
            APPEND t94 TO t92->items.
            t92->save( ).
          ENDDO.
          DATA(t95) = VALUE f( ).
          DATA(t96) = VALUE i( ).
          DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t97.
          DATA(t98) = t3.
          t97 ?= t98.
          t97->load( ).
          t96 = lines( t97->items ).
          t95 = t96.
          t79 = t95.
          t75 = t79.
          DATA(t99) = abap_true.
          t76 = t99.
        CATCH cx_root INTO t78.
          DATA(t100) = VALUE abap_bool( ).
          DATA(t101) = t76.
          t100 = xsdbool( t101 = abap_false ).
          IF t100 = abap_true.
            DATA(t102) = t9.
            t102->close( ).
          ENDIF.
          RAISE EXCEPTION t78.
      ENDTRY.
      DATA(t103) = VALUE abap_bool( ).
      DATA(t104) = t76.
      t103 = xsdbool( t104 = abap_false ).
      IF t103 = abap_true.
        DATA(t105) = t9.
        t105->close( ).
      ENDIF.
      DATA(t106) = t75.
      t74 = t106.
    ENDDO.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t107.
    DATA(t108) = t3.
    t107 ?= t108.
    result = t107.

  ENDMETHOD.

  METHOD fn_callback_168518.
    DATA(t1) = i_a.
    DATA(t2) = i_b.
    DATA t3 TYPE f.
    DATA t4 TYPE f.
    DATA t5 TYPE f.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE REF TO zcl_lnt_position.
    DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t9) = t2.
    t8 = t9.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t13) = t8.
    t12 = t13->token.
    t11 = t12.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA(t15) = t11.
    t14 = t15->start.
    t10 = t14.
    t7 = t10.
    t6 = t7.
    DATA t16 TYPE f.
    DATA(t17) = t6.
    t16 = t17->row.
    t5 = t16.
    DATA t18 TYPE f.
    DATA t19 TYPE REF TO zcl_lnt_position.
    DATA t20 TYPE REF TO zcl_lnt_position.
    DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t22) = t1.
    t21 = t22.
    DATA t23 TYPE REF TO zcl_lnt_position.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    DATA t25 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t26) = t21.
    t25 = t26->token.
    t24 = t25.
    DATA t27 TYPE REF TO zcl_lnt_position.
    DATA(t28) = t24.
    t27 = t28->start.
    t23 = t27.
    t20 = t23.
    t19 = t20.
    DATA t29 TYPE f.
    DATA(t30) = t19.
    t29 = t30->row.
    t18 = t29.
    t4 = t5 - t18.
    t3 = t4.
    DATA t31 TYPE abap_bool.
    DATA(t32) = t3.
    DATA(t33) = CONV f( 0 ).
    t31 = xsdbool( t32 <> t33 ).
    IF t31 = abap_true.
      DATA(t34) = t3.
      DATA(t35) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t35->has = abap_true.
      t35->value = t34.
      result = t35.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t37 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA t39 TYPE REF TO zcl_lnt_position.
    DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t41) = t2.
    t40 = t41.
    DATA t42 TYPE REF TO zcl_lnt_position.
    DATA t43 TYPE REF TO zcl_lnt_abstract_token.
    DATA t44 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t45) = t40.
    t44 = t45->token.
    t43 = t44.
    DATA t46 TYPE REF TO zcl_lnt_position.
    DATA(t47) = t43.
    t46 = t47->start.
    t42 = t46.
    t39 = t42.
    t38 = t39.
    DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t49) = t38.
    t48 = t49->col.
    t37 = t48.
    DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t51 TYPE REF TO zcl_lnt_position.
    DATA t52 TYPE REF TO zcl_lnt_position.
    DATA t53 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t54) = t1.
    t53 = t54.
    DATA t55 TYPE REF TO zcl_lnt_position.
    DATA t56 TYPE REF TO zcl_lnt_abstract_token.
    DATA t57 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t58) = t53.
    t57 = t58->token.
    t56 = t57.
    DATA t59 TYPE REF TO zcl_lnt_position.
    DATA(t60) = t56.
    t59 = t60->start.
    t55 = t59.
    t52 = t55.
    t51 = t52.
    DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t62) = t51.
    t61 = t62->col.
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
