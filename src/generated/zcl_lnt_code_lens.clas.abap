* TS: src/lsp/code_lens.ts:17:1 CodeLens
CLASS zcl_lnt_code_lens DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS list IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr i_settings TYPE REF TO zcl_lnt_code_lens_settings RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_dynamic_exception IMPORTING i_name TYPE string i_top TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_method_references IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_code_lens IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD list.
    DATA(t1) = i_text_document.
    DATA(t2) = i_settings.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = t2.
    IF t4 IS INITIAL.
      t3 = abap_true.
    ENDIF.
    IF t3 = abap_true.
      DATA t5 TYPE REF TO zcl_lnt_code_lens_settings.
      CLEAR t5.
      DATA(t6) = abap_true.
      IF t6 = abap_true.
        DATA t7 TYPE REF TO zcl_lnt_code_lens_settings.
        DATA t8 TYPE abap_bool.
        DATA(t9) = abap_true.
        t8 = t9.
        DATA t10 TYPE abap_bool.
        DATA(t11) = abap_true.
        t10 = t11.
        t7 = NEW zcl_lnt_code_lens_settings( i_message_text = t8 i_dynamic_exceptions = t10 ).
        CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
        t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t12.
        IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `messageText` p1 = t12 ).
        ENDIF.
        DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t13.
        IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dynamicExceptions` p1 = t13 ).
        ENDIF.
        CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
        t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t14) = |messageText|.
        DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t15.
        IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
        ENDIF.
        DATA(t16) = |dynamicExceptions|.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
        ENDIF.
        t5 = t7.
      ELSE.
        DATA t18 TYPE REF TO zcl_lnt_code_lens_settings.
        CLEAR t18.
        t5 = t18.
      ENDIF.
      t2 = t5.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_abap_file.
    DATA t20 TYPE REF TO zcl_lnt_abap_file.
    DATA(t21) = me->reg.
    DATA t22 TYPE string.
    DATA(t23) = t1.
    t22 = t23->zlnt_view_read_no_0041136eb871( ).
    t20 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t21 i_filename = t22 ).
    t19 = t20.
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zcl_lnt_abap_file.
    DATA(t26) = t19.
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    t27 = t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t25.
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    t24 = t29.
    IF t24 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t31.
      result = t31.
      RETURN.
    ENDIF.
    DATA t32 TYPE REF TO zif_lnt_object.
    DATA t33 TYPE REF TO zif_lnt_object.
    DATA(t34) = me->reg.
    DATA t35 TYPE REF TO zcl_lnt_abap_file.
    DATA(t36) = t19.
    t35 = t36.
    t33 = t34->find_object_for_file( i_file = t35 ).
    t32 = t33.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE abap_bool( ).
    DATA t39 TYPE REF TO zif_lnt_object.
    DATA(t40) = t32.
    t39 = t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    t41 = t42.
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = t39.
    IF t44 IS INITIAL.
      t43 = abap_true.
    ENDIF.
    t38 = t43.
    t37 = t38.
    IF t38 = abap_false.
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE abap_bool.
      DATA(t47) = t32.
      t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_abap_object ).
      t45 = xsdbool( t46 = abap_false ).
      t37 = t45.
    ENDIF.
    IF t37 = abap_true.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t48.
      result = t48.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t50 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t51 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t52 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t53 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t54) = me->reg.
    DATA t55 TYPE REF TO zcl_lnt_abap_object.
    DATA(t56) = t32.
    DATA t57 TYPE REF TO object.
    t57 = t56.
    t55 ?= t57.
    t53 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t54 i_object_19cd = t55 ).
    t52 = t53->run( ).
    t51 = t52->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t50 = t51->get_top( ).
    t49 = t50.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t59.
    t58 = t59.
    DATA t60 TYPE abap_bool.
    DATA t61 TYPE abap_bool.
    DATA t62 TYPE REF TO zcl_lnt_code_lens_settings.
    DATA(t63) = t2.
    t62 = t63.
    t61 = t62->message_text.
    DATA(t64) = abap_true.
    t60 = xsdbool( t61 = t64 ).
    IF t60 = abap_true.
      DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t67 TYPE REF TO zif_lnt_msag_references.
      DATA(t68) = me->reg.
      t67 = t68->get_msag_references( ).
      DATA t69 TYPE string.
      DATA t70 TYPE REF TO zcl_lnt_abstract_file.
      DATA t71 TYPE REF TO zcl_lnt_abap_file.
      DATA(t72) = t19.
      t71 = t72.
      t70 = t71.
      DATA t73 TYPE string.
      DATA(t74) = t70.
      t73 = t74->filename.
      t69 = t73.
      t66 = t67->list_by_filename( i_filename = t69 ).
      t65 = t66.
      DATA(t75) = t65.
      DATA t76 TYPE REF TO zcl_lnt_shape_08db6d95.
      CLEAR t76.
      DATA t77 TYPE REF TO object.
      CLEAR t77.
      DATA(t78) = VALUE i( ).
      DO.
        t75->load( ).
        IF t78 >= lines( t75->items ).
          EXIT.
        ENDIF.
        CLEAR t77.
        READ TABLE t75->items INDEX t78 + 1 INTO t77.
        t78 = t78 + 1.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        CLEAR t76.
        IF t77 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t79 ?= t77.
          DATA t80 TYPE REF TO object.
          t80 = t79->as_ref( ).
          t76 ?= t80.
        ELSE.
          t76 ?= t77.
        ENDIF.
        DATA t81 TYPE REF TO zcl_lnt_ob_message_class.
        CLEAR t81.
        DATA t82 TYPE REF TO zcl_lnt_ob_message_class.
        CLEAR t82.
        DATA t83 TYPE REF TO zif_lnt_object.
        CLEAR t83.
        DATA(t84) = me->reg.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA(t86) = abap_true.
        IF t86 = abap_true.
          DATA(t87) = |MSAG|.
          DATA(t88) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t88->has = abap_true.
          t88->value = t87.
          t85 = t88.
        ELSE.
          DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t89.
          t85 = t89.
        ENDIF.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        DATA(t91) = abap_true.
        IF t91 = abap_true.
          DATA t92 TYPE string.
          DATA(t93) = t76.
          t92 = t93->message_class.
          DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t94->has = abap_true.
          t94->value = t92.
          t90 = t94.
        ELSE.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          t90 = t95.
        ENDIF.
        t83 = t84->get_object( i_type_9913 = t85 i_name = t90 ).
        DATA t96 TYPE REF TO object.
        t96 = t83.
        t82 ?= t96.
        t81 = t82.
        DATA(t97) = VALUE abap_bool( ).
        DATA t98 TYPE REF TO zcl_lnt_ob_message_class.
        DATA(t99) = t81.
        t98 = t99.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        t100 = t101.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = t98.
        IF t103 IS INITIAL.
          t102 = abap_true.
        ENDIF.
        t97 = t102.
        IF t97 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        DATA t106 TYPE REF TO zcl_lnt_ty_message.
        DATA t107 TYPE REF TO zcl_lnt_ty_message.
        DATA t108 TYPE REF TO zcl_lnt_ob_message_class.
        DATA(t109) = t81.
        t108 = t109.
        DATA t110 TYPE string.
        DATA(t111) = t76.
        t110 = t111->number.
        t107 = t108->get_by_number( i_num = t110 ).
        t106 = t107.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA(t113) = VALUE abap_bool( ).
        DATA(t114) = t106.
        IF t114 IS INITIAL.
          t113 = abap_true.
        ENDIF.
        IF t113 = abap_true.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          t112 = t115.
        ELSE.
          DATA t116 TYPE string.
          DATA t117 TYPE REF TO zcl_lnt_ty_message.
          DATA t118 TYPE REF TO zcl_lnt_ty_message.
          DATA(t119) = t106.
          t118 = t119.
          t117 = t118.
          DATA t120 TYPE string.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t122) = t117.
          t121 = t122->message_25cb.
          t120 = t121->value.
          t116 = t120.
          DATA(t123) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t123->has = abap_true.
          t123->value = t116.
          t112 = t123.
        ENDIF.
        t105 = t112.
        t104 = t105.
        DATA(t124) = VALUE abap_bool( ).
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t126) = t104.
        t125 = t126.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        t127 = t128.
        DATA(t129) = VALUE abap_bool( ).
        DATA(t130) = t125.
        IF t130 IS INITIAL.
          t129 = abap_true.
        ELSEIF t130->has = abap_false.
          t129 = abap_true.
        ENDIF.
        t124 = t129.
        IF t124 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t131) = t58.
        DATA t132 TYPE REF TO zcl_lnt_shape_048f4e75.
        CLEAR t132.
        DATA t133 TYPE REF TO zcl_lnt_range.
        CLEAR t133.
        DATA t134 TYPE REF TO zcl_lnt_range.
        CLEAR t134.
        DATA(t135) = abap_true.
        IF t135 = abap_true.
          DATA t136 TYPE REF TO zcl_lnt_range.
          DATA t137 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t138) = t76.
          t137 = t138->token.
          t136 = zcl_lnt_lsp_utils=>token_to_range( i_token = t137 ).
          t134 = t136.
        ELSE.
          DATA t139 TYPE REF TO zcl_lnt_range.
          CLEAR t139.
          t134 = t139.
        ENDIF.
        t133 = t134.
        DATA t140 TYPE REF TO zcl_lnt_command.
        CLEAR t140.
        DATA t141 TYPE REF TO zcl_lnt_command.
        CLEAR t141.
        DATA(t142) = abap_true.
        IF t142 = abap_true.
          DATA t143 TYPE REF TO zcl_lnt_command.
          CLEAR t143.
          DATA t144 TYPE string.
          DATA t145 TYPE string.
          DATA(t146) = t104.
          t145 = t146->value.
          t144 = t145.
          DATA t147 TYPE string.
          DATA(t148) = ||.
          t147 = t148.
          DATA t149 TYPE REF TO zcl_lnt_command.
          DATA t150 TYPE string.
          DATA(t151) = t144.
          t150 = t151.
          DATA t152 TYPE string.
          DATA(t153) = t147.
          t152 = t153.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t155.
          t154 = t155.
          DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t157.
          t156 = t157.
          t149 = NEW zcl_lnt_command( i_title = t150 i_tooltip = t154 i_command = t152 i_arguments = t156 ).
          CREATE OBJECT t149->zlnt_view_ownkeys_b0e8086400eb.
          t149->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          IF t149->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t158 ).
          ENDIF.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t149->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `command` p1 = t159 ).
          ENDIF.
          CREATE OBJECT t149->zlnt_json_ownkeys_70e5fd461788.
          t149->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t160) = |title|.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
          ENDIF.
          DATA(t162) = |command|.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
          ENDIF.
          t143 = t149.
          t141 = t143.
        ELSE.
          DATA t164 TYPE REF TO zcl_lnt_command.
          CLEAR t164.
          t141 = t164.
        ENDIF.
        t140 = t141.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        t165 = t166.
        t132 = NEW zcl_lnt_shape_048f4e75( i_range = t133 i_command = t140 i_data_dc02 = t165 ).
        CREATE OBJECT t132->zlnt_view_ownkeys_b0e8086400eb.
        t132->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        IF t132->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t167 ).
        ENDIF.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        IF t132->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `command` p1 = t168 ).
        ENDIF.
        CREATE OBJECT t132->zlnt_json_ownkeys_70e5fd461788.
        t132->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t169) = |range|.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        IF t132->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
        ENDIF.
        DATA(t171) = |command|.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t172.
        IF t132->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
        ENDIF.
        t131->load( ).
        APPEND t132 TO t131->items.
        t131->save( ).
      ENDDO.
    ENDIF.
    DATA t173 TYPE abap_bool.
    DATA t174 TYPE abap_bool.
    DATA t175 TYPE REF TO zcl_lnt_code_lens_settings.
    DATA(t176) = t2.
    t175 = t176.
    t174 = t175->dynamic_exceptions.
    DATA(t177) = abap_true.
    t173 = xsdbool( t174 = t177 ).
    IF t173 = abap_true.
      DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t179) = t49.
      DATA t180 TYPE REF TO zcl_lnt_abap_file.
      DATA(t181) = t19.
      t180 = t181.
      t178 = me->find_method_references( i_node = t179 i_file = t180 ).
      DATA t182 TYPE REF TO zcl_lnt_ireference.
      CLEAR t182.
      DATA t183 TYPE REF TO object.
      CLEAR t183.
      DATA(t184) = VALUE i( ).
      DO.
        t178->load( ).
        IF t184 >= lines( t178->items ).
          EXIT.
        ENDIF.
        CLEAR t183.
        READ TABLE t178->items INDEX t184 + 1 INTO t183.
        t184 = t184 + 1.
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t185.
        CLEAR t182.
        IF t183 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t185 ?= t183.
          DATA t186 TYPE REF TO object.
          t186 = t185->as_ref( ).
          t182 ?= t186.
        ELSE.
          t182 ?= t183.
        ENDIF.
        DATA t187 TYPE abap_bool.
        DATA t188 TYPE abap_bool.
        DATA t189 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t190) = t182.
        t189 = t190->resolved.
        t188 = xsdbool( t189 IS BOUND AND t189 IS INSTANCE OF zcl_lnt_method_definition ).
        t187 = xsdbool( t188 = abap_false ).
        IF t187 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t191 TYPE string.
        DATA(t192) = ||.
        t191 = t192.
        DATA t193 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t194 TYPE REF TO zcl_lnt_method_definition.
        DATA t195 TYPE REF TO zcl_lnt_method_definition.
        DATA t196 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t197) = t182.
        t196 = t197->resolved.
        t195 ?= t196.
        t194 = t195.
        DATA t198 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t199) = t194.
        t198 = t199->raising.
        t193 = t198.
        DATA(t200) = VALUE string( ).
        t193->dense( ).
        DATA(t201) = VALUE i( ).
        DO.
          t193->load( ).
          IF t201 >= lines( t193->items ).
            EXIT.
          ENDIF.
          CLEAR t200.
          READ TABLE t193->items INDEX t201 + 1 INTO t200.
          IF t193->has( t201 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t201 = t201 + 1.
          DATA t202 TYPE abap_bool.
          DATA(t203) = t200.
          DATA(t204) = t49.
          t202 = me->is_dynamic_exception( i_name = t203 i_top = t204 ).
          IF t202 = abap_true.
            DATA t205 TYPE abap_bool.
            DATA(t206) = t191.
            DATA(t207) = ||.
            t205 = xsdbool( t206 = t207 ).
            IF t205 = abap_true.
              DATA(t208) = |Dynamic Exceptions: |.
              t191 = t208.
            ELSE.
              DATA t209 TYPE string.
              DATA(t210) = t191.
              DATA(t211) = | & |.
              DATA(t212) = strlen( t210 ).
              t209 = |{ t210 }{ t211 }|.
              t191 = t209.
            ENDIF.
            DATA(t213) = VALUE string( ).
            DATA(t214) = t191.
            DATA t215 TYPE string.
            DATA(t216) = t200.
            DATA(t217) = strlen( t216 ).
            t215 = t216.
            IF t215 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t215 TO UPPER CASE.
            ELSE.
              t215 = zlnt_runtime_uppe_91169605024d=>full( t215 ).
            ENDIF.
            DATA(t218) = strlen( t214 ).
            t213 = |{ t214 }{ t215 }|.
            t191 = t213.
          ENDIF.
        ENDDO.
        DATA t219 TYPE abap_bool.
        DATA(t220) = t191.
        DATA(t221) = ||.
        t219 = xsdbool( t220 <> t221 ).
        IF t219 = abap_true.
          DATA(t222) = t58.
          DATA t223 TYPE REF TO zcl_lnt_shape_048f4e75.
          CLEAR t223.
          DATA t224 TYPE REF TO zcl_lnt_range.
          CLEAR t224.
          DATA t225 TYPE REF TO zcl_lnt_range.
          CLEAR t225.
          DATA(t226) = abap_true.
          IF t226 = abap_true.
            DATA t227 TYPE REF TO zcl_lnt_range.
            DATA t228 TYPE REF TO zcl_lnt_abstract_token.
            DATA t229 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t230 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t231) = t182.
            t230 = t231->position_7b94.
            t229 = t230.
            DATA t232 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t233) = t229.
            t232 = t233->token.
            t228 = t232.
            t227 = zcl_lnt_lsp_utils=>token_to_range( i_token = t228 ).
            t225 = t227.
          ELSE.
            DATA t234 TYPE REF TO zcl_lnt_range.
            CLEAR t234.
            t225 = t234.
          ENDIF.
          t224 = t225.
          DATA t235 TYPE REF TO zcl_lnt_command.
          CLEAR t235.
          DATA t236 TYPE REF TO zcl_lnt_command.
          CLEAR t236.
          DATA(t237) = abap_true.
          IF t237 = abap_true.
            DATA t238 TYPE REF TO zcl_lnt_command.
            CLEAR t238.
            DATA t239 TYPE string.
            DATA(t240) = t191.
            t239 = t240.
            DATA t241 TYPE string.
            DATA(t242) = ||.
            t241 = t242.
            DATA t243 TYPE REF TO zcl_lnt_command.
            DATA t244 TYPE string.
            DATA(t245) = t239.
            t244 = t245.
            DATA t246 TYPE string.
            DATA(t247) = t241.
            t246 = t247.
            DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t249.
            t248 = t249.
            DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t251.
            t250 = t251.
            t243 = NEW zcl_lnt_command( i_title = t244 i_tooltip = t248 i_command = t246 i_arguments = t250 ).
            CREATE OBJECT t243->zlnt_view_ownkeys_b0e8086400eb.
            t243->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t252.
            IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t252 ).
            ENDIF.
            DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t253.
            IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `command` p1 = t253 ).
            ENDIF.
            CREATE OBJECT t243->zlnt_json_ownkeys_70e5fd461788.
            t243->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t254) = |title|.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t255.
            IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t254 p1 = t255 ).
            ENDIF.
            DATA(t256) = |command|.
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t257.
            IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t256 p1 = t257 ).
            ENDIF.
            t238 = t243.
            t236 = t238.
          ELSE.
            DATA t258 TYPE REF TO zcl_lnt_command.
            CLEAR t258.
            t236 = t258.
          ENDIF.
          t235 = t236.
          DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t260.
          t259 = t260.
          t223 = NEW zcl_lnt_shape_048f4e75( i_range = t224 i_command = t235 i_data_dc02 = t259 ).
          CREATE OBJECT t223->zlnt_view_ownkeys_b0e8086400eb.
          t223->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t261.
          IF t223->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t223->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t261 ).
          ENDIF.
          DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t262.
          IF t223->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t223->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `command` p1 = t262 ).
          ENDIF.
          CREATE OBJECT t223->zlnt_json_ownkeys_70e5fd461788.
          t223->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t263) = |range|.
          DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t264.
          IF t223->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t223->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
          ENDIF.
          DATA(t265) = |command|.
          DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t266.
          IF t223->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t223->zlnt_json_ownkeys_70e5fd461788->put( p0 = t265 p1 = t266 ).
          ENDIF.
          t222->load( ).
          APPEND t223 TO t222->items.
          t222->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t267) = t58.
    result = t267.

  ENDMETHOD.

  METHOD is_dynamic_exception.
    DATA(t1) = i_name.
    DATA(t2) = i_top.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = abap_true.
    IF t5 = abap_true.
      DATA(t6) = t1.
      DATA(t7) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t7->has = abap_true.
      t7->value = t6.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      t4 = t8.
    ENDIF.
    t3 = t4.
    DO.
      DATA(t9) = VALUE abap_bool( ).
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t11) = t3.
      t10 = t11.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      t12 = t13.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t10.
      IF t16 IS INITIAL.
        t15 = abap_true.
      ELSEIF t16->has = abap_false.
        t15 = abap_true.
      ENDIF.
      t14 = xsdbool( t15 = abap_false ).
      t9 = t14.
      IF t9 = abap_false.
        EXIT.
      ENDIF.
      DATA(t17) = VALUE abap_bool( ).
      DATA t18 TYPE string.
      DATA t19 TYPE string.
      DATA(t20) = t3.
      t19 = t20->value.
      DATA(t21) = strlen( t19 ).
      t18 = t19.
      IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t18 TO UPPER CASE.
      ELSE.
        t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
      ENDIF.
      DATA(t22) = |CX_DYNAMIC_CHECK|.
      t17 = xsdbool( t18 = t22 ).
      IF t17 = abap_true.
        DATA(t23) = abap_true.
        result = t23.
        RETURN.
      ENDIF.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zif_lnt_class_definition.
      DATA t26 TYPE REF TO zif_lnt_class_definition.
      DATA(t27) = t2.
      DATA t28 TYPE string.
      DATA(t29) = t3.
      t28 = t29->value.
      t26 = t27->find_class_definition( i_name = t28 ).
      t25 = t26.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = t25.
      IF t32 IS INITIAL.
        t31 = abap_true.
      ENDIF.
      IF t31 = abap_true.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        t30 = t33.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t35 TYPE REF TO zif_lnt_class_definition.
        DATA(t36) = t25.
        t35 = t36.
        t34 = t35->get_super_class( ).
        t30 = t34.
      ENDIF.
      t24 = t30.
      t3 = t24.
    ENDDO.
    DATA(t37) = abap_false.
    result = t37.

  ENDMETHOD.

  METHOD find_method_references.
    DATA(t1) = i_node.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t8) = t1.
    t7 = t8->get_identifier( ).
    t6 = t7->filename.
    DATA t9 TYPE string.
    DATA t10 TYPE REF TO zcl_lnt_abstract_file.
    DATA(t11) = t2.
    t10 = t11.
    DATA t12 TYPE string.
    DATA(t13) = t10.
    t12 = t13->filename.
    t9 = t12.
    t5 = xsdbool( t6 = t9 ).
    IF t5 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t16) = t1.
      t15 = t16->get_data( ).
      t14 = t15->references.
      DATA t17 TYPE REF TO zcl_lnt_ireference.
      CLEAR t17.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      DATA(t19) = VALUE i( ).
      DO.
        t14->load( ).
        IF t19 >= lines( t14->items ).
          EXIT.
        ENDIF.
        CLEAR t18.
        READ TABLE t14->items INDEX t19 + 1 INTO t18.
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
        DATA t22 TYPE abap_bool.
        DATA t23 TYPE string.
        DATA(t24) = t17.
        t23 = t24->reference_type.
        DATA(t25) = |Method|.
        t22 = xsdbool( t23 = t25 ).
        IF t22 = abap_true.
          DATA(t26) = t3.
          DATA(t27) = t17.
          t26->load( ).
          APPEND t27 TO t26->items.
          t26->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t29) = t1.
    t28 = t29->get_children( ).
    DATA t30 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t30.
    DATA t31 TYPE REF TO object.
    CLEAR t31.
    DATA(t32) = VALUE i( ).
    DO.
      t28->load( ).
      IF t32 >= lines( t28->items ).
        EXIT.
      ENDIF.
      CLEAR t31.
      READ TABLE t28->items INDEX t32 + 1 INTO t31.
      t32 = t32 + 1.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t30.
      IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t31.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t30 ?= t34.
      ELSE.
        t30 ?= t31.
      ENDIF.
      DATA(t35) = VALUE i( ).
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t37) = t30.
      DATA(t38) = t2.
      t36 = me->find_method_references( i_node = t37 i_file = t38 ).
      DATA t39 TYPE REF TO zcl_lnt_ireference.
      CLEAR t39.
      DATA t40 TYPE REF TO object.
      CLEAR t40.
      DATA(t41) = VALUE i( ).
      DO.
        t36->load( ).
        IF t41 >= lines( t36->items ).
          EXIT.
        ENDIF.
        CLEAR t40.
        READ TABLE t36->items INDEX t41 + 1 INTO t40.
        t41 = t41 + 1.
        DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t42.
        CLEAR t39.
        IF t40 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t42 ?= t40.
          DATA t43 TYPE REF TO object.
          t43 = t42->as_ref( ).
          t39 ?= t43.
        ELSE.
          t39 ?= t40.
        ENDIF.
        DATA(t44) = t3.
        DATA(t45) = t39.
        t44->load( ).
        APPEND t45 TO t44->items.
        t44->save( ).
      ENDDO.
      DATA t46 TYPE i.
      DATA(t47) = t3.
      t47->load( ).
      t46 = lines( t47->items ).
      t35 = t46.
    ENDDO.
    DATA(t48) = t3.
    result = t48.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1164_bb4f7a7c73db.
  ENDMETHOD.
ENDCLASS.
